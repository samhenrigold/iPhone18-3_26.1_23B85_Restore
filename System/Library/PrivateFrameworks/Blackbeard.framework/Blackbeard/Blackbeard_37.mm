uint64_t sub_1E62DA2C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a1;
  v89 = a2;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1E65D7848();
  v88 = *(v86 - 8);
  v6 = MEMORY[0x1EEE9AC00](v86);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v68 - v8;
  v87 = sub_1E65D8518();
  v84 = *(v87 - 8);
  v9 = MEMORY[0x1EEE9AC00](v87);
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - v11;
  v13 = sub_1E65D76A8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65D94D8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F40, &qword_1E65FAF50);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE0, &qword_1E65F9198);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v69 = v18;
    (*(v18 + 32))(v22, v25, v17);
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    sub_1E65D9498();
    v51 = sub_1E65D8488();
    v53 = v52;
    v77 = v17;
    v84 = *(v84 + 8);
    (v84)(v12, v87);
    v54 = v89;
    *v89 = v51;
    v54[1] = v53;
    *(v54 + 16) = 1;
    (*(v18 + 16))(v83, v22, v17);
    sub_1E62DDC8C();
    v55 = sub_1E65E6588();
    v57 = v85;
    v56 = v86;
    v58 = *(v88 + 16);
    v58(v85, v78, v86);
    sub_1E65E5BA8();
    v58(v79, v57, v56);
    v59 = v55;
    sub_1E65E5D48();
    v60 = v80;
    v81 = v22;
    v61 = v83;
    sub_1E65D9498();
    v62 = v69;
    sub_1E65D8498();
    (v84)(v60, v87);
    sub_1E65DE4F8();

    (*(v88 + 8))(v85, v86);
    v63 = *(v62 + 8);
    v64 = v77;
    v63(v61, v77);
    v63(v81, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    swift_storeEnumTagMultiPayload();
    v49 = *(*(v47 - 8) + 56);
    v50 = v54;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED077F40, &qword_1E65FAF50);
LABEL_8:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    v49 = *(*(v66 - 8) + 56);
    v50 = v89;
    v65 = 1;
    return v49(v50, v65, 1, v66);
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F48, &qword_1E65FAF58) + 48);
  (*(v18 + 32))(v22, v25, v17);
  v28 = *(v14 + 32);
  v74 = v14 + 32;
  v75 = v16;
  v76 = v28;
  v73 = v13;
  v28(v16, &v25[v27], v13);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290);
  v30 = v89;
  v72 = v89 + *(v29 + 48);
  sub_1E65D9498();
  v31 = sub_1E65D8488();
  v33 = v32;
  v34 = v17;
  v77 = v17;
  v35 = *(v84 + 8);
  v84 += 8;
  v70 = v35;
  v35(v12, v87);
  *v30 = v31;
  v30[1] = v33;
  *(v30 + 16) = 1;
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v36 = v83;
  (*(v18 + 16))(v83, v22, v34);
  sub_1E62DDC8C();
  v37 = sub_1E65E6588();
  v38 = *(v88 + 16);
  v40 = v85;
  v39 = v86;
  v38(v85, v78, v86);
  sub_1E65E5BA8();
  v38(v79, v40, v39);
  v41 = v37;
  sub_1E65E5D48();
  v42 = v80;
  sub_1E65D9498();
  v43 = v88;
  sub_1E65D8498();
  v70(v42, v87);
  v44 = v72;
  sub_1E65DE4F8();

  (*(v43 + 8))(v85, v86);
  v45 = *(v18 + 8);
  v46 = v77;
  v45(v36, v77);
  v45(v22, v46);
  v76(&v44[v71], v75, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v48 = v89;
  swift_storeEnumTagMultiPayload();
  v49 = *(*(v47 - 8) + 56);
  v50 = v48;
LABEL_6:
  v65 = 0;
  v66 = v47;
  return v49(v50, v65, 1, v66);
}

uint64_t sub_1E62DAC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a2;
  LODWORD(v63) = a3;
  v64 = a1;
  v67 = a4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F20, &qword_1E65FAF30);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F28, &qword_1E65FAF38);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v47 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F30, &qword_1E65FAF40);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v47 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F38, &qword_1E65FAF48);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v47 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F40, &qword_1E65FAF50);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE0, &qword_1E65F9198);
  v62 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  type metadata accessor for AppState(0);
  v25 = v63;
  if (v63 <= 1u)
  {
    v33 = v62;
    v63 = v12;
    v68 = v64;
    v69 = v65;
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
      v44 = v66;
      sub_1E65E4D78();
      sub_1E65E4C98();
      v45 = (*(v33 + 8))(v17, v15);
      MEMORY[0x1EEE9AC00](v45);
      *(&v47 - 2) = v44;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v31 = &qword_1ED077F40;
      v32 = &qword_1E65FAF50;
      v36 = v14;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
      v34 = v66;
      sub_1E65E4D78();
      sub_1E65E4C98();
      v35 = (*(v22 + 8))(v24, v21);
      MEMORY[0x1EEE9AC00](v35);
      *(&v47 - 2) = v34;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v31 = &qword_1ED0753C0;
      v32 = &unk_1E6606290;
      v36 = v20;
    }
  }

  else
  {
    if (v63 == 2)
    {
      v68 = v64;
      v69 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
      v37 = v66;
      sub_1E65E4D78();
      v28 = v52;
      v38 = v49;
      sub_1E65E4C98();
      v39 = (*(v48 + 8))(v11, v38);
      MEMORY[0x1EEE9AC00](v39);
      *(&v47 - 2) = v37;
      sub_1E65DE508();
      sub_1E62DE78C();
      sub_1E65E4DA8();
      v31 = &qword_1ED0741E0;
      v32 = &qword_1E65EFC00;
    }

    else
    {
      v68 = v64;
      v69 = v65;
      if (v63 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
        v26 = v66;
        v27 = v50;
        sub_1E65E4D78();
        v28 = v58;
        v29 = v53;
        sub_1E65E4C98();
        v30 = (*(v51 + 8))(v27, v29);
        MEMORY[0x1EEE9AC00](v30);
        *(&v47 - 2) = v26;
        sub_1E65DE508();
        sub_1E62DE78C();
        sub_1E65E4DA8();
        v31 = &qword_1ED077F30;
        v32 = &qword_1E65FAF40;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
        v40 = v66;
        v41 = v55;
        sub_1E65E4D78();
        v28 = v60;
        v42 = v57;
        sub_1E65E4C98();
        v43 = (*(v56 + 8))(v41, v42);
        MEMORY[0x1EEE9AC00](v43);
        *(&v47 - 2) = v40;
        sub_1E65DE508();
        sub_1E62DE78C();
        sub_1E65E4DA8();
        v31 = &qword_1ED077F20;
        v32 = &qword_1E65FAF30;
      }
    }

    v36 = v28;
  }

  return sub_1E5DFE50C(v36, v31, v32);
}

uint64_t sub_1E62DB5D0@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E65DE488();
  v10 = v13;
  v9 = v14;
  if (v15 == 2)
  {
    type metadata accessor for AppState(0);
    v12[1] = v10;
    v12[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
    sub_1E65E4D78();
    sub_1E6001C2C(v10, v9, 2u);
    sub_1E65E4C98();
    (*(v6 + 8))(v8, v5);
    sub_1E65E4DA8();
    return sub_1E5DFE50C(v4, &qword_1ED0741E0, &qword_1E65EFC00);
  }

  else
  {
    sub_1E6001C2C(v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
    *a1 = 1;
    sub_1E65D7688();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1E62DB838@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E65DA128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E65DA888();
  sub_1E65DA108();
  (*(v3 + 8))(v5, v2);
  v7[15] = 1;
  sub_1E608DB34();
  sub_1E608DB88();
  LOBYTE(v2) = sub_1E65E6228();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1E62DB96C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v43 = a2;
  v4 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65D8668();
  v6 = *(v46 - 8);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1E65D7848();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65D9658();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v25;
  v45 = v24;
  (*(v25 + 16))(v23, a1);
  sub_1E62DDC8C();
  v42 = sub_1E65E6588();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v16);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v26 = *(v18 + 48);
  v27 = v26(v16, 1, v17);
  v47 = v18;
  v41 = v17;
  if (v27 == 1)
  {
    sub_1E65D77C8();
    v28 = v20;
    if (v26(v16, 1, v17) != 1)
    {
      sub_1E5DFE50C(v16, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v28 = v20;
  }

  v40 = v28;
  sub_1E65D9618();
  v29 = sub_1E65D8658();
  v31 = v30;
  v33 = v32;
  v43 = *(v6 + 8);
  v34 = v46;
  v43(v10, v46);
  v51 = v29;
  v52 = v31;
  v53 = v33 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v29, v31, v33 & 1);
  if (v54 == 4)
  {
    v35 = 3;
  }

  else
  {
    v35 = v54;
  }

  v36 = v42;
  sub_1E5FBE828(v42, v28, v35);
  v37 = v48;
  sub_1E65D9618();
  sub_1E65D8538();
  v43(v37, v34);
  sub_1E65DE4F8();

  (*(v47 + 8))(v40, v41);
  return (*(v44 + 8))(v23, v45);
}

uint64_t sub_1E62DBE74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = a1;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D8518();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1E65D7848();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = sub_1E65D94D8();
  MEMORY[0x1EEE9AC00](v20);
  v31 = v23;
  v32 = v22;
  v24 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))();
  sub_1E62DDC8C();
  v30 = sub_1E65E6588();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v12);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    sub_1E65D77C8();
    if (v25(v12, 1, v13) != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
  }

  sub_1E65E5BA8();
  (*(v14 + 16))(v17, v19, v13);
  v26 = v30;
  sub_1E65E5D48();
  v34 = v13;
  v27 = v19;
  v28 = v33;
  sub_1E65D9498();
  sub_1E65D8498();
  (*(v36 + 8))(v28, v37);
  sub_1E65DE4F8();

  (*(v14 + 8))(v27, v34);
  return (*(v31 + 8))(v24, v32);
}

uint64_t sub_1E62DC390@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = a1;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DA128();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1E65D7848();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = sub_1E65DA8C8();
  MEMORY[0x1EEE9AC00](v20);
  v31 = v23;
  v32 = v22;
  v24 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))();
  sub_1E62DDC8C();
  v30 = sub_1E65E6588();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v12);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    sub_1E65D77C8();
    if (v25(v12, 1, v13) != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
  }

  sub_1E65E5BA8();
  (*(v14 + 16))(v17, v19, v13);
  v26 = v30;
  sub_1E65E5D48();
  v34 = v13;
  v27 = v19;
  v28 = v33;
  sub_1E65DA888();
  sub_1E65DA0E8();
  (*(v36 + 8))(v28, v37);
  sub_1E65DE4F8();

  (*(v14 + 8))(v27, v34);
  return (*(v31 + 8))(v24, v32);
}

uint64_t sub_1E62DC8AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = a1;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DAD48();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1E65D7848();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = sub_1E65D8418();
  MEMORY[0x1EEE9AC00](v20);
  v31 = v23;
  v32 = v22;
  v24 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))();
  sub_1E62DDC8C();
  v30 = sub_1E65E6588();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v12);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    sub_1E65D77C8();
    if (v25(v12, 1, v13) != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
  }

  sub_1E65E5BA8();
  (*(v14 + 16))(v17, v19, v13);
  v26 = v30;
  sub_1E65E5D48();
  v34 = v13;
  v27 = v19;
  v28 = v33;
  sub_1E65D83F8();
  sub_1E65DACF8();
  (*(v36 + 8))(v28, v37);
  sub_1E65DE4F8();

  (*(v14 + 8))(v27, v34);
  return (*(v31 + 8))(v24, v32);
}

uint64_t sub_1E62DCDC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = a1;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D8818();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1E65D7848();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v20 = sub_1E65D9798();
  MEMORY[0x1EEE9AC00](v20);
  v31 = v23;
  v32 = v22;
  v24 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))();
  sub_1E62DDC8C();
  v30 = sub_1E65E6588();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v12);
  sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    sub_1E65D77C8();
    if (v25(v12, 1, v13) != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
  }

  sub_1E65E5BA8();
  (*(v14 + 16))(v17, v19, v13);
  v26 = v30;
  sub_1E65E5D48();
  v34 = v13;
  v27 = v19;
  v28 = v33;
  sub_1E65D9778();
  sub_1E65D87B8();
  (*(v36 + 8))(v28, v37);
  sub_1E65DE4F8();

  (*(v14 + 8))(v27, v34);
  return (*(v31 + 8))(v24, v32);
}

uint64_t sub_1E62DD2E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a1;
  v89 = a2;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1E65D7848();
  v88 = *(v86 - 8);
  v6 = MEMORY[0x1EEE9AC00](v86);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v68 - v8;
  v87 = sub_1E65DA128();
  v84 = *(v87 - 8);
  v9 = MEMORY[0x1EEE9AC00](v87);
  v80 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - v11;
  v13 = sub_1E65D76A8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65DA8C8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E0, &qword_1E65EFC00);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v69 = v18;
    (*(v18 + 32))(v22, v25, v17);
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
    sub_1E65DA888();
    v51 = sub_1E65DA0C8();
    v53 = v52;
    v77 = v17;
    v84 = *(v84 + 8);
    (v84)(v12, v87);
    v54 = v89;
    *v89 = v51;
    v54[1] = v53;
    *(v54 + 16) = 2;
    (*(v18 + 16))(v83, v22, v17);
    sub_1E62DDC8C();
    v55 = sub_1E65E6588();
    v57 = v85;
    v56 = v86;
    v58 = *(v88 + 16);
    v58(v85, v78, v86);
    sub_1E65E5BA8();
    v58(v79, v57, v56);
    v59 = v55;
    sub_1E65E5D48();
    v60 = v80;
    v81 = v22;
    v61 = v83;
    sub_1E65DA888();
    v62 = v69;
    sub_1E65DA0E8();
    (v84)(v60, v87);
    sub_1E65DE4F8();

    (*(v88 + 8))(v85, v86);
    v63 = *(v62 + 8);
    v64 = v77;
    v63(v61, v77);
    v63(v81, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    swift_storeEnumTagMultiPayload();
    v49 = *(*(v47 - 8) + 56);
    v50 = v54;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED0741E0, &qword_1E65EFC00);
LABEL_8:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    v49 = *(*(v66 - 8) + 56);
    v50 = v89;
    v65 = 1;
    return v49(v50, v65, 1, v66);
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F18, &qword_1E65FAF28) + 48);
  (*(v18 + 32))(v22, v25, v17);
  v28 = *(v14 + 32);
  v74 = v14 + 32;
  v75 = v16;
  v76 = v28;
  v73 = v13;
  v28(v16, &v25[v27], v13);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290);
  v30 = v89;
  v72 = v89 + *(v29 + 48);
  sub_1E65DA888();
  v31 = sub_1E65DA0C8();
  v33 = v32;
  v34 = v17;
  v77 = v17;
  v35 = *(v84 + 8);
  v84 += 8;
  v70 = v35;
  v35(v12, v87);
  *v30 = v31;
  v30[1] = v33;
  *(v30 + 16) = 2;
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v36 = v83;
  (*(v18 + 16))(v83, v22, v34);
  sub_1E62DDC8C();
  v37 = sub_1E65E6588();
  v38 = *(v88 + 16);
  v40 = v85;
  v39 = v86;
  v38(v85, v78, v86);
  sub_1E65E5BA8();
  v38(v79, v40, v39);
  v41 = v37;
  sub_1E65E5D48();
  v42 = v80;
  sub_1E65DA888();
  v43 = v88;
  sub_1E65DA0E8();
  v70(v42, v87);
  v44 = v72;
  sub_1E65DE4F8();

  (*(v43 + 8))(v85, v86);
  v45 = *(v18 + 8);
  v46 = v77;
  v45(v36, v77);
  v45(v22, v46);
  v76(&v44[v71], v75, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v48 = v89;
  swift_storeEnumTagMultiPayload();
  v49 = *(*(v47 - 8) + 56);
  v50 = v48;
LABEL_6:
  v65 = 0;
  v66 = v47;
  return v49(v50, v65, 1, v66);
}

unint64_t sub_1E62DDC8C()
{
  result = qword_1ED077F10;
  if (!qword_1ED077F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED077F10);
  }

  return result;
}

uint64_t sub_1E62DDCD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62DDD48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a1;
  v104 = a2;
  v2 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v97 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7848();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v92 = (&v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v88 - v7;
  v103 = sub_1E65D8668();
  v96 = *(v103 - 8);
  v8 = MEMORY[0x1EEE9AC00](v103);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v88 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v88 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v88 - v19;
  v91 = sub_1E65D76A8();
  v98 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65D9658();
  v99 = *(v22 - 8);
  v100 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v88 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v89 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v88 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v88 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    v66 = v99;
    v67 = v35;
    v68 = v100;
    (*(v99 + 32))(v28, v67, v100);
    sub_1E65D9618();
    v69 = sub_1E65D8528();
    v71 = v70;
    v98 = *(v96 + 1);
    (v98)(v13, v103);
    v72 = v104;
    *v104 = v69;
    v72[1] = v71;
    *(v72 + 16) = 0;
    (*(v66 + 16))(v25, v28, v68);
    sub_1E62DDC8C();
    v73 = sub_1E65E6588();
    v96 = v73;
    (*(v101 + 16))(v92, v94, v102);
    sub_1E65D9618();
    v74 = sub_1E65D8658();
    v76 = v75;
    LOBYTE(v71) = v77;
    (v98)(v10, v103);
    v106 = v74;
    v107 = v76;
    v108 = v71 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E5F87058(v74, v76, v71 & 1);
    if (v105 == 4)
    {
      v78 = 3;
    }

    else
    {
      v78 = v105;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290);
    v79 = v73;
    v80 = v92;
    sub_1E5FBE828(v79, v92, v78);
    v81 = v95;
    sub_1E65D9618();
    sub_1E65D8538();
    (v98)(v81, v103);
    v82 = v104;
    sub_1E65DE4F8();

    (*(v101 + 8))(v80, v102);
    v83 = v100;
    v84 = *(v99 + 8);
    v84(v25, v100);
    v84(v28, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    swift_storeEnumTagMultiPayload();
    v64 = *(*(v62 - 8) + 56);
    v65 = v82;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v35, &qword_1ED0753C0, &unk_1E6606290);
LABEL_14:
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
    v64 = *(*(v86 - 8) + 56);
    v65 = v104;
    v85 = 1;
    return v64(v65, v85, 1, v86);
  }

  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C8, &qword_1E65F1A48) + 48);
  v38 = v100;
  v39 = v99;
  v40 = v32;
  (*(v99 + 32))(v32, v35, v100);
  v41 = *(v98 + 32);
  v98 += 32;
  v92 = v41;
  (v41)(v90, &v35[v37], v91);
  v88 = v32;
  sub_1E65D9618();
  v42 = sub_1E65D8528();
  v44 = v43;
  v45 = *(v96 + 1);
  v46 = v20;
  v47 = v103;
  v45(v46, v103);
  v96 = v45;
  v48 = v104;
  *v104 = v42;
  v48[1] = v44;
  *(v48 + 16) = 0;
  v49 = v48;
  (*(v39 + 16))(v89, v40, v38);
  sub_1E62DDC8C();
  v50 = sub_1E65E6588();
  (*(v101 + 16))(v93, v94, v102);
  sub_1E65D9618();
  v51 = sub_1E65D8658();
  v53 = v52;
  LOBYTE(v42) = v54;
  v45(v18, v47);
  v106 = v51;
  v107 = v53;
  v108 = v42 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v51, v53, v42 & 1);
  if (v105 == 4)
  {
    v55 = 3;
  }

  else
  {
    v55 = v105;
  }

  v56 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
  v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v57 = v93;
  sub_1E5FBE828(v50, v93, v55);
  v58 = v95;
  v59 = v89;
  sub_1E65D9618();
  sub_1E65D8538();
  v96(v58, v103);
  sub_1E65DE4F8();

  (*(v101 + 8))(v57, v102);
  v60 = v100;
  v61 = *(v99 + 8);
  v61(v59, v100);
  v61(v88, v60);
  (v92)(v56 + v94, v90, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  swift_storeEnumTagMultiPayload();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v63 = v104;
  swift_storeEnumTagMultiPayload();
  v64 = *(*(v62 - 8) + 56);
  v65 = v63;
LABEL_12:
  v85 = 0;
  v86 = v62;
  return v64(v65, v85, 1, v86);
}

unint64_t sub_1E62DE78C()
{
  result = qword_1EE2D68D8;
  if (!qword_1EE2D68D8)
  {
    sub_1E65DE508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68D8);
  }

  return result;
}

