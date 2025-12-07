uint64_t sub_2488096EC()
{
  if (v0[3])
  {
    v1 = v0[4];
    v2 = objc_opt_self();
    v0[22] = v2;
    v3 = sub_24882AB98();
    v4 = [v2 predicateForObjectWithUUID_];
    v0[23] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA020, &qword_24882CD10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA028, &qword_24882CD18);
    *(swift_allocObject() + 16) = xmmword_24882BFD0;
    sub_2487FCC20(0, &qword_27EEAA030, 0x277CCD8D8);
    v5 = [swift_getObjCClassFromMetadata() workoutType];
    sub_2487FCC20(0, &qword_27EEAA038, 0x277CCD8A8);
    v6 = v4;
    sub_24882ADC8();

    sub_24882ADF8();
    v7 = *(v1 + 16);
    v0[24] = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_248809A90;
    v10 = v0[19];

    return MEMORY[0x282120380](v8, v10);
  }

  else
  {
    if (qword_27EEA9958 != -1)
    {
      swift_once();
    }

    v11 = sub_24882AC88();
    __swift_project_value_buffer(v11, qword_27EEAA828);
    v12 = sub_24882AC68();
    v13 = sub_24882B138();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2487F4000, v12, v13, "DiveGraphDataProvider: 0 intervals requested, returning empty summary array", v14, 2u);
      MEMORY[0x24C1DA290](v14, -1, -1);
    }

    v15 = v0[1];
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_248809A90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_24880A3DC;
  }

  else
  {
    v5 = sub_248809BC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_248809BC0()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    v2 = sub_24882B358();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v24 = v0[23];

    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1D9A30](0, v0[26]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v3 = *(v0[26] + 32);
  }

  v0[28] = v3;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[29] = v4;
  if (v4)
  {
    v5 = v4;
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[3];
    [v4 duration];
    v10 = ceil(v9 / v8);
    v11 = sub_24882AC48();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_24882AC58();
    v2 = (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v10 > -9.22337204e18)
      {
        if (v10 < 9.22337204e18)
        {
          v13 = v0[22];
          v14 = v0[18];
          v15 = v0[16];
          v39 = v0[17];
          v40 = v0[15];
          v41 = v0[4];
          LOBYTE(v38) = 1;
          LOBYTE(v37) = 1;
          LOBYTE(v36) = 1;
          LOBYTE(v35) = 1;
          LOBYTE(v34) = 1;
          LOBYTE(v33) = 1;
          LOBYTE(v32) = 1;
          LOBYTE(v31) = 0;
          LOBYTE(v30) = 1;
          LOBYTE(v29) = 1;
          LOBYTE(v28) = 1;
          sub_24882AA98();
          v16 = [v13 predicateForObjectsFromWorkout_];
          v0[30] = v16;
          sub_2487FCC20(0, &qword_27EEA9C70, 0x277CCD830);
          v17 = MEMORY[0x24C1D98C0](*MEMORY[0x277CCCC90]);
          sub_2487FCC20(0, &qword_27EEAA040, 0x277CCD800);
          v18 = v16;
          sub_24882ADC8();

          v19 = v3;
          v20 = [v5 startDate];
          sub_24882AB58();

          (*(v15 + 16))(v39, v14, v40);
          sub_24882AE28();
          v21 = *(v41 + 16);
          v0[31] = v21;
          v22 = v21;
          v23 = swift_task_alloc();
          v0[32] = v23;
          *v23 = v0;
          v23[1] = sub_24880A09C;
          v2 = v22;

          return MEMORY[0x2821204E8](v2);
        }

LABEL_23:
        __break(1u);
        return MEMORY[0x2821204E8](v2);
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v0[23];

LABEL_16:
  (*(v0[20] + 8))(v0[21], v0[19]);

  v25 = v0[1];
  v26 = MEMORY[0x277D84F90];

  return v25(v26);
}

uint64_t sub_24880A09C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  *(*v2 + 264) = v1;

  if (v1)
  {

    v6 = sub_24880A4D4;
  }

  else
  {
    *(v4 + 272) = a1;
    v6 = sub_24880A1EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24880A1EC()
{
  v1 = *(v0 + 272);
  v16 = *(v0 + 264);
  v2 = *(v0 + 224);
  v19 = *(v0 + 240);
  v20 = *(v0 + 184);
  v3 = *(v0 + 144);
  v25 = *(v0 + 152);
  v26 = *(v0 + 168);
  v4 = *(v0 + 128);
  v23 = *(v0 + 120);
  v24 = *(v0 + 160);
  v5 = *(v0 + 88);
  v21 = *(v0 + 80);
  v22 = *(v0 + 96);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v18 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = [*(v0 + 232) startDate];

  sub_24882AB58();
  v10 = v3;
  v11 = v3;
  v12 = v16;
  v17 = sub_24880C388(v1, v7, v11, v8);

  (*(v6 + 8))(v7, v18);
  (*(v5 + 8))(v22, v21);
  (*(v4 + 8))(v10, v23);
  (*(v24 + 8))(v26, v25);

  v14 = *(v0 + 8);
  if (!v12)
  {
    v13 = v17;
  }

  return v14(v13);
}

uint64_t sub_24880A3DC()
{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24880A4D4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24880A61C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v51 = a4;
  v59 = a2;
  v5 = sub_24882AAA8();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24882AC48();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v50 - v11;
  v13 = sub_24882AB78();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v58 = (v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v50 - v20;
  sub_24882AC28();
  swift_beginAccess();
  v22 = *(v14 + 16);
  v55 = a3;
  v22(v19, a3, v13);
  sub_24882AC08();
  v50[0] = *(v14 + 8);
  v50[1] = v14 + 8;
  (v50[0])(v19, v13);
  (*(v56 + 8))(v9, v57);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v58 = v22;
    sub_24880C924(v12, &qword_27EEAA050, &qword_24882CD28);
    if (qword_27EEA9958 != -1)
    {
      swift_once();
    }

    v23 = sub_24882AC88();
    __swift_project_value_buffer(v23, qword_27EEAA828);
    v24 = v52;
    v25 = v53;
    v26 = v54;
    (*(v53 + 16))(v52, v59, v54);
    v27 = sub_24882AC68();
    v28 = sub_24882B148();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v29 = 136315394;
      LODWORD(v57) = v28;
      v30 = v55;
      swift_beginAccess();
      v31 = v13;
      v58(v19, v30, v13);
      sub_24880C9F4(&qword_27EEAA070, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v32 = sub_24882B498();
      v34 = v33;
      (v50[0])(v19, v31);
      v35 = sub_2487F852C(v32, v34, &v60);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      sub_24880C9F4(&qword_27EEAA078, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v36 = v54;
      v37 = sub_24882B498();
      v39 = v38;
      (*(v25 + 8))(v24, v36);
      v40 = sub_2487F852C(v37, v39, &v60);

      *(v29 + 14) = v40;
      _os_log_impl(&dword_2487F4000, v27, v57, "DepthGraphDataProvider: Failed to create endDate from startDate=%s using components=%s", v29, 0x16u);
      v41 = v59;
      swift_arrayDestroy();
      MEMORY[0x24C1DA290](v41, -1, -1);
      MEMORY[0x24C1DA290](v29, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    sub_24880C8D0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v59 = *(v14 + 32);
    (v59)(v21, v12, v13);
    v22(v58, v21, v13);
    v42 = v51;
    v43 = *v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v43;
    v45 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_248828D60(0, v43[2] + 1, 1, v43);
      *v42 = v43;
    }

    v47 = v43[2];
    v46 = v43[3];
    if (v47 >= v46 >> 1)
    {
      v43 = sub_248828D60((v46 > 1), v47 + 1, 1, v43);
      *v42 = v43;
    }

    v43[2] = v47 + 1;
    v59(v43 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v47);
    v48 = v55;
    swift_beginAccess();
    return (*(v14 + 40))(v48, v21, v45);
  }
}

uint64_t sub_24880AD20(uint64_t *a1)
{
  v2 = sub_24882AA88();
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - v7;
  v83 = sub_24882AB78();
  v79 = *(v83 - 8);
  v9 = MEMORY[0x28223BE20](v83);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v75 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA068, &unk_24882CD30);
  v17 = MEMORY[0x28223BE20](v73);
  v70 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v61 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v60 = &v56 - v21;
  v22 = a1[4] >> 1;
  v78 = a1[3];
  v23 = v22 - v78;
  if (__OFSUB__(v22, v78))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = *a1;
  v58 = a1[1];
  v72 = a1[2];
  v80 = v24;
  v25 = *(v24 + 16);
  if (v23 >= v25)
  {
    v26 = *(v24 + 16);
  }

  else
  {
    v26 = v22 - v78;
  }

  v84 = MEMORY[0x277D84F90];
  sub_2487FC248(0, v26 & ~(v26 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v27 = v84;
    v62 = v22;
    v71 = v25;
    v59 = v8;
    if (v26)
    {
      v57 = v23;
      v82 = v79 + 16;
      v64 = v77 + 32;
      v65 = (v79 + 32);
      v69 = v78 - v22;
      if (v78 <= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 = v78;
      }

      v68 = (v28 - v78);

      result = swift_unknownObjectRetain();
      v30 = 0;
      v81 = v26;
      v66 = v6;
      v67 = v11;
      v31 = v70;
      while (v25 != v30)
      {
        v32 = v30 + v69;
        v33 = *(v79 + 72);
        v34 = *(v79 + 16);
        v34(v11, v80 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + v33 * v30, v83);
        if (!v32)
        {
          goto LABEL_38;
        }

        if (v68 == v30)
        {
          __break(1u);
          goto LABEL_33;
        }

        v35 = v72 + v33 * (v30 + v78);
        v36 = *(v73 + 48);
        v37 = v83;
        (*v65)(v31, v11, v83);
        v34((v31 + v36), v35, v37);
        v34(v74, v31, v37);
        v38 = v37;
        v39 = v66;
        v34(v75, v31 + v36, v38);
        sub_24882AA58();
        sub_24880C924(v31, &qword_27EEAA068, &unk_24882CD30);
        v84 = v27;
        v41 = *(v27 + 16);
        v40 = *(v27 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_2487FC248((v40 > 1), v41 + 1, 1);
          v27 = v84;
        }

        v30 = (v30 + 1);
        *(v27 + 16) = v41 + 1;
        result = (*(v77 + 32))(v27 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v41, v39, v76);
        v26 = v81;
        v25 = v71;
        v11 = v67;
        if (v81 == v30)
        {
          v69 = v30 + v78;
          v22 = v62;
          if (v71 > v57)
          {
            goto LABEL_20;
          }

          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

    swift_unknownObjectRetain();
    v69 = v78;
    if (v25 <= v23)
    {
LABEL_31:
      swift_unknownObjectRelease();

      return v27;
    }

LABEL_20:
    v82 = v79 + 16;
    v67 = (v77 + 32);
    v68 = (v79 + 32);
    v42 = v69;
    while (v26 < v25)
    {
      v43 = *(v79 + 72);
      v44 = *(v79 + 16);
      v44(v63, v80 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + v43 * v26, v83);
      if (__OFADD__(v26, 1))
      {
        goto LABEL_34;
      }

      if (v22 == v42)
      {
        (*(v79 + 8))(v63, v83);
        goto LABEL_31;
      }

      if (v69 < v78 || v42 >= v22)
      {
        goto LABEL_35;
      }

      v70 = (v26 + 1);
      v81 = v26;
      v45 = v73;
      v46 = v72 + v43 * v42;
      v47 = *(v73 + 48);
      v48 = v61;
      v49 = v83;
      (*v68)(v61, v63, v83);
      v44(&v48[v47], v46, v49);
      v50 = v48;
      v51 = v60;
      sub_24880C984(v50, v60);
      v52 = *(v45 + 48);
      v11 = v74;
      v44(v74, v51, v49);
      v44(v75, v51 + v52, v49);
      v53 = v59;
      sub_24882AA58();
      sub_24880C924(v51, &qword_27EEAA068, &unk_24882CD30);
      v84 = v27;
      v55 = *(v27 + 16);
      v54 = *(v27 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_2487FC248((v54 > 1), v55 + 1, 1);
        v27 = v84;
      }

      *(v27 + 16) = v55 + 1;
      (*(v77 + 32))(v27 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v55, v53, v76);
      v26 = v81 + 1;
      ++v42;
      v25 = v71;
      v22 = v62;
      if (v70 == v71)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  result = (*(v79 + 8))(v11, v83);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_24880B4C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v6 = sub_24882AA88();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24882AB78();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24882AC48();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  MEMORY[0x28223BE20](v15 - 8);
  v68 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA008, &qword_24882CCF8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA010, &qword_24882CD00);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v61 - v21;
  v23 = sub_24882AAA8();
  v71 = *(v23 - 8);
  v72 = v23;
  MEMORY[0x28223BE20](v23);
  v73 = a1;
  v74 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24882AA78();
  *v26.i64 = v25 * 0.5;
  *v27.i64 = *v26.i64 - trunc(*v26.i64);
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v29 = *vbslq_s8(vnegq_f64(v28), v27, v26).i64 * 1000000000.0;
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v64 = v4;
  (*(v12 + 56))(v22, 1, 1, v11);
  v30 = sub_24882AC58();
  (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
  sub_24882AA98();
  sub_24882AC28();
  sub_24882AA68();
  v31 = v68;
  sub_24882AC08();
  v33 = v69;
  v32 = v70;
  v34 = *(v69 + 8);
  v34(v10, v70);
  v35 = v14;
  v36 = v32;
  (*(v12 + 8))(v35, v11);
  LODWORD(v32) = (*(v33 + 48))(v31, 1, v32);
  sub_24880C924(v31, &qword_27EEAA050, &qword_24882CD28);
  if (v32 == 1)
  {
    sub_24880C8D0();
    v37 = swift_allocError();
    swift_willThrow();
    result = (*(v71 + 8))(v74, v72);
    *v66 = v37;
    return result;
  }

  sub_24882AA68();
  v39 = sub_24882AB28();
  v34(v10, v36);
  v40 = [v65 statisticsForDate_];

  if (v40)
  {
    sub_248808F84(v67);

    return (*(v71 + 8))(v74, v72);
  }

  if (qword_27EEA9958 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v41 = sub_24882AC88();
  __swift_project_value_buffer(v41, qword_27EEAA828);
  v43 = v61;
  v42 = v62;
  v44 = *(v62 + 16);
  v45 = v73;
  v46 = v63;
  v44(v61, v73, v63);
  v47 = sub_24882AC68();
  v48 = sub_24882B148();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v70 = v44;
    v51 = v50;
    v75 = v50;
    *v49 = 136315138;
    sub_24880C9F4(&qword_27EEAA060, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v52 = sub_24882B498();
    v53 = v43;
    v55 = v54;
    (*(v42 + 8))(v53, v46);
    v56 = sub_2487F852C(v52, v55, &v75);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_2487F4000, v47, v48, "DepthGraphDataProvider: Filling interval gap for interval=%s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v57 = v51;
    v44 = v70;
    MEMORY[0x24C1DA290](v57, -1, -1);
    v58 = v49;
    v45 = v73;
    MEMORY[0x24C1DA290](v58, -1, -1);
  }

  else
  {

    (*(v42 + 8))(v43, v46);
  }

  (*(v71 + 8))(v74, v72);
  v59 = v67;
  v44(v67, v45, v46);
  result = type metadata accessor for DepthIntervalSummary(0);
  v60 = v59 + *(result + 20);
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 16) = 1;
  return result;
}

uint64_t sub_24880BCEC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24880BD24()
{
  result = qword_27EEA9F60;
  if (!qword_27EEA9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F60);
  }

  return result;
}

unint64_t sub_24880BD78()
{
  result = qword_27EEA9F68;
  if (!qword_27EEA9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F68);
  }

  return result;
}

unint64_t sub_24880BDCC()
{
  result = qword_27EEA9F78;
  if (!qword_27EEA9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F78);
  }

  return result;
}

uint64_t type metadata accessor for DepthIntervalSummary(uint64_t a1)
{
  result = qword_27EEA9FB8;
  if (!qword_27EEA9FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24880BE6C()
{
  result = qword_27EEA9F88;
  if (!qword_27EEA9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F88);
  }

  return result;
}

unint64_t sub_24880BEC0()
{
  result = qword_27EEA9F98;
  if (!qword_27EEA9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F98);
  }

  return result;
}

unint64_t sub_24880BF14()
{
  result = qword_27EEA9FB0;
  if (!qword_27EEA9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FB0);
  }

  return result;
}

uint64_t sub_24880BF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthIntervalSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24880BFCC(uint64_t a1)
{
  v2 = type metadata accessor for DepthIntervalSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24880C060(uint64_t a1)
{
  sub_24882AA88();
  if (v1 <= 0x3F)
  {
    sub_24880C0E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24880C0E4()
{
  if (!qword_27EEA9FC8)
  {
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEA9FC8);
    }
  }
}

unint64_t sub_24880C17C()
{
  result = qword_27EEA9FD0;
  if (!qword_27EEA9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FD0);
  }

  return result;
}

unint64_t sub_24880C1D4()
{
  result = qword_27EEA9FD8;
  if (!qword_27EEA9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FD8);
  }

  return result;
}

unint64_t sub_24880C22C()
{
  result = qword_27EEA9FE0;
  if (!qword_27EEA9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FE0);
  }

  return result;
}

unint64_t sub_24880C284()
{
  result = qword_27EEA9FE8;
  if (!qword_27EEA9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FE8);
  }

  return result;
}

unint64_t sub_24880C2DC()
{
  result = qword_27EEA9FF0;
  if (!qword_27EEA9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FF0);
  }

  return result;
}

unint64_t sub_24880C334()
{
  result = qword_27EEA9FF8;
  if (!qword_27EEA9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9FF8);
  }

  return result;
}

