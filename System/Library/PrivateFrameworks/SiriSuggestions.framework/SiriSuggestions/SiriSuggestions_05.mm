uint64_t sub_23123C81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C28, &unk_23136FA80);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v45 = &v40 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_231369D50();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v50 = a1;
  sub_231369670();
  v25 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v17, 1, v25) == 1)
  {
    sub_2311D1F18(v17, &qword_27DD43358, &qword_23136FA90);
    v26 = v18;
  }

  else
  {
    sub_231369CC0();
    v27 = *(v25 - 8);
    v28 = *(v27 + 8);
    v42 = v27 + 8;
    v43 = v28;
    v28(v17, v25);
    (*(v19 + 32))(v24, v21, v18);
    sub_231369EE0();
    v29 = v48;
    sub_231210D14();

    v26 = v18;
    if (__swift_getEnumTagSinglePayload(v29, 1, v6) == 1)
    {
      (*(v19 + 8))(v24, v18);
      sub_2311D1F18(v29, &qword_27DD43C28, &unk_23136FA80);
    }

    else
    {
      v41 = v19;
      v47 = v18;
      v34 = v46;
      (*(v46 + 32))(v49, v29, v6);
      v48 = v6;
      v35 = sub_231366B30();
      v36 = v44;
      sub_231369670();
      v37 = v52;
      v35(v36);
      if (!v37)
      {
        v38 = v48;

        sub_2311D1F18(v36, &qword_27DD43358, &qword_23136FA90);
        v39 = v45;
        if (__swift_getEnumTagSinglePayload(v45, 1, v25) == 1)
        {
          (*(v46 + 8))(v49, v38);
          v26 = v47;
          (*(v41 + 8))(v24, v47);
          sub_2311D1F18(v39, &qword_27DD43358, &qword_23136FA90);
          v32 = 1;
          v31 = v51;
          return __swift_storeEnumTagSinglePayload(v31, v32, 1, v26);
        }

        v31 = v51;
        sub_231369CC0();
        (*(v46 + 8))(v49, v38);
        v26 = v47;
        (*(v41 + 8))(v24, v47);
        v43(v39, v25);
        goto LABEL_8;
      }

      sub_2311D1F18(v36, &qword_27DD43358, &qword_23136FA90);
      (*(v34 + 8))(v49, v48);
      v26 = v47;
      (*(v41 + 8))(v24, v47);
    }
  }

  sub_231369670();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v25);
  v31 = v51;
  if (EnumTagSinglePayload != 1)
  {
    sub_231369CC0();
    (*(*(v25 - 8) + 8))(v10, v25);
LABEL_8:
    v32 = 0;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v26);
  }

  sub_2311D1F18(v10, &qword_27DD43358, &qword_23136FA90);
  v32 = 1;
  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v26);
}

void *sub_23123CE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v46 - v5;
  v62 = sub_2313696B0();
  MEMORY[0x28223BE20](v62);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v46 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  v56 = v13;
  v57 = v12;
  v55 = v13 + 16;
  v59 = (v13 + 32);
  v48 = xmmword_23136B670;
  v51 = a1;
  while (1)
  {
    if (v57 == v10)
    {
      goto LABEL_20;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v15 = *(v56 + 72);
    v16 = v61;
    (*(v56 + 16))(v61, a1 + v14 + v15 * v10, v62);
    sub_23123C81C(v16, v58, v6);
    if (v3)
    {
      (*(v56 + 8))(v61, v62);

LABEL_20:

      return v11;
    }

    v60 = v10;
    v17 = v6;
    v25 = sub_231216378(v6);
    v26 = v11[2];
    v27 = (v18 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_22;
    }

    v29 = v18;
    if (v11[3] < v28)
    {
      sub_2312B4680(v28, 1, v19, v20, v21, v22, v23, v24, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56);
      v11 = v63;
      v30 = sub_231216378(v17);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_24;
      }

      v25 = v30;
    }

    if (v29)
    {
      v53 = 0;
      sub_2311D1F18(v17, &qword_27DD437B8, &qword_23136FA60);
      v32 = v11[7];
      v33 = *v59;
      (*v59)(v54, v61, v62);
      v34 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v34;
      v52 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23126E138(0, *(v34 + 16) + 1, 1, v34);
        v34 = v43;
        *(v32 + 8 * v25) = v43;
      }

      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23126E138(v36 > 1, v37 + 1, 1, v34);
        v34 = v44;
        *(v32 + 8 * v25) = v44;
      }

      v3 = v53;
      v38 = v54;
      v6 = v17;
      *(v34 + 16) = v37 + 1;
      v52(v34 + v14 + v37 * v15, v38, v62);
      a1 = v51;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43448, &qword_23136C968);
      v39 = swift_allocObject();
      *(v39 + 16) = v48;
      (*v59)(v39 + v14, v61, v62);
      v11[(v25 >> 6) + 8] |= 1 << v25;
      sub_23123E9F8(v17, v11[6] + *(v50 + 72) * v25, &qword_27DD437B8, &qword_23136FA60);
      *(v11[7] + 8 * v25) = v39;
      v40 = v11[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_23;
      }

      v11[2] = v42;
      v6 = v17;
    }

    v10 = v60 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_23123D2CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23120B320;

  return sub_23123BAF4(v4, a2);
}

void sub_23123D364(uint64_t a1, uint64_t a2)
{
  sub_23123EA44(qword_280F7D7E8, a2, type metadata accessor for AppEntityCountBasedSignalExtractor, &unk_23136FA20);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_23123D3D0()
{
  v0 = sub_231368290();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231369D50();
  __swift_allocate_value_buffer(v4, qword_280F8E570);
  v5 = __swift_project_value_buffer(v4, qword_280F8E570);
  v6 = swift_allocObject();
  (*(v1 + 104))(v3, *MEMORY[0x277D60EB8], v0);
  v7 = sub_231368280();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v6[2] = v7;
  v6[3] = v9;
  v6[4] = 0xD000000000000016;
  v6[5] = 0x800000023137D960;
  *v5 = v6;
  return (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D72D28], v4);
}

uint64_t sub_23123D570()
{
  v0 = sub_231368290();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231369D50();
  __swift_allocate_value_buffer(v4, qword_280F8E5A0);
  v5 = __swift_project_value_buffer(v4, qword_280F8E5A0);
  v6 = swift_allocObject();
  (*(v1 + 104))(v3, *MEMORY[0x277D60EB0], v0);
  v7 = sub_231368280();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  *(v6 + 16) = v7;
  *(v6 + 24) = v9;
  strcpy((v6 + 32), "DOCFileEntity");
  *(v6 + 46) = -4864;
  *v5 = v6;
  return (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D72D28], v4);
}

uint64_t sub_23123D738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v54 - v4;
  v5 = sub_2313698C0();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231369D50();
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_231369BE0();
  v69 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23123EA8C(a1, v15, &qword_27DD43358, &qword_23136FA90);
  v19 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_2311D1F18(v15, &qword_27DD43358, &qword_23136FA90);
LABEL_10:
    v46 = v70;
    v47 = 1;
    return __swift_storeEnumTagSinglePayload(v46, v47, 1, v19);
  }

  v20 = *(v19 - 8);
  v21 = (*(v20 + 88))(v15, v19);
  if (v21 != *MEMORY[0x277D729F8])
  {
    (*(v20 + 8))(v15, v19);
    goto LABEL_10;
  }

  v62 = v21;
  v63 = v20;
  (*(v20 + 96))(v15, v19);
  v22 = swift_projectBox();
  v23 = v69;
  (*(v69 + 16))(v18, v22, v16);

  sub_231369BD0();
  v24 = v68;
  v25 = (*(v68 + 88))(v12, v8);
  if (v25 != *MEMORY[0x277D72D28])
  {
    (*(v23 + 8))(v18, v16);
    (*(v24 + 8))(v12, v8);
    goto LABEL_10;
  }

  v59 = v25;
  (*(v24 + 96))(v12, v8);
  v26 = *v12;
  v27 = *(*v12 + 16);
  v28 = *(*v12 + 24);
  v58 = v27;
  v29 = *(v26 + 40);
  v60 = *(v26 + 32);
  sub_231369EE0();
  v61 = v29;
  sub_231369EE0();

  v75 = sub_231369BA0();
  v76 = v30;
  v73 = 63;
  v74 = 0xE100000000000000;
  sub_231207C1C(v75, v30, v31);
  v32 = sub_23136A4E0();

  if (!v32[2])
  {
    (*(v69 + 8))(v18, v16);

    goto LABEL_10;
  }

  v56 = v28;
  v33 = v32[4];
  v34 = v32[5];
  sub_231369EE0();

  v75 = v33;
  v76 = v34;
  v73 = 0x74694B636973756DLL;
  v74 = 0xEB000000002F2F3ALL;
  v71 = 47;
  v72 = 0xE100000000000000;
  v35 = sub_23136A500();
  v37 = v36;

  v38 = v61;
  v75 = v60;
  v76 = v61;
  sub_231369EE0();
  MEMORY[0x23192A730](v35, v37);

  v39 = v76;
  v57 = v75;
  sub_231369150();
  sub_231369EE0();
  sub_231369EE0();
  v40 = sub_2313698A0();
  v41 = sub_23136A3A0();
  v55 = v39;

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v75 = v54;
    *v42 = 136315394;
    v43 = sub_2311CFD58(v60, v38, &v75);

    *(v42 + 4) = v43;
    *(v42 + 12) = 2080;
    v44 = v55;
    *(v42 + 14) = sub_2311CFD58(v57, v55, &v75);
    _os_log_impl(&dword_2311CB000, v40, v41, "AppEntityCountBasedSignalExtractor:: genericMusicEntityTransformer:: %s -> %s", v42, 0x16u);
    v45 = v54;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v45, -1, -1);
    MEMORY[0x23192B930](v42, -1, -1);

    (*(v64 + 8))(v7, v65);
  }

  else
  {

    (*(v64 + 8))(v7, v65);
    v44 = v55;
  }

  v49 = v57;
  v65 = swift_allocBox();
  v50 = swift_allocObject();
  v51 = v56;
  v50[2] = v58;
  v50[3] = v51;
  v50[4] = v49;
  v50[5] = v44;
  v52 = v66;
  *v66 = v50;
  (*(v68 + 104))(v52, v59, v8);
  sub_231369BA0();
  sub_231369BB0();
  sub_231369BC0();
  (*(v69 + 8))(v18, v16);
  v53 = v70;
  *v70 = v65;
  (*(v63 + 104))(v53, v62, v19);
  v46 = v53;
  v47 = 0;
  return __swift_storeEnumTagSinglePayload(v46, v47, 1, v19);
}

uint64_t sub_23123DF9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  return sub_231366B20();
}

uint64_t sub_23123E024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v42 - v4;
  v5 = sub_231369D50();
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_231369BE0();
  v52 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23123EA8C(a1, v13, &qword_27DD43358, &qword_23136FA90);
  v17 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v13, 1, v17) == 1)
  {
    sub_2311D1F18(v13, &qword_27DD43358, &qword_23136FA90);
  }

  else
  {
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v13, v17);
    if (v19 == *MEMORY[0x277D729F8])
    {
      v49 = v19;
      (*(v18 + 96))(v13, v17);
      v20 = swift_projectBox();
      v21 = v52;
      (*(v52 + 16))(v16, v20, v14);

      sub_231369BD0();
      v22 = v51;
      v23 = (*(v51 + 88))(v10, v5);
      if (v23 == *MEMORY[0x277D72D28])
      {
        v46 = v23;
        v47 = v18;
        (*(v22 + 96))(v10, v5);
        v25 = *(*v10 + 16);
        v24 = *(*v10 + 24);
        v26 = *(*v10 + 32);
        v27 = *(*v10 + 40);
        v44 = v25;
        v45 = v26;
        v48 = v24;
        sub_231369EE0();
        sub_231369EE0();

        v56 = sub_231369BA0();
        v57 = v28;
        v54 = 1029990758;
        v55 = 0xE400000000000000;
        sub_231207C1C(v56, v28, v29);
        v30 = sub_23136A520();

        if (v30)
        {
          v43 = swift_allocBox();
          v31 = swift_allocObject();
          v32 = v48;
          v31[2] = v44;
          v31[3] = v32;
          v56 = v45;
          v57 = v27;
          sub_231369EE0();
          v33 = 1684629039;
        }

        else
        {
          v56 = sub_231369BA0();
          v57 = v37;
          v54 = 1029990756;
          v55 = 0xE400000000000000;
          v38 = sub_23136A520();

          if ((v38 & 1) == 0)
          {
            (*(v52 + 8))(v16, v14);

            goto LABEL_9;
          }

          v43 = swift_allocBox();
          v31 = swift_allocObject();
          v39 = v48;
          v31[2] = v44;
          v31[3] = v39;
          v56 = v45;
          v57 = v27;
          sub_231369EE0();
          v33 = 1684628527;
        }

        MEMORY[0x23192A730](v33, 0xE400000000000000);

        v40 = v57;
        v31[4] = v56;
        v31[5] = v40;
        *v7 = v31;
        (*(v51 + 104))(v7, v46, v5);
        sub_231369BA0();
        sub_231369BB0();
        sub_231369BC0();
        (*(v52 + 8))(v16, v14);
        v41 = v53;
        *v53 = v43;
        (*(v47 + 104))(v41, v49, v17);
        v34 = v41;
        v35 = 0;
        return __swift_storeEnumTagSinglePayload(v34, v35, 1, v17);
      }

      (*(v21 + 8))(v16, v14);
      (*(v22 + 8))(v10, v5);
    }

    else
    {
      (*(v18 + 8))(v13, v17);
    }
  }

LABEL_9:
  v34 = v53;
  v35 = 1;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v17);
}

uint64_t sub_23123E6EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C30, &qword_23136FA98);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C38, &unk_23136FAA0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136C1C0;
  v4 = v3 + v2;
  v16 = *(v0 + 48);
  if (qword_280F80560 != -1)
  {
    swift_once();
  }

  v5 = sub_231369D50();
  v6 = __swift_project_value_buffer(v5, qword_280F8E570);
  v7 = *(*(v5 - 8) + 16);
  v7(v4, v6, v5);
  if (qword_280F80570 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
  v9 = __swift_project_value_buffer(v8, qword_280F8E588);
  v10 = *(*(v8 - 8) + 16);
  v10(v4 + v16, v9, v8);
  v11 = v4 + v1;
  v12 = *(v0 + 48);
  if (qword_280F80578 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F8E5A0);
  v7(v11, v13, v5);
  if (qword_280F80588 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F8E5B8);
  v10(v11 + v12, v14, v8);
  sub_23123EA44(&qword_280F7C888, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
  *(v17 + 16) = sub_231369EC0();
  return v17;
}

uint64_t sub_23123E9F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_64();
  v6(v5);
  return v4;
}

uint64_t sub_23123EA44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23123EA8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_64();
  v6(v5);
  return v4;
}

void *sub_23123EAD8(uint64_t *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_231367D80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v52 - v7;
  MEMORY[0x28223BE20](v8);
  v67 = &v52 - v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23136FAB0;
  sub_2313690A0();
  HasNoEngagementPolicy = type metadata accessor for HasNoEngagementPolicy();
  swift_allocObject();
  v15 = sub_2312E8D30(&v71, 0, 1);
  *(v13 + 56) = HasNoEngagementPolicy;
  *(v13 + 64) = &off_2845F6340;
  *(v13 + 32) = v15;
  v16 = type metadata accessor for NotExposedTooManyTimesPolicy();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v13 + 96) = v16;
  *(v13 + 104) = &off_2845F6320;
  v55 = v13;
  *(v13 + 72) = v17;
  v54 = v10;
  *&v69 = v10;
  *(&v69 + 1) = v11;
  v53 = v11;
  v57 = v12;
  v70 = v12;
  sub_23123F03C(v17, v18, v19);
  sub_231367A10();
  v21 = v20;
  result = sub_231367D60();
  v23 = result;
  v24 = 0;
  v68 = result[2];
  v66 = v4 + 16;
  v64 = v4 + 88;
  v63 = *MEMORY[0x277D60BA0];
  v62 = (v4 + 8);
  v52 = (v4 + 96);
  v65 = v4;
  v58 = (v4 + 32);
  v61 = MEMORY[0x277D84F90];
  v25 = v60;
  while (1)
  {
    if (v68 == v24)
    {

      v41 = v56;
      sub_2311CF324(v56, &v71);
      v42 = type metadata accessor for NotShownPreviousSuggestionTooSoonPolicy();
      swift_allocObject();
      v43 = sub_2312EA284(&v71, v61, v21);
      v44 = v55;
      v55[17] = v42;
      v44[18] = &off_2845F6310;
      v44[14] = v43;
      sub_2311CF324(v41, &v71);
      v45 = v54;
      v46 = v53;
      *&v69 = v54;
      *(&v69 + 1) = v53;
      v47 = v57;
      v70 = v57;
      DeliveryVehiclePolicy = type metadata accessor for SuppressionWindowSinceLastDeliveryVehiclePolicy();
      swift_allocObject();
      v49 = sub_2312ECB48(&v71, &v69);
      v44[22] = DeliveryVehiclePolicy;
      v44[23] = &off_2845F62C0;
      v44[19] = v49;
      *&v71 = v45;
      *(&v71 + 1) = v46;
      v72 = v47;
      inited = type metadata accessor for MinSiriInitActionCountSinceDeliveryVehicle();
      swift_allocObject();
      v51 = sub_2312ED968(&v71);
      v44[27] = inited;
      v44[28] = &off_2845F62B0;
      v44[24] = v51;
      swift_bridgeObjectRetain_n();
      return v44;
    }

    if (v24 >= *(v23 + 16))
    {
      break;
    }

    v26 = v65;
    v27 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v28 = v23;
    v29 = *(v65 + 72);
    v30 = v23 + v27 + v29 * v24;
    v31 = *(v65 + 16);
    v32 = v67;
    v31(v67, v30, v3);
    v31(v25, v32, v3);
    v33 = (*(v26 + 88))(v25, v3);
    if (v33 == v63)
    {
      (*v52)(v25, v3);
      v35 = sub_231367020();
      (*(*(v35 - 8) + 8))(v25, v35);
      v36 = *v58;
      (*v58)(v59, v32, v3);
      v37 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v71 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5784(0, *(v37 + 16) + 1, 1);
        v37 = v71;
      }

      v23 = v28;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2311F5784(v39 > 1, v40 + 1, 1);
        v37 = v71;
      }

      ++v24;
      *(v37 + 16) = v40 + 1;
      v61 = v37;
      result = v36((v37 + v27 + v40 * v29), v59, v3);
    }

    else
    {
      v34 = *v62;
      (*v62)(v25, v3);
      result = v34(v32, v3);
      ++v24;
      v23 = v28;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23123F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7CE78;
  if (!qword_280F7CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE78);
  }

  return result;
}

