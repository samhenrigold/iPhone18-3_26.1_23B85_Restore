uint64_t sub_1C5AE658C()
{
  result = MEMORY[0x1C694ED40](0.15, 1.0, 0.0);
  qword_1EC1A6D08 = result;
  return result;
}

uint64_t sub_1C5AE6670(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ContentBelowSliderStyle(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5AE30A4(a1, v9, v6, v7);
}

void *sub_1C5AE66FC()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CapsuleProgress(0);
  v6 = result;
  v7 = v0 + *(result + 7);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9 == 1)
  {
    if (*&v8 <= 0.0)
    {
      return result;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v11 = sub_1C5942458(v8, 0);
    result = (*(v2 + 8))(v4, v1, v11);
    if (v26 <= 0.0)
    {
      return result;
    }
  }

  v12 = v0 + *(v6 + 8);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v26 = v13;
  LOBYTE(v27) = v14;
  *(&v27 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  result = sub_1C5BCA694();
  if ((v31 & 1) == 0)
  {
    v16 = v30;
    if (v9)
    {
      v17 = *&v8;
      if (v17 + v17 >= v30 || v30 <= 0.0)
      {
        return result;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v18 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v19 = sub_1C5942458(v8, 0);
      v20 = *(v2 + 8);
      result = v20(v4, v1, v19);
      if (v16 <= 0.0 || v26 + v26 >= v16)
      {
        return result;
      }

      sub_1C5BCB4E4();
      v21 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v22 = sub_1C5942458(v8, 0);
      result = v20(v4, v1, v22);
      v17 = v26;
    }

    v23 = v17 / v16;
    if (v23 > 1.0 - v23)
    {
      __break(1u);
    }

    else
    {
      v24 = *(v0 + *(v6 + 9));
      if (v24 < 0.0 || v24 > 1.0)
      {
        v26 = *(v0 + *(v6 + 9));
        v27 = xmmword_1C5BE5090;
        v28 = v23;
        v29 = 1.0 - v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197698, &qword_1C5BE7C60);
        sub_1C5924F54(&qword_1EC1976A0, &qword_1EC197698, &qword_1C5BE7C60, &unk_1C5BF4498);
        return swift_willThrowTypedImpl();
      }
    }
  }

  return result;
}

double sub_1C5AE6ADC@<D0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v77 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C5BC8F34();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CapsuleProgress(0);
  v6 = *(v5 - 8);
  v70 = v5 - 8;
  v69 = v6;
  v68 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197618, &qword_1C5BE7BD0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197620, &qword_1C5BE7BD8) - 8;
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197628, &qword_1C5BE7BE0) - 8;
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v57 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197630, &qword_1C5BE7BE8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v57 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197638, &qword_1C5BE7BF0);
  MEMORY[0x1EEE9AC00](v71);
  *&v75 = &v57 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197640, &qword_1C5BE7BF8);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v57 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1970D8, &unk_1C5BE7C00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C5BD4D40;
  sub_1C5AE66FC();
  if (v18 <= 0.0)
  {
    v18 = 0.0;
  }

  v19 = 1.0;
  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  *(v17 + 32) = v18;
  *(v17 + 40) = 0x3FF0000000000000;
  sub_1C5AE73BC(&v82);
  v61 = v82;
  v20 = v83;
  v21 = BYTE8(v83);
  v62 = sub_1C5BCAA54();
  v23 = v22;
  sub_1C5AE7590(v1, &v82);
  v24 = v82;
  v81 = v21;
  v25 = &v11[*(v9 + 44)];
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1C5BC9044();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924E0, &qword_1C5BD4CF8) + 36)] = 256;
  *v11 = 0;
  *(v11 + 1) = *v80;
  *(v11 + 1) = *&v80[3];
  *(v11 + 1) = v17;
  *(v11 + 1) = v61;
  *(v11 + 4) = v20;
  v11[40] = v21;
  *(v11 + 41) = *v79;
  *(v11 + 11) = *&v79[3];
  *(v11 + 3) = v24;
  *(v11 + 8) = v62;
  *(v11 + 9) = v23;
  v28 = sub_1C5BCAA64();
  v30 = v29;
  v31 = v64;
  v32 = &v64[*(v65 + 44)];
  sub_1C5AE7860(v1, v32);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197648, &qword_1C5BE7C10) + 36));
  *v33 = v28;
  v33[1] = v30;
  v34 = v11;
  v35 = v63;
  v36 = v31;
  sub_1C59E7D34(v34, v31, &qword_1EC197618, &qword_1C5BE7BD0);
  v37 = v67;
  sub_1C5AE8560(v1, v67, type metadata accessor for CapsuleProgress);
  v38 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v39 = swift_allocObject();
  sub_1C5AE9678(v37, v39 + v38, type metadata accessor for CapsuleProgress);
  sub_1C59E7D34(v36, v35, &qword_1EC197620, &qword_1C5BE7BD8);
  v40 = (v35 + *(v66 + 44));
  *v40 = sub_1C5941E6C;
  v40[1] = 0;
  v40[2] = sub_1C5AE96E0;
  v40[3] = v39;
  v41 = v1 + *(v70 + 28);
  v42 = *v41;
  if (*(v41 + 8) == 1)
  {
    v43 = v77;
    if (v42)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1C5BCB4E4();
  v44 = sub_1C5BC9844();
  sub_1C5BC7C54();

  v45 = v58;
  sub_1C5BC8F24();
  swift_getAtKeyPath();
  v46 = sub_1C5942458(v42, 0);
  (*(v59 + 8))(v45, v60, v46);
  v43 = v77;
  if ((v82 & 1) == 0)
  {
LABEL_9:
    sub_1C59F01FC(v43);
    v19 = *(v43 + 104);
    sub_1C5AE8458(v43, type metadata accessor for CapsuleProgressStyle);
  }

LABEL_10:
  v47 = v72;
  sub_1C59E7D34(v35, v72, &qword_1EC197628, &qword_1C5BE7BE0);
  *(v47 + *(v73 + 36)) = v19;
  v48 = v75;
  sub_1C59E7D34(v47, v75, &qword_1EC197630, &qword_1C5BE7BE8);
  v49 = (v48 + *(v71 + 36));
  *v49 = sub_1C5AE7D88;
  v49[1] = 0;
  sub_1C59F01FC(v43);
  sub_1C5AE8458(v43, type metadata accessor for CapsuleProgressStyle);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v50 = v48;
  v51 = v76;
  sub_1C59E7D34(v50, v76, &qword_1EC197638, &qword_1C5BE7BF0);
  v52 = (v51 + *(v74 + 36));
  v53 = v83;
  *v52 = v82;
  v52[1] = v53;
  v52[2] = v84;
  sub_1C59F01FC(v43);
  v77 = *(v43 + 8);
  v75 = *(v43 + 24);
  sub_1C5AE8458(v43, type metadata accessor for CapsuleProgressStyle);
  LOBYTE(v47) = sub_1C5BC9894();
  v54 = v78;
  sub_1C59E7D34(v51, v78, &qword_1EC197640, &qword_1C5BE7BF8);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197650, &unk_1C5BE7C18) + 36);
  *v55 = v47;
  *(v55 + 24) = v75;
  result = *&v77;
  *(v55 + 8) = v77;
  *(v55 + 40) = 0;
  return result;
}

double sub_1C5AE73BC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59F01FC(v4);
  v5 = *(v4 + 6);

  sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
  sub_1C59F01FC(v4);
  v6 = v4[64];
  sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
  if (v6 == 1)
  {
    sub_1C59F01FC(v4);
    v7 = *(v4 + 7);

    sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
    sub_1C59F01FC(v4);
    v8 = *(v4 + 9);
    sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
    *&v14 = v7;
    *(&v14 + 1) = v8;
    v15 = 0;
  }

  else
  {
    v14 = xmmword_1C5BDB910;
    v15 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197678, &qword_1C5BE7C48);
  sub_1C5AE9794();
  sub_1C5BC92C4();
  v9 = v16;
  v10 = v17;
  v13 = v16;
  *a1 = v5;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;

  v11 = v13;
  sub_1C5AE98D8(v13, *(&v13 + 1), v10);
  sub_1C599ACD8(v11, *(&v11 + 1), v10);

  return result;
}

uint64_t sub_1C5AE7590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00, &qword_1C5BE7820);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1C59400B0(a1, v9, &unk_1EC192F00, &qword_1C5BE7820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C5AE9678(v9, v15, type metadata accessor for CapsuleProgressStyle);
  }

  else
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v17 = v15[64];
  result = sub_1C5AE8458(v15, type metadata accessor for CapsuleProgressStyle);
  if (v17)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_1C59F01FC(v12);
    v19 = *(v12 + 7);

    sub_1C5AE8458(v12, type metadata accessor for CapsuleProgressStyle);
    sub_1C59F01FC(v12);
    v20 = *(v12 + 9);
    result = sub_1C5AE8458(v12, type metadata accessor for CapsuleProgressStyle);
  }

  v21 = v23;
  *v23 = v19;
  v21[1] = v20;
  return result;
}

uint64_t sub_1C5AE7860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197658, &qword_1C5BE7C28);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00, &qword_1C5BE7820);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_1C59400B0(a1, v12, &unk_1EC192F00, &qword_1C5BE7820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C5AE9678(v12, v15, type metadata accessor for CapsuleProgressStyle);
  }

  else
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v17 = *(v15 + 12);

  sub_1C5AE8458(v15, type metadata accessor for CapsuleProgressStyle);
  if (v17)
  {
    v18 = v37 + *(type metadata accessor for CapsuleProgress(0) + 32);
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    *&v43 = v19;
    BYTE8(v43) = v20;
    *&v44 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
    sub_1C5BCA694();
    if ((v42 & 1) == 0)
    {
      v25 = v41;
      v26 = *MEMORY[0x1E697F468];
      v27 = sub_1C5BC9044();
      (*(*(v27 - 8) + 104))(v5, v26, v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197660, &qword_1C5BE7C30);
      *&v5[*(v28 + 52)] = v17;
      *&v5[*(v28 + 56)] = 256;

      sub_1C5BCAA54();
      sub_1C5BC85D4();
      v29 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197668, &qword_1C5BE7C38) + 36)];
      v30 = v44;
      *v29 = v43;
      *(v29 + 1) = v30;
      *(v29 + 2) = v45;
      *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197670, &qword_1C5BE7C40) + 36)] = xmmword_1C5BE75E0;
      sub_1C5AE66FC();
      v32 = v31;

      v34 = v39;
      v33 = v40;
      v35 = &v5[*(v39 + 36)];
      *v35 = v25 * v32;
      *(v35 + 1) = 0;
      sub_1C59E7D34(v5, v33, &qword_1EC197658, &qword_1C5BE7C28);
      v24 = v34;
      v23 = v33;
      v22 = 0;
      return (*(v38 + 56))(v23, v22, 1, v24);
    }
  }

  v22 = 1;
  v24 = v39;
  v23 = v40;
  return (*(v38 + 56))(v23, v22, 1, v24);
}

uint64_t sub_1C5AE7D08(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CapsuleProgress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880, &unk_1C5BE1050);
  return sub_1C5BCA6A4();
}

void *sub_1C5AE7DB0()
{
  sub_1C5AE8404();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5AE7DF8(uint64_t a1)
{
  v2 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C5AE8560(a1, &v9 - v6, type metadata accessor for CapsuleProgressStyle);
  sub_1C5AE8560(v7, v4, type metadata accessor for CapsuleProgressStyle);
  sub_1C5AE8404();
  sub_1C5BC8F54();
  return sub_1C5AE8458(v7, type metadata accessor for CapsuleProgressStyle);
}

uint64_t sub_1C5AE7F04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190868 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CapsuleProgressStyle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC1A6D10);
  return sub_1C5AE8560(v3, a1, type metadata accessor for CapsuleProgressStyle);
}

uint64_t sub_1C5AE7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59AEC40();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5AE7FE8()
{
  v0 = type metadata accessor for CapsuleProgressStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6D10);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6D10);
  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v2 = objc_opt_self();

  v3 = [v2 systemGrayColor];
  v6 = sub_1C5BCA424();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v4 = [v2 systemFillColor];
  sub_1C5BCA424();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  *(v1 + 104) = 0x3FD0000000000000;
  sub_1C5BC7AF4();
  *v1 = xmmword_1C5BE75F0;
  *(v1 + 16) = xmmword_1C5BE7600;
  *(v1 + 32) = xmmword_1C5BE5090;
  *(v1 + 64) = 1;
  sub_1C59E6BD4();
  *(v1 + 48) = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  *(v1 + 56) = result;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  return result;
}