uint64_t sub_24880C388(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v30 = a2;
  v36 = a3;
  v34 = a1;
  v33 = sub_24882AA88();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DepthIntervalSummary(0);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24882AB78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v13(v12, v30, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA048, &qword_24882CD20);
  v30 = v10;
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24882BFD0;
  v13((v15 + v14), v12, v9);
  v41 = v15;
  if (a4)
  {
    v16 = v31;
    while (1)
    {
      sub_24880A61C(&v39, v36, v12, &v41);
      if (v16)
      {
        break;
      }

      if (!--a4)
      {
        v29 = v12;
        v15 = v41;
        goto LABEL_7;
      }
    }

    (*(v30 + 8))(v12, v9);
    return v9;
  }

  v29 = v12;
  v16 = v31;
LABEL_7:
  v17 = *(v15 + 16);
  v40[0] = v15;
  v40[1] = v15;
  v40[2] = v15 + v14;
  v40[3] = v17 != 0;
  v40[4] = (2 * v17) | 1;

  v18 = sub_24880AD20(v40);
  v19 = v16;

  v20 = *(v18 + 16);
  if (!v20)
  {

    (*(v30 + 8))(v29, v9);
    return MEMORY[0x277D84F90];
  }

  v27 = v15;
  v28 = v9;
  v39 = MEMORY[0x277D84F90];
  result = sub_2487FC28C(0, v20, 0);
  v22 = 0;
  v9 = v39;
  v36 = (v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)));
  v31 = v35 + 16;
  v23 = (v35 + 8);
  while (v22 < *(v18 + 16))
  {
    v24 = v33;
    (*(v35 + 16))(v6, &v36[*(v35 + 72) * v22], v33);
    sub_24880B4C4(v6, v34, &v38, v37);
    if (v19)
    {
      (*v23)(v6, v24);

      (*(v30 + 8))(v29, v28);
      return v9;
    }

    v19 = 0;
    (*v23)(v6, v24);
    v39 = v9;
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2487FC28C((v25 > 1), v26 + 1, 1);
      v9 = v39;
    }

    ++v22;
    *(v9 + 16) = v26 + 1;
    result = sub_24880C86C(v37, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26);
    if (v20 == v22)
    {

      (*(v30 + 8))(v29, v28);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24880C86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthIntervalSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24880C8D0()
{
  result = qword_27EEAA058;
  if (!qword_27EEAA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA058);
  }

  return result;
}

uint64_t sub_24880C924(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24880C984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA068, &unk_24882CD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24880C9F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24880CA50()
{
  result = qword_27EEAA080;
  if (!qword_27EEAA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA080);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryLevel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BatteryLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_24880CB74(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24880CB8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

DepthCore::TemperatureValue __swiftcall TemperatureValue.init(value:inUnit:)(DepthCore::TemperatureValue value, DepthCore::WaterTemperatureUnit inUnit)
{
  if (*inUnit)
  {
    value.canonicalValue = (value.canonicalValue + -32.0) * 0.555555556;
  }

  *v2 = value.canonicalValue;
  return value;
}

Swift::Double __swiftcall TemperatureValue.value(forUnit:)(DepthCore::WaterTemperatureUnit forUnit)
{
  result = *v1;
  if (*forUnit == 1)
  {
    return result / 0.555555556 + 32.0;
  }

  return result;
}

id WaterTemperatureUnit.unitTemperature.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_fahrenheit;
  if (!v1)
  {
    v3 = &selRef_celsius;
  }

  v4 = [v2 *v3];

  return v4;
}

void Temperature.temperature.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_24880CCC8()
{
  if (*v0)
  {
    return 0x74617265706D6574;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24880CD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24880CDEC(uint64_t a1)
{
  v2 = sub_24880D264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880CE28(uint64_t a1)
{
  v2 = sub_24880D264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24880CE64(uint64_t a1)
{
  v2 = sub_24880D2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880CEA0(uint64_t a1)
{
  v2 = sub_24880D2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24880CEDC(uint64_t a1)
{
  v2 = sub_24880D30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880CF18(uint64_t a1)
{
  v2 = sub_24880D30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Temperature.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA088, &qword_24882CE30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA090, &qword_24882CE38);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA098, &qword_24882CE40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880D264();
  sub_24882B568();
  if (v13)
  {
    v23 = 0;
    sub_24880D30C();
    sub_24882B438();
    (*(v18 + 8))(v7, v19);
  }

  else
  {
    v25 = 1;
    sub_24880D2B8();
    v15 = v20;
    sub_24882B438();
    v24 = v12;
    sub_2487FF4B8();
    v16 = v22;
    sub_24882B488();
    (*(v21 + 8))(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24880D264()
{
  result = qword_27EEAA0A0;
  if (!qword_27EEAA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0A0);
  }

  return result;
}

unint64_t sub_24880D2B8()
{
  result = qword_27EEAA0A8;
  if (!qword_27EEAA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0A8);
  }

  return result;
}

unint64_t sub_24880D30C()
{
  result = qword_27EEAA0B0;
  if (!qword_27EEAA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0B0);
  }

  return result;
}

uint64_t Temperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0B8, &qword_24882CE48);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0C0, &qword_24882CE50);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0C8, &qword_24882CE58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-v12];
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24880D264();
  v15 = v35;
  sub_24882B558();
  if (!v15)
  {
    v35 = v11;
    v17 = v33;
    v16 = v34;
    v18 = sub_24882B428();
    v19 = (2 * *(v18 + 16)) | 1;
    v37 = v18;
    v38 = v18 + 32;
    v39 = 0;
    v40 = v19;
    v20 = sub_2487FF248();
    v21 = v13;
    if (v20 == 2 || v39 != v40 >> 1)
    {
      v25 = sub_24882B2E8();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60);
      *v27 = &type metadata for Temperature;
      sub_24882B3C8();
      sub_24882B2D8();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v20;
      if (v20)
      {
        LOBYTE(v41) = 1;
        sub_24880D2B8();
        sub_24882B3B8();
        v22 = v16;
        sub_2487FF5B4();
        v23 = v31;
        sub_24882B418();
        (*(v32 + 8))(v6, v23);
        (*(v35 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v24 = v41;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_24880D30C();
        sub_24882B3B8();
        v22 = v16;
        (*(v17 + 8))(v9, v7);
        (*(v35 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v24 = 0;
      }

      *v22 = v24;
      *(v22 + 8) = (v30 & 1) == 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t static Temperature.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 != *a2 && *a1 < *a2;
}

BOOL static Temperature.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_24880D8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  return *a1 < *a2;
}

uint64_t sub_24880D900(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (*a2 == *a1)
  {
    return 1;
  }

  return *a2 >= *a1;
}

uint64_t sub_24880D94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (*a1 == *a2)
  {
    return 1;
  }

  return *a1 >= *a2;
}

uint64_t sub_24880D998(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  if (*a2 == *a1)
  {
    return 0;
  }

  return *a2 < *a1;
}

BOOL sub_24880D9DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WaterTemperatureUnit.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t sub_24880DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6163696E6F6E6163 && a2 == 0xEE0065756C61566CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24882B4B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24880DB58(uint64_t a1)
{
  v2 = sub_24880DD08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880DB94(uint64_t a1)
{
  v2 = sub_24880DD08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0D0, &qword_24882CE68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880DD08();
  sub_24882B568();
  sub_24882B478();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24880DD08()
{
  result = qword_27EEAA0D8;
  if (!qword_27EEAA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0D8);
  }

  return result;
}

uint64_t TemperatureValue.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0E0, &qword_24882CE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880DD08();
  sub_24882B558();
  if (!v2)
  {
    sub_24882B408();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24880DEBC()
{
  result = qword_27EEAA0E8;
  if (!qword_27EEAA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0E8);
  }

  return result;
}

unint64_t sub_24880DF14()
{
  result = qword_27EEAA0F0;
  if (!qword_27EEAA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0F0);
  }

  return result;
}

uint64_t sub_24880DF80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA0D0, &qword_24882CE68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880DD08();
  sub_24882B568();
  sub_24882B478();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24880E0BC()
{
  result = qword_27EEAA0F8;
  if (!qword_27EEAA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA0F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Temperature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Temperature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24880E1D8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24880E1F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_24880E288()
{
  result = qword_27EEAA100;
  if (!qword_27EEAA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA100);
  }

  return result;
}

unint64_t sub_24880E2E0()
{
  result = qword_27EEAA108;
  if (!qword_27EEAA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA108);
  }

  return result;
}

unint64_t sub_24880E338()
{
  result = qword_27EEAA110;
  if (!qword_27EEAA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA110);
  }

  return result;
}

unint64_t sub_24880E390()
{
  result = qword_27EEAA118;
  if (!qword_27EEAA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA118);
  }

  return result;
}

unint64_t sub_24880E3E8()
{
  result = qword_27EEAA120;
  if (!qword_27EEAA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA120);
  }

  return result;
}

unint64_t sub_24880E440()
{
  result = qword_27EEAA128;
  if (!qword_27EEAA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA128);
  }

  return result;
}

unint64_t sub_24880E498()
{
  result = qword_27EEAA130;
  if (!qword_27EEAA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA130);
  }

  return result;
}

unint64_t sub_24880E4F0()
{
  result = qword_27EEAA138;
  if (!qword_27EEAA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA138);
  }

  return result;
}

unint64_t sub_24880E548()
{
  result = qword_27EEAA140;
  if (!qword_27EEAA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA140);
  }

  return result;
}

unint64_t sub_24880E5A0()
{
  result = qword_27EEAA148;
  if (!qword_27EEAA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA148);
  }

  return result;
}

unint64_t sub_24880E5F8()
{
  result = qword_27EEAA150;
  if (!qword_27EEAA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA150);
  }

  return result;
}

void ShallowSubmersionData.maxDepth.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ShallowSubmersionData.maxDepth.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

__n128 ShallowSubmersionData.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ShallowSubmersionData.temperatureRange.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

__n128 ShallowSubmersionData.init(maxDepth:temperatureRange:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = a2[1].n128_u8[0];
  a3->n128_u64[0] = *a1;
  a3->n128_u8[8] = v3;
  result = *a2;
  a3[1] = *a2;
  a3[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_24880E70C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x687470654478616DLL;
  }
}

uint64_t sub_24880E74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x687470654478616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248830B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24880E830(uint64_t a1)
{
  v2 = sub_24880EA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880E86C(uint64_t a1)
{
  v2 = sub_24880EA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShallowSubmersionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA158, &qword_24882D510);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880EA60();
  sub_24882B568();
  v15 = v7;
  LOBYTE(v16) = v8;
  v19 = 0;
  sub_24880EAB4();
  v10 = v14;
  sub_24882B488();
  if (!v10)
  {
    v15 = v13;
    v16 = v12;
    v17 = v18;
    v19 = 1;
    sub_24880EB08();
    sub_24882B488();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24880EA60()
{
  result = qword_27EEAA160;
  if (!qword_27EEAA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA160);
  }

  return result;
}

unint64_t sub_24880EAB4()
{
  result = qword_27EEAA168;
  if (!qword_27EEAA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA168);
  }

  return result;
}

unint64_t sub_24880EB08()
{
  result = qword_27EEAA170;
  if (!qword_27EEAA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA170);
  }

  return result;
}

uint64_t ShallowSubmersionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA178, &qword_24882D518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880EA60();
  sub_24882B558();
  if (!v2)
  {
    v16 = 0;
    sub_24880ED44();
    sub_24882B418();
    v9 = v14;
    v10 = BYTE8(v14);
    v16 = 1;
    sub_24880ED98();
    sub_24882B418();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    v12 = v14;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24880ED44()
{
  result = qword_27EEAA180;
  if (!qword_27EEAA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA180);
  }

  return result;
}

unint64_t sub_24880ED98()
{
  result = qword_27EEAA188;
  if (!qword_27EEAA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA188);
  }

  return result;
}