void sub_23123F090(uint64_t a1)
{
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v65 = v3;
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v67 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - v7;
  v9 = sub_2313696B0();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = (v14 - v13);
  v16 = sub_231367B30();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  v22 = *(a1 + 16);
  v71 = v11;
  v72 = v9;
  if (v22)
  {
    v24 = *(v18 + 16);
    v23 = v18 + 16;
    v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v74 = *(v23 + 56);
    v75 = v24;
    v26 = (v23 - 8);
    v73 = (v11 + 32);
    v27 = MEMORY[0x277D84F90];
    v69 = v23;
    v70 = v15;
    do
    {
      (v75)(v21, v25, v16);
      sub_231367AF0();
      (*v26)(v21, v16);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2311D1F18(v8, &qword_27DD43C68, &qword_231378D20);
      }

      else
      {
        v28 = *v73;
        (*v73)(v15, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23126E138(0, *(v27 + 16) + 1, 1, v27);
          v27 = v32;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_23126E138(v29 > 1, v30 + 1, 1, v27);
          v27 = v33;
        }

        *(v27 + 16) = v30 + 1;
        v15 = v70;
        v31 = v27 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v30;
        v9 = v72;
        v28(v31, v70, v72);
      }

      v25 += v74;
      --v22;
    }

    while (v22);
  }

  v34 = sub_23136A1E0();

  v35 = sub_231240B68(v34, v68);

  if (v35[2])
  {
    v36 = v67;
    sub_231369130();

    v37 = sub_2313698A0();
    v38 = sub_23136A3A0();

    if (os_log_type_enabled(v37, v38))
    {
      v69 = 0;
      LODWORD(v74) = v38;
      v75 = v37;
      v39 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76 = v70;
      v73 = v39;
      *v39 = 136315138;
      v40 = 1 << *(v35 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & v35[8];
      v43 = (v40 + 63) >> 6;
      swift_retain_n();
      v44 = 0;
      v45 = MEMORY[0x277D84F90];
      while (v42)
      {
LABEL_22:
        v47 = *(v35[7] + ((v44 << 9) | (8 * __clz(__rbit64(v42)))));
        v48 = *(v47 + 16);
        v49 = *(v45 + 16);
        v50 = v49 + v48;
        if (__OFADD__(v49, v48))
        {
          goto LABEL_41;
        }

        sub_231369EE0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v50 > *(v45 + 24) >> 1)
        {
          if (v49 <= v50)
          {
            v52 = v49 + v48;
          }

          else
          {
            v52 = v49;
          }

          sub_23126E138(isUniquelyReferenced_nonNull_native, v52, 1, v45);
          v45 = v53;
        }

        v42 &= v42 - 1;
        if (*(v47 + 16))
        {
          if ((*(v45 + 24) >> 1) - *(v45 + 16) < v48)
          {
            goto LABEL_42;
          }

          swift_arrayInitWithCopy();

          if (v48)
          {
            v54 = *(v45 + 16);
            v55 = __OFADD__(v54, v48);
            v56 = v54 + v48;
            if (v55)
            {
              goto LABEL_43;
            }

            *(v45 + 16) = v56;
          }
        }

        else
        {

          if (v48)
          {
            __break(1u);
            goto LABEL_36;
          }
        }
      }

      while (1)
      {
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v46 >= v43)
        {

          v57 = sub_23136A1D0();
          v59 = v58;

          v60 = sub_2311CFD58(v57, v59, &v76);

          v61 = v73;
          *(v73 + 1) = v60;
          v62 = v75;
          _os_log_impl(&dword_2311CB000, v75, v74, "%s", v61, 0xCu);
          v63 = v70;
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x23192B930](v63, -1, -1);
          MEMORY[0x23192B930](v61, -1, -1);

          (*(v65 + 8))(v67, v66);
          goto LABEL_39;
        }

        v42 = v35[v46 + 8];
        ++v44;
        if (v42)
        {
          v44 = v46;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    else
    {

      (*(v65 + 8))(v36, v66);
LABEL_39:
      *(swift_allocObject() + 16) = v35;
    }
  }

  else
  {
LABEL_36:
  }
}

uint64_t sub_23123F6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C80, &unk_23136FB40);
  v0 = sub_231369D40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136FAB0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D72CE0], v0);
  v6(v5 + v2, *MEMORY[0x277D72CD0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D72CA0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D72CB0], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x277D72CE8], v0);
  off_27DD43C50 = v4;
  return result;
}

uint64_t sub_23123F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_231369D30();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  MEMORY[0x23192A470]();
  sub_23123F944(a1, a2, a3, v14, a4);
  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_23123F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v122 = a2;
  v124 = a3;
  v125 = a1;
  v123 = a5;
  v6 = sub_231369DD0();
  v7 = *(v6 - 8);
  v119 = v6;
  v120 = v7;
  MEMORY[0x28223BE20](v6);
  v112 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v104 - v10;
  MEMORY[0x28223BE20](v11);
  v110 = &v104 - v12;
  v13 = sub_2313698C0();
  v116 = *(v13 - 8);
  v117 = v13;
  MEMORY[0x28223BE20](v13);
  v114 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = &v104 - v16;
  v109 = sub_231369D00();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = (&v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43350, &unk_23136C2E0);
  MEMORY[0x28223BE20](v18 - 8);
  v118 = (&v104 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v20 - 8);
  v108 = (&v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v115 = (&v104 - v23);
  v24 = sub_231369D50();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_231369D30();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v105 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v104 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v104 - v36;
  v38 = *(v29 + 16);
  v38(&v104 - v36, a4, v28, v35);
  v39 = (*(v29 + 88))(v37, v28);
  if (v39 == *MEMORY[0x277D72AD0])
  {
    goto LABEL_2;
  }

  if (v39 == *MEMORY[0x277D72AE8])
  {
    (*(v29 + 96))(v37, v28);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C58, &qword_23136FB18);
    v42 = swift_projectBox();
    v43 = *(v41 + 48);
    (v38)(v33, v42, v28);
    v44 = v115;
    sub_2311F03B0(v42 + v43, v115, &qword_27DD43358, &qword_23136FA90);
    v45 = v118;
    v46 = v124;
    v47 = v125;
    v48 = v122;
    sub_23123F944(v125, v122, v124, v33, v118);
    (*(v29 + 8))(v33, v28);
    v49 = type metadata accessor for ResolvedParameter(0);
    if (__swift_getEnumTagSinglePayload(v45, 1, v49) == 1)
    {
      v50 = v108;
      sub_2311F0440(v44, v108, &qword_27DD43358, &qword_23136FA90);
      v51 = v109;
      if (__swift_getEnumTagSinglePayload(v50, 1, v109) != 1)
      {
        v84 = v106;
        v85 = v50;
        v86 = *(v107 + 32);
        v86(v106, v85, v51);
        v87 = v123;
        (*(v120 + 16))(v123 + *(v49 + 20), v47, v119);
        v86(v87 + *(v49 + 24), v84, v51);
        *v87 = v48;
        v87[1] = v46;
        sub_231369EE0();
        sub_2311D1F18(v118, &qword_27DD43350, &unk_23136C2E0);
        __swift_storeEnumTagSinglePayload(v87, 0, 1, v49);
      }

      v44 = v50;
    }

    v52 = v123;
    sub_2311D1F18(v44, &qword_27DD43358, &qword_23136FA90);
    sub_2311F0440(v45, v52, &qword_27DD43350, &unk_23136C2E0);
  }

  if (v39 == *MEMORY[0x277D72AB8])
  {
LABEL_2:
    (*(v29 + 96))(v37, v28);
    v40 = swift_projectBox();
    (*(v25 + 16))(v27, v40, v24);
    sub_2312404F0(v125, v122, v124, v123);
    (*(v25 + 8))(v27, v24);
  }

  v53 = v113;
  sub_231369130();
  v54 = v119;
  v56 = v120 + 16;
  v55 = *(v120 + 16);
  v57 = v110;
  v58 = v125;
  (v55)(v110, v125, v119);
  v59 = v111;
  v121 = v56;
  v118 = v55;
  (v55)(v111, v58, v54);
  v60 = v124;
  sub_231369EE0();
  v61 = sub_2313698A0();
  v62 = sub_23136A3B0();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v126[0] = v109;
    *v63 = 136315650;
    *(v63 + 4) = sub_2311CFD58(v122, v60, v126);
    *(v63 + 12) = 2080;
    v108 = v61;
    v64 = sub_231369DB0();
    v65 = v59;
    v67 = v66;
    LODWORD(v107) = v62;
    v68 = *(v120 + 8);
    v68(v57, v119);
    v69 = sub_2311CFD58(v64, v67, v126);

    *(v63 + 14) = v69;
    *(v63 + 22) = 2080;
    v71 = v105;
    MEMORY[0x23192A470](v70);
    v72 = sub_231369D20();
    v74 = v73;
    v75 = *(v29 + 8);
    v110 = ((v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v76 = v71;
    v77 = v75;
    v75(v76, v28);
    v78 = v65;
    v60 = v124;
    v115 = v68;
    v68(v78, v119);
    v54 = v119;
    v79 = sub_2311CFD58(v72, v74, v126);

    *(v63 + 24) = v79;
    v80 = v108;
    _os_log_impl(&dword_2311CB000, v108, v107, "Unsupported parameter %s:%s. Unknown type: %s", v63, 0x20u);
    v81 = v109;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v81, -1, -1);
    MEMORY[0x23192B930](v63, -1, -1);

    v82 = *(v116 + 8);
    v82(v113, v117);
  }

  else
  {

    v89 = *(v120 + 8);
    v89(v59, v54);
    v115 = v89;
    v89(v57, v54);
    v82 = *(v116 + 8);
    v82(v53, v117);
    v77 = *(v29 + 8);
  }

  v83 = v114;
  v77(v37, v28);
  sub_231369130();
  v90 = v112;
  (v118)(v112, v125, v54);
  sub_231369EE0();
  v91 = sub_2313698A0();
  v92 = sub_23136A3B0();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = v54;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v126[0] = v95;
    *v94 = 136315394;
    *(v94 + 4) = sub_2311CFD58(v122, v60, v126);
    *(v94 + 12) = 2080;
    v96 = sub_231369DB0();
    v97 = v90;
    v99 = v98;
    v115(v97, v93);
    v100 = sub_2311CFD58(v96, v99, v126);

    *(v94 + 14) = v100;
    _os_log_impl(&dword_2311CB000, v91, v92, "Unsupported parameter %s:%s. Nothing to resolve to", v94, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v95, -1, -1);
    MEMORY[0x23192B930](v94, -1, -1);

    v101 = v114;
  }

  else
  {

    v115(v90, v54);
    v101 = v83;
  }

  v82(v101, v117);
  v102 = v123;
  v103 = type metadata accessor for ResolvedParameter(0);
  return __swift_storeEnumTagSinglePayload(v102, 1, 1, v103);
}

uint64_t sub_2312404F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v55 - v9;
  v64 = sub_231369D00();
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C60, &unk_23136FB20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_2313696B0();
  v70 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v23);
  v61 = &v55 - v24;
  MEMORY[0x28223BE20](v25);
  v62 = &v55 - v26;
  v27 = *(v4 + 16);
  if (*(v27 + 16) && (v28 = sub_231216260(), (v29 & 1) != 0) && (v30 = *(*(v27 + 56) + 8 * v28), (v69 = *(v30 + 16)) != 0))
  {
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v32 = v70 + 16;
    v31 = *(v70 + 16);
    v66 = v30 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v67 = v31;
    (v31)(v22);
    v33 = (v32 - 8);
    v68 = v32;
    v65 = (v32 + 16);
    result = sub_231369EE0();
    for (i = 1; v69 != i; ++i)
    {
      if (i >= *(v30 + 16))
      {
        __break(1u);
        return result;
      }

      v67(v19, v66 + *(v70 + 72) * i, v17);
      sub_2313696A0();
      v36 = sub_231369620();
      if (__swift_getEnumTagSinglePayload(v16, 1, v36) == 1)
      {
        sub_2311D1F18(v16, &qword_27DD43C60, &unk_23136FB20);
        v37 = 0.0;
      }

      else
      {
        sub_231369610();
        v37 = v38;
        (*(*(v36 - 8) + 8))(v16, v36);
      }

      sub_2313696A0();
      if (__swift_getEnumTagSinglePayload(v13, 1, v36) == 1)
      {
        sub_2311D1F18(v13, &qword_27DD43C60, &unk_23136FB20);
        v39 = v37 < 0.0;
      }

      else
      {
        sub_231369610();
        v41 = v40;
        (*(*(v36 - 8) + 8))(v13, v36);
        v39 = v37 < v41;
      }

      if (v39)
      {
        (*v33)(v22, v17);
        result = (*v65)(v22, v19, v17);
      }

      else
      {
        result = (*v33)(v19, v17);
      }
    }

    v42 = *v65;
    v43 = v61;
    (*v65)(v61, v22, v17);
    v44 = v62;
    v42(v62, v43, v17);
    v45 = v63;
    sub_231369670();
    (*v33)(v44, v17);
    v46 = v64;
    if (__swift_getEnumTagSinglePayload(v45, 1, v64) == 1)
    {
      sub_2311D1F18(v45, &qword_27DD43358, &qword_23136FA90);
      a4 = v57;
      goto LABEL_19;
    }

    v48 = v58;
    v49 = *(v59 + 32);
    v49(v58, v45, v46);
    v50 = type metadata accessor for ResolvedParameter(0);
    v51 = *(v50 + 20);
    v52 = sub_231369DD0();
    v53 = v57;
    (*(*(v52 - 8) + 16))(v57 + v51, v60, v52);
    v49(&v53[*(v50 + 24)], v48, v46);
    v54 = v56;
    *v53 = v55;
    *(v53 + 1) = v54;
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);
    return sub_231369EE0();
  }

  else
  {
LABEL_19:
    v47 = type metadata accessor for ResolvedParameter(0);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v47);
  }
}

unint64_t *sub_231240B68(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_2312412C0(v10, v6, v4, a2);
      MEMORY[0x23192B930](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v7 = (v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v6, v7);
  sub_231240CD8(v7, v6, v4);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void sub_231240CD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43[0] = a2;
  v45 = a1;
  v4 = sub_231369D40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C70, &qword_23136FB30);
  MEMORY[0x28223BE20](v55);
  v54 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = v43 - v10;
  v11 = sub_231369D50();
  v14 = MEMORY[0x28223BE20](v11);
  v64 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v57 = 0;
  v16 = 0;
  v17 = *(a3 + 64);
  v44 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v52 = v13 + 16;
  v51 = v13 + 88;
  v50 = *MEMORY[0x277D72D50];
  v48 = (v5 + 16);
  v49 = (v13 + 96);
  v46 = v7;
  v47 = (v5 + 8);
  v65 = v13;
  v61 = v12;
  v62 = (v13 + 8);
  v53 = v21;
LABEL_4:
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v60 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v16 << 6);
    v26 = v56;
    v27 = *(v65 + 16);
    v28 = v64;
    v27(v64, v56[6] + *(v65 + 72) * v25, v11, v14);
    v29 = v26[7];
    v58 = v25;
    v30 = *(v29 + 8 * v25);
    v31 = v63;
    (v27)(v63, v28, v11);
    *(v31 + *(v55 + 48)) = v30;
    v32 = v31;
    v33 = v54;
    sub_2311F03B0(v32, v54, &qword_27DD43C70, &qword_23136FB30);
    v59 = v30;
    swift_bridgeObjectRetain_n();
    v11 = v61;

    v34 = (*(v65 + 88))(v33, v11);
    if (v34 == v50)
    {
      (*v49)(v33, v11);
      v35 = swift_projectBox();
      v36 = v46;
      (*v48)(v46, v35, v4);

      if (qword_27DD42CA0 != -1)
      {
        swift_once();
      }

      v37 = 0;
      v38 = *(off_27DD43C50 + 2);
      while (v38 != v37)
      {
        v39 = v37 + 1;
        sub_231241B2C(&qword_27DD43870, MEMORY[0x277D72D08], MEMORY[0x277D72D10]);
        v40 = sub_231369F60();
        v37 = v39;
        if (v40)
        {
          sub_2311D1F18(v63, &qword_27DD43C70, &qword_23136FB30);
          (*v47)(v36, v4);

          v11 = v61;
          (*v62)(v64, v61);
          v21 = v53;
          v20 = v60;
          goto LABEL_4;
        }
      }

      sub_2311D1F18(v63, &qword_27DD43C70, &qword_23136FB30);
      (*v47)(v36, v4);

      v11 = v61;
      v41 = *v62;
    }

    else
    {
      sub_2311D1F18(v63, &qword_27DD43C70, &qword_23136FB30);
      v41 = *v62;
      (*v62)(v33, v11);
    }

    v41(v64, v11);
    *(v45 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
    v42 = __OFADD__(v57++, 1);
    v21 = v53;
    v20 = v60;
    if (v42)
    {
      goto LABEL_25;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      sub_231241350(v45, v43[0], v57, v56);
      return;
    }

    v24 = *(v44 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v60 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t *sub_2312412C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_231241B00(v7, a2, a3, &v8);

    if (!v4)
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_231241350(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_231369D50();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C78, &qword_23136FB38);
  result = sub_23136A790();
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
    sub_231241B2C(&qword_280F7C888, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
    v42 = v23;
    sub_231369EE0();
    result = sub_231369F30();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_2312416E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C90, &qword_23136FB50);
      v7 = sub_23136A790();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v32 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        sub_2311CF324(v16 + 40 * v15, v34);
        sub_2311E6A28(v34, v33);
        sub_23136A9D0();
        sub_231369EE0();
        sub_23136A060();
        sub_23136AA00();
        OUTLINED_FUNCTION_3_14();
        if (((v22 << v21) & ~*(v11 + 8 * v20)) == 0)
        {
          OUTLINED_FUNCTION_51();
          while (++v23 != v25 || (v24 & 1) == 0)
          {
            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            if (*(v11 + 8 * v23) != -1)
            {
              OUTLINED_FUNCTION_50_0();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_52_4();
LABEL_25:
        OUTLINED_FUNCTION_7_9();
        *(v11 + v27) |= v28;
        v30 = (*(v8 + 48) + 16 * v29);
        *v30 = v18;
        v30[1] = v19;
        sub_2311E6A28(v33, *(v8 + 56) + 40 * v29);
        OUTLINED_FUNCTION_6_9();
        if (v31)
        {
          goto LABEL_30;
        }

        v4 = v32;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_231241918(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v9 = sub_23136A790();
      v10 = v9;
      if (a2 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *a1;
      }

      v12 = 0;
      v13 = v9 + 64;
      v35 = v6;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_16:
        v17 = v14 | (v12 << 6);
        v18 = *(v6 + 56);
        v19 = (*(v6 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(v18 + 8 * v17);
        sub_23136A9D0();
        sub_231369EE0();

        sub_23136A060();
        sub_23136AA00();
        OUTLINED_FUNCTION_3_14();
        if (((v25 << v24) & ~*(v13 + 8 * v23)) == 0)
        {
          OUTLINED_FUNCTION_51();
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            if (*(v13 + 8 * v26) != -1)
            {
              OUTLINED_FUNCTION_50_0();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_52_4();
LABEL_25:
        OUTLINED_FUNCTION_7_9();
        *(v13 + v30) |= v31;
        v33 = (*(v10 + 48) + 16 * v32);
        *v33 = v20;
        v33[1] = v21;
        *(*(v10 + 56) + 8 * v32) = v22;
        OUTLINED_FUNCTION_6_9();
        if (v34)
        {
          goto LABEL_30;
        }

        v6 = v35;
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= a2)
        {
          return;
        }

        v16 = a1[v12];
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_231241B00(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_231240CD8(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_231241B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231241B88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_231241BAC, 0, 0);
}

uint64_t sub_231241BAC()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_231241C58;
  v2 = v0[3];
  v3 = v0[2];

  return sub_23124207C(0, 0, v3, v2);
}

uint64_t sub_231241C58()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v4 = *v1;
  OUTLINED_FUNCTION_9();
  *v5 = v4;

  OUTLINED_FUNCTION_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_231241D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  OUTLINED_FUNCTION_34_0(v8);

  return v10(a1, a2, a3);
}

uint64_t sub_231241E68()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_9();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_231241F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_3();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  OUTLINED_FUNCTION_34_0(v10);

  return v12(a1, a2, a3, a4);
}

uint64_t sub_23124207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  if (a3)
  {
    sub_231207BDC(0, &qword_27DD43708, 0x277CCABB0);
    v6 = sub_23136A190();
  }

  v4[19] = v6;
  if (a4)
  {
    a4 = sub_23136A190();
  }

  v4[20] = a4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4[2] = v4;
  v4[7] = v4 + 18;
  v4[3] = sub_231242204;
  v8 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CC8, &qword_23136FC38);
  v4[10] = MEMORY[0x277D85DD0];
  v4[11] = 1107296256;
  v4[12] = sub_23124238C;
  v4[13] = &block_descriptor_2;
  v4[14] = v8;
  [ObjCClassFromMetadata fetchEntitiesFromActiveApplicationsWithInteractionIDs:v6 bundleIdentifiers:a4 completionHandler:v4 + 10];

  return MEMORY[0x282200938](v4 + 2);
}

uint64_t sub_231242204()
{
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = v4[20];
  v6 = v4[19];
  if (v4[6])
  {
    swift_willThrow();

    v7 = *(v3 + 8);

    return v7();
  }

  else
  {
    v9 = *(v1 + 144);

    v10 = *(v3 + 8);

    return v10(v9);
  }
}

uint64_t sub_23124238C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_2311FA174();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CB8, &qword_23136FC28);
    sub_231369E80();

    return sub_2311FA178();
  }
}

uint64_t sub_231242440()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  v1[6] = v3;
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CA0, &qword_23136FC08);
  v1[8] = swift_task_alloc();
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CA8, &qword_23136FC10);
  OUTLINED_FUNCTION_3_3();
  v1[10] = v4;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312425BC, 0, 0);
}