uint64_t sub_1C5AE821C()
{
  v0 = type metadata accessor for CapsuleProgressStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6D28);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6D28);
  sub_1C5BCA494();
  v5 = sub_1C5BCA4C4();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v2 = objc_opt_self();

  v3 = [v2 systemFillColor];
  sub_1C5BCA424();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  *(v1 + 104) = 0x3FD0000000000000;
  sub_1C5BC7AF4();
  *v1 = 0x4030000000000000;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0x3FF0CCCCCCCCCCCDLL;
  *(v1 + 64) = 1;
  sub_1C59E6BD4();
  *(v1 + 48) = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  *(v1 + 56) = result;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  return result;
}

unint64_t sub_1C5AE8404()
{
  result = qword_1EC197520;
  if (!qword_1EC197520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197520);
  }

  return result;
}

uint64_t sub_1C5AE8458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C5AE84B8()
{
  result = qword_1EC197538;
  if (!qword_1EC197538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197538);
  }

  return result;
}

uint64_t sub_1C5AE8518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5AE8560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C5AE85C8()
{
  result = qword_1EDA464B8;
  if (!qword_1EDA464B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197568, &unk_1C5BE78A8);
    sub_1C5AE8680();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80, &qword_1C5BD6C60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464B8);
  }

  return result;
}

unint64_t sub_1C5AE8680()
{
  result = qword_1EDA465C8;
  if (!qword_1EDA465C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F58, &unk_1C5BE28A0);
    sub_1C5924F54(&qword_1EDA466D8, &qword_1EC197570, &qword_1C5BE78B8, MEMORY[0x1E697BF38]);
    sub_1C5924F54(&qword_1EDA460A0, &qword_1EC195F60, &unk_1C5BE78C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465C8);
  }

  return result;
}

void sub_1C5AE87AC(uint64_t a1)
{
  sub_1C5AE8BA4(319, &qword_1EC197590, &type metadata for CapsuleProgressStyle.Thumb, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C5BC7B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5AE8890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5AE88D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1C5AE8960(uint64_t a1)
{
  sub_1C5AE8BA4(319, &qword_1EDA45FA0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1C5AE8BA4(319, &qword_1EDA46AC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5AE8DF0(319, &qword_1EC192F90, &qword_1EC192D80, &qword_1C5BD6F68, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5AE8BA4(319, &qword_1EDA45FF8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1C5AE8DF0(319, &qword_1EC1975A0, &qword_1EC197528, &qword_1C5BE77B0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1C5AE8BA4(319, &qword_1EC1975A8, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1C5AE8D9C(319, &qword_1EDA46758, MEMORY[0x1E697E7E0]);
              if (v7 <= 0x3F)
              {
                sub_1C5AE8BA4(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
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

void sub_1C5AE8BA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5AE8C1C(uint64_t a1)
{
  sub_1C5AE8D9C(319, &qword_1EC1975C8, type metadata accessor for CapsuleProgressStyle);
  if (v1 <= 0x3F)
  {
    sub_1C5AE8BA4(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1C5AE8D9C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
      if (v3 <= 0x3F)
      {
        sub_1C5AE8BA4(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C5AE8DF0(319, &qword_1EDA45FF0, &qword_1EC195790, &qword_1C5BE0E40, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C5AE8D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5AE8DF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1C5AE8E58()
{
  result = qword_1EC1975D0;
  if (!qword_1EC1975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1975D0);
  }

  return result;
}

double sub_1C5AE8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C5AE8F1C()
{
  result = qword_1EC197610;
  if (!qword_1EC197610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1975D8, &qword_1C5BE7B90);
    sub_1C5AE8FD4();
    sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0, &qword_1C5BDA520, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197610);
  }

  return result;
}

unint64_t sub_1C5AE8FD4()
{
  result = qword_1EDA464D0;
  if (!qword_1EDA464D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197608, &unk_1C5BE7BC0);
    sub_1C5AE908C();
    sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464D0);
  }

  return result;
}

unint64_t sub_1C5AE908C()
{
  result = qword_1EDA465F8;
  if (!qword_1EDA465F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197600, &qword_1C5BE7BB8);
    sub_1C5924F54(&qword_1EDA46268, &qword_1EC1975F8, &qword_1C5BE7BB0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465F8);
  }

  return result;
}

uint64_t sub_1C5AE9144()
{
  v1 = type metadata accessor for DraggableViewModifier(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v3 + 64);
  v5 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v6 = *(v5 + 48);
  if (v6)
  {
    return v6(*(v5 + v4));
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for DraggableViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 48))
  {
  }

  v3 = v2 + v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530, &qword_1C5BE77B8);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v4 + 48);
    v6 = sub_1C5BC7AC4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598, &unk_1C5BE79C0);

  v7 = v2 + v1[10];
  sub_1C5AE8EE4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8, &qword_1C5BE77F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C5BC89D4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

void sub_1C5AE93F8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DraggableViewModifier(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C5AE4C28(a1, a2, v6);
}

unint64_t sub_1C5AE9478()
{
  result = qword_1EDA46AB8;
  if (!qword_1EDA46AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790, &qword_1C5BE0E40);
    sub_1C59AEC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46AB8);
  }

  return result;
}

void sub_1C5AE94FC(double a1, double a2)
{
  type metadata accessor for DraggableViewModifier(0);

  sub_1C5AE641C(a1, a2);
}

uint64_t sub_1C5AE95D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DraggableViewModifier(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1C5AE9678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AE970C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1C5AE9794()
{
  result = qword_1EC197680;
  if (!qword_1EC197680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197678, &qword_1C5BE7C48);
    sub_1C5AE9820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197680);
  }

  return result;
}

unint64_t sub_1C5AE9820()
{
  result = qword_1EC197688;
  if (!qword_1EC197688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197690, &unk_1C5BE7C50);
    sub_1C59CD938();
    sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197688);
  }

  return result;
}

double sub_1C5AE98D8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C5AE98E4()
{
  result = qword_1EC1976A8;
  if (!qword_1EC1976A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197650, &unk_1C5BE7C18);
    sub_1C5AE9970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976A8);
  }

  return result;
}

unint64_t sub_1C5AE9970()
{
  result = qword_1EC1976B0;
  if (!qword_1EC1976B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197640, &qword_1C5BE7BF8);
    sub_1C5AE99FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976B0);
  }

  return result;
}

unint64_t sub_1C5AE99FC()
{
  result = qword_1EC1976B8;
  if (!qword_1EC1976B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197638, &qword_1C5BE7BF0);
    sub_1C5AE9A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976B8);
  }

  return result;
}

unint64_t sub_1C5AE9A88()
{
  result = qword_1EC1976C0;
  if (!qword_1EC1976C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197630, &qword_1C5BE7BE8);
    sub_1C5AE9B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976C0);
  }

  return result;
}

unint64_t sub_1C5AE9B14()
{
  result = qword_1EC1976C8;
  if (!qword_1EC1976C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197628, &qword_1C5BE7BE0);
    sub_1C5AE9BCC();
    sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0, &qword_1C5BDA520, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976C8);
  }

  return result;
}

unint64_t sub_1C5AE9BCC()
{
  result = qword_1EC1976D0;
  if (!qword_1EC1976D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197620, &qword_1C5BE7BD8);
    sub_1C5AE9C84();
    sub_1C5924F54(&qword_1EC197730, &qword_1EC197648, &qword_1C5BE7C10, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976D0);
  }

  return result;
}

unint64_t sub_1C5AE9C84()
{
  result = qword_1EC1976D8;
  if (!qword_1EC1976D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197618, &qword_1C5BE7BD0);
    sub_1C5AE9D3C();
    sub_1C5924F54(&qword_1EC192528, &qword_1EC1924E0, &qword_1C5BD4CF8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976D8);
  }

  return result;
}

unint64_t sub_1C5AE9D3C()
{
  result = qword_1EC1976E0;
  if (!qword_1EC1976E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1976E8, &qword_1C5BE7C68);
    sub_1C5AE9DF4();
    sub_1C5924F54(&qword_1EC197720, &qword_1EC197728, &qword_1C5BE7C88, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976E0);
  }

  return result;
}

unint64_t sub_1C5AE9DF4()
{
  result = qword_1EC1976F0;
  if (!qword_1EC1976F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1976F8, &qword_1C5BE7C70);
    sub_1C5924F54(&qword_1EC197700, &qword_1EC197708, &qword_1C5BE7C78, MEMORY[0x1E697DDD0]);
    sub_1C5924F54(&qword_1EC197710, &qword_1EC197718, &qword_1C5BE7C80, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1976F0);
  }

  return result;
}

uint64_t ScopeBarItemRepresentable.buttonAutomationID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  v2 = sub_1C5BCAEB4();
  v4 = v3;

  v8[0] = 32;
  v8[1] = 0xE100000000000000;
  v7[2] = v8;
  v8[0] = sub_1C5AF0AC8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C5AF6480, v7, v2, v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197738, &unk_1C5BE7CE0);
  sub_1C5AF7558(&qword_1EDA45EA8, &qword_1EC197738, &unk_1C5BE7CE0);
  sub_1C5AF64D8();
  v5 = sub_1C5BCB024();

  return v5;
}

void *ScopeBar.__allocating_init(scopes:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = v3;

  sub_1C5AEE1D0();

  return v5;
}

id ScopeBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1C5AEA104(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = [v3 isHidden];
  v11 = type metadata accessor for ScopeBar(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v10);
  if (v9)
  {
    v14.receiver = v3;
    v14.super_class = v11;
    return objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a1, a2, a3);
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = v11;
    result = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
    if (result)
    {
      v13 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

id sub_1C5AEA224(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_1C5AEA104(a5, a2, a3);

  return v11;
}

void sub_1C5AEA2D4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x60));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1C5AEA33C(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1C5AEA370(void *a1, double a2, double a3, double a4, double a5)
{
  v12 = a1;
  sub_1C5AEA3E8(a2, a3, a4, a5, v12, v9, v10, v11);
}

void sub_1C5AEA3E8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v23.receiver = v8;
  v23.super_class = v13;
  objc_msgSendSuper2(&v23, sel_contentInset);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22.receiver = v8;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, sel_setContentInset_, a1, a2, a3, a4);
  sub_1C5AEA4DC(v15, v17, v19, v21);
}

void sub_1C5AEA4DC(double a1, double a2, double a3, double a4)
{
  [v4 contentInset];
  if (v12 != a1 || v9 != a2 || v10 != a3 || v11 != a4)
  {
    sub_1C5AEF524(0);

    sub_1C5925198();
  }
}

double sub_1C5AEA55C(void *a1)
{
  v1 = a1;
  sub_1C5AEA5A0();
  v3 = v2;

  return v3;
}