void sub_1E62DE854(void *a1, char a2)
{
  if ([v2 isViewLoaded])
  {
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview_];

      [a1 setTranslatesAutoresizingMaskIntoConstraints_];
      [a1 setAlpha_];
      v7 = [a1 bottomAnchor];
      v8 = [v2 view];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 safeAreaLayoutGuide];

        v11 = [v10 bottomAnchor];
        v12 = -30.0;
        if (a2)
        {
          v12 = 0.0;
        }

        v13 = [v7 constraintEqualToAnchor:v11 constant:v12];

        v14 = [a1 centerXAnchor];
        v15 = [v2 view];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 centerXAnchor];

          v18 = [v14 constraintEqualToAnchor_];
          [v18 setActive_];

          v19 = [a1 leadingAnchor];
          v20 = [v2 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 leadingAnchor];

            v23 = [v19 constraintEqualToAnchor:v22 constant:36.0];
            [v23 setActive_];

            v24 = [a1 trailingAnchor];
            v25 = [v2 view];
            if (v25)
            {
              v26 = v25;
              v27 = [v25 trailingAnchor];

              v28 = [v24 constraintEqualToAnchor:v27 constant:-36.0];
              [v28 setActive_];

              [v13 setActive_];
              v29 = [v2 view];
              v30 = v29;
              if ((a2 & 1) == 0)
              {
                if (v29)
                {
                  [v29 layoutIfNeeded];

                  v37 = objc_opt_self();
                  v38 = swift_allocObject();
                  *(v38 + 16) = a1;
                  v44 = sub_1E62DF81C;
                  v45 = v38;
                  v40 = MEMORY[0x1E69E9820];
                  v41 = 1107296256;
                  v42 = sub_1E5E05AB0;
                  v43 = &block_descriptor_24;
                  v33 = _Block_copy(&v40);
                  v39 = a1;

                  [v37 animateWithDuration:0 delay:v33 options:0 animations:0.5 completion:2.0];
                  goto LABEL_14;
                }

LABEL_22:
                __break(1u);
                return;
              }

              if (v29)
              {
                [v29 layoutIfNeeded];

                v31 = objc_opt_self();
                v32 = swift_allocObject();
                v32[2] = a1;
                v32[3] = v13;
                v32[4] = v2;
                v44 = sub_1E62DF878;
                v45 = v32;
                v40 = MEMORY[0x1E69E9820];
                v41 = 1107296256;
                v42 = sub_1E5E05AB0;
                v43 = &block_descriptor_30;
                v33 = _Block_copy(&v40);
                v34 = a1;
                v35 = v13;
                v36 = v2;

                [v31 animateWithDuration:0 delay:v33 options:0 animations:1.0 completion:2.0];
LABEL_14:

                _Block_release(v33);
                return;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1E62DED74(void *a1, char a2)
{
  v3 = v2;
  v6 = [a1 superview];
  v7 = [v2 view];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_38:

LABEL_39:
    if (qword_1EE2D7790 != -1)
    {
LABEL_48:
      swift_once();
    }

    v26 = sub_1E65E3B68();
    __swift_project_value_buffer(v26, qword_1EE2EA2A0);
    osloga = sub_1E65E3B48();
    v27 = sub_1E65E6338();
    if (os_log_type_enabled(osloga, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E5DE9000, osloga, v27, "Toast view requested for dismissal was not in the current hierarchy", v28, 2u);
      MEMORY[0x1E694F1C0](v28, -1, -1);
    }

    return;
  }

  if (!v7)
  {
    v8 = v6;
    goto LABEL_38;
  }

  sub_1E5DEF738(0, &qword_1ED077F50, 0x1E69DD250);
  v9 = sub_1E65E65A8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_6:
  if ((a2 & 1) == 0)
  {
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = v3;
    v58 = sub_1E62DF7CC;
    v59 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1E5E05AB0;
    v57 = &block_descriptor_11;
    v31 = _Block_copy(&aBlock);
    v32 = a1;
    v33 = v3;
    v34 = v32;
    v35 = v33;

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v34;
    v58 = sub_1E62DF7D4;
    v59 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1E62DF5C8;
    v57 = &block_descriptor_6;
    v37 = _Block_copy(&aBlock);
    v38 = v34;

    [v29 animateWithDuration:v31 animations:v37 completion:0.2];
    _Block_release(v37);
    _Block_release(v31);
    return;
  }

  v10 = [v3 view];
  if (!v10)
  {
    goto LABEL_54;
  }

  v11 = v10;
  v12 = [v10 constraints];

  sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
  v13 = sub_1E65E5F18();

  v50 = a1;
  if (v13 >> 62)
  {
    v14 = sub_1E65E67C8();
    v15 = v13;
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_50:

    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = v13;
  if (!v14)
  {
    goto LABEL_50;
  }

LABEL_10:
  v16 = 0;
  v17 = v15 & 0xC000000000000001;
  v18 = v15 & 0xFFFFFFFFFFFFFF8;
  v48 = v3;
  v49 = v14;
  v51 = v15 & 0xC000000000000001;
  oslog = v15;
  while (1)
  {
    if (v17)
    {
      v19 = MEMORY[0x1E694E2D0](v16, v15);
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_47;
      }

      v19 = *(v15 + 8 * v16 + 32);
    }

    v20 = v19;
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ([v19 firstItem])
    {
      break;
    }

LABEL_12:
    ++v16;
    if (v21 == v14)
    {
      goto LABEL_50;
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (![v20 secondItem])
  {
    swift_unknownObjectRelease();
LABEL_29:

    v15 = oslog;
    goto LABEL_12;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  sub_1E5DEF738(0, &qword_1ED076218, 0x1E69E58C0);
  if ((sub_1E65E65A8() & 1) == 0)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_33;
  }

  v22 = [v3 view];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 safeAreaLayoutGuide];

    LOBYTE(v23) = sub_1E65E65A8();
    if (v23)
    {
      v14 = v49;
      v17 = v51;
      if ([v20 firstAttribute] != 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v3 = v48;
        v15 = oslog;
        goto LABEL_12;
      }

      v25 = [v20 secondAttribute];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v3 = v48;
      if (v25 == 4)
      {

        v39 = objc_opt_self();
        v40 = swift_allocObject();
        v40[2] = v50;
        v40[3] = v20;
        v40[4] = v48;
        v58 = sub_1E62DF7F4;
        v59 = v40;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1E5E05AB0;
        v57 = &block_descriptor_12;
        v41 = _Block_copy(&aBlock);
        v42 = v20;
        v43 = v50;
        v44 = v48;

        v45 = swift_allocObject();
        *(v45 + 16) = 1;
        *(v45 + 24) = v43;
        v58 = sub_1E62DF8C8;
        v59 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1E62DF5C8;
        v57 = &block_descriptor_18;
        v46 = _Block_copy(&aBlock);
        v47 = v43;

        [v39 animateWithDuration:v41 animations:v46 completion:0.6];
        _Block_release(v46);
        _Block_release(v41);

        return;
      }

      goto LABEL_29;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v3 = v48;
LABEL_33:
    v14 = v49;
LABEL_34:
    v17 = v51;
    v15 = oslog;
    goto LABEL_12;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1E62DF54C(void *a1, void *a2)
{
  [a1 setAlpha_];
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E62DF5C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1E62DF61C(void *a1, void *a2, void *a3, double a4, double a5)
{
  [a1 setAlpha_];
  [a2 setConstant_];
  v8 = [a3 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E62DF6B8(uint64_t a1, char a2, void *a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2 & 1;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Removing toast from superview with animated %{BOOL}d", v8, 8u);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  return [a3 removeFromSuperview];
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t StackError.hashValue.getter()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

unint64_t sub_1E62DF944()
{
  result = qword_1ED077F58;
  if (!qword_1ED077F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077F58);
  }

  return result;
}

uint64_t View.platformPresentAlert<A>(_:applicablePlatforms:currentPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v23 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PlatformAlertViewModifier(0, v15, v16, v14);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v22 - v19;
  (*(v11 + 16))(v13, a1, a5);

  sub_1E62E0300(v13, a2, a5, a7, v20);
  MEMORY[0x1E694C310](v20, v23, v17, v24);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1E62DFB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E65E4128();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E65E4138();
}

uint64_t sub_1E62DFC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E65E4128();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E65E4138();
}

BOOL sub_1E62DFD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = sub_1E65DF528();
    v8 = v7;
    if (v6 == sub_1E65DF528() && v8 == v9)
    {

      return v4 != 0;
    }

    v11 = sub_1E65E6C18();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1E62DFE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    v6 = sub_1E65DAE38();
  }

  while (v6 != sub_1E65DAE38());
  return v4 != 0;
}

uint64_t sub_1E62DFE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  swift_getWitnessTable();
  v5 = sub_1E65E41A8();
  v33 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v30 = *(a2 + 16);
  v10 = sub_1E65E3DE8();
  v31 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = sub_1E65E4148();
  v35 = *(v16 - 8);
  v36 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = sub_1E62DFE28(*(v3 + *(a2 + 40)), *(v3 + *(a2 + 36)));
  WitnessTable = swift_getWitnessTable();
  if (v19)
  {
    MEMORY[0x1E694C310](v3, v5, v30, WitnessTable);
    v21 = *(a2 + 24);
    v38 = WitnessTable;
    v39 = v21;
    v22 = swift_getWitnessTable();
    sub_1E5FEE4C8();
    v23 = *(v31 + 8);
    v23(v13, v10);
    sub_1E5FEE4C8();
    sub_1E62DFC6C(v13, v10, v5, v22, WitnessTable);
    v23(v13, v10);
    v23(v15, v10);
  }

  else
  {
    sub_1E5FEE4C8();
    v24 = v32;
    sub_1E5FEE4C8();
    v21 = *(a2 + 24);
    v44 = WitnessTable;
    v45 = v21;
    v25 = swift_getWitnessTable();
    sub_1E62DFB74(v24, v10, v5, v25, WitnessTable);
    v26 = *(v33 + 8);
    v26(v24, v5);
    v26(v9, v5);
  }

  v27 = swift_getWitnessTable();
  v42 = v27;
  v43 = v21;
  v40 = swift_getWitnessTable();
  v41 = v27;
  v28 = v36;
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  return (*(v35 + 8))(v18, v28);
}

uint64_t sub_1E62E0300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for PlatformAlertViewModifier(0, a3, a4, v9);
  *(a5 + *(v10 + 36)) = a2;
  v11 = *(v10 + 40);
  result = sub_1E65DAE28();
  *(a5 + v11) = result;
  return result;
}

void sub_1E62E0388(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E62E074C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E62E0418(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1E62E056C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1E62E074C()
{
  if (!qword_1EE2D4868)
  {
    v0 = sub_1E65E5FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4868);
    }
  }
}

uint64_t MarketingLegacyView.init(accountURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D74E8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id MarketingLegacyView.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v1 = sub_1E65D7448();
  v2 = [v0 initWithAccountURL_];

  return v2;
}

uint64_t type metadata accessor for MarketingLegacyView(uint64_t a1)
{
  result = qword_1ED077F68;
  if (!qword_1ED077F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E62E0928()
{
  v0 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v1 = sub_1E65D7448();
  v2 = [v0 initWithAccountURL_];

  return v2;
}

uint64_t sub_1E62E097C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E62E0B54(&qword_1ED077F78, &protocol conformance descriptor for MarketingLegacyView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1E62E09FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E62E0B54(&qword_1ED077F78, &protocol conformance descriptor for MarketingLegacyView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1E62E0A7C(uint64_t a1)
{
  sub_1E62E0B54(&qword_1ED077F78, &protocol conformance descriptor for MarketingLegacyView);
  sub_1E65E4358();
  __break(1u);
}

uint64_t sub_1E62E0AE8(uint64_t a1)
{
  result = sub_1E65D74E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E62E0B54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingLegacyView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v69 = a1;
  v74 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = v60 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v60 - v14;
  v78 = v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F80, &qword_1E65FB198);
  v70 = *(v16 - 8);
  v71 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = v60 - v17;
  v18 = sub_1E65E1A48();
  v76 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v60 - v22;
  sub_1E5DF650C(a3, &v79);
  v24 = swift_allocObject();
  sub_1E5DF599C(&v79, v24 + 16);
  sub_1E65E1A38();
  v75 = v4;
  sub_1E5FBEA08(v69, v77, &v79);
  sub_1E5E1DEAC(v4, v15);
  v25 = *(v19 + 16);
  v68 = v23;
  v25(v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v18);
  v63 = *(&v79 + 1);
  v60[1] = v79;
  v77 = *(&v80 + 1);
  v26 = *(&v81 + 1);
  v27 = *(&v82 + 1);
  v60[2] = *(&v83 + 1);
  v28 = *(v11 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = v29 + v12;
  v31 = v28 | 7;
  v32 = (v29 + v12 + *(v19 + 80)) & ~*(v19 + 80);
  v33 = (v20 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1E5E1E2B8(v78, v34 + v29, type metadata accessor for AppComposer);
  v69 = v19;
  (*(v19 + 32))(v34 + v32, v67, v76);
  v35 = (v34 + v33);
  v36 = v62;
  v37 = v82;
  v35[2] = v81;
  v35[3] = v37;
  v35[4] = v83;
  v38 = v80;
  *v35 = v79;
  v35[1] = v38;
  v39 = v72;
  sub_1E5E1DEAC(v75, v72);
  v65 = v30;
  v64 = v31;
  v40 = swift_allocObject();
  v66 = v29;
  sub_1E5E1E2B8(v39, v40 + v29, type metadata accessor for AppComposer);
  swift_unknownObjectRetain();

  v72 = v26;

  v67 = v27;
  v41 = v61;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FEB2FC();
  sub_1E65E1928();
  v42 = sub_1E65E4FD8();
  (*(*(v42 - 8) + 56))(v36, 1, 1, v42);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v43 = sub_1E65E5018();
  __swift_project_value_buffer(v43, qword_1EE2D49E8);
  v44 = sub_1E65E2E78();
  v45 = v73;
  (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
  sub_1E5FED46C(&qword_1ED077F88, &qword_1ED077F80, &qword_1E65FB198, MEMORY[0x1E699E958]);
  v46 = v74;
  v47 = v71;
  sub_1E65E4728();
  sub_1E5DFE50C(v45, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v36, &qword_1ED071EF8, &unk_1E65FA470);
  (*(v70 + 8))(v41, v47);
  (*(v69 + 8))(v68, v76);
  v48 = swift_allocObject();
  v49 = v82;
  v48[3] = v81;
  v48[4] = v49;
  v48[5] = v83;
  v50 = v80;
  v48[1] = v79;
  v48[2] = v50;
  v51 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F90, &qword_1E65FB1B0) + 36));
  *v51 = 0;
  v51[1] = 0;
  v51[2] = sub_1E5F99E38;
  v51[3] = v48;
  v52 = v78;
  sub_1E5E1DEAC(v75, v78);
  v53 = swift_allocObject();
  sub_1E5E1E2B8(v52, v53 + v66, type metadata accessor for AppComposer);
  v54 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077F98, &qword_1E65FB1B8) + 36));
  *v54 = sub_1E5FF0278;
  v54[1] = v53;
  v55 = swift_allocObject();
  v56 = v82;
  *(v55 + 3) = v81;
  *(v55 + 4) = v56;
  *(v55 + 5) = v83;
  v57 = v80;
  *(v55 + 1) = v79;
  *(v55 + 2) = v57;
  v58 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FA0, &qword_1E65FB1C0) + 36));
  *v58 = sub_1E62E2434;
  v58[1] = v55;
  v58[2] = 0;
  v58[3] = 0;
  swift_unknownObjectRetain();

  return result;
}

uint64_t sub_1E62E1404()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FEEF74;

  return RoutingContext.dismiss()(v3, v2);
}

uint64_t sub_1E62E14BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E62E13E4(v0 + 16);
}

uint64_t sub_1E62E1550(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AppComposer(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FC0, &qword_1E65FB1D8);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v27 - v9;
  v10 = sub_1E65E1A48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65E1A08();
  v34 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  (*(v11 + 16))(v13, a2, v10);
  sub_1E65E19F8();
  type metadata accessor for AppFeature(0);
  sub_1E62E2770(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v27 = sub_1E62E2770(&qword_1ED077FC8, MEMORY[0x1E699E9C8], MEMORY[0x1E699E9C0]);
  sub_1E65E4DE8();
  v15 = v30;
  sub_1E5E1DEAC(a1, v30);
  v16 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v17 = swift_allocObject();
  sub_1E5E1E2B8(v15, v17 + v16, type metadata accessor for AppComposer);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(a3 + 3);
  v18[2] = *(a3 + 2);
  v18[3] = v19;
  v18[4] = *(a3 + 4);
  v20 = *(a3 + 1);
  *v18 = *a3;
  v18[1] = v20;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E62E27B8;
  *(v21 + 24) = v17;

  v22 = v31;
  v24 = v28;
  v23 = v29;
  v25 = sub_1E65E4F08();

  (*(v35 + 8))(v23, v36);
  (*(v34 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1E62E19F8()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65E1A48() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E62E1550((v0 + v2), v0 + v5, v6);
}

uint64_t sub_1E62E1AF0()
{
  v0 = sub_1E65E19B8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E65E1A98();
  sub_1E634C114(v2);
  return sub_1E65E1948();
}

uint64_t sub_1E62E1C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1E65E1998();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = a4[7];
  v22[1] = a4[5];
  v22[2] = v14;
  v22[3] = a4[9];
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v15, v9, v6);
  v18 = (v17 + v16);
  v19 = *(a4 + 3);
  v18[2] = *(a4 + 2);
  v18[3] = v19;
  v18[4] = *(a4 + 4);
  v20 = *(a4 + 1);
  *v18 = *a4;
  v18[1] = v20;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v12, &unk_1E65FB1E0, v17);
}

uint64_t sub_1E62E1E5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtworkDescriptor(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E1B48();
  sub_1E65E1B38();
  sub_1E65DB248();
  sub_1E62E2700(a1, &v9[v14]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v15 = sub_1E65DAE38();
  v16 = sub_1E65DAE38();
  v17 = sub_1E65E4B48();
  v18 = 4.0;
  if (v17)
  {
    v18 = 8.0;
  }

  v19 = 16.0;
  if (v17)
  {
    v19 = 18.0;
  }

  if (v15 == v16)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  if (v15 == v16)
  {
    v21 = 12.0;
  }

  else
  {
    v21 = 8.0;
  }

  sub_1E5E1E2B8(v9, v13, type metadata accessor for ArtworkContent);
  *(v13 + v11[7]) = MEMORY[0x1E69E7CD0];
  v22 = (v13 + v11[8]);
  *v22 = 0.0;
  v22[1] = v20;
  v22[2] = v20;
  v22[3] = v21;
  *(v13 + v11[9]) = 1;
  v23 = (v13 + v11[10]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v32;
  sub_1E64D2DD0(v13, a2, v32);
  v25 = sub_1E65E4B98();
  v27 = v26;
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v13, a2, v28);
  sub_1E61BF8AC(v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v30 = (v28 + *(result + 36));
  *v30 = v25;
  v30[1] = v27;
  return result;
}

uint64_t sub_1E62E2160@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E62E1E5C(a1, v6, a2);
}

uint64_t sub_1E62E21E8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(a1 + 3);
  *(v6 + 64) = *(a1 + 2);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a1 + 4);
  v8 = *(a1 + 1);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v4, &unk_1E65FB1D0, v6);
}

uint64_t sub_1E62E234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 16) + **(a4 + 16));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1E5DFA78C;

  return v7();
}

unint64_t sub_1E62E243C()
{
  result = qword_1ED077FA8;
  if (!qword_1ED077FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077FA0, &qword_1E65FB1C0);
    sub_1E62E24C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FA8);
  }

  return result;
}

unint64_t sub_1E62E24C8()
{
  result = qword_1ED077FB0;
  if (!qword_1ED077FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077F98, &qword_1E65FB1B8);
    sub_1E62E2554();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FB0);
  }

  return result;
}

unint64_t sub_1E62E2554()
{
  result = qword_1ED077FB8;
  if (!qword_1ED077FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077F90, &qword_1E65FB1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077F80, &qword_1E65FB198);
    sub_1E5FED46C(&qword_1ED077F88, &qword_1ED077F80, &qword_1E65FB198, MEMORY[0x1E699E958]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FB8);
  }

  return result;
}

uint64_t sub_1E62E2650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E62E2700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62E2770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E62E27B8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E62E1C10(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E62E2864(uint64_t a1)
{
  v4 = *(sub_1E65E1998() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5FBF150(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E62E2980@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1E65D80C8();
  if (v22)
  {
    if (v20 == 8)
    {
      *v19 = sub_1E65D8078();
      v19[1] = v23;
      sub_1E62E2DF4();
      swift_storeEnumTagMultiPayload();
      sub_1E62E2F6C(v7);
      sub_1E65D80E8();
      v24 = sub_1E65D76A8();
      v25 = (*(*(v24 - 8) + 48))(v4, 1, v24) != 1;
      v26 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      v34 = a1;
      sub_1E62E3040(v4);
      *v11 = v25;
      sub_1E65D7688();
      swift_storeEnumTagMultiPayload();
      State = type metadata accessor for WorkoutContextMenuLoadState(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
      swift_storeEnumTagMultiPayload();
      sub_1E5FAB460(v16, v26, &qword_1ED0737C8, &unk_1E6605140);
      sub_1E5FAB460(v13, v26 + State[5], &unk_1ED077CC0, &unk_1E65F2610);
      sub_1E5FAB460(v7, v26 + State[6], &unk_1ED077CD0, &unk_1E65F42F0);
      sub_1E5FAB460(v11, v26 + State[7], &unk_1ED077CC0, &unk_1E65F2610);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
      swift_storeEnumTagMultiPayload();
      v28 = v34;
      sub_1E65D76E8();
      v29 = type metadata accessor for ContextMenu(0);
      sub_1E605953C(v19, v28 + *(v29 + 20));
      return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    }
  }

  else
  {
    sub_1E5F87058(v20, v21, 0);
  }

  v31 = type metadata accessor for ContextMenu(0);
  v32 = *(*(v31 - 8) + 56);

  return v32(a1, 1, 1, v31);
}

uint64_t sub_1E62E2DF4()
{
  v2 = sub_1E65D8238();
  if (v4 != -1)
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E61281C8(v5, v6, v7);
    if (v9 < 4u)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140);
      sub_1E65D8078();
      sub_1E65D81D8();
      sub_1E65D8188();
      sub_1E65DE758();
      sub_1E65D7688();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E62E2F6C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1E65D8108();
  if (v4 == -1 || (v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = 0x100000000;
  v6 = 0;
  if (((1 << v3) & 0x19F) != 0)
  {
    goto LABEL_8;
  }

  if (v3 == 5)
  {
    v5 = 1;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  v6 = 1;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
  *(a2 + 4) = BYTE4(v5);
  *a2 = v5;
  *(a2 + 5) = v6;
  sub_1E65D7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E62E3040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E62E30A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v90 = a2;
  v3 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077690, &qword_1E65FA358);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v68 - v6;
  v7 = sub_1E65DAD48();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v84 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v83 = &v68 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v81 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = &v68 - v18;
  v77 = sub_1E65DAC98();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E65E3328();
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DA0B8();
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v69 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v68 - v24;
  v26 = sub_1E65D9D58();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v68 - v31;
  v33 = sub_1E65D8BB8();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v68 - v37;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  v39 = MEMORY[0x1EEE9AC00](v79);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v91 = &v68 - v42;
  v88 = v2;
  sub_1E65D83E8();
  sub_1E628E768(v38, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v72;
    v44 = *(v72 + 32);
    v45 = v25;
    v68 = v25;
    v46 = v36;
    v47 = v73;
    v44(v25, v46, v73);
    v48 = v69;
    (*(v43 + 16))(v69, v45, v47);
    v49 = v71;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E3318();
    (*(v75 + 8))(v49, v77);
    sub_1E65DA0A8();
    sub_1E628E7CC();
    sub_1E65DC438();
    v50 = *(v43 + 8);
    v50(v48, v47);
    v50(v68, v47);
  }

  else
  {
    (*(v27 + 32))(v32, v36, v26);
    (*(v27 + 16))(v30, v32, v26);
    sub_1E6134680(v30, v41);
    (*(v27 + 8))(v32, v26);
  }

  sub_1E625B0B0(v38);
  swift_storeEnumTagMultiPayload();
  sub_1E628E824(v41, v91);
  v51 = v80;
  sub_1E65D83F8();
  v52 = sub_1E65DAD08();
  v53 = v86;
  v54 = *(v85 + 8);
  v55 = v54(v51, v86);
  MEMORY[0x1EEE9AC00](v55);
  v67 = v82;
  v56 = sub_1E640632C(sub_1E62E39F0, v66, v52);

  v85 = sub_1E600CCD8(v56);

  sub_1E65D83F8();
  v82 = sub_1E65DACE8();
  v79 = v57;
  v54(v51, v53);
  v58 = v81;
  sub_1E65D83F8();
  sub_1E65DAD28();
  v54(v58, v53);
  v59 = sub_1E65E3348();
  (*(*(v59 - 8) + 56))(v87, 1, 1, v59);
  v60 = v83;
  sub_1E65D83F8();
  sub_1E65DACF8();
  v54(v60, v53);
  v61 = v84;
  sub_1E65D83F8();
  v62 = sub_1E65DAD18();
  v64 = v63;
  v54(v61, v53);
  v66[1] = v64;
  v67 = MEMORY[0x1E69E7CD0];
  v66[0] = v62;
  return sub_1E65E3238();
}

uint64_t sub_1E62E3A24@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v63 = a4;
  v56 = a3;
  v66 = a2;
  v65 = a7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076948, &unk_1E65F7230);
  v76 = *(v77 - 8);
  v13 = MEMORY[0x1EEE9AC00](v77);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v54 - v15;
  v16 = type metadata accessor for AppComposer(0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076950, &unk_1E65F7240);
  v75 = *(v74 - 8);
  v19 = MEMORY[0x1EEE9AC00](v74);
  v71 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v54 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F8, &qword_1E65EDC90);
  v73 = *(v69 - 8);
  v22 = MEMORY[0x1EEE9AC00](v69);
  v68 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v54 - v24;
  v55 = a1;
  v83 = a1;
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073920, &qword_1E65EDCB0);
  sub_1E5FED46C(&qword_1EE2D4B40, &qword_1ED073920, &qword_1E65EDCB0, MEMORY[0x1E6981F48]);
  sub_1E65E4AF8();
  sub_1E5E1DEAC(a1, v18);
  v57 = *a5;
  v58 = a5[3];
  v59 = a5[5];
  v60 = a5[7];
  v61 = a5[9];
  sub_1E5DF650C(a6, &v88);
  v25 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1E5E1E5F8(v18, v28 + v25, type metadata accessor for AppComposer);
  v29 = (v28 + v26);
  v30 = v56;
  *v29 = v66;
  v29[1] = v30;
  v31 = (v28 + v27);
  v32 = *(a5 + 4);
  v31[3] = *(a5 + 3);
  v31[4] = v32;
  v33 = *(a5 + 2);
  v31[1] = *(a5 + 1);
  v31[2] = v33;
  *v31 = *a5;
  sub_1E5DF599C(&v88, v28 + ((v27 + 87) & 0xFFFFFFFFFFFFFFF8));
  v34 = v55;
  sub_1E5E1DEAC(v55, v18);
  v35 = swift_allocObject();
  sub_1E5E1E5F8(v18, v35 + v25, type metadata accessor for AppComposer);
  v36 = (v35 + v26);
  *v36 = &unk_1E65FA338;
  v36[1] = 0;

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073900, &qword_1E65EDC98);
  sub_1E61F26B4();
  v37 = v67;
  sub_1E65DF198();
  v78 = v34;
  v79 = v66;
  v80 = v30;
  v81 = v63;
  v82 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
  v38 = v72;
  sub_1E65E4AF8();
  v39 = *(v73 + 16);
  v40 = v68;
  v41 = v69;
  v39(v68, v70, v69);
  v66 = *(v75 + 16);
  v42 = v71;
  v66(v71, v37, v74);
  v43 = *(v76 + 16);
  v44 = v64;
  v43(v64, v38, v77);
  v45 = v65;
  v39(v65, v40, v41);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078030, &qword_1E65FB3C0);
  v47 = v74;
  v66(&v45[*(v46 + 48)], v42, v74);
  v48 = v77;
  v43(&v45[*(v46 + 64)], v44, v77);
  v49 = *(v76 + 8);
  v49(v72, v48);
  v50 = *(v75 + 8);
  v50(v67, v47);
  v51 = *(v73 + 8);
  v52 = v69;
  v51(v70, v69);
  v49(v44, v48);
  v50(v71, v47);
  return (v51)(v68, v52);
}