uint64_t sub_2312425BC()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_231207BDC(0, &qword_27DD43CB0, 0x277D23CE0);
  sub_231367FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = xmmword_23136B670;
  v9 = *(v6 + 24);
  *(v8 + 32) = *(v6 + 16);
  *(v8 + 40) = v9;
  (*(v1 + 16))(v4, v2, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  sub_231369EE0();

  sub_231369EE0();
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_23124279C;
  v14 = v0[8];
  v15 = MEMORY[0x277D837D0];

  return MEMORY[0x2821C6B08](v8, v14, &unk_23136FC20, v10, v15, v7, v12, v13);
}

uint64_t sub_23124279C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;
  *(v9 + 120) = v8;
  *(v9 + 128) = v0;

  sub_2312435B4(v5);

  if (v0)
  {
    v10 = sub_231242AD4;
  }

  else
  {
    v10 = sub_231242904;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_231242904()
{
  v17 = v0;
  v1 = sub_23125D7A0();
  v2 = v0[15];
  if (!v1)
  {

    sub_2313690F0();
    v3 = sub_2313698A0();
    v4 = sub_23136A390();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = sub_23136AA70();
      v13 = sub_2311CFD58(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2311CB000, v3, v4, "%s: No view entities returned", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x23192B930](v10, -1, -1);
      MEMORY[0x23192B930](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    v2 = MEMORY[0x277D84F90];
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_14();

  return v14(v2);
}

uint64_t sub_231242AD4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_231242B70(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v7 = MEMORY[0x277D84F90];
  sub_23136A6C0();
  v4 = (a1 + 32);
  do
  {
    v5 = *v4++;
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    sub_23136A6A0();
    sub_23136A6D0();
    sub_23136A6E0();
    sub_23136A6B0();
    --v2;
  }

  while (v2);
  return v7;
}

uint64_t sub_231242C40(uint64_t *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  sub_2313690F0();
  sub_231369EE0();
  v8 = sub_2313698A0();
  v9 = sub_23136A3B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2311CFD58(v6, v7, &v14);
    _os_log_impl(&dword_2311CB000, v8, v9, "Unable to fetch entities for %s due to timeout", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x23192B930](v11, -1, -1);
    MEMORY[0x23192B930](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return MEMORY[0x277D84F90];
}

uint64_t sub_231242DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = a1[1];
  v3[8] = *a1;
  v3[9] = v4;
  return MEMORY[0x2822009F8](sub_231242E18, 0, 0);
}

uint64_t sub_231242E18(__n128 a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[6];
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  v7 = sub_231242B70(v1[7], a1);
  v1[10] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
  v8 = swift_allocObject();
  v1[11] = v8;
  *(v8 + 16) = xmmword_23136B670;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  v9 = *(v5 + 8);
  sub_231369EE0();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v1[12] = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_34_0(v10);

  return v12(v7, v8, v6, v5);
}

uint64_t sub_231242F98()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v6 = sub_23124344C;
  }

  else
  {

    v6 = sub_2312430B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2312430B0()
{
  v1 = *(v0 + 104);
  v2 = v1 + 64;
  v3 = v0 + 16;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  result = sub_231369EE0();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v38 = v7;
  v35 = v1 + 64;
  v36 = v1;
  while (v6)
  {
LABEL_9:
    v12 = *(*(v1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    v13 = v12 >> 62;
    v42 = v12;
    if (v12 >> 62)
    {
      v14 = sub_23136A5A0();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v10 >> 62;
    if (v10 >> 62)
    {
      result = sub_23136A5A0();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v14;
    v16 = __OFADD__(result, v14);
    v17 = result + v14;
    if (v16)
    {
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
LABEL_48:
      __break(1u);
      return result;
    }

    sub_231369EE0();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v15)
      {
LABEL_19:
        sub_23136A5A0();
      }

LABEL_20:
      result = sub_23136A670();
      v10 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_21;
    }

    if (v15)
    {
      goto LABEL_19;
    }

    v18 = v10 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v19 < v17)
    {
      goto LABEL_20;
    }

LABEL_21:
    v39 = v18;
    v40 = v10;
    v6 &= v6 - 1;
    v20 = *(v18 + 16);
    v21 = v19 - v20;
    v22 = v18 + 8 * v20;
    if (v13)
    {
      v25 = sub_23136A5A0();
      if (!v25)
      {
        goto LABEL_35;
      }

      v26 = v25;
      result = sub_23136A5A0();
      if (v21 < result)
      {
        goto LABEL_47;
      }

      if (v26 < 1)
      {
        goto LABEL_48;
      }

      v37 = result;
      v27 = v22 + 32;
      sub_23124361C();
      for (i = 0; i != v26; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CB8, &qword_23136FC28);
        v29 = sub_23120DD78(v3, i, v42);
        v31 = *v30;
        (v29)(v3, 0);
        *(v27 + 8 * i) = v31;
      }

      v2 = v35;
      v1 = v36;
      v24 = v37;
LABEL_31:

      v10 = v40;
      v7 = v38;
      if (v24 < v41)
      {
        goto LABEL_44;
      }

      if (v24 > 0)
      {
        v32 = *(v39 + 16);
        v16 = __OFADD__(v32, v24);
        v33 = v32 + v24;
        if (v16)
        {
          goto LABEL_45;
        }

        *(v39 + 16) = v33;
      }
    }

    else
    {
      v23 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        if (v21 < v23)
        {
          goto LABEL_46;
        }

        v24 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_231207BDC(0, &qword_27DD43CB0, 0x277D23CE0);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      v7 = v38;
      if (v41 > 0)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v2 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_14();

  return v34(v10);
}

uint64_t sub_23124344C()
{
  OUTLINED_FUNCTION_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2312434B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_231243510(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  OUTLINED_FUNCTION_34_0(v6);

  return sub_231242DF0(a1, v5, v4);
}

uint64_t sub_2312435B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CA0, &qword_23136FC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23124361C()
{
  result = qword_27DD43CC0;
  if (!qword_27DD43CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43CB8, &qword_23136FC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43CC0);
  }

  return result;
}

void *sub_23124368C(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_2311D38A8(a1, (v4 + 2));
  v4[7] = v7;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t *sub_2312436D0(uint64_t a1, __n128 a2)
{
  v3 = sub_231259564(a1, a2);
  sub_2312477AC();
  sub_23121DC80(v3);
  OUTLINED_FUNCTION_10_11();

  return &v3;
}

uint64_t sub_23124371C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_2311CF324(a1, v12);
  v10 = swift_allocObject();
  sub_2311D38A8(v12, (v10 + 2));
  v10[7] = v9;
  v10[8] = a3;
  v10[9] = a4;
  a5[3] = v5;
  a5[4] = &off_2845F4498;
  *a5 = v10;
  sub_231369EE0();
}

uint64_t sub_2312437B0()
{
  OUTLINED_FUNCTION_8();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = sub_2313698C0();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23124386C()
{
  v1 = v0[17];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v9 = (OUTLINED_FUNCTION_38() + 8);
  v10 = (*v9 + **v9);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_2312439A0;
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];

  return v10(v0 + 2, v7, v5, v6, v2, v3);
}

uint64_t sub_2312439A0()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 176) = v5;
  *v5 = v4;
  v5[1] = sub_231243AEC;
  v6 = *(v1 + 112);

  return sub_231243E90(v6);
}

uint64_t sub_231243AEC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 184) = v0;

  if (v0)
  {
    v9 = sub_231243CB8;
  }

  else
  {
    *(v5 + 192) = v3;
    v9 = sub_231243C00;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_231243C00()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);
  sub_2311CF324(v0 + 16, v0 + 56);
  v3 = type metadata accessor for ConfigOverrideDataProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  sub_2311D38A8((v0 + 56), v4 + 24);
  v2[3] = v3;
  v2[4] = &off_2845F4480;
  *v2 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_231243CB8(uint64_t a1)
{
  v21 = v1;
  v3 = *(v1 + 184);
  sub_2313690F0();
  v4 = v3;
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 184);
    v8 = *(v1 + 152);
    v19 = *(v1 + 160);
    v9 = *(v1 + 144);
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_20_10();
    v20 = v10;
    *v2 = 136315138;
    *(v1 + 96) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v12 = sub_23136A010();
    v14 = sub_2311CFD58(v12, v13, &v20);

    *(v2 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v5, v6, "Unable to load config data overrides. Reverting to delegate data provider: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v8 + 8))(v19, v9);
  }

  else
  {

    v15 = OUTLINED_FUNCTION_28_0();
    v16(v15);
  }

  sub_2311D38A8((v1 + 16), *(v1 + 104));

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_231243E90(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_231369050();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = sub_2313698C0();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for SignalOverrides(0);
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CD0, &qword_23136FD08);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231244108, 0, 0);
}

uint64_t sub_231244108()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[31];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CD8, &qword_23136FD10);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[32] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  *v3 = v0;
  v3[1] = sub_231244200;
  v7 = v0[31];
  v8 = v0[26];
  v9 = v0[9];

  return MEMORY[0x2821C6B08](v9, v7, &unk_23136FD18, 0, v4, v8, v5, v6);
}

void sub_231244200()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;

  if (v0)
  {
  }

  else
  {
    sub_231228E9C(*(v3 + 248), &qword_27DD43CD0, &qword_23136FD08);

    MEMORY[0x2822009F8](sub_231244344, 0, 0);
  }
}

void sub_231244344()
{
  v141 = v0;
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_28_0();
  v2 = sub_231369EC0();
  OUTLINED_FUNCTION_28_0();
  v3 = sub_231369EC0();
  v4 = v3;
  v5 = *(v1 + 16);
  *(v0 + 272) = v5;
  if (!v5)
  {

    v25 = *(v0 + 80);
    v26 = *(v25 + 72);
    (*(v25 + 64))(v4);
    OUTLINED_FUNCTION_10_11();

    v27 = *(v26 + 16);
    if (!v27)
    {
LABEL_25:

      OUTLINED_FUNCTION_6_10();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_9();

      __asm { BRAA            X2, X16 }
    }

    v122 = *(v0 + 208);
    v28 = *(v0 + 112);
    v29 = OUTLINED_FUNCTION_19_10();
    v133 = *(v0 + 160);
    v134 = *(v0 + 168);
    v132 = *(v0 + 128);
    v30 = *(v0 + 96);
    v128 = *(v31 + 72);
    v130 = (v32 + 8);
    v131 = *(v28 + 48);
    v120 = v30 + 8;
    v121 = v30 + 16;
    *&v33 = 136315650;
    v119 = v33;
    v34 = 1;
    v129 = v28;
    while (1)
    {
      v139 = v34;
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v38 = *(v0 + 144);
      v37 = *(v0 + 152);
      v135 = v29;
      sub_231247A14(v29, v35, &qword_27DD435C0, &unk_23136CB00);
      v39 = *(v134 + 8);
      v40 = *(v28 + 48);
      *v36 = *v35;
      *(v133 + 8) = v39;
      sub_2312476F0(v134 + v131, v36 + v40);
      sub_2313690F0();
      sub_231247A14(v36, v37, &qword_27DD435C0, &unk_23136CB00);
      sub_231247A14(v36, v38, &qword_27DD435C0, &unk_23136CB00);
      v41 = sub_2313698A0();
      v42 = sub_23136A390();
      v138 = v41;
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 192);
      v45 = *(v0 + 176);
      v46 = *(v0 + 152);
      v136 = *(v0 + 144);
      if (v43)
      {
        v127 = v2;
        v47 = *(v0 + 136);
        v125 = *(v0 + 192);
        OUTLINED_FUNCTION_21_8();
        v48 = OUTLINED_FUNCTION_31_8();
        v56 = OUTLINED_FUNCTION_13_10(v48, v49, v50, v51, v52, v53, v54, v55, v115, v117, v119);
        sub_231247A14(v56, v57, &qword_27DD435C0, &unk_23136CB00);

        v126 = v27;
        v58 = OUTLINED_FUNCTION_9_11();
        v59(v58);
        sub_231247694(v27);
        v60 = sub_231369040();
        v61 = OUTLINED_FUNCTION_16_10();
        v62(v61);
        sub_231228E9C(v46, &qword_27DD435C0, &unk_23136CB00);
        v63 = v60;
        v27 = v126;
        sub_2311CFD58(v63, &unk_23136CB00, v140);
        OUTLINED_FUNCTION_38();

        *(v45 + 4) = v44;
        *(v45 + 12) = 2080;
        sub_231225108(v136, v47);
        v44 = *v47;
        v64 = v47 + *(v28 + 48);
        v2 = v127;
        sub_231247694(v64);
        v65 = OUTLINED_FUNCTION_27();
        sub_2311CFD58(v65, v66, v67);
        OUTLINED_FUNCTION_10_11();

        *(v45 + 14) = v44;
        *(v45 + 22) = 2048;
        *(v45 + 24) = v139;
        _os_log_impl(&dword_2311CB000, v138, v124, "3P Suggestion: %s @ %s assigned cold start rank of: %lu", v45, 0x20u);
        OUTLINED_FUNCTION_28_8(v68, v69, v70, v71, v72, v73, v74, v75, v116, v118, v119, *(&v119 + 1), v120, v121, v122, v123);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*v130)(v125);
      }

      else
      {

        sub_231228E9C(v136, &qword_27DD435C0, &unk_23136CB00);
        sub_231228E9C(v46, &qword_27DD435C0, &unk_23136CB00);
        (*v130)(v44, v45);
      }

      v76 = OUTLINED_FUNCTION_25_6();
      sub_231247A14(v76, v44, &qword_27DD435C0, &unk_23136CB00);
      v77 = *v44;
      v78 = *(v132 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v2;
      v79 = OUTLINED_FUNCTION_15_12();
      v80 = v2;
      sub_231215F6C(v79, v81);
      OUTLINED_FUNCTION_23_5();
      if (__OFADD__(v84, v85))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v86 = v82;
      v87 = v83;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
      v89 = OUTLINED_FUNCTION_29_6(v88);
      v2 = v140[0];
      if (v89)
      {
        v90 = OUTLINED_FUNCTION_15_12();
        v80 = v2;
        v92 = sub_231215F6C(v90, v91);
        v28 = v129;
        if ((v87 & 1) != (v93 & 1))
        {
          goto LABEL_6;
        }

        v86 = v92;
        if ((v87 & 1) == 0)
        {
LABEL_18:
          OUTLINED_FUNCTION_0_15(&v2[v86 >> 6]);
          v94 = (v2[6] + 16 * v86);
          *v94 = v77;
          v94[1] = v78;
          OUTLINED_FUNCTION_26_8(v2[7]);
          v95 = v2[2];
          v96 = __OFADD__(v95, 1);
          v97 = v95 + 1;
          if (v96)
          {
            goto LABEL_42;
          }

          v2[2] = v97;
          goto LABEL_22;
        }
      }

      else
      {
        v28 = v129;
        if ((v87 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_26_8(v2[7]);

LABEL_22:
      v98 = OUTLINED_FUNCTION_25_6();
      v99 = *(v28 + 48);
      sub_231228E9C(v98, &qword_27DD435C0, &unk_23136CB00);
      sub_231247694(v80 + v99);
      v34 = v77 + 1;
      v29 = v135 + v128;
      if (!--v27)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  *(v0 + 280) = *(*(v0 + 80) + 56);
  v9 = *(v8 + 80);
  *(v0 + 60) = v9;
  v10 = *(v8 + 72);
  *(v0 + 304) = 0;
  *(v0 + 312) = v3;
  *(v0 + 288) = v10;
  *(v0 + 296) = v3;
  sub_231247630(v6 + ((v9 + 32) & ~v9), v7);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_23136A650();

  OUTLINED_FUNCTION_24_9();
  *(v0 + 16) = v11;
  *(v0 + 24) = 0xEF5F6C616E676953;
  v12 = sub_231369040();
  MEMORY[0x23192A730](v12);

  MEMORY[0x23192A730](95, 0xE100000000000000);
  v13 = sub_2313692D0();
  MEMORY[0x23192A730](v13);

  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  *(v0 + 320) = v14;
  *(v0 + 328) = v15;
  if ((*(v7 + 16) & 1) == 0)
  {
    v137 = *(v7 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v2;
    sub_231215F6C(v14, v15);
    OUTLINED_FUNCTION_23_5();
    if (__OFADD__(v18, v19))
    {
      goto LABEL_43;
    }

    v20 = v16;
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
    if (sub_23136A700())
    {
      v22 = sub_231215F6C(v14, v15);
      if ((v21 & 1) != (v23 & 1))
      {
LABEL_6:
        OUTLINED_FUNCTION_8_9();

        sub_23136A970();
        return;
      }

      v20 = v22;
    }

    v2 = *(v0 + 64);
    if (v21)
    {
      *(v2[7] + 8 * v20) = v137;
    }

    else
    {
      OUTLINED_FUNCTION_0_15(&v2[v20 >> 6]);
      v102 = (v2[6] + 16 * v20);
      *v102 = v14;
      v102[1] = v15;
      *(v2[7] + 8 * v20) = v137;
      v103 = v2[2];
      v96 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v96)
      {
        goto LABEL_44;
      }

      v2[2] = v104;
      sub_231369EE0();
    }
  }

  v105 = *(v0 + 280);
  v106 = sub_2313692D0();
  if (*(v105 + 16))
  {
    v108 = sub_231215F6C(v106, v107);
    v110 = v109;

    if (v110)
    {
      v111 = *(v0 + 240);
      v140[0] = *(*(*(v0 + 280) + 56) + 8 * v108);
      sub_231369EE0();
      sub_231245FE0((v111 + 24), v140, (v0 + 48));

      if (*(v0 + 56) != 2)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v140[0] = v2;
        sub_231259F20();
        v2 = v140[0];
      }
    }
  }

  else
  {
  }

  *(v0 + 344) = v2;
  *(v0 + 352) = v2;
  *(v0 + 336) = v2;
  v112 = swift_task_alloc();
  *(v0 + 360) = v112;
  *v112 = v0;
  OUTLINED_FUNCTION_3_15(v112);
  OUTLINED_FUNCTION_8_9();

  sub_2312465DC(v113);
}

uint64_t sub_231244BC0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 57) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231244CAC()
{
  v174 = v0;
  if ((*(v0 + 57) & 1) == 0)
  {
    v2 = (v0 + 344);
    goto LABEL_6;
  }

  if (*(*(v0 + 352) + 16))
  {
    sub_231215F6C(*(v0 + 320), *(v0 + 328));
    if (v1)
    {
      v2 = (v0 + 352);
LABEL_6:
      v3 = *v2;

      v4 = *(v0 + 312);
      v5 = *(v0 + 296);
      goto LABEL_11;
    }
  }

  v6 = *(v0 + 328);
  v7 = *(v0 + 296);
  v8 = *(v167 + 240);
  v9 = *(v167 + 224);
  sub_231247630(v8, *(v167 + 232));
  swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v7;
  v10 = OUTLINED_FUNCTION_15_12();
  sub_231259E04(v10, v11, v6, v12, v13, v14, v15, v16, v148, v150);

  v5 = v7;
  sub_2313690F0();
  sub_231247630(v8, v9);
  v17 = sub_2313698A0();
  v18 = sub_23136A390();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v167 + 224);
  if (v19)
  {
    v171 = *(v167 + 200);
    v21 = *(v167 + 184);
    v22 = *(v167 + 176);
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_20_10();
    v173[0] = v23;
    *v9 = 136315138;
    v24 = sub_231369040();
    v25 = v5;
    v27 = v26;
    sub_231247694(v20);
    v28 = sub_2311CFD58(v24, v27, v173);
    v5 = v25;

    *(v9 + 4) = v28;
    OUTLINED_FUNCTION_30_6(&dword_2311CB000, v29, v30, "non overridden 3P Suggestion detected: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v0 = v167;
    (*(v21 + 8))(v171, v22);
  }

  else
  {
    v31 = *(v167 + 200);
    v32 = *(v167 + 184);
    v33 = *(v167 + 176);

    sub_231247694(v20);
    (*(v32 + 8))(v31, v33);
    v0 = v167;
  }

  v3 = *(v0 + 352);
  v4 = v5;
LABEL_11:
  v34 = *(v0 + 272);
  v35 = *(v0 + 304) + 1;
  sub_231247694(*(v0 + 240));
  if (v35 == v34)
  {

    v36 = *(v0 + 336);
    v37 = *(v0 + 80);
    v38 = *(v37 + 72);
    (*(v37 + 64))(v4);
    OUTLINED_FUNCTION_10_11();

    if (!*(v38 + 16))
    {
LABEL_35:

      OUTLINED_FUNCTION_6_10();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_9();

      __asm { BRAA            X2, X16 }
    }

    v155 = *(v0 + 208);
    v39 = *(v0 + 112);
    v40 = OUTLINED_FUNCTION_19_10();
    v164 = *(v0 + 168);
    v165 = (v42 + 8);
    v163 = *(v0 + 160);
    v162 = *(v0 + 128);
    v43 = *(v0 + 96);
    v160 = *(v44 + 72);
    v161 = *(v39 + 48);
    v153 = v43 + 8;
    v154 = v43 + 16;
    *&v45 = 136315650;
    v152 = v45;
    v46 = 1;
    v166 = v39;
    while (1)
    {
      v172 = v46;
      v168 = v40;
      v169 = v41;
      v48 = *(v0 + 160);
      v47 = *(v0 + 168);
      v50 = *(v0 + 144);
      v49 = *(v0 + 152);
      sub_231247A14(v40, v47, &qword_27DD435C0, &unk_23136CB00);
      v51 = *(v164 + 8);
      v52 = *(v39 + 48);
      *v48 = *v47;
      *(v163 + 8) = v51;
      sub_2312476F0(v164 + v161, v48 + v52);
      sub_2313690F0();
      sub_231247A14(v48, v49, &qword_27DD435C0, &unk_23136CB00);
      sub_231247A14(v48, v50, &qword_27DD435C0, &unk_23136CB00);
      v53 = sub_2313698A0();
      v54 = sub_23136A390();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 192);
      v57 = *(v0 + 176);
      v58 = *(v0 + 152);
      v170 = *(v0 + 144);
      if (v55)
      {
        v158 = *(v0 + 192);
        v159 = v36;
        v59 = v39;
        v60 = *(v0 + 136);
        OUTLINED_FUNCTION_21_8();
        v61 = OUTLINED_FUNCTION_31_8();
        v69 = OUTLINED_FUNCTION_13_10(v61, v62, v63, v64, v65, v66, v67, v68, v148, v150, v152);
        sub_231247A14(v69, v70, &qword_27DD435C0, &unk_23136CB00);

        v71 = OUTLINED_FUNCTION_9_11();
        v72(v71);
        sub_231247694(v59);
        v73 = sub_231369040();
        v74 = OUTLINED_FUNCTION_16_10();
        v75(v74);
        sub_231228E9C(v58, &qword_27DD435C0, &unk_23136CB00);
        v0 = v167;
        sub_2311CFD58(v73, &qword_27DD435C0, v173);
        OUTLINED_FUNCTION_38();

        *(v57 + 4) = v56;
        *(v57 + 12) = 2080;
        sub_231225108(v170, v60);
        v56 = *v60;
        v36 = v159;
        sub_231247694(v60 + *(v166 + 48));
        v76 = OUTLINED_FUNCTION_27();
        sub_2311CFD58(v76, v77, v78);
        OUTLINED_FUNCTION_10_11();

        *(v57 + 14) = v56;
        *(v57 + 22) = 2048;
        *(v57 + 24) = v172;
        _os_log_impl(&dword_2311CB000, v53, v157, "3P Suggestion: %s @ %s assigned cold start rank of: %lu", v57, 0x20u);
        OUTLINED_FUNCTION_28_8(v79, v80, v81, v82, v83, v84, v85, v86, v149, v151, v152, *(&v152 + 1), v153, v154, v155, v156);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*v165)(v158);
      }

      else
      {

        sub_231228E9C(v170, &qword_27DD435C0, &unk_23136CB00);
        v87 = OUTLINED_FUNCTION_28_0();
        sub_231228E9C(v87, v88, &unk_23136CB00);
        (*v165)(v56, v57);
      }

      v89 = OUTLINED_FUNCTION_25_6();
      sub_231247A14(v89, v56, &qword_27DD435C0, &unk_23136CB00);
      v90 = *v56;
      v91 = *(v162 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v173[0] = v36;
      v92 = OUTLINED_FUNCTION_15_12();
      v93 = v36;
      sub_231215F6C(v92, v94);
      OUTLINED_FUNCTION_23_5();
      if (__OFADD__(v97, v98))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      v99 = v95;
      v100 = v96;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
      v102 = OUTLINED_FUNCTION_29_6(v101);
      v36 = v173[0];
      if (v102)
      {
        v103 = OUTLINED_FUNCTION_15_12();
        v93 = v36;
        v105 = sub_231215F6C(v103, v104);
        v39 = v166;
        if ((v100 & 1) != (v106 & 1))
        {
          goto LABEL_32;
        }

        v99 = v105;
        v0 = v167;
        if ((v100 & 1) == 0)
        {
LABEL_21:
          OUTLINED_FUNCTION_0_15(&v36[v99 >> 6]);
          v107 = (v36[6] + 16 * v99);
          *v107 = v90;
          v107[1] = v91;
          OUTLINED_FUNCTION_26_8(v36[7]);
          v108 = v36[2];
          v109 = __OFADD__(v108, 1);
          v110 = v108 + 1;
          if (v109)
          {
            goto LABEL_53;
          }

          v36[2] = v110;
          goto LABEL_25;
        }
      }

      else
      {
        v39 = v166;
        if ((v100 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_26_8(v36[7]);

LABEL_25:
      v111 = OUTLINED_FUNCTION_25_6();
      v112 = *(v39 + 48);
      sub_231228E9C(v111, &qword_27DD435C0, &unk_23136CB00);
      sub_231247694(v93 + v112);
      v46 = v90 + 1;
      v40 = v168 + v160;
      v41 = v169 - 1;
      if (v169 == 1)
      {
        goto LABEL_35;
      }
    }
  }

  v113 = *(v0 + 352);
  v114 = *(v0 + 336);
  v115 = *(v0 + 304) + 1;
  *(v0 + 304) = v115;
  *(v0 + 312) = v4;
  *(v0 + 296) = v5;
  v116 = *(v0 + 240);
  sub_231247630(*(v0 + 264) + ((*(v0 + 60) + 32) & ~*(v0 + 60)) + *(v0 + 288) * v115, v116);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_23136A650();

  OUTLINED_FUNCTION_24_9();
  *(v0 + 16) = v117;
  *(v0 + 24) = 0xEF5F6C616E676953;
  v118 = sub_231369040();
  MEMORY[0x23192A730](v118);

  MEMORY[0x23192A730](95, 0xE100000000000000);
  v119 = sub_2313692D0();
  MEMORY[0x23192A730](v119);

  v120 = *(v0 + 16);
  v121 = *(v0 + 24);
  *(v0 + 320) = v120;
  *(v0 + 328) = v121;
  if (*(v116 + 16))
  {
    v122 = v3;
  }

  else
  {
    v123 = *(v116 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v114;
    sub_231215F6C(v120, v121);
    OUTLINED_FUNCTION_23_5();
    if (__OFADD__(v126, v127))
    {
      goto LABEL_54;
    }

    v128 = v124;
    v129 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
    if (sub_23136A700())
    {
      v130 = sub_231215F6C(v120, v121);
      if ((v129 & 1) != (v131 & 1))
      {
LABEL_32:
        OUTLINED_FUNCTION_8_9();

        sub_23136A970();
        return;
      }

      v128 = v130;
    }

    v114 = *(v167 + 64);
    if (v129)
    {
      *(v114[7] + 8 * v128) = v123;
    }

    else
    {
      OUTLINED_FUNCTION_0_15(&v114[v128 >> 6]);
      v135 = (v114[6] + 16 * v128);
      *v135 = v120;
      v135[1] = v121;
      *(v114[7] + 8 * v128) = v123;
      v136 = v114[2];
      v109 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v109)
      {
        goto LABEL_55;
      }

      v114[2] = v137;
      sub_231369EE0();
    }

    v122 = v114;
    v113 = v114;
  }

  v138 = *(v167 + 280);
  v139 = sub_2313692D0();
  if (*(v138 + 16))
  {
    v141 = sub_231215F6C(v139, v140);
    v143 = v142;

    if (v143)
    {
      v144 = *(v167 + 240);
      v173[0] = *(*(*(v167 + 280) + 56) + 8 * v141);
      sub_231369EE0();
      sub_231245FE0((v144 + 24), v173, (v167 + 48));

      if (*(v167 + 56) != 2)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v173[0] = v114;
        sub_231259F20();
        v114 = v173[0];
        v122 = v173[0];
        v113 = v173[0];
      }
    }
  }

  else
  {
  }

  *(v167 + 344) = v122;
  *(v167 + 352) = v113;
  *(v167 + 336) = v114;
  v145 = swift_task_alloc();
  *(v167 + 360) = v145;
  *v145 = v167;
  OUTLINED_FUNCTION_3_15(v145);
  OUTLINED_FUNCTION_8_9();

  sub_2312465DC(v146);
}

uint64_t sub_2312456F4(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_2313698C0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312457B4, 0, 0);
}

uint64_t sub_2312457B4()
{
  OUTLINED_FUNCTION_26();
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  OUTLINED_FUNCTION_10_11();
  *(v0 + 88) = sub_231368300();
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_22_7(v1);

  return sub_23132C6C8();
}

uint64_t sub_231245870()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 104) = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231245974(uint64_t a1)
{
  v26 = v1;
  if (*(v1 + 104))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE8, &qword_23136FD38);
    v3 = type metadata accessor for SignalOverrides(0);
    *(v1 + 112) = v3;
    *(v1 + 160) = *(*(v3 - 8) + 80);
    v4 = swift_allocObject();
    *(v1 + 120) = v4;
    *(v4 + 16) = xmmword_23136B670;
    v5 = OUTLINED_FUNCTION_28_0();
    __swift_project_boxed_opaque_existential_1(v5, v6);

    *(v1 + 128) = sub_231368300();
    swift_getObjectType();
    v7 = swift_task_alloc();
    *(v1 + 136) = v7;
    *v7 = v1;
    OUTLINED_FUNCTION_22_7(v7);

    return sub_23132C984();
  }

  else
  {
    v9 = *(v1 + 56);
    sub_2313690F0();
    sub_2311CF324(v9, v1 + 16);
    v10 = sub_2313698A0();
    v11 = sub_23136A390();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v1 + 72);
    v13 = *(v1 + 80);
    v15 = *(v1 + 64);
    if (v12)
    {
      swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_20_10();
      v25 = v16;
      *v2 = 136315138;
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v17 = sub_231368320();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      v20 = sub_2311CFD58(v17, v19, &v25);

      *(v2 + 4) = v20;
      OUTLINED_FUNCTION_30_6(&dword_2311CB000, v21, v22, "[warning] Unable to find signal for candidate: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v14 + 8))(v13, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
    }

    OUTLINED_FUNCTION_14();
    v24 = MEMORY[0x277D84F90];

    return v23(v24);
  }
}