void sub_1C5AEA5A0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = *(v0 + v2[22]);
  if (v3 >> 62)
  {
    v4 = sub_1C5BCB984();
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  if (v4 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v22 = v0;
  v23 = v3 & 0xC000000000000001;

  v5 = 0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v3;
  do
  {
    if (v23)
    {
      v9 = MEMORY[0x1C694FD20](v5, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v5 + 32);
    }

    v10 = v9;
    ++v5;
    [v9 intrinsicContentSize];
    v12 = v11;
    v14 = v13;
    v15 = v2[10];
    v16 = v2[11];
    sub_1C59253A4(v24);
    v18 = type metadata accessor for ScopeBar.Specs(0, v15, v16, v17);
    v19 = *(*(v18 - 8) + 8);
    v19(v24, v18);
    v6 = v6 + v12 - (v25 + v26);
    sub_1C59253A4(v27);
    v19(v27, v18);

    if (v7 > v14)
    {
      v20 = v7;
    }

    else
    {
      v20 = v14;
    }

    if (v20 > v28)
    {
      v7 = v20;
    }

    else
    {
      v7 = v28;
    }

    v3 = v8;
  }

  while (v4 != v5);

  v0 = v22;
  v1 = MEMORY[0x1E69E7D40];
LABEL_17:
  v21 = *(v0 + *((*v1 & *v0) + 0xB0));
  if (!(v21 >> 62))
  {
    if (!__OFSUB__(*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
    {
      return;
    }

    goto LABEL_22;
  }

  if (__OFSUB__(sub_1C5BCB984(), 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

double sub_1C5AEA908(void *a1)
{
  v1 = a1;
  sub_1C5AEA830();
  v3 = v2;

  return v3;
}

void sub_1C5AEA95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ScopeBar(0, v5, v6, a4);
  objc_msgSendSuper2(&v13, sel_tintColorDidChange);
  v7 = sub_1C5AECC64();
  sub_1C59253A4(v14);
  v8 = v15;
  v10 = type metadata accessor for ScopeBar.Specs(0, v5, v6, v9);
  v11 = *(*(v10 - 8) + 8);
  v12 = v8;
  v11(v14, v10);
  [v7 setBackgroundColor_];
}

void sub_1C5AEAA70(void *a1)
{
  v4 = a1;
  sub_1C5AEA95C(v4, v1, v2, v3);
}

id sub_1C5AEAAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v15.receiver = v4;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, sel_layoutMarginsDidChange);
  v7 = (v4 + *((*v5 & *v4) + 0x70));
  swift_beginAccess();
  if (v7[4])
  {
    [v4 layoutMargins];
    v9 = v8;
    [v4 layoutMargins];
    v11 = v9;
    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    v13 = v7[2];
    v10 = v7[3];
    v12 = *v7;
    v11 = v7[1];
  }

  return [v4 setContentInset_];
}

void sub_1C5AEABBC(void *a1)
{
  v4 = a1;
  sub_1C5AEAAB8(v4, v1, v2, v3);
}

uint64_t sub_1C5AEAC04(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  v6 = type metadata accessor for ScopeBar(0, *(v3 + 80), *(v3 + 88), v4);
  v7.receiver = v1;
  v7.super_class = v6;
  return objc_msgSendSuper2(&v7, sel_touchesShouldCancelInContentView_, a1);
}

uint64_t sub_1C5AEACB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1C5AEAC04(v4);

  return a1 & 1;
}

uint64_t ScopeBar.ContentLayoutMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AEAD98(uint64_t a1)
{
  sub_1C5BCBF54();
  ScopeBar.ContentLayoutMode.hash(into:)();
  return sub_1C5BCBF94();
}

BOOL static ScopeBar.ContentInsetMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
}

uint64_t ScopeBar.ContentInsetMode.hash(into:)()
{
  if (*(v0 + 32))
  {
    return MEMORY[0x1C69501A0](0);
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *v0;
  v4 = *(v0 + 8);
  MEMORY[0x1C69501A0](1);

  return UIEdgeInsets.hash(into:)(v5, v4, v3, v2);
}

uint64_t ScopeBar.ContentInsetMode.hashValue.getter()
{
  sub_1C5BCBF54();
  ScopeBar.ContentInsetMode.hash(into:)();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AEAF10(uint64_t a1)
{
  sub_1C5BCBF54();
  ScopeBar.ContentInsetMode.hash(into:)();
  return sub_1C5BCBF94();
}

id sub_1C5AEAF50()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  swift_beginAccess();
  if (v1[4])
  {
    [v0 layoutMargins];
    v3 = v2;
    [v0 layoutMargins];
    v5 = v3;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v7 = v1[2];
    v4 = v1[3];
    v6 = *v1;
    v5 = v1[1];
  }

  return [v0 setContentInset_];
}

__n128 sub_1C5AEB008@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v4 = v3[32];
  result = *v3;
  v6 = *(v3 + 1);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

id sub_1C5AEB07C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v4[32] = v3;
  return sub_1C5AEAF50();
}

id (*sub_1C5AEB0FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C5AEB17C;
}

id sub_1C5AEB17C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C5AEAF50();
  }

  return result;
}

void sub_1C5AEB1B0(_BYTE *a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void (*sub_1C5AEB220(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1C5AEB2D0;
}

void sub_1C5AEB2D0(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1C5926248(v3);

  free(v2);
}

double sub_1C5AEB330()
{
  sub_1C5AF6554();

  return result;
}

void (*sub_1C5AEB358(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1C5AEB410;
}

void sub_1C5AEB410(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_1C5925C58(v4);
  }

  else
  {
    sub_1C5925C58(v3);
  }

  free(v2);
}

uint64_t sub_1C5AEB474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v12 = *(a1 + a2 - 16);
  v4 = sub_1C5AF6E78();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v5 = v7;
    v9 = v8;
    v4 = v6;
    *(v9 + 16) = v12;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    v10 = sub_1C5AF74B0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_1C5974668(v4, v5);
}

uint64_t sub_1C5AEB524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_1C5AF7478;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_1C5974668(v4, v5);
  return sub_1C59279D0(v8, v7);
}

uint64_t sub_1C5AEB5C0()
{
  v0 = sub_1C5AF6E78();
  sub_1C5974668(v0, v1);
  return v0;
}

uint64_t sub_1C5AEB670@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1C5AF6EDC();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_1C5AF7448;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_1C5974668(v2, v3);
}

uint64_t sub_1C5AEB704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C5AF740C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C5974668(v1, v2);
  return sub_1C5AEB7C8(v4, v3);
}

uint64_t sub_1C5AEB794()
{
  v0 = sub_1C5AF6EDC();
  sub_1C5974668(v0, v1);
  return v0;
}

uint64_t sub_1C5AEB7C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1C59261FC(v6, v7);
}

uint64_t sub_1C5AEB8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C5BCB804();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_1C5AEB990(v8);
}

uint64_t sub_1C5AEB990(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_1C5AEBA58(unint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v52[-1] - v8;
  v13 = *(v12 + *((v11 & v10) + 0xB0));
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = v7;

    v15 = MEMORY[0x1C694FD20](a1, v13);

    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = v7;
  v15 = *(v13 + 8 * a1 + 32);
LABEL_5:
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  swift_beginAccess();

  sub_1C5BCB174();

  v24 = *(v4 + 88);
  v25 = sub_1C5AF66C4(v9, v5, v24);
  (*(v6 + 8))(v9, v5);
  sub_1C59253A4(v53);
  v26 = v53[6];
  v28 = type metadata accessor for ScopeBar.Specs(0, v5, v24, v27);
  v29 = *(*(v28 - 8) + 8);
  v30 = v26;
  v29(v53, v28);
  [v25 setTitleColor:v30 forState:2];

  sub_1C59253A4(v54);
  v29(v54, v28);
  if ((v55 & 1) == 0)
  {
    v31 = *&v54[1];
    v32 = [v25 titleLabel];
    if (v32)
    {
      v33 = v32;
      sub_1C59253A4(v56);
      v34 = v56[0];
      v29(v56, v28);
      v35 = sub_1C5A12D48(v31);

      [v33 setFont_];
    }
  }

  [v25 setEnabled_];
  v36 = v25;
  [v36 setAccessibilityIdentifier_];
  v37 = sub_1C5AECC64();
  [a2 convertRect:v37 toCoordinateSpace:{v17, v19, v21, v23}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [v36 setFrame_];
  [*(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xC0)) addSubview_];
  if (v14)
  {
    v46 = objc_opt_self();
    v47 = swift_allocObject();
    *(v47 + 16) = v36;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1C5AF74DC;
    *(v48 + 24) = v47;
    v52[4] = sub_1C59A57A4;
    v52[5] = v48;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 1107296256;
    v52[2] = sub_1C59D32C0;
    v52[3] = &block_descriptor_58_0;
    v49 = _Block_copy(v52);
    v50 = v36;

    [v46 performWithoutAnimation_];
    _Block_release(v49);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if (v46)
    {
      goto LABEL_14;
    }
  }
}

void sub_1C5AEBFC8(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v5 = a5;
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v9 = sub_1C5BCB804();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = swift_projectBox();
  v14 = sub_1C5AECC64();
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  if ((*(*(v8 - 8) + 48))(v12, 1, v8) == 1)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  (*(v10 + 8))(v12, v9);
  [v14 setAlpha_];

  sub_1C5AEDC0C();
  sub_1C5AEF7CC(a3, a4 & 1, v5);
}

void sub_1C5AEC194(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_1C5AEBFC8(a1, a2, a3, a4 & 1, a5);
  v8 = 1 << *(a6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (!v10)
  {
    while (1)
    {
LABEL_4:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(a6 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_8;
      }
    }

    return;
  }

  while (1)
  {
LABEL_8:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v15 = *(*(a6 + 48) + v14);
    v16 = *(*(a6 + 56) + v14);
    v17 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0));
    if ((v17 & 0xC000000000000001) != 0)
    {
      v38 = v16;

      v20 = MEMORY[0x1C694FD20](v15, v17);

      goto LABEL_12;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v18 = *(v17 + 8 * v15 + 32);
    v19 = v16;
    v20 = v18;
LABEL_12:
    v10 &= v10 - 1;
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = sub_1C5AECC64();
    [a1 convertRect:v29 toCoordinateSpace:{v22, v24, v26, v28}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    [v16 setFrame_];
    if (!v10)
    {
      goto LABEL_4;
    }
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C5AEC3B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a4;
  v6 = *MEMORY[0x1E69E7D40];
  v47 = *MEMORY[0x1E69E7D40] & *a4;
  v54 = a4;
  v57 = *(*((v6 & v5) + 0x50) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v46 - v7;
  v52 = v8;
  v9 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v46 - v10;
  v12 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v46 - v20;
  v53 = swift_projectBox();
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_9:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      [*(*(a2 + 56) + ((v26 << 9) | (8 * v27))) removeFromSuperview];
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(a2 + 64 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v28 = *(v12 + 16);
  v29 = v55;
  v28();
  v30 = v58;
  sub_1C5926100(v58);
  v31 = *(TupleTypeMetadata2 + 48);
  (v28)(v11, v29, v9);
  (v28)(&v11[v31], v30, v9);
  v32 = v11;
  v33 = *(v57 + 48);
  v34 = v52;
  v35 = (v33)(v32, 1, v52);
  v48 = v28;
  if (v35 == 1)
  {
    v36 = *(v12 + 8);
    v36(v58, v9);
    v36(v29, v9);
    if ((v33)(&v32[v31], 1, v34) == 1)
    {
      v50 = v33;
      v36(v32, v9);
      goto LABEL_19;
    }

LABEL_16:
    v50[1](v32, TupleTypeMetadata2);
    return;
  }

  (v28)(v51, v32, v9);
  if ((v33)(&v32[v31], 1, v34) == 1)
  {
    v37 = *(v12 + 8);
    v37(v58, v9);
    v37(v55, v9);
    (*(v57 + 8))(v51, v34);
    goto LABEL_16;
  }

  v50 = v33;
  TupleTypeMetadata2 = v12;
  v38 = v57;
  v39 = v46;
  (*(v57 + 32))(v46, &v32[v31], v34);
  v40 = v51;
  LODWORD(v47) = sub_1C5BCADB4();
  v41 = *(v38 + 8);
  v41(v39, v34);
  v36 = *(TupleTypeMetadata2 + 8);
  TupleTypeMetadata2 += 8;
  v36(v58, v9);
  v36(v55, v9);
  v41(v40, v34);
  v36(v32, v9);
  if (v47)
  {
    v34 = v52;
LABEL_19:
    v42 = sub_1C5AECC64();
    v43 = v53;
    swift_beginAccess();
    v44 = v49;
    (v48)(v49, v43, v9);
    v45 = (v50)(v44, 1, v34) == 1;
    v36(v44, v9);
    [v42 setHidden_];
  }
}

double sub_1C5AECA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1C5AECA68(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1C5BCAE74();
  v8 = v7;
  if (v6 == sub_1C5BCAE74() && v8 == v9)
  {

LABEL_8:
    v12 = [v1 traitCollection];
    v13 = [v12 legibilityWeight];

    if (v13 == [a1 legibilityWeight])
    {
      return;
    }

    goto LABEL_9;
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:

  sub_1C5AECE9C();
}

double sub_1C5AECC00(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) = a1;

  return result;
}

id sub_1C5AECC64()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_1C5AECCE4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C5AECCE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  sub_1C59253A4(v13);
  v7 = v14;
  v9 = type metadata accessor for ScopeBar.Specs(0, v5, v6, v8);
  v10 = *(*(v9 - 8) + 8);
  v11 = v7;
  v10(v13, v9);
  [v4 setBackgroundColor_];

  [v4 setHidden_];
  [v4 setClipsToBounds_];
  [v4 setUserInteractionEnabled_];
  [a1 addSubview_];
  return v4;
}

void sub_1C5AECE9C()
{
  v1 = sub_1C5BCAC14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7D40];
  if ((*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8)) & 1) == 0)
  {
    v11 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
    if (v11 >> 62)
    {
      v16 = v7;
      v17 = sub_1C5BCB984();
      v7 = v16;
      if (!v17)
      {
        return;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    *(v0 + *((*v10 & *v0) + 0xC8)) = 1;
    v19 = v7;
    sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
    v18 = sub_1C5BCB5A4();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    aBlock[4] = sub_1C5AF74EC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C596D09C;
    aBlock[3] = &block_descriptor_64;
    v13 = _Block_copy(aBlock);
    v14 = v0;

    sub_1C5BCAC34();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C5AF7510(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
    sub_1C5AF7558(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0);
    sub_1C5BCB8F4();
    v15 = v18;
    MEMORY[0x1C694F7F0](0, v9, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v19);
  }
}

void sub_1C5AED234()
{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8)) != 1)
  {
    return;
  }

  v26 = [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  [v0 adjustedContentInset];
  v4 = v3;
  Height = v5;
  v28[0] = 0.0;
  v28[1] = 0.0;
  v7 = *(v0 + *((*v1 & *v0) + 0xB0));
  if (v7 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C5BCB984())
  {

    if (i)
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C694FD20](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_51;
        }

        v29 = v10;
        sub_1C5AED67C(&v29, v0, v28);

        ++v9;
        if (v12 == i)
        {
          v13 = v28[0];
          goto LABEL_14;
        }
      }
    }

    v13 = 0.0;
LABEL_14:
    v4 = Width - (v4 + Height);

    Width = v13 - *(v0 + *((*v1 & *v0) + 0xA0));
    v14 = *((*v1 & *v0) + 0x78);
    swift_beginAccess();
    if (*(v0 + v14) != 1 || Width >= v4)
    {
      goto LABEL_31;
    }

    v7 = *(v0 + *((*v1 & *v0) + 0xB0));
    v16 = v7 >> 62 ? sub_1C5BCB984() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v16)
    {
      break;
    }

    v17 = 0;
    Height = (v4 - Width) * 0.5;
    v1 = (v7 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v18 = MEMORY[0x1C694FD20](v17, v7);
      }

      else
      {
        if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v18 = *(v7 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      [v19 setFrame_];

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_30;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

LABEL_30:

  v1 = MEMORY[0x1E69E7D40];
LABEL_31:
  if (v26 != 1)
  {
    goto LABEL_46;
  }

  if (v4 <= Width)
  {
    v4 = Width;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v31);
  v22 = *(v0 + *((*v1 & *v0) + 0xB0));
  if (v22 >> 62)
  {
    v7 = sub_1C5BCB984();
  }

  else
  {
    v7 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    while (!__OFSUB__(v7--, 1))
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1C694FD20](v7, v22);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v7 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v24 = *(v22 + 32 + 8 * v7);
      }

      v25 = v24;
      v27[0] = v24;
      sub_1C5AEDAEC(v27, v0, 0.0, 0.0, v4, Height);

      if (!v7)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_45:

LABEL_46:
  sub_1C5AEDC0C();
  [v0 setContentSize_];
  *(v0 + *((*v1 & *v0) + 0xC8)) = 0;
}