uint64_t sub_1E62E4270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X8>)
{
  v184 = a4;
  v185 = a5;
  v189 = a3;
  v159 = a2;
  v192 = a1;
  v173 = a6;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v171 = *(v147 - 8);
  v7 = MEMORY[0x1EEE9AC00](v147);
  v145 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v143 = &v134 - v10;
  v144 = v11;
  MEMORY[0x1EEE9AC00](v9);
  v146 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v164 = &v134 - v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v162 = *(v163 - 8);
  v15 = MEMORY[0x1EEE9AC00](v163);
  v142 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v134 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073948, &unk_1E65F72B0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v172 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v169 = &v134 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v134 - v23;
  v182 = sub_1E65D76F8();
  v24 = *(v182 - 8);
  v161 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v26 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v26;
  v27 = type metadata accessor for AppComposer(0);
  v174 = *(v27 - 8);
  v28 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v151 = *(v30 - 8);
  v31 = *(v151 + 8);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v148 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v134 - v33;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v188 = *(v156 - 8);
  v187 = *(v188 + 8);
  v35 = MEMORY[0x1EEE9AC00](v156);
  v160 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v157 = &v134 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v155 = &v134 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v186 = &v134 - v41;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v154 = *(v158 - 8);
  v153 = *(v154 + 64);
  v42 = MEMORY[0x1EEE9AC00](v158);
  v175 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v152 = &v134 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v134 - v46;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
  v166 = *(v167 - 8);
  v48 = MEMORY[0x1EEE9AC00](v167);
  v165 = &v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  *v47 = a2;
  *(v47 + 1) = v189;
  v47[16] = 0;
  v190 = &v134 - v50;
  v191 = v47;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  v150 = v34;
  sub_1E6184404(v34);
  v183 = v29;
  sub_1E5E1DEAC(v192, v29);
  sub_1E5DFD1CC(v34, &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v51 = *(v24 + 16);
  v52 = v182;
  v140 = v24 + 16;
  v139 = v51;
  v51(v26, v184, v182);
  v53 = v185;
  v54 = v185[3];
  v176 = *v185;
  v177 = v54;
  v55 = v185[7];
  v178 = v185[5];
  v179 = v55;
  v180 = v185[9];
  v56 = *(v174 + 80);
  v57 = (v56 + 16) & ~v56;
  v174 = v57 + v28;
  v149 = v56 | 7;
  v58 = (v57 + v28 + *(v151 + 80)) & ~*(v151 + 80);
  v59 = *(v24 + 80);
  v60 = (v31 + v59 + v58) & ~v59;
  v136 = v59;
  v134 = v161 + 7;
  v61 = (v161 + 7 + v60) & 0xFFFFFFFFFFFFFFF8;
  v137 = v56 | 7 | v59;
  v62 = swift_allocObject();
  v151 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v29, v62 + v57, type metadata accessor for AppComposer);
  sub_1E5FAB460(v148, v62 + v58, &qword_1ED073950, &unk_1E65F4360);
  v63 = *(v24 + 32);
  v148 = v24 + 32;
  v135 = v63;
  v63(v62 + v60, v181, v52);
  v64 = (v62 + v61);
  v65 = *(v53 + 3);
  v64[2] = *(v53 + 2);
  v64[3] = v65;
  v64[4] = *(v53 + 4);
  v66 = *(v53 + 1);
  *v64 = *v53;
  v64[1] = v66;
  v67 = (v62 + ((v61 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v67 = nullsub_1;
  v67[1] = 0;
  v68 = sub_1E604BABC();
  swift_unknownObjectRetain();

  v69 = v186;
  v138 = v68;
  sub_1E65DE518();
  sub_1E5DFE50C(v150, &qword_1ED073950, &unk_1E65F4360);
  v70 = v183;
  sub_1E5E1DEAC(v192, v183);
  v71 = v152;
  sub_1E5DFD1CC(v191, v152, &qword_1ED073958, &qword_1E65EDCD0);
  v72 = *(v154 + 80);
  v73 = ((v174 + v72) & ~v72);
  v150 = v73 + v153;
  v149 |= v72;
  v74 = swift_allocObject();
  v154 = v74;
  v161 = v57;
  sub_1E5E1E5F8(v70, v74 + v57, v151);
  v151 = v73;
  sub_1E5FAB460(v71, v73 + v74, &qword_1ED073958, &qword_1E65EDCD0);
  v75 = v188;
  v76 = *(v188 + 2);
  v77 = v155;
  v78 = v156;
  v76(v155, v69, v156);
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v153 = swift_allocObject();
  v80 = *(v75 + 4);
  v80(v153 + v79, v77, v78);
  v81 = v157;
  v82 = v186;
  v76(v157, v186, v78);
  v155 = swift_allocObject();
  v80(&v155[v79], v81, v78);
  v83 = v160;
  v76(v160, v82, v78);
  v84 = swift_allocObject();
  v80(v84 + v79, v83, v78);
  v85 = v162;
  v86 = sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  v133 = v78;
  v87 = v175;
  sub_1E65DE8A8();
  (*(v188 + 1))(v82, v133);
  sub_1E5DFE50C(v191, &qword_1ED073958, &qword_1E65EDCD0);
  v88 = v189;
  *v87 = v159;
  *(v87 + 8) = v88;
  *(v87 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v89 = v164;
  sub_1E61845B4(v164);
  if ((*(v85 + 48))(v89, 1, v163) == 1)
  {
    sub_1E5DFE50C(v87, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v89, &qword_1ED073938, &unk_1E65F72A0);
    v90 = 1;
    v91 = v169;
  }

  else
  {
    v92 = v136;
    v93 = v168;
    sub_1E5FAB460(v89, v168, &qword_1ED073940, &qword_1E65EDCC8);
    v94 = v183;
    sub_1E5E1DEAC(v192, v183);
    v95 = v93;
    v96 = v142;
    sub_1E5DFD1CC(v95, v142, &qword_1ED073940, &qword_1E65EDCC8);
    v98 = v181;
    v97 = v182;
    v139(v181, v184, v182);
    v99 = *(v85 + 80);
    v189 = v86;
    v100 = (v174 + v99) & ~v99;
    v101 = v100 + v141;
    v102 = (v92 + v100 + v141 + 1) & ~v92;
    v103 = (v134 + v102) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    v188 = type metadata accessor for AppComposer;
    sub_1E5E1E5F8(v94, v104 + v161, type metadata accessor for AppComposer);
    sub_1E5FAB460(v96, v104 + v100, &qword_1ED073940, &qword_1E65EDCC8);
    *(v104 + v101) = 0;
    v135(v104 + v102, v98, v97);
    v105 = (v104 + v103);
    v106 = v185;
    v107 = *(v185 + 3);
    v105[2] = *(v185 + 2);
    v105[3] = v107;
    v105[4] = *(v106 + 4);
    v108 = *(v106 + 1);
    *v105 = *v106;
    v105[1] = v108;
    swift_unknownObjectRetain();

    v109 = v146;
    sub_1E65DE528();
    sub_1E5E1DEAC(v192, v94);
    v110 = v191;
    sub_1E5DFD1CC(v87, v191, &qword_1ED073958, &qword_1E65EDCD0);
    v111 = swift_allocObject();
    v192 = v111;
    sub_1E5E1E5F8(v94, v111 + v161, v188);
    sub_1E5FAB460(v110, v151 + v111, &qword_1ED073958, &qword_1E65EDCD0);
    v112 = v171;
    v113 = *(v171 + 16);
    v114 = v143;
    v115 = v109;
    v116 = v147;
    v113(v143, v109, v147);
    v117 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v191 = swift_allocObject();
    v118 = *(v112 + 32);
    v118(&v191[v117], v114, v116);
    v113(v114, v115, v116);
    v188 = swift_allocObject();
    v118(v188 + v117, v114, v116);
    v119 = v145;
    v113(v145, v115, v116);
    v120 = swift_allocObject();
    v118((v120 + v117), v119, v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073980, &qword_1E65EDCE8);
    sub_1E604DE38();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    v91 = v169;
    sub_1E65DE8A8();
    (*(v171 + 8))(v115, v116);
    sub_1E5DFE50C(v168, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v175, &qword_1ED073958, &qword_1E65EDCD0);
    v90 = 0;
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073970, &unk_1E65F72E0);
  (*(*(v121 - 8) + 56))(v91, v90, 1, v121);
  v122 = v170;
  sub_1E5FAB460(v91, v170, &qword_1ED073948, &unk_1E65F72B0);
  v123 = v166;
  v124 = *(v166 + 16);
  v125 = v165;
  v126 = v190;
  v127 = v167;
  v124(v165, v190, v167);
  v128 = v172;
  sub_1E5DFD1CC(v122, v172, &qword_1ED073948, &unk_1E65F72B0);
  v129 = v173;
  v124(v173, v125, v127);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073978, &qword_1E65EDCE0);
  sub_1E5DFD1CC(v128, &v129[*(v130 + 48)], &qword_1ED073948, &unk_1E65F72B0);
  sub_1E5DFE50C(v122, &qword_1ED073948, &unk_1E65F72B0);
  v131 = *(v123 + 8);
  v131(v126, v127);
  sub_1E5DFE50C(v128, &qword_1ED073948, &unk_1E65F72B0);
  return (v131)(v125, v127);
}

uint64_t sub_1E62E5680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
  sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260, MEMORY[0x1E6981F48]);
  return sub_1E65E4AF8();
}

uint64_t sub_1E62E572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v68 = a5;
  v72 = a6;
  v73 = a2;
  v64 = a1;
  v9 = sub_1E65DE588();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v53 - v12;
  v13 = type metadata accessor for AppComposer(0);
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v53 - v19);
  v67 = sub_1E65DE468();
  v75 = *(v67 - 8);
  v21 = MEMORY[0x1EEE9AC00](v67);
  v66 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v53 - v23;
  *v20 = v73;
  v20[1] = a3;
  swift_storeEnumTagMultiPayload();

  v55 = sub_1E5F9B258(&unk_1F5FA8828);
  v56 = v15;
  sub_1E5E1DEAC(a1, v15);
  sub_1E5DFD1CC(v20, &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v57 = *a4;
  v60 = a4[3];
  v73 = a4[5];
  v58 = a4[7];
  v59 = a4[9];
  v24 = *(v65 + 80);
  v25 = (v24 + 16) & ~v24;
  v65 = v25 + v14;
  v61 = v25;
  v63 = v24 | 7;
  v26 = (v25 + v14 + *(v62 + 80)) & ~*(v62 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1E5E1E5F8(v15, v28 + v25, type metadata accessor for AppComposer);
  sub_1E5FAB460(v54, v28 + v26, &qword_1ED073988, &unk_1E65F72F0);
  *(v28 + v27) = v55;
  v29 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = *(a4 + 4);
  v29[3] = *(a4 + 3);
  v29[4] = v30;
  v31 = *(a4 + 2);
  v29[1] = *(a4 + 1);
  v29[2] = v31;
  *v29 = *a4;
  swift_unknownObjectRetain();

  v32 = v74;
  sub_1E65DE458();
  sub_1E5DFE50C(v20, &qword_1ED073988, &unk_1E65F72F0);
  v33 = v56;
  sub_1E5E1DEAC(v64, v56);
  sub_1E5DF650C(v68, v77);
  v34 = (v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1E5E1E5F8(v33, v35 + v61, type metadata accessor for AppComposer);
  v36 = (v35 + v34);
  v37 = *(a4 + 3);
  v36[2] = *(a4 + 2);
  v36[3] = v37;
  v36[4] = *(a4 + 4);
  v38 = *(a4 + 1);
  *v36 = *a4;
  v36[1] = v38;
  sub_1E5DF599C(v77, v35 + ((v34 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v39 = v76;
  sub_1E65DE578();
  v40 = *(v75 + 16);
  v41 = v66;
  v42 = v67;
  v40(v66, v32, v67);
  v43 = v69;
  v44 = v70;
  v45 = *(v70 + 16);
  v46 = v39;
  v47 = v71;
  v45(v69, v46, v71);
  v48 = v72;
  v40(v72, v41, v42);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v45(&v48[*(v49 + 48)], v43, v47);
  v50 = *(v44 + 8);
  v50(v76, v47);
  v51 = *(v75 + 8);
  v51(v74, v42);
  v50(v43, v47);
  return (v51)(v41, v42);
}

uint64_t sub_1E62E5D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v36 = a1;
  v40 = a6;
  v37 = sub_1E65D76F8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  *v17 = v35;
  *(v17 + 1) = a3;
  v17[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v36, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DFD1CC(v17, v15, &unk_1ED0776E0, &qword_1E65EDC00);
  v18 = v37;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v37);
  v19 = a5[3];
  v33 = *a5;
  v34 = v19;
  v20 = a5[7];
  v35 = a5[5];
  v36 = v20;
  v39 = a5[9];
  v21 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v22 = (v11 + *(v30 + 80) + v21) & ~*(v30 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_1E5E1E5F8(v29, v24 + v21, type metadata accessor for AppComposer);
  sub_1E5FAB460(v15, v24 + v22, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v8 + 32))(v24 + v23, v31, v18);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a5 + 3);
  v25[2] = *(a5 + 2);
  v25[3] = v26;
  v25[4] = *(a5 + 4);
  v27 = *(a5 + 1);
  *v25 = *a5;
  v25[1] = v27;
  sub_1E604C89C();

  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  return sub_1E5DFE50C(v17, &unk_1ED0776E0, &qword_1E65EDC00);
}

uint64_t sub_1E62E6154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v15 - v1;
  v3 = sub_1E65E4548();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E49F8();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  v8 = sub_1E65E4578();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v10 = sub_1E65E49C8();
  v11 = swift_getKeyPath();
  v15[2] = v7;
  v15[3] = v7;
  v15[4] = KeyPath;
  v15[5] = v8;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *MEMORY[0x1E697E6E8];
  v13 = sub_1E65E3DD8();
  (*(*(v13 - 8) + 104))(v2, v12, v13);
  sub_1E62F89B8(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D80, &qword_1E65EDC48);
    sub_1E604C584();
    v15[1] = KeyPath;
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v2, &unk_1ED0776B0, &unk_1E65EDE50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E62E647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  sub_1E64B80F8(0, 0, v8, &unk_1E65FB358, v10);
}

uint64_t sub_1E62E65AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E62E65D0, 0, 0);
}

uint64_t sub_1E62E65D0()
{
  *(v0 + 72) = 0;
  *(v0 + 40) = sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E666C, v2, v1);
}

uint64_t sub_1E62E666C()
{

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E66E0, 0, 0);
}

uint64_t sub_1E62E66E0(uint64_t a1)
{
  *(v1 + 76) = 0;
  *(v1 + 72) = 0;
  *(v1 + 78) = 1;
  *(v1 + 56) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E677C, v3, v2);
}

uint64_t sub_1E62E677C()
{

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E67F0, 0, 0);
}

uint64_t sub_1E62E67F0(uint64_t a1)
{
  *(v1 + 72) = 0;
  *(v1 + 64) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E6880, v3, v2);
}