uint64_t DescentSummary.id.setter(uint64_t a1)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DescentSummary.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DescentSummary(0) + 20);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DescentSummary(uint64_t a1)
{
  result = qword_27EEAA1E0;
  if (!qword_27EEAA1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DescentSummary.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DescentSummary(0) + 20);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DescentSummary.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DescentSummary(0) + 24);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DescentSummary.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DescentSummary(0) + 24);
  v4 = sub_24882AB78();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DescentSummary.divePreviousUnderwaterDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DescentSummary(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DescentSummary.maxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for DescentSummary(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t DescentSummary.maxDepth.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DescentSummary(0);
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

__n128 DescentSummary.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DescentSummary(0) + 36));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t DescentSummary.temperatureRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for DescentSummary(0);
  v6 = v1 + *(result + 36);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t DescentSummary.underwaterTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v4 = type metadata accessor for DescentSummary(0);
  v5 = *(v4 + 20);
  v6 = sub_24882AB78();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, v1 + v5, v6);
  v7(a1 + v3, v1 + *(v4 + 24), v6);
  type metadata accessor for UnderwaterTime(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DescentSummary.diveUnderwaterTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DescentSummary(0);
  v4 = (v1 + v3[7]);
  v12 = *v4;
  v5 = *(v4 + 8);
  v6 = a1 + *(type metadata accessor for DiveUnderwaterTime(0) + 20);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v8 = v3[5];
  v9 = sub_24882AB78();
  v10 = *(*(v9 - 8) + 16);
  v10(v6, v1 + v8, v9);
  v10(v6 + v7, v1 + v3[6], v9);
  type metadata accessor for UnderwaterTime(0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v12;
  *(a1 + 8) = v5;
  return result;
}

uint64_t DescentSummary.init(id:startDate:endDate:divePreviousUnderwaterDuration:maxDepth:temperatureRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v23 = *a6;
  v22 = *(a6 + 8);
  v25 = a7[1];
  v26 = *a7;
  v24 = *(a7 + 16);
  v13 = type metadata accessor for DescentSummary(0);
  v14 = a8 + v13[7];
  v15 = sub_24882ABE8();
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  v16 = v13[5];
  v17 = sub_24882AB78();
  v18 = *(*(v17 - 8) + 32);
  v18(a8 + v16, a2, v17);
  result = (v18)(a8 + v13[6], a3, v17);
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  v20 = a8 + v13[8];
  *v20 = v23;
  *(v20 + 8) = v22;
  v21 = a8 + v13[9];
  *v21 = v26;
  *(v21 + 8) = v25;
  *(v21 + 16) = v24;
  return result;
}

unint64_t sub_24880F728()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD00000000000001ELL;
  v4 = 0x687470654478616DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7461447472617473;
  if (v1 != 1)
  {
    v5 = 0x65746144646E65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24880F7E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_248811A40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24880F81C(uint64_t a1)
{
  v2 = sub_24880FBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24880F858(uint64_t a1)
{
  v2 = sub_24880FBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DescentSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA198, &qword_24882D528);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880FBAC();
  sub_24882B568();
  LOBYTE(v15) = 0;
  sub_24882ABE8();
  sub_2488115E8(&qword_27EEAA1A8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_24882B488();
  if (!v2)
  {
    v9 = type metadata accessor for DescentSummary(0);
    LOBYTE(v15) = 1;
    sub_24882AB78();
    sub_2488115E8(&qword_27EEAA1B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24882B488();
    LOBYTE(v15) = 2;
    sub_24882B488();
    LOBYTE(v15) = 3;
    sub_24882B448();
    v10 = (v3 + *(v9 + 32));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *&v15 = v11;
    BYTE8(v15) = v10;
    v17 = 4;
    sub_24880EAB4();
    sub_24882B488();
    v12 = (v3 + *(v9 + 36));
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 5;
    sub_24880EB08();
    sub_24882B488();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24880FBAC()
{
  result = qword_27EEAA1A0;
  if (!qword_27EEAA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA1A0);
  }

  return result;
}

uint64_t DescentSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v38 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v36 - v7;
  v9 = sub_24882ABE8();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA1B8, &unk_24882D530);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for DescentSummary(0);
  MEMORY[0x28223BE20](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880FBAC();
  v45 = v13;
  v17 = v46;
  sub_24882B558();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v46 = a1;
  v18 = v16;
  LOBYTE(v47) = 0;
  sub_2488115E8(&qword_27EEAA1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v19 = v42;
  sub_24882B418();
  v20 = *(v41 + 32);
  v42 = v9;
  v20(v18, v19, v9);
  LOBYTE(v47) = 1;
  sub_2488115E8(&qword_27EEAA1C8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v21 = v39;
  sub_24882B418();
  v22 = v8;
  v23 = v18;
  v24 = v21;
  v25 = *(v40 + 32);
  v25(v23 + v14[5], v22, v21);
  LOBYTE(v47) = 2;
  v26 = v38;
  v36[1] = 0;
  sub_24882B418();
  v25(v23 + v14[6], v26, v24);
  LOBYTE(v47) = 3;
  v27 = sub_24882B3D8();
  v28 = v23 + v14[7];
  *v28 = v27;
  *(v28 + 8) = v29 & 1;
  v49 = 4;
  sub_24880ED44();
  sub_24882B418();
  v30 = v43;
  v31 = BYTE8(v47);
  v32 = v23 + v14[8];
  *v32 = v47;
  *(v32 + 8) = v31;
  v49 = 5;
  sub_24880ED98();
  sub_24882B418();
  (*(v30 + 8))(v45, v44);
  v33 = v48;
  v34 = v23 + v14[9];
  *v34 = v47;
  *(v34 + 16) = v33;
  sub_248810274(v23, v37);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return sub_2488114E8(v23, type metadata accessor for DescentSummary);
}

uint64_t sub_248810274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescentSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DescentSummary.dateInterval.getter()
{
  v1 = sub_24882AB78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = type metadata accessor for DescentSummary(0);
  v9 = *(v2 + 16);
  v9(v7, v0 + *(v8 + 20), v1);
  v9(v5, v0 + *(v8 + 24), v1);
  return sub_24882AA58();
}

double DescentSummary.underwaterDuration.getter()
{
  v1 = sub_24882AB78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v9 = type metadata accessor for DescentSummary(0);
  v10 = *(v2 + 16);
  v10(v7, v0 + *(v9 + 20), v1);
  v10(&v7[v8], v0 + *(v9 + 24), v1);
  swift_storeEnumTagMultiPayload();
  sub_24882AB68();
  v11 = UnderwaterTime.timeInterval(untilDate:)();
  (*(v2 + 8))(v4, v1);
  sub_2488114E8(v7, type metadata accessor for UnderwaterTime);
  return v11;
}

__n128 DescentSummary.with(startDate:endDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24882ABE8();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = type metadata accessor for DescentSummary(0);
  v9 = v8[5];
  v10 = sub_24882AB78();
  v11 = *(*(v10 - 8) + 16);
  v11(a3 + v9, a1, v10);
  v11(a3 + v8[6], a2, v10);
  v12 = v8[7];
  v13 = *(v3 + v12);
  v14 = *(v3 + v12 + 8);
  v15 = (v3 + v8[8]);
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = (v3 + v8[9]);
  v18 = v17[1].n128_u8[0];
  v19 = a3 + v12;
  *v19 = v13;
  *(v19 + 8) = v14;
  v20 = a3 + v8[8];
  *v20 = v16;
  *(v20 + 8) = v15;
  v21 = (a3 + v8[9]);
  result = *v17;
  *v21 = *v17;
  v21[1].n128_u8[0] = v18;
  return result;
}

uint64_t DescentSummary.with(temperatureRange:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = sub_24882ABE8();
  (*(*(v7 - 8) + 16))(a2, v2, v7);
  v8 = type metadata accessor for DescentSummary(0);
  v9 = v8[5];
  v10 = sub_24882AB78();
  v11 = *(*(v10 - 8) + 16);
  v11(a2 + v9, v2 + v9, v10);
  result = (v11)(a2 + v8[6], v2 + v8[6], v10);
  v13 = v8[7];
  v14 = *(v2 + v13);
  v15 = *(v2 + v13 + 8);
  v16 = (v2 + v8[8]);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v18 = a2 + v13;
  *v18 = v14;
  *(v18 + 8) = v15;
  v19 = a2 + v8[8];
  *v19 = v17;
  *(v19 + 8) = v16;
  v20 = a2 + v8[9];
  *v20 = v4;
  *(v20 + 8) = v5;
  *(v20 + 16) = v6;
  return result;
}

uint64_t _s9DepthCore14DescentSummaryV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_248810954(uint64_t a1)
{
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = *(v4 + 16);
  v8(&v11 - v9, v1 + *(a1 + 20), v3);
  v8(v7, v1 + *(a1 + 24), v3);
  return sub_24882AA58();
}

uint64_t sub_248810A78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 32));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_248810A94@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

double sub_248810AB0(uint64_t a1)
{
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v11 = *(v4 + 16);
  v11(v9, v1 + *(a1 + 20), v3);
  v11(&v9[v10], v1 + *(a1 + 24), v3);
  swift_storeEnumTagMultiPayload();
  sub_24882AB68();
  v12 = UnderwaterTime.timeInterval(untilDate:)();
  (*(v4 + 8))(v6, v3);
  sub_2488114E8(v9, type metadata accessor for UnderwaterTime);
  return v12;
}

__n128 sub_248810D08@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v7 = type metadata accessor for DescentSummary(0);
  sub_24882AB68();
  sub_24882AB18();
  sub_24882ABD8();
  v8 = a3 + v7[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a3 + v7[8];
  *v9 = a1;
  *(v9 + 8) = a2;
  v10 = (a3 + v7[9]);
  result = a4;
  *v10 = a4;
  v10[1].n128_u8[0] = 1;
  return result;
}

uint64_t static DescentSummary.previewSummaryOldDate.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA008, &qword_24882CCF8);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v44 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA010, &qword_24882CD00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v62 = sub_24882AAA8();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24882AC48();
  v59 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA050, &qword_24882CD28);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v55 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = sub_24882AB78();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v45 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  MEMORY[0x28223BE20](v21);
  v61 = &v44 - v24;
  sub_24882AC28();
  v53 = *(v9 + 56);
  v54 = v9 + 56;
  v53(v5, 1, 1, v8);
  v25 = sub_24882AC58();
  v26 = *(v25 - 8);
  v51 = *(v26 + 56);
  v52 = v25;
  v50 = v26 + 56;
  v51(v63, 1, 1);
  v58 = v5;
  sub_24882AA98();
  sub_24882AB68();
  sub_24882AC08();
  (*(v18 + 8))(v23, v17);
  v27 = *(v64 + 8);
  v56 = v7;
  v64 += 8;
  v49 = v27;
  v27(v7, v62);
  v28 = *(v9 + 8);
  v29 = v59;
  v57 = v9 + 8;
  v48 = v28;
  (v28)(v11);
  v30 = *(v18 + 48);
  v60 = v17;
  v47 = v30;
  result = v30(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = *(v18 + 32);
    v33 = v16;
    v34 = v60;
    v32(v61, v33, v60);
    sub_24882AC28();
    v53(v58, 1, 1, v29);
    (v51)(v63, 1, 1, v52);
    v35 = v56;
    sub_24882AA98();
    v36 = v55;
    sub_24882AC08();
    v49(v35, v62);
    v48(v11, v29);
    result = v47(v36, 1, v34);
    if (result != 1)
    {
      v37 = v45;
      v38 = v60;
      v32(v45, v36, v60);
      v39 = v46;
      sub_24882ABD8();
      v40 = type metadata accessor for DescentSummary(0);
      v41 = v39 + v40[7];
      v32((v39 + v40[5]), v61, v38);
      result = (v32)(v39 + v40[6], v37, v38);
      *v41 = 0;
      *(v41 + 8) = 1;
      v42 = v39 + v40[8];
      *v42 = 0x4024000000000000;
      *(v42 + 8) = 1;
      v43 = v39 + v40[9];
      *v43 = xmmword_24882D4F0;
      *(v43 + 16) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double static ShallowSubmersionData.previewModel.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE6666666666666;
  *(a1 + 8) = 0;
  result = 23.0;
  *(a1 + 16) = xmmword_24882D500;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2488114E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248811590(uint64_t a1)
{
  result = sub_2488115E8(&qword_27EEAA1D8, type metadata accessor for DescentSummary, &protocol conformance descriptor for DescentSummary);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2488115E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248811644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24881168C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_24881170C(uint64_t a1)
{
  sub_24882ABE8();
  if (v1 <= 0x3F)
  {
    sub_24882AB78();
    if (v2 <= 0x3F)
    {
      sub_2488117C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2488117C0()
{
  if (!qword_27EEAA1F0)
  {
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA1F0);
    }
  }
}

unint64_t sub_248811834()
{
  result = qword_27EEAA1F8;
  if (!qword_27EEAA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA1F8);
  }

  return result;
}

unint64_t sub_24881188C()
{
  result = qword_27EEAA200;
  if (!qword_27EEAA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA200);
  }

  return result;
}

unint64_t sub_2488118E4()
{
  result = qword_27EEAA208;
  if (!qword_27EEAA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA208);
  }

  return result;
}

unint64_t sub_24881193C()
{
  result = qword_27EEAA210;
  if (!qword_27EEAA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA210);
  }

  return result;
}

unint64_t sub_248811994()
{
  result = qword_27EEAA218;
  if (!qword_27EEAA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA218);
  }

  return result;
}

unint64_t sub_2488119EC()
{
  result = qword_27EEAA220;
  if (!qword_27EEAA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA220);
  }

  return result;
}

uint64_t sub_248811A40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000248830B30 == a2 || (sub_24882B4B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687470654478616DLL && a2 == 0xE800000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248830B10 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void static DeviceType.deviceType(forDeviceIdentifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2488129D8();
  if (*(v6 + 16) && (v7 = sub_2487F8B2C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
  }

  else
  {

    if (qword_27EEA9950 != -1)
    {
      swift_once();
    }

    v10 = sub_24882AC88();
    __swift_project_value_buffer(v10, qword_27EEAA810);

    v11 = sub_24882AC68();
    v12 = sub_24882B138();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2487F852C(a1, a2, &v15);
      _os_log_impl(&dword_2487F4000, v11, v12, "DeviceType: Device type cache miss for: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1DA290](v14, -1, -1);
      MEMORY[0x24C1DA290](v13, -1, -1);
    }

    v9 = 2;
  }

  *a3 = v9;
}

double static DepthLimit.depthLimit(forDeviceType:)@<D0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v5 = a2;
        swift_once();
        a2 = v5;
      }

      v2 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v7 = a2;
        swift_once();
        a2 = v7;
      }

      v2 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &xmmword_27EEB0FC0;
  }

  result = *v2;
  v4 = *(v2 + 1);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

double DepthLimit.feet.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double DepthLimit.meters.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_248811F00()
{
  result = 39.624;
  xmmword_27EEB0FC0 = xmmword_24882D8F0;
  return result;
}

double sub_248811F14()
{
  result = 6.096;
  xmmword_27EEB0FD0 = xmmword_24882D900;
  return result;
}

double sub_248811F28()
{
  result = 10972.8;
  xmmword_27EEB0FE0 = xmmword_24882D910;
  return result;
}

DepthCore::DepthValue __swiftcall DepthLimit.depthValue(inUnit:)(DepthCore::DepthUnit inUnit)
{
  v3 = 8;
  if (!*inUnit)
  {
    v3 = 0;
  }

  *&result.canonicalValue = *(v2 + v3);
  v1->canonicalValue = result.canonicalValue;
  return result;
}

double static DepthLimit.depthLimit(forDeviceIdentifier:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  static DeviceType.deviceType(forDeviceIdentifier:)(a1, a2, &v7);
  if (v7)
  {
    if (v7 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        swift_once();
      }

      v4 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        swift_once();
      }

      v4 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_27EEB0FC0;
  }

  result = *v4;
  v6 = *(v4 + 1);
  *a3 = *v4;
  a3[1] = v6;
  return result;
}

DepthCore::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24882B3A8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceType.rawValue.getter()
{
  v1 = 0x6172746C556E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6172746C75;
  }
}

uint64_t sub_248812104(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6172746C556E6F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6172746C75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6172746C556E6F6ELL;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6172746C75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24882B4B8();
  }

  return v11 & 1;
}

uint64_t sub_248812204()
{
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

uint64_t sub_2488122A4(uint64_t a1)
{
  sub_24882AF88();
}

uint64_t sub_248812330(uint64_t a1)
{
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

void sub_2488123D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6172746C556E6F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6172746C75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double DepthSettings.significantDepth.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double DepthSettings.significantDepth.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double DepthSettings.deepDiveTimeThreshold.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24882AED8();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_24882B248();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    sub_2487F8F38();
    if (swift_dynamicCast())
    {
      if (qword_27EEA9950 != -1)
      {
        swift_once();
      }

      v3 = sub_24882AC88();
      __swift_project_value_buffer(v3, qword_27EEAA810);
      v4 = v16;
      v5 = sub_24882AC68();
      v6 = sub_24882B148();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v4;
        *v8 = v4;
        v9 = v4;
        _os_log_impl(&dword_2487F4000, v5, v6, "Using custom value for deepDiveTimeThreshold=%@", v7, 0xCu);
        sub_24880C924(v8, &qword_27EEAA230, &qword_24882D968);
        MEMORY[0x24C1DA290](v8, -1, -1);
        MEMORY[0x24C1DA290](v7, -1, -1);
      }

      [v4 doubleValue];
      v11 = v10;
      goto LABEL_17;
    }
  }

  else
  {
    sub_24880C924(v19, &qword_27EEAA228, &qword_24882D960);
  }

  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v12 = sub_24882AC88();
  __swift_project_value_buffer(v12, qword_27EEAA810);
  v4 = sub_24882AC68();
  v13 = sub_24882B148();
  if (os_log_type_enabled(v4, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2487F4000, v4, v13, "Returning default value", v14, 2u);
    MEMORY[0x24C1DA290](v14, -1, -1);
  }

  v11 = 180.0;