uint64_t sub_231245C78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 144) = v5;
  *(v6 + 164) = v7;

  swift_unknownObjectRelease();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231245D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 112);
  v20 = *(v18 + 56);
  v21 = *(v18 + 120) + ((*(v18 + 160) + 32) & ~*(v18 + 160));
  sub_2311CF324(v20, v21 + 24);
  v22 = *(v20 + 24);
  v23 = *(v20 + 32);
  v24 = OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v26 = *(v19 + 28);
  v32 = swift_task_alloc();
  *(v18 + 152) = v32;
  *v32 = v18;
  v32[1] = sub_231245E68;

  return MEMORY[0x2821C6E60](v21 + v26, v22, v23, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231245E68()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231245F4C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 164);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120) + ((*(v0 + 160) + 32) & ~*(v0 + 160));
  *v3 = *(v0 + 104);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1 & 1;

  v4 = *(v0 + 120);

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_231245FE0@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v61 = sub_2313698C0();
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = *a2;
  v15 = sub_231369040();
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_231368320();
  v20 = v19;
  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v21 = sub_231215F6C(v15, v17);
  if (v22)
  {
    v23 = v21;

    v24 = *(v14 + 56) + 16 * v23;
    v25 = *v24;
    v26 = *(v24 + 8);
    sub_2313690F0();
    sub_231369EE0();
    v27 = sub_2313698A0();
    v28 = sub_23136A390();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v65 = v30;
      *v29 = 136315394;
      v31 = sub_2311CFD58(v15, v17, &v65);
      v32 = v25;
      v33 = v31;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v63 = v32;
      v64 = v26;
      v34 = sub_23136A010();
      v36 = sub_2311CFD58(v34, v35, &v65);
      v25 = v32;

      *(v29 + 14) = v36;
      _os_log_impl(&dword_2311CB000, v27, v28, "Found override for loggingId %s as %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v30, -1, -1);
      MEMORY[0x23192B930](v29, -1, -1);
    }

    else
    {
    }

    result = (*(v5 + 8))(v13, v61);
    goto LABEL_16;
  }

  if (!*(v14 + 16) || (v37 = sub_231215F6C(v18, v20), (v38 & 1) == 0))
  {
LABEL_9:
    sub_2313690F0();
    sub_231369EE0();
    sub_231369EE0();
    v52 = sub_2313698A0();
    v53 = sub_23136A390();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      *v54 = 136315394;
      v56 = sub_2311CFD58(v15, v17, &v63);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2080;
      v57 = sub_2311CFD58(v18, v20, &v63);

      *(v54 + 14) = v57;
      _os_log_impl(&dword_2311CB000, v52, v53, "Unable to find an override for loggingId %s or %s", v54, 0x16u);
      v26 = 2;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v55, -1, -1);
      MEMORY[0x23192B930](v54, -1, -1);

      result = (*(v5 + 8))(v7, v61);
      v25 = 0;
    }

    else
    {

      result = (*(v5 + 8))(v7, v61);
      v25 = 0;
      v26 = 2;
    }

    goto LABEL_16;
  }

  v39 = v37;

  v40 = *(v14 + 56) + 16 * v39;
  v25 = *v40;
  v41 = *(v40 + 8);
  sub_2313690F0();
  sub_231369EE0();
  v42 = sub_2313698A0();
  v43 = sub_23136A390();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65 = v45;
    *v44 = 136315394;
    v46 = sub_2311CFD58(v18, v20, &v65);
    v47 = v25;
    v48 = v46;

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v63 = v47;
    v64 = v41;
    v49 = sub_23136A010();
    v51 = sub_2311CFD58(v49, v50, &v65);
    v25 = v47;

    *(v44 + 14) = v51;
    _os_log_impl(&dword_2311CB000, v42, v43, "Found override for suggestionId %s as %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v45, -1, -1);
    MEMORY[0x23192B930](v44, -1, -1);
  }

  else
  {
  }

  result = (*(v5 + 8))(v10, v61);
  v26 = v41;
LABEL_16:
  v59 = v62;
  *v62 = v25;
  *(v59 + 8) = v26;
  return result;
}

uint64_t sub_2312465DC(uint64_t a1)
{
  v1[8] = a1;
  v1[9] = type metadata accessor for SignalOverrides(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = sub_2313698C0();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_2313685D0();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231246734, 0, 0);
}

uint64_t sub_231246734()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_2312467F0;

  return MEMORY[0x2821C6E58](v0 + 16, v2, v3);
}

uint64_t sub_2312467F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312468D4()
{
  v41 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_10_11();
  v1 = sub_231367E20();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_2313692F0();
  sub_231369270();
  v4 = sub_2313692A0();

  v39 = v1;
  if (v4)
  {
    v5 = v0[16];
    v6 = v0[17];
    v7 = v0[15];
    (*(v5 + 104))(v6, *MEMORY[0x277D60FC0], v7);
    v8 = sub_2313685C0();
    v10 = v9;
    (*(v5 + 8))(v6, v7);
    if (v1 == v8 && v3 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_23136A900();
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[8];
  sub_2313690F0();
  sub_231247630(v15, v13);
  sub_231247630(v15, v14);
  sub_231369EE0();
  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();

  v38 = v17;
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[13];
  v20 = v0[11];
  v21 = v0[10];
  if (v18)
  {
    v37 = v0[14];
    v36 = v0[12];
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v22 = 136315906;
    v23 = sub_231369040();
    v24 = v12;
    v26 = v25;
    sub_231247694(v20);
    v27 = sub_2311CFD58(v23, v26, &v40);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    sub_2311CFD58(v39, v3, &v40);
    OUTLINED_FUNCTION_38();

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    v12 = v24;
    v0[7] = *v21;
    sub_231247754();
    v28 = sub_23136A8B0();
    v30 = v29;
    sub_231247694(v21);
    sub_2311CFD58(v28, v30, &v40);
    OUTLINED_FUNCTION_38();

    *(v22 + 24) = v28;
    *(v22 + 32) = 1024;
    *(v22 + 34) = v24 & 1;
    _os_log_impl(&dword_2311CB000, v16, v38, "Checking 3P eligibility: for: %s group: %s, signal: %s == %{BOOL}d", v22, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v19 + 8))(v37, v36);
  }

  else
  {

    sub_231247694(v21);
    sub_231247694(v20);
    v31 = OUTLINED_FUNCTION_27();
    v33(v31, v32);
  }

  OUTLINED_FUNCTION_14();

  return v34(v12 & 1);
}

uint64_t sub_231246C80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_231246CB0()
{
  sub_231246C80();

  return swift_deallocClassInstance();
}

uint64_t sub_231246D08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D44D4;

  return sub_2312437B0();
}

_OWORD *sub_231246DCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_2313698C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_231210C60();
  if (v26)
  {
    sub_2312250F8(&v25, v27);
    sub_2313690F0();
    sub_2311D1D6C(v27, &v25);
    sub_231369EE0();
    v11 = sub_2313698A0();
    v12 = sub_23136A3A0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = a3;
      v14 = v13;
      v24 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_2311CFD58(a1, a2, &v24);
      *(v14 + 12) = 2080;
      sub_2311D1D6C(&v25, v23);
      v15 = sub_23136A010();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      v18 = sub_2311CFD58(v15, v17, &v24);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_2311CB000, v11, v12, "override found for key: %s == %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      a3 = v22;
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    }

    (*(v8 + 8))(v10, v7);
    return sub_2312250F8(v27, a3);
  }

  else
  {
    sub_231228E9C(&v25, &qword_27DD443C0, &unk_23136E000);
    v19 = v3[6];
    v20 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v19);
    return (*(v20 + 8))(a1, a2, v19, v20);
  }
}

uint64_t sub_23124707C()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  v4 = *(v3 + 16);
  sub_231369EE0();
  v5 = v4(v2, v3);
  return sub_2312470F8(v5, v1);
}