uint64_t sub_1E62E6880()
{

  sub_1E65E4EE8();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1E62E68EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v314 = a4;
  v318 = a3;
  v244 = a1;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v298 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v297 = &v227 - v8;
  v296 = sub_1E65DED38();
  v295 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v294 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v293 = &v227 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v292 = &v227 - v13;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v289 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v287 = &v227 - v14;
  v288 = sub_1E65E15B8();
  v286 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v285 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v282 = &v227 - v16;
  v278 = sub_1E65E3F88();
  v277 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v276 = &v227 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v233 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v235 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v256 = &v227 - v21;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v268 = *(v269 - 8);
  v22 = MEMORY[0x1EEE9AC00](v269);
  v238 = &v227 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v264 = &v227 - v24;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v263 = *(v240 - 8);
  v25 = MEMORY[0x1EEE9AC00](v240);
  v239 = &v227 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v302 = &v227 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v254 = &v227 - v29;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v301 = *(v253 - 8);
  v30 = MEMORY[0x1EEE9AC00](v253);
  v229 = &v227 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v259 = &v227 - v32;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v230 = *(v252 - 8);
  v33 = MEMORY[0x1EEE9AC00](v252);
  v232 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v323 = (&v227 - v35);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FD0, &qword_1E65FB1E8);
  v36 = MEMORY[0x1EEE9AC00](v266);
  v257 = &v227 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v261 = &v227 - v38;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FD8, &qword_1E65FB1F0);
  v265 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v262 = &v227 - v39;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FE0, &qword_1E65FB1F8);
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v272 = &v227 - v40;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FE8, &qword_1E65FB200);
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v267 = &v227 - v41;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772D0, &qword_1E65F9900);
  MEMORY[0x1EEE9AC00](v312);
  v279 = &v227 - v42;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772B0, &qword_1E65F98F0);
  v43 = MEMORY[0x1EEE9AC00](v280);
  v281 = &v227 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v291 = &v227 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF0, &qword_1E65F77B0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v250 = &v227 - v47;
  v48 = sub_1E65D76F8();
  v327 = *(v48 - 8);
  v328 = v48;
  v300 = *(v327 + 64);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v313 = &v227 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v325 = &v227 - v51;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v305 = &v227 - v52;
  v53 = type metadata accessor for AppComposer(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53 - 8);
  v326 = &v227 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v227 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v324 = (&v227 - v60);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v243 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304);
  v303 = &v227 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v322 = *(v62 - 8);
  v311 = *(v322 + 64);
  v63 = MEMORY[0x1EEE9AC00](v62);
  v310 = &v227 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v227 - v65;
  v317 = (&v227 - v65);
  *v66 = a1;
  *(v66 + 1) = a2;
  v242 = a2;
  v66[16] = 0;
  swift_storeEnumTagMultiPayload();
  v307 = *v4;
  sub_1E5E1DEAC(v4, v58);
  v67 = *(v54 + 80);
  v68 = (v67 + 16) & ~v67;
  v227 = v55;
  v69 = v68 + v55;
  v251 = v67;
  v70 = v67 | 7;
  v316 = swift_allocObject();
  sub_1E5E1E5F8(v58, v316 + v68, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v5, v58);
  v71 = swift_allocObject();
  sub_1E5E1E5F8(v58, v71 + v68, type metadata accessor for AppComposer);
  v329 = v5;
  sub_1E5E1DEAC(v5, v58);
  v319 = v69;
  v315 = v70;
  v72 = swift_allocObject();
  v320 = v68;
  v309 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v58, v72 + v68, type metadata accessor for AppComposer);
  v73 = swift_allocObject();
  *(v73 + 16) = &unk_1E65F7190;
  *(v73 + 24) = v72;
  v321 = v58;
  sub_1E5E1DEAC(v5, v58);
  v74 = swift_allocObject();
  sub_1E5E1E5F8(v58, v74 + v68, type metadata accessor for AppComposer);
  v75 = sub_1E604BABC();

  sub_1E65DED58();
  v306 = v75;
  sub_1E65DEAC8();
  v76 = v317;
  v77 = v310;
  sub_1E5DFD1CC(v317, v310, &qword_1ED072AA8, &unk_1E65FA900);
  v79 = v327;
  v78 = v328;
  v324 = *(v327 + 16);
  v316 = v327 + 16;
  v80 = v325;
  v324(v325, v318, v328);
  v308 = *(v322 + 80);
  v81 = (v308 + 16) & ~v308;
  v322 = v81 + v311;
  v82 = *(v79 + 80);
  v83 = (v81 + v311 + v82) & ~v82;
  v84 = v83 + v300;
  v245 = v82;
  v85 = swift_allocObject();
  sub_1E5FAB460(v77, v85 + v81, &qword_1ED072AA8, &unk_1E65FA900);
  v86 = *(v327 + 32);
  v247 = v327 + 32;
  v246 = v86;
  v86(v85 + v83, v80, v78);
  *(v85 + v84) = 0;
  sub_1E5DFD1CC(v76, v77, &qword_1ED072AA8, &unk_1E65FA900);
  v87 = swift_allocObject();
  sub_1E5FAB460(v77, v87 + v81, &qword_1ED072AA8, &unk_1E65FA900);
  v88 = type metadata accessor for AppFeature(0);
  v89 = sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v241 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  v260 = v88;
  v258 = v89;
  sub_1E65E4DE8();
  v90 = v321;
  sub_1E5E1DEAC(v329, v321);
  v91 = v314;
  v92 = *v314;
  v255 = v314[1];
  v93 = v314[3];
  v322 = v314[5];
  v94 = v314[7];
  v95 = v314[9];
  v96 = v310;
  sub_1E5DFD1CC(v317, v310, &qword_1ED072AA8, &unk_1E65FA900);
  v97 = (v319 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + v308 + 80) & ~v308;
  v99 = swift_allocObject();
  sub_1E5E1E5F8(v90, v99 + v320, v309);
  v100 = (v99 + v97);
  v101 = *(v91 + 3);
  v100[2] = *(v91 + 2);
  v100[3] = v101;
  v100[4] = *(v91 + 4);
  v102 = *(v91 + 1);
  *v100 = *v91;
  v100[1] = v102;
  sub_1E5FAB460(v96, v99 + v98, &qword_1ED072AA8, &unk_1E65FA900);
  v308 = v92;
  swift_unknownObjectRetain();
  v309 = v93;

  v310 = v94;

  v311 = v95;

  sub_1E65E4CC8();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1E62E945C;
  *(v103 + 24) = v99;

  v104 = v303;
  v105 = v305;
  v106 = v304;
  v307 = sub_1E65E4F08();

  (*(v248 + 8))(v105, v249);
  (*(v243 + 8))(v104, v106);
  sub_1E5DFE50C(v317, &qword_1ED072AA8, &unk_1E65FA900);
  v107 = sub_1E65E07B8();
  v108 = v250;
  (*(*(v107 - 8) + 56))(v250, 1, 1, v107);
  v109 = v108;
  v110 = v108;
  v112 = v328;
  v111 = v329;
  v113 = sub_1E6375DA0(0xD000000000000018, 0x80000001E66154E0, v109, v91);
  sub_1E5DFE50C(v110, &qword_1ED076AF0, &qword_1E65F77B0);
  v114 = v111;
  sub_1E5E1DEAC(v111, v326);
  v324(v313, v318, v112);
  v115 = v323;
  v116 = v242;
  *v323 = v244;
  v115[1] = v116;
  *(v115 + 16) = 0;
  swift_storeEnumTagMultiPayload();

  v117 = v254;
  sub_1E61845B4(v254);
  v118 = v117;
  if ((*(v301 + 48))(v117, 1, v253) == 1)
  {

    sub_1E5DFE50C(v323, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v117, &qword_1ED073938, &unk_1E65F72A0);
    v119 = 1;
    v120 = v257;
  }

  else
  {
    v304 = ~v251;
    v121 = v245;
    v303 = ~v245;
    v122 = v259;
    sub_1E5FAB460(v118, v259, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5E1DEAC(v114, v321);
    v305 = v113;
    v123 = v229;
    sub_1E5DFD1CC(v122, v229, &qword_1ED073940, &qword_1E65EDCC8);
    v324(v325, v318, v112);
    v124 = (v319 + *(v301 + 80)) & ~*(v301 + 80);
    v125 = v124 + v228;
    v126 = v121;
    v127 = (v121 + v124 + v228 + 1) & ~v121;
    v301 = v315 | v126;
    v300 += 7;
    v128 = (v300 + v127) & 0xFFFFFFFFFFFFFFF8;
    v129 = swift_allocObject();
    v317 = type metadata accessor for AppComposer;
    v130 = v321;
    sub_1E5E1E5F8(v321, v129 + v320, type metadata accessor for AppComposer);
    sub_1E5FAB460(v123, v129 + v124, &qword_1ED073940, &qword_1E65EDCC8);
    *(v129 + v125) = 1;
    v131 = v325;
    v246(v129 + v127, v325, v112);
    v132 = (v129 + v128);
    v133 = *(v91 + 3);
    v132[2] = *(v91 + 2);
    v132[3] = v133;
    v132[4] = *(v91 + 4);
    v134 = *(v91 + 1);
    *v132 = *v91;
    v132[1] = v134;
    swift_unknownObjectRetain();

    sub_1E65DE528();
    v135 = v256;
    sub_1E6184404(v256);
    v136 = v130;
    sub_1E5E1DEAC(v329, v130);
    v137 = v235;
    sub_1E5DFD1CC(v135, v235, &qword_1ED073950, &unk_1E65F4360);
    v324(v131, v318, v112);
    v138 = (v319 + *(v233 + 80)) & ~*(v233 + 80);
    v139 = (v234 + v245 + v138) & v303;
    v140 = (v300 + v139) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    sub_1E5E1E5F8(v136, v141 + v320, v317);
    sub_1E5FAB460(v137, v141 + v138, &qword_1ED073950, &unk_1E65F4360);
    v246(v141 + v139, v131, v112);
    v142 = (v141 + v140);
    v143 = *(v91 + 3);
    v142[2] = *(v91 + 2);
    v142[3] = v143;
    v142[4] = *(v91 + 4);
    v144 = *(v91 + 1);
    *v142 = *v91;
    v142[1] = v144;
    v145 = (v141 + ((v140 + 87) & 0xFFFFFFFFFFFFFFF8));
    v146 = v305;
    *v145 = sub_1E62F179C;
    v145[1] = v146;
    swift_unknownObjectRetain();

    v147 = v264;
    sub_1E65DE518();
    sub_1E5DFE50C(v256, &qword_1ED073950, &unk_1E65F4360);
    v148 = v329;
    v149 = v321;
    sub_1E5E1DEAC(v329, v321);
    v150 = v232;
    sub_1E5DFD1CC(v323, v232, &qword_1ED073958, &qword_1E65EDCD0);
    v151 = (v319 + *(v230 + 80)) & ~*(v230 + 80);
    v152 = swift_allocObject();
    v318 = v152;
    sub_1E5E1E5F8(v149, v152 + v320, v317);
    sub_1E5FAB460(v150, v152 + v151, &qword_1ED073958, &qword_1E65EDCD0);
    v153 = v268;
    v154 = v238;
    v155 = v269;
    (*(v268 + 16))(v238, v147, v269);
    v156 = v153;
    v157 = (*(v153 + 80) + 16) & ~*(v153 + 80);
    v303 = swift_allocObject();
    (*(v156 + 32))(v303 + v157, v154, v155);
    v158 = v263;
    v301 = *(v263 + 16);
    v159 = v239;
    v160 = v302;
    v161 = v240;
    (v301)(v239, v302, v240);
    sub_1E5E1DEAC(v148, v149);
    v162 = v158;
    v163 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v300 = v163 + v236;
    v164 = (v163 + v236 + v251) & v304;
    v165 = swift_allocObject();
    v166 = *(v162 + 32);
    v304 = v165;
    v166(v165 + v163, v159, v161);
    v167 = v165 + v164;
    v168 = v321;
    v169 = v317;
    sub_1E5E1E5F8(v321, v167, v317);
    (v301)(v159, v160, v161);
    v170 = swift_allocObject();
    v166(v170 + v163, v159, v161);
    sub_1E5E1DEAC(v329, v168);
    v171 = swift_allocObject();
    sub_1E5E1E5F8(v168, v171 + v320, v169);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078018, &qword_1E65FB300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078020, &qword_1E65FB308);
    sub_1E604CB00();
    sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
    sub_1E62F1A7C();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    swift_getOpaqueTypeConformance2();
    v172 = v269;
    v120 = v257;
    sub_1E65DE8A8();
    v113 = v305;

    (*(v268 + 8))(v264, v172);
    (*(v263 + 8))(v302, v161);
    sub_1E5DFE50C(v259, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v323, &qword_1ED073958, &qword_1E65EDCD0);
    v119 = 0;
  }

  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077FF0, &qword_1E65FB208);
  (*(*(v173 - 8) + 56))(v120, v119, 1, v173);
  v174 = v120;
  v175 = v261;
  sub_1E5FAB460(v174, v261, &qword_1ED077FD0, &qword_1E65FB1E8);
  v176 = v276;
  sub_1E65E3F78();
  v177 = sub_1E62F17A4();
  v178 = sub_1E62F89B8(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v179 = v262;
  v180 = v266;
  v181 = v278;
  sub_1E65E47D8();
  (*(v277 + 8))(v176, v181);
  sub_1E5DFE50C(v175, &qword_1ED077FD0, &qword_1E65FB1E8);
  v332 = v180;
  v333 = v181;
  v334 = v177;
  v335 = v178;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v183 = sub_1E62438F0();
  v184 = v272;
  v185 = v273;
  sub_1E65E47F8();
  (*(v265 + 8))(v179, v185);
  v186 = [objc_opt_self() tertiaryLabelColor];
  v187 = sub_1E65E4968();
  v330 = 0x4008000000000000;
  v331 = v187;
  v332 = v185;
  v333 = &type metadata for NavigationBarButtonStyle;
  v334 = OpaqueTypeConformance2;
  v335 = v183;
  swift_getOpaqueTypeConformance2();
  sub_1E62F1854();
  v188 = v267;
  v189 = v275;
  sub_1E65E47C8();

  (*(v274 + 8))(v184, v189);
  v190 = v279;
  (*(v270 + 32))(v279, v188, v271);

  v191 = v282;
  sub_1E65DEE28();

  LOBYTE(v175) = sub_1E65E4448();
  sub_1E65E4478();
  sub_1E65E4478();
  v192 = sub_1E65E4478();
  v193 = v292;
  if (v192 != v175)
  {
    sub_1E65E4478();
  }

  v194 = v285;
  sub_1E65E15A8();
  v195 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v196 = v287;
  v197 = v284;
  MEMORY[0x1E69482C0](v191, v284, v195);
  v332 = v197;
  v333 = v195;
  swift_getOpaqueTypeConformance2();
  sub_1E62F89B8(&qword_1ED078010, MEMORY[0x1E699E8C8], MEMORY[0x1E699E8C0]);
  v198 = v290;
  v199 = v288;
  sub_1E65E08A8();
  (*(v289 + 8))(v196, v198);
  (*(v286 + 8))(v194, v199);
  (*(v283 + 8))(v191, v197);
  v200 = sub_1E65E4FD8();
  (*(*(v200 - 8) + 56))(v193, 1, 1, v200);
  v201 = v113;
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v202 = sub_1E65E5018();
  __swift_project_value_buffer(v202, qword_1EE2D49E8);
  v203 = sub_1E65E2E78();
  v204 = v293;
  (*(*(v203 - 8) + 56))(v293, 1, 1, v203);
  sub_1E5FED46C(&qword_1ED0772D8, &qword_1ED0772D0, &qword_1E65F9900, &unk_1E65FE7C0);
  v205 = v291;
  sub_1E65E4728();
  sub_1E5DFE50C(v204, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v193, &qword_1ED071EF8, &unk_1E65FA470);
  sub_1E5DFE50C(v190, &qword_1ED0772D0, &qword_1E65F9900);
  v206 = swift_allocObject();
  v207 = v314;
  v208 = *(v314 + 3);
  v206[3] = *(v314 + 2);
  v206[4] = v208;
  v206[5] = *(v207 + 4);
  v209 = *(v207 + 1);
  v206[1] = *v207;
  v206[2] = v209;
  v210 = (v205 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772C8, &qword_1E65F98F8) + 36));
  *v210 = 0;
  v210[1] = 0;
  v210[2] = sub_1E5F99E38;
  v210[3] = v206;
  v211 = swift_allocObject();
  *(v211 + 16) = v307;
  *(v211 + 24) = v201;
  v212 = (v205 + *(v280 + 36));
  *v212 = sub_1E62F18A8;
  v212[1] = v211;
  v213 = type metadata accessor for DynamicBarButtonItem(0);
  v212[2] = 0;
  v212[3] = 0;
  v214 = objc_allocWithZone(v213);
  swift_unknownObjectRetain();

  v215 = v294;
  sub_1E65DED28();
  sub_1E62F89B8(&qword_1EE2D6820, MEMORY[0x1E699CD98], MEMORY[0x1E699CD90]);
  v216 = v297;
  v217 = v296;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v298 + 8))(v216, v299);
  (*(v295 + 8))(v215, v217);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  swift_allocObject();
  *&v214[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v218 = v325;
  v219 = v313;
  v220 = v328;
  v324(v325, v313, v328);
  v221 = v281;
  sub_1E5DFD1CC(v205, v281, &qword_1ED0772B0, &qword_1E65F98F0);
  v222 = sub_1E625C02C(v218, v221);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v224 = v222;

  sub_1E65E4D08();

  v225 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v225);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E62F89B8(&qword_1EE2D6840, MEMORY[0x1E699CD20], MEMORY[0x1E699CD28]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  sub_1E62F87D0(v326, type metadata accessor for AppComposer);

  sub_1E5DFE50C(v205, &qword_1ED0772B0, &qword_1E65F98F0);
  (*(v327 + 8))(v219, v220);
  return v224;
}

uint64_t sub_1E62E9484@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v18[0] = sub_1E65DEBD8();
  v1 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v6, &qword_1ED072808, &qword_1E65EBE00);
  sub_1E5FAB460(v12, v10, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
  {
    v14 = v18[0];
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v16 = sub_1E65D76A8();
      (*(*(v16 - 8) + 8))(&v10[v15], v16);
    }

    else
    {
      sub_1E5DFE50C(v10, &unk_1ED077CC0, &unk_1E65F2610);
    }
  }

  else
  {
    v14 = v18[0];
  }

  sub_1E63969B4();
  (*(v1 + 104))(v3, *MEMORY[0x1E699CD10], v14);
  return sub_1E65DEBA8();
}

uint64_t sub_1E62E97A0()
{
  v0 = sub_1E65E1578();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E62F87D0(v2, MEMORY[0x1E699E8A8]);
}

uint64_t sub_1E62E9840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1E64B80F8(0, 0, v6, &unk_1E65FB318, v8);
}

uint64_t sub_1E62E9958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1E65E1578();
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62E99EC, 0, 0);
}

uint64_t sub_1E62E99EC()
{
  *(v0 + 76) = 0;
  *(v0 + 72) = 0;
  *(v0 + 78) = 1;
  *(v0 + 48) = sub_1E65E6058();
  *(v0 + 56) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E9A94, v2, v1);
}

uint64_t sub_1E62E9A94()
{

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E9B08, 0, 0);
}

uint64_t sub_1E62E9B08()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 64) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62E9BA0, v2, v1);
}

uint64_t sub_1E62E9BA0()
{
  v1 = *(v0 + 40);

  sub_1E65E4EE8();
  sub_1E62F87D0(v1, MEMORY[0x1E699E8A8]);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E62E9C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v137 = a2;
  v130 = a1;
  v148 = a4;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v147 = (v4 - 8);
  v120 = v5;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v121 = v6;
  v123 = &v104[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078070, &qword_1E65FB4C8);
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v132 = &v104[-v7];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078078, &qword_1E65FB4D0);
  v119 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v117 = &v104[-v8];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078080, &qword_1E65FB4D8);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v104[-v9];
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078088, &qword_1E65FB4E0);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v122 = &v104[-v10];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v104[-v11];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078090, &qword_1E65FB4E8);
  MEMORY[0x1EEE9AC00](v141);
  v134 = &v104[-v12];
  v140 = sub_1E65DA2A8();
  v146 = *(v140 - 8);
  v13 = MEMORY[0x1EEE9AC00](v140);
  OpaqueTypeConformance2 = &v104[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v104[-v15];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078098, &qword_1E65FB4F0);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v104[-v16];
  v17 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v145 = &v104[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780A0, &qword_1E65FB4F8);
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v104[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780A8, &qword_1E65FB500);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v104[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780B0, &qword_1E65FB508);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v104[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780B8, &qword_1E65FB510);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780C0, &qword_1E65FB518);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v104[-v31];
  v33 = sub_1E65D76F8();
  v151 = *(v33 - 8);
  v152 = v33;
  v34 = *(v151 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v35);
  v150 = &v104[-v36];
  sub_1E65D76E8();
  v37 = *(v149 + *(v147 + 7) + 8);
  if (v37 < 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E62F8830();
    sub_1E65E4138();
    sub_1E5DFD1CC(v29, v23, &qword_1ED0780B8, &qword_1E65FB510);
    swift_storeEnumTagMultiPayload();
    sub_1E62F8860(&qword_1ED0780F8, &qword_1ED0780B8, &qword_1E65FB510, sub_1E62F8830);
    sub_1E65E4138();
    sub_1E5DFE50C(v29, &qword_1ED0780B8, &qword_1E65FB510);
    v38 = v148;
LABEL_15:
    sub_1E5FAB460(v32, v38, &qword_1ED0780C0, &qword_1E65FB518);
    return (*(v151 + 8))(v150, v152);
  }

  v107 = v34;
  v108 = &v104[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = v24;
  v110 = v26;
  v111 = v19;
  v113 = v27;
  v147 = v29;
  v115 = v23;
  v112 = v32;
  v114 = v21;
  if (v37 == 3)
  {
    swift_getKeyPath();
    v39 = v145;
    sub_1E65E4EC8();

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v42 = v115;
    v43 = v146;
    v44 = OpaqueTypeConformance2;
    if (v41 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_1E62F84BC();
      v45 = v142;
      sub_1E65E4138();
      v46 = v147;
      v47 = v148;
    }

    else
    {
      v48 = v140;
      (*(v146 + 32))(v144, &v39[*(v40 + 48)], v140);
      sub_1E65DA258();
      sub_1E62F89B8(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
      v49 = sub_1E65E6718();
      v52 = *(v43 + 8);
      v50 = v43 + 8;
      v51 = v52;
      v52(v44, v48);
      v46 = v147;
      v106 = v52;
      if (v49)
      {
        v105 = 1;
      }

      else
      {
        sub_1E65DA268();
        v105 = sub_1E65E6718();
        v51(v44, v48);
      }

      v53 = v137;
      v54 = v132;
      v55 = v131;
      v146 = v50;
      swift_getKeyPath();
      sub_1E65E4EC8();

      v56 = sub_1E6396BE8();
      v57 = (*(v127 + 8))(v55, v128);
      v58 = 1;
      if (v56)
      {
        v59 = v136;
        v60 = v135;
        v61 = v134;
        v62 = v144;
        if (v105)
        {
          OpaqueTypeConformance2 = v104;
          v63 = MEMORY[0x1EEE9AC00](v57);
          v64 = v149;
          v65 = v150;
          *&v104[-48] = v62;
          *&v104[-40] = v64;
          *&v104[-32] = v130;
          *&v104[-24] = v53;
          v103 = v133;
          MEMORY[0x1EEE9AC00](v63);
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078100, &qword_1E65FB570);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078108, &qword_1E65FB578);
          sub_1E62F88FC();
          sub_1E5FED46C(&qword_1ED078120, &qword_1ED078108, &qword_1E65FB578, MEMORY[0x1E6981F48]);
          sub_1E65E45C8();
          sub_1E65E4B58();
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780D0, &qword_1E65FB568);
          v67 = sub_1E5FED46C(&qword_1ED0780D8, &qword_1ED078070, &qword_1E65FB4C8, MEMORY[0x1E697CD28]);
          v68 = sub_1E62F8698();
          v69 = MEMORY[0x1E6981CD8];
          v70 = MEMORY[0x1E6981CD0];
          v102 = v68;
          v71 = v54;
          v72 = v117;
          v73 = v118;
          sub_1E65E4938();
          (*(v116 + 8))(v71, v73);
          v153 = v73;
          v154 = v69;
          v155 = v66;
          v156 = v67;
          v157 = v70;
          v158 = v68;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v132 = sub_1E62F877C();
          v74 = v124;
          sub_1E65E47E8();
          (*(v119 + 8))(v72, v74);
          v75 = v123;
          sub_1E5E1DEAC(v64, v123);
          v76 = v151;
          v77 = v108;
          v78 = v65;
          v79 = v152;
          (*(v151 + 16))(v108, v78, v152);
          v80 = v133;
          v119 = *v133;
          v127 = v133[3];
          v128 = v133[5];
          v131 = v133[7];
          v149 = v133[9];
          v81 = (*(v120 + 80) + 16) & ~*(v120 + 80);
          v82 = (v121 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
          v83 = (*(v76 + 80) + v82 + 16) & ~*(v76 + 80);
          v84 = (v107 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
          v85 = swift_allocObject();
          v86 = v75;
          v87 = v85;
          sub_1E5E1E5F8(v86, v85 + v81, type metadata accessor for AppComposer);
          v88 = (v87 + v82);
          v89 = v137;
          *v88 = v130;
          v88[1] = v89;
          v90 = *(v76 + 32);
          v91 = v87 + v83;
          v62 = v144;
          v61 = v134;
          v92 = v79;
          v46 = v147;
          v90(v91, v77, v92);
          v93 = (v87 + v84);
          v42 = v115;
          v94 = v80[3];
          v93[2] = v80[2];
          v93[3] = v94;
          v93[4] = v80[4];
          v95 = v80[1];
          *v93 = *v80;
          v93[1] = v95;

          swift_unknownObjectRetain();

          v153 = v74;
          v154 = &type metadata for WorkoutDetailActionStyle;
          v155 = OpaqueTypeConformance2;
          v156 = v132;
          swift_getOpaqueTypeConformance2();
          sub_1E604BABC();
          v96 = v122;
          v97 = v126;
          v98 = v129;
          sub_1E65E4788();

          v99 = v98;
          v100 = v97;
          v60 = v135;
          v59 = v136;
          (*(v125 + 8))(v99, v100);
          (*(v60 + 32))(v61, v96, v59);
          v58 = 0;
        }
      }

      else
      {
        v59 = v136;
        v60 = v135;
        v61 = v134;
        v62 = v144;
      }

      (*(v60 + 56))(v61, v58, 1, v59);
      sub_1E5DFD1CC(v61, v139, &qword_1ED078090, &qword_1E65FB4E8);
      swift_storeEnumTagMultiPayload();
      sub_1E62F84BC();
      v45 = v142;
      sub_1E65E4138();
      sub_1E5DFE50C(v61, &qword_1ED078090, &qword_1E65FB4E8);
      v106(v62, v140);
      sub_1E62F87D0(v145, type metadata accessor for RemoteParticipantScope);
      v47 = v148;
    }

    sub_1E5DFD1CC(v45, v110, &qword_1ED0780A0, &qword_1E65FB4F8);
    swift_storeEnumTagMultiPayload();
    sub_1E62F8830();
    sub_1E65E4138();
    sub_1E5DFD1CC(v46, v42, &qword_1ED0780B8, &qword_1E65FB510);
    swift_storeEnumTagMultiPayload();
    sub_1E62F8860(&qword_1ED0780F8, &qword_1ED0780B8, &qword_1E65FB510, sub_1E62F8830);
    v32 = v112;
    sub_1E65E4138();
    sub_1E5DFE50C(v46, &qword_1ED0780B8, &qword_1E65FB510);
    sub_1E5DFE50C(v45, &qword_1ED0780A0, &qword_1E65FB4F8);
    v38 = v47;
    goto LABEL_15;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E62EAF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v104 = a6;
  v87 = a5;
  v116 = a4;
  v110 = a3;
  v111 = a2;
  v114 = a7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v92 = *(v91 - 8);
  v8 = MEMORY[0x1EEE9AC00](v91);
  v94 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v96 = (v82 - v10);
  v11 = sub_1E65DE468();
  v117 = *(v11 - 8);
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v95 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078128, &qword_1E65FB5D8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v82 - v16;
  v106 = sub_1E65D76F8();
  v86 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v84 = v18;
  v101 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppComposer(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v83 = *(v23 - 8);
  v24 = *(v83 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v97 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v100 = (v82 - v26);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v85 = v82 - v27;
  v28 = sub_1E65DA2A8();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078130, &qword_1E65FB5E0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v108 = v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v115 = v82 - v35;
  sub_1E65DA258();
  v36 = sub_1E62F89B8(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
  v109 = a1;
  v99 = v36;
  LOBYTE(a1) = sub_1E65E6718();
  v37 = *(v29 + 8);
  v102 = v28;
  v107 = v29 + 8;
  v98 = v37;
  v37(v31, v28);
  v112 = v17;
  v90 = v22;
  v89 = v21;
  v88 = v20;
  if (a1)
  {
    v38 = v100;
    v39 = v116;
    *v100 = v110;
    v38[1] = v39;
    *(v38 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1E5E1DEAC(v111, v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1E5DFD1CC(v38, v97, &qword_1ED073950, &unk_1E65F4360);
    v40 = v86;
    (*(v86 + 16))(v101, v87, v106);
    v41 = v104;
    v82[1] = *v104;
    v82[2] = v104[3];
    v82[3] = v104[5];
    v82[4] = v104[7];
    v87 = v104[9];
    v42 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v43 = (v21 + *(v83 + 80) + v42) & ~*(v83 + 80);
    v44 = (v24 + *(v40 + 80) + v43) & ~*(v40 + 80);
    v45 = (v84 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1E5E1E5F8(v22, v46 + v42, type metadata accessor for AppComposer);
    sub_1E5FAB460(v97, v46 + v43, &qword_1ED073950, &unk_1E65F4360);
    (*(v40 + 32))(v46 + v44, v101, v106);
    v47 = (v46 + v45);
    v48 = *(v41 + 3);
    v47[2] = *(v41 + 2);
    v47[3] = v48;
    v47[4] = *(v41 + 4);
    v49 = *(v41 + 1);
    *v47 = *v41;
    v47[1] = v49;
    v50 = (v46 + ((v45 + 87) & 0xFFFFFFFFFFFFFFF8));
    *v50 = nullsub_1;
    v50[1] = 0;
    sub_1E604BABC();
    v51 = v116;

    swift_unknownObjectRetain();

    v52 = v85;
    v17 = v112;
    sub_1E65DE518();
    sub_1E5DFE50C(v100, &qword_1ED073950, &unk_1E65F4360);
    v53 = v103;
    v54 = v115;
    v55 = v52;
    v56 = v105;
    (*(v103 + 32))(v115, v55, v105);
    v57 = 0;
    v58 = v51;
    v59 = v56;
    v60 = v53;
  }

  else
  {
    v57 = 1;
    v54 = v115;
    v58 = v116;
    v41 = v104;
    v59 = v105;
    v60 = v103;
  }

  v61 = 1;
  (*(v60 + 56))(v54, v57, 1, v59);
  sub_1E65DA268();
  v62 = v102;
  v63 = sub_1E65E6718();
  v98(v31, v62);
  if (v63)
  {
    v64 = v96;
    *v96 = v110;
    *(v64 + 8) = v58;
    swift_storeEnumTagMultiPayload();

    v107 = sub_1E5F9B258(&unk_1F5FA8850);
    v65 = v90;
    sub_1E5E1DEAC(v111, v90);
    v66 = v94;
    sub_1E5DFD1CC(v64, v94, &qword_1ED073988, &unk_1E65F72F0);
    v67 = v41[5];
    v109 = v41[3];
    v110 = v67;
    v111 = v41[7];
    v116 = v41[9];
    v68 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v69 = (v89 + *(v92 + 80) + v68) & ~*(v92 + 80);
    v70 = (v93 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    sub_1E5E1E5F8(v65, v71 + v68, type metadata accessor for AppComposer);
    v72 = v66;
    v54 = v115;
    sub_1E5FAB460(v72, v71 + v69, &qword_1ED073988, &unk_1E65F72F0);
    *(v71 + v70) = v107;
    v73 = (v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8));
    v74 = *(v41 + 4);
    v73[3] = *(v41 + 3);
    v73[4] = v74;
    v75 = *(v41 + 2);
    v73[1] = *(v41 + 1);
    v73[2] = v75;
    *v73 = *v41;
    v17 = v112;
    swift_unknownObjectRetain();

    v76 = v95;
    sub_1E65DE458();
    sub_1E5DFE50C(v64, &qword_1ED073988, &unk_1E65F72F0);
    (*(v117 + 32))(v17, v76, v118);
    v61 = 0;
  }

  (*(v117 + 56))(v17, v61, 1, v118);
  v77 = v108;
  sub_1E5DFD1CC(v54, v108, &qword_1ED078130, &qword_1E65FB5E0);
  v78 = v113;
  sub_1E5DFD1CC(v17, v113, &qword_1ED078128, &qword_1E65FB5D8);
  v79 = v114;
  sub_1E5DFD1CC(v77, v114, &qword_1ED078130, &qword_1E65FB5E0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078138, &qword_1E65FB5E8);
  sub_1E5DFD1CC(v78, v79 + *(v80 + 48), &qword_1ED078128, &qword_1E65FB5D8);
  sub_1E5DFE50C(v17, &qword_1ED078128, &qword_1E65FB5D8);
  sub_1E5DFE50C(v54, &qword_1ED078130, &qword_1E65FB5E0);
  sub_1E5DFE50C(v78, &qword_1ED078128, &qword_1E65FB5D8);
  return sub_1E5DFE50C(v77, &qword_1ED078130, &qword_1E65FB5E0);
}

__n128 sub_1E62EBB04@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E65DC268();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  sub_1E65DC278();
  sub_1E65E4BA8();
  sub_1E65E3E38();
  (*(v5 + 32))(a1, v7, v4);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078100, &qword_1E65FB570) + 36);
  v11 = v14[6];
  *(v10 + 64) = v14[5];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[7];
  v12 = v14[2];
  *v10 = v14[1];
  *(v10 + 16) = v12;
  result = v14[4];
  *(v10 + 32) = v14[3];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_1E62EBDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780D0, &qword_1E65FB568) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078070, &qword_1E65FB4C8);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t sub_1E62EBE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v74 = a5;
  v72 = a4;
  v58 = a3;
  v8 = sub_1E65D76F8();
  v69 = *(v8 - 8);
  v70 = v8;
  v71 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v58 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v64 = &v58 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v75 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v62 = *(v19 - 8);
  v79 = *(v62 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - v22;
  v78 = &v58 - v22;
  *v23 = a2;
  *(v23 + 1) = a3;
  v23[16] = 0;
  swift_storeEnumTagMultiPayload();
  v73 = *a1;
  sub_1E5E1DEAC(a1, v15);
  v24 = *(v13 + 80);
  v25 = ((v24 + 16) & ~v24) + v14;
  v26 = (v24 + 16) & ~v24;
  v27 = v24 | 7;
  v28 = swift_allocObject();
  sub_1E5E1E5F8(v15, v28 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(a1, v15);
  v29 = swift_allocObject();
  sub_1E5E1E5F8(v15, v29 + v26, type metadata accessor for AppComposer);
  v61 = a1;
  sub_1E5E1DEAC(a1, v15);
  v63 = v25;
  v65 = v27;
  v30 = swift_allocObject();
  v66 = v26;
  v67 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v15, v30 + v26, type metadata accessor for AppComposer);
  v31 = swift_allocObject();
  *(v31 + 16) = &unk_1E65FB590;
  *(v31 + 24) = v30;
  v60 = v15;
  sub_1E5E1DEAC(a1, v15);
  v32 = swift_allocObject();
  sub_1E5E1E5F8(v15, v32 + v26, type metadata accessor for AppComposer);
  sub_1E604BABC();

  sub_1E65DED58();
  sub_1E65DEAC8();
  v33 = v78;
  v34 = v59;
  sub_1E5DFD1CC(v78, v59, &qword_1ED072AA8, &unk_1E65FA900);
  v36 = v68;
  v35 = v69;
  v37 = v70;
  (*(v69 + 16))(v68, v72, v70);
  v72 = *(v62 + 80);
  v38 = (v72 + 16) & ~v72;
  v64 = (v38 + v79);
  v39 = (v38 + v79 + *(v35 + 80)) & ~*(v35 + 80);
  v40 = v39 + v71;
  v41 = swift_allocObject();
  sub_1E5FAB460(v34, v41 + v38, &qword_1ED072AA8, &unk_1E65FA900);
  (*(v35 + 32))(v41 + v39, v36, v37);
  *(v41 + v40) = 0;
  sub_1E5DFD1CC(v33, v34, &qword_1ED072AA8, &unk_1E65FA900);
  v42 = swift_allocObject();
  sub_1E5FAB460(v34, v42 + v38, &qword_1ED072AA8, &unk_1E65FA900);
  type metadata accessor for AppFeature(0);
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v71 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v43 = v60;
  sub_1E5E1DEAC(v61, v60);
  v44 = v74;
  v45 = v74[7];
  v68 = v74[5];
  v69 = v45;
  v70 = v74[9];
  sub_1E5DFD1CC(v33, v34, &qword_1ED072AA8, &unk_1E65FA900);
  v46 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + v72 + 80) & ~v72;
  v48 = swift_allocObject();
  sub_1E5E1E5F8(v43, v48 + v66, v67);
  v49 = (v48 + v46);
  v50 = v44[3];
  v49[2] = v44[2];
  v49[3] = v50;
  v49[4] = v44[4];
  v51 = v44[1];
  *v49 = *v44;
  v49[1] = v51;
  sub_1E5FAB460(v34, v48 + v47, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E62F8D0C;
  *(v52 + 24) = v48;

  v54 = v80;
  v53 = v81;
  v55 = v82;
  v56 = sub_1E65E4F08();

  (*(v76 + 8))(v55, v77);
  (*(v75 + 8))(v54, v53);
  sub_1E5DFE50C(v78, &qword_1ED072AA8, &unk_1E65FA900);
  return v56;
}

BOOL sub_1E62EC770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v7 + 8))(v9, v6);
  sub_1E5FAB460(v5, v3, &qword_1ED075800, &unk_1E6606280);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *v3;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
      v12 = *v3;
      v13 = sub_1E65D76A8();
      (*(*(v13 - 8) + 8))(&v3[v11], v13);
LABEL_6:
      v14 = *(v12 + 16);

      return v14 != 0;
    }

    sub_1E5DFE50C(v3, &qword_1ED075800, &unk_1E6606280);
  }

  return 0;
}