LABEL_17:

  return v11;
}

double DepthSettings.maxDepthMarkerMiniumSeparation.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double DepthSettings.maxDepthMarkerMiniumSeparation.setter(double *a1)
{
  result = *a1;
  *(v1 + 48) = *a1;
  return result;
}

void __swiftcall DepthSettings.init()(DepthCore::DepthSettings *__return_ptr retstr)
{
  __asm { FMOV            V1.2D, #1.0 }

  *&retstr->significantDepth.canonicalValue = xmmword_24882D920;
  *&retstr->sessionStopDelay = _Q1;
  *&retstr->sessionRecoveryTimeout = xmmword_24882D930;
  *&retstr->maxDepthMarkerMiniumSeparation.canonicalValue = xmmword_24882D940;
  *&retstr->shortDiveCompletionTimeout = xmmword_24882D950;
}

void sub_248812964(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_2488129D8()
{
  v0 = sub_2487F9280(&unk_285B43730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA240, &qword_24882DAB8);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(0, 0x312C376863746157, 0xE900000000000032, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x312C376863746157, 0xE900000000000037, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x312C376863746157, 0xE900000000000038, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x312C376863746157, 0xE900000000000039, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_2487FD8DC(1, 0x322C376863746157, 0xE900000000000030, v5);
  return v0;
}

unint64_t sub_248812B34()
{
  result = qword_27EEAA238;
  if (!qword_27EEAA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA238);
  }

  return result;
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

uint64_t sub_248812BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248812BE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

uint64_t TemperatureSettings.provider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_248812C50(v2, v3, v4, v5, v6);
}

uint64_t sub_248812C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0x3Fu)
  {
  }

  return result;
}

__n128 TemperatureSettings.provider.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_248812CB0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_248812CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0x3Fu)
  {
  }

  return result;
}

double TemperatureSettings.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x80;
  return result;
}

double static TemperatureProvider.fullRangeDemo.getter@<D0>(uint64_t a1@<X8>)
{
  result = 40.5555556;
  *a1 = xmmword_24882DAC0;
  *(a1 + 16) = xmmword_24882DAD0;
  *(a1 + 32) = 64;
  return result;
}

double static TemperatureProvider.repeatingFullRangeDemo.getter@<D0>(uint64_t a1@<X8>)
{
  result = 40.5555556;
  *a1 = xmmword_24882DAC0;
  *(a1 + 16) = xmmword_24882DAD0;
  *(a1 + 32) = 65;
  return result;
}

uint64_t sub_248812D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_248812DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_248812E0C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t UnitSpace.valueWithUnitFormatString.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = v1;
      goto LABEL_7;
    }

    v3 = 0x8000000248830B70;
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000021;
    v3 = 0x8000000248830B90;
  }

  v5 = sub_2487FB274(v4, v3);
LABEL_7:
  sub_248812EFC(v1, v2);
  return v5;
}

uint64_t sub_248812EFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t DepthFormattingOptions.unit.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_248813CE0(v2, v3);
}

uint64_t DepthFormattingOptions.unit.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_248813CF0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

__n128 DepthFormattingOptions.init(unit:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double static DepthFormattingOptions.withoutUnit.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24882DC00;
  return result;
}

uint64_t DepthFormatter.depthUnitString.getter()
{
  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v1 = 0xED00004D5F54494ELL;
  }

  else
  {
    v1 = 0xEE0054465F54494ELL;
  }

  return sub_2487FB274(0x555F4E4F52414843, v1);
}

uint64_t DepthFormatter.complicationMaxDepthUnitString.getter()
{
  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v1 = "T_FORMAT_NO_SPACE";
  }

  else
  {
    v1 = "ION_MAX_DEPTH_UNIT_STRING_M";
  }

  if (*(v0 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v2 = 0xD00000000000002CLL;
  }

  return sub_2487FB274(v2, v1 | 0x8000000000000000);
}

uint64_t DepthFormatter.formatDepth(_:options:deviceType:)(uint64_t *a1, __int128 *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  if (*a3)
  {
    if (*a3 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v11 = *a2;
        swift_once();
        v5 = v11;
      }

      v6 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v13 = *a2;
        swift_once();
        v5 = v13;
      }

      v6 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v12 = *a2;
      swift_once();
      v5 = v12;
    }

    v6 = &xmmword_27EEB0FC0;
  }

  v8 = *v6;
  v7 = *(v6 + 1);
  v16 = v3;
  v17 = v4;
  v15 = v5;
  v14[0] = v8;
  v14[1] = v7;
  sub_2488134BC(&v16, &v15, v14, &v18);
  v9 = v18;

  return v9;
}

void *DepthFormatter.formattedDepthComponents(forDepth:options:deviceType:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  if (*a3)
  {
    if (*a3 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v14 = a4;
        v11 = *a2;
        swift_once();
        v6 = v11;
        a4 = v14;
      }

      v7 = &xmmword_27EEB0FD0;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v16 = a4;
        v13 = *a2;
        swift_once();
        v6 = v13;
        a4 = v16;
      }

      v7 = &xmmword_27EEB0FE0;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v15 = a4;
      v12 = *a2;
      swift_once();
      v6 = v12;
      a4 = v15;
    }

    v7 = &xmmword_27EEB0FC0;
  }

  v9 = *v7;
  v8 = *(v7 + 1);
  v19 = v4;
  v20 = v5;
  v18 = v6;
  v17[0] = v9;
  v17[1] = v8;
  return sub_2488134BC(&v19, &v18, v17, a4);
}

void DepthFormatter.formattedDepthComponents(forDepth:fromWorkout:options:)(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *a3;
  v7 = a3[1];
  v9 = [a1 device];
  if (v9 && (v10 = v9, v11 = [v9 hardwareVersion], v10, v11))
  {
    v12 = sub_24882AEF8();
    v14 = v13;

    static DeviceType.deviceType(forDeviceIdentifier:)(v12, v14, &v19);

    if (v19)
    {
      if (v19 == 1)
      {
        if (qword_27EEA9940 != -1)
        {
          swift_once();
        }

        v15 = &xmmword_27EEB0FD0;
      }

      else
      {
        if (qword_27EEA9948 != -1)
        {
          swift_once();
        }

        v15 = &xmmword_27EEB0FE0;
      }
    }

    else
    {
      if (qword_27EEA9938 != -1)
      {
        swift_once();
      }

      v15 = &xmmword_27EEB0FC0;
    }

    v17 = *v15;
    v16 = *(v15 + 1);
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v19 = v8;
    *&v18 = v17;
    *(&v18 + 1) = v16;
  }

  else
  {
    if (v6 > 2)
    {
      *a4 = 11565;
      a4[1] = 0xE200000000000000;
      a4[2] = 11565;
      a4[3] = 0xE200000000000000;
      a4[4] = 0;
      a4[5] = 0;
      return;
    }

    v20 = v7;
    v21 = v5;
    v22 = 1;
    v19 = v8;
    v18 = xmmword_24882D910;
  }

  sub_2488134BC(&v21, &v19, &v18, a4);
}