double sub_1C5AED67C(id *a1, uint64_t *a2, double *a3)
{
  v4 = *a2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *a1;
  [*a1 frame];
  v8 = v7;
  v10 = v9;
  v11 = *((v5 & v4) + 0x50);
  v12 = *((v5 & v4) + 0x58);
  sub_1C59253A4(v58);
  v14 = type metadata accessor for ScopeBar.Specs(0, v11, v12, v13);
  v15 = *(*(v14 - 8) + 8);
  v15(v58, v14);
  if (v60)
  {
    [v6 intrinsicContentSize];
    recta = v16;
    v52 = v17;
    sub_1C59253A4(v65);
    v15(v65, v14);
    *&v18.f64[0] = v52;
    v18.f64[1] = recta;
    rect = vsubq_f64(vsubq_f64(v18, v66), v67);
  }

  else
  {
    v19 = v59;
    v20 = [v6 titleLabel];
    v21 = 0x1FAAB1000;
    v53 = v6;
    if (v20)
    {
      v22 = v20;
      sub_1C59253A4(v61);
      v23 = v15;
      v24 = v61[0];
      v23(v61, v14);
      v25 = sub_1C5A12D48(v19);

      v15 = v23;
      v21 = &off_1E822B000;
      [v22 setFont_];

      v6 = v53;
    }

    [v6 intrinsicContentSize];
    rectb = v26;
    v52 = v27;
    sub_1C59253A4(v62);
    v15(v62, v14);
    *&v28.f64[0] = v52;
    v28.f64[1] = rectb;
    rect = vsubq_f64(vsubq_f64(v28, v63), v64);
    v29 = [v6 titleLabel];
    v30 = v15;
    if (v29)
    {
      v31 = v29;
      sub_1C59253A4(v65);
      v32 = v21;
      v33 = v65[0];
      v30(v65, v14);
      [v31 v32 + 1144];
    }

    v6 = v53;
    v15 = v30;
  }

  sub_1C59253A4(v68);
  v15(v68, v14);
  v34 = v69;
  v70.size.height = rect.f64[0];
  v70.origin.x = v8;
  v70.origin.y = v10;
  v70.size.width = rect.f64[1];
  Height = CGRectGetHeight(v70);
  if (v34 > Height)
  {
    Height = v34;
  }

  rect.f64[0] = Height;
  v36 = *a3;
  [a2 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [a2 traitCollection];
  [v45 displayScale];
  v47 = v46;

  v71.origin.x = v38;
  v71.origin.y = v40;
  v71.size.width = v42;
  v71.size.height = v44;
  MinY = CGRectGetMinY(v71);
  v72.origin.x = v38;
  v72.origin.y = v40;
  v72.size.width = v42;
  v72.size.height = v44;
  v49 = CGRectGetHeight(v72);
  v73.origin.y = 0.0;
  v73.origin.x = v36;
  v73.size.width = rect.f64[1];
  v73.size.height = rect.f64[0];
  v50 = CGRectGetHeight(v73);
  [v6 setFrame_];
  [v6 layoutIfNeeded];
  v74.origin.y = 0.0;
  v74.origin.x = v36;
  v74.size.width = rect.f64[1];
  v74.size.height = rect.f64[0];
  result = *a3 + CGRectGetWidth(v74) + *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xA0));
  *a3 = result;
  return result;
}

id sub_1C5AEDAEC(id *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *a1;
  [*a1 frame];
  v13 = v12;
  MinY = v14;
  v17 = v16;
  v19 = v18;
  if ([a2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = v13;
    v25.origin.y = MinY;
    v25.size.width = v17;
    v25.size.height = v19;
    v21 = MaxX - CGRectGetMinX(v25);
    v26.origin.x = v13;
    v26.origin.y = MinY;
    v26.size.width = v17;
    v26.size.height = v19;
    v22 = v21 - CGRectGetWidth(v26);
    v27.origin.x = v13;
    v27.origin.y = MinY;
    v27.size.width = v17;
    v27.size.height = v19;
    MinY = CGRectGetMinY(v27);
    v13 = v22;
  }

  return [v11 setFrame_];
}

void *sub_1C5AEDC0C()
{
  v5 = v0;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v0;
  v8 = *(v7 + 0x50);
  v9 = sub_1C5BCB804();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  sub_1C5926100(v12);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v16, v12, v8);
  v18 = *((*v6 & *v0) + 0x80);
  swift_beginAccess();
  v45[0] = *(v5 + v18);
  sub_1C5BCB144();
  swift_getWitnessTable();
  v19 = *(v7 + 88);
  result = sub_1C5BCB464();
  if (v48)
  {
    return (*(v13 + 8))(v16, v8);
  }

  v20 = v47;
  v21 = *(v5 + *((*v6 & *v5) + 0xB0));
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = MEMORY[0x1C694FD20](v20, v21);

LABEL_8:
    [v22 frame];
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;

    v27 = sub_1C5AECC64();
    [v27 setFrame_];

    v12 = *((*v6 & *v5) + 0xC0);
    v28 = qword_1EDA4E080;
    v21 = *&v12[v5];
    if (v28 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_9:
    v47 = qword_1EDA4E088;
    v48 = byte_1EDA4E090;
    v49 = qword_1EDA4E098;
    UIView.corner.setter(&v47);

    sub_1C59253A4(v45);
    v30 = type metadata accessor for ScopeBar.Specs(0, v8, v19, v29);
    v31 = *(*(v30 - 8) + 8);
    v31(v45, v30);
    if ((v46 & 1) == 0)
    {
      v32 = v45[1];
      v33 = *(v5 + *((*v6 & *v5) + 0xB8));
      if (v33)
      {
        v34 = [v33 titleLabel];
        if (v34)
        {
          v44 = v34;
          sub_1C59253A4(&v47);
          v35 = v47;
          v31(&v47, v30);
          v36 = sub_1C5A12D48(v32);

          v37 = v44;
          [v44 setFont_];
        }
      }
    }

    v38 = *v6 & *v5;
    v39 = *(v5 + *(v38 + 0xB8));
    if (v39)
    {
      v40 = *&v12[v5];
      v41 = v39;
      [v5 convertRect:v40 toCoordinateSpace:{v1, v2, v3, v4}];
      [v41 setFrame_];

      v38 = *v6 & *v5;
    }

    v42 = *(v5 + *(v38 + 184));
    if (v42)
    {
      [v42 layoutIfNeeded];
    }

    [v5 bringSubviewToFront_];
    return (*(v13 + 8))(v16, v8);
  }

  if (v47 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 8 * v47 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1C5AEE1D0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v97 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *((v2 & v1) + 0x50);
  v4 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v105 = TupleTypeMetadata2;
  v106 = v6;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v81 - v7;
  v107 = v4;
  v103 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v102 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v81 - v19;
  v20 = swift_getTupleTypeMetadata2();
  v95 = sub_1C5BCB804();
  v100 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = *(v0 + *((v2 & v1) + 0xB0));
  v26 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v109 = 0;
  v110 = 1;
  v27 = v2 & v1;
  v28 = v20;
  v29 = *(v27 + 128);
  swift_beginAccess();
  v101 = v0;
  aBlock[0] = *(v0 + v29);
  v30 = sub_1C5BCB144();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694F230](&v112, v30, WitnessTable);
  aBlock[6] = v112;
  sub_1C5BCBC24();
  sub_1C5BCBBF4();
  v32 = v24;
  v33 = v96;
  v93 = sub_1C5BCBC14();
  v92 = (v100 + 32);
  v91 = v28 - 8;
  v99 = (v102 + 4);
  v89 = (v102 + 2);
  v88 = (v102 + 7);
  v87 = (v103 + 16);
  v86 = (v102 + 6);
  ++v102;
  v98 = (v103 + 8);
  v82 = (v106 + 8);
  v103 = v15;
  v83 = v10;
  v85 = v28;
  for (i = v32; ; v32 = i)
  {
    v34 = v94;
    sub_1C5BCBC04();
    (*v92)(v32, v34, v95);
    if ((*(*(v28 - 8) + 48))(v32, 1, v28) == 1)
    {
      break;
    }

    v106 = v25;
    v100 = *v32;
    v35 = *(v28 + 48);
    v36 = *v99;
    (*v99)(v33, v32 + v35, v3);
    (*v89)(v15, v33, v3);
    (*v88)(v15, 0, 1, v3);
    v37 = v104;
    sub_1C5926100(v104);
    v38 = *(v105 + 48);
    v39 = *v87;
    v26 = v90;
    v40 = v107;
    (*v87)(v90, v15, v107);
    v39(&v26[v38], v37, v40);
    v41 = *v86;
    if ((*v86)(v26, 1, v3) == 1)
    {
      v42 = *v98;
      v43 = v37;
      v44 = v107;
      (*v98)(v43, v107);
      v42(v15, v44);
      if (v41(&v26[v38], 1, v3) != 1)
      {
        goto LABEL_8;
      }

      v42(v26, v107);
      v25 = v106;
LABEL_10:
      v109 = v100;
      v110 = 0;
      goto LABEL_11;
    }

    v45 = v83;
    v39(v83, v26, v107);
    if (v41(&v26[v38], 1, v3) == 1)
    {
      v46 = *v98;
      v47 = v107;
      (*v98)(v104, v107);
      v46(v103, v47);
      (*v102)(v45, v3);
LABEL_8:
      (*v82)(v26, v105);
      v25 = v106;
      goto LABEL_11;
    }

    v48 = v81;
    v36(v81, &v26[v38], v3);
    v49 = sub_1C5BCADB4();
    v50 = *v102;
    (*v102)(v48, v3);
    v51 = *v98;
    v52 = v107;
    (*v98)(v104, v107);
    v51(v103, v52);
    v50(v45, v3);
    v51(v26, v52);
    v25 = v106;
    if (v49)
    {
      goto LABEL_10;
    }

LABEL_11:
    v53 = v25 >> 62;
    if (v25 >> 62)
    {
      if (!sub_1C5BCB984())
      {
LABEL_20:
        v57 = *(v97 + 88);
        v33 = v96;
        v58 = sub_1C5AF66C4(v96, v3, v57);
        sub_1C592535C(0, &qword_1EDA4E040, 0x1E69DC628);
        v59 = swift_allocObject();
        v60 = v101;
        swift_unknownObjectWeakInit();
        v61 = swift_allocObject();
        v61[2] = v3;
        v61[3] = v57;
        v61[4] = v59;
        v26 = v58;
        v62 = sub_1C5BCB774();
        [v26 addAction:v62 forControlEvents:64];

        [v60 addSubview_];
        v15 = v103;
        v28 = v85;
        goto LABEL_42;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v54 = v25 & 0xC000000000000001;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C694FD20](0, v25);
      v15 = v103;
      v55 = v25 & 0xFFFFFFFFFFFFFF8;
      if (!v53)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = v103;
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v26 = *(v25 + 32);
      v55 = v25 & 0xFFFFFFFFFFFFFF8;
      if (!v53)
      {
LABEL_16:
        if (!*(v55 + 16))
        {
          goto LABEL_56;
        }

        if (!v54)
        {
          v56 = v26;
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    if (!sub_1C5BCB984())
    {
      goto LABEL_55;
    }

    if (!sub_1C5BCB984())
    {
      goto LABEL_57;
    }

    if (!v54)
    {
      v65 = v26;
      goto LABEL_30;
    }

LABEL_25:
    v63 = v26;
    MEMORY[0x1C694FD20](0, v25);
    swift_unknownObjectRelease();
    v55 = v25 & 0xFFFFFFFFFFFFFF8;
    if (!v53)
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

LABEL_27:
      v64 = *(v55 + 16);
      if (!v64)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

LABEL_30:
    if (!sub_1C5BCB984())
    {
      goto LABEL_60;
    }

    if (sub_1C5BCB984() < 1)
    {
      goto LABEL_59;
    }

    v64 = sub_1C5BCB984();
LABEL_33:
    v66 = v64 - 1;
    if (__OFSUB__(v64, 1))
    {
      goto LABEL_54;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v112 = v25;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      v28 = v85;
      if (v53)
      {
LABEL_39:
        sub_1C5BCB984();
      }

LABEL_40:
      v25 = sub_1C5BCBAF4();
      v112 = v25;
      goto LABEL_41;
    }

    v28 = v85;
    if (v53)
    {
      goto LABEL_39;
    }

    if (v66 > *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_40;
    }

LABEL_41:
    sub_1C5AF65B4(0, 1, 0);
    v57 = *(v97 + 88);
    v33 = v96;
LABEL_42:
    (*(v57 + 16))(v3, v57);
    v68 = sub_1C5BCAE44();

    [v26 setTitle:v68 forState:0];

    MEMORY[0x1C694F270]();
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C5BCB094();
    }

    sub_1C5BCB0E4();

    (*v102)(v33, v3);
    v26 = v111;
  }

  if (!(v25 >> 62))
  {
    v69 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v69)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

LABEL_61:
  v69 = sub_1C5BCB984();
  if (!v69)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (v69 < 1)
  {
    goto LABEL_64;
  }

  for (j = 0; j != v69; ++j)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x1C694FD20](j, v25);
    }

    else
    {
      v71 = *(v25 + 8 * j + 32);
    }

    v72 = v71;
    [v71 removeFromSuperview];
  }