uint64_t sub_2312470F8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2312473FC(a1, sub_2312B6900, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_23124717C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignalOverrides(uint64_t a1)
{
  result = qword_280F84508;
  if (!qword_280F84508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231247254(uint64_t a1)
{
  sub_2313692F0();
  if (v1 <= 0x3F)
  {
    sub_231247308();
    if (v2 <= 0x3F)
    {
      sub_231247358();
      if (v3 <= 0x3F)
      {
        sub_231369050();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_231247308()
{
  if (!qword_280F7C788)
  {
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C788);
    }
  }
}

unint64_t sub_231247358()
{
  result = qword_280F7C990;
  if (!qword_280F7C990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F7C990);
  }

  return result;
}

uint64_t sub_2312473FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_2312B7234();
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  *(&v42 + 1) = a1;
  sub_231369EE0();
  *&v42 = a3;

  while (1)
  {
    sub_2312B6C88(v9, v10, v11, v12, v13, v14, v15, v16, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55);
    v17 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {
      sub_2311D3BBC(v51);
    }

    v18 = v47;
    sub_2312250F8(&v48, &v45);
    v19 = *a5;
    v27 = sub_231215F6C(v18, v17);
    v28 = *(v19 + 16);
    v29 = (v20 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v20;
    if (*(v19 + 24) >= v30)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        sub_23136A710();
        if (v31)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2312B4F48(v30, a4 & 1, v21, v22, v23, v24, v25, v26, v42, *(&v42 + 1), v43, SBYTE8(v43), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57);
      v32 = sub_231215F6C(v18, v17);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_18;
      }

      v27 = v32;
      if (v31)
      {
LABEL_10:
        v34 = *a5;
        sub_2311D1D6C(*(*a5 + 56) + 32 * v27, &v43);
        __swift_destroy_boxed_opaque_existential_1Tm(&v45);

        v35 = (*(v34 + 56) + 32 * v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        v9 = sub_2312250F8(&v43, v35);
        goto LABEL_14;
      }
    }

    v36 = *a5;
    *(*a5 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v37 = (v36[6] + 16 * v27);
    *v37 = v18;
    v37[1] = v17;
    v9 = sub_2312250F8(&v45, (v36[7] + 32 * v27));
    v38 = v36[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_17;
    }

    v36[2] = v40;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_231247630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalOverrides(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231247694(uint64_t a1)
{
  v2 = type metadata accessor for SignalOverrides(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2312476F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalOverrides(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231247754()
{
  result = qword_280F7C900;
  if (!qword_280F7C900)
  {
    sub_2313692F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C900);
  }

  return result;
}

void sub_2312477AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v30 = &v24 - v6;
  v26 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v25 = v8 - 2;
    while (1)
    {
      v31 = 0;
      MEMORY[0x23192B950](&v31, 8, v5);
      v11 = (v31 * v8) >> 64;
      if (v8 > v31 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v31 * v8)
        {
          do
          {
            v31 = 0;
            MEMORY[0x23192B950](&v31, 8);
          }

          while (v12 > v31 * v8);
          v11 = (v31 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 16);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = v7;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v16 = v7 + v29;
        v17 = *(v27 + 72);
        v28 = v17 * v10;
        sub_231247A14(v16 + v17 * v10, v30, &qword_27DD435D0, &qword_23136CB10);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        sub_231247A14(v16 + v17 * v13, v3, &qword_27DD435D0, &qword_23136CB10);
        v7 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2311E6664(v15, v18, v19, v20);
          v7 = v21;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v22 = v7 + v29;
        sub_231247A7C(v3, v7 + v29 + v28);
        if (v13 >= *(v7 + 16))
        {
          goto LABEL_23;
        }

        sub_231247A7C(v30, v22 + v17 * v13);
        v9 = v25;
        *v26 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_231247A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_231247A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v13 - 88) = a1;
  *v12 = a11;
  return v11;
}

uint64_t OUTLINED_FUNCTION_28_8(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_arrayDestroy();
}

unint64_t sub_231247B54(char a1)
{
  result = 0x73756F6976657270;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    case 4:
    case 18:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7469546C69616D65;
      break;
    case 6:
      result = 0x6E65536C69616D65;
      break;
    case 7:
      result = 0x74616E6974736564;
      break;
    case 8:
      result = 0x5372656874616577;
      break;
    case 9:
      result = 0x61737265766E6F63;
      break;
    case 10:
      result = 0x6D614E6563616C70;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6C746954776F6873;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6D79536B636F7473;
      break;
    case 15:
      result = 0x656C746954626174;
      break;
    case 16:
      result = 0x6B72616D6B6F6F62;
      break;
    case 19:
      result = 0x614E7265646C6F66;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x4E676E6974746573;
      break;
    case 22:
      result = 0x41676E6974746573;
      break;
    case 23:
      result = 0x7079546569766F6DLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_231247E24()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_231366750();
  v0[3] = v1;
  OUTLINED_FUNCTION_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_43();
  v3 = sub_231366880();
  v0[6] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_43();
  v5 = sub_2313668A0();
  v0[9] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231247F5C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_231366870();
  (*(v2 + 104))(v1, *MEMORY[0x277CC9988], v3);
  sub_231366740();
  v7 = sub_231366890();
  (*(v6 + 8))(v4, v5);
  v8 = OUTLINED_FUNCTION_28_0();
  result = v9(v8);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    OUTLINED_FUNCTION_6_11();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23136B670;
    v0[2] = v7 - 1;
    v12 = sub_23136A8B0();
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    v14 = OUTLINED_FUNCTION_28_0();
    v15(v14);

    v16 = v0[1];

    return v16(v11);
  }

  return result;
}

uint64_t sub_231248114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_231247E24();
}

uint64_t sub_2312481A0()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v2);
  v0[7] = OUTLINED_FUNCTION_43();
  v3 = sub_231369E00();
  v0[8] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v5);
  v0[11] = OUTLINED_FUNCTION_67();
  v0[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D08, &qword_231370400);
  OUTLINED_FUNCTION_40_0(v6);
  v0[13] = OUTLINED_FUNCTION_43();
  v7 = sub_231369630();
  v0[14] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[15] = v8;
  v0[16] = OUTLINED_FUNCTION_67();
  v0[17] = swift_task_alloc();
  v9 = sub_2313696B0();
  v0[18] = v9;
  OUTLINED_FUNCTION_0(v9);
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_67();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312483C0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  OUTLINED_FUNCTION_28_0();
  sub_2313683A0();
  v3 = sub_23136A200();

  v5 = 0;
  v112 = *(v3 + 16);
  v107 = *MEMORY[0x277D1EB18];
  v106 = (v2 + 8);
  v115 = v1;
  v103 = (v1 + 32);
  v104 = MEMORY[0x277D84F90];
  v105 = v3;
  while (1)
  {
    if (v112 == v5)
    {

      v34 = 0;
      result = v104;
      v35 = *(v104 + 16);
      v36 = MEMORY[0x277D84F90];
      while (v35 != v34)
      {
        if (v34 >= *(result + 16))
        {
          goto LABEL_59;
        }

        v37 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v38 = *(v115 + 72);
        v39 = OUTLINED_FUNCTION_21_9();
        v40(v39);
        v41 = sub_231248DA0();
        v42 = *(v0 + 192);
        if (v41)
        {
          v113 = *v103;
          (*v103)(*(v0 + 184), *(v0 + 192), *(v0 + 144));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_11(*(v36 + 16));
          }

          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2311F5958(v44 > 1, v45 + 1, 1);
          }

          ++v34;
          v46 = *(v0 + 184);
          v47 = *(v0 + 144);
          *(v36 + 16) = v45 + 1;
          v113(v36 + v37 + v45 * v38, v46, v47);
          result = v104;
        }

        else
        {
          OUTLINED_FUNCTION_15_13();
          v43(v42);
          ++v34;
          result = v104;
        }
      }

      v48 = 0;
      v49 = *(v36 + 16);
      v108 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v49 == v48)
        {

          v66 = *(v108 + 16);
          if (!v66)
          {

            v72 = MEMORY[0x277D84F90];
LABEL_52:
            sub_231217D94(v72, *(v0 + 96));

            if (OUTLINED_FUNCTION_26_9() == 1)
            {
              sub_2311EB450(*(v0 + 96), &qword_27DD43C40, &qword_231378460);
            }

            else
            {
              v95 = sub_231369DE0();
              v97 = v96;
              v98 = OUTLINED_FUNCTION_27();
              v99(v98);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
              OUTLINED_FUNCTION_6_11();
              v100 = swift_allocObject();
              *(v100 + 16) = xmmword_23136B670;
              *(v100 + 56) = MEMORY[0x277D837D0];
              *(v100 + 32) = v95;
              *(v100 + 40) = v97;
            }

            v101 = OUTLINED_FUNCTION_5();

            return v102(v101);
          }

          OUTLINED_FUNCTION_4_10();
          v69 = v67 + v68;
          v111 = (v71 + 32);
          v114 = *(v70 + 72);
          v72 = MEMORY[0x277D84F90];
          v116 = *(v70 + 16);
          while (2)
          {
            v116(*(v0 + 168), v69, *(v0 + 144));
            sub_231369670();
            v73 = sub_231369D00();
            v74 = OUTLINED_FUNCTION_28_1();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, v75, v73);
            v77 = *(v0 + 168);
            v78 = *(v0 + 144);
            v79 = *(v0 + 56);
            v80 = *(v0 + 64);
            if (EnumTagSinglePayload == 1)
            {
              OUTLINED_FUNCTION_15_13();
              v81(v77, v78);
              sub_2311EB450(v79, &qword_27DD43358, &qword_23136FA90);
              v82 = OUTLINED_FUNCTION_28_1();
              __swift_storeEnumTagSinglePayload(v82, v83, 1, v80);
              goto LABEL_43;
            }

            sub_231369CE0();
            OUTLINED_FUNCTION_15_13();
            v84(v77, v78);
            OUTLINED_FUNCTION_26_0();
            (*(v85 + 8))(v79, v73);
            v86 = OUTLINED_FUNCTION_28_1();
            if (__swift_getEnumTagSinglePayload(v86, v87, v80) == 1)
            {
LABEL_43:
              sub_2311EB450(*(v0 + 88), &qword_27DD43C40, &qword_231378460);
            }

            else
            {
              v88 = *v111;
              (*v111)(*(v0 + 80), *(v0 + 88), *(v0 + 64));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23126E348(0, *(v72 + 16) + 1, 1, v72);
                v72 = v93;
              }

              v90 = *(v72 + 16);
              v89 = *(v72 + 24);
              if (v90 >= v89 >> 1)
              {
                sub_23126E348(v89 > 1, v90 + 1, 1, v72);
                v72 = v94;
              }

              *(v72 + 16) = v90 + 1;
              OUTLINED_FUNCTION_4_10();
              v88(v72 + v91 + *(v92 + 72) * v90);
            }

            v69 += v114;
            if (!--v66)
            {

              goto LABEL_52;
            }

            continue;
          }
        }

        if (v48 >= *(v36 + 16))
        {
          goto LABEL_60;
        }

        v50 = *(v0 + 104);
        v51 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v52 = *(v115 + 72);
        v53 = OUTLINED_FUNCTION_21_9();
        v54(v53);
        sub_231369690();
        v55 = sub_231369660();
        if (__swift_getEnumTagSinglePayload(v50, 1, v55) == 1)
        {
          break;
        }

        v56 = sub_231369640();
        OUTLINED_FUNCTION_26_0();
        v57 = OUTLINED_FUNCTION_27();
        v58(v57);
        if (v56)
        {
          v60 = *v103;
          (*v103)(*(v0 + 160), *(v0 + 176), *(v0 + 144));
          v61 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_11(*(v108 + 16));
            v61 = v108;
          }

          v63 = *(v61 + 16);
          v62 = *(v61 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_2311F5958(v62 > 1, v63 + 1, 1);
            v61 = v108;
          }

          ++v48;
          v64 = *(v0 + 160);
          v65 = *(v0 + 144);
          *(v61 + 16) = v63 + 1;
          v108 = v61;
          result = (v60)(v61 + v51 + v63 * v52, v64, v65);
        }

        else
        {
LABEL_32:
          OUTLINED_FUNCTION_15_13();
          result = v59();
          ++v48;
        }
      }

      sub_2311EB450(*(v0 + 104), &qword_27DD43D08, &qword_231370400);
      goto LABEL_32;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    OUTLINED_FUNCTION_4_10();
    v110 = v8;
    v109 = *(v9 + 72);
    v10 = OUTLINED_FUNCTION_21_9();
    v11(v10);
    sub_231369680();
    (*(v2 + 104))(v6, v107, v7);
    OUTLINED_FUNCTION_1_17();
    v13 = sub_23124D064(&qword_27DD43C18, 255, v12, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_9_12(v13);
    OUTLINED_FUNCTION_14_11();
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = *(v0 + 136);
    if (v15 == v16 && *(v0 + 24) == v17)
    {
      v25 = *v106;
      v26 = OUTLINED_FUNCTION_16_11();
      v25(v26);
      v27 = OUTLINED_FUNCTION_53_3();
      v25(v27);

LABEL_11:
      v28 = *v103;
      (*v103)(*(v0 + 200), *(v0 + 208), *(v0 + 144));
      v29 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_11(*(v104 + 16));
        v29 = v104;
      }

      v3 = v105;
      OUTLINED_FUNCTION_20_11();
      if (v31)
      {
        sub_2311F5958(v30 > 1, v17, 1);
        v29 = v104;
      }

      ++v5;
      v32 = *(v0 + 200);
      v33 = *(v0 + 144);
      *(v29 + 16) = v17;
      v104 = v29;
      result = (v28)(v29 + v110 + v18 * v109, v32, v33);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_25_7(v15, v14, v16);
      v21 = *v106;
      v22 = OUTLINED_FUNCTION_16_11();
      v21(v22);
      v23 = OUTLINED_FUNCTION_53_3();
      v21(v23);

      if (v20)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_15_13();
      result = v24();
      ++v5;
      v3 = v105;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_231248DA0()
{
  v0 = sub_231369D50();
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  MEMORY[0x28223BE20](v35);
  v37 = &v32 - v2;
  v3 = sub_231368290();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_231369670();
  v18 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
  {
    sub_2311EB450(v9, &qword_27DD43358, &qword_23136FA90);
    v19 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v0);
  v20 = swift_allocObject();
  (*(v4 + 104))(v6, *MEMORY[0x277D60F30], v3);
  v21 = sub_231368280();
  v23 = v22;
  (*(v4 + 8))(v6, v3);
  v20[2] = v21;
  v20[3] = v23;
  v20[4] = 0xD000000000000012;
  v20[5] = 0x800000023137DD20;
  *v14 = v20;
  v24 = v36;
  (*(v36 + 104))(v14, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v0);
  v25 = *(v35 + 48);
  v26 = v37;
  sub_23124D0AC(v17, v37, &qword_27DD437B8, &qword_23136FA60);
  sub_23124D0AC(v14, v26 + v25, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v26, 1, v0) != 1)
  {
    v28 = v34;
    sub_23124D0AC(v26, v34, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
    {
      v29 = v33;
      (*(v24 + 32))(v33, v26 + v25, v0);
      sub_23124D064(&qword_27DD43360, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      v27 = sub_231369F60();
      v30 = *(v24 + 8);
      v30(v29, v0);
      sub_2311EB450(v14, &qword_27DD437B8, &qword_23136FA60);
      sub_2311EB450(v17, &qword_27DD437B8, &qword_23136FA60);
      v30(v34, v0);
      sub_2311EB450(v26, &qword_27DD437B8, &qword_23136FA60);
      return v27 & 1;
    }

    sub_2311EB450(v14, &qword_27DD437B8, &qword_23136FA60);
    sub_2311EB450(v17, &qword_27DD437B8, &qword_23136FA60);
    (*(v24 + 8))(v28, v0);
    goto LABEL_9;
  }

  sub_2311EB450(v14, &qword_27DD437B8, &qword_23136FA60);
  sub_2311EB450(v17, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v0) != 1)
  {
LABEL_9:
    sub_2311EB450(v26, &qword_27DD437B0, &unk_23136DFC0);
    v27 = 0;
    return v27 & 1;
  }

  sub_2311EB450(v26, &qword_27DD437B8, &qword_23136FA60);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_2312493D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_2312481A0();
}

void *sub_23124946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_231249480()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v3);
  v1[4] = OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231249504()
{
  v1 = *(v0 + 32);
  v2 = sub_231249640(*(v0 + 16), *(*(v0 + 24) + 32), *(*(v0 + 24) + 40), *(*(v0 + 24) + 48), *(*(v0 + 24) + 56));
  sub_231217D94(v2, v1);

  sub_231369E00();
  if (OUTLINED_FUNCTION_26_9() == 1)
  {
    sub_2311EB450(*(v0 + 32), &qword_27DD43C40, &qword_231378460);
  }

  else
  {
    v3 = sub_231369DE0();
    v5 = v4;
    OUTLINED_FUNCTION_26_0();
    v6 = OUTLINED_FUNCTION_27();
    v7(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    OUTLINED_FUNCTION_6_11();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_23136B670;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
  }

  v9 = OUTLINED_FUNCTION_5();

  return v10(v9);
}

uint64_t sub_231249640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v80 = a4;
  v90 = a3;
  v89 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = &v79 - v9;
  v88 = sub_231369E00();
  v83 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231369630();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v97 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v79 - v15;
  v16 = sub_2313696B0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = &v79 - v20;
  MEMORY[0x28223BE20](v21);
  v100 = &v79 - v22;
  MEMORY[0x28223BE20](v23);
  v82 = &v79 - v24;
  MEMORY[0x28223BE20](v25);
  v101 = &v79 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313683A0();
  v27 = sub_23136A200();

  v28 = 0;
  v95 = *(v27 + 16);
  v105 = v17 + 16;
  v94 = *MEMORY[0x277D1EB18];
  v92 = (v12 + 8);
  v93 = (v12 + 104);
  v104 = (v17 + 8);
  v102 = v17;
  v84 = (v17 + 32);
  v98 = MEMORY[0x277D84F90];
  v99 = v16;
  v91 = v27;
LABEL_2:
  v29 = v103;
  while (1)
  {
    v30 = v96;
    v31 = v97;
    if (v95 == v28)
    {

      v49 = 0;
      v11 = 0;
      v50 = v98;
      v51 = *(v98 + 16);
      v97 = MEMORY[0x277D84F90];
      v52 = v85;
      v53 = v81;
      v54 = v80;
      while (v51 != v49)
      {
        if (v49 >= *(v50 + 16))
        {
          goto LABEL_44;
        }

        v55 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v56 = *(v102 + 72);
        v57 = v100;
        (*(v102 + 16))(v100, v50 + v55 + v56 * v49, v16);
        if (sub_23124CAE8(v57, v89, v90, v54, v53))
        {
          v58 = *v84;
          (*v84)(v79, v100, v16);
          v59 = v97;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v59;
          if (isUniquelyReferenced_nonNull_native)
          {
            v61 = v59;
          }

          else
          {
            sub_2311F5958(0, *(v59 + 2) + 1, 1);
            v61 = v108;
          }

          v63 = *(v61 + 2);
          v62 = *(v61 + 3);
          if (v63 >= v62 >> 1)
          {
            sub_2311F5958(v62 > 1, v63 + 1, 1);
            v61 = v108;
          }

          ++v49;
          *(v61 + 2) = v63 + 1;
          v97 = v61;
          v16 = v99;
          v58(&v61[v55 + v63 * v56], v79, v99);
          v52 = v85;
          v29 = v103;
          v53 = v81;
          v54 = v80;
          v50 = v98;
        }

        else
        {
          (*v104)(v100, v16);
          ++v49;
          v29 = v103;
          v50 = v98;
        }
      }

      v64 = *(v97 + 2);
      if (!v64)
      {

        return MEMORY[0x277D84F90];
      }

      v65 = &v97[(*(v102 + 80) + 32) & ~*(v102 + 80)];
      v66 = *(v102 + 72);
      v101 = (v83 + 32);
      v67 = MEMORY[0x277D84F90];
      v68 = *(v102 + 16);
      v69 = v87;
      while (1)
      {
        v70 = v99;
        v68(v69, v65, v99);
        sub_231369670();
        v71 = v52;
        v72 = sub_231369D00();
        if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
        {
          (*v104)(v69, v70);
          sub_2311EB450(v71, &qword_27DD43358, &qword_23136FA90);
          __swift_storeEnumTagSinglePayload(v29, 1, 1, v88);
          v52 = v71;
        }

        else
        {
          sub_231369CE0();
          (*v104)(v69, v70);
          (*(*(v72 - 8) + 8))(v71, v72);
          v52 = v71;
          if (__swift_getEnumTagSinglePayload(v29, 1, v88) != 1)
          {
            v73 = *v101;
            (*v101)(v86, v29, v88);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23126E348(0, *(v67 + 16) + 1, 1, v67);
              v67 = v76;
            }

            v75 = *(v67 + 16);
            v74 = *(v67 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_23126E348(v74 > 1, v75 + 1, 1, v67);
              v67 = v77;
            }

            *(v67 + 16) = v75 + 1;
            v73(v67 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v75, v86, v88);
            v52 = v85;
            v29 = v103;
            goto LABEL_39;
          }
        }

        sub_2311EB450(v29, &qword_27DD43C40, &qword_231378460);
LABEL_39:
        v65 += v66;
        --v64;
        v69 = v87;
        if (!v64)
        {

          return v67;
        }
      }
    }

    if (v28 >= *(v27 + 16))
    {
      break;
    }

    v32 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v33 = v27 + v32;
    v34 = *(v102 + 72);
    (*(v102 + 16))(v101, v33 + v34 * v28, v16);
    sub_231369680();
    (*v93)(v31, v94, v11);
    sub_23124D064(&qword_27DD43C18, 255, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
    sub_23136A140();
    sub_23136A140();
    if (v108 == v106 && v109 == v107)
    {
      v42 = *v92;
      (*v92)(v31, v11);
      v43 = v30;
      v41 = v11;
      v42(v43, v11);

LABEL_12:
      v44 = *v84;
      v16 = v99;
      (*v84)(v82, v101, v99);
      v45 = v98;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v45;
      if ((v46 & 1) == 0)
      {
        sub_2311F5958(0, *(v45 + 16) + 1, 1);
        v45 = v110;
      }

      v11 = v41;
      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2311F5958(v47 > 1, v48 + 1, 1);
        v45 = v110;
      }

      ++v28;
      *(v45 + 16) = v48 + 1;
      v98 = v45;
      v44((v45 + v32 + v48 * v34), v82, v16);
      v27 = v91;
      goto LABEL_2;
    }

    v36 = sub_23136A900();
    v37 = v31;
    v38 = v36;
    v39 = *v92;
    (*v92)(v37, v11);
    v40 = v30;
    v41 = v11;
    v39(v40, v11);

    if (v38)
    {
      goto LABEL_12;
    }

    v16 = v99;
    (*v104)(v101, v99);
    ++v28;
    v29 = v103;
    v27 = v91;
  }

  __break(1u);