uint64_t sub_1E62EC9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1E65D8E88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62ECAB8, 0, 0);
}

uint64_t sub_1E62ECAB8()
{
  *(v0 + 112) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 116) = *(type metadata accessor for AppEnvironment(0) + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 48) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E62ECBD4;

  return v5();
}

uint64_t sub_1E62ECBD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1E62ED0B8;
  }

  else
  {
    v4 = sub_1E62ECCE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E62ECCE8()
{
  v1 = v0[8];

  Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
  v3 = Queue;
  v0[10] = v4;
  v5 = *(v1 + 16);
  v6 = v0[8];
  if (v5)
  {
    v18 = Queue;
    v7 = v0[4];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1E601C9B8(0, v5, 0);
    v8 = v21;
    v19 = sub_1E65D8948();
    v9 = *(v19 - 8);
    v10 = *(v9 + 16);
    v11 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v10(v0[5], v11, v19);
      swift_storeEnumTagMultiPayload();
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E601C9B8((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[5];
      *(v21 + 16) = v14 + 1;
      sub_1E5E1E5F8(v15, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, MEMORY[0x1E69CBBF0]);
      v11 += v12;
      --v5;
    }

    while (v5);

    v3 = v18;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v0[11] = v8;
  v20 = (v3 + *v3);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_1E62ECF64;

  return v20(v8);
}

uint64_t sub_1E62ECF64()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E62ED124, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E62ED0B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62ED124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62ED198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1E5E1DEAC(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1E5E1E5F8(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AppComposer);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;

  sub_1E64B80F8(0, 0, v11, &unk_1E65FB430, v14);
}

uint64_t sub_1E62ED374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[7] = swift_task_alloc();
  v7 = sub_1E65D8668();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1E65D74E8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  v11 = sub_1E65D9658();
  v6[22] = v11;
  v6[23] = *(v11 - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62ED634, 0, 0);
}

uint64_t sub_1E62ED634()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v31 = v0[16];
  v6 = v0[5];
  v7 = v0[6];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v0[2] = v6;
  v0[3] = v7;
  sub_1E65E4D78();
  (*(v2 + 8))(v1, v3);
  sub_1E65E4C98();
  (*(v5 + 8))(v4, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
LABEL_13:

    v29 = v0[1];

    return v29();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = v0[15];
      v25 = &qword_1ED0753C0;
      v26 = &unk_1E6606290;
      goto LABEL_12;
    }

    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[22];
    v12 = v0[15];
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C8, &qword_1E65F1A48) + 48);
    (*(v10 + 32))(v9, v12, v11);
    v14 = sub_1E65D76A8();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
    (*(v0[23] + 32))(v0[24], v0[15], v0[22]);
  }

  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v18 = v0[11];
  v19 = v0[12];
  v21 = v0[9];
  v20 = v0[10];
  v23 = v0[7];
  v22 = v0[8];
  sub_1E65D9618();
  (*(v16 + 8))(v15, v17);
  sub_1E65D8588();
  (*(v21 + 8))(v20, v22);
  if ((*(v19 + 48))(v23, 1, v18) == 1)
  {
    v24 = v0[7];
    v25 = &qword_1ED072340;
    v26 = &qword_1E65EA410;
LABEL_12:
    sub_1E5DFE50C(v24, v25, v26);
    goto LABEL_13;
  }

  (*(v0[12] + 32))(v0[13], v0[7], v0[11]);
  v0[25] = objc_opt_self();
  v0[26] = sub_1E65E6058();
  v0[27] = sub_1E65E6048();
  v28 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62ED9AC, v28, v27);
}

uint64_t sub_1E62ED9AC()
{
  v1 = *(v0 + 200);

  *(v0 + 224) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E62EDA34, 0, 0);
}

uint64_t sub_1E62EDA34(uint64_t a1)
{
  v1[29] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E62F89B8(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v1[30] = sub_1E65E5AF8();

  v1[31] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62EDB4C, v3, v2);
}

uint64_t sub_1E62EDB4C()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];

  [v3 openURL:v2 options:v1 completionHandler:0];

  return MEMORY[0x1EEE6DFA0](sub_1E62EDBE8, 0, 0);
}

uint64_t sub_1E62EDBE8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E62EDCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5E1DEAC(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1E5E1E5F8(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AppComposer);
  a4(0, 0, v12, a3, v15);
}

uint64_t sub_1E62EDEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E62EDEC0, 0, 0);
}

uint64_t sub_1E62EDEC0()
{
  v1 = v0[9];
  v0[10] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[11] = sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62EDF70, v3, v2);
}

uint64_t sub_1E62EDF70()
{

  sub_1E5E20198(27, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  v1 = swift_dynamicCast();
  *(v0 + 120) = v1;
  if (v1)
  {
    *(v0 + 104) = *(v0 + 56);
    v2 = sub_1E62EE074;
  }

  else
  {
    v2 = sub_1E62EE04C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E62EE074(uint64_t a1)
{
  *(v1 + 112) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62EE100, v3, v2);
}

uint64_t sub_1E62EE100()
{

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E62F8CD4, 0, 0);
}

uint64_t sub_1E62EE174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a3;
  v112 = a2;
  v125 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v123 = *(v6 - 8);
  v124 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v95 - v7;
  v8 = sub_1E65E1398();
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v95 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v105 = &v95 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v95 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  v24 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v95 - v25;
  v27 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v108 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E65E1208();
  v116 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v131 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65E1168();
  v114 = v30;
  v113 = *(v30 - 8);
  v31 = v113;
  v118 = *(v113 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v119 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v134 = &v95 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v95 - v36;
  v115 = &v95 - v36;
  v38 = sub_1E65E1518();
  v39 = *(v38 - 8);
  v129 = v38;
  v130 = v39;
  v106 = *(v39 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v104 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v133 = &v95 - v42;
  sub_1E65E14F8();
  v43 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  (*(v31 + 104))(v37, *MEMORY[0x1E699E778], v30);
  v110 = *a1;
  v44 = a1;
  v127 = v26;
  sub_1E5E1DEAC(a1, v26);
  sub_1E5DF650C(a2, &v137);
  v45 = *(v11 + 80);
  v46 = (v45 + 24) & ~v45;
  v102 = v24;
  v47 = (v24 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  v49 = v48 + v46;
  v50 = v48;
  v100 = v48;
  sub_1E5E1E5F8(v26, v49, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v137, v50 + v47);
  sub_1E5E1DEAC(v44, v22);
  v51 = (v45 + 16) & ~v45;
  v99 = swift_allocObject();
  sub_1E5E1E5F8(v22, v99 + v51, type metadata accessor for AppComposer);
  v52 = v103;
  sub_1E5E1DEAC(v44, v103);
  v96 = swift_allocObject();
  sub_1E5E1E5F8(v52, v96 + v51, type metadata accessor for AppComposer);
  v53 = v105;
  sub_1E5E1DEAC(v44, v105);
  v54 = swift_allocObject() + v51;
  sub_1E5E1E5F8(v53, v54, type metadata accessor for AppComposer);
  v126 = v44;
  v55 = v107;
  sub_1E5E1DEAC(v44, v107);
  v101 = v51 + v24;
  v56 = swift_allocObject() + v51;
  v128 = v51;
  sub_1E5E1E5F8(v55, v56, type metadata accessor for AppComposer);
  v57 = v109;
  sub_1E5E1DEAC(v44, v109);
  v58 = v45 | 7;
  v59 = swift_allocObject();
  sub_1E5E1E5F8(v57, v59 + ((v45 + 16) & ~v45), type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v61 = v129;
  v60 = v130;
  v62 = v104;
  (*(v130 + 16))(v104, v133, v129);
  v64 = v126;
  v63 = v127;
  sub_1E5E1DEAC(v126, v127);
  v65 = v60;
  v66 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v67 = (v106 + v45 + v66) & ~v45;
  v98 = v58;
  v68 = swift_allocObject();
  (*(v65 + 32))(v68 + v66, v62, v61);
  v69 = v63;
  v97 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v63, v68 + v67, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v109 = sub_1E62F89B8(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v70 = v117;
  v71 = v111;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v64, v69);
  v72 = v120;
  v108 = v120[7];
  v73 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v120[9];
  v74 = swift_allocObject();
  sub_1E5E1E5F8(v69, v74 + v128, type metadata accessor for AppComposer);
  v75 = (v74 + v73);
  v76 = v72[3];
  v75[2] = v72[2];
  v75[3] = v76;
  v75[4] = v72[4];
  v77 = v72[1];
  *v75 = *v72;
  v75[1] = v77;
  swift_unknownObjectRetain();

  v79 = v131;
  v78 = v132;
  v80 = sub_1E65E4F08();

  (*(v123 + 8))(v70, v124);
  (*(v121 + 8))(v78, v122);
  (*(v116 + 8))(v79, v71);
  v81 = v113;
  v82 = *(v113 + 16);
  v83 = v115;
  v84 = v114;
  v82(v134, v115, v114);
  v85 = v127;
  sub_1E5E1DEAC(v126, v127);
  sub_1E5DF650C(v112, &v137);
  v86 = swift_allocObject();
  sub_1E5E1E5F8(v85, v86 + v128, v97);
  sub_1E5DF599C(&v137, v86 + v73);
  v87 = v119;
  v88 = v83;
  v82(v119, v83, v84);
  v89 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v90 = (v118 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v81 + 32))(v91 + v89, v87, v84);
  *(v91 + v90) = v80;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E62F89B8(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v92;
  v136 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v81 + 8))(v88, v84);
  return (*(v130 + 8))(v133, v129);
}

uint64_t sub_1E62EEEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a3;
  v112 = a2;
  v125 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v123 = *(v6 - 8);
  v124 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v95 - v7;
  v8 = sub_1E65E1398();
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v95 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v105 = &v95 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v95 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  v24 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v95 - v25;
  v27 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v108 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E65E1208();
  v116 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v131 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65E1168();
  v114 = v30;
  v113 = *(v30 - 8);
  v31 = v113;
  v118 = *(v113 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v119 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v134 = &v95 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v95 - v36;
  v115 = &v95 - v36;
  v38 = sub_1E65E1518();
  v39 = *(v38 - 8);
  v129 = v38;
  v130 = v39;
  v106 = *(v39 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v104 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v133 = &v95 - v42;
  sub_1E65E14F8();
  (*(v31 + 104))(v37, *MEMORY[0x1E699E768], v30);
  v43 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v110 = *a1;
  v44 = a1;
  v127 = v26;
  sub_1E5E1DEAC(a1, v26);
  sub_1E5DF650C(a2, &v137);
  v45 = *(v11 + 80);
  v46 = (v45 + 24) & ~v45;
  v102 = v24;
  v47 = (v24 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  v49 = v48 + v46;
  v50 = v48;
  v100 = v48;
  sub_1E5E1E5F8(v26, v49, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v137, v50 + v47);
  sub_1E5E1DEAC(v44, v22);
  v51 = (v45 + 16) & ~v45;
  v99 = swift_allocObject();
  sub_1E5E1E5F8(v22, v99 + v51, type metadata accessor for AppComposer);
  v52 = v103;
  sub_1E5E1DEAC(v44, v103);
  v96 = swift_allocObject();
  sub_1E5E1E5F8(v52, v96 + v51, type metadata accessor for AppComposer);
  v53 = v105;
  sub_1E5E1DEAC(v44, v105);
  v54 = swift_allocObject() + v51;
  sub_1E5E1E5F8(v53, v54, type metadata accessor for AppComposer);
  v126 = v44;
  v55 = v107;
  sub_1E5E1DEAC(v44, v107);
  v101 = v51 + v24;
  v56 = swift_allocObject() + v51;
  v128 = v51;
  sub_1E5E1E5F8(v55, v56, type metadata accessor for AppComposer);
  v57 = v109;
  sub_1E5E1DEAC(v44, v109);
  v58 = v45 | 7;
  v59 = swift_allocObject();
  sub_1E5E1E5F8(v57, v59 + ((v45 + 16) & ~v45), type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v61 = v129;
  v60 = v130;
  v62 = v104;
  (*(v130 + 16))(v104, v133, v129);
  v64 = v126;
  v63 = v127;
  sub_1E5E1DEAC(v126, v127);
  v65 = v60;
  v66 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v67 = (v106 + v45 + v66) & ~v45;
  v98 = v58;
  v68 = swift_allocObject();
  (*(v65 + 32))(v68 + v66, v62, v61);
  v69 = v63;
  v97 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v63, v68 + v67, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v109 = sub_1E62F89B8(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v70 = v117;
  v71 = v111;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v64, v69);
  v72 = v120;
  v108 = v120[7];
  v73 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v120[9];
  v74 = swift_allocObject();
  sub_1E5E1E5F8(v69, v74 + v128, type metadata accessor for AppComposer);
  v75 = (v74 + v73);
  v76 = v72[3];
  v75[2] = v72[2];
  v75[3] = v76;
  v75[4] = v72[4];
  v77 = v72[1];
  *v75 = *v72;
  v75[1] = v77;
  swift_unknownObjectRetain();

  v79 = v131;
  v78 = v132;
  v80 = sub_1E65E4F08();

  (*(v123 + 8))(v70, v124);
  (*(v121 + 8))(v78, v122);
  (*(v116 + 8))(v79, v71);
  v81 = v113;
  v82 = *(v113 + 16);
  v83 = v115;
  v84 = v114;
  v82(v134, v115, v114);
  v85 = v127;
  sub_1E5E1DEAC(v126, v127);
  sub_1E5DF650C(v112, &v137);
  v86 = swift_allocObject();
  sub_1E5E1E5F8(v85, v86 + v128, v97);
  sub_1E5DF599C(&v137, v86 + v73);
  v87 = v119;
  v88 = v83;
  v82(v119, v83, v84);
  v89 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v90 = (v118 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v81 + 32))(v91 + v89, v87, v84);
  *(v91 + v90) = v80;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E62F89B8(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v92;
  v136 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v81 + 8))(v88, v84);
  return (*(v130 + 8))(v133, v129);
}

uint64_t sub_1E62EFC74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v122 = a2;
  v127 = a1;
  v113 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v105 = v91 - v5;
  v6 = sub_1E65E1398();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v123 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppComposer(0);
  v125 = *(v8 - 8);
  v115 = *(v125 + 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v99 = v91 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v97 = v91 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v94 = v91 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = v91 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v126 = v91 - v19;
  v20 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v101 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65E1208();
  v23 = *(v22 - 8);
  v103 = v22;
  v104 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v120 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1E65E1168();
  v100 = *(v121 - 8);
  v25 = v100;
  v106 = *(v100 + 64);
  v26 = MEMORY[0x1EEE9AC00](v121);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v124 = v91 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v91 - v30;
  v119 = v91 - v30;
  v32 = sub_1E65E1518();
  v117 = *(v32 - 8);
  v118 = v32;
  v96 = *(v117 + 64);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v95 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v128 = v91 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072368, &qword_1E65EAB98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA8E0;
  *(inited + 32) = 0x6D656C7469746E65;
  *(inited + 40) = 0xEF72657355746E65;
  *&v131[0] = 1701147238;
  *(&v131[0] + 1) = 0xE400000000000000;
  sub_1E65E6848();
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x80000001E6615500;
  *&v131[0] = 1701147238;
  *(&v131[0] + 1) = 0xE400000000000000;
  sub_1E65E6848();
  *(inited + 144) = 0xD000000000000014;
  *(inited + 152) = 0x80000001E6615520;
  v37 = sub_1E6428544(&unk_1F5FA8878);
  sub_1E5DFE50C(&unk_1F5FA8898, &qword_1ED078058, &qword_1E65FB488);
  *&v131[0] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078060, &qword_1E65FB490);
  sub_1E62F8440();
  sub_1E65E6848();
  v38 = sub_1E642764C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072390, &qword_1E65EABB8);
  swift_arrayDestroy();
  sub_1E65E14F8();
  (*(v25 + 104))(v31, *MEMORY[0x1E699E768], v121);
  v39 = v126;
  v40 = v127;
  v98 = *v127;
  sub_1E5E1DEAC(v127, v126);
  sub_1E5DF650C(v122, v131);
  v41 = *(v125 + 80);
  v42 = (v41 + 24) & ~v41;
  v43 = v115;
  v44 = (v115 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  v46 = v45;
  v91[1] = v45;
  sub_1E5E1E5F8(v39, v45 + v42, type metadata accessor for AppComposer);
  sub_1E5DF599C(v131, v46 + v44);
  v47 = v93;
  sub_1E5E1DEAC(v40, v93);
  v48 = ((v41 + 16) & ~v41) + v43;
  v49 = (v41 + 16) & ~v41;
  v91[0] = swift_allocObject();
  sub_1E5E1E5F8(v47, v91[0] + v49, type metadata accessor for AppComposer);
  v50 = v94;
  sub_1E5E1DEAC(v40, v94);
  v93 = swift_allocObject();
  sub_1E5E1E5F8(v50, v93 + v49, type metadata accessor for AppComposer);
  v51 = v97;
  sub_1E5E1DEAC(v40, v97);
  v94 = swift_allocObject();
  v52 = v49;
  sub_1E5E1E5F8(v51, v94 + v49, type metadata accessor for AppComposer);
  v53 = v99;
  sub_1E5E1DEAC(v40, v99);
  v92 = v48;
  v114 = v41 | 7;
  v54 = swift_allocObject();
  v116 = v49;
  v125 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v53, v54 + v49, type metadata accessor for AppComposer);
  v55 = v102;
  sub_1E5E1DEAC(v40, v102);
  v56 = swift_allocObject();
  sub_1E5E1E5F8(v55, v56 + v52, type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v57 = v117;
  v58 = v118;
  v59 = v95;
  (*(v117 + 16))(v95, v128, v118);
  v60 = v126;
  sub_1E5E1DEAC(v40, v126);
  v61 = v57;
  v62 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v63 = (v96 + v41 + v62) & ~v41;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v59, v58);
  v65 = v60;
  sub_1E5E1E5F8(v60, v64 + v63, v125);
  type metadata accessor for AppFeature(0);
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v115 = sub_1E62F89B8(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v66 = v105;
  v67 = v103;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v127, v60);
  v68 = v108;
  v99 = v108[5];
  v69 = v108[7];
  v70 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = v108[9];
  v102 = v69;
  v71 = swift_allocObject();
  sub_1E5E1E5F8(v65, v71 + v116, v125);
  v72 = (v71 + v70);
  v73 = v68[3];
  v72[2] = v68[2];
  v72[3] = v73;
  v72[4] = v68[4];
  v74 = v68[1];
  *v72 = *v68;
  v72[1] = v74;
  swift_unknownObjectRetain();

  v75 = v120;
  v76 = v123;
  v77 = sub_1E65E4F08();

  (*(v111 + 8))(v66, v112);
  (*(v109 + 8))(v76, v110);
  (*(v104 + 8))(v75, v67);
  v78 = v100;
  v79 = *(v100 + 16);
  v80 = v119;
  v81 = v121;
  v79(v124, v119, v121);
  v82 = v126;
  sub_1E5E1DEAC(v127, v126);
  sub_1E5DF650C(v122, v131);
  v83 = swift_allocObject();
  sub_1E5E1E5F8(v82, v83 + v116, v125);
  sub_1E5DF599C(v131, v83 + v70);
  v84 = v107;
  v79(v107, v80, v81);
  v85 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v86 = (v106 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  (*(v78 + 32))(v87 + v85, v84, v81);
  *(v87 + v86) = v77;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E62F89B8(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v129 = v88;
  v130 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  (*(v78 + 8))(v119, v81);
  return (*(v117 + 8))(v128, v118);
}

uint64_t sub_1E62F0A54@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v104 = a8;
  v94 = a7;
  v99 = a6;
  v96 = a4;
  v116 = a2;
  v101 = a1;
  v109 = a9;
  v11 = sub_1E65DEB48();
  v110 = *(v11 - 8);
  v111 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1E65D76F8();
  v91 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = v13;
  v95 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078040, &qword_1E65FB468);
  v106 = *(v14 - 8);
  v107 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v79 - v15;
  v16 = type metadata accessor for AppComposer(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v88 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v79 - v21;
  v22 = sub_1E65DEDE8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v90 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1E65DECF8();
  v103 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v89 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v93 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v79 - v28);
  v30 = sub_1E65DEC18();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v102 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v79 - v34;
  v81 = a3 + *(v17 + 28);
  v36 = v81[8];
  v118 = v29;
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v38 = &unk_1F5FA7F80;
LABEL_7:
      v84 = sub_1E5F9B258(v38);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &unk_1F5FA7F58;
    goto LABEL_7;
  }

  if (v36)
  {
    goto LABEL_6;
  }

  v37 = sub_1E65DE608();
  v84 = sub_1E600A684(v37);
  v29 = v118;

LABEL_8:
  v39 = *MEMORY[0x1E699CD30];
  v112 = v31;
  v113 = v35;
  (*(v31 + 104))(v35, v39, v30);
  *v29 = v96;
  v29[1] = a5;
  swift_storeEnumTagMultiPayload();
  v96 = *a3;
  v82 = a3;
  v40 = v114;
  sub_1E5E1DEAC(a3, v114);
  v41 = *(v18 + 80);
  v42 = (v41 + 16) & ~v41;
  v83 = v42 + v19;
  v85 = v41 | 7;
  v80 = swift_allocObject();
  v87 = v42;
  v86 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v40, v80 + v42, type metadata accessor for AppComposer);
  sub_1E5DF650C(v94, &v119);
  v43 = swift_allocObject();
  v94 = v30;
  sub_1E5DF599C(&v119, v43 + 16);
  type metadata accessor for AppEnvironment(0);

  AccountService.requireAccount.getter();
  v79 = v44;
  SessionService.requireNewSessionsAllowed.getter();
  v45 = v88;
  sub_1E5E1DEAC(a3, v88);
  v46 = swift_allocObject();
  sub_1E5E1E5F8(v45, v46 + v42, type metadata accessor for AppComposer);
  sub_1E65DEDD8();
  sub_1E65DECE8();
  v47 = v91;
  v48 = v95;
  v49 = v100;
  (*(v91 + 16))(v95, v99, v100);
  v50 = v118;
  v51 = v93;
  sub_1E5DFD1CC(v118, v93, &qword_1ED073858, &unk_1E65F84A0);
  v52 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v53 = *(v89 + 80);
  v54 = (v98 + v53 + v52) & ~v53;
  v99 = v53 | 7;
  v55 = swift_allocObject();
  v56 = v116;
  *(v55 + 2) = v101;
  *(v55 + 3) = v56;
  *(v55 + 4) = v84;
  (*(v47 + 32))(&v55[v52], v48, v49);
  sub_1E5FAB460(v51, &v55[v54], &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DFD1CC(v50, v51, &qword_1ED073858, &unk_1E65F84A0);
  v57 = swift_allocObject();
  sub_1E5FAB460(v51, v57 + ((v53 + 16) & ~v53), &qword_1ED073858, &unk_1E65F84A0);
  type metadata accessor for AppFeature(0);
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v101 = sub_1E62F89B8(&qword_1ED078048, MEMORY[0x1E699CD68], MEMORY[0x1E699CD60]);

  v58 = v105;
  sub_1E65E4DE8();
  v59 = v114;
  sub_1E5E1DEAC(v82, v114);
  v60 = v104;
  v93 = *v104;
  v95 = v104[3];
  v98 = v104[5];
  v99 = v104[7];
  v100 = v104[9];
  v61 = v112;
  v116 = *(v112 + 16);
  v62 = v102;
  v63 = v94;
  v116(v102, v113, v94);
  v64 = (v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + *(v61 + 80) + 80) & ~*(v61 + 80);
  v66 = swift_allocObject();
  sub_1E5E1E5F8(v59, v66 + v87, v86);
  v67 = (v66 + v64);
  v68 = *(v60 + 3);
  v67[2] = *(v60 + 2);
  v67[3] = v68;
  v67[4] = *(v60 + 4);
  v69 = *(v60 + 1);
  *v67 = *v60;
  v67[1] = v69;
  v70 = *(v61 + 32);
  v71 = v62;
  v70(v66 + v65, v62, v63);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1E62F8304;
  *(v72 + 24) = v66;

  v73 = v115;
  v74 = v117;
  sub_1E65E4F08();

  (*(v106 + 8))(v58, v107);
  (*(v103 + 8))(v73, v74);
  v75 = v113;
  v116(v71, v113, v63);
  v120 = sub_1E65DEAA8();
  v121 = sub_1E62F89B8(&qword_1EE2D6850, MEMORY[0x1E699CCD8], MEMORY[0x1E699CCD0]);
  __swift_allocate_boxed_opaque_existential_1(&v119);

  sub_1E65DEA98();
  v76 = v108;
  sub_1E65DEB38();
  sub_1E62F89B8(&qword_1ED078050, MEMORY[0x1E699CCF0], MEMORY[0x1E699CCE8]);

  v77 = v111;
  sub_1E65E4778();

  (*(v110 + 8))(v76, v77);
  sub_1E5DFE50C(v118, &qword_1ED073858, &unk_1E65F84A0);
  return (*(v112 + 8))(v75, v63);
}