LABEL_62:

  v73 = v101;
  v74 = *((*MEMORY[0x1E69E7D40] & *v101) + 0xB0);
  v75 = *(v101 + v74);
  *(v101 + v74) = v26;
  v76 = objc_opt_self();
  v77 = swift_allocObject();
  v77[2] = v73;
  v77[3] = v75;
  v77[4] = &v109;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1C5AF75AC;
  *(v78 + 24) = v77;
  aBlock[4] = sub_1C5AF76A8;
  aBlock[5] = v78;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C59D32C0;
  aBlock[3] = &block_descriptor_74;
  v79 = _Block_copy(aBlock);
  v80 = v73;

  [v76 performWithoutAnimation_];
  _Block_release(v79);
  LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

  if ((v76 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

void sub_1C5AEF034(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([a1 sender])
    {
      sub_1C5BCB8D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      sub_1C592535C(0, &qword_1EDA45D58, 0x1E69DC738);
      if (swift_dynamicCast())
      {
        v10 = v19[1];
        v11 = MEMORY[0x1E69E7D40];
        v12 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xB0));

        v13 = sub_1C5AFB3D0(v10, v12);
        v15 = v14;

        if ((v15 & 1) == 0 && !UIAccessibilityIsVoiceOverRunning())
        {
          v16 = v9 + *((*v11 & *v9) + 0x88);
          swift_beginAccess();
          v17 = *v16;
          if (*v16)
          {
            v18 = *(v16 + 1);
            swift_beginAccess();
            sub_1C5974668(v17, v18);

            sub_1C5BCB174();

            v17(v13, v7);
            sub_1C59261FC(v17, v18);
            (*(v5 + 8))(v7, a3);
          }

          sub_1C5926520(v13, 0, 1);
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1C592BE5C(v22);
    }
  }
}

void sub_1C5AEF304(void *a1, unint64_t a2, uint64_t a3)
{
  sub_1C5AECE9C();
  sub_1C5AED234();
  v6 = MEMORY[0x1E69E7D40];
  v7 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x90));
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    if (a2 >> 62)
    {
      sub_1C5974668(v8, v9);
      sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);

      v12 = sub_1C5BCBBD4();

      a2 = v12;
    }

    else
    {
      sub_1C5974668(*v7, v7[1]);

      sub_1C5BCBE04();
      sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);
    }

    v10 = *(a1 + *((*v6 & *a1) + 0xB0));
    if (v10 >> 62)
    {
      sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);

      v11 = sub_1C5BCBBD4();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1C5BCBE04();
      sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);
      v11 = v10;
    }

    v8(a2, v11);
    sub_1C59261FC(v8, v9);
  }

  sub_1C5AEF7CC(*a3, *(a3 + 8), 1);
}

uint64_t sub_1C5AEF524(int a1)
{
  v2 = v1;
  v16 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  sub_1C5926100(v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v12, v8, v4);
  v14 = *((*v3 & *v1) + 0x80);
  swift_beginAccess();
  v17 = *(v2 + v14);
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB464();
  if (v19 != 1)
  {
    sub_1C5AEF7CC(v18, 0, v16 & 1);
  }

  return (*(v9 + 8))(v12, v4);
}

void sub_1C5AEF7CC(unint64_t a1, char a2, char a3)
{
  if (a2)
  {
    return;
  }

  v5 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0));
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1C694FD20](a1, v5);

    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * a1 + 32);
LABEL_6:
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v3 contentInset];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v3 visibleBounds];
  v47 = v20;
  v48 = v18;
  v25 = UIEdgeInsetsInsetRect(v21, v22, v23, v24, v16, v18);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  rect = v8;
  v51.origin.x = v8;
  v32 = v10;
  v51.origin.y = v10;
  v33 = v12;
  v51.size.width = v12;
  v34 = v14;
  v51.size.height = v14;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = v25;
  v52.origin.y = v27;
  v52.size.width = v29;
  v52.size.height = v31;
  if (MinX >= CGRectGetMinX(v52))
  {
    v54.origin.x = rect;
    v38 = v32;
    v54.origin.y = v32;
    v54.size.width = v33;
    v54.size.height = v34;
    MaxX = CGRectGetMaxX(v54);
    v55.origin.x = v25;
    v55.origin.y = v27;
    v55.size.width = v29;
    v55.size.height = v31;
    if (CGRectGetMaxX(v55) >= MaxX)
    {
      return;
    }

    v56.origin.x = rect;
    v56.origin.y = v38;
    v56.size.width = v33;
    v56.size.height = v34;
    v40 = CGRectGetMaxX(v56);
    v57.origin.x = v25;
    v57.origin.y = v27;
    v57.size.width = v29;
    v57.size.height = v31;
    v36 = v40 - CGRectGetWidth(v57);
    v37 = v47;
  }

  else
  {
    v53.origin.x = rect;
    v53.origin.y = v32;
    v53.size.width = v33;
    v53.size.height = v34;
    v36 = CGRectGetMinX(v53);
    v37 = v48;
  }

  v41 = v36 - v37;
  v58.origin.x = v25;
  v58.origin.y = v27;
  v58.size.width = v29;
  v58.size.height = v31;
  MinY = CGRectGetMinY(v58);
  [v3 contentOffset];
  if (v41 != v44 || MinY != v43)
  {

    [v3 setContentOffset:a3 & 1 animated:{v41, MinY}];
  }
}

void sub_1C5AEFA90(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  sub_1C5AEFAE4(v3, v6, v4, v5);
}

id sub_1C5AEFAE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_setIsAccessibilityElement_, a1 & 1);
}

void sub_1C5AEFB74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  sub_1C5AEFBC8(a3, v6, v4, v5);
}

id sub_1C5AEFBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_setAccessibilityTraits_, a1);
}

uint64_t sub_1C5AEFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_accessibilityLabel);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_1C5BCAE74();

  return v8;
}

void sub_1C5AEFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E7D40] & *v4;
  if (a2)
  {
    v6 = sub_1C5BCAE44();
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for ScopeBar(0, *(v5 + 80), *(v5 + 88), a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, sel_setAccessibilityLabel_, v6);

  sub_1C5AEFDDC();
}

void sub_1C5AEFDDC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = [v0 accessibilityLabel];
  v5 = type metadata accessor for ScopeBar(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  v6.receiver = v0;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, sel_setAccessibilityValue_, v3);
}

id sub_1C5AEFE98(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1C5BCAE44();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C5AEFF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v15.receiver = v4;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, sel_accessibilityValue);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C5BCAE74();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + *((*v5 & *v4) + 0xB8));
  if (v10)
  {
    v11 = v10;

    v12 = [v11 accessibilityLabel];
    if (v12)
    {
      v13 = v12;
      v9 = sub_1C5BCAE74();
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

void sub_1C5AF0064(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1C5BCAE74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void sub_1C5AF00EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E7D40] & *v4;
  if (a2)
  {
    v6 = sub_1C5BCAE44();
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for ScopeBar(0, *(v5 + 80), *(v5 + 88), a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, sel_setAccessibilityValue_, v6);
}

void sub_1C5AF01A0(void *a1)
{
  v1 = a1;
  sub_1C5AF0198();
}

void sub_1C5AF01F0(void *a1)
{
  v1 = a1;
  sub_1C5AF01E8();
}

void sub_1C5AF0238(int a1)
{
  v2 = v1;
  v25 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  sub_1C5926100(v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return;
  }

  (*(v9 + 32))(v14, v8, v4);
  v15 = *((*v3 & *v1) + 0x80);
  swift_beginAccess();
  v26[0] = *(v2 + v15);
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB464();
  if (v28 == 1)
  {
    goto LABEL_4;
  }

  v16 = v27;
  if (v25)
  {
    swift_beginAccess();

    v17 = sub_1C5BCB0F4();

    if (__OFSUB__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v16 < v17 - 1)
    {
      v18 = 1;
      goto LABEL_12;
    }
  }

  else if (v27 > 0)
  {
    v18 = -1;
LABEL_12:
    sub_1C5926520(v16 + v18, 0, 1);
    v19 = v2 + *((*v3 & *v2) + 0x88);
    swift_beginAccess();
    v20 = *v19;
    if (*v19)
    {
      v21 = *(v19 + 1);
      swift_beginAccess();
      sub_1C5974668(v20, v21);

      v22 = v24;
      sub_1C5BCB174();

      v20(v16 + v18, v22);
      sub_1C59261FC(v20, v21);
      v23 = *(v9 + 8);
      v23(v22, v4);
      v23(v14, v4);
      return;
    }
  }

LABEL_4:
  (*(v9 + 8))(v14, v4);
}

id ScopeBar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ScopeBar.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScopeBar(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1C5AF07D4(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = &a1[*((*v2 & *a1) + 0x88)];
  sub_1C59261FC(*v3, v3[1]);
  v4 = &a1[*((*v2 & *a1) + 0x90)];
  sub_1C59261FC(*v4, v4[1]);
  v5 = *((*v2 & *a1) + 0x98);
  v6 = sub_1C5BCB804();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  v7 = *&a1[*((*v2 & *a1) + 0xC0)];
}

void sub_1C5AF0984()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v3[4] = sub_1C5AF0A4C;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1C5B84840;
  v3[3] = &block_descriptor_83;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_1EDA4E060 = v2;
}

id sub_1C5AF0A4C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_labelColor;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  v5 = [v2 *v3];

  return v5;
}

unint64_t sub_1C5AF0AC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v46 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = a5;
  v16 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v17 = HIBYTE(a6) & 0xF) : (v17 = a5 & 0xFFFFFFFFFFFFLL), !v17))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v16 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v8 = sub_1C5BCAFD4();
    v12 = v31;
    v13 = v32;
    v14 = v33;

    v15 = sub_1C5B760B8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v15 + 16);
    a7 = *(v15 + 24);