LABEL_44:
  __break(1u);

  (*v104)(v100, v16);

  __break(1u);
  return result;
}

uint64_t sub_23124A150()
{

  return v0;
}

uint64_t sub_23124A180()
{
  sub_23124A150();
  OUTLINED_FUNCTION_6_11();

  return swift_deallocClassInstance();
}

uint64_t sub_23124A1D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_231249480();
}

uint64_t sub_23124A26C()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  OUTLINED_FUNCTION_40_0(v2);
  v0[3] = OUTLINED_FUNCTION_43();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D10, &qword_231370418);
  OUTLINED_FUNCTION_40_0(v3);
  v0[4] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D18, &qword_231370420);
  v0[5] = v4;
  OUTLINED_FUNCTION_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_43();
  v6 = sub_231368290();
  v0[8] = v6;
  OUTLINED_FUNCTION_0(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23124A3C0()
{
  v2 = v0[2];
  v1 = v0[3];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D60F38], v0[8]);
  v3 = sub_231368280();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  v8 = sub_231249640(v2, v3, v5, 0x69746E45776F6853, 0xEA00000000007974);

  sub_231217D94(v8, v1);

  v9 = sub_231369E00();
  v10 = OUTLINED_FUNCTION_27_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);
  v13 = v0[5];
  v14 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_2311EB450(v0[3], &qword_27DD43C40, &qword_231378460);
    v15 = OUTLINED_FUNCTION_27_8();
    __swift_storeEnumTagSinglePayload(v15, v16, 1, v13);
LABEL_4:
    sub_2311EB450(v0[4], &qword_27DD43D10, &qword_231370418);
    goto LABEL_6;
  }

  sub_231369DF0();
  OUTLINED_FUNCTION_26_0();
  (*(v17 + 8))(v14, v9);
  v18 = OUTLINED_FUNCTION_27_8();
  if (__swift_getEnumTagSinglePayload(v18, v19, v13) == 1)
  {
    goto LABEL_4;
  }

  v20 = v0[7];
  v21 = v0[5];
  v22 = *(v0[6] + 32);
  v22(v20, v0[4], v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
  OUTLINED_FUNCTION_6_11();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23136B670;
  *(v23 + 56) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  v22(boxed_opaque_existential_1, v20, v21);
LABEL_6:

  v25 = OUTLINED_FUNCTION_5();

  return v26(v25);
}

uint64_t sub_23124A640()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124A26C();
}

uint64_t sub_23124A6D4()
{
  OUTLINED_FUNCTION_8();
  v0[12] = v1;
  v2 = sub_231369E00();
  v0[13] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[14] = v3;
  v0[15] = OUTLINED_FUNCTION_43();
  v4 = sub_231368290();
  v0[16] = v4;
  OUTLINED_FUNCTION_0(v4);
  v0[17] = v5;
  v0[18] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23124A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(uint64_t, uint64_t), uint64_t a18, void (*a19)(uint64_t, unint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_4();
  v26 = v24[17];
  v25 = v24[18];
  v27 = v24[16];
  v28 = v24[12];
  v29 = *MEMORY[0x277D60EC0];
  v93 = *(v26 + 104);
  v93(v25, v29, v27);
  v30 = sub_231368280();
  v32 = v31;
  v33 = *(v26 + 8);
  v33(v25, v27);
  v34 = sub_231249640(v28, v30, v32, 0x6E457265646C6F46, 0xEC00000079746974);

  v93(v25, v29, v27);
  v35 = sub_231368280();
  v37 = v36;
  v33(v25, v27);
  v38 = sub_231249640(v28, v35, v37, 0x7469746E45676154, 0xE900000000000079);

  v39 = *(v34 + 16);
  if (v39)
  {
    OUTLINED_FUNCTION_22_8();
    v40 = a21;
    v42 = *(v27 + 16);
    v41 = v27 + 16;
    a18 = v34;
    v43 = v34 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    a19 = *(v41 + 56);
    v93 = v42;
    v44 = (v41 - 8);
    do
    {
      v45 = v40;
      v46 = v24[15];
      v47 = v24[13];
      v93(v46, v43, v47);
      v48 = sub_231369DE0();
      v50 = v49;
      v51 = v46;
      v40 = v45;
      (*v44)(v51, v47);
      a21 = v45;
      v27 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v27 >= v52 >> 1)
      {
        v54 = OUTLINED_FUNCTION_10_12(v52);
        sub_2311F4E34(v54);
        v40 = v45;
      }

      *(v40 + 16) = v27 + 1;
      v53 = v40 + 16 * v27;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 += a19;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v55 = *(v38 + 16);
  if (v55)
  {
    a15 = v40;
    OUTLINED_FUNCTION_22_8();
    v57 = *(v27 + 16);
    v56 = v27 + 16;
    v58 = a21;
    v59 = v38 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    a18 = *(v56 + 56);
    a19 = v57;
    v93 = v56;
    a17 = (v56 - 8);
    do
    {
      v60 = v24[15];
      v61 = v24[13];
      a19(v60, v59, v61);
      v62 = sub_231369DE0();
      v24[2] = v62;
      v24[3] = v63;
      v24[4] = 35;
      v24[5] = 0xE100000000000000;
      v24[6] = 0;
      v24[7] = 0xE000000000000000;
      a11 = sub_231207C1C(v62, v63, v64);
      a12 = a11;
      a10 = a11;
      a9 = MEMORY[0x277D837D0];
      v65 = sub_23136A500();
      v67 = v66;

      (*a17)(v60, v61);
      a21 = v58;
      v69 = *(v58 + 16);
      v68 = *(v58 + 24);
      if (v69 >= v68 >> 1)
      {
        v71 = OUTLINED_FUNCTION_10_12(v68);
        sub_2311F4E34(v71);
      }

      *(v58 + 16) = v69 + 1;
      v70 = v58 + 16 * v69;
      *(v70 + 32) = v65;
      *(v70 + 40) = v67;
      v59 += a18;
      --v55;
    }

    while (v55);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v92 = *(v58 + 16);
  if (v92)
  {
    v73 = 0;
    a18 = *(v40 + 16);
    v74 = v58 + 32;
    v75 = (v40 + 40);
    a14 = v40 + 40;
    a15 = v58 + 32;
    while (2)
    {
      if (v73 >= *(v58 + 16))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v76 = v74 + 16 * v73;
      a19 = *v76;
      v93 = *(v76 + 8);
      a17 = (v73 + 1);
      result = sub_231369EE0();
      for (i = 0; a18 != i; ++i)
      {
        if (i >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v81 = *(v75 - 1);
        v80 = *v75;
        v24[8] = v81;
        v24[9] = v80;
        v24[10] = a19;
        v24[11] = v93;
        sub_231207C1C(result, v77, v78);
        sub_231369EE0();
        if (!sub_23136A510())
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
          OUTLINED_FUNCTION_6_11();
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_23136B670;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
          OUTLINED_FUNCTION_6_11();
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_23136C1C0;
          *(v83 + 32) = a19;
          *(v83 + 40) = v93;
          *(v83 + 48) = v81;
          *(v83 + 56) = v80;
          *(v82 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
          *(v82 + 32) = v83;
          goto LABEL_26;
        }

        v75 += 2;
      }

      v73 = a17;
      v75 = (v40 + 40);
      v74 = v58 + 32;
      if (a17 != v92)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_0();

  return v86(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, v92, a17, a18, a19, v93, a21, a22, a23, a24);
}

uint64_t sub_23124AD5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124A6D4();
}

uint64_t sub_23124ADF0()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_231369D00();
  v0[7] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_67();
  v0[10] = swift_task_alloc();
  v4 = sub_231369630();
  v0[11] = v4;
  OUTLINED_FUNCTION_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_67();
  v0[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v6);
  v0[15] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v7);
  v0[16] = OUTLINED_FUNCTION_67();
  v0[17] = swift_task_alloc();
  v8 = sub_2313696B0();
  v0[18] = v8;
  OUTLINED_FUNCTION_0(v8);
  v0[19] = v9;
  v0[20] = OUTLINED_FUNCTION_67();
  v0[21] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_23124AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_4();
  v25 = *(v24 + 152);
  v26 = *(v24 + 96);
  __swift_project_boxed_opaque_existential_1(*(v24 + 48), *(*(v24 + 48) + 24));
  OUTLINED_FUNCTION_28_0();
  sub_2313683A0();
  v27 = sub_23136A200();

  v28 = 0;
  v86 = *(v27 + 16);
  v85 = v25 + 16;
  HIDWORD(a15) = *MEMORY[0x277D1EAB0];
  v83 = (v26 + 8);
  v84 = (v26 + 104);
  OUTLINED_FUNCTION_23_6();
  v81 = MEMORY[0x277D84F90];
  v82 = v27;
  while (v86 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v29 = *(v24 + 104);
    v30 = *(v24 + 88);
    OUTLINED_FUNCTION_4_10();
    a19 = v31;
    v32 = OUTLINED_FUNCTION_31_9();
    v33(v32);
    sub_231369680();
    (*v84)(v29, HIDWORD(a15), v30);
    OUTLINED_FUNCTION_1_17();
    v35 = sub_23124D064(&qword_27DD43C18, 255, v34, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_9_12(v35);
    OUTLINED_FUNCTION_14_11();
    v37 = *(v24 + 16);
    v38 = *(v24 + 32);
    v39 = *(v24 + 40);
    v40 = *(v24 + 112);
    if (v37 == v38 && *(v24 + 24) == v39)
    {
      v47 = *v83;
      v48 = OUTLINED_FUNCTION_16_11();
      v47(v48);
      v49 = OUTLINED_FUNCTION_53_3();
      v47(v49);

LABEL_11:
      v50 = *a9;
      (*a9)(*(v24 + 160), *(v24 + 168), *(v24 + 144));
      v51 = v81;
      a21 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_10();
        v51 = v81;
      }

      v27 = v82;
      OUTLINED_FUNCTION_20_11();
      if (v53)
      {
        v56 = OUTLINED_FUNCTION_10_12(v52);
        sub_2311F5958(v56, v39, 1);
        v51 = v81;
      }

      ++v28;
      v54 = *(v24 + 160);
      v55 = *(v24 + 144);
      *(v51 + 16) = v39;
      v81 = v51;
      v50(v51 + a19 + v40 * a18, v54, v55);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_25_7(v37, v36, v38);
      v43 = *v83;
      v44 = OUTLINED_FUNCTION_16_11();
      v43(v44);
      v45 = OUTLINED_FUNCTION_53_3();
      v43(v45);

      if (v42)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_30_7();
      v46();
      ++v28;
      v27 = v82;
    }
  }

  v57 = *(v24 + 144);
  v58 = *(v24 + 120);

  sub_231217DAC(v81, v58);

  if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
  {
    v59 = *(v24 + 136);
    v60 = *(v24 + 56);
    sub_2311EB450(*(v24 + 120), &qword_27DD43C68, &qword_231378D20);
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
  }

  else
  {
    sub_231369670();
    OUTLINED_FUNCTION_30_7();
    v61 = OUTLINED_FUNCTION_27();
    v62(v61);
  }

  sub_23124D0AC(*(v24 + 136), *(v24 + 128), &qword_27DD43358, &qword_23136FA90);
  if (OUTLINED_FUNCTION_26_9() == 1)
  {
    sub_2311EB450(*(v24 + 128), &qword_27DD43358, &qword_23136FA90);
    goto LABEL_21;
  }

  v63 = *(v24 + 64);
  (*(v63 + 32))(*(v24 + 80), *(v24 + 128), *(v24 + 56));
  sub_231369CB0();
  OUTLINED_FUNCTION_27();
  v64 = sub_231369CF0();
  v65 = *(v63 + 8);
  v66 = OUTLINED_FUNCTION_28_0();
  v65(v66);
  if (v64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    OUTLINED_FUNCTION_6_11();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_23136B670;
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 32) = 1802661719;
    *(v67 + 40) = 0xE400000000000000;
    goto LABEL_26;
  }

  v68 = *(v24 + 72);
  v69 = *(v24 + 56);
  sub_231369CB0();
  OUTLINED_FUNCTION_64();
  v70 = sub_231369CF0();
  (v65)(v68, v69);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    OUTLINED_FUNCTION_6_11();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_23136B670;
    *(v67 + 56) = MEMORY[0x277D837D0];
    *(v67 + 32) = 1701670728;
    *(v67 + 40) = 0xE400000000000000;
LABEL_26:
    v87 = v67;
    v71 = OUTLINED_FUNCTION_28_0();
    v65(v71);
  }

  else
  {
    v80 = OUTLINED_FUNCTION_28_0();
    v65(v80);
LABEL_21:
    v87 = MEMORY[0x277D84F90];
  }

  sub_2311EB450(*(v24 + 136), &qword_27DD43358, &qword_23136FA90);

  OUTLINED_FUNCTION_33_0();

  v74(v72, v73, v74, v75, v76, v77, v78, v79, a9, v81, a11, v82, v83, v84, a15, v85, a17, a18, a19, v87, a21, a22, a23, a24);
}

uint64_t sub_23124B580(char a1)
{
  if (a1)
  {
    return 0x7465736E7553;
  }

  else
  {
    return 0x657369726E7553;
  }
}

uint64_t sub_23124B5B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124ADF0();
}

uint64_t sub_23124B648()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_231366880();
  v0[2] = v1;
  OUTLINED_FUNCTION_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_43();
  v3 = sub_2313668A0();
  v0[5] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_43();
  v5 = sub_231366750();
  v0[8] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23124B780(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[7];
  v18 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v9 = v1[2];
  sub_231366740();
  sub_231366870();
  (*(v8 + 104))(v7, *MEMORY[0x277CC9980], v9);
  OUTLINED_FUNCTION_28_0();
  v10 = sub_231366890();
  (*(v8 + 8))(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
  OUTLINED_FUNCTION_6_11();
  v11 = swift_allocObject();
  v12 = v11;
  v13 = 0x657369726E7553;
  if (v10 > 8)
  {
    v13 = 0x7465736E7553;
  }

  v14 = 0xE700000000000000;
  if (v10 > 8)
  {
    v14 = 0xE600000000000000;
  }

  v15 = MEMORY[0x277D837D0];
  *(v11 + 16) = xmmword_23136B670;
  *(v11 + 56) = v15;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v18);

  v16 = v1[1];

  return v16(v12);
}

double sub_23124B954()
{
  *(v0 + 16) = 0x5372656874616577;
  *(v0 + 24) = 0xEF65676174536E75;
  *&result = 9;
  *(v0 + 32) = xmmword_23136FD50;
  return result;
}

uint64_t sub_23124B98C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311EC8F4;

  return sub_23124B648();
}

uint64_t sub_23124BA18()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_231369CA0();
  v0[7] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_43();
  v4 = sub_231369C90();
  v0[10] = v4;
  OUTLINED_FUNCTION_0(v4);
  v0[11] = v5;
  v0[12] = OUTLINED_FUNCTION_43();
  v6 = sub_231369630();
  v0[13] = v6;
  OUTLINED_FUNCTION_0(v6);
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_67();
  v0[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  OUTLINED_FUNCTION_40_0(v8);
  v0[17] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  OUTLINED_FUNCTION_40_0(v9);
  v0[18] = OUTLINED_FUNCTION_43();
  v10 = sub_231369D00();
  v0[19] = v10;
  OUTLINED_FUNCTION_0(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_67();
  v0[22] = swift_task_alloc();
  v12 = sub_2313696B0();
  v0[23] = v12;
  OUTLINED_FUNCTION_0(v12);
  v0[24] = v13;
  v0[25] = OUTLINED_FUNCTION_67();
  v0[26] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_23124BC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_4();
  v25 = *(v24 + 192);
  v26 = *(v24 + 112);
  __swift_project_boxed_opaque_existential_1(*(v24 + 48), *(*(v24 + 48) + 24));
  sub_2313683A0();
  v27 = sub_23136A200();

  v28 = 0;
  v113 = *(v27 + 16);
  v111 = v25 + 16;
  HIDWORD(a14) = *MEMORY[0x277D1EA90];
  v109 = (v26 + 8);
  v110 = (v26 + 104);
  OUTLINED_FUNCTION_23_6();
  v108 = MEMORY[0x277D84F90];
  v112 = v27;
  while (v113 != v28)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    v29 = *(v24 + 120);
    v30 = *(v24 + 104);
    OUTLINED_FUNCTION_4_10();
    a19 = v31;
    v32 = OUTLINED_FUNCTION_31_9();
    v33(v32);
    sub_231369680();
    (*v110)(v29, HIDWORD(a14), v30);
    OUTLINED_FUNCTION_1_17();
    v35 = sub_23124D064(&qword_27DD43C18, 255, v34, MEMORY[0x277D1EB78]);
    OUTLINED_FUNCTION_9_12(v35);
    OUTLINED_FUNCTION_14_11();
    v37 = *(v24 + 16);
    v38 = *(v24 + 32);
    v39 = *(v24 + 40);
    v40 = *(v24 + 128);
    if (v37 == v38 && *(v24 + 24) == v39)
    {
      v47 = *v109;
      v48 = OUTLINED_FUNCTION_16_11();
      v47(v48);
      v49 = OUTLINED_FUNCTION_53_3();
      v47(v49);

LABEL_11:
      v50 = *a9;
      (*a9)(*(v24 + 200), *(v24 + 208), *(v24 + 184));
      v51 = v108;
      a21 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_10();
        v51 = v108;
      }

      OUTLINED_FUNCTION_20_11();
      if (v53)
      {
        v56 = OUTLINED_FUNCTION_10_12(v52);
        sub_2311F5958(v56, v39, 1);
        v51 = v108;
      }

      ++v28;
      v54 = *(v24 + 200);
      v55 = *(v24 + 184);
      *(v51 + 16) = v39;
      v108 = v51;
      v50(v51 + a19 + v40 * a18, v54, v55);
      v27 = v112;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_25_7(v37, v36, v38);
      v43 = *v109;
      v44 = OUTLINED_FUNCTION_16_11();
      v43(v44);
      v45 = OUTLINED_FUNCTION_53_3();
      v43(v45);

      if (v42)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_30_7();
      v46();
      ++v28;
      v27 = v112;
    }
  }

  v57 = *(v24 + 184);
  v58 = *(v24 + 136);

  sub_231217DAC(v108, v58);

  v59 = OUTLINED_FUNCTION_27_8();
  if (__swift_getEnumTagSinglePayload(v59, v60, v57) == 1)
  {
    v61 = *(v24 + 152);
    sub_2311EB450(*(v24 + 136), &qword_27DD43C68, &qword_231378D20);
    v62 = OUTLINED_FUNCTION_28_1();
    __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
    goto LABEL_19;
  }

  v65 = *(v24 + 144);
  v64 = *(v24 + 152);
  sub_231369670();
  OUTLINED_FUNCTION_30_7();
  v66 = OUTLINED_FUNCTION_27();
  v67(v66);
  if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
  {
LABEL_19:
    sub_2311EB450(*(v24 + 144), &qword_27DD43358, &qword_23136FA90);
    goto LABEL_20;
  }

  (*(*(v24 + 160) + 32))(*(v24 + 176), *(v24 + 144), *(v24 + 152));
  v76 = OUTLINED_FUNCTION_64();
  v77(v76);
  v78 = OUTLINED_FUNCTION_28_0();
  if (v79(v78) == *MEMORY[0x277D72A58])
  {
    v81 = *(v24 + 64);
    v80 = *(v24 + 72);
    v82 = *(v24 + 56);
    (*(*(v24 + 160) + 96))(*(v24 + 168), *(v24 + 152));
    v83 = swift_projectBox();
    (*(v81 + 16))(v80, v83, v82);
    v84 = OUTLINED_FUNCTION_28_0();
    if (v85(v84) == *MEMORY[0x277D729D0])
    {
      v87 = *(v24 + 88);
      v86 = *(v24 + 96);
      v89 = *(v24 + 72);
      v88 = *(v24 + 80);
      (*(*(v24 + 64) + 96))(v89, *(v24 + 56));
      (*(v87 + 32))(v86, v89, v88);

      v90 = sub_231369C80();
      v91 = sub_23124D10C(v90);
      v94 = *(v24 + 88);
      v93 = *(v24 + 96);
      v95 = *(v24 + 80);
      if (v92)
      {
        v96 = v91;
        v97 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
        OUTLINED_FUNCTION_6_11();
        v98 = swift_allocObject();
        v99 = MEMORY[0x277D837D0];
        *(v98 + 16) = xmmword_23136B670;
        *(v98 + 56) = v99;
        *(v98 + 32) = v96;
        *(v98 + 40) = v97;
        v114 = v98;
        (*(v94 + 8))(v93, v95);
        v100 = OUTLINED_FUNCTION_28_0();
        v101(v100);
        goto LABEL_21;
      }

      (*(v94 + 8))(*(v24 + 96), *(v24 + 80));
      v106 = OUTLINED_FUNCTION_28_0();
      v107(v106);
    }

    else
    {
      (*(*(v24 + 160) + 8))(*(v24 + 176), *(v24 + 152));
      v104 = OUTLINED_FUNCTION_28_0();
      v105(v104);
    }
  }

  else
  {
    v102 = *(*(v24 + 160) + 8);
    (v102)(*(v24 + 176), *(v24 + 152));
    v103 = OUTLINED_FUNCTION_27();
    v102(v103);
  }