uint64_t sub_2488134BC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *result;
  v8 = *a2;
  v7 = a2[1];
  if (*(result + 8) <= 1u)
  {
    v9 = *result;
    goto LABEL_3;
  }

  if (*(result + 8) != 2)
  {
    if (v6 == 0.0)
    {
      *a4 = 11565;
      a4[1] = 0xE200000000000000;
      a4[2] = 11565;
      a4[3] = 0xE200000000000000;
LABEL_50:
      a4[4] = 0;
      a4[5] = 0;
      return result;
    }

    v9 = 0.0;
    if (*&v6 == 1)
    {
LABEL_3:
      v10 = v4 + OBJC_IVAR___DKDepthFormatter_configuration;
      v11 = 3.2808399;
      if (*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
      {
        v11 = 1.0;
      }

      v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v13 = *(v4 + OBJC_IVAR___DKDepthFormatter_depthNumberFormatter);
      v14 = [v13 stringFromNumber_];
      if (v14)
      {
        v15 = v14;
        v16 = sub_24882AEF8();
        v18 = v17;

        v12 = v13;
        v13 = v15;
      }

      else
      {
        v16 = sub_2487FB274(0x495F4E4F52414843, 0xEE0044494C41564ELL);
        v18 = v24;
      }

      if (v7)
      {
        if (v7 != 1)
        {
          if (v7 == 2)
          {
            *a4 = v16;
            a4[1] = v18;
            a4[2] = v16;
            a4[3] = v18;
            a4[4] = 0;
            a4[5] = 0;
          }

          goto LABEL_27;
        }

        v25 = "deepDiveTimeThreshold";
        v26 = 0xD000000000000018;
      }

      else
      {
        v25 = "CHARON_VALUE_UNIT_FORMAT";
        v26 = 0xD000000000000021;
      }

      sub_2487FB274(v26, v25 | 0x8000000000000000);
LABEL_27:
      v27 = *(v10 + 114);
      sub_248813CE0(v8, v7);
      if (v27)
      {
        v28 = 0xED00004D5F54494ELL;
      }

      else
      {
        v28 = 0xEE0054465F54494ELL;
      }

      v29 = sub_2487FB274(0x555F4E4F52414843, v28);
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24882BFE0;
      v33 = MEMORY[0x277D837D0];
      *(v32 + 56) = MEMORY[0x277D837D0];
      v34 = sub_2487FA950();
      *(v32 + 32) = v16;
      *(v32 + 40) = v18;
      *(v32 + 96) = v33;
      *(v32 + 104) = v34;
      *(v32 + 64) = v34;
      *(v32 + 72) = v29;
      *(v32 + 80) = v31;

      v35 = sub_24882AF18();
      v37 = v36;

      *a4 = v35;
      a4[1] = v37;
      a4[2] = v16;
      a4[3] = v18;
      a4[4] = v29;
      a4[5] = v31;
      return result;
    }
  }

  v19 = 0xD000000000000013;
  v20 = v4 + OBJC_IVAR___DKDepthFormatter_configuration;
  if (*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
  {
    v21 = a3[1];
  }

  else
  {
    v21 = *a3;
  }

  if (!v7)
  {
    v22 = "CHARON_VALUE_UNIT_FORMAT";
    v23 = 0xD000000000000021;
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    v38 = 3.2808399;
    if (*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
    {
      v38 = 1.0;
    }

    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v40 = *(v4 + OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter);
    v41 = [v40 stringFromNumber_];
    if (v41)
    {
      v42 = v41;
      v43 = sub_24882AEF8();
      v45 = v44;

      v39 = v40;
      v40 = v42;
    }

    else
    {
      v43 = sub_2487FB274(0x495F4E4F52414843, 0xEE0044494C41564ELL);
      v45 = v65;
    }

    sub_2487FB274(0xD00000000000001BLL, 0x8000000248830C20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_24882BFD0;
    *(v66 + 56) = MEMORY[0x277D837D0];
    *(v66 + 64) = sub_2487FA950();
    *(v66 + 32) = v43;
    *(v66 + 40) = v45;

    v67 = sub_24882AF18();
    v69 = v68;

    *a4 = v67;
    a4[1] = v69;
    a4[2] = v43;
    a4[3] = v45;
    goto LABEL_50;
  }

  if (v7 != 1)
  {
    if (!*(v4 + OBJC_IVAR___DKDepthFormatter_configuration + 114))
    {
      v46 = "CHARON_UNIT_PLUS_M";
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v22 = "deepDiveTimeThreshold";
  v23 = 0xD000000000000018;
LABEL_37:
  sub_2487FB274(v23, v22 | 0x8000000000000000);
  if (*(v20 + 114))
  {
LABEL_40:
    v46 = "CHARON_EXCEEDING_VALUE_ONLY";
    v19 = 0xD000000000000012;
    goto LABEL_42;
  }

  v46 = "CHARON_UNIT_PLUS_M";
LABEL_42:
  sub_248813CE0(v8, v7);
  v47 = sub_2487FB274(v19, v46 | 0x8000000000000000);
  v49 = v48;
  v50 = 3.2808399;
  if (*(v20 + 114))
  {
    v50 = 1.0;
  }

  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v52 = *(v4 + OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter);
  v53 = [v52 stringFromNumber_];
  if (v53)
  {
    v54 = v53;
    v55 = sub_24882AEF8();
    v57 = v56;

    v51 = v52;
    v52 = v54;
  }

  else
  {
    v55 = sub_2487FB274(0x495F4E4F52414843, 0xEE0044494C41564ELL);
    v57 = v58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_24882BFE0;
  v60 = MEMORY[0x277D837D0];
  *(v59 + 56) = MEMORY[0x277D837D0];
  v61 = sub_2487FA950();
  *(v59 + 32) = v55;
  *(v59 + 40) = v57;
  *(v59 + 96) = v60;
  *(v59 + 104) = v61;
  *(v59 + 64) = v61;
  *(v59 + 72) = v47;
  *(v59 + 80) = v49;

  v62 = sub_24882AF18();
  v64 = v63;

  *a4 = v62;
  a4[1] = v64;
  a4[2] = v55;
  a4[3] = v57;
  a4[4] = v47;
  a4[5] = v49;
  return result;
}

uint64_t DepthFormatter.formattedZeroDepth.getter@<X0>(uint64_t *a1@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  if (qword_27EEA9948 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = xmmword_27EEB0FE0;
  sub_2488134BC(&v8, &v6, &v5, a1);
  v1 = v6;
  v2 = v7;

  return sub_248813CF0(v1, v2);
}

Swift::String __swiftcall DepthFormatter.verboseBeyondMaxDepthString(forDeviceType:)(DepthCore::DeviceType forDeviceType)
{
  v2 = *forDeviceType;
  strcpy(v11, "CHARON_BEYOND");
  HIWORD(v11[1]) = -4864;
  if ((*(v1 + OBJC_IVAR___DKDepthFormatter_configuration + 114) & 1) == 0)
  {
    MEMORY[0x24C1D9700](5523039, 0xE300000000000000);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    v3 = 0xE000000000000000;
    goto LABEL_7;
  }

  MEMORY[0x24C1D9700](19807, 0xE200000000000000);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2 != 1)
  {

    v7 = 0xE200000000000000;
    v5 = 11565;
    goto LABEL_9;
  }

  v3 = 0xE700000000000000;
  v4 = 0x5345495245535FLL;
LABEL_7:
  MEMORY[0x24C1D9700](v4, v3);

  v5 = sub_2487FB274(v11[0], v11[1]);
  v7 = v6;

LABEL_9:
  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_248813CE0(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_248812EFC(a1, a2);
  }

  return a1;
}

uint64_t sub_248813CF0(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_248813D00(a1, a2);
  }

  return a1;
}

uint64_t sub_248813D00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9DepthCore9UnitSpaceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9DepthCore10UnitOptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248813D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 < 3)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248813DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_248813E08(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483646;
  }

  else if (a2)
  {
    result[1] = a2 + 1;
  }

  return result;
}

uint64_t sub_248813E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248813EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_248813F00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_248813F30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_248813F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterfaceSettings(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t DiveSummary.workoutID.setter(uint64_t a1)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DiveSummary.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiveSummary(0) + 20);
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DiveSummary(uint64_t a1)
{
  result = qword_27EEAA268;
  if (!qword_27EEAA268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DiveSummary.dateInterval.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DiveSummary(0) + 20);
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DiveSummary.maxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for DiveSummary(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t DiveSummary.maxDepth.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DiveSummary(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DiveSummary.underwaterDuration.setter(double a1)
{
  result = type metadata accessor for DiveSummary(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

__n128 DiveSummary.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DiveSummary(0) + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t DiveSummary.temperatureRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for DiveSummary(0);
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t DiveSummary.numberOfDives.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DiveSummary(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DiveSummary.deviceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DiveSummary(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t DiveSummary.deviceType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DiveSummary(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t DiveSummary.diveID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for DiveSummary(0);
  sub_2488147D8(v1 + *(v6 + 44), v5);
  v7 = sub_24882ABE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  (*(v8 + 16))(a1, v1, v7);
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_248814848(v5);
  }

  return result;
}

uint64_t sub_2488147D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248814848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DiveSummary.init(workoutID:dateInterval:maxDepth:underwaterDuration:temperatureRange:numberOfDives:diveID:deviceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *a4;
  v28 = a4[1];
  v27 = *(a4 + 16);
  v29 = *a8;
  v17 = type metadata accessor for DiveSummary(0);
  v18 = v17[11];
  v19 = sub_24882ABE8();
  v20 = *(v19 - 8);
  (*(v20 + 56))(a9 + v18, 1, 1, v19);
  (*(v20 + 32))(a9, a1, v19);
  v21 = v17[5];
  v22 = sub_24882AA88();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v17[6];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(a9 + v17[7]) = a10;
  v24 = a9 + v17[8];
  *v24 = v16;
  *(v24 + 8) = v28;
  *(v24 + 16) = v27;
  v25 = a9 + v17[9];
  *v25 = a5;
  *(v25 + 8) = a6 & 1;
  result = sub_248814A60(a7, a9 + v18);
  *(a9 + v17[10]) = v29;
  return result;
}

uint64_t sub_248814A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static DiveSummary.fromHKWorkout(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24882ABE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v91 = &v78[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v78[-v13];
  v15 = sub_24882AB78();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = sub_24882AA88();
  v89 = *(v17 - 8);
  v90 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v88 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v78[-v20];
  if ([a1 workoutActivityType] == 84)
  {
    v85 = a2;
    v86 = v5;
    v22 = [a1 metadata];
    v87 = v4;
    if (v22)
    {
      v23 = v22;
      v24 = sub_24882AE68();

      v25 = [a1 startDate];
      sub_24882AB58();

      v26 = [a1 endDate];
      sub_24882AB58();

      sub_24882AA58();
      static WaterDepth.maxDepth(fromMetadata:)(v24, &v93);
      v81 = v93;
      v27 = v94;
      v28 = _s9DepthCore15DiveWorkoutUtilO14underwaterTime4fromSdSo9HKWorkoutC_tFZ_0(a1);
      v29 = [a1 metadata];
      if (!v29 || (v30 = v29, sub_24882AE68(), v30, v31 = , static TemperatureRange.temperatureRange(fromMetadata:)(v31, v96), swift_bridgeObjectRelease_n(), v97 == 255))
      {
        sub_2487FB388(a1, &v93);
        v82 = v93;
        v83 = v94;
        v84 = v95;
      }

      else
      {
        v84 = v97;
        v82 = v96[0];
        v83 = v96[1];
        v93 = v96[0];
      }

      if (*(v24 + 16) && (v35 = sub_2487F8B2C(0xD000000000000025, 0x8000000248830000), (v36 & 1) != 0) && (sub_2487F8BA4(*(v24 + 56) + 32 * v35, &v93), swift_dynamicCast()))
      {
        v37 = v96[0];
      }

      else
      {
        v37 = 1;
      }

      v80 = v37;
      if (*(v24 + 16) && (v38 = sub_2487F8B2C(0xD000000000000021, 0x8000000248830110), (v39 & 1) != 0))
      {
        sub_2487F8BA4(*(v24 + 56) + 32 * v38, &v93);

        if (swift_dynamicCast())
        {

          sub_24882AB88();
          swift_bridgeObjectRelease_n();
          goto LABEL_21;
        }
      }

      else
      {
      }

      (*(v86 + 56))(v14, 1, 1, v87);
LABEL_21:
      v40 = 0x6E776F6E6B6E75;
      v41 = [a1 device];
      if (v41 && (v42 = v41, v43 = [v41 hardwareVersion], v42, v43))
      {
        v40 = sub_24882AEF8();
        v45 = v44;
      }

      else
      {
        v45 = 0xE700000000000000;
      }

      v46 = [a1 UUID];
      v47 = v91;
      sub_24882ABB8();

      v48 = v88;
      v49 = v89;
      v50 = v90;
      (*(v89 + 16))(v88, v21, v90);
      v51 = v81;
      if (v27 == 255)
      {
        v51 = 0;
      }

      v81 = v51;
      if (v27 == 255)
      {
        v52 = 3;
      }

      else
      {
        v52 = v27;
      }

      v79 = v52;
      sub_2488147D8(v14, v92);
      static DeviceType.deviceType(forDeviceIdentifier:)(v40, v45, &v93);

      sub_248814848(v14);
      (*(v49 + 8))(v21, v50);
      v53 = v93;
      v54 = type metadata accessor for DiveSummary(0);
      v55 = v54[11];
      v56 = v85;
      v57 = v86;
      v58 = v87;
      (*(v86 + 56))(v85 + v55, 1, 1, v87);
      (*(v57 + 32))(v56, v47, v58);
      (*(v49 + 32))(v56 + v54[5], v48, v50);
      v59 = v56 + v54[6];
      *v59 = v81;
      *(v59 + 8) = v79;
      *(v56 + v54[7]) = v28;
      v60 = v56 + v54[8];
      v61 = v83;
      *v60 = v82;
      *(v60 + 8) = v61;
      *(v60 + 16) = v84;
      v62 = v56 + v54[9];
      *v62 = v80;
      *(v62 + 8) = 0;
      sub_248814A60(v92, v56 + v55);
      *(v56 + v54[10]) = v53;
      return (*(*(v54 - 1) + 56))(v56, 0, 1, v54);
    }

    if (qword_27EEA9950 != -1)
    {
      swift_once();
    }

    v63 = sub_24882AC88();
    __swift_project_value_buffer(v63, qword_27EEAA810);
    v64 = a1;
    v65 = sub_24882AC68();
    v66 = sub_24882B138();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v85;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v93 = v70;
      *v69 = 136315138;
      v71 = [v64 UUID];
      sub_24882ABB8();

      sub_248815FE4(&qword_27EEAA250, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v72 = v87;
      v73 = sub_24882B498();
      v75 = v74;
      (*(v86 + 8))(v8, v72);
      v76 = sub_2487F852C(v73, v75, &v93);

      *(v69 + 4) = v76;
      _os_log_impl(&dword_2487F4000, v65, v66, "Workout %s has nil metadata", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x24C1DA290](v70, -1, -1);
      MEMORY[0x24C1DA290](v69, -1, -1);
    }

    v77 = type metadata accessor for DiveSummary(0);
    return (*(*(v77 - 8) + 56))(v68, 1, 1, v77);
  }

  else
  {
    v32 = type metadata accessor for DiveSummary(0);
    v33 = *(*(v32 - 8) + 56);

    return v33(a2, 1, 1, v32);
  }
}

uint64_t static DiveSummary.previewData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_24882AB78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  sub_24882ABD8();
  sub_24882AB68();
  sub_24882AB38();
  (*(v6 + 8))(v9, v5);
  sub_24882AB68();
  v10 = type metadata accessor for DiveSummary(0);
  sub_24882AA58();
  sub_24882ABD8();
  v11 = sub_24882ABE8();
  v12 = *(*(v11 - 8) + 56);
  v12(v4, 0, 1, v11);
  v13 = v10[11];
  v12((a1 + v13), 1, 1, v11);
  v14 = a1 + v10[6];
  *v14 = 0x403B6E978D4FDF3CLL;
  *(v14 + 8) = 1;
  *(a1 + v10[7]) = 0x40A5900000000000;
  v15 = a1 + v10[8];
  *v15 = xmmword_24882DDC0;
  *(v15 + 16) = 1;
  v16 = a1 + v10[9];
  *v16 = 2;
  *(v16 + 8) = 0;
  result = sub_248814A60(v4, a1 + v13);
  *(a1 + v10[10]) = 0;
  return result;
}

uint64_t DiveSummary.with(maxDepth:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v37 - v10;
  v11 = sub_24882AA88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24882ABE8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a1;
  v45 = *(a1 + 8);
  v19 = *(v16 + 16);
  v44 = v18;
  v38 = v19;
  v19();
  v20 = type metadata accessor for DiveSummary(0);
  v21 = v20[5];
  v48 = v14;
  v49 = v12;
  v22 = *(v12 + 16);
  v50 = v11;
  v22(v14, v3 + v21, v11);
  v23 = *(v3 + v20[7]);
  v24 = (v3 + v20[8]);
  v25 = *v24;
  v42 = v24[1];
  v43 = v25;
  v41 = *(v24 + 16);
  v26 = (v3 + v20[9]);
  v40 = *v26;
  v39 = *(v26 + 8);
  sub_2488147D8(v3 + v20[11], v9);
  v27 = *(v16 + 48);
  if (v27(v9, 1, v15) == 1)
  {
    v28 = v47;
    (v38)(v47, v3, v15);
    v29 = v28;
    if (v27(v9, 1, v15) != 1)
    {
      sub_248814848(v9);
    }
  }

  else
  {
    v29 = v47;
    (*(v16 + 32))(v47, v9, v15);
  }

  v30 = *(v16 + 56);
  v30(v29, 0, 1, v15);
  v31 = v20[11];
  v30(a2 + v31, 1, 1, v15);
  (*(v16 + 32))(a2, v44, v15);
  (*(v49 + 32))(a2 + v20[5], v48, v50);
  v32 = a2 + v20[6];
  *v32 = v46;
  *(v32 + 8) = v45;
  *(a2 + v20[7]) = v23;
  v33 = a2 + v20[8];
  v34 = v42;
  *v33 = v43;
  *(v33 + 8) = v34;
  *(v33 + 16) = v41;
  v35 = a2 + v20[9];
  *v35 = v40;
  *(v35 + 8) = v39;
  result = sub_248814A60(v29, a2 + v31);
  *(a2 + v20[10]) = 0;
  return result;
}

uint64_t DiveSummary.underwaterTime.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
  type metadata accessor for DiveSummary(0);
  sub_24882AA68();
  sub_24882AA48();
  type metadata accessor for UnderwaterTime(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_248815BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24882AA88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_248815C6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 24));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_248815C88@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_248815CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_2488147D8(v2 + *(a1 + 44), &v12 - v6);
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  (*(v9 + 16))(a2, v2, v8);
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_248814848(v7);
  }

  return result;
}

uint64_t DiveSummary.hashValue.getter()
{
  sub_24882B528();
  _s9DepthCore11DiveSummaryV4hash4intoys6HasherVz_tF_0();
  return sub_24882B548();
}

uint64_t sub_248815E78()
{
  sub_24882B528();
  _s9DepthCore11DiveSummaryV4hash4intoys6HasherVz_tF_0();
  return sub_24882B548();
}

uint64_t sub_248815EBC(uint64_t a1)
{
  sub_24882B528();
  _s9DepthCore11DiveSummaryV4hash4intoys6HasherVz_tF_0();
  return sub_24882B548();
}

uint64_t sub_248815F44(uint64_t a1)
{
  result = sub_248815FE4(&qword_27EEAA258, type metadata accessor for DiveSummary, &protocol conformance descriptor for DiveSummary);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248815FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_248816054(uint64_t a1)
{
  sub_24882ABE8();
  if (v1 <= 0x3F)
  {
    sub_24882AA88();
    if (v2 <= 0x3F)
    {
      sub_24881612C();
      if (v3 <= 0x3F)
      {
        sub_24881617C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24881612C()
{
  if (!qword_27EEAA278)
  {
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA278);
    }
  }
}

void sub_24881617C(uint64_t a1)
{
  if (!qword_27EEAA280)
  {
    sub_24882ABE8();
    v1 = sub_24882B218();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEAA280);
    }
  }
}

DepthCore::UnitSettings __swiftcall UnitSettings.init(depthUnit:waterTemperatureUnit:)(DepthCore::DepthUnit depthUnit, DepthCore::WaterTemperatureUnit waterTemperatureUnit)
{
  v3 = *waterTemperatureUnit;
  *v2 = *depthUnit;
  v2[1] = v3;
  result.depthUnit = depthUnit;
  return result;
}

uint64_t UnitSettings.depthUnitString.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_meters;
  if (!v1)
  {
    v3 = &selRef_feet;
  }

  v4 = [v2 *v3];
  v5 = [v4 symbol];

  v6 = sub_24882AEF8();
  return v6;
}

uint64_t UnitSettings.localizedString.getter()
{
  if (*v0)
  {
    v1 = 0xED00004D5F54494ELL;
  }

  else
  {
    v1 = 0xEE0054465F54494ELL;
  }

  return sub_2487FB274(0x555F4E4F52414843, v1);
}

uint64_t UnitSettings.waterTemperatureUnitString.getter()
{
  v1 = *(v0 + 1);
  v2 = objc_opt_self();
  v3 = &selRef_fahrenheit;
  if (!v1)
  {
    v3 = &selRef_celsius;
  }

  v4 = [v2 *v3];
  v5 = [v4 symbol];

  v6 = sub_24882AEF8();
  return v6;
}

uint64_t UnitSettings.loggingString.getter()
{
  v1 = 1952802150;
  if (*v0)
  {
    v1 = 0x73726574656DLL;
  }

  if (v0[1])
  {
    v2 = 0x65686E6572686166;
  }

  else
  {
    v2 = 0x737569636C6563;
  }

  if (v0[1])
  {
    v3 = 0xEA00000000007469;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v5 = v1;

  MEMORY[0x24C1D9700](2109216, 0xE300000000000000);

  MEMORY[0x24C1D9700](v2, v3);

  return v5;
}

uint64_t getEnumTagSinglePayload for UnitSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for UnitSettings(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

DepthCore::DepthValue __swiftcall DepthValue.init(value:inUnit:)(Swift::Double value, DepthCore::DepthUnit inUnit)
{
  v3 = 0.3048;
  if (*inUnit)
  {
    v3 = 1.0;
  }

  result.canonicalValue = v3 * value;
  *v2 = result.canonicalValue;
  return result;
}

void WaterDepth.depthValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 <= 2)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 > 2;
}

Swift::Double __swiftcall DepthValue.value(forUnit:)(DepthCore::DepthUnit forUnit)
{
  v2 = 3.2808399;
  if (*forUnit)
  {
    v2 = 1.0;
  }

  return *v1 * v2;
}

double static DepthValue.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

BOOL sub_2488166E8(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a2 != 1)
      {
        v4 = 3;
        goto LABEL_17;
      }
    }

    else if (a2)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    if (a2 != 2)
    {
      v4 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if (vabdd_f64(*&a3, *&a1) > 0.0001)
    {
      return *&a3 >= *&a1;
    }

    return 1;
  }

  if (*&a3 == 0.0)
  {
    v4 = 0;
    if (a2 == 3 && *&a1 == 0.0)
    {
      return 1;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v4 = 1;
      if (a2 != 3 || a1 != 1)
      {
        goto LABEL_17;
      }

      return 1;
    }

    v4 = 5;
    if (a2 == 3 && a1 == 2)
    {
      return 1;
    }
  }

LABEL_17:
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = qword_24882ECA8[a1];
    }
  }

  else if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return v4 >= v6;
}

BOOL sub_248816808(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        v4 = 3;
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      v4 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if (vabdd_f64(*&a1, *&a3) > 0.0001)
    {
      return *&a1 >= *&a3;
    }

    return 1;
  }

  if (*&a1 == 0.0)
  {
    v4 = 0;
    if (a4 == 3 && *&a3 == 0.0)
    {
      return 1;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v4 = 1;
      if (a4 != 3 || a3 != 1)
      {
        goto LABEL_17;
      }

      return 1;
    }

    v4 = 5;
    if (a4 == 3 && a3 == 2)
    {
      return 1;
    }
  }

LABEL_17:
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = qword_24882ECA8[a3];
    }
  }

  else if (a4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return v4 >= v6;
}