LABEL_39:
    v11 = v10 + 1;
    if (v10 < a7 >> 1)
    {
LABEL_40:
      *(v15 + 16) = v11;
      v37 = (v15 + 32 * v10);
      v37[4] = v8;
      v37[5] = v12;
      v37[6] = v13;
      v37[7] = v14;
      return v15;
    }

LABEL_43:
    v15 = sub_1C5B760B8((a7 > 1), v11, 1, v15);
    goto LABEL_40;
  }

  v8 = a4;
  v18 = 4 * v17;
  v15 = MEMORY[0x1E69E7CC0];
  v19 = 15;
  while (1)
  {
    v14 = v19 >> 14;
    if (v19 >> 14 == v18)
    {
      goto LABEL_33;
    }

    v42 = v15;
    v40 = a1;
    while (2)
    {
      v43 = v19;
      v15 = v19;
      while (1)
      {
        v20 = sub_1C5BCAFB4();
        v13 = v21;
        v45[0] = v20;
        v45[1] = v21;
        v22 = v46(v45);
        if (v9)
        {

          return v15;
        }

        v23 = v22;

        if (v23)
        {
          break;
        }

        v15 = sub_1C5BCAF14();
        v14 = v15 >> 14;
        if (v15 >> 14 == v18)
        {
          v15 = v42;
          v19 = v43;
          goto LABEL_33;
        }
      }

      result = v43;
      if (v43 >> 14 == v14 && (a2 & 1) != 0)
      {
        v19 = sub_1C5BCAF14();
        v14 = v19 >> 14;
        if (v19 >> 14 != v18)
        {
          continue;
        }

        v15 = v42;
LABEL_33:
        if (v19 >> 14 == v18 && (a2 & 1) != 0)
        {

          return v15;
        }

        if (v18 < v19 >> 14)
        {
          __break(1u);
        }

        else
        {
          v8 = sub_1C5BCAFD4();
          v12 = v34;
          v13 = v35;
          v14 = v36;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v10 = *(v15 + 16);
            a7 = *(v15 + 24);
            goto LABEL_39;
          }
        }

        v15 = sub_1C5B760B8(0, *(v15 + 16) + 1, 1, v15);
        goto LABEL_38;
      }

      break;
    }

    if (v14 < v43 >> 14)
    {
      break;
    }

    v25 = sub_1C5BCAFD4();
    v44 = v26;
    v38 = v28;
    v39 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1C5B760B8(0, *(v42 + 2) + 1, 1, v42);
    }

    v14 = *(v42 + 2);
    v29 = *(v42 + 3);
    v13 = v14 + 1;
    if (v14 >= v29 >> 1)
    {
      v42 = sub_1C5B760B8((v29 > 1), v14 + 1, 1, v42);
    }

    *(v42 + 2) = v13;
    v30 = &v42[32 * v14];
    *(v30 + 4) = v25;
    *(v30 + 5) = v44;
    *(v30 + 6) = v39;
    *(v30 + 7) = v38;
    v15 = v42;
    v19 = sub_1C5BCAF14();
    a1 = v40;
    if (*(v42 + 2) == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5AF0E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FittedText(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197768, &qword_1C5BE7FC8);
  v39 = v4;
  v9 = sub_1C5BCBC64();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v40 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      v25 = v23 + v24 * v22;
      if (v39)
      {
        sub_1C5AF762C(v25, v7, type metadata accessor for FittedText);
      }

      else
      {
        sub_1C5AF75C4(v25, v7, type metadata accessor for FittedText);
      }

      v26 = *(*(v40 + 56) + 8 * v22);
      sub_1C5BCBF54();
      sub_1C5BC7B04();
      sub_1C5AF7510(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1C5BCAD44();
      v27 = sub_1C5BCBF94();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1C5AF762C(v7, *(v10 + 48) + v24 * v18, type metadata accessor for FittedText);
      *(*(v10 + 56) + 8 * v18) = v26;
      ++*(v10 + 16);
      v8 = v40;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1C5AF1250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917F0, &qword_1C5BD3090);
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1C5BCBF44();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
}

void sub_1C5AF14AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C5BC7B04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918B0, &qword_1C5BD3140);
  v40 = v4;
  v10 = sub_1C5BCBC64();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C5AF7510(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = sub_1C5BCAD34();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1C5AF1888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D0, &qword_1C5BD3070);
  v31 = v4;
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      MEMORY[0x1C69501A0](v20);
      v22 = sub_1C5BCBF94();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1C5AF1B18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s17DownloadContainerVMa(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197750, &qword_1C5BE7F98);
  v38 = v4;
  v9 = sub_1C5BCBC64();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1C5AF762C(v25, v7, _s17DownloadContainerVMa);
      }

      else
      {
        sub_1C5AF75C4(v25, v7, _s17DownloadContainerVMa);
      }

      v26 = sub_1C5BCBF44();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1C5AF762C(v7, *(v10 + 56) + v24 * v18, _s17DownloadContainerVMa);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1C5AF1E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197748, &qword_1C5BE7F90);
  v44 = v4;
  v9 = sub_1C5BCBC64();
  v10 = v9;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v18 = v43;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v21 = (v15 - 1) & v15;
LABEL_15:
      v24 = v20 | (v11 << 6);
      v25 = *(v8 + 48);
      v46 = *(v42 + 72);
      v47 = v21;
      v26 = v25 + v46 * v24;
      if (v44)
      {
        sub_1C5AF762C(v26, v7, type metadata accessor for MotionAssetDownload.AssetKey);
        v45 = *(*(v8 + 56) + 8 * v24);
      }

      else
      {
        sub_1C5AF75C4(v26, v7, type metadata accessor for MotionAssetDownload.AssetKey);
        v45 = *(*(v8 + 56) + 8 * v24);
      }

      sub_1C5BCBF54();
      sub_1C5BC7A24();
      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1C5BCAD44();
      sub_1C5BCAD44();
      v27 = &v7[*(v18 + 24)];
      v28 = *v27;
      v29 = v27[1];
      if (*v27 == 0.0)
      {
        v28 = 0.0;
      }

      MEMORY[0x1C69501C0](*&v28);
      if (v29 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v29;
      }

      MEMORY[0x1C69501C0](*&v30);
      v31 = sub_1C5BCBF94();
      v32 = -1 << *(v10 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v8 = v41;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v8 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1C5AF762C(v7, *(v10 + 48) + v46 * v19, type metadata accessor for MotionAssetDownload.AssetKey);
      *(*(v10 + 56) + 8 * v19) = v45;
      ++*(v10 + 16);
      v15 = v47;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_39;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_39:
  *v3 = v10;
}

void sub_1C5AF2290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C8, &qword_1C5BE7F80);
  v35 = v4;
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v25 = sub_1C5BCBF94();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1C5AF2544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197770, qword_1C5BE7FD0);
  v35 = v4;
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1C593F33C(v22, v36);
      }

      else
      {
        sub_1C592B32C(v22, v36);
        v23 = v21;
      }

      sub_1C5BCAE74();
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v24 = sub_1C5BCBF94();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1C593F33C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1C5AF2828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1C5BCBC64();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v27 = sub_1C5BCBF94();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1C5AF2AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C5BC7A24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191810, &unk_1C5BD30B0);
  v40 = v4;
  v10 = sub_1C5BCBC64();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v26 = sub_1C5BCAD34();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1C5AF2EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197740, &qword_1C5BE7F88);
  v41 = v4;
  v8 = sub_1C5BCBC64();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_1C5AF762C(v28, v42, type metadata accessor for MotionAssetDownload.AssetKey);
      }

      else
      {
        sub_1C5AF75C4(v28, v42, type metadata accessor for MotionAssetDownload.AssetKey);
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v29 = sub_1C5BCBF94();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1C5AF762C(v42, *(v9 + 56) + v27 * v17, type metadata accessor for MotionAssetDownload.AssetKey);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1C5AF321C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197760, &qword_1C5BE7FC0);
  v37 = v4;
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v39 = *v25;
      v26 = *(v25 + 24);
      v38 = *(v25 + 16);
      if ((v37 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v27 = sub_1C5BCBF94();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v39;
      *(v17 + 16) = v38;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1C5AF34E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191838, &qword_1C5BE7FB0);
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = sub_1C5BCBF44();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1C5AF374C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191818, &unk_1C5BE7F70);
  v35 = v4;
  v6 = sub_1C5BCBC64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v25 = sub_1C5BCBF94();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t sub_1C5AF39EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C5BCBF44();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(_s17DownloadContainerVMa(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1C5AF3B98(int64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1C5BCB914() + 1) & ~v8;
    v12 = *(v4 + 72);
    v29 = a2;
    v30 = a2 + 64;
    v28 = v12;
    do
    {
      v13 = v12 * v9;
      sub_1C5AF75C4(*(a2 + 48) + v12 * v9, v6, type metadata accessor for MotionAssetDownload.AssetKey);
      sub_1C5BCBF54();
      sub_1C5BC7A24();
      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1C5BCAD44();
      v14 = v31;
      sub_1C5BCAD44();
      v15 = &v6[*(v14 + 24)];
      v16 = *v15;
      v17 = v15[1];
      if (*v15 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x1C69501C0](*&v16);
      if (v17 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v17;
      }

      MEMORY[0x1C69501C0](*&v18);
      v19 = sub_1C5BCBF94();
      sub_1C5AF73B0(v6);
      v20 = v19 & v10;
      if (a1 >= v11)
      {
        if (v20 < v11)
        {
          a2 = v29;
          v7 = v30;
          v12 = v28;
          goto LABEL_4;
        }

        v12 = v28;
        a2 = v29;
        if (a1 >= v20)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = v28;
        a2 = v29;
        if (v20 >= v11 || a1 >= v20)
        {
LABEL_16:
          if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v30;
          }

          else
          {
            v7 = v30;
            if (v12 * a1 != v13)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v21 = *(a2 + 56);
          v22 = (v21 + 8 * a1);
          v23 = (v21 + 8 * v9);
          if (a1 != v9 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v30;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

void sub_1C5AF3EDC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      v9 = sub_1C5BCBF94();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1C5AF408C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1C5BCAE74();
      sub_1C5BCBF54();
      v11 = v10;
      sub_1C5BCAF04();
      v12 = sub_1C5BCBF94();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1C5AF4254(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    while (1)
    {
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      v9 = sub_1C5BCBF94();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for MotionAssetDownload.AssetKey(0) - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1C5AF4440(int64_t a1, uint64_t a2)
{
  v38 = sub_1C5BC7A24();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1C5BCB914();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1C5AF7510(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v22 = sub_1C5BCAD34();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1C5AF4760(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C5BCB914() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C5BCBF44();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1C5AF48D0()
{
  v1 = v0;
  v2 = type metadata accessor for FittedText(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197768, &qword_1C5BE7FC8);
  v5 = *v0;
  v6 = sub_1C5BCBC54();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1C5AF75C4(*(v5 + 48) + v21, v4, type metadata accessor for FittedText);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1C5AF762C(v4, *(v7 + 48) + v21, type metadata accessor for FittedText);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1C5AF4B04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917F0, &qword_1C5BD3090);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF4C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917D0, &qword_1C5BD3070);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF4DD4()
{
  v1 = v0;
  v2 = _s17DownloadContainerVMa(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197750, &qword_1C5BE7F98);
  v4 = *v0;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1C5AF75C4(*(v4 + 56) + v23, v26, _s17DownloadContainerVMa);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_1C5AF762C(v22, *(v24 + 56) + v23, _s17DownloadContainerVMa);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1C5AF500C()
{
  v1 = v0;
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197748, &qword_1C5BE7F90);
  v4 = *v0;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_1C5AF75C4(*(v4 + 48) + v21, v27, type metadata accessor for MotionAssetDownload.AssetKey);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_1C5AF762C(v20, *(v29 + 48) + v21, type metadata accessor for MotionAssetDownload.AssetKey);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1C5AF5258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917C8, &qword_1C5BE7F80);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF53D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197770, qword_1C5BE7FD0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1C592B32C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1C593F33C(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF5568(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1C5AF56F0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_1C5BCBC54();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1C5AF596C()
{
  v1 = v0;
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197740, &qword_1C5BE7F88);
  v4 = *v0;
  v5 = sub_1C5BCBC54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1C5AF75C4(v21 + v27, v32, type metadata accessor for MotionAssetDownload.AssetKey);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1C5AF762C(v26, *(v28 + 56) + v27, type metadata accessor for MotionAssetDownload.AssetKey);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1C5AF5BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197760, &qword_1C5BE7FC0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v26 = *v22;
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v26;
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF5D50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191838, &qword_1C5BE7FB0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF5EAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191818, &unk_1C5BE7F70);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF6014()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191830, &unk_1C5BD30D0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 56) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF616C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191828, &unk_1C5BE7FA0);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5AF62DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868, &qword_1C5BD3110);
  v2 = *v0;
  v3 = sub_1C5BCBC54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1C5AF6428(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4() & 1;
  }
}

uint64_t sub_1C5AF6480(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4() & 1;
  }
}

unint64_t sub_1C5AF64D8()
{
  result = qword_1EDA45F28;
  if (!qword_1EDA45F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F28);
  }

  return result;
}

uint64_t sub_1C5AF6554()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5AF65B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C592535C(0, &qword_1EDA45D58, 0x1E69DC738);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C5BCB984();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C5BCB984();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_1C5AF66C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197758, &qword_1C5BE7FB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40[0] = v40 - v6;
  v41 = sub_1C5BC7DD4();
  MEMORY[0x1EEE9AC00](v41);
  v40[2] = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() buttonWithType_];
  v9 = [v8 titleLabel];
  if (v9)
  {
    v10 = v9;
    sub_1C59253A4(v44);
    v11 = v44[0];
    v13 = type metadata accessor for ScopeBar.Specs(0, a2, a3, v12);
    v14 = *(*(v13 - 8) + 8);
    v15 = v11;
    v14(v44, v13);
    [v10 setFont_];
  }

  v16 = [v8 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setAdjustsFontForContentSizeCategory_];
  }

  v18 = *MEMORY[0x1E69DDC50];
  v19 = v8;
  [v19 setMaximumContentSizeCategory_];
  (*(a3 + 16))(a2, a3);
  v20 = sub_1C5BCAE44();

  [v19 setTitle:v20 forState:0];

  sub_1C59253A4(v45);
  v21 = v45[7];
  v23 = type metadata accessor for ScopeBar.Specs(0, a2, a3, v22);
  v24 = *(*(v23 - 8) + 8);
  v25 = v21;
  v24(v45, v23);
  [v19 setTitleColor:v25 forState:0];

  sub_1C59253A4(v46);
  v26 = v46[6];
  v24(v46, v23);
  [v19 setTitleColor:v26 forState:4];

  v42 = 0x72614265706F6373;
  v43 = 0xE90000000000002ELL;
  v27 = (*(a3 + 24))(a2, a3);
  MEMORY[0x1C694F170](v27);

  v28 = v42;
  v29 = v43;
  v30 = [objc_opt_self() mainBundle];
  v31 = sub_1C5949F2C();
  v33 = v32;

  v42 = v31;
  v43 = v33;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](v28, v29);
  v34 = sub_1C5BCAE44();

  [v19 setAccessibilityIdentifier_];

  sub_1C592535C(0, &qword_1EDA4E148, 0x1E69DCAB0);
  sub_1C5BC7D74();
  v35 = v40[0];
  sub_1C5BC7E94();
  v36 = sub_1C5BC7EA4();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = sub_1C5BCB4A4();
  [v19 setHoverStyle_];

  v38 = v19;
  [v38 setContentHorizontalAlignment_];
  [v38 setContentVerticalAlignment_];

  return v38;
}

void _s11MediaCoreUI8ScopeBarC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + *((*v2 & *v0) + 0x68));
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v5 = *MEMORY[0x1E69DDCE0];
  v5[1] = v6;
  v7 = v0 + *((*v2 & *v0) + 0x70);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  *(v0 + *((*v2 & *v0) + 0x78)) = 0;
  v8 = *((*v2 & *v0) + 0x80);
  v9 = *((v3 & v1) + 0x50);
  *(v0 + v8) = sub_1C5BCB0B4();
  v10 = (v0 + *((*v2 & *v0) + 0x88));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + *((*v2 & *v0) + 0x90));
  *v11 = 0;
  v11[1] = 0;
  (*(*(v9 - 8) + 56))(v0 + *((*v2 & *v0) + 0x98), 1, 1, v9);
  *(v0 + *((*v2 & *v0) + 0xA0)) = 0;
  v12 = *((*v2 & *v0) + 0xA8);
  *(v0 + v12) = sub_1C5924C60();
  *(v0 + *((*v2 & *v0) + 0xB0)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v2 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v2 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v2 & *v0) + 0xC8)) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t sub_1C5AF6E78()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C5AF6EDC()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return *v1;
}