unint64_t sub_1E62F17A4()
{
  result = qword_1ED077FF8;
  if (!qword_1ED077FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077FD0, &qword_1E65FB1E8);
    sub_1E5FED46C(&qword_1ED078000, &qword_1ED077FF0, &qword_1E65FB208, MEMORY[0x1E699CC78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077FF8);
  }

  return result;
}

unint64_t sub_1E62F1854()
{
  result = qword_1ED078008;
  if (!qword_1ED078008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078008);
  }

  return result;
}

uint64_t sub_1E62F18F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  type metadata accessor for AppComposer(0);

  return sub_1E64483A8(v3, v2 + v6, a2);
}

uint64_t sub_1E62F1A0C()
{
  type metadata accessor for AppComposer(0);

  return sub_1E6448734();
}

unint64_t sub_1E62F1A7C()
{
  result = qword_1ED078028;
  if (!qword_1ED078028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078018, &qword_1E65FB300);
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078028);
  }

  return result;
}

uint64_t sub_1E62F1B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62E9958(a1, v4, v5, v7, v6);
}

uint64_t sub_1E62F1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, char *a10)
{
  v237 = a7;
  v230 = a4;
  v233 = a2;
  v231 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v215 = &v183 - v12;
  v212 = sub_1E65D7848();
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v209 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC0, &qword_1E65FAB40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v213 = (&v183 - v15);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v208 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v214 = &v183 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC8, &qword_1E65FAB48);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v203 = (&v183 - v18);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v204 = (&v183 - v19);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v197 = *(v220 - 8);
  v20 = MEMORY[0x1EEE9AC00](v220);
  v224 = (&v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v223 = &v183 - v23;
  v221 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v196 = (&v183 - v25);
  v194 = sub_1E65D76F8();
  v188 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v186 = v26;
  v187 = &v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DE0, &unk_1E65FAB60);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v219 = &v183 - v27;
  v195 = type metadata accessor for AppComposer(0);
  v238 = *(v195 - 8);
  v28 = MEMORY[0x1EEE9AC00](v195);
  v199 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v236 = &v183 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075970, &qword_1E65F2460);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v184 = &v183 - v32;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DF0, &unk_1E65FAB70);
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v218 = &v183 - v33;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v183 = *(v235 - 8);
  v34 = MEMORY[0x1EEE9AC00](v235);
  v189 = &v183 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v183 - v36;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  MEMORY[0x1EEE9AC00](v222);
  v39 = &v183 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v183 - v42;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v206 = *(v207 - 8);
  v44 = MEMORY[0x1EEE9AC00](v207);
  v46 = &v183 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v205 = v48;
  v49 = *(v48 + 16);
  v226 = &v183 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = a9;
  v49();
  v50 = *a8;
  swift_getKeyPath();
  v225 = v50;
  sub_1E65E4EC8();

  v51 = v231;
  aBlock = v231;
  v52 = v233;
  v247 = v233;
  v229 = v46;
  sub_1E65E4D78();
  (*(v41 + 8))(v43, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65FA360;
  *v39 = v51;
  *(v39 + 1) = v52;
  v54 = v51;
  v39[16] = 0;
  v55 = v230;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  v56 = sub_1E649226C(v39, v55, v237);
  v198 = v39;
  sub_1E5DFE50C(v39, &qword_1ED073950, &unk_1E65F4360);
  v239 = inited;
  *(inited + 32) = v56;
  v202 = inited + 32;
  *v37 = v54;
  *(v37 + 1) = v52;
  v37[16] = 0;
  v228 = v37;
  swift_storeEnumTagMultiPayload();
  if (qword_1ED071940 != -1)
  {
    swift_once();
  }

  v185 = qword_1ED0962B0;
  v57 = v236;
  sub_1E5E1DEAC(a8, v236);
  v58 = *(v238 + 80);
  v59 = ((v58 + 16) & ~v58) + v234;
  v60 = (v58 + 16) & ~v58;
  v61 = v58 | 7;
  v62 = swift_allocObject();
  sub_1E5E1E5F8(v57, v62 + v60, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(a8, v57);
  v234 = v59;
  v238 = v61;
  v63 = swift_allocObject();
  v235 = v60;
  v217 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v57, v63 + v60, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(a8, v57);
  v64 = swift_allocObject();
  v232 = a8;
  sub_1E5E1E5F8(v57, v64 + v60, type metadata accessor for AppComposer);
  sub_1E604BABC();
  sub_1E65DEB88();
  sub_1E65DE8F8();
  v65 = v189;
  sub_1E5DFD1CC(v228, v189, &qword_1ED073940, &qword_1E65EDCC8);
  v66 = v188;
  v67 = v187;
  v68 = v55;
  v69 = v194;
  (*(v188 + 16))(v187, v68, v194);
  v70 = *(v183 + 80);
  v71 = (v70 + 16) & ~v70;
  v72 = v227 + v71;
  v73 = (v227 + v71 + *(v66 + 80) + 1) & ~*(v66 + 80);
  v74 = swift_allocObject();
  sub_1E5FAB460(v65, v74 + v71, &qword_1ED073940, &qword_1E65EDCC8);
  v72[v74] = 0;
  (*(v66 + 32))(v74 + v73, v67, v69);
  v75 = v228;
  sub_1E5DFD1CC(v228, v65, &qword_1ED073940, &qword_1E65EDCC8);
  v76 = swift_allocObject();
  sub_1E5FAB460(v65, v76 + v71, &qword_1ED073940, &qword_1E65EDCC8);
  type metadata accessor for AppFeature(0);
  sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v188 = sub_1E5FED46C(&qword_1ED075978, &unk_1ED077DF0, &unk_1E65FAB70, MEMORY[0x1E699CCA0]);
  v77 = v191;
  sub_1E65E4DE8();
  v78 = v236;
  sub_1E5E1DEAC(v232, v236);
  v79 = v237;
  v183 = v237[3];
  v184 = v237[5];
  v186 = v237[7];
  v187 = v237[9];
  sub_1E5DFD1CC(v75, v65, &qword_1ED073940, &qword_1E65EDCC8);
  v80 = (v234 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  sub_1E5E1E5F8(v78, v81 + v235, v217);
  v194 = v80;
  v82 = (v81 + v80);
  v83 = v79[3];
  v82[2] = v79[2];
  v82[3] = v83;
  v82[4] = v79[4];
  v84 = v79[1];
  *v82 = *v79;
  v82[1] = v84;
  v85 = v232;
  sub_1E5FAB460(v65, v81 + ((v80 + v70 + 80) & ~v70), &qword_1ED073940, &qword_1E65EDCC8);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1E62F6CE0;
  *(v86 + 24) = v81;

  v87 = v218;
  v88 = v219;
  v89 = sub_1E65E4F08();

  (*(v192 + 8))(v88, v193);
  (*(v190 + 8))(v87, v77);
  v90 = v236;
  sub_1E5E1DEAC(v85, v236);
  v91 = v228;
  sub_1E5DFD1CC(v228, v65, &qword_1ED073940, &qword_1E65EDCC8);
  v92 = (v234 + v70) & ~v70;
  v93 = swift_allocObject();
  sub_1E5E1E5F8(v90, v93 + v235, v217);
  sub_1E5FAB460(v65, v93 + v92, &qword_1ED073940, &qword_1E65EDCC8);
  v94 = sub_1E63888F8(v185, v89, sub_1E613608C, 0, sub_1E62F6D08, v93);
  sub_1E5DFE50C(v91, &qword_1ED073940, &qword_1E65EDCC8);
  v239[5] = v94;
  v95 = v196;
  v96 = v233;
  *v196 = v231;
  *(v95 + 8) = v96;
  swift_storeEnumTagMultiPayload();
  v97 = *(v85 + *(v195 + 20) + 8);
  if (v97 <= 1)
  {
    if (!*(v85 + *(v195 + 20) + 8))
    {

      v98 = sub_1E65DE608();
      v99 = sub_1E600A684(v98);

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v97 != 2)
  {
LABEL_8:

    v100 = &unk_1F5FA7F58;
    goto LABEL_9;
  }

  v100 = &unk_1F5FA7F80;
LABEL_9:
  v99 = sub_1E5F9B258(v100);
LABEL_10:
  v101 = v237;
  if (qword_1ED071948 != -1)
  {
    v182 = v237;
    swift_once();
    v101 = v182;
  }

  v227 = qword_1ED0962B8;
  v102 = sub_1E6364F9C(v95, v99, v101);

  sub_1E5E1DEAC(v85, v90);
  v103 = v223;
  sub_1E5DFD1CC(v95, v223, &qword_1ED073988, &unk_1E65F72F0);
  v104 = (v234 + *(v197 + 80)) & ~*(v197 + 80);
  v105 = swift_allocObject();
  sub_1E5E1E5F8(v90, v105 + v235, type metadata accessor for AppComposer);
  v228 = v104;
  sub_1E5FAB460(v103, v105 + v104, &qword_1ED073988, &unk_1E65F72F0);
  v106 = sub_1E6388B04(v227, v102, sub_1E6365C38, 0, sub_1E62F6D30, v105);
  sub_1E5DFE50C(v95, &qword_1ED073988, &unk_1E65F72F0);
  v239[6] = v106;
  v107 = v224;
  v108 = v233;
  *v224 = v231;
  v107[1] = v108;
  swift_storeEnumTagMultiPayload();
  if (v97 <= 1)
  {
    if (!v97)
    {

      v109 = sub_1E65DE608();
      v110 = sub_1E600A684(v109);

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v97 != 2)
  {
LABEL_17:

    v111 = &unk_1F5FA7F58;
    goto LABEL_18;
  }

  v111 = &unk_1F5FA7F80;
LABEL_18:
  v110 = sub_1E5F9B258(v111);
LABEL_19:
  v112 = v235;
  if (qword_1ED071958 != -1)
  {
    swift_once();
  }

  v227 = qword_1ED0962C8;
  v113 = v224;
  v114 = v232;
  v115 = sub_1E6364F9C(v224, v110, v237);

  v116 = v236;
  sub_1E5E1DEAC(v114, v236);
  v117 = v223;
  sub_1E5DFD1CC(v113, v223, &qword_1ED073988, &unk_1E65F72F0);
  v118 = v228;
  v119 = v116;
  v120 = swift_allocObject();
  sub_1E5E1E5F8(v119, v120 + v112, type metadata accessor for AppComposer);
  sub_1E5FAB460(v117, v120 + v118, &qword_1ED073988, &unk_1E65F72F0);
  v121 = sub_1E6388B04(v227, v115, sub_1E6365754, 0, sub_1E62F6D58, v120);
  sub_1E5DFE50C(v113, &qword_1ED073988, &unk_1E65F72F0);
  v239[7] = v121;
  v122 = v112;
  if (qword_1ED071960 != -1)
  {
    swift_once();
  }

  v123 = qword_1ED0962D0;
  sub_1E5E1DEAC(v114, v119);
  v124 = swift_allocObject();
  sub_1E5E1E5F8(v119, v124 + v112, type metadata accessor for AppComposer);
  v125 = v199;
  sub_1E5E1DEAC(v114, v199);
  v126 = swift_allocObject();
  sub_1E5E1E5F8(v125, v126 + v112, type metadata accessor for AppComposer);
  v127 = objc_allocWithZone(BBMenuCommand);
  v250 = sub_1E62CAB78;
  v251 = v124;
  aBlock = MEMORY[0x1E69E9820];
  v247 = 1107296256;
  v128 = v119;
  v227 = &v248;
  v248 = sub_1E638D4E4;
  v249 = &block_descriptor_12;
  v129 = _Block_copy(&aBlock);
  v244 = sub_1E62F6E7C;
  v245 = v126;
  v240 = MEMORY[0x1E69E9820];
  v241 = 1107296256;
  v242 = sub_1E5E05AB0;
  v243 = &block_descriptor_265;
  v130 = _Block_copy(&v240);
  v131 = [v127 initWithSelector:v123 requireEnabled:v129 handler:v130];
  _Block_release(v129);
  _Block_release(v130);

  v132 = v239;
  v239[8] = v131;
  v133 = v231;
  v134 = v198;
  v135 = v233;
  *v198 = v231;
  *(v134 + 8) = v135;
  *(v134 + 16) = 0;
  swift_storeEnumTagMultiPayload();

  v136 = sub_1E6492AD8(v134, v230, v237);
  sub_1E5DFE50C(v134, &qword_1ED073950, &unk_1E65F4360);
  v132[9] = v136;
  if (qword_1ED071978 != -1)
  {
    swift_once();
  }

  v228 = a10;
  v137 = qword_1ED0962E8;
  sub_1E5E1DEAC(v114, v128);
  v138 = v194;
  v139 = swift_allocObject();
  sub_1E5E1E5F8(v128, v139 + v122, type metadata accessor for AppComposer);
  v140 = (v139 + v138);
  *v140 = v133;
  v140[1] = v135;
  v141 = v135;
  v142 = objc_allocWithZone(BBMenuCommand);
  v250 = sub_1E5F88C58;
  v251 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v247 = 1107296256;
  v248 = sub_1E638D4E4;
  v249 = &block_descriptor_271;
  v143 = _Block_copy(&aBlock);
  v244 = sub_1E62CABD8;
  v245 = v139;
  v240 = MEMORY[0x1E69E9820];
  v241 = 1107296256;
  v242 = sub_1E5E05AB0;
  v243 = &block_descriptor_274;
  v144 = _Block_copy(&v240);

  v145 = [v142 initWithSelector:v137 requireEnabled:v143 handler:v144];
  _Block_release(v143);
  _Block_release(v144);

  v239[10] = v145;
  v146 = v203;
  sub_1E64878E4(v203);
  v147 = *(v200 + 48);
  v148 = v201;
  if (v147(v146, 1, v201) == 1)
  {
    v149 = v204;
    *v204 = v133;
    v149[1] = v141;
    swift_storeEnumTagMultiPayload();
    v150 = v147(v146, 1, v148);

    v151 = v216;
    v152 = v214;
    v153 = v237;
    v154 = v213;
    v155 = v210;
    if (v150 != 1)
    {
      sub_1E5DFE50C(v146, &qword_1ED077DC8, &qword_1E65FAB48);
    }
  }

  else
  {
    v149 = v204;
    sub_1E5FAB460(v146, v204, &unk_1ED077DD0, &unk_1E65FAB50);
    v151 = v216;
    v152 = v214;
    v153 = v237;
    v154 = v213;
    v155 = v210;
  }

  v156 = v232;
  if (qword_1ED071980 != -1)
  {
    swift_once();
  }

  v157 = qword_1ED0962F0;
  v158 = sub_1E63A97C0(v149, v226, v153, v156, v151, v228);
  v159 = sub_1E6388D10(v157, v158, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  sub_1E5DFE50C(v149, &unk_1ED077DD0, &unk_1E65FAB50);
  v239[11] = v159;
  swift_getKeyPath();
  v160 = v209;
  sub_1E65E4EC8();

  sub_1E62DDD48(v160, v154);
  (*(v211 + 8))(v160, v212);
  v161 = *(v208 + 48);
  if (v161(v154, 1, v155) == 1)
  {
    v162 = v233;
    *v152 = v133;
    *(v152 + 8) = v162;
    *(v152 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    v163 = v161(v154, 1, v155);

    v164 = 0x1E8792000;
    if (v163 != 1)
    {
      sub_1E5DFE50C(v154, &qword_1ED077DC0, &qword_1E65FAB40);
    }
  }

  else
  {
    sub_1E5FAB460(v154, v152, &unk_1ED0776E0, &qword_1E65EDC00);
    v164 = 0x1E8792000uLL;
  }

  v165 = sub_1E6200DD8(v152, v230, v153);
  v166 = v239;
  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v167 = qword_1ED0962F8;

  v168 = sub_1E63886EC(v167, v165, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  v169 = sub_1E65E60A8();
  v170 = v215;
  (*(*(v169 - 8) + 56))(v215, 1, 1, v169);
  v171 = swift_allocObject();
  v171[2] = 0;
  v171[3] = 0;
  v171[4] = v165;

  sub_1E64B80F8(0, 0, v170, &unk_1E65F91E8, v171);

  sub_1E5DFE50C(v152, &unk_1ED0776E0, &qword_1E65EDC00);
  *(v166 + 96) = v168;
  if (qword_1ED071990 != -1)
  {
    swift_once();
  }

  v172 = qword_1ED096300;
  v173 = v236;
  sub_1E5E1DEAC(v156, v236);
  v174 = swift_allocObject();
  sub_1E5E1E5F8(v173, v174 + v235, type metadata accessor for AppComposer);
  v175 = objc_allocWithZone(*(v164 + 1080));
  v250 = sub_1E5F88C58;
  v251 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v247 = 1107296256;
  v248 = sub_1E638D4E4;
  v249 = &block_descriptor_287;
  v176 = _Block_copy(&aBlock);
  v244 = sub_1E62F7BA0;
  v245 = v174;
  v240 = MEMORY[0x1E69E9820];
  v241 = 1107296256;
  v242 = sub_1E5E05AB0;
  v243 = &block_descriptor_290;
  v177 = _Block_copy(&v240);
  v178 = [v175 initWithSelector:v172 requireEnabled:v176 handler:v177];
  _Block_release(v176);
  _Block_release(v177);

  *(v166 + 104) = v178;
  sub_1E5F9AF8C(v166);
  v180 = v179;
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v206 + 8))(v229, v207);
  (*(v205 + 8))(v226, v151);
  return v180;
}

char *sub_1E62F3D80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t a1))
{
  v208 = a8;
  v215 = a6;
  v201 = a5;
  v209 = a4;
  v212 = a3;
  v203 = a1;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v187 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v182 = &v144 - v11;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v185 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v179 = &v144 - v12;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v183 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v178 = &v144 - v13;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D28, &qword_1E65FAA78);
  v175 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v171 = &v144 - v14;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D30, &unk_1E65FAA80);
  v177 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v172 = &v144 - v15;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0772E0, &qword_1E65F9908) - 8;
  MEMORY[0x1EEE9AC00](v180);
  v173 = &v144 - v16;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  MEMORY[0x1EEE9AC00](v170);
  v169 = (&v144 - v17);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v165 = &v144 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v163 = &v144 - v20;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v166 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v205 = &v144 - v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v162 = *(v160 - 8);
  v204 = *(v162 + 64);
  v22 = MEMORY[0x1EEE9AC00](v160);
  v161 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v214 = (&v144 - v24);
  v210 = sub_1E65D76F8();
  v211 = *(v210 - 8);
  v200 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v213 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v196 = &v144 - v26;
  v27 = type metadata accessor for AppComposer(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v199 = (&v144 - v31);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v157 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v144 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v193 = *(v33 - 8);
  v191 = *(v193 + 64);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v189 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v144 - v36;
  v226[3] = a7;
  v226[4] = v208;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v226);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, v209, a7);
  v188 = v37;
  *v37 = a1;
  *(v37 + 1) = a2;
  v37[16] = 0;
  swift_storeEnumTagMultiPayload();
  v39 = v215;
  v202 = *v215;
  v40 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v215, v40);
  v41 = *(v28 + 80);
  v42 = ((v41 + 16) & ~v41) + v29;
  v43 = (v41 + 16) & ~v41;
  v44 = v41 | 7;
  v45 = swift_allocObject();
  sub_1E5E1E5F8(v40, v45 + v43, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v39, v40);
  v46 = swift_allocObject();
  sub_1E5E1E5F8(v40, v46 + v43, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v39, v40);
  v192 = v42;
  v207 = v44;
  v47 = swift_allocObject();
  v209 = v43;
  v208 = type metadata accessor for AppComposer;
  sub_1E5E1E5F8(v40, v47 + v43, type metadata accessor for AppComposer);
  v48 = v39;
  v49 = v40;
  v206 = v40;
  sub_1E5E1DEAC(v48, v40);
  v50 = swift_allocObject();
  sub_1E5E1E5F8(v49, v50 + v43, type metadata accessor for AppComposer);
  v51 = swift_allocObject();
  *(v51 + 16) = &unk_1E65FAAC8;
  *(v51 + 24) = v50;
  v52 = sub_1E604BABC();
  v190 = a2;

  v197 = v52;
  sub_1E65DEB78();
  sub_1E65DE8E8();
  v53 = v188;
  v54 = v189;
  sub_1E5DFD1CC(v188, v189, &qword_1ED073950, &unk_1E65F4360);
  v55 = v211;
  v56 = *(v211 + 16);
  v198 = v211 + 16;
  v199 = v56;
  v57 = v213;
  v58 = v210;
  v56(v213, v212, v210);
  v145 = *(v193 + 80);
  v59 = (v145 + 16) & ~v145;
  v155 = *(v55 + 80);
  v60 = v55;
  v61 = (v59 + v191 + v155) & ~v155;
  v62 = swift_allocObject();
  sub_1E5FAB460(v54, v62 + v59, &qword_1ED073950, &unk_1E65F4360);
  v63 = *(v60 + 32);
  v211 = v60 + 32;
  v156 = v63;
  v63(v62 + v61, v57, v58);
  sub_1E5DFD1CC(v53, v54, &qword_1ED073950, &unk_1E65F4360);
  v64 = swift_allocObject() + v59;
  v65 = v54;
  sub_1E5FAB460(v54, v64, &qword_1ED073950, &unk_1E65F4360);
  v154 = type metadata accessor for AppFeature(0);
  v153 = sub_1E62F89B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v146 = sub_1E5FED46C(&qword_1ED077D68, &unk_1ED077D50, &unk_1E65FAAA0, MEMORY[0x1E699CC98]);
  sub_1E65E4DE8();
  v66 = v206;
  sub_1E5E1DEAC(v215, v206);
  v67 = v201;
  v149 = *v201;
  v150 = v201[3];
  v151 = v201[5];
  v152 = v201[7];
  v193 = v201[9];
  sub_1E5DFD1CC(v53, v65, &qword_1ED073950, &unk_1E65F4360);
  v68 = (v192 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = v68 + 80;
  v148 = v68;
  v69 = (v68 + 80 + v145) & ~v145;
  v70 = swift_allocObject();
  sub_1E5E1E5F8(v66, v70 + v209, v208);
  v71 = (v70 + v68);
  v72 = *(v67 + 3);
  v71[2] = *(v67 + 2);
  v71[3] = v72;
  v71[4] = *(v67 + 4);
  v73 = *(v67 + 1);
  *v71 = *v67;
  v71[1] = v73;
  sub_1E5FAB460(v189, v70 + v69, &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1E62C78AC;
  *(v74 + 24) = v70;

  v75 = v194;
  v76 = v196;
  v77 = v195;
  v191 = sub_1E65E4F08();

  (*(v158 + 8))(v76, v159);
  (*(v157 + 8))(v75, v77);
  sub_1E5DFE50C(v188, &qword_1ED073950, &unk_1E65F4360);
  v78 = v214;
  v79 = v190;
  *v214 = v203;
  v78[1] = v79;
  *(v78 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v80 = v215;
  v81 = v206;
  sub_1E5E1DEAC(v215, v206);
  v196 = swift_allocObject();
  v82 = v209;
  v83 = v208;
  sub_1E5E1E5F8(v81, &v196[v209], v208);
  sub_1E5E1DEAC(v80, v81);
  v84 = swift_allocObject();
  sub_1E5E1E5F8(v81, v84 + v82, v83);
  sub_1E5E1DEAC(v80, v81);
  v85 = swift_allocObject();
  sub_1E5E1E5F8(v81, v85 + v82, v83);
  v86 = swift_allocObject();
  *(v86 + 16) = &unk_1E65FB338;
  *(v86 + 24) = v85;
  sub_1E5E1DEAC(v80, v81);
  v87 = swift_allocObject();
  sub_1E5E1E5F8(v81, v87 + v82, v83);

  sub_1E65DED58();
  sub_1E65DEAC8();
  v88 = v161;
  sub_1E5DFD1CC(v214, v161, &qword_1ED072AA8, &unk_1E65FA900);
  v89 = v213;
  v90 = v210;
  v199(v213, v212, v210);
  v91 = *(v162 + 80);
  v92 = (v91 + 16) & ~v91;
  v93 = (v92 + v204 + v155) & ~v155;
  v94 = v93 + v200;
  v95 = swift_allocObject();
  sub_1E5FAB460(v88, v95 + v92, &qword_1ED072AA8, &unk_1E65FA900);
  v156(v95 + v93, v89, v90);
  *(v95 + v94) = 0;
  v96 = v214;
  v97 = v88;
  sub_1E5DFD1CC(v214, v88, &qword_1ED072AA8, &unk_1E65FA900);
  v98 = swift_allocObject();
  sub_1E5FAB460(v88, v98 + v92, &qword_1ED072AA8, &unk_1E65FA900);
  v211 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  v99 = v165;
  v100 = v164;
  sub_1E65E4DE8();
  v101 = v206;
  sub_1E5E1DEAC(v215, v206);
  sub_1E5DFD1CC(v96, v97, &qword_1ED072AA8, &unk_1E65FA900);
  v102 = (v147 + v91) & ~v91;
  v103 = swift_allocObject();
  sub_1E5E1E5F8(v101, v103 + v209, v208);
  v104 = (v103 + v148);
  v105 = v201;
  v106 = *(v201 + 3);
  v104[2] = *(v201 + 2);
  v104[3] = v106;
  v104[4] = *(v105 + 4);
  v107 = *(v105 + 1);
  *v104 = *v105;
  v104[1] = v107;
  sub_1E5FAB460(v97, v103 + v102, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v108 = swift_allocObject();
  *(v108 + 16) = sub_1E62F8D0C;
  *(v108 + 24) = v103;

  v109 = v205;
  v211 = sub_1E65E4F08();

  (*(v167 + 8))(v99, v168);
  (*(v166 + 8))(v109, v100);
  sub_1E5DFE50C(v214, &qword_1ED072AA8, &unk_1E65FA900);
  v110 = v203;
  v111 = v169;
  v112 = v190;
  *v169 = v203;
  *(v111 + 8) = v112;
  *(v111 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v113 = v112;

  v114 = v212;
  v115 = v215;
  v116 = sub_1E6200DD8(v111, v212, v105);
  sub_1E5DFE50C(v111, &unk_1ED0776E0, &qword_1E65EDC00);
  v199(v213, v114, v210);
  v216 = v115;
  v217 = v110;
  v218 = v113;
  v219 = v114;
  v220 = v105;
  v221 = v226;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D70, &qword_1E65F9100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D78, &unk_1E65FAB10);
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D80, &qword_1E65EDC48);
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v119 = sub_1E604C584();
  v120 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
  v222 = v117;
  v223 = v118;
  v224 = v119;
  v225 = v120;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1ED077DA0, &qword_1ED077D78, &unk_1E65FAB10, MEMORY[0x1E6981F48]);
  v121 = v171;
  sub_1E65E45C8();
  v122 = sub_1E5FED46C(&qword_1ED077DA8, &qword_1ED077D28, &qword_1E65FAA78, MEMORY[0x1E697CD28]);
  v123 = sub_1E62438F0();
  v124 = v172;
  v125 = v174;
  sub_1E65E47F8();
  (*(v175 + 8))(v121, v125);
  v222 = v125;
  v223 = &type metadata for NavigationBarButtonStyle;
  v224 = v122;
  v225 = v123;
  swift_getOpaqueTypeConformance2();
  sub_1E6245140();
  v126 = v173;
  v127 = v176;
  sub_1E65E4948();
  (*(v177 + 8))(v124, v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DB0, &unk_1E65FAB30);
  v128 = v211;

  v129 = v178;
  v130 = v128;
  sub_1E65DEE28();
  sub_1E604C89C();

  v131 = v179;
  sub_1E65DE568();
  v132 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v133 = v182;
  v134 = v181;
  MEMORY[0x1E69482C0](v129, v181, v132);
  v222 = v134;
  v223 = v132;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
  v135 = v131;
  v136 = v186;
  v137 = v184;
  sub_1E65E08A8();
  (*(v187 + 8))(v133, v136);
  (*(v185 + 8))(v135, v137);
  (*(v183 + 8))(v129, v134);
  v138 = swift_allocObject();
  *(v138 + 2) = v191;
  *(v138 + 3) = v130;
  *(v138 + 4) = v116;
  v139 = (v126 + *(v180 + 44));
  *v139 = sub_1E62BC1F4;
  v139[1] = v138;
  v140 = type metadata accessor for BarButtonItem(0);
  v139[2] = 0;
  v139[3] = 0;
  v141 = objc_allocWithZone(v140);
  v142 = sub_1E625C004(v213, v126);
  __swift_destroy_boxed_opaque_existential_1(v226);
  return v142;
}

uint64_t sub_1E62F599C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E62E65AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E62F5A7C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1E62E5680(v0 + v2, v6, v7, v0 + v4, v0 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_59Tm()
{
  v110 = type metadata accessor for AppComposer(0);
  v108 = *(*(v110 - 1) + 80);
  v1 = (v108 + 16) & ~v108;
  v2 = v1 + *(*(v110 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v107 = *(*(v3 - 8) + 80);
  v104 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v105 = *(v4 - 8);
  v106 = v4;
  v103 = *(v105 + 80);
  v109 = v0;
  v100 = v0 + v1;

  v5 = v0 + v1 + v110[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v7, v102);
  v8 = v6[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v8, v99);
  v9 = v6[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v9, v97);
  v10 = v6[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v10, v95);
  v11 = v6[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v11, v93);
  v12 = v6[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v12, v91);
  v13 = v6[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v13, v89);
  v14 = v6[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v14, v87);
  v15 = v6[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v15, v85);
  v16 = v6[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v16, v83);
  v17 = v6[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v17, v81);
  v18 = v6[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v18, v79);
  v19 = v6[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v19, v77);
  v20 = v6[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v20, v75);
  v21 = v6[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v21, v73);
  v22 = v6[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v22, v71);
  v23 = v6[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v23, v69);
  v24 = v6[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v24, v67);
  v25 = v6[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v25, v65);
  v26 = v6[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v26, v63);
  v27 = v6[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v27, v61);
  v28 = v6[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v5 + v28, v59);
  v29 = v6[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v5 + v29, v52);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v56 = *(v31[-1].Description + 1);
  v56(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v55 = *(v33[-1].Description + 1);
  v55(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v54 = *(v35[-1].Description + 1);
  v54(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v51 = *(v39[-1].Description + 1);
  v51(v5 + v38, v39);

  v40 = v100 + v110[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v41 + v6[6], v102);
  v98(v41 + v6[7], v99);
  v96(v41 + v6[8], v97);
  v94(v41 + v6[9], v95);
  v92(v41 + v6[10], v93);
  v90(v41 + v6[11], v91);
  v88(v41 + v6[12], v89);
  v86(v41 + v6[13], v87);
  v84(v41 + v6[14], v85);
  v82(v41 + v6[15], v83);
  v80(v41 + v6[16], v81);
  v78(v41 + v6[17], v79);
  v76(v41 + v6[18], v77);
  v74(v41 + v6[19], v75);
  v72(v41 + v6[20], v73);
  v70(v41 + v6[21], v71);
  v68(v41 + v6[22], v69);
  v66(v41 + v6[23], v67);
  v64(v41 + v6[24], v65);
  v62(v41 + v6[25], v63);
  v60(v41 + v6[26], v61);
  v58(v41 + v6[27], v59);
  v57(v41 + v6[28], v52);
  v56(v41 + v6[29], v31);
  v55(v41 + v6[30], v33);
  v54(v41 + v6[31], v35);

  v53(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v51(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v100 + v110[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v107) & ~v107;
  v43 = (v100 + v110[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v109 + v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v44, *(v44 + 8), *(v44 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
    }

    else if (v47 == 1)
    {
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v49 = sub_1E65D76A8();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }
  }

  (*(v105 + 8))(v109 + ((v104 + v42 + v103 + 1) & ~v103), v106);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E62F6A84(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8);
  v6 = v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1E62F6B70(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1 | ((HIDWORD(a1) & 1) << 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(v5, v7);
}

uint64_t sub_1E62F6C38(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_1E62F6D80(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a4(a1, v4 + v9, v12);
}

uint64_t objectdestroy_178Tm(void (*a1)(void))
{
  v98 = type metadata accessor for AppComposer(0);
  v95 = *(*(v98 - 1) + 80);
  v93 = *(*(v98 - 1) + 64);
  v94 = (v95 + 16) & ~v95;
  v97 = v1;
  v90 = v1 + v94;

  v2 = v1 + v94 + v98[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v92 = type metadata accessor for AccountService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v4, v92);
  v5 = v3[7];
  v89 = type metadata accessor for AppStateService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v5, v89);
  v6 = v3[8];
  v87 = type metadata accessor for ArchivedSessionService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v6, v87);
  v7 = v3[9];
  v85 = type metadata accessor for AssetService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v7, v85);
  v8 = v3[10];
  v83 = type metadata accessor for AwardsService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v8, v83);
  v9 = v3[11];
  v81 = type metadata accessor for BookmarkService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v9, v81);
  v10 = v3[12];
  v79 = type metadata accessor for CatalogService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v10, v79);
  v11 = v3[13];
  v77 = type metadata accessor for ConfigurationService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v11, v77);
  v12 = v3[14];
  v75 = type metadata accessor for ContentAvailabilityService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v12, v75);
  v13 = v3[15];
  v73 = type metadata accessor for EngagementService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v13, v73);
  v14 = v3[16];
  v71 = type metadata accessor for HealthDataService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v14, v71);
  v15 = v3[17];
  v69 = type metadata accessor for InteropService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v15, v69);
  v16 = v3[18];
  v67 = type metadata accessor for LocalizationService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v16, v67);
  v17 = v3[19];
  v65 = type metadata accessor for MarketingService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v17, v65);
  v18 = v3[20];
  v63 = type metadata accessor for MetricService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v18, v63);
  v19 = v3[21];
  v61 = type metadata accessor for PersonalizationService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v19, v61);
  v20 = v3[22];
  v59 = type metadata accessor for PlayerService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v20, v59);
  v21 = v3[23];
  v57 = type metadata accessor for PrivacyPreferenceService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v21, v57);
  v22 = v3[24];
  v55 = type metadata accessor for RecommendationService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v22, v55);
  v23 = v3[25];
  v53 = type metadata accessor for RemoteBrowsingService();
  v52 = *(v53[-1].Description + 1);
  v52(v2 + v23, v53);
  v24 = v3[26];
  v51 = type metadata accessor for SearchService();
  v50 = *(v51[-1].Description + 1);
  v50(v2 + v24, v51);
  v25 = v3[27];
  v49 = type metadata accessor for ServiceSubscriptionService();
  v48 = *(v49[-1].Description + 1);
  v48(v2 + v25, v49);
  v26 = v3[28];
  v42 = type metadata accessor for SessionService();
  v47 = *(v42[-1].Description + 1);
  v47(v2 + v26, v42);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v46 = *(v28[-1].Description + 1);
  v46(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v45 = *(v30[-1].Description + 1);
  v45(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v44 = *(v32[-1].Description + 1);
  v44(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v43 = *(QueueService[-1].Description + 1);
  v43(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v41 = *(v36[-1].Description + 1);
  v41(v2 + v35, v36);

  v37 = v90 + v98[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v91(v38 + v3[6], v92);
  v88(v38 + v3[7], v89);
  v86(v38 + v3[8], v87);
  v84(v38 + v3[9], v85);
  v82(v38 + v3[10], v83);
  v80(v38 + v3[11], v81);
  v78(v38 + v3[12], v79);
  v76(v38 + v3[13], v77);
  v74(v38 + v3[14], v75);
  v72(v38 + v3[15], v73);
  v70(v38 + v3[16], v71);
  v68(v38 + v3[17], v69);
  v66(v38 + v3[18], v67);
  v64(v38 + v3[19], v65);
  v62(v38 + v3[20], v63);
  v60(v38 + v3[21], v61);
  v58(v38 + v3[22], v59);
  v56(v38 + v3[23], v57);
  v54(v38 + v3[24], v55);
  v52(v38 + v3[25], v53);
  v50(v38 + v3[26], v51);
  v48(v38 + v3[27], v49);
  v47(v38 + v3[28], v42);
  v46(v38 + v3[29], v28);
  v45(v38 + v3[30], v30);
  v44(v38 + v3[31], v32);

  v43(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v41(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v90 + v98[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v90 + v98[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  a1(*(v97 + ((v93 + v94 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_1E62F7C50(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62EDEA0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E62F7D40(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E62ED374(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1E62F7E70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62EC9F8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E62F7F60()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6348E60(v0 + v3);
}

uint64_t sub_1E62F802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v10 = a4;
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E63493F4(a1, a2, a3, v10, a5, v6 + 16, a6);
}

uint64_t sub_1E62F8104(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6349810(a1, a2, v2 + v7);
}

uint64_t sub_1E62F81E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65D76F8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E6349D00(a1, v9, v10, v11, v2 + v6, v12, a2);
}

uint64_t sub_1E62F8304(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65DEC18() - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E634AA0C(a1, a2, v2 + v6, (v2 + v7), v9);
}

uint64_t sub_1E62F83F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return v4(&v7, a3);
}

unint64_t sub_1E62F8440()
{
  result = qword_1ED078068;
  if (!qword_1ED078068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078060, &qword_1E65FB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078068);
  }

  return result;
}

unint64_t sub_1E62F84BC()
{
  result = qword_1ED0780C8;
  if (!qword_1ED0780C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078090, &qword_1E65FB4E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078080, &qword_1E65FB4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078078, &qword_1E65FB4D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078070, &qword_1E65FB4C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0780D0, &qword_1E65FB568);
    sub_1E5FED46C(&qword_1ED0780D8, &qword_1ED078070, &qword_1E65FB4C8, MEMORY[0x1E697CD28]);
    sub_1E62F8698();
    swift_getOpaqueTypeConformance2();
    sub_1E62F877C();
    swift_getOpaqueTypeConformance2();
    sub_1E604BABC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0780C8);
  }

  return result;
}

unint64_t sub_1E62F8698()
{
  result = qword_1ED0780E0;
  if (!qword_1ED0780E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0780D0, &qword_1E65FB568);
    sub_1E5FED46C(&qword_1ED0780D8, &qword_1ED078070, &qword_1E65FB4C8, MEMORY[0x1E697CD28]);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0780E0);
  }

  return result;
}

unint64_t sub_1E62F877C()
{
  result = qword_1ED0780E8;
  if (!qword_1ED0780E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0780E8);
  }

  return result;
}

uint64_t sub_1E62F87D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E62F8860(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E62F88FC()
{
  result = qword_1ED078110;
  if (!qword_1ED078110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078100, &qword_1E65FB570);
    sub_1E62F89B8(&qword_1ED078118, MEMORY[0x1E699DB80], MEMORY[0x1E699DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078110);
  }

  return result;
}

uint64_t sub_1E62F89B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E62F8A00()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1E65D76F8() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E62EBE6C((v0 + v2), v6, v7, v0 + v5, v8);
}

uint64_t sub_1E62F8B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_1E62F8BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v10 = *(type metadata accessor for AppComposer(0) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = v5 + ((v12 + *(v13 + 80) + 80) & ~*(v13 + 80));

  return a5(a1, a2, v5 + v11, v5 + v12, v14);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E62F8D30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E62F8D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E62F8DDC(uint64_t a1)
{
  sub_1E65D7338();
  sub_1E65E4498();
  sub_1E65E4508();
  sub_1E65E4538();

  sub_1E608F9E4();
  sub_1E65D7358();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_1E65E4968();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

unint64_t sub_1E62F8EA0()
{
  result = qword_1EE2D72C0;
  if (!qword_1EE2D72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D72C0);
  }

  return result;
}

uint64_t sub_1E62F8EF4()
{
  v20 = sub_1E65E4548();
  v0 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65D7348();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  __swift_allocate_value_buffer(v11, qword_1EE2EA1C0);
  v21 = __swift_project_value_buffer(v3, qword_1EE2EA1C0);
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E44B8();

  v14 = v20;
  (*(v0 + 104))(v2, *MEMORY[0x1E6980EA8], v20);
  v15 = sub_1E65E4578();

  (*(v0 + 8))(v2, v14);
  v16 = *(v4 + 16);
  v16(v10, v7, v3);
  v22 = v15;
  sub_1E608F9E4();

  sub_1E65D7358();

  v17 = *(v4 + 8);
  v17(v7, v3);
  v18 = sub_1E65E49D8();
  v16(v13, v10, v3);
  v22 = v18;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v17(v10, v3);
  v16(v21, v13, v3);
  v22 = 0x3FC999999999999ALL;
  v23 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v17)(v13, v3);
}

uint64_t sub_1E62F9314(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E65E4548();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D7348();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v25 = &v24 - v16;
  __swift_allocate_value_buffer(v15, a2);
  v17 = __swift_project_value_buffer(v7, a2);
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E44B8();

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  v18 = sub_1E65E4578();

  (*(v4 + 8))(v6, v3);
  v19 = *(v8 + 16);
  v19(v14, v11, v7);
  v26 = v18;
  sub_1E608F9E4();

  sub_1E65D7358();

  v20 = *(v8 + 8);
  v20(v11, v7);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v21 = sub_1E65E4968();
  v22 = v25;
  v19(v25, v14, v7);
  v26 = v21;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v20(v14, v7);
  v19(v17, v22, v7);
  v26 = 0x3FC999999999999ALL;
  v27 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v20)(v22, v7);
}

uint64_t sub_1E62F9720(uint64_t a1)
{
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E4508();
  sub_1E65E4538();

  sub_1E608F9E4();
  sub_1E65D7358();
  sub_1E65E49C8();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

uint64_t sub_1E62F989C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  __swift_allocate_value_buffer(v10, a2);
  v13 = __swift_project_value_buffer(v5, a2);
  v14 = sub_1E65D7338();
  a3(v14);
  v15 = sub_1E65E44B8();

  v16 = *(v6 + 16);
  v16(v12, v9, v5);
  v21 = v15;
  sub_1E608F9E4();

  sub_1E65D7358();

  v17 = *(v6 + 8);
  v17(v9, v5);
  v18 = sub_1E65E49C8();
  v16(v13, v12, v5);
  v21 = v18;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v17)(v12, v5);
}

uint64_t sub_1E62F9A98()
{
  v0 = sub_1E65E4548();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7348();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  __swift_allocate_value_buffer(v9, qword_1ED0963A8);
  v12 = __swift_project_value_buffer(v4, qword_1ED0963A8);
  sub_1E65D7338();
  sub_1E65E4598();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v13 = sub_1E65E4578();

  (*(v1 + 8))(v3, v0);
  v14 = *(v5 + 16);
  v14(v11, v8, v4);
  v20 = v13;
  sub_1E608F9E4();

  sub_1E65D7358();

  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = [objc_opt_self() tertiaryLabelColor];
  v14(v12, v11, v4);
  v20 = v16;
  sub_1E608F990();
  v17 = v16;
  sub_1E65D7358();

  return (v15)(v11, v4);
}

uint64_t sub_1E62F9DBC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65D7348();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  __swift_allocate_value_buffer(v10, a2);
  v13 = __swift_project_value_buffer(v5, a2);
  v14 = sub_1E65D7338();
  v15 = a3(v14);
  v16 = *(v6 + 16);
  v16(v12, v9, v5);
  v21 = v15;
  sub_1E608F9E4();

  sub_1E65D7358();

  v17 = *(v6 + 8);
  v17(v9, v5);
  v18 = sub_1E65E49D8();
  v16(v13, v12, v5);
  v21 = v18;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v17)(v12, v5);
}

uint64_t sub_1E62F9FFC()
{
  v0 = sub_1E65E4548();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7348();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  __swift_allocate_value_buffer(v12, qword_1ED0963F0);
  v21 = __swift_project_value_buffer(v4, qword_1ED0963F0);
  sub_1E65D7338();
  sub_1E65E4568();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v15 = sub_1E65E4578();

  (*(v1 + 8))(v3, v0);
  v16 = *(v5 + 16);
  v16(v11, v8, v4);
  v22 = v15;
  sub_1E608F9E4();

  sub_1E65D7358();

  v17 = *(v5 + 8);
  v17(v8, v4);
  v18 = sub_1E65E49D8();
  v16(v14, v11, v4);
  v22 = v18;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v17(v11, v4);
  v16(v21, v14, v4);
  v22 = 0x3FE0000000000000;
  v23 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v17)(v14, v4);
}

uint64_t sub_1E62FA34C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7348();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v28 = &v27 - v18;
  __swift_allocate_value_buffer(v17, a2);
  v19 = __swift_project_value_buffer(v9, a2);
  v20 = sub_1E65D7338();
  a3(v20);
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  v21 = sub_1E65E4578();

  (*(v6 + 8))(v8, v5);
  v22 = *(v10 + 16);
  v22(v16, v13, v9);
  v29 = v21;
  sub_1E608F9E4();

  sub_1E65D7358();

  v23 = *(v10 + 8);
  v23(v13, v9);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v24 = sub_1E65E4968();
  v25 = v28;
  v22(v28, v16, v9);
  v29 = v24;
  sub_1E62F8EA0();

  sub_1E65D7358();

  v23(v16, v9);
  v22(v19, v25, v9);
  v29 = 0x3FE0000000000000;
  v30 = 0;
  sub_1E62FC334();
  sub_1E65D7358();
  return (v23)(v25, v9);
}