LABEL_20:
  v114 = MEMORY[0x277D84F90];
LABEL_21:

  OUTLINED_FUNCTION_33_0();

  v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, v108, a11, v109, v110, a14, v111, v112, a17, a18, a19, v114, a21, a22, a23, a24);
}

uint64_t sub_23124C2DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23124C338()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124BA18();
}

uint64_t sub_23124C40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23124D228;

  return sub_23124C3CC();
}

void sub_23124C9A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2311D1D6C(a1, v20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  if ((OUTLINED_FUNCTION_34_4(v3, v4, v5, v3, v6) & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v19[2];
  if (!v7)
  {
LABEL_9:

LABEL_10:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v8 = 0;
  v9 = (v19 + 4);
  while (v8 < v19[2])
  {
    sub_2311D1D6C(v9, v20);
    v10 = sub_23124D17C();
    if (OUTLINED_FUNCTION_34_4(v10, v11, v12, v10, v13))
    {
      sub_23124D1C0(v19);
      if (v14)
      {

        v15 = [v19 displayName];
        v16 = sub_231369FD0();
        v18 = v17;

        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v16;
        *(a2 + 8) = v18;
        return;
      }
    }

    ++v8;
    v9 += 32;
    if (v7 == v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_23124CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v36 = a2;
  v7 = sub_231369D50();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  MEMORY[0x28223BE20](v35);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  MEMORY[0x28223BE20](v14 - 8);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v33 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  sub_231369670();
  v22 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v13, 1, v22) == 1)
  {
    sub_2311EB450(v13, &qword_27DD43358, &qword_23136FA90);
    v23 = 1;
  }

  else
  {
    sub_231369CC0();
    (*(*(v22 - 8) + 8))(v13, v22);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v23, 1, v7);
  v24 = swift_allocObject();
  v24[2] = v36;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = v37;
  *v18 = v24;
  (*(v38 + 104))(v18, *MEMORY[0x277D72D28], v7);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
  v25 = *(v35 + 48);
  sub_23124D0AC(v21, v10, &qword_27DD437B8, &qword_23136FA60);
  sub_23124D0AC(v18, &v10[v25], &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(v10, 1, v7) != 1)
  {
    v27 = v34;
    sub_23124D0AC(v10, v34, &qword_27DD437B8, &qword_23136FA60);
    if (__swift_getEnumTagSinglePayload(&v10[v25], 1, v7) != 1)
    {
      v28 = v38;
      v29 = &v10[v25];
      v30 = v33;
      (*(v38 + 32))(v33, v29, v7);
      sub_23124D064(&qword_27DD43360, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      sub_231369EE0();
      sub_231369EE0();
      v26 = sub_231369F60();
      v31 = *(v28 + 8);
      v31(v30, v7);
      sub_2311EB450(v18, &qword_27DD437B8, &qword_23136FA60);
      sub_2311EB450(v21, &qword_27DD437B8, &qword_23136FA60);
      v31(v27, v7);
      sub_2311EB450(v10, &qword_27DD437B8, &qword_23136FA60);
      return v26 & 1;
    }

    sub_231369EE0();
    sub_231369EE0();
    sub_2311EB450(v18, &qword_27DD437B8, &qword_23136FA60);
    sub_2311EB450(v21, &qword_27DD437B8, &qword_23136FA60);
    (*(v38 + 8))(v27, v7);
    goto LABEL_9;
  }

  sub_231369EE0();
  sub_231369EE0();
  sub_2311EB450(v18, &qword_27DD437B8, &qword_23136FA60);
  sub_2311EB450(v21, &qword_27DD437B8, &qword_23136FA60);
  if (__swift_getEnumTagSinglePayload(&v10[v25], 1, v7) != 1)
  {
LABEL_9:
    sub_2311EB450(v10, &qword_27DD437B0, &unk_23136DFC0);
    v26 = 0;
    return v26 & 1;
  }

  sub_2311EB450(v10, &qword_27DD437B8, &qword_23136FA60);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_23124D064(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23124D0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_26_0();
  v5 = OUTLINED_FUNCTION_64();
  v6(v5);
  return a2;
}

uint64_t sub_23124D10C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

unint64_t sub_23124D17C()
{
  result = qword_27DD43D20;
  if (!qword_27DD43D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD43D20);
  }

  return result;
}

uint64_t sub_23124D1C0(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

void OUTLINED_FUNCTION_13_11(uint64_t a1@<X8>)
{

  sub_2311F5958(0, a1 + 1, 1);
}

void OUTLINED_FUNCTION_24_10()
{
  v2 = *(v0 + 16) + 1;

  sub_2311F5958(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void sub_23124D2C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E18, &qword_2313707A0);
  v4 = sub_23136A770();
  v5 = v4;
  v34 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v38 = v4 + 64;
  sub_231369EE0();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v36 = v5;
  v37 = v3;
  v35 = v9;
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v15 = v12 | (v10 << 6);
      v16 = (*(v3 + 48) + 16 * v15);
      v17 = v16[1];
      v42 = *v16;
      v18 = *(*(v3 + 56) + 8 * v15);
      v19 = *(v18 + 16);
      if (v19)
      {
        break;
      }

      v28 = sub_231369EE0();
      v21 = v11;
LABEL_18:
      *(v38 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v29 = (v5[6] + 16 * v15);
      *v29 = v42;
      v29[1] = v28;
      *(v5[7] + 8 * v15) = v21;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      v5[2] = v32;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v40 = v15;
    v41 = v8;
    v47 = v11;
    v39 = v17;
    sub_231369EE0();
    sub_231369EE0();
    sub_2311F59F0(0, v19, 0);
    v20 = 0;
    v21 = v47;
    v22 = v18 + 72;
    while (v20 < *(v18 + 16))
    {
      sub_231252E14(v22 - 40, __src);
      sub_231252F98(v22, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_2311D9ECC(&__dst[5], &v45);
      __swift_destroy_boxed_opaque_existential_1Tm(__dst);
      v23 = v46;
      v24 = __swift_project_boxed_opaque_existential_1(&v45, v46);
      *&__src[24] = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v24, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
      v47 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2311F59F0(v26 > 1, v27 + 1, 1);
        v21 = v47;
      }

      ++v20;
      *(v21 + 16) = v27 + 1;
      sub_2311D9ECC(__src, (v21 + 32 * v27 + 32));
      v22 += 72;
      if (v19 == v20)
      {

        v5 = v36;
        v3 = v37;
        v9 = v35;
        v11 = MEMORY[0x277D84F90];
        v15 = v40;
        v8 = v41;
        v28 = v39;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v10;
    while (1)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        *a2 = v5;
        return;
      }

      v14 = *(v34 + 8 * v10);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_23124D658(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  [a1 lock];
  a3(&v8, a2);
  [a1 unlock];
  if (v3)
  {
  }

  return v8;
}

id sub_23124D6F4(void (*a1)(uint64_t *__return_ptr, id))
{
  a1(&v4, [v1 lock]);
  if (v2)
  {
    return [v1 unlock];
  }

  [v1 unlock];
  return v4;
}

uint64_t sub_23124D798(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(v1 + 112);

  return sub_23124D658(v3, v1, a1);
}

void sub_23124D7E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 112);

  v4 = sub_23124D658(v3, a1, sub_23124D2C0);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v21 = v4;
  sub_231369EE0();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v12);
          ++v10;
          if (v8)
          {
            v10 = v12;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_9:
      v13 = *(*(v21 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
      v14 = *(v13 + 16);
      v15 = *(v11 + 16);
      if (__OFADD__(v15, v14))
      {
        goto LABEL_22;
      }

      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v11 + 24) >> 1)
      {
        sub_23126E92C();
        v11 = v16;
      }

      v8 &= v8 - 1;
      if (!*(v13 + 16))
      {
        break;
      }

      if ((*(v11 + 24) >> 1) - *(v11 + 16) < v14)
      {
        goto LABEL_23;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v17 = *(v11 + 16);
        v18 = __OFADD__(v17, v14);
        v19 = v17 + v14;
        if (v18)
        {
          goto LABEL_24;
        }

        *(v11 + 16) = v19;
      }
    }
  }

  while (!v14);
  __break(1u);
LABEL_20:

  *a2 = v11;
}

uint64_t DefaultGlobalLifeCycleContainer.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultGlobalLifeCycleContainer.init()();
  return v0;
}

void *DefaultGlobalLifeCycleContainer.init()()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D28, &unk_231370460);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
  v0[16] = sub_231369EC0();
  return v0;
}

uint64_t sub_23124DABC()
{
  swift_beginAccess();
  v1 = *(*(v0 + 128) + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_2312502D0();
  sub_231251CFC();
  v4 = v3;
  sub_231369EE0();
  sub_2311D3BBC(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_23124DBB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_5(sub_23124DBD0, v2);
}

uint64_t sub_23124DBD0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v3 = v0[1];
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  sub_23124D5E0(sub_231252050);

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_23124DC74(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = a3;
  v5 = sub_231250B90(sub_231252F18, v9, a2);
  swift_beginAccess();
  sub_2312510F8(v5, sub_231252F34, 0, (a1 + 120));
  swift_endAccess();
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  MEMORY[0x231929610](v6, v7);
  sub_231252E14(a3, v10);
  swift_beginAccess();
  sub_2312C50C8();
  return swift_endAccess();
}

uint64_t sub_23124DD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  result = sub_23132BD80(sub_231252F78, v6, v4);
  *a3 = result;
  return result;
}

uint64_t sub_23124DDDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231252E14(a2, a3);
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  *(a3 + 64) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 40));
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
}

uint64_t sub_23124DE88()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23124DF2C;

  return sub_23124E1C8();
}

uint64_t sub_23124DF2C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  sub_231228E9C(v2 + 16, &qword_27DD43D30, qword_231375200);
  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_23124E01C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_8_5(sub_23124E038, v1);
}

uint64_t sub_23124E038()
{
  OUTLINED_FUNCTION_8();
  sub_231252E14(*(v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23124E0D8;

  return sub_23124E1C8();
}

uint64_t sub_23124E0D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  sub_231228E9C(v2 + 16, &qword_27DD43D30, qword_231375200);
  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_23124E1C8()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2313698C0();
  v1[9] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[10] = v4;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23124E27C, v0, 0);
}

uint64_t sub_23124E27C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = sub_23124D6F4(sub_231252DF8);
  v0[12] = v4;

  sub_2313690F0();
  sub_231369EE0();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v4[2];

    _os_log_impl(&dword_2311CB000, v5, v6, "Destroying remaining entities: %ld", v7, 0xCu);
    MEMORY[0x23192B930](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v8 = v4[2];
  v0[13] = v8;
  if (v8)
  {
    v0[14] = 0;
    sub_231252E14(v0[12] + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_8_10(v9);

    return MEMORY[0x2821C67F0](v10);
  }

  else
  {

    OUTLINED_FUNCTION_56_0();

    return v11();
  }
}

uint64_t sub_23124E480()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_23124E580, v5, 0);
}

uint64_t sub_23124E580()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {

    OUTLINED_FUNCTION_56_0();

    return v2();
  }

  else
  {
    v0[14] = v1;
    sub_231252E14(v0[12] + 40 * v1 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_8_10(v4);

    return MEMORY[0x2821C67F0](v5);
  }
}

void sub_23124E678(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v106 = a3;
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v108 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v106 - v10;
  sub_2313690F0();
  v113 = a1;
  sub_231252E6C(a1, __src, &qword_27DD43D30, qword_231375200);
  swift_retain_n();
  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();
  v14 = os_log_type_enabled(v12, v13);
  v116 = v3;
  v117 = a2;
  v109 = v7;
  v110 = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v120.n128_u64[0] = v118;
    *v15 = 136315394;
    sub_231252E6C(__src, v119, &qword_27DD43D30, qword_231375200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D30, qword_231375200);
    v16 = sub_23136A010();
    v18 = v17;
    a2 = v117;
    sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
    v19 = sub_2311CFD58(v16, v18, &v120);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    v20 = *(a2 + 112);

    v21 = v20;
    v22 = v116;
    v23 = sub_23124D658(v21, a2, sub_23124D7E8);
    v116 = v22;
    v24 = *(v23 + 16);

    *(v15 + 14) = v24;

    _os_log_impl(&dword_2311CB000, v12, v13, "Destroying: %s. Entries before: %ld", v15, 0x16u);
    v25 = v118;
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    MEMORY[0x23192B930](v25, -1, -1);
    MEMORY[0x23192B930](v15, -1, -1);

    v107 = *(v109 + 8);
    v107(v11, v110);
  }

  else
  {

    sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
    v107 = *(v7 + 8);
    v107(v11, v6);
  }

  swift_beginAccess();
  v26 = *(a2 + 120);
  v27 = *(v26 + 64);
  v115 = (v26 + 64);
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v118 = v26;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v30)
  {
LABEL_12:
    v35 = *(v118[7] + ((v32 << 9) | (8 * __clz(__rbit64(v30)))));
    v36 = *(v35 + 16);
    v37 = *(v33 + 16);
    if (__OFADD__(v37, v36))
    {
      goto LABEL_67;
    }

    sub_231369EE0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > *(v33 + 24) >> 1)
    {
      sub_23126EA10();
      v33 = v38;
    }

    v30 &= v30 - 1;
    if (*(v35 + 16))
    {
      if ((*(v33 + 24) >> 1) - *(v33 + 16) < v36)
      {
        goto LABEL_68;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
      swift_arrayInitWithCopy();

      if (v36)
      {
        v39 = *(v33 + 16);
        v40 = __OFADD__(v39, v36);
        v41 = v39 + v36;
        if (v40)
        {
          goto LABEL_69;
        }

        *(v33 + 16) = v41;
      }
    }

    else
    {

      if (v36)
      {
        __break(1u);
LABEL_23:

        MEMORY[0x28223BE20](v42);
        *(&v106 - 2) = v113;
        v43 = v116;
        v44 = sub_231254F64(sub_231252EB8, (&v106 - 4), v33);
        v116 = v43;
        v45 = v44[2];
        if (v45)
        {
          v115 = v44;
          v46 = (v44 + 4);
          v118 = MEMORY[0x277D84F90];
          do
          {
            sub_231252E6C(v46, __src, &qword_27DD43630, &qword_23136CB70);
            memcpy(v119, __src, sizeof(v119));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE8, &unk_231370EE0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v119);
            if (*(&v121 + 1))
            {
              sub_2311D9EB8(&v120, v119);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23126EAEC(0);
                v118 = v50;
              }

              v48 = v118[2];
              v47 = v118[3];
              if (v48 >= v47 >> 1)
              {
                sub_23126EAEC(v47 > 1);
                v118 = v51;
              }

              v49 = v118;
              v118[2] = v48 + 1;
              sub_2311D9EB8(v119, &v49[5 * v48 + 4]);
            }

            else
            {
              sub_231228E9C(&v120, &qword_27DD43DF0, &qword_231370770);
            }

            v46 += 72;
            --v45;
          }

          while (v45);
        }

        else
        {

          v118 = MEMORY[0x277D84F90];
        }

        v52 = *(v117 + 120);
        v55 = *(v52 + 64);
        v54 = v52 + 64;
        v53 = v55;
        v56 = 1 << *(*(v117 + 120) + 32);
        v57 = -1;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        v58 = v57 & v53;
        v59 = (v56 + 63) >> 6;
        v112 = *(v117 + 120);
        v60 = sub_231369EE0();
        v61 = 0;
        v111 = v54;
        if (v58)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v62 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_65;
          }

          if (v62 >= v59)
          {

            v73 = v108;
            sub_2313690F0();
            sub_231252E6C(v113, __src, &qword_27DD43D30, qword_231375200);
            v74 = v117;
            swift_retain_n();
            v75 = sub_2313698A0();
            v76 = sub_23136A3A0();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v120.n128_u64[0] = v115;
              *v77 = 136315394;
              sub_231252E6C(__src, v119, &qword_27DD43D30, qword_231375200);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D30, qword_231375200);
              v78 = sub_23136A010();
              v80 = v79;
              sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
              v81 = sub_2311CFD58(v78, v80, &v120);

              *(v77 + 4) = v81;
              *(v77 + 12) = 2048;
              v82 = *(v74 + 112);

              v83 = v116;
              v84 = *(sub_23124D658(v82, v74, sub_23124D7E8) + 16);

              *(v77 + 14) = v84;

              _os_log_impl(&dword_2311CB000, v75, v76, "Destroyed container for: %s. Entries after: %ld", v77, 0x16u);
              v85 = v115;
              __swift_destroy_boxed_opaque_existential_1Tm(v115);
              MEMORY[0x23192B930](v85, -1, -1);
              MEMORY[0x23192B930](v77, -1, -1);

              v107(v108, v110);
            }

            else
            {

              sub_231228E9C(__src, &qword_27DD43D30, qword_231375200);
              v107(v73, v110);
              v83 = v116;
            }

            v86 = swift_beginAccess();
            v87 = *(v74 + 128);
            MEMORY[0x28223BE20](v86);
            *(&v106 - 2) = v113;
            sub_231369EE0();
            v88 = sub_231250D58(sub_231252EF8, &v106 - 4, v87);
            v114 = v83;

            v89 = 0;
            v91 = v88 + 8;
            v90 = v88[8];
            v116 = v88;
            v92 = 1 << *(v88 + 32);
            v93 = -1;
            if (v92 < 64)
            {
              v93 = ~(-1 << v92);
            }

            v94 = v93 & v90;
            v95 = (v92 + 63) >> 6;
            while (v94)
            {
LABEL_59:
              v97 = __clz(__rbit64(v94)) | (v89 << 6);
              v98 = (v116[6] + 16 * v97);
              v100 = *v98;
              v99 = v98[1];
              sub_231252E14(v116[7] + 40 * v97, &__src[16]);
              *v119 = v100;
              *&v119[8] = v99;
              sub_2311D9EB8(&__src[16], &v119[16]);
              v101 = v117;
              swift_beginAccess();
              sub_231369EE0();
              v102 = sub_231215F6C(v100, v99);
              if (v103)
              {
                v104 = v102;
                LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
                v124 = *(v101 + 128);
                *(v101 + 128) = 0x8000000000000000;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E00, &unk_231370780);
                sub_23136A700();
                v105 = v124;

                sub_2311D9EB8((*(v105 + 56) + 40 * v104), &v120);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
                sub_23136A720();
                *(v101 + 128) = v105;
              }

              else
              {
                v122 = 0;
                v120 = 0u;
                v121 = 0u;
              }

              v94 &= v94 - 1;
              sub_231228E9C(&v120, &qword_27DD43D30, qword_231375200);
              swift_endAccess();
              sub_231228E9C(v119, &qword_27DD43DF8, &qword_231370778);
            }

            while (1)
            {
              v96 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_66;
              }

              if (v96 >= v95)
              {

                *v106 = v118;
                return;
              }

              v94 = v91[v96];
              ++v89;
              if (v94)
              {
                v89 = v96;
                goto LABEL_59;
              }
            }
          }

          v58 = *(v54 + 8 * v62);
          ++v61;
          if (v58)
          {
            v61 = v62;
            do
            {
LABEL_44:
              v114 = &v106;
              v63 = __clz(__rbit64(v58)) | (v61 << 6);
              v64 = (*(v112 + 48) + 16 * v63);
              v66 = *v64;
              v65 = v64[1];
              v67 = *(*(v112 + 56) + 8 * v63);
              MEMORY[0x28223BE20](v60);
              *(&v106 - 2) = v113;
              swift_bridgeObjectRetain_n();
              sub_231369EE0();
              v115 = v67;
              v68 = v116;
              v69 = sub_231254F64(sub_231252ED8, (&v106 - 4), v67);
              v116 = v68;
              v70 = v117;
              swift_beginAccess();
              sub_231369EE0();
              sub_231369EE0();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v119 = *(v70 + 120);
              v114 = v66;
              sub_23125A168(v69, v66, v65, isUniquelyReferenced_nonNull_native);
              *(v70 + 120) = *v119;

              swift_endAccess();
              v72 = *(v69 + 2);

              if (!v72)
              {
                swift_beginAccess();
                sub_2312D0540(v114, v65);
                swift_endAccess();
              }

              v54 = v111;
              v58 &= v58 - 1;
            }

            while (v58);
          }
        }
      }
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_23;
    }

    v30 = v115[v34];
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_23124F398(uint64_t a1, uint64_t a2)
{
  sub_231252E6C(a2, v4, &qword_27DD43D30, qword_231375200);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_231368F90();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_231228E9C(v4, &qword_27DD43D30, qword_231375200);
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_23124F450(uint64_t a1, uint64_t a2)
{
  sub_231252E6C(a2, v5, &qword_27DD43D30, qword_231375200);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = sub_231368F90();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v3 = v2 ^ 1;
  }

  else
  {
    sub_231228E9C(v5, &qword_27DD43D30, qword_231375200);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_23124F50C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  sub_231252E14(a2, &v10);
  sub_231252E6C(a3, v7, &qword_27DD43D30, qword_231375200);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_231369EE0();
    v5 = sub_231368F90();
    sub_231228E9C(v9, &qword_27DD43DF8, &qword_231370778);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_231369EE0();
    sub_231228E9C(v9, &qword_27DD43DF8, &qword_231370778);
    sub_231228E9C(v7, &qword_27DD43D30, qword_231375200);
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_23124F624(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_8_5(sub_23124F644, v2);
}

uint64_t sub_23124F644()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[2] = v2;
  type metadata accessor for DefaultGlobalLifeCycleContainer();
  sub_2312526B0(qword_280F7E1B0, v3, type metadata accessor for DefaultGlobalLifeCycleContainer, &protocol conformance descriptor for DefaultGlobalLifeCycleContainer);
  v4 = sub_231368790();
  v6 = v5;
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v4;
  v7[5] = v6;
  sub_2312520B4();
  sub_23136A250();
  sub_23136A4D0();
  sub_23124D5E0(sub_231252094);

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t sub_23124F794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  result = swift_beginAccess();
  if (!*(*(a1 + 120) + 16))
  {
    goto LABEL_5;
  }

  sub_231369EE0();
  sub_231215F6C(a2, a3);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  sub_231369EE0();

  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D28, &unk_231370460);
  sub_231252D94();
  v12 = sub_23136A110();

LABEL_6:
  *a5 = v12;
  return result;
}