uint64_t getEnumTagSinglePayload for MotionCacheEntryLookupError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MotionCacheEntryLookupError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1C5AF7370(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AF738C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1C5AF73B0(uint64_t a1)
{
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5AF740C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_1C5AF7478(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C5AF7510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5AF7558(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C5AF75C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AF762C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C5AF76C8(_BYTE *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v9 = sub_1C5942458(v7, 0);
    (*(v4 + 8))(v6, v3, v9);
  }
}

uint64_t NowPlayingQueueChapterList.init(_:isExpanded:title:chapterBuilder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  *a8 = swift_getKeyPath(byte_1C5BE8000);
  *(a8 + 8) = 0;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  v22[0] = a6;
  v22[1] = a7;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v18 = type metadata accessor for NowPlayingQueueChapterList(0, v22);
  result = a3();
  v20 = (a8 + *(v18 + 80));
  *v20 = a4;
  v20[1] = a5;
  return result;
}

uint64_t NowPlayingQueueChapterList.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v114 = sub_1C5BC92E4();
  v99 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v98 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C5BC8B74();
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1C5BC8C04();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v76 - v7;
  v107 = a1[3];
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700, &unk_1C5BE3D70);
  sub_1C5BC8AB4();
  v8 = sub_1C5BC8AB4();
  v106 = a1[6];
  v126 = v106;
  v127 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, MEMORY[0x1E697FDC0]);
  v124 = WitnessTable;
  v125 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C5AF87B0();
  v122 = v11;
  v123 = v12;
  v13 = swift_getWitnessTable();
  v117 = v8;
  v118 = MEMORY[0x1E69E6370];
  v119 = v13;
  v120 = MEMORY[0x1E69E6380];
  sub_1C5BCA724();
  v14 = a1[2];
  swift_getTupleTypeMetadata2();
  v15 = sub_1C5BCB144();
  v103 = a1[4];
  sub_1C5BC8AB4();
  v16 = sub_1C5BC8AB4();
  v17 = swift_getWitnessTable();
  v108 = a1;
  v18 = a1[5];
  v117 = v15;
  v118 = v14;
  v104 = v14;
  v119 = v16;
  v120 = v17;
  v102 = v18;
  v121 = v18;
  sub_1C5BCA8C4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  v19 = sub_1C5BCAB74();
  v20 = sub_1C5BCA934();
  v88 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v76 - v21;
  v101 = v19;
  v22 = swift_getWitnessTable();
  v116[5] = MEMORY[0x1E6981E60];
  v116[6] = v22;
  v100 = v22;
  v116[7] = MEMORY[0x1E6981E60];
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v117 = v20;
  v118 = v6;
  v119 = v23;
  v120 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = &v76 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197780, &qword_1C5BE8050);
  v91 = OpaqueTypeMetadata2;
  v27 = sub_1C5BC8AB4();
  v89 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v76 - v28;
  v117 = v20;
  v118 = v6;
  v92 = v6;
  v82 = v23;
  v119 = v23;
  v120 = v24;
  v83 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1C5924F54(&qword_1EC197788, &qword_1EC197780, &qword_1C5BE8050, MEMORY[0x1E69805E8]);
  v116[3] = OpaqueTypeConformance2;
  v116[4] = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5AFA134(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v33 = v114;
  v117 = v27;
  v118 = v114;
  v119 = v31;
  v120 = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v84 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v85 = &v76 - v38;
  v112 = sub_1C5BC92D4();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v76 - v39;
  v120 = &type metadata for Features;
  v121 = sub_1C5A2E158();
  v40 = swift_allocObject();
  v117 = v40;
  *(v40 + 16) = "MediaCoreUI";
  *(v40 + 24) = 11;
  *(v40 + 32) = 2;
  *(v40 + 40) = "HoveringChapterPicker";
  *(v40 + 48) = 21;
  *(v40 + 56) = 2;
  LOBYTE(a1) = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v117);
  if (a1)
  {
    v116[0] = sub_1C5BCA484();
    v117 = v27;
    v118 = v33;
    v119 = v31;
    v120 = v32;
    v42 = swift_getOpaqueTypeConformance2();
    sub_1C5941738(v116, v34, MEMORY[0x1E69815C0], v42, MEMORY[0x1E6981580]);

    v43 = v31;
    v44 = v27;
LABEL_5:
    v72 = MEMORY[0x1E6981580];
    v117 = v44;
    v118 = v33;
    v119 = v43;
    v120 = v32;
    v116[1] = swift_getOpaqueTypeConformance2();
    v116[2] = v72;
    v73 = v112;
    v74 = swift_getWitnessTable();
    v75 = v115;
    sub_1C593EDC0(v115, v73, v74);
    return (*(v111 + 8))(v75, v73);
  }

  v77 = v34;
  v78 = v35;
  v79 = v27;
  v80 = v32;
  v81 = v31;
  MEMORY[0x1EEE9AC00](v41);
  *&v45 = v104;
  *(&v45 + 1) = v107;
  *&v46 = v103;
  *(&v46 + 1) = v102;
  *(&v76 - 4) = v45;
  *(&v76 - 3) = v46;
  v47 = v108[7];
  *(&v76 - 4) = v106;
  *(&v76 - 3) = v47;
  *(&v76 - 2) = v109;
  v48 = v105;
  sub_1C5BCA924();
  v49 = *MEMORY[0x1E697E728];
  v50 = sub_1C5BC89B4();
  v51 = v110;
  (*(*(v50 - 8) + 104))(v110, v49, v50);
  sub_1C5AFA134(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v53 = v87;
    sub_1C5BC9F54();
    sub_1C5924EF4(v51, &qword_1EC192838, &qword_1C5BD5C80);
    (*(v88 + 8))(v48, v20);
    v54 = v93;
    sub_1C5BC8BF4();
    v55 = *(sub_1C5BC8B84() + 20);
    v56 = *MEMORY[0x1E697F468];
    v57 = sub_1C5BC9044();
    v58 = v96;
    (*(*(v57 - 8) + 104))(&v96[v55], v56, v57);
    __asm { FMOV            V0.2D, #4.0 }

    *v58 = _Q0;
    *(v58 + *(v97 + 20)) = 0xC000000000000000;
    sub_1C5AFA134(qword_1EC197790, MEMORY[0x1E697EAB8], MEMORY[0x1E697EAB0]);
    v64 = v86;
    v65 = v91;
    sub_1C5BC9E94();
    sub_1C5AF9748(v58);
    (*(v94 + 8))(v54, v95);
    (*(v90 + 8))(v53, v65);
    v66 = v98;
    sub_1C5BC8C54();
    v67 = v84;
    v44 = v79;
    v33 = v114;
    v43 = v81;
    v32 = v80;
    sub_1C5BC9E04();
    (*(v99 + 8))(v66, v33);
    (*(v89 + 8))(v64, v44);
    v117 = v44;
    v118 = v33;
    v119 = v43;
    v120 = v32;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v85;
    v70 = v77;
    sub_1C593EDC0(v67, v77, v68);
    v71 = *(v78 + 8);
    v71(v67, v70);
    sub_1C593EDC0(v69, v70, v68);
    sub_1C5950E54(v67, v70, MEMORY[0x1E69815C0], v68, MEMORY[0x1E6981580]);
    v71(v67, v70);
    v71(v69, v70);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5AF87B0()
{
  result = qword_1EC197778;
  if (!qword_1EC197778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197778);
  }

  return result;
}

uint64_t sub_1C5AF8804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v133 = a1;
  v134 = a3;
  v129 = a8;
  *&v164 = a2;
  *(&v164 + 1) = a3;
  v165 = a4;
  v166 = a5;
  v167 = a6;
  v168 = a7;
  v135 = a6;
  v140 = a7;
  v130 = type metadata accessor for NowPlayingQueueChapterList(0, &v164);
  v105 = *(v130 - 8);
  v103[2] = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v104 = v103 - v12;
  v103[1] = swift_getTupleTypeMetadata2();
  v13 = sub_1C5BCB144();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700, &unk_1C5BE3D70);
  v124 = a4;
  v138 = sub_1C5BC8AB4();
  v14 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v109 = v13;
  v110 = a5;
  *&v164 = v13;
  *(&v164 + 1) = a2;
  v123 = a2;
  v139 = v14;
  v165 = v14;
  v166 = WitnessTable;
  v106 = WitnessTable;
  v167 = a5;
  v16 = sub_1C5BCA8C4();
  v125 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v108 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v107 = v103 - v19;
  v137 = v20;
  v128 = sub_1C5BCB804();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v136 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v127 = v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197820, &qword_1C5BE80F0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v103 - v25;
  v27 = sub_1C5BC8AB4();
  v113 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v103 - v28;
  v30 = sub_1C5BC8AB4();
  v122 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v117 = v103 - v31;
  v115 = v30;
  v32 = sub_1C5BC8AB4();
  v120 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v119 = v103 - v33;
  v174 = a6;
  v175 = MEMORY[0x1E697E5D8];
  v34 = swift_getWitnessTable();
  v35 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, MEMORY[0x1E697FDC0]);
  v172 = v34;
  v173 = v35;
  v132 = v35;
  v36 = swift_getWitnessTable();
  v114 = v36;
  v37 = sub_1C5AF87B0();
  v170 = v36;
  v171 = v37;
  v118 = v32;
  v116 = swift_getWitnessTable();
  *&v164 = v32;
  *(&v164 + 1) = MEMORY[0x1E69E6370];
  v165 = v116;
  v166 = MEMORY[0x1E69E6380];
  v38 = sub_1C5BCA724();
  v131 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v121 = v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v112 = v103 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v141 = v103 - v43;
  sub_1C5BC98E4();
  v44 = v133;
  sub_1C5AF76C8(&v164);
  sub_1C5BCA2F4();
  sub_1C5AF76C8(&v164);
  v111 = *(v44 + 24);
  v45 = 3;
  if (!v111)
  {
    v45 = -1;
  }

  v46 = 12;
  if (v111)
  {
    v46 = 0;
  }

  if (v164 == 2)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  *v26 = v47;
  v26[8] = 0;
  *(v26 + 2) = swift_getKeyPath(byte_1C5BE80F8);
  v26[24] = 0;
  v48 = type metadata accessor for NowPlayingQueueBackground(0);
  v49 = *(v48 + 28);
  *&v26[v49] = swift_getKeyPath("ض[&");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  (*(*(v48 - 8) + 56))(v26, 0, 1, v48);
  sub_1C5AFA134(&qword_1EC197828, type metadata accessor for NowPlayingQueueBackground, &unk_1C5BF4E48);
  v50 = v117;
  sub_1C5BCA004();
  sub_1C5924EF4(v26, &qword_1EC197820, &qword_1C5BE80F0);
  (*(v113 + 8))(v29, v27);
  LOBYTE(v151) = 0;
  sub_1C5BCA684();
  LOBYTE(v48) = v164;
  v51 = *(&v164 + 1);
  KeyPath = swift_getKeyPath(byte_1C5BE8178);
  LOBYTE(v164) = v48;
  *(&v164 + 1) = v51;
  v165 = KeyPath;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v169 = 0;
  v53 = v119;
  v54 = v115;
  MEMORY[0x1C694E550](&v164, v115, &type metadata for PlayingItemBackgroundAppearanceModifier, v114);
  v55 = v165;
  v56 = v166;
  v57 = v167;
  v58 = v168;
  v59 = v169;

  v60 = sub_1C596AC4C(v55, v56, v57, v58, v59);
  (*(v122 + 8))(v50, v54, v60);
  LODWORD(v57) = v111;
  LOBYTE(v164) = v111;
  v61 = v112;
  v62 = v118;
  sub_1C5BCA1C4();
  (*(v120 + 8))(v53, v62);
  v118 = swift_getWitnessTable();
  sub_1C593EDC0(v61, v38, v118);
  v63 = *(v131 + 8);
  v122 = v38;
  v119 = v63;
  v120 = v131 + 8;
  (v63)(v61, v38);
  if (v57 == 1)
  {
    v150 = *(v133 + 16);
    v64 = v150;
    v65 = v123;
    v66 = sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB3C4();
    v147 = v164;
    v149 = v64;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197830, &qword_1C5BE81A0);
    v68 = sub_1C5AFA17C();
    v69 = swift_getWitnessTable();
    sub_1C5BCBE64();
    v147 = v151;
    v148 = v152;
    *&v164 = v67;
    *(&v164 + 1) = v66;
    v165 = v68;
    v166 = v69;
    sub_1C5BCBAB4();
    swift_getWitnessTable();
    *&v164 = sub_1C5BCB164();
    *&v70 = MEMORY[0x1EEE9AC00](v164).n128_u64[0];
    v71 = v134;
    v103[-6] = v65;
    v103[-5] = v71;
    v72 = v124;
    v73 = v110;
    v103[-4] = v124;
    v103[-3] = v73;
    v74 = v140;
    v101 = v135;
    v102 = v140;
    v117 = swift_getKeyPath(byte_1C5BE81A8, v70);
    v76 = v104;
    v75 = v105;
    v77 = v130;
    (*(v105 + 16))(v104, v133, v130);
    v78 = (*(v75 + 80) + 64) & ~*(v75 + 80);
    v79 = swift_allocObject();
    *(v79 + 2) = v65;
    v80 = v134;
    *(v79 + 3) = v134;
    *(v79 + 4) = v72;
    v81 = v135;
    *(v79 + 5) = v73;
    *(v79 + 6) = v81;
    *(v79 + 7) = v74;
    (*(v75 + 32))(&v79[v78], v76, v77);
    v82 = swift_allocObject();
    v83 = v124;
    v82[2] = v123;
    v82[3] = v80;
    v82[4] = v83;
    v82[5] = v73;
    v82[6] = v81;
    v82[7] = v74;
    v82[8] = sub_1C5AFA25C;
    v82[9] = v79;
    v145 = v74;
    v146 = v132;
    v143 = swift_getWitnessTable();
    v144 = MEMORY[0x1E697E5D8];
    v84 = swift_getWitnessTable();
    v101 = v84;
    v85 = v108;
    sub_1C5BCA8A4();
    v142 = v84;
    v86 = v137;
    v87 = swift_getWitnessTable();
    v88 = v107;
    sub_1C593EDC0(v85, v86, v87);
    v89 = v125;
    v90 = *(v125 + 8);
    v90(v85, v86);
    sub_1C593EDC0(v88, v86, v87);
    v90(v88, v86);
    v91 = v136;
    (*(v89 + 32))(v136, v85, v86);
    (*(v89 + 56))(v91, 0, 1, v86);
  }

  else
  {
    (*(v125 + 56))(v136, 1, 1, v137);
    v162 = v140;
    v163 = v132;
    v160 = swift_getWitnessTable();
    v161 = MEMORY[0x1E697E5D8];
    v159 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  v92 = v127;
  v93 = v136;
  sub_1C5941600(v136, v127);
  v94 = v126;
  v95 = *(v126 + 8);
  v96 = v128;
  v95(v93, v128);
  v98 = v121;
  v97 = v122;
  (*(v131 + 16))(v121, v141, v122);
  *&v164 = v98;
  (*(v94 + 16))(v93, v92, v96);
  *(&v164 + 1) = v93;
  *&v151 = v97;
  *(&v151 + 1) = v96;
  *&v147 = v118;
  v157 = v140;
  v158 = v132;
  v155 = swift_getWitnessTable();
  v156 = MEMORY[0x1E697E5D8];
  v154 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  *(&v147 + 1) = swift_getWitnessTable();
  sub_1C594226C(&v164, 2uLL, &v151);
  v95(v92, v96);
  v99 = v119;
  (v119)(v141, v97);
  v95(v93, v96);
  return v99(v98, v97);
}