uint64_t sub_1E62FA728(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7348();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v11, a2);
  v14 = __swift_project_value_buffer(v9, a2);
  v15 = sub_1E65D7338();
  a3(v15);
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  v16 = sub_1E65E4578();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v14, v13, v9);
  v18[1] = v16;
  sub_1E608F9E4();

  sub_1E65D7358();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E62FA958()
{
  v0 = sub_1E65E4548();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7348();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  __swift_allocate_value_buffer(v9, qword_1ED096468);
  v12 = __swift_project_value_buffer(v4, qword_1ED096468);
  sub_1E65D7338();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v13 = sub_1E65E4578();

  (*(v1 + 8))(v3, v0);
  v14 = *(v5 + 16);
  v14(v11, v8, v4);
  v20 = v13;
  sub_1E608F9E4();

  sub_1E65D7358();

  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = [objc_opt_self() tertiaryLabelColor];
  v14(v12, v11, v4);
  v20 = v16;
  sub_1E608F990();
  v17 = v16;
  sub_1E65D7358();

  return (v15)(v11, v4);
}

uint64_t sub_1E62FAF14(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7348();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  __swift_allocate_value_buffer(v14, a2);
  v17 = __swift_project_value_buffer(v9, a2);
  v18 = sub_1E65D7338();
  a3(v18);
  sub_1E65E44B8();

  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  v19 = sub_1E65E4578();

  (*(v6 + 8))(v8, v5);
  v20 = *(v10 + 16);
  v20(v16, v13, v9);
  v25 = v19;
  sub_1E608F9E4();

  sub_1E65D7358();

  v21 = *(v10 + 8);
  v21(v13, v9);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v22 = sub_1E65E4968();
  v20(v17, v16, v9);
  v25 = v22;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v21)(v16, v9);
}