uint64_t sub_248816928(uint64_t result, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a2 != 1)
      {
        v4 = 3;
        goto LABEL_17;
      }
    }

    else if (a2)
    {
      v4 = 2;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    if (a2 != 2)
    {
      v4 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if (vabdd_f64(*&a3, *&result) > 0.0001)
    {
      return *&a3 < *&result;
    }

    goto LABEL_30;
  }

  if (*&a3 == 0.0)
  {
    v4 = 0;
    if (a2 == 3 && *&result == 0.0)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    v4 = 1;
    if (a2 != 3 || result != 1)
    {
      goto LABEL_17;
    }

LABEL_30:
    *&result = 0.0;
    return result;
  }

  v4 = 5;
  if (a2 == 3 && result == 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = qword_24882ECA8[result];
    }
  }

  else if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  return v4 < v5;
}

Swift::Double __swiftcall DepthUnit.conversionFactor(toUnit:)(DepthCore::DepthUnit toUnit)
{
  result = 3.2808399;
  v3 = 1.0;
  if (*toUnit)
  {
    result = 1.0;
    v3 = 0.3048;
  }

  if (!*v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_248816A84(uint64_t a1)
{
  v2 = sub_248816C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248816AC0(uint64_t a1)
{
  v2 = sub_248816C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DepthValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA288, &qword_24882DF90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248816C34();
  sub_24882B568();
  sub_24882B478();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_248816C34()
{
  result = qword_27EEAA290;
  if (!qword_27EEAA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA290);
  }

  return result;
}

uint64_t DepthValue.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA298, &qword_24882DF98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248816C34();
  sub_24882B558();
  if (!v2)
  {
    sub_24882B408();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_248816DFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA288, &qword_24882DF90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248816C34();
  sub_24882B568();
  sub_24882B478();
  return (*(v3 + 8))(v5, v2);
}

double static DepthValue.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_248816FB0@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_248816FC4(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

double sub_248816FD8@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_248816FEC(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

DepthCore::DepthValue __swiftcall DepthValue.advanced(by:)(Swift::Double by)
{
  result.canonicalValue = *v2 + by;
  *v1 = result.canonicalValue;
  return result;
}

double sub_248817020@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *v2 - *a1;
  *a2 = result;
  return result;
}

double sub_248817034@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

double *sub_248817074(double *result, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (a3)
  {
    v7 = a4 + a6;
LABEL_5:
    *result = v7;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = v6 * a6 + a5;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

BOOL WaterDepth.isExceedingMaxDepth.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 == 3)
  {
    return *v0 > 1uLL;
  }

  return 1;
}

uint64_t WaterDepth.hasEqualSubmersionState(to:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else
    {
      v4 = *a1;
      if (*v1)
      {
        if (*v1 == 1 || v2 != 3 || v4 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3 || v4 != 0)
      {
        return 0;
      }
    }
  }

  else if (*(v1 + 8))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 8))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_248817180()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C616E696D6F6ELL;
  if (v1 == 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D627553746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C616873;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24881724C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_248819B34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_248817274(uint64_t a1)
{
  v2 = sub_248818DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488172B0(uint64_t a1)
{
  v2 = sub_248818DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2488172EC(uint64_t a1)
{
  v2 = sub_248818E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817328(uint64_t a1)
{
  v2 = sub_248818E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248817364(uint64_t a1)
{
  v2 = sub_248818E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488173A0(uint64_t a1)
{
  v2 = sub_248818E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2488173DC(uint64_t a1)
{
  v2 = sub_248818EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817418(uint64_t a1)
{
  v2 = sub_248818EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248817454(uint64_t a1)
{
  v2 = sub_248818F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817490(uint64_t a1)
{
  v2 = sub_248818F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2488174CC(uint64_t a1)
{
  v2 = sub_248818F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817508(uint64_t a1)
{
  v2 = sub_248818F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248817544(uint64_t a1)
{
  v2 = sub_248818FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248817580(uint64_t a1)
{
  v2 = sub_248818FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WaterDepth.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2A0, &qword_24882DFA0);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2A8, &qword_24882DFA8);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2B0, &qword_24882DFB0);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2B8, &qword_24882DFB8);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2C0, &qword_24882DFC0);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v34 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2C8, &qword_24882DFC8);
  v33 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA2D0, &qword_24882DFD0);
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v21 = *v2;
  v22 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248818DBC();
  sub_24882B568();
  if (v22 <= 1)
  {
    if (!v22)
    {
      LOBYTE(v50) = 2;
      sub_248818F0C();
      v23 = v49;
      sub_24882B438();
      v50 = v21;
      sub_24880BD78();
      v24 = v41;
      sub_24882B488();
      (*(v40 + 8))(v12, v24);
      return (*(v48 + 8))(v20, v23);
    }

    LOBYTE(v50) = 3;
    sub_248818EB8();
    v25 = v42;
    v23 = v49;
    sub_24882B438();
    v50 = v21;
    sub_24880BD78();
    v26 = v44;
    sub_24882B488();
    v27 = v43;
LABEL_7:
    (*(v27 + 8))(v25, v26);
    return (*(v48 + 8))(v20, v23);
  }

  if (v22 == 2)
  {
    LOBYTE(v50) = 4;
    sub_248818E64();
    v25 = v45;
    v23 = v49;
    sub_24882B438();
    v50 = v21;
    sub_24880BD78();
    v26 = v47;
    sub_24882B488();
    v27 = v46;
    goto LABEL_7;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v50) = 1;
      sub_248818F60();
      v29 = v34;
      v30 = v49;
      sub_24882B438();
      v32 = v35;
      v31 = v36;
    }

    else
    {
      LOBYTE(v50) = 5;
      sub_248818E10();
      v29 = v37;
      v30 = v49;
      sub_24882B438();
      v32 = v38;
      v31 = v39;
    }

    (*(v32 + 8))(v29, v31);
  }

  else
  {
    LOBYTE(v50) = 0;
    sub_248818FB4();
    v30 = v49;
    sub_24882B438();
    (*(v33 + 8))(v17, v15);
  }

  return (*(v48 + 8))(v20, v30);
}

uint64_t WaterDepth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA310, &qword_24882DFD8);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v48 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA318, &qword_24882DFE0);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v48 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA320, &qword_24882DFE8);
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v64 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA328, &qword_24882DFF0);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA330, &qword_24882DFF8);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA338, &qword_24882E000);
  v51 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA340, &unk_24882E008);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_248818DBC();
  v21 = v67;
  sub_24882B558();
  if (!v21)
  {
    v22 = v15;
    v49 = v13;
    v50 = v12;
    v24 = v64;
    v23 = v65;
    v25 = v66;
    v67 = v17;
    v26 = v19;
    v27 = sub_24882B428();
    v28 = (2 * *(v27 + 16)) | 1;
    v69 = v27;
    v70 = v27 + 32;
    v71 = 0;
    v72 = v28;
    v29 = sub_2487FF27C();
    if (v29 == 6 || v71 != v72 >> 1)
    {
      v34 = sub_24882B2E8();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60);
      *v36 = &type metadata for WaterDepth;
      sub_24882B3C8();
      sub_24882B2D8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v67 + 8))(v19, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29 > 2u)
      {
        if (v29 == 3)
        {
          LOBYTE(v73) = 3;
          sub_248818EB8();
          v41 = v24;
          v42 = v26;
          sub_24882B3B8();
          v38 = v63;
          v43 = v67;
          sub_24880BDCC();
          v44 = v54;
          sub_24882B418();
          (*(v57 + 8))(v41, v44);
          (*(v43 + 8))(v42, v16);
          swift_unknownObjectRelease();
          v33 = v73;
          v32 = 1;
        }

        else
        {
          v38 = v63;
          v39 = v67;
          if (v29 == 4)
          {
            LOBYTE(v73) = 4;
            sub_248818E64();
            sub_24882B3B8();
            sub_24880BDCC();
            v40 = v58;
            sub_24882B418();
            (*(v61 + 8))(v23, v40);
            (*(v39 + 8))(v26, v16);
            swift_unknownObjectRelease();
            v33 = v73;
            v32 = 2;
          }

          else
          {
            LOBYTE(v73) = 5;
            sub_248818E10();
            sub_24882B3B8();
            (*(v59 + 8))(v25, v60);
            (*(v39 + 8))(v26, v16);
            swift_unknownObjectRelease();
            v32 = 3;
            v33 = 2;
          }
        }
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            LOBYTE(v73) = 1;
            sub_248818F60();
            v30 = v50;
            sub_24882B3B8();
            v31 = v67;
            (*(v53 + 8))(v30, v52);
            (*(v31 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v32 = 3;
            v33 = 1;
          }

          else
          {
            LOBYTE(v73) = 2;
            sub_248818F0C();
            v45 = v62;
            sub_24882B3B8();
            v46 = v67;
            sub_24880BDCC();
            v47 = v56;
            sub_24882B418();
            (*(v55 + 8))(v45, v47);
            (*(v46 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v32 = 0;
            v33 = v73;
          }
        }

        else
        {
          LOBYTE(v73) = 0;
          sub_248818FB4();
          sub_24882B3B8();
          (*(v51 + 8))(v22, v49);
          (*(v67 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v33 = 0;
          v32 = 3;
        }

        v38 = v63;
      }

      *v38 = v33;
      *(v38 + 8) = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v68);
}

id DepthUnit.unitLength.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_meters;
  if (!v1)
  {
    v3 = &selRef_feet;
  }

  v4 = [v2 *v3];

  return v4;
}

DepthCore::DepthUnit_optional __swiftcall DepthUnit.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_248818760@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t WaterType.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t Pressure.PressureUnit.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

DepthCore::Pressure __swiftcall Pressure.init(value:unit:)(DepthCore::Pressure value, DepthCore::Pressure::PressureUnit unit)
{
  if (*unit)
  {
    value.canonicalValue = value.canonicalValue * 1000.0;
  }

  *v2 = value.canonicalValue;
  return value;
}

Swift::Double __swiftcall Pressure.depthValue(forUnit:waterType:)(DepthCore::DepthUnit forUnit, DepthCore::WaterType waterType)
{
  result = *v2 / dbl_24882EC90[*waterType];
  if (!*forUnit)
  {
    return result / 3.2808399;
  }

  return result;
}

Swift::Double __swiftcall Pressure.value(forUnit:)(DepthCore::Pressure::PressureUnit forUnit)
{
  result = *v1;
  if (*forUnit)
  {
    return *v1 / 1000.0;
  }

  return result;
}

double static Pressure.pressure(forDepthValue:unit:waterType:)@<D0>(_BYTE *a1@<X0>, char *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v4 = 0.3048;
  if (*a1)
  {
    v4 = 1.0;
  }

  result = v4 * (dbl_24882EC90[*a2] * a4);
  *a3 = result;
  return result;
}

DepthCore::DepthTransform __swiftcall DepthTransform.init(significantDepth:nominalDepthLimit:deviceLimitDepth:)(DepthCore::DepthValue significantDepth, DepthCore::DepthValue nominalDepthLimit, DepthCore::DepthValue deviceLimitDepth)
{
  v7 = *v3;
  v8 = *v4;
  v9 = *v5;
  *v6 = *v3;
  v6[1] = v8;
  v6[2] = v9;
  result.deviceLimitDepth = *&v9;
  result.nominalDepthLimit = *&v8;
  result.significantDepth = *&v7;
  return result;
}

double static DepthTransform.transform(forDevice:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        v5 = a2;
        swift_once();
        a2 = v5;
      }

      v2 = &xmmword_27EEB0FD0 + 1;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        v7 = a2;
        swift_once();
        a2 = v7;
      }

      v2 = &xmmword_27EEB0FE0 + 1;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &xmmword_27EEB0FC0 + 1;
  }

  result = *v2;
  v4 = *v2 * 1.1;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

double *DepthTransform.callAsFunction(depth:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0.0)
  {
    v4 = 1;
LABEL_3:
    *a2 = v4;
    *(a2 + 8) = 3;
    return result;
  }

  if (v3 < *v2)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
    return result;
  }

  v5 = v2[1];
  if (v5 < *v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v3 < v5)
  {
    *a2 = v3;
    *(a2 + 8) = 1;
    return result;
  }

  v6 = v2[2];
  if (v6 < v5)
  {
    goto LABEL_14;
  }

  if (v3 >= v6)
  {
    v4 = 2;
    goto LABEL_3;
  }

  *a2 = v3;
  *(a2 + 8) = 2;
  return result;
}

CMWaterSubmersionDepthState __swiftcall SubmersionStateTransform.callAsFunction(depth:)(DepthCore::DepthValue depth)
{
  v3 = *result;
  if (*result < *v2)
  {
    return 200;
  }

  v4 = v2[1];
  if (v4 < *v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v3 < v4)
  {
    return 300;
  }

  v5 = v2[2];
  if (v5 < v4)
  {
    goto LABEL_11;
  }

  if (v3 >= v5)
  {
    return 600;
  }

  else
  {
    return 500;
  }
}

uint64_t _s9DepthCore05WaterA0O2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      if (v4 == 2 && vabdd_f64(v2, v3) <= 0.0001)
      {
        return 1;
      }
    }

    else if (v2 == 0.0)
    {
      if (v4 == 3 && *&v3 == 0)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (v4 == 3 && *&v3 == 1)
      {
        return 1;
      }
    }

    else if (v4 == 3 && *&v3 == 2)
    {
      return 1;
    }
  }

  else if (*(a1 + 8))
  {
    if (v4 == 1 && vabdd_f64(v2, v3) <= 0.0001)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && vabdd_f64(v2, v3) <= 0.0001)
  {
    return 1;
  }

  return 0;
}

BOOL _s9DepthCore05WaterA0O1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      if (v4 != 1)
      {
        v2 = 3;
        goto LABEL_29;
      }

      v5 = *a1;
      v6 = *a2;
      if (vabdd_f64(*&v2, v3) <= 0.0001)
      {
        return 0;
      }

      return v5 < v6;
    }

    if (*(a2 + 8))
    {
      v2 = 2;
      goto LABEL_29;
    }

    v5 = *a1;
    v6 = *a2;
    if (vabdd_f64(*&v2, v3) > 0.0001)
    {
      return v5 < v6;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    if (v4 != 2)
    {
      v2 = 4;
      goto LABEL_29;
    }

    v5 = *a1;
    v6 = *a2;
    if (vabdd_f64(*&v2, v3) <= 0.0001)
    {
      return 0;
    }

    return v5 < v6;
  }

  if (!v2)
  {
    if (v4 != 3 || *&v3 != 0)
    {
      v2 = 0;
      goto LABEL_29;
    }

    return 0;
  }

  if (v2 == 1)
  {
    if (v4 == 3 && *&v3 == 1)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v2 = 5;
  if (v4 == 3 && *&v3 == 2)
  {
    return 0;
  }

LABEL_29:
  if (*(a2 + 8) > 1u)
  {
    if (v4 == 2)
    {
      v9 = 4;
    }

    else
    {
      v9 = qword_24882ECA8[*&v3];
    }
  }

  else
  {
    v9 = 2;
    if (*(a2 + 8))
    {
      v9 = 3;
    }
  }

  return v2 < v9;
}