uint64_t sub_1C5AF9748(uint64_t a1)
{
  v2 = sub_1C5BC8B74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5AF97F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a7;
  v42 = a8;
  v40 = a5;
  v44 = a2;
  v45 = a1;
  v46 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197820, &qword_1C5BE80F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v47 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700, &unk_1C5BE3D70);
  v19 = sub_1C5BC8AB4();
  v49 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v40 - v20;
  v21 = sub_1C5BC8AB4();
  v50 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v40 - v25;
  result = sub_1C5BCB0F4();
  v27 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v55[0] = a4;
    v55[1] = v40;
    v55[2] = a6;
    v55[3] = v41;
    v55[4] = v42;
    v55[5] = a10;
    v28 = *(a3 + *(type metadata accessor for NowPlayingQueueChapterList(0, v55) + 80));
    v42 = v23;
    v29 = v45;
    v28(v45, v44);
    v30 = 12;
    if (v27 != v29)
    {
      v30 = 0;
    }

    *v15 = v30;
    v15[8] = 0;
    *(v15 + 2) = swift_getKeyPath(byte_1C5BE80F8, v40, v41);
    v15[24] = 0;
    v31 = type metadata accessor for NowPlayingQueueBackground(0);
    v32 = *(v31 + 28);
    *&v15[v32] = swift_getKeyPath("ض[&");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v15, 0, 1, v31);
    sub_1C5AFA134(&qword_1EC197828, type metadata accessor for NowPlayingQueueBackground, &unk_1C5BF4E48);
    v33 = v43;
    sub_1C5BCA004();
    sub_1C5924EF4(v15, &qword_1EC197820, &qword_1C5BE80F0);
    (*(v47 + 8))(v18, a6);
    sub_1C5BC98B4();
    v34 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, MEMORY[0x1E697FDC0]);
    v53 = a10;
    v54 = v34;
    WitnessTable = swift_getWitnessTable();
    v36 = v42;
    sub_1C5BCA2F4();
    (*(v49 + 8))(v33, v19);
    v51 = WitnessTable;
    v52 = MEMORY[0x1E697E5D8];
    v37 = swift_getWitnessTable();
    v38 = v48;
    sub_1C593EDC0(v36, v21, v37);
    v39 = *(v50 + 8);
    v39(v36, v21);
    sub_1C593EDC0(v38, v21, v37);
    return (v39)(v38, v21);
  }

  return result;
}

void sub_1C5AF9D04(uint64_t a1)
{
  sub_1C5AFA0E4();
  if (v1 <= 0x3F)
  {
    sub_1C5BCB144();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1C5927B74();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5AF9DC8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 25) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 25) & ~v6);
    }

    v18 = *(v17 + 16);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_1C5AF9F14(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = result & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 25) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *(v18 + 16) = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 25) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1C5AFA0E4()
{
  if (!qword_1EC197818)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC197818);
    }
  }
}

uint64_t sub_1C5AFA134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C5AFA17C()
{
  result = qword_1EC197838;
  if (!qword_1EC197838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197830, &qword_1C5BE81A0);
    sub_1C5AFA208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197838);
  }

  return result;
}

unint64_t sub_1C5AFA208()
{
  result = qword_1EC197840[0];
  if (!qword_1EC197840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC197840);
  }

  return result;
}

uint64_t sub_1C5AFA25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v15[0] = v3[2];
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v12;
  v13 = *(type metadata accessor for NowPlayingQueueChapterList(0, v15) - 8);
  return sub_1C5AF97F0(a1, a2, v3 + ((*(v13 + 80) + 64) & ~*(v13 + 80)), v7, v8, v9, v10, v11, a3, v12);
}

uint64_t sub_1C5AFA32C(char *a1)
{
  v3 = *(v1 + 64);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1C5AFA39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5AFA434@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = result;
  *(a5 + 16) = a2 & 1;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1C5AFA448(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  if (*(v1 + 16) == 1)
  {
    v10 = sub_1C5BCAB64();
  }

  else
  {
    v10 = *(v1 + 8);
  }

  (*(v1 + 24))(v10);
  v11 = *(a1 + 24);
  sub_1C593EDC0(v6, v3, v11);
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_1C593EDC0(v9, v3, v11);
  return (v12)(v9, v3);
}

uint64_t getEnumTagSinglePayload for MotionPlayerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MotionPlayerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1C5AFA5F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AFA60C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void View.waveformColorPalette(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v15 = *a1;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v8 = v15;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  MEMORY[0x1C694E550](&v15, a2, &type metadata for WaveformColorPaletteModifier, a3);
  v12 = v15;
  v13 = v16;
  v14 = v17;
}

void WaveformColorPalette.init(playingColor:pausedColor:bufferingColorMin:bufferingColorMax:)(uint64_t *a5@<X8>)
{
  sub_1C592535C(0, &qword_1EDA45D98, 0x1E69DC888);

  v6 = sub_1C5BCB704();

  v7 = sub_1C5BCB704();

  v8 = sub_1C5BCB704();
  v9 = sub_1C5BCB704();

  *a5 = v6;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
}

void sub_1C5AFA7A8()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent_];

  qword_1EDA48EA8 = v1;
  unk_1EDA48EB0 = v3;
  qword_1EDA48EB8 = v5;
  unk_1EDA48EC0 = v7;
}