uint64_t sub_1E62FB2A8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v26 = a4;
  v6 = sub_1E65E4548();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v16;
  __swift_allocate_value_buffer(v15, a2);
  v18 = __swift_project_value_buffer(v10, a2);
  v19 = sub_1E65D7338();
  a3(v19);
  sub_1E65E44B8();

  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  v20 = sub_1E65E4578();

  (*(v7 + 8))(v9, v6);
  v21 = *(v11 + 16);
  v21(v17, v14, v10);
  v27 = v20;
  sub_1E608F9E4();

  sub_1E65D7358();

  v22 = *(v11 + 8);
  v23 = v22(v14, v10);
  v24 = v26(v23);
  v21(v18, v17, v10);
  v27 = v24;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return v22(v17, v10);
}

uint64_t sub_1E62FB5B4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v26 = a4;
  v6 = sub_1E65E4548();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v16;
  __swift_allocate_value_buffer(v15, a2);
  v18 = __swift_project_value_buffer(v10, a2);
  v19 = sub_1E65D7338();
  a3(v19);
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  v20 = sub_1E65E4578();

  (*(v7 + 8))(v9, v6);
  v21 = *(v11 + 16);
  v21(v17, v14, v10);
  v27 = v20;
  sub_1E608F9E4();

  sub_1E65D7358();

  v22 = *(v11 + 8);
  v23 = v22(v14, v10);
  v24 = v26(v23);
  v21(v18, v17, v10);
  v27 = v24;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return v22(v17, v10);
}

uint64_t sub_1E62FB894(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E65D7348();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E65D7338();
}

uint64_t sub_1E62FB8FC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1E65E4548();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7348();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v11, a2);
  v14 = __swift_project_value_buffer(v9, a2);
  v15 = sub_1E65D7338();
  a3(v15);
  sub_1E65E44B8();

  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  v16 = sub_1E65E4578();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v14, v13, v9);
  v18[1] = v16;
  sub_1E608F9E4();

  sub_1E65D7358();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E62FBB3C()
{
  v0 = sub_1E65D7348();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - v6;
  __swift_allocate_value_buffer(v5, qword_1ED096690);
  v8 = __swift_project_value_buffer(v0, qword_1ED096690);
  sub_1E65D7338();
  sub_1E65E4568();
  sub_1E65E44F8();
  v9 = sub_1E65E4538();

  v10 = *(v1 + 16);
  v10(v7, v4, v0);
  v15 = v9;
  sub_1E608F9E4();

  sub_1E65D7358();

  v11 = *(v1 + 8);
  v11(v4, v0);
  v12 = sub_1E65E49D8();
  v10(v8, v7, v0);
  v15 = v12;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v11)(v7, v0);
}

uint64_t sub_1E62FBD3C()
{
  v0 = sub_1E65D7348();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - v6;
  __swift_allocate_value_buffer(v5, qword_1ED0966A8);
  v8 = __swift_project_value_buffer(v0, qword_1ED0966A8);
  sub_1E65D7338();
  sub_1E65E4568();
  sub_1E65E44E8();
  v9 = sub_1E65E4538();

  v10 = *(v1 + 16);
  v10(v7, v4, v0);
  v15 = v9;
  sub_1E608F9E4();

  sub_1E65D7358();

  v11 = *(v1 + 8);
  v11(v4, v0);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v12 = sub_1E65E4968();
  v10(v8, v7, v0);
  v15 = v12;
  sub_1E62F8EA0();

  sub_1E65D7358();

  return (v11)(v7, v0);
}

uint64_t sub_1E62FBF68(uint64_t a1)
{
  sub_1E65D7338();
  sub_1E65E4598();
  sub_1E65E44B8();

  sub_1E608F9E4();
  sub_1E65D7358();
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  sub_1E65E4968();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

uint64_t sub_1E62FC03C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1E65E4548();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7338();
  sub_1E65E4498();
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v6 = sub_1E65E4578();

  (*(v3 + 8))(v5, v2);
  v10 = v6;
  sub_1E608F9E4();
  v7 = sub_1E65D7358();
  v10 = a1(v7);
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

uint64_t sub_1E62FC1C0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1E65E4548();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D7338();
  a1(v6);
  sub_1E65E44B8();

  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v7 = sub_1E65E4578();

  (*(v3 + 8))(v5, v2);
  v10 = v7;
  sub_1E608F9E4();
  sub_1E65D7358();
  v10 = sub_1E65E49C8();
  sub_1E62F8EA0();
  return sub_1E65D7358();
}

unint64_t sub_1E62FC334()
{
  result = qword_1EE2D72B0;
  if (!qword_1EE2D72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D72B0);
  }

  return result;
}

uint64_t sub_1E62FC388(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 144) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  *(v7 + 40) = swift_task_alloc();
  v8 = sub_1E65D8F28();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v7 + 72) = swift_task_alloc();
  v9 = sub_1E65D8C68();
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = type metadata accessor for PageMetricsClick(0);
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62FC584, 0, 0);
}

uint64_t sub_1E62FC584()
{
  v41 = v0;
  if (*(v0 + 144) == 1)
  {
    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 72);
    v36 = *(v0 + 64);
    v6 = *(v0 + 56);
    v40 = *(v0 + 48);
    v38[0] = *(v0 + 40);
    v38[1] = *(v0 + 24);
    v7 = sub_1E65D9D78();
    (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
    (*(v3 + 104))(v2, *MEMORY[0x1E69CBAA0], v4);
    v8 = sub_1E65D74E8();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E65EA670;
    sub_1E65E28F8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E22D8();
    v10 = *(v6 + 104);
    v35 = *MEMORY[0x1E69CBCC8];
    v40 = (v6 + 104);
    v10(v36);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v39 = v9;
    sub_1E65D8678();
    v11 = sub_1E65DA208();
    (*(*(v11 - 8) + 56))(v38[0], 1, 1, v11);
    type metadata accessor for AppComposer(0);
    v12 = sub_1E65DAE38();
    if (v12 == sub_1E65DAE38())
    {
      HIBYTE(v38[1]) = -18;
      strcpy(v38, "CreateOniPhone");
    }

    else
    {
      v38[0] = sub_1E65E28F8();
      v38[1] = v15;
    }

    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    v32 = *(v0 + 80);
    v33 = *(v0 + 96);
    v34 = *(v0 + 72);
    v37 = *(v0 + 40);
    v20 = *(v0 + 32);
    (v10)(v17 + v16[14], v35, *(v0 + 48));
    v21 = v16[15];
    v22 = *MEMORY[0x1E69CC448];
    v23 = sub_1E65D9908();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v17 + v21, v22, v23);
    (*(v24 + 56))(v17 + v21, 0, 1, v23);
    v25 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v18, v17, &qword_1ED073578, &qword_1E65F0E60);
    (*(v19 + 32))(v17 + v16[5], v33, v32);
    sub_1E5FAB460(v34, v17 + v16[6], &qword_1ED072340, &qword_1E65EA410);
    *(v17 + v16[7]) = v39;
    sub_1E5FAB460(v37, v17 + v16[8], &qword_1ED073570, &unk_1E65F4570);
    v26 = (v17 + v16[9]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (v17 + v16[10]);
    *v27 = 0;
    v27[1] = 0;
    *(v17 + v16[11]) = v25;
    v28 = (v17 + v16[12]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v17 + v16[13]);
    *v29 = v38[0];
    v29[1] = v38[1];
    v40 = (*(v20 + 48) + **(v20 + 48));
    v30 = swift_task_alloc();
    *(v0 + 128) = v30;
    *v30 = v0;
    v30[1] = sub_1E62FCB3C;
    v31 = *(v0 + 120);

    return v40(v31);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E62FCB3C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1E62FCD00;
  }

  else
  {
    v2 = sub_1E62FCC50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E62FCC50()
{
  sub_1E5FC0990(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62FCD00()
{
  sub_1E5FC0990(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62FCDB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - v3;
  v5 = sub_1E65E1478();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0, v5);
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x1E699E840])
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v6 + 96))(v8, v5);
  (*(v2 + 32))(v4, v8, v1);
  v9 = sub_1E65E1778();
  if (!v9)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v10 = v9;
  v11 = [v9 dictionary];
  if (!v11)
  {
    (*(v2 + 8))(v4, v1);

    return 0;
  }

  v12 = v11;
  v13 = sub_1E65E5B08();

  *&v19[0] = sub_1E65E5C78();
  *(&v19[0] + 1) = v14;
  sub_1E65E6848();
  if (*(v13 + 16) && (v15 = sub_1E6417048(v20), (v16 & 1) != 0))
  {
    sub_1E5DFA11C(*(v13 + 56) + 32 * v15, v19);
    sub_1E6009FC0(v20);
  }

  else
  {

    sub_1E6009FC0(v20);
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  v17 = sub_1E65E6638();

  sub_1E62FD0F8(v19);
  (*(v2 + 8))(v4, v1);
  return v17;
}

uint64_t sub_1E62FD0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E62FD160(char a1)
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1E65E5C48();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_1E65E5C48();

    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1E65E6708();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E62FD2E0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1E62FD3C8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x2928657461746F72, 0xE800000000000000, sub_1E5E05150, v2, v4);
}

uint64_t sub_1E62FD3C8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E62FD4E4;
  }

  else
  {

    v2 = sub_1E5E1CF6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E62FD4E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of JournalRotating.rotate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return v7(a1, a2);
}

uint64_t sub_1E62FD674(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v144 = a1;
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v147 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v148 = &v133 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v150 = &v133 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v133 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v143 = &v133 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v133 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v5 = *v144;
    if (*v144)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v140 = &v133 - v26;
  v138 = a4;
  v29 = 0;
  v158 = (v10 + 8);
  v159 = v10 + 16;
  v155 = (v10 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v160 = v9;
  v152 = v27;
  v141 = v24;
  v145 = a3;
  v137 = v10;
  while (1)
  {
    v31 = v29;
    if (v29 + 1 >= v28)
    {
      v54 = v29 + 1;
    }

    else
    {
      v156 = v28;
      v161 = v6;
      v32 = *a3;
      v33 = *(v10 + 72);
      v5 = *a3 + v33 * (v29 + 1);
      v34 = *(v10 + 16);
      v35 = v140;
      v36 = v29;
      v34(v140, v5, v9);
      v139 = v32;
      v157 = v33;
      v37 = &v32[v33 * v36];
      v38 = v141;
      v153 = v34;
      v34(v141, v37, v9);
      v39 = v38;
      v40 = v161;
      LODWORD(v154) = sub_1E5DF7E0C(v35, v38);
      v161 = v40;
      if (v40)
      {
        v132 = *v158;
        (*v158)(v38, v9);
        v132(v35, v9);
      }

      v41 = *v158;
      (*v158)(v39, v9);
      v151 = v41;
      result = (v41)(v35, v9);
      v142 = v36;
      v42 = v36 + 2;
      v43 = v157;
      v44 = &v139[v157 * (v36 + 2)];
      v45 = v143;
      while (v156 != v42)
      {
        v46 = v30;
        v47 = v160;
        v48 = v153;
        (v153)(v45, v44, v160);
        v49 = v152;
        v48(v152, v5, v47);
        v50 = v161;
        v51 = sub_1E5DF7E0C(v45, v49);
        v161 = v50;
        if (v50)
        {
          v130 = v151;
          v151(v49, v47);
          v130(v45, v47);
        }

        v52 = v51;
        v53 = v151;
        v151(v49, v47);
        result = (v53)(v45, v47);
        ++v42;
        v43 = v157;
        v44 += v157;
        v5 += v157;
        v30 = v46;
        if ((v154 ^ v52))
        {
          v54 = (v42 - 1);
          goto LABEL_12;
        }
      }

      v54 = v156;
LABEL_12:
      v10 = v137;
      v9 = v160;
      v6 = v161;
      v31 = v142;
      if ((v154 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v54 < v142)
      {
        goto LABEL_140;
      }

      if (v142 < v54)
      {
        v55 = v54;
        v56 = v43 * (v54 - 1);
        v57 = v55 * v43;
        v156 = v55;
        v58 = v142;
        v59 = v142 * v43;
        do
        {
          if (v58 != --v55)
          {
            v161 = v6;
            v61 = *v145;
            if (!*v145)
            {
              goto LABEL_144;
            }

            v5 = v61 + v59;
            v154 = *v155;
            v154(v147, v61 + v59, v160);
            if (v59 < v56 || v5 >= v61 + v57)
            {
              v60 = v160;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v60 = v160;
              if (v59 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v154)(v61 + v56, v147, v60);
            v6 = v161;
            v43 = v157;
          }

          ++v58;
          v56 -= v43;
          v57 -= v43;
          v59 += v43;
        }

        while (v58 < v55);
        a3 = v145;
        v10 = v137;
        v9 = v160;
        v31 = v142;
        v54 = v156;
      }

      else
      {
LABEL_25:
        a3 = v145;
      }
    }

    v62 = a3[1];
    if (v54 >= v62)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v54, v31))
    {
      goto LABEL_136;
    }

    if (v54 - v31 >= v138)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v31, v138))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v156 = v54;
    if (&v31[v138] >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = &v31[v138];
    }

    if (v63 < v31)
    {
      goto LABEL_139;
    }

    if (v156 == v63)
    {
      v54 = v156;
LABEL_37:
      if (v54 < v31)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v110 = *a3;
    v111 = *(v10 + 72);
    v157 = *(v10 + 16);
    v112 = v110 + v111 * (v156 - 1);
    v153 = -v111;
    v154 = v110;
    v142 = v31;
    v113 = &v31[-v156];
    v134 = v111;
    v5 = v110 + v156 * v111;
    v115 = v149;
    v114 = v150;
    v151 = v63;
    v146 = v30;
    do
    {
      v135 = v5;
      v136 = v113;
      v139 = v112;
      v116 = v112;
      while (1)
      {
        v117 = v6;
        v118 = v157;
        (v157)(v115, v5, v9);
        v118(v114, v116, v9);
        v119 = sub_1E5DF7E0C(v115, v114);
        v120 = v114;
        v161 = v117;
        if (v117)
        {
          v131 = *v158;
          (*v158)(v114, v9);
          v131(v115, v9);
        }

        v121 = v119;
        v122 = *v158;
        (*v158)(v120, v9);
        result = (v122)(v115, v9);
        if ((v121 & 1) == 0)
        {
          break;
        }

        v30 = v146;
        if (!v154)
        {
          goto LABEL_142;
        }

        v123 = *v155;
        v124 = v148;
        v9 = v160;
        (*v155)(v148, v5, v160);
        swift_arrayInitWithTakeFrontToBack();
        v123(v116, v124, v9);
        v116 += v153;
        v5 += v153;
        v125 = __CFADD__(v113++, 1);
        v6 = v161;
        v115 = v149;
        v114 = v150;
        if (v125)
        {
          goto LABEL_100;
        }
      }

      v9 = v160;
      v6 = v161;
      v115 = v149;
      v114 = v150;
      v30 = v146;
LABEL_100:
      v112 = &v139[v134];
      v113 = v136 - 1;
      v5 = v135 + v134;
      v54 = v151;
      ++v156;
    }

    while (v156 != v151);
    a3 = v145;
    v10 = v137;
    v31 = v142;
    if (v151 < v142)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v65 = *(v30 + 2);
    v64 = *(v30 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_1E636ADD0((v64 > 1), v65 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v66;
    v67 = &v30[16 * v65];
    *(v67 + 4) = v31;
    *(v67 + 5) = v54;
    v151 = v54;
    v68 = *v144;
    if (!*v144)
    {
      goto LABEL_145;
    }

    if (v65)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v28 = a3[1];
    v29 = v151;
    v9 = v160;
    if (v151 >= v28)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v66 - 1;
    if (v66 >= 4)
    {
      v73 = &v30[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_122;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_123;
      }

      v80 = &v30[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_125;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_128;
      }

      if (v84 >= v76)
      {
        v102 = &v30[16 * v5 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v66 == 3)
    {
      v69 = *(v30 + 4);
      v70 = *(v30 + 5);
      v79 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      v72 = v79;
LABEL_58:
      if (v72)
      {
        goto LABEL_124;
      }

      v85 = &v30[16 * v66];
      v87 = *v85;
      v86 = *(v85 + 1);
      v88 = __OFSUB__(v86, v87);
      v89 = v86 - v87;
      v90 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v91 = &v30[16 * v5 + 32];
      v93 = *v91;
      v92 = *(v91 + 1);
      v79 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v79)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v89, v94))
      {
        goto LABEL_131;
      }

      if (v89 + v94 >= v71)
      {
        if (v71 < v94)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v95 = &v30[16 * v66];
    v97 = *v95;
    v96 = *(v95 + 1);
    v79 = __OFSUB__(v96, v97);
    v89 = v96 - v97;
    v90 = v79;
LABEL_72:
    if (v90)
    {
      goto LABEL_126;
    }

    v98 = &v30[16 * v5];
    v100 = *(v98 + 4);
    v99 = *(v98 + 5);
    v79 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if (v79)
    {
      goto LABEL_129;
    }

    if (v101 < v89)
    {
      goto LABEL_89;
    }

LABEL_79:
    v106 = v5 - 1;
    if (v5 - 1 >= v66)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v107 = *&v30[16 * v106 + 32];
    v108 = *&v30[16 * v5 + 40];
    sub_1E62FE200(*a3 + *(v10 + 72) * v107, *a3 + *(v10 + 72) * *&v30[16 * v5 + 32], *a3 + *(v10 + 72) * v108, v68);
    if (v6)
    {
    }

    if (v108 < v107)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1E636AC44(v30);
    }

    if (v106 >= *(v30 + 2))
    {
      goto LABEL_121;
    }

    v109 = &v30[16 * v106];
    *(v109 + 4) = v107;
    *(v109 + 5) = v108;
    v162 = v30;
    result = sub_1E636ABB8(v5);
    v30 = v162;
    v66 = *(v162 + 2);
    if (v66 <= 1)
    {
      goto LABEL_89;
    }
  }

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
LABEL_137:
  result = sub_1E636AC44(v30);
  v30 = result;
LABEL_106:
  v162 = v30;
  v126 = *(v30 + 2);
  if (v126 < 2)
  {
  }

  while (*a3)
  {
    v127 = *&v30[16 * v126];
    v128 = *&v30[16 * v126 + 24];
    sub_1E62FE200(*a3 + *(v10 + 72) * v127, *a3 + *(v10 + 72) * *&v30[16 * v126 + 16], *a3 + *(v10 + 72) * v128, v5);
    if (v6)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1E636AC44(v30);
    }

    if (v126 - 2 >= *(v30 + 2))
    {
      goto LABEL_133;
    }

    v129 = &v30[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v162 = v30;
    result = sub_1E636ABB8(v126 - 1);
    v30 = v162;
    v126 = *(v162 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_1E62FE200(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v12);
  result = MEMORY[0x1EEE9AC00](&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v14;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_1E5DF7E0C(v37, v50);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = result;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_1E5DF7E0C(v30, v31);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_1E636ACB8(&v79, &v78, &v77);
  return 1;
}