unint64_t sub_248818DBC()
{
  result = qword_27EEAA2D8;
  if (!qword_27EEAA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2D8);
  }

  return result;
}

unint64_t sub_248818E10()
{
  result = qword_27EEAA2E0;
  if (!qword_27EEAA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2E0);
  }

  return result;
}

unint64_t sub_248818E64()
{
  result = qword_27EEAA2E8;
  if (!qword_27EEAA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2E8);
  }

  return result;
}

unint64_t sub_248818EB8()
{
  result = qword_27EEAA2F0;
  if (!qword_27EEAA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2F0);
  }

  return result;
}

unint64_t sub_248818F0C()
{
  result = qword_27EEAA2F8;
  if (!qword_27EEAA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA2F8);
  }

  return result;
}

unint64_t sub_248818F60()
{
  result = qword_27EEAA300;
  if (!qword_27EEAA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA300);
  }

  return result;
}

unint64_t sub_248818FB4()
{
  result = qword_27EEAA308;
  if (!qword_27EEAA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA308);
  }

  return result;
}

unint64_t sub_248819008()
{
  result = qword_27EEAA348;
  if (!qword_27EEAA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA348);
  }

  return result;
}

unint64_t sub_248819060()
{
  result = qword_27EEAA350;
  if (!qword_27EEAA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA350);
  }

  return result;
}

unint64_t sub_2488190D0()
{
  result = qword_27EEAA358;
  if (!qword_27EEAA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA358);
  }

  return result;
}

unint64_t sub_248819128()
{
  result = qword_27EEAA360;
  if (!qword_27EEAA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA360);
  }

  return result;
}

unint64_t sub_248819180()
{
  result = qword_27EEAA368;
  if (!qword_27EEAA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA368);
  }

  return result;
}

unint64_t sub_2488191D8()
{
  result = qword_27EEAA370;
  if (!qword_27EEAA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaterDepth(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WaterDepth(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2488192C8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_2488192E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_248819400()
{
  result = qword_27EEAA378;
  if (!qword_27EEAA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA378);
  }

  return result;
}

unint64_t sub_248819458()
{
  result = qword_27EEAA380;
  if (!qword_27EEAA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA380);
  }

  return result;
}

unint64_t sub_2488194B0()
{
  result = qword_27EEAA388;
  if (!qword_27EEAA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA388);
  }

  return result;
}

unint64_t sub_248819508()
{
  result = qword_27EEAA390;
  if (!qword_27EEAA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA390);
  }

  return result;
}

unint64_t sub_248819560()
{
  result = qword_27EEAA398;
  if (!qword_27EEAA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA398);
  }

  return result;
}

unint64_t sub_2488195B8()
{
  result = qword_27EEAA3A0;
  if (!qword_27EEAA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3A0);
  }

  return result;
}

unint64_t sub_248819610()
{
  result = qword_27EEAA3A8;
  if (!qword_27EEAA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3A8);
  }

  return result;
}

unint64_t sub_248819668()
{
  result = qword_27EEAA3B0;
  if (!qword_27EEAA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3B0);
  }

  return result;
}

unint64_t sub_2488196C0()
{
  result = qword_27EEAA3B8;
  if (!qword_27EEAA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3B8);
  }

  return result;
}

unint64_t sub_248819718()
{
  result = qword_27EEAA3C0;
  if (!qword_27EEAA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3C0);
  }

  return result;
}

unint64_t sub_248819770()
{
  result = qword_27EEAA3C8;
  if (!qword_27EEAA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3C8);
  }

  return result;
}

unint64_t sub_2488197C8()
{
  result = qword_27EEAA3D0;
  if (!qword_27EEAA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3D0);
  }

  return result;
}

unint64_t sub_248819820()
{
  result = qword_27EEAA3D8;
  if (!qword_27EEAA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3D8);
  }

  return result;
}

unint64_t sub_248819878()
{
  result = qword_27EEAA3E0;
  if (!qword_27EEAA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3E0);
  }

  return result;
}

unint64_t sub_2488198D0()
{
  result = qword_27EEAA3E8;
  if (!qword_27EEAA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3E8);
  }

  return result;
}

unint64_t sub_248819928()
{
  result = qword_27EEAA3F0;
  if (!qword_27EEAA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3F0);
  }

  return result;
}

unint64_t sub_248819980()
{
  result = qword_27EEAA3F8;
  if (!qword_27EEAA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA3F8);
  }

  return result;
}

unint64_t sub_2488199D8()
{
  result = qword_27EEAA400;
  if (!qword_27EEAA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA400);
  }

  return result;
}

unint64_t sub_248819A30()
{
  result = qword_27EEAA408;
  if (!qword_27EEAA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA408);
  }

  return result;
}

unint64_t sub_248819A88()
{
  result = qword_27EEAA410;
  if (!qword_27EEAA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA410);
  }

  return result;
}

unint64_t sub_248819AE0()
{
  result = qword_27EEAA418;
  if (!qword_27EEAA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA418);
  }

  return result;
}

uint64_t sub_248819B34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D627553746F6ELL && a2 == 0xEC00000064656772 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C616873 && a2 == 0xE700000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696D6F6ELL && a2 == 0xE700000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000248830C80 == a2 || (sub_24882B4B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000248830CA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t DiveUnderwaterTime.init(divePreviousUnderwaterDuration:currentDescentTime:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  v5 = a4 + *(type metadata accessor for DiveUnderwaterTime(0) + 20);

  return sub_248819DD8(a3, v5);
}

uint64_t sub_248819DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnderwaterTime(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248819E5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DiveUnderwaterTime.currentDescentTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DiveUnderwaterTime(0) + 20);

  return sub_24881A4FC(v3, a1);
}

double sub_248819F3C(void (*a1)(uint64_t), double (*a2)(char *))
{
  v4 = sub_24882AB78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  v9 = a2(v8);
  (*(v5 + 8))(v8, v4);
  return v9;
}

double DiveUnderwaterTime.timeInterval(untilDate:)()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24882AB78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *v0;
  v15 = *(v0 + 8);
  v16 = type metadata accessor for DiveUnderwaterTime(0);
  sub_24881A4FC(v0 + *(v16 + 20), v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v21 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_24882AB08();
      v21 = v23;
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v19 = *(v5 + 32);
    v19(v13, v3, v4);
    v19(v11, &v3[v18], v4);
    sub_24882AB08();
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v11, v4);
    v22(v13, v4);
  }

  v24 = 0.0;
  if (!v15)
  {
    v24 = v14;
  }

  return v24 + v21;
}

double UnderwaterTime.timeInterval(untilDate:)()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24882AB78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  sub_24881A4FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    v18 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_24882AB08();
      v18 = v20;
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v16 = *(v5 + 32);
    v16(v13, v3, v4);
    v16(v11, &v3[v15], v4);
    sub_24882AB08();
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v13, v4);
  }

  return v18;
}

uint64_t sub_24881A4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnderwaterTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL UnderwaterTime.isZero.getter()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 3;
  sub_24881A600(v3);
  return v4;
}

uint64_t sub_24881A600(uint64_t a1)
{
  v2 = type metadata accessor for UnderwaterTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL UnderwaterTime.isActive.getter()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_24881A600(v3);
  }

  else
  {
    v5 = sub_24882AB78();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return EnumCaseMultiPayload == 0;
}

BOOL UnderwaterTime.isTentative.getter()
{
  v1 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v6 = sub_24882AB78();
    v7 = *(*(v6 - 8) + 8);
    v7(&v3[v5], v6);
    v7(v3, v6);
  }

  else
  {
    sub_24881A600(v3);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t UnderwaterTime.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v8 = sub_24882AB78();
      v9 = *(v8 - 8);
      (*(v9 + 32))(a1, v6, v8);
      return (*(v9 + 56))(a1, 0, 1, v8);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v12 = sub_24882AB78();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, v6, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    return (*(v13 + 8))(&v6[v11], v12);
  }

  v14 = sub_24882AB78();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t UnderwaterTime.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v8 = sub_24882AB78();
      v9 = *(v8 - 8);
      (*(v9 + 56))(a1, 1, 1, v8);
      return (*(v9 + 8))(v6, v8);
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v12 = sub_24882AB78();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, &v6[v11], v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    return (*(v13 + 8))(v6, v12);
  }

  v14 = sub_24882AB78();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t UnderwaterTime.asTentative(usingEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UnderwaterTime(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v3, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v12 = sub_24882AB78();
    v13 = *(*(v12 - 8) + 8);
    v13(&v9[v11], v12);
    v13(v9, v12);
LABEL_5:
    v17 = 1;
    return (*(v7 + 56))(a2, v17, 1, v6);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v15 = sub_24882AB78();
  v16 = *(v15 - 8);
  (*(v16 + 32))(a2, v9, v15);
  (*(v16 + 16))(a2 + v14, a1, v15);
  swift_storeEnumTagMultiPayload();
  v17 = 0;
  return (*(v7 + 56))(a2, v17, 1, v6);
}

uint64_t UnderwaterTime.makeTentative(usingEndDate:)(uint64_t a1)
{
  v3 = type metadata accessor for UnderwaterTime(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_24881A4FC(v1, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }
  }

  else if (!result)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v11 = sub_24882AB78();
    v12 = *(v11 - 8);
    (*(v12 + 32))(v8, v6, v11);
    (*(v12 + 16))(&v8[v10], a1, v11);
    swift_storeEnumTagMultiPayload();
    sub_24881A600(v1);
    return sub_248819DD8(v8, v1);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
  v14 = sub_24882AB78();
  v15 = *(*(v14 - 8) + 8);
  v15(&v6[v13], v14);
  return (v15)(v6, v14);
}

uint64_t UnderwaterTime.complete(withEndDate:)(uint64_t a1)
{
  v3 = sub_24882AB78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24881A4FC(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
      v16 = *(v4 + 8);
      v16(&v12[*(v15 + 48)], v3);
      return (v16)(v12, v3);
    }

    sub_24881A600(v1);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24881A600(v1);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
    v19 = *(v18 + 48);
    v20 = *(v4 + 32);
    v20(v9, v12, v3);
    v20(v7, &v12[v19], v3);
    v21 = *(v18 + 48);
    v20(v1, v9, v3);
    v20((v1 + v21), v7, v3);
  }

  else
  {
    sub_24881A600(v1);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    (*(v4 + 32))(v1, v12, v3);
    (*(v4 + 16))(v1 + v14, a1, v3);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24881B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24882B4B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24881B408(uint64_t a1)
{
  v2 = sub_24881D338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B444(uint64_t a1)
{
  v2 = sub_24881D338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B480()
{
  v1 = 1869768058;
  v2 = 0x76697461746E6574;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x657669746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24881B4FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24881DCA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24881B530(uint64_t a1)
{
  v2 = sub_24881D23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B56C(uint64_t a1)
{
  v2 = sub_24881D23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B5A8(uint64_t a1)
{
  v2 = sub_24881D290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B5E4(uint64_t a1)
{
  v2 = sub_24881D290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24881B704(uint64_t a1)
{
  v2 = sub_24881D2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B740(uint64_t a1)
{
  v2 = sub_24881D2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881B77C(uint64_t a1)
{
  v2 = sub_24881D38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881B7B8(uint64_t a1)
{
  v2 = sub_24881D38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnderwaterTime.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA420, &qword_24882ECC8);
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v66 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA428, &qword_24882ECD0);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA430, &qword_24882ECD8);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v57 - v7;
  v8 = sub_24882AB78();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v57 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v57 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA438, &qword_24882ECE0);
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA440, &qword_24882ECE8);
  v27 = *(v26 - 8);
  v75 = v26;
  v76 = v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v57 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881D23C();
  v74 = v29;
  sub_24882B568();
  sub_24881A4FC(v73, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v78 = 0;
      sub_24881D38C();
      v55 = v74;
      v54 = v75;
      sub_24882B438();
      (*(v57 + 8))(v22, v20);
      return (*(v76 + 8))(v55, v54);
    }

    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v40 = v71;
    v39 = v72;
    v41 = *(v72 + 32);
    v42 = v62;
    v41(v62, v25, v71);
    v41(v70, &v25[v38], v40);
    v85 = 3;
    sub_24881D290();
    v43 = v66;
    v45 = v74;
    v44 = v75;
    sub_24882B438();
    v84 = 0;
    sub_24881D3E0(&qword_27EEAA1B0, MEMORY[0x277CC9580]);
    v46 = v68;
    v47 = v77;
    sub_24882B488();
    if (!v47)
    {
      v83 = 1;
      sub_24882B488();
    }

    (*(v67 + 8))(v43, v46);
    v56 = *(v39 + 8);
    v56(v70, v40);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v32 = v71;
      v31 = v72;
      (*(v72 + 32))(v19, v25, v71);
      v79 = 1;
      sub_24881D338();
      v33 = v58;
      v35 = v74;
      v34 = v75;
      sub_24882B438();
      sub_24881D3E0(&qword_27EEAA1B0, MEMORY[0x277CC9580]);
      v36 = v60;
      sub_24882B488();
      (*(v59 + 8))(v33, v36);
      (*(v31 + 8))(v19, v32);
      return (*(v76 + 8))(v35, v34);
    }

    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    v40 = v71;
    v49 = v72;
    v50 = *(v72 + 32);
    v42 = v61;
    v50(v61, v25, v71);
    v50(v69, &v25[v48], v40);
    v82 = 2;
    sub_24881D2E4();
    v51 = v63;
    v45 = v74;
    v44 = v75;
    sub_24882B438();
    v81 = 0;
    sub_24881D3E0(&qword_27EEAA1B0, MEMORY[0x277CC9580]);
    v52 = v65;
    v53 = v77;
    sub_24882B488();
    if (!v53)
    {
      v80 = 1;
      sub_24882B488();
    }

    (*(v64 + 8))(v51, v52);
    v56 = *(v49 + 8);
    v56(v69, v40);
  }

  v56(v42, v40);
  return (*(v76 + 8))(v45, v44);
}

uint64_t UnderwaterTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA470, &qword_24882ECF0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v69 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA478, &qword_24882ECF8);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA480, &qword_24882ED00);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x28223BE20](v6);
  v67 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA488, &qword_24882ED08);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v53 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA490, &unk_24882ED10);
  v66 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v53 - v11;
  v13 = type metadata accessor for UnderwaterTime(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24881D23C();
  v26 = v72;
  sub_24882B558();
  if (!v26)
  {
    v53 = v22;
    v27 = v67;
    v72 = v19;
    v54 = v16;
    v29 = v68;
    v28 = v69;
    v55 = v24;
    v56 = v13;
    v30 = v66;
    v32 = v70;
    v31 = v71;
    v33 = sub_24882B428();
    v34 = (2 * *(v33 + 16)) | 1;
    v74 = v33;
    v75 = v33 + 32;
    v76 = 0;
    v77 = v34;
    v35 = sub_2487FF2B0();
    if (v35 != 4 && v76 == v77 >> 1)
    {
      if (v35 > 1u)
      {
        if (v35 != 2)
        {
          v78 = 3;
          sub_24881D290();
          v48 = v28;
          sub_24882B3B8();
          sub_24882AB78();
          v78 = 0;
          sub_24881D3E0(&qword_27EEAA1C8, MEMORY[0x277CC95A0]);
          v49 = v54;
          v50 = v61;
          sub_24882B418();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
          v78 = 1;
          sub_24882B418();
          (*(v64 + 8))(v48, v50);
          (*(v30 + 8))(v12, v71);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v37 = v55;
          sub_248819DD8(v49, v55);
          v38 = v70;
          goto LABEL_14;
        }

        v78 = 2;
        sub_24881D2E4();
        sub_24882B3B8();
        sub_24882AB78();
        v78 = 0;
        sub_24881D3E0(&qword_27EEAA1C8, MEMORY[0x277CC95A0]);
        v44 = v63;
        sub_24882B418();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520);
        v78 = 1;
        sub_24882B418();
        (*(v62 + 8))(v29, v44);
        (*(v30 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v51 = v72;
        swift_storeEnumTagMultiPayload();
        v52 = v51;
      }

      else
      {
        if (!v35)
        {
          v78 = 0;
          sub_24881D38C();
          v36 = v65;
          sub_24882B3B8();
          (*(v57 + 8))(v36, v58);
          (*(v30 + 8))(v12, v31);
          swift_unknownObjectRelease();
          v37 = v55;
          swift_storeEnumTagMultiPayload();
          v38 = v32;
LABEL_14:
          sub_248819DD8(v37, v38);
          return __swift_destroy_boxed_opaque_existential_0(v73);
        }

        v78 = 1;
        sub_24881D338();
        sub_24882B3B8();
        sub_24882AB78();
        sub_24881D3E0(&qword_27EEAA1C8, MEMORY[0x277CC95A0]);
        v45 = v53;
        v46 = v27;
        v47 = v59;
        sub_24882B418();
        (*(v60 + 8))(v46, v47);
        (*(v30 + 8))(v12, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v52 = v45;
      }

      v37 = v55;
      sub_248819DD8(v52, v55);
      v38 = v32;
      goto LABEL_14;
    }

    v39 = sub_24882B2E8();
    swift_allocError();
    v40 = v31;
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60);
    *v42 = v56;
    sub_24882B3C8();
    sub_24882B2D8();
    (*(*(v39 - 8) + 104))(v42, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v30 + 8))(v12, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v73);
}

uint64_t _s9DepthCore14UnderwaterTimeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882AB78();
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v65 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v65 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v70 = &v65 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = type metadata accessor for UnderwaterTime(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v65 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA538, &qword_24882F328);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v65 - v32;
  v34 = &v65 + *(v31 + 56) - v32;
  sub_24881A4FC(a1, &v65 - v32);
  sub_24881A4FC(a2, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24881A4FC(v33, v29);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v72 + 8))(v29, v71);