uint64_t sub_23124F8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231252E6C(a1, v7, &qword_27DD43630, &qword_23136CB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DE0, &unk_231370760);
  v5 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t DefaultGlobalLifeCycleContainer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DefaultGlobalLifeCycleContainer.__deallocating_deinit()
{
  DefaultGlobalLifeCycleContainer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23124FA28()
{
  OUTLINED_FUNCTION_8();
  sub_23124D2A8();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_23124FA80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209AAC;

  return sub_23124DBB0(a1, a2);
}

uint64_t sub_23124FB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DefaultGlobalLifeCycleContainer();
  *v10 = v5;
  v10[1] = sub_2311D05C8;

  return MEMORY[0x2821C72B0](a1, a2, v11, a3, a5);
}

uint64_t sub_23124FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DefaultGlobalLifeCycleContainer();
  *v10 = v5;
  v10[1] = sub_231209AAC;

  return MEMORY[0x2821C72C0](a1, a2, a3, v11, a5);
}

uint64_t sub_23124FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DefaultGlobalLifeCycleContainer();
  *v6 = v3;
  v6[1] = sub_231209AAC;

  return MEMORY[0x2821C72B8](a1, v7, a3);
}

uint64_t sub_23124FD70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311DDECC;

  return sub_23124F624(a1, a2);
}

uint64_t sub_23124FE14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_23124E01C(a1);
}

uint64_t sub_23124FEC8()
{
  OUTLINED_FUNCTION_8();
  sub_23124DABC();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_23124FF20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_23124DE6C();
}

uint64_t sub_23124FFB0()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_23124FFD0, v2, 0);
}

uint64_t sub_23124FFD0()
{
  OUTLINED_FUNCTION_8();
  sub_23124D780();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2312500A0()
{
  OUTLINED_FUNCTION_34_5();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(v2, v3, v4, v5);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_32_5(v6);
  *(v1 + 16) = v0;
  *(v1 + 24) = 2 * (v7 / 16);
  return v1;
}

uint64_t sub_231250158()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43550, &unk_23136CA90);
  v2 = OUTLINED_FUNCTION_36_5(v1);
  OUTLINED_FUNCTION_32_5(v2);
  OUTLINED_FUNCTION_12_9(v3);
  return v0;
}

uint64_t sub_2312502D0()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = OUTLINED_FUNCTION_16_12(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_36_5(v5);
  OUTLINED_FUNCTION_32_5(v6);
  OUTLINED_FUNCTION_12_9(v7);
  return v0;
}

uint64_t sub_2312504E0()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_32_5(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_231250590()
{
  OUTLINED_FUNCTION_34_5();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = OUTLINED_FUNCTION_16_12(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_36_5(v5);
  OUTLINED_FUNCTION_32_5(v6);
  OUTLINED_FUNCTION_12_9(v7);
  return v0;
}

size_t sub_231250678(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(a1, a2, a3, a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_0(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      OUTLINED_FUNCTION_12_9(result - v13);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2312507D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_12(a1, a2, a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = v5;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2312508BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v67 = a5;
  v7 = a1;
  sub_2312B7234();
  v8 = v60;
  v9 = v62;
  v10 = v63;
  v49 = v64;
  v50 = v59;
  v51 = v65;
  v44 = v61;
  v11 = (v61 + 64) >> 6;
  v46 = v7;
  sub_231369EE0();
  v45 = a3;

  v48 = v60;
  if (v63)
  {
    while (1)
    {
      HIDWORD(v52) = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v50 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v50 + 56) + 8 * v14);
      v56 = *v15;
      v57 = v16;
      v58 = v17;
      sub_231369EE0();
      sub_231369EE0();
      v49(&v53, &v56);

      v18 = v53;
      v19 = v54;
      v20 = v55;
      v21 = *v67;
      v29 = sub_231215F6C(v53, v54);
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v52 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E08, &unk_231370B10);
          sub_23136A710();
        }
      }

      else
      {
        sub_2312B5368(v32, BYTE4(v52) & 1, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
        v34 = sub_231215F6C(v18, v19);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      if (v33)
      {
        v36 = *v67;
        v56 = *(*(*v67 + 56) + 8 * v29);
        sub_231369EE0();
        sub_2312675E4(v20);

        *(*(v36 + 56) + 8 * v29) = v56;
      }

      else
      {
        v37 = *v67;
        v37[(v29 >> 6) + 8] |= 1 << v29;
        v38 = (v37[6] + 16 * v29);
        *v38 = v18;
        v38[1] = v19;
        *(v37[7] + 8 * v29) = v20;
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v37[2] = v41;
      }

      a4 = 1;
      v9 = v12;
      v8 = v48;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_2311D3BBC(v50);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v52) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_23136A970();
  __break(1u);
  return result;
}

void *sub_231250B90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E10, &unk_231370790);
  result = sub_23136A770();
  v6 = result;
  v7 = 0;
  v29 = a3;
  v30 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v29 + 56) + 8 * v18);
      sub_231369EE0();
      sub_231369EE0();
      a1(&v31, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v30;
      v22 = v31;
      v23 = (v30[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      *(v30[7] + 8 * v18) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v30;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t *sub_231250D58(uint64_t (*a1)(void *, void *), unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_231251068(v12, v8, a3, v6);
      MEMORY[0x23192B930](v12, -1, -1);
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v8, v9);
  sub_231250EDC(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

void sub_231250EDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v22 = 0;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_231252E14(v15 + 40 * v14, v24);
    sub_231369EE0();
    v18 = a4(v25, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        sub_2312416E8(a1, a2, v22, v26);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_231251068(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_231250EDC(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2312510F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_2312508BC(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

void sub_23125116C()
{
  OUTLINED_FUNCTION_21_10();
  v2 = v1 + 64;
  OUTLINED_FUNCTION_0_16();
  v7 = v6 & v5;
  if (!v3)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_35_7(v10);
    return;
  }

  v8 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v3;
    OUTLINED_FUNCTION_3_16();
    v14 = (v12 - v13) >> 6;
    while (v11 < v8)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v16);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v10;
LABEL_12:
      OUTLINED_FUNCTION_14_12();
      *v9 = *(*(v0 + 56) + ((v16 << 10) | (16 * v17)));
      if (v15 == v8)
      {
        sub_231369EE0();
        sub_231369EE0();
        v10 = v16;
        goto LABEL_17;
      }

      ++v9;
      sub_231369EE0();
      sub_231369EE0();
      v11 = v15;
      v10 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2312512C8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_40_6();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v22 = v4;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v6 = v0 + 64;
  OUTLINED_FUNCTION_0_16();
  v9 = v8 & v7;
  if (!v2)
  {
    v10 = 0;
LABEL_17:
    OUTLINED_FUNCTION_25_8(v10);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_16();
    v14 = (v12 - v13) >> 6;
    v20 = v0;
    v21 = v1;
    while (v11 < v1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v9 = *(v6 + 8 * v16);
          ++v10;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v10;
LABEL_12:
      OUTLINED_FUNCTION_13_12();
      sub_231367890();
      OUTLINED_FUNCTION_7_0();
      (*(v17 + 16))(v22 + *(v23 + 48), v0 + *(v17 + 72) * v2);
      v18 = OUTLINED_FUNCTION_42_6();
      sub_231252FE8(v18, v19, &qword_27DD43908, &unk_23136EBA0);
      OUTLINED_FUNCTION_37_5();
      v1 = v21;
      if (v15 == v21)
      {
        sub_231369EE0();
        v10 = v16;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_46_7();
      v11 = v15;
      v10 = v16;
      v0 = v20;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2312514C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  OUTLINED_FUNCTION_0_16();
  v12 = v11 & v10;
  if (!v6)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_18:
    *v5 = v8;
    v5[1] = v4;
    v5[2] = ~v9;
    v5[3] = v15;
    v5[4] = v12;
    return;
  }

  v13 = v7;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = v6;
    v31 = v9;
    v32 = v5;
    OUTLINED_FUNCTION_3_16();
    v19 = (v17 - v18) >> 6;
    while (1)
    {
      if (v16 >= v13)
      {
        goto LABEL_21;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v12)
      {
        while (1)
        {
          v21 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v12 = 0;
            goto LABEL_16;
          }

          v12 = *(v4 + 8 * v21);
          ++v15;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = v15;
LABEL_12:
      OUTLINED_FUNCTION_14_12();
      v23 = v22 | (v21 << 6);
      v25 = v24;
      v26 = (*(v24 + 48) + 16 * v23);
      v27 = *v26;
      v28 = v26[1];
      sub_231252F98(*(v24 + 56) + 32 * v23, &v34);
      *&v33 = v27;
      *(&v33 + 1) = v28;
      v30 = v34;
      v29 = v35;
      v37 = v34;
      v38 = v35;
      v36 = v33;
      *v14 = v33;
      v14[1] = v30;
      v14[2] = v29;
      if (v20 == v13)
      {
        break;
      }

      v14 += 3;
      sub_231369EE0();
      v16 = v20;
      v15 = v21;
      v8 = v25;
    }

    sub_231369EE0();
    v15 = v21;
    v8 = v25;
LABEL_16:
    v9 = v31;
    v5 = v32;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_231251660()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_33_6();
  sub_231367E10();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_18();
  v12 = v11 & v10;
  if (!v3)
  {
    v15 = 0;
LABEL_18:
    OUTLINED_FUNCTION_24_11(v15);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v21 = v9;
    OUTLINED_FUNCTION_3_16();
    v14 = OUTLINED_FUNCTION_15_14(v13);
    while (v16 < v14)
    {
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v12)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v1)
          {
            goto LABEL_18;
          }

          v12 = *(v21 + 8 * v17);
          ++v15;
          if (v12)
          {
            v23 = v16 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v23 = v16 + 1;
      v17 = v15;
LABEL_13:
      v18 = OUTLINED_FUNCTION_9_13();
      v19(v18);
      v20 = OUTLINED_FUNCTION_26_10();
      v2(v20);
      (v2)(v3, v0, v5);
      v14 = v22;
      v16 = v23;
      if (v23 == v22)
      {
        v15 = v17;
        goto LABEL_18;
      }

      v3 += v6;
      v15 = v17;
      v2 = v4;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

uint64_t *sub_23125182C(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_23136A590();
    sub_2313692F0();
    sub_2312526B0(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
    result = sub_23136A350();
    v4 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v16 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v16;
  v17 = -v16;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v11 = v18 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = v9;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_23136A5C0())
        {
          goto LABEL_25;
        }

        sub_2313692F0();
        swift_dynamicCast();
        result = v20;
        if (!v20)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v11 &= v11 - 1;

        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v19;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231251AA0()
{
  OUTLINED_FUNCTION_11_0();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v39 = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v0);
  OUTLINED_FUNCTION_0_0();
  v35 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v37 = v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_0();
  v36 = v15;
  v42 = v3;
  v16 = v3 + 64;
  OUTLINED_FUNCTION_0_16();
  v20 = v19 & v18;
  if (!v7)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_18:
    *v9 = v42;
    v9[1] = v16;
    v9[2] = ~v17;
    v9[3] = v21;
    v9[4] = v20;
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v5)
  {
    v21 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v32 = v17;
    v33 = v9;
    OUTLINED_FUNCTION_3_16();
    v25 = (v23 - v24) >> 6;
    v34 = v5;
    while (1)
    {
      if (v22 >= v5)
      {
        goto LABEL_21;
      }

      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_22;
      }

      if (!v20)
      {
        while (1)
        {
          v27 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v27 >= v25)
          {
            v20 = 0;
            goto LABEL_16;
          }

          v20 = *(v16 + 8 * v27);
          ++v21;
          if (v20)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v27 = v21;
LABEL_12:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v28 | (v27 << 6);
      v30 = *(v42 + 48);
      v41(0);
      OUTLINED_FUNCTION_7_0();
      (*(v31 + 16))(v37, v30 + *(v31 + 72) * v29);
      *(v37 + *(v38 + 48)) = *(*(v42 + 56) + 8 * v29);
      sub_231252FE8(v37, v36, v39, v40);
      sub_231252FE8(v36, v7, v39, v40);
      v5 = v34;
      if (v26 == v34)
      {
        break;
      }

      v7 += *(v35 + 72);
      sub_231369EE0();
      v22 = v26;
      v21 = v27;
    }

    sub_231369EE0();
    v21 = v27;
LABEL_16:
    v17 = v32;
    v9 = v33;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_231251CFC()
{
  OUTLINED_FUNCTION_21_10();
  v3 = v2 + 64;
  OUTLINED_FUNCTION_0_16();
  v10 = v9 & v8;
  if (!v4)
  {
    v15 = 0;
LABEL_17:
    *v0 = v1;
    v0[1] = v3;
    v0[2] = ~v7;
    v0[3] = v15;
    v0[4] = v10;
    return;
  }

  v11 = v5;
  if (!v5)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    v13 = v4;
    v14 = 0;
    v15 = 0;
    v20 = v7;
    v16 = (63 - v7) >> 6;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (!v10)
      {
        while (1)
        {
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            v10 = 0;
            goto LABEL_15;
          }

          v10 = *(v3 + 8 * v18);
          ++v15;
          if (v10)
          {
            v15 = v18;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_14_12();
      sub_231252E14(*(v1 + 56) + 40 * (v19 | (v15 << 6)), v21);
      v12(v21, v22);
      v12(v22, v13);
      v13 += 40;
      v14 = v17;
      if (v17 == v11)
      {
LABEL_15:
        v7 = v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_231251E5C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_40_6();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v23 = v4;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v6 = v0 + 64;
  OUTLINED_FUNCTION_0_16();
  v9 = v8 & v7;
  if (!v2)
  {
    v10 = 0;
LABEL_17:
    OUTLINED_FUNCTION_25_8(v10);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (!v1)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_16();
    v14 = (v12 - v13) >> 6;
    v21 = v0;
    v22 = v1;
    while (v11 < v1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v9 = *(v6 + 8 * v16);
          ++v10;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v10;
LABEL_12:
      v17 = OUTLINED_FUNCTION_13_12();
      v18 = type metadata accessor for SignalOverrides(v17);
      sub_231247630(v0 + *(*(v18 - 8) + 72) * v2, v23 + *(v24 + 48));
      v19 = OUTLINED_FUNCTION_42_6();
      sub_231252FE8(v19, v20, &qword_27DD435D0, &qword_23136CB10);
      OUTLINED_FUNCTION_37_5();
      v1 = v22;
      if (v15 == v22)
      {
        sub_231369EE0();
        v10 = v16;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_46_7();
      v11 = v15;
      v10 = v16;
      v0 = v21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2312520B4()
{
  result = qword_280F7C7E8;
  if (!qword_280F7C7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7E8);
  }

  return result;
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.addToLifeCycle(owner:localEntities:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_0();
  v9 = (*(v4 + 192) + **(v4 + 192));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(a1, a2);
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.destroy()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.destroy(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v7 = (*(v2 + 208) + **(v2 + 208));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7(v1);
}

uint64_t dispatch thunk of DefaultGlobalLifeCycleContainer.getEntity<A>(entityType:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_0();
  v9 = (*(v4 + 224) + **(v4 + 224));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(a1, a2);
}

uint64_t sub_2312526B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2312526F8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_21_10();
  v2 = v1 + 64;
  v3 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_1_18();
  v8 = v7 & v6;
  if (!v4)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_10_13(v11);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v9 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v4;
    OUTLINED_FUNCTION_3_16();
    v14 = (v13 - v3) >> 6;
    while (v12 < v9)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v8 = *(v2 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      OUTLINED_FUNCTION_39_3();
      *v10 = *(*(v0 + 56) + ((v16 << 9) | (8 * v17)));
      if (v15 == v9)
      {

        v11 = v16;
        goto LABEL_17;
      }

      ++v10;

      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_23125280C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_21_10();
  v2 = v1 + 64;
  v3 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_1_18();
  v8 = v7 & v6;
  if (!v4)
  {
    OUTLINED_FUNCTION_17_7();
LABEL_17:
    OUTLINED_FUNCTION_10_13(v11);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v9 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v4;
    OUTLINED_FUNCTION_3_16();
    v14 = (v13 - v3) >> 6;
    while (v12 < v9)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v8 = *(v2 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      OUTLINED_FUNCTION_39_3();
      v18 = *(*(v0 + 48) + ((v16 << 9) | (8 * v17)));
      *v10 = v18;
      if (v15 == v9)
      {
        v20 = v18;
        v11 = v16;
        goto LABEL_17;
      }

      ++v10;
      v19 = v18;
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}