LABEL_16:
        sub_24881DE14(v33);
LABEL_17:
        v46 = 0;
        return v46 & 1;
      }

      v62 = v71;
      v61 = v72;
      (*(v72 + 32))(v20, v34, v71);
      v46 = sub_24882AB48();
      v63 = *(v61 + 8);
      v63(v20, v62);
      v63(v29, v62);
LABEL_19:
      sub_24881A600(v33);
      return v46 & 1;
    }

    sub_24881A4FC(v33, v27);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v58 = *(v72 + 8);
      v59 = &v27[v47];
      v60 = v71;
      v58(v59, v71);
      v58(v27, v60);
      goto LABEL_16;
    }

    v49 = v71;
    v48 = v72;
    v50 = *(v72 + 32);
    v51 = v66;
    v50(v66, v34, v71);
    v50(v70, &v27[v47], v49);
    v50(v14, &v34[v47], v49);
    v52 = sub_24882AB48();
    v53 = *(v48 + 8);
    v53(v27, v49);
    if (v52)
    {
      v54 = v70;
      v46 = sub_24882AB48();
      v53(v14, v49);
      v53(v54, v49);
      v53(v51, v49);
      goto LABEL_19;
    }

    v53(v14, v49);
    v53(v70, v49);
    v53(v51, v49);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24881A4FC(v33, v24);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA190, &qword_24882D520) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v55 = *(v72 + 8);
      v56 = &v24[v36];
      v57 = v71;
      v55(v56, v71);
      v55(v24, v57);
      goto LABEL_16;
    }

    v38 = v71;
    v37 = v72;
    v39 = *(v72 + 32);
    v40 = v69;
    v39(v69, v34, v71);
    v41 = v68;
    v39(v68, &v24[v36], v38);
    v42 = &v34[v36];
    v43 = v67;
    v39(v67, v42, v38);
    v44 = sub_24882AB48();
    v45 = *(v37 + 8);
    v45(v24, v38);
    if (v44)
    {
      v46 = sub_24882AB48();
      v45(v43, v38);
      v45(v41, v38);
      v45(v40, v38);
      goto LABEL_19;
    }

    v45(v43, v38);
    v45(v41, v38);
    v45(v40, v38);
LABEL_23:
    sub_24881A600(v33);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

  sub_24881A600(v33);
  v46 = 1;
  return v46 & 1;
}

unint64_t sub_24881D23C()
{
  result = qword_27EEAA448;
  if (!qword_27EEAA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA448);
  }

  return result;
}

unint64_t sub_24881D290()
{
  result = qword_27EEAA450;
  if (!qword_27EEAA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA450);
  }

  return result;
}

unint64_t sub_24881D2E4()
{
  result = qword_27EEAA458;
  if (!qword_27EEAA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA458);
  }

  return result;
}

unint64_t sub_24881D338()
{
  result = qword_27EEAA460;
  if (!qword_27EEAA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA460);
  }

  return result;
}

unint64_t sub_24881D38C()
{
  result = qword_27EEAA468;
  if (!qword_27EEAA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA468);
  }

  return result;
}

uint64_t sub_24881D3E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24882AB78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24881D44C(uint64_t a1)
{
  sub_2488117C0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnderwaterTime(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24881D520(uint64_t a1)
{
  sub_24881D594();
  if (v1 <= 0x3F)
  {
    sub_24881D5DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24881D594()
{
  if (!qword_27EEAA4B8)
  {
    v0 = sub_24882AB78();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEAA4B8);
    }
  }
}

void sub_24881D5DC(uint64_t a1)
{
  if (!qword_27EEAA4C0)
  {
    sub_24882AB78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EEAA4C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for UnderwaterTime.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnderwaterTime.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24881D7D8()
{
  result = qword_27EEAA4C8;
  if (!qword_27EEAA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4C8);
  }

  return result;
}

unint64_t sub_24881D830()
{
  result = qword_27EEAA4D0;
  if (!qword_27EEAA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4D0);
  }

  return result;
}

unint64_t sub_24881D888()
{
  result = qword_27EEAA4D8;
  if (!qword_27EEAA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4D8);
  }

  return result;
}

unint64_t sub_24881D8E0()
{
  result = qword_27EEAA4E0;
  if (!qword_27EEAA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4E0);
  }

  return result;
}

unint64_t sub_24881D938()
{
  result = qword_27EEAA4E8;
  if (!qword_27EEAA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4E8);
  }

  return result;
}

unint64_t sub_24881D990()
{
  result = qword_27EEAA4F0;
  if (!qword_27EEAA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4F0);
  }

  return result;
}

unint64_t sub_24881D9E8()
{
  result = qword_27EEAA4F8;
  if (!qword_27EEAA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA4F8);
  }

  return result;
}

unint64_t sub_24881DA40()
{
  result = qword_27EEAA500;
  if (!qword_27EEAA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA500);
  }

  return result;
}

unint64_t sub_24881DA98()
{
  result = qword_27EEAA508;
  if (!qword_27EEAA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA508);
  }

  return result;
}

unint64_t sub_24881DAF0()
{
  result = qword_27EEAA510;
  if (!qword_27EEAA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA510);
  }

  return result;
}

unint64_t sub_24881DB48()
{
  result = qword_27EEAA518;
  if (!qword_27EEAA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA518);
  }

  return result;
}

unint64_t sub_24881DBA0()
{
  result = qword_27EEAA520;
  if (!qword_27EEAA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA520);
  }

  return result;
}

unint64_t sub_24881DBF8()
{
  result = qword_27EEAA528;
  if (!qword_27EEAA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA528);
  }

  return result;
}

unint64_t sub_24881DC50()
{
  result = qword_27EEAA530;
  if (!qword_27EEAA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA530);
  }

  return result;
}

uint64_t sub_24881DCA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1869768058 && a2 == 0xE400000000000000;
  if (v3 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76697461746E6574 && a2 == 0xE900000000000065 || (sub_24882B4B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_24882B4B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24881DE14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA538, &qword_24882F328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InSessionRecoveryData.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InSessionRecoveryData.sessionUUID.setter(uint64_t a1)
{
  v3 = sub_24882ABE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InSessionRecoveryData.underwaterTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InSessionRecoveryData(0) + 20);

  return sub_24881E024(a1, v3);
}

uint64_t sub_24881E024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnderwaterTime(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InSessionRecoveryData.maxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for InSessionRecoveryData(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t InSessionRecoveryData.maxDepth.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for InSessionRecoveryData(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

__n128 InSessionRecoveryData.temperatureRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InSessionRecoveryData(0) + 28));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t InSessionRecoveryData.temperatureRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for InSessionRecoveryData(0);
  v6 = v1 + *(result + 28);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t InSessionRecoveryData.didHaveActiveRuntimeSession.setter(char a1)
{
  result = type metadata accessor for InSessionRecoveryData(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t InSessionRecoveryData.init(sessionUUID:underwaterTime:maxDepth:temperatureRange:didHaveActiveRuntimeSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = sub_24882ABE8();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for InSessionRecoveryData(0);
  result = sub_24881F7CC(a2, a6 + v16[5], type metadata accessor for UnderwaterTime);
  v18 = a6 + v16[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  v19 = a6 + v16[7];
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  *(a6 + v16[8]) = a5;
  return result;
}

uint64_t sub_24881E3F4()
{
  v1 = *v0;
  v2 = 0x556E6F6973736573;
  v3 = 0x687470654478616DLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461777265646E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24881E4AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_248820878(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24881E4E0(uint64_t a1)
{
  v2 = sub_24881E828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881E51C(uint64_t a1)
{
  v2 = sub_24881E828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InSessionRecoveryData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA540, &qword_24882F330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881E828();
  sub_24882B568();
  LOBYTE(v15) = 0;
  sub_24882ABE8();
  sub_24881E87C(&qword_27EEAA1A8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_24882B488();
  if (!v2)
  {
    v9 = type metadata accessor for InSessionRecoveryData(0);
    LOBYTE(v15) = 1;
    type metadata accessor for UnderwaterTime(0);
    sub_24881E87C(&qword_27EEAA550, type metadata accessor for UnderwaterTime, &protocol conformance descriptor for UnderwaterTime);
    sub_24882B488();
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *&v15 = v11;
    BYTE8(v15) = v10;
    v17 = 2;
    sub_24880EAB4();
    sub_24882B488();
    v12 = (v3 + *(v9 + 28));
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 3;
    sub_24880EB08();
    sub_24882B488();
    LOBYTE(v15) = 4;
    sub_24882B468();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24881E828()
{
  result = qword_27EEAA548;
  if (!qword_27EEAA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEAA548);
  }

  return result;
}

uint64_t sub_24881E87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InSessionRecoveryData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for UnderwaterTime(0);
  MEMORY[0x28223BE20](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24882ABE8();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA558, &qword_24882F338);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v22 - v7;
  v9 = type metadata accessor for InSessionRecoveryData(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881E828();
  v27 = v8;
  v12 = v29;
  sub_24882B558();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v11;
  v14 = v23;
  LOBYTE(v30) = 0;
  sub_24881E87C(&qword_27EEAA1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_24882B418();
  v15 = *(v14 + 32);
  v29 = v5;
  v15(v13, v26, v5);
  LOBYTE(v30) = 1;
  sub_24881E87C(&qword_27EEAA560, type metadata accessor for UnderwaterTime, &protocol conformance descriptor for UnderwaterTime);
  sub_24882B418();
  sub_24881F7CC(v4, v13 + v9[5], type metadata accessor for UnderwaterTime);
  v32 = 2;
  sub_24880ED44();
  sub_24882B418();
  v16 = BYTE8(v30);
  v17 = v13 + v9[6];
  *v17 = v30;
  *(v17 + 8) = v16;
  v32 = 3;
  sub_24880ED98();
  sub_24882B418();
  v19 = v31;
  v20 = v13 + v9[7];
  *v20 = v30;
  *(v20 + 16) = v19;
  LOBYTE(v30) = 4;
  v21 = sub_24882B3F8();
  (*(v25 + 8))(v27, v28);
  *(v13 + v9[8]) = v21 & 1;
  sub_24881EDE4(v13, v22, type metadata accessor for InSessionRecoveryData);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24881EE4C(v13, type metadata accessor for InSessionRecoveryData);
}

uint64_t sub_24881EDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24881EE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24881EEDC()
{
  v1 = 0x6F69737365536E69;
  if (*v0 != 1)
  {
    v1 = 0x7972616D6D7573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24881EF34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_248820A40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24881EF5C(uint64_t a1)
{
  v2 = sub_24881F778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881EF98(uint64_t a1)
{
  v2 = sub_24881F778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881EFD4(uint64_t a1)
{
  v2 = sub_24881F888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881F010(uint64_t a1)
{
  v2 = sub_24881F888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881F04C(uint64_t a1)
{
  v2 = sub_24881F8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881F088(uint64_t a1)
{
  v2 = sub_24881F8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24881F0C4(uint64_t a1)
{
  v2 = sub_24881F834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24881F100(uint64_t a1)
{
  v2 = sub_24881F834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionRecoveryData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA568, &qword_24882F340);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v28 - v3;
  v34 = type metadata accessor for DescentSummary(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA570, &qword_24882F348);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - v6;
  v29 = type metadata accessor for InSessionRecoveryData(0);
  MEMORY[0x28223BE20](v29);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA578, &qword_24882F350);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for SessionRecoveryData(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA580, &qword_24882F358);
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24881F778();
  sub_24882B568();
  sub_24881EDE4(v39, v13, type metadata accessor for SessionRecoveryData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v35;
      sub_24881F7CC(v13, v35, type metadata accessor for DescentSummary);
      v43 = 2;
      sub_24881F834();
      v19 = v36;
      v20 = v40;
      sub_24882B438();
      sub_24881E87C(&qword_27EEAA598, type metadata accessor for DescentSummary, &protocol conformance descriptor for DescentSummary);
      v21 = v38;
      sub_24882B488();
      (*(v37 + 8))(v19, v21);
      sub_24881EE4C(v18, type metadata accessor for DescentSummary);
      return (*(v14 + 8))(v16, v20);
    }

    else
    {
      v41 = 0;
      sub_24881F8DC();
      v27 = v40;
      sub_24882B438();
      (*(v28 + 8))(v10, v8);
      return (*(v14 + 8))(v16, v27);
    }
  }

  else
  {
    v23 = v30;
    sub_24881F7CC(v13, v30, type metadata accessor for InSessionRecoveryData);
    v42 = 1;
    sub_24881F888();
    v24 = v31;
    v25 = v40;
    sub_24882B438();
    sub_24881E87C(&qword_27EEAA5A8, type metadata accessor for InSessionRecoveryData, &protocol conformance descriptor for InSessionRecoveryData);
    v26 = v33;
    sub_24882B488();
    (*(v32 + 8))(v24, v26);
    sub_24881EE4C(v23, type metadata accessor for InSessionRecoveryData);
    return (*(v14 + 8))(v16, v25);
  }
}