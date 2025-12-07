uint64_t sub_21DD70BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_21DD8BFE8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_21DD70CD4(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  _Block_copy(a4);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v12 = sub_21DD8BF08();
  __swift_project_value_buffer(v12, qword_281221D58);
  v13 = a2;
  v14 = sub_21DD8BEE8();
  v15 = sub_21DD8C1E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_21DD6F000, v14, v15, "Launching app with options: %@", v16, 0xCu);
    sub_21DD71200(v17, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v17, -1, -1);
    MEMORY[0x223D47710](v16, -1, -1);
  }

  sub_21DD71260(a1, v13, v37);
  sub_21DD83564(v37, v35, &unk_27CE8EF70, &unk_21DD8D580);
  sub_21DD83564(v35, v34, &unk_27CE8EF70, &unk_21DD8D580);
  v19 = swift_allocObject();
  v20 = v35[1];
  *(v19 + 16) = v35[0];
  *(v19 + 32) = v20;
  *(v19 + 48) = v36;
  *(v19 + 56) = sub_21DD74F24;
  *(v19 + 64) = v11;
  sub_21DD83564(v37, &v29, &unk_27CE8EF70, &unk_21DD8D580);
  v21 = v30;

  if (v21)
  {
    sub_21DD71200(v34, &unk_27CE8EF70, &unk_21DD8D580);
    sub_21DD72A14(&v29, v31);
    v22 = sub_21DD8C198();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    sub_21DD73140(v31, &v29);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    sub_21DD72A14(&v29, (v23 + 4));
    v23[9] = a3;
    v23[10] = sub_21DD74F44;
    v23[11] = v19;
    v23[12] = a1;
    v23[13] = v13;
    v24 = v13;

    sub_21DD8426C(0, 0, v10, &unk_21DD8D718, v23);

    sub_21DD71200(v10, &unk_27CE8EED0, &unk_21DD8D6B0);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_21DD71200(&v29, &unk_27CE8EF70, &unk_21DD8D580);
    v25 = sub_21DD74CEC();
    if ((isInternal() & 1) == 0)
    {
      sub_21DD83564(v34, v31, &unk_27CE8EF70, &unk_21DD8D580);
      v26 = v32;
      if (v32)
      {
        v27 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        (*(v27 + 104))(v26, v27);
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        sub_21DD71200(v31, &unk_27CE8EF70, &unk_21DD8D580);
      }
    }

    (a4)[2](a4, v25);

    sub_21DD71200(v34, &unk_27CE8EF70, &unk_21DD8D580);
  }

  sub_21DD71200(v37, &unk_27CE8EF70, &unk_21DD8D580);
}

uint64_t sub_21DD71188()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21DD71200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21DD71260(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v62 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDD0, &qword_21DD8D1D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDD8, &qword_21DD8D1D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - v17;
  v19 = sub_21DD8BD58();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  v26 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  if (!*(v26 + 1))
  {
    goto LABEL_4;
  }

  sub_21DD8BC98();

  sub_21DD71A38(v23, v18);
  v27 = *(v20 + 8);
  v27(v23, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_21DD71200(v18, &qword_27CE8EDC8, &qword_21DD8D500);
LABEL_4:
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v28 = sub_21DD8BF08();
    __swift_project_value_buffer(v28, qword_281221D58);
    v29 = sub_21DD8BEE8();
    v30 = sub_21DD8C1D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21DD6F000, v29, v30, "Invalid log_path.", v31, 2u);
      MEMORY[0x223D47710](v31, -1, -1);
    }

LABEL_9:
    v32 = v62;
    *(v62 + 32) = 0;
    *v32 = 0u;
    v32[1] = 0u;
    return;
  }

  (*(v20 + 32))(v25, v18, v19);
  v33 = v61;
  if (v61 <= 1)
  {
    if (!v61)
    {
      sub_21DD85584(0, a2, v15);
      v46 = type metadata accessor for PanicLog(0);
      if ((*(*(v46 - 8) + 48))(v15, 1, v46) == 1)
      {
        v27(v25, v19);
        v38 = &qword_27CE8EDD8;
        v39 = &qword_21DD8D1D8;
        v40 = v15;
        goto LABEL_26;
      }

      v57 = v62;
      *(v62 + 24) = v46;
      v57[4] = &off_282F1C410;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v44 = type metadata accessor for PanicLog;
      v45 = v15;
      goto LABEL_34;
    }

    if (v61 == 1)
    {
      (*(v20 + 16))(v23, v25, v19);
      v34 = v58;
      v35 = v58;
      v36 = 3;
      goto LABEL_21;
    }

LABEL_27:
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v48 = sub_21DD8BF08();
    __swift_project_value_buffer(v48, qword_281221D58);
    v49 = sub_21DD8BEE8();
    v50 = sub_21DD8C1D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v33;
      v53 = v19;
      v54 = v51;
      *v51 = 134217984;
      *(v51 + 4) = v52;
      _os_log_impl(&dword_21DD6F000, v49, v50, "Invalid Log Type %ld", v51, 0xCu);
      v55 = v54;
      v19 = v53;
      MEMORY[0x223D47710](v55, -1, -1);
    }

    v27(v25, v19);
    goto LABEL_9;
  }

  if (v61 != 2)
  {
    if (v61 == 3)
    {
      (*(v20 + 16))(v23, v25, v19);
      v34 = v59;
      v35 = v59;
      v36 = 1;
      goto LABEL_21;
    }

    if (v61 == 4)
    {
      (*(v20 + 16))(v23, v25, v19);
      v34 = v60;
      v35 = v60;
      v36 = 2;
LABEL_21:
      sub_21DD7203C(v36, v23, v35);
      v41 = type metadata accessor for CrashLog(0);
      if ((*(*(v41 - 8) + 48))(v34, 1, v41) == 1)
      {
        v27(v25, v19);
        v38 = &qword_27CE8EDD0;
        v39 = &qword_21DD8D1D0;
        v40 = v34;
        goto LABEL_26;
      }

      v42 = v62;
      *(v62 + 24) = v41;
      v42[4] = &off_282F1BFC0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
      v44 = type metadata accessor for CrashLog;
      v45 = v34;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  (*(v20 + 16))(v23, v25, v19);
  sub_21DD7203C(0, v23, v12);
  v37 = type metadata accessor for CrashLog(0);
  if ((*(*(v37 - 8) + 48))(v12, 1, v37) == 1)
  {
    v27(v25, v19);
    v38 = &qword_27CE8EDD0;
    v39 = &qword_21DD8D1D0;
    v40 = v12;
LABEL_26:
    sub_21DD71200(v40, v38, v39);
    v47 = v62;
    *v62 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0;
    return;
  }

  v56 = v62;
  *(v62 + 24) = v37;
  v56[4] = &off_282F1BFC0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  v44 = type metadata accessor for CrashLog;
  v45 = v12;
LABEL_34:
  sub_21DD730D8(v45, boxed_opaque_existential_1, v44);
  v27(v25, v19);
}

uint64_t sub_21DD71A38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_21DD8BD58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v44 = [objc_opt_self() defaultManager];
  if (sub_21DD8BCF8())
  {
    sub_21DD8BCE8();
    sub_21DD8BD28();
    v16 = sub_21DD8BFC8();

    v17 = v44;
    v18 = [v44 fileExistsAtPath_];

    if (v18)
    {
      sub_21DD8BD28();
      v19 = sub_21DD8BFC8();

      v20 = [v17 isReadableFileAtPath_];

      if (v20)
      {

        v21 = v43;
        (*(v7 + 32))(v43, v15, v6);
LABEL_15:
        v40 = 0;
        return (*(v7 + 56))(v21, v40, 1, v6);
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      sub_21DD8C2D8();

      v23 = 0x800000021DD8E300;
      v24 = 0xD000000000000018;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_21DD8C2D8();

      v23 = 0x800000021DD8E2E0;
      v24 = 0xD000000000000016;
    }

    v45 = v24;
    v46 = v23;
    v25 = sub_21DD8BD28();
    MEMORY[0x223D46C80](v25);

    v22 = sub_21DD7A99C(v45, v46);

    swift_willThrow();
    (*(v7 + 8))(v15, v6);
  }

  else
  {
    v22 = sub_21DD7A99C(0xD000000000000018, 0x800000021DD8E2C0);
    swift_willThrow();
  }

  sub_21DD7871C(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {

    v39 = *(v7 + 32);
    v39(v13, v5, v6);
    v21 = v43;
    v39(v43, v13, v6);
    goto LABEL_15;
  }

  sub_21DD71200(v5, &qword_27CE8EDC8, &qword_21DD8D500);
  if (qword_27CE8ED50 != -1)
  {
    swift_once();
  }

  v26 = sub_21DD8BF08();
  __swift_project_value_buffer(v26, qword_27CE8FEF0);
  (*(v7 + 16))(v10, a1, v6);
  v27 = v22;
  v28 = sub_21DD8BEE8();
  v29 = sub_21DD8C1D8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446466;
    sub_21DD79364();
    v32 = sub_21DD8C418();
    v34 = v33;
    (*(v7 + 8))(v10, v6);
    v35 = sub_21DD74A90(v32, v34, &v45);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    swift_getErrorValue();
    v36 = sub_21DD8C448();
    v38 = sub_21DD74A90(v36, v37, &v45);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_21DD6F000, v28, v29, "Error accessing %{public}s. %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D47710](v31, -1, -1);
    MEMORY[0x223D47710](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v40 = 1;
  v21 = v43;
  return (*(v7 + 56))(v21, v40, 1, v6);
}

uint64_t sub_21DD7203C@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = a1;
  v6 = sub_21DD8BD58();
  v75 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v69 = &v61[-v10];
  v11 = type metadata accessor for CrashLog(0);
  v73 = *(v11 - 1);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v14 + *(v12 + 32));
  *v15 = 0x6873617243;
  v15[1] = 0xE500000000000000;
  if (v5 == 4)
  {
    v16 = 3;
  }

  else
  {
    v16 = a1;
  }

  *(v14 + 16) = v16;
  v17 = *(v7 + 16);
  v67 = *(v12 + 28);
  (v17)(v14 + v67, a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED90, &qword_21DD8D090);
  v71 = v7;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DD8CF30;
  v72 = a2;
  v68 = v17;
  (v17)(v19 + v18, a2, v6);
  v20 = v11[9];
  v65 = v19;
  *(v14 + v20) = v19;
  v70 = sub_21DD728E4(MEMORY[0x277D84F90]);
  if (!v16)
  {
    goto LABEL_9;
  }

  v21 = sub_21DD8C428();

  v22 = &off_282F1BF18;
  v23 = &type metadata for CriticalPolicy;
  if (v21)
  {
    goto LABEL_10;
  }

  if (v16 == 1)
  {
LABEL_9:

    v22 = &off_282F1BF18;
    v23 = &type metadata for CriticalPolicy;
  }

  else
  {
    v24 = sub_21DD8C428();

    if ((v24 & 1) == 0)
    {
      v23 = &type metadata for DefaultPolicy;
      v22 = &off_282F1C4A0;
    }
  }

LABEL_10:
  v25 = v68;
  *(&v79 + 1) = v23;
  v80 = v22;
  v26 = v11[11];
  sub_21DD72A14(&v78, &v26[v14]);
  sub_21DD8BEA8();
  v27 = v72;
  v28 = v75;
  (v25)(v69, v72, v75);
  if (sub_21DD8BE88())
  {
    v69 = v11;
    v29 = v11[10];
    v30 = sub_21DD8BE78();

    *(v14 + v29) = v30;
    *v14 = sub_21DD8BE98();
    *(v14 + 8) = v31;
    v32 = sub_21DD8BFE8();
    v34 = v33;
    sub_21DD8BC08();
    swift_allocObject();
    v35 = sub_21DD8BBF8();
    v78 = 0uLL;
    v36 = MEMORY[0x28223BE20](v35);
    *&v61[-48] = v27;
    *&v61[-40] = v32;
    *&v61[-32] = v34;
    *&v61[-24] = 128;
    *&v61[-16] = &v78;
    v76 = 0;
    v77 = v36;
    sub_21DD72A38(sub_21DD72B14);

    v37 = *(&v78 + 1);
    if (*(&v78 + 1))
    {
      v38 = v78;

      (*(v71 + 8))(v27, v75);
    }

    else
    {
      v52 = v75;
      if (*(v30 + 16) && (v53 = sub_21DD72C7C(1701667182, 0xE400000000000000), (v54 & 1) != 0))
      {
        sub_21DD72CF4(*(v30 + 56) + 32 * v53, &v78);
      }

      else
      {

        v78 = 0u;
        v79 = 0u;
      }

      (*(v71 + 8))(v27, v52);
      if (*(&v79 + 1))
      {
        v57 = swift_dynamicCast();
        if (v57)
        {
          v37 = v77;
        }

        else
        {
          v37 = 0;
        }

        if (v57)
        {
          v38 = v76;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        sub_21DD774CC(&v78);
        v37 = 0;
        v38 = 0;
      }
    }

    v58 = v69;
    v59 = (v14 + *(v69 + 12));
    *v59 = v38;
    v59[1] = v37;
    *(v14 + 17) = 0;
    v60 = v74;
    sub_21DD72E08(v14, v74);
    (*(v73 + 56))(v60, 0, 1, v58);
    return sub_21DD72E6C(v14);
  }

  else
  {
    v69 = v26;
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v39 = sub_21DD8BF08();
    __swift_project_value_buffer(v39, qword_281221D58);
    v40 = v66;
    (v25)(v66, v27, v28);
    v41 = sub_21DD8BEE8();
    v42 = sub_21DD8C1D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v63 = v43;
      v68 = swift_slowAlloc();
      *&v78 = v68;
      *v43 = 136446210;
      v64 = v41;
      v44 = sub_21DD8BC88();
      v46 = v45;
      v62 = v42;
      v47 = *(v71 + 8);
      v47(v40, v28);
      v48 = sub_21DD74A90(v44, v46, &v78);

      v49 = v63;
      v50 = v64;
      *(v63 + 1) = v48;
      _os_log_impl(&dword_21DD6F000, v50, v62, "Unable to read header from URL: %{public}s", v49, 0xCu);
      v51 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x223D47710](v51, -1, -1);
      MEMORY[0x223D47710](v49, -1, -1);
    }

    else
    {

      v47 = *(v71 + 8);
      v47(v40, v28);
    }

    v47(v27, v28);
    v55 = v69;
    v47((v14 + v67), v28);

    __swift_destroy_boxed_opaque_existential_1(&v55[v14]);
    return (*(v73 + 56))(v74, 1, 1, v11);
  }
}

uint64_t type metadata accessor for CrashLog(uint64_t a1)
{
  result = qword_281221D28;
  if (!qword_281221D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DD728E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF00, &qword_21DD8D520);
    v3 = sub_21DD8C378();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DD83564(v4, &v13, &unk_27CE8EEF0, &unk_21DD8D740);
      v5 = v13;
      v6 = v14;
      result = sub_21DD72C7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21DD74E40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21DD72A14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21DD72A38(void (*a1)(uint64_t, uint64_t))
{
  result = sub_21DD8BD78();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_21DD8BBC8();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_21DD8BBE8();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_21DD8BBD8();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

uint64_t sub_21DD72B38(uint64_t result)
{
  if (result)
  {
    MEMORY[0x28223BE20](result);
    return sub_21DD8BD18();
  }

  return result;
}

uint64_t sub_21DD72BE0(const char *a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t *a6)
{
  v10 = sub_21DD8C068();
  v11 = getxattr(a1, (v10 + 32), a4, a5, 0, 0);

  if (v11 >= 1)
  {
    *a6 = MEMORY[0x223D46C50](a4);
    a6[1] = v13;
  }

  return result;
}

unint64_t sub_21DD72C7C(uint64_t a1, uint64_t a2)
{
  sub_21DD8C458();
  sub_21DD8C098();
  v4 = sub_21DD8C478();

  return sub_21DD72D50(a1, a2, v4);
}

uint64_t sub_21DD72CF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21DD72D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21DD8C428())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21DD72E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD72E6C(uint64_t a1)
{
  v2 = type metadata accessor for CrashLog(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DD72EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DD8BD58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DD72FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DD8BD58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21DD730D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DD73140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21DD73240(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DD83BD8;

  return sub_21DD732F8(a1, v4);
}

uint64_t sub_21DD732F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21DD75048;

  return v6(a1);
}

uint64_t sub_21DD733F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21DD74F54;

  return sub_21DD734DC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_21DD734DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[61] = a8;
  v8[62] = v12;
  v8[59] = a6;
  v8[60] = a7;
  v8[58] = a4;
  v9 = sub_21DD8BD58();
  v8[63] = v9;
  v8[64] = *(v9 - 8);
  v8[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DD735D8, 0, 0);
}

uint64_t sub_21DD735D8()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  sub_21DD73CD4(*(v0 + 464), v0 + 16);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DD8BF08();
  __swift_project_value_buffer(v1, qword_281221D58);
  sub_21DD74C68(v0 + 16, v0 + 72);
  v2 = sub_21DD8BEE8();
  v3 = sub_21DD8C1C8();
  sub_21DD74CBC(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v66[0] = v5;
    *v4 = 136315138;
    v6 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v6;
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = *(v0 + 64);
    sub_21DD74C68(v0 + 16, v0 + 184);
    v7 = sub_21DD8C048();
    v9 = sub_21DD74A90(v7, v8, v66);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_21DD6F000, v2, v3, "Feedback alert type: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x223D47710](v5, -1, -1);
    MEMORY[0x223D47710](v4, -1, -1);
  }

  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  if (!*(v0 + 65))
  {
    v20 = *(v0 + 464);
    *(v0 + 296) = v10;
    *(v0 + 304) = v11;
    *(v0 + 312) = v13;
    *(v0 + 320) = v12;
    *(v0 + 328) = v14;
    *(v0 + 336) = v15;
    *(v0 + 344) = v16;
    sub_21DD8540C(v0 + 296, v0 + 352);
    v21 = sub_21DD84BCC(v20);
    if (v21)
    {
      v22 = v21;
      *(v0 + 456) = 0;
      CFUserNotificationReceiveResponse(v21, 0.0, (v0 + 456));
      v23 = *(v0 + 456);
      if (!v23)
      {
        v37 = sub_21DD8BEE8();
        v38 = sub_21DD8C1B8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_21DD6F000, v37, v38, "Chose default response. Showing app.", v39, 2u);
          MEMORY[0x223D47710](v39, -1, -1);
        }

        v40 = *(v0 + 464);

        v41 = v40[3];
        v42 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v65 = (*(v42 + 72))(v41, v42);
        v44 = v43;
        v45 = v40[3];
        v46 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v45);
        (*(v46 + 24))(v45, v46);
        v47 = sub_21DD8C058();
        v49 = v48;

        v51 = v40[3];
        v50 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v51);
        v52 = (*(v50 + 32))(v51, v50);
        if (*(v52 + 16))
        {
          v53 = *(v0 + 520);
          v64 = v44;
          v54 = v47;
          v56 = *(v0 + 504);
          v55 = *(v0 + 512);
          (*(v55 + 16))(v53, v52 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v56);

          v57 = sub_21DD8BD28();
          v59 = v58;
          (*(v55 + 8))(v53, v56);
          v47 = v54;
          v44 = v64;
        }

        else
        {

          v57 = 0;
          v59 = 0;
        }

        v62 = *(v0 + 320);
        *(v0 + 408) = *(v0 + 304);
        *(v0 + 424) = v62;
        *(v0 + 440) = *(v0 + 336);
        sub_21DD81658((v0 + 408), v65, v44, v47, v49, v57, v59);

        sub_21DD74CBC(v0 + 16);

        goto LABEL_38;
      }

      sub_21DD74CBC(v0 + 16);
      v24 = *(v0 + 472);
      if (v23 != 1)
      {
        v60 = sub_21DD74CEC();
        v24();

        sub_21DD74CBC(v0 + 16);
LABEL_35:

        goto LABEL_39;
      }

      CFUserNotificationCancel(v22);
      (v24)(0);
    }

    else
    {
      v36 = *(v0 + 472);
      sub_21DD74CBC(v0 + 16);
      v22 = sub_21DD74CEC();
      v36();
    }

LABEL_27:

LABEL_38:
    sub_21DD74CBC(v0 + 16);
    goto LABEL_39;
  }

  if (*(v0 + 65) == 1)
  {
    *(v0 + 240) = v10;
    *(v0 + 248) = v11;
    *(v0 + 256) = v13;
    *(v0 + 264) = v12;
    *(v0 + 272) = v14;
    *(v0 + 280) = v15;
    *(v0 + 288) = v16;
    if (qword_281221B08 != -1)
    {
      swift_once();
    }

    v17 = swift_task_alloc();
    *(v0 + 528) = v17;
    *v17 = v0;
    v17[1] = sub_21DD840B0;
    v18 = *(v0 + 464);

    return sub_21DD7C970(v18, v0 + 240);
  }

  if (*(v0 + 64) || v13 | v11 | v10 | v12 | v14 | v15 || (v25 = sub_21DD84BCC(*(v0 + 464))) == 0)
  {
    v35 = *(v0 + 472);
    v22 = sub_21DD74CEC();
  }

  else
  {
    v22 = v25;
    *(v0 + 448) = 0;
    CFUserNotificationReceiveResponse(v25, 0.0, (v0 + 448));
    v26 = *(v0 + 448);
    if (v26 != 1)
    {
      if (!v26)
      {
        v27 = sub_21DD8BEE8();
        v28 = sub_21DD8C1B8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_21DD6F000, v27, v28, "Chose default response. Showing app.", v29, 2u);
          MEMORY[0x223D47710](v29, -1, -1);
        }

        v31 = *(v0 + 488);
        v30 = *(v0 + 496);
        v33 = *(v0 + 472);
        v32 = *(v0 + 480);
        v34 = *(v0 + 464);

        sub_21DD84F28(v34, v31, v30, v33, v32);
        goto LABEL_27;
      }

      v61 = *(v0 + 472);
      v60 = sub_21DD74CEC();
      v61();

      goto LABEL_35;
    }

    v35 = *(v0 + 472);
    CFUserNotificationCancel(v22);
  }

  v35();

LABEL_39:

  v63 = *(v0 + 8);

  return v63();
}

void sub_21DD73CD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DD8BD58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!OSAIsFeedbackPromptingEnabled())
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v11 = sub_21DD8BF08();
    __swift_project_value_buffer(v11, qword_281221D58);
    v12 = sub_21DD8BEE8();
    v13 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v65 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_21DD74A90(0xD00000000000001ALL, 0x800000021DD8E6E0, v65);
    v16 = "%s Feedback prompting is disabled.";
    goto LABEL_16;
  }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (((*(v9 + 80))(v8, v9) & 1) == 0)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v17 = sub_21DD8BF08();
    __swift_project_value_buffer(v17, qword_281221D58);
    v12 = sub_21DD8BEE8();
    v13 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v65 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_21DD74A90(0xD00000000000001ALL, 0x800000021DD8E6E0, v65);
    v16 = "%s Failed isUseful check.";
LABEL_16:
    _os_log_impl(&dword_21DD6F000, v12, v13, v16, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223D47710](v15, -1, -1);
    MEMORY[0x223D47710](v14, -1, -1);
LABEL_17:

    v18 = 0;
    v19 = xmmword_21DD8D450;
    v20 = 0uLL;
    v21 = 2;
    v22 = 0uLL;
    goto LABEL_39;
  }

  has_internal_diagnostics = isForceSeedFeedbackPromptingEnabled();
  if (has_internal_diagnostics)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  *v65 = 1;
  memset(&v65[8], 0, 41);
  v65[49] = 2;
  if (!has_internal_diagnostics || (sub_21DD83614(a1) & 1) == 0)
  {
    if (!isInternal())
    {
      goto LABEL_34;
    }

    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    if ((*(v24 + 24))(v23, v24) == 0x6873617243 && v25 == 0xE500000000000000)
    {
    }

    else
    {
      v26 = sub_21DD8C428();

      if ((v26 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    if ((*(v28 + 64))(v27, v28) == 4541505 && v29 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    v30 = sub_21DD8C428();

    if ((v30 & 1) == 0)
    {
      v48 = a1[3];
      v49 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v48);
      if ((*(v49 + 64))(v48, v49) == 0x647261646E617453 && v50 == 0xE800000000000000)
      {
LABEL_25:

        goto LABEL_27;
      }

      v51 = sub_21DD8C428();

      if ((v51 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_27:
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    (*(v32 + 8))(v31, v32);
    sub_21DD896B8(v66);
    (*(v5 + 8))(v7, v4);
    v33 = v66[0];
    if (v66[0] != 1)
    {
      v35 = v66[1];
      v34 = v66[2];
      v37 = v66[3];
      v36 = v66[4];
      v38 = v66[5];
      v39 = v67;
      v61 = *v65;
      v62 = *&v65[16];
      v63 = *&v65[32];
      v64 = *&v65[48];
      sub_21DD74CBC(&v61);
      if (isShouldShowAlertEnabled() && v39 != 2 && (v39 & 1) != 0 && (sub_21DD83614(a1) & 1) != 0)
      {
        *v65 = v33;
        *&v65[8] = v35;
        *&v65[16] = v34;
        *&v65[24] = v37;
        *&v65[32] = v36;
        *&v65[40] = v38;
        *&v65[48] = v39;
      }

      else
      {
        *v65 = v33;
        *&v65[8] = v35;
        *&v65[16] = v34;
        *&v65[24] = v37;
        *&v65[32] = v36;
        *&v65[40] = v38;
        v65[48] = v39;
        v65[49] = 1;
      }
    }

    goto LABEL_34;
  }

  v61 = *v65;
  v62 = *&v65[16];
  v63 = *&v65[32];
  v64 = *&v65[48];
  sub_21DD74CBC(&v61);
  memset(v65, 0, 48);
  *&v65[48] = 512;
LABEL_34:
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v40 = sub_21DD8BF08();
  __swift_project_value_buffer(v40, qword_281221D58);
  v61 = *v65;
  v62 = *&v65[16];
  v63 = *&v65[32];
  v64 = *&v65[48];
  sub_21DD74C68(&v61, &v57);
  v41 = sub_21DD8BEE8();
  v42 = sub_21DD8C1E8();
  sub_21DD74CBC(&v61);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v52[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_21DD74A90(0xD00000000000001ALL, 0x800000021DD8E6E0, v52);
    *(v43 + 12) = 2080;
    v57 = v61;
    v58 = v62;
    v59 = v63;
    v60 = v64;
    sub_21DD74C68(&v61, &v53);
    v45 = sub_21DD8C048();
    v47 = sub_21DD74A90(v45, v46, v52);

    *(v43 + 14) = v47;
    _os_log_impl(&dword_21DD6F000, v41, v42, "%s Notice type: %s.", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D47710](v44, -1, -1);
    MEMORY[0x223D47710](v43, -1, -1);
  }

  swift_beginAccess();
  v53 = *v65;
  v54 = *&v65[16];
  v55 = *&v65[32];
  v56 = *&v65[48];
  v57 = *v65;
  v58 = *&v65[16];
  v59 = *&v65[32];
  v60 = *&v65[48];
  sub_21DD74C68(&v53, v52);
  sub_21DD74CBC(&v57);
  v19 = v53;
  v20 = v54;
  v22 = v55;
  v18 = v56;
  v21 = HIBYTE(v56);
LABEL_39:
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v22;
  *(a2 + 48) = v18;
  *(a2 + 49) = v21;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_21DD7450C()
{
  v1 = *(v0 + 16);
  if (v1 <= 1 && !*(v0 + 16))
  {
    goto LABEL_16;
  }

  v2 = sub_21DD8C428();

  if (v2)
  {
    return 1;
  }

  if (v1 == 1)
  {
LABEL_16:

    return 1;
  }

  v3 = sub_21DD8C428();

  if (v3)
  {
    return 1;
  }

  v4 = *(v0 + *(type metadata accessor for CrashLog(0) + 40));
  if ((sub_21DD74880(v4) & 1) == 0 && (sub_21DD779C8(v4) & 1) == 0)
  {
    if (*(v4 + 16))
    {
      v5 = sub_21DD72C7C(0x4449656C646E7562, 0xE800000000000000);
      if (v6)
      {
        sub_21DD72CF4(*(v4 + 56) + 32 * v5, v23);
        v7 = swift_dynamicCast();
        v8 = v7 == 0;
        v9 = v7 ? v21 : 0;
        v10 = v8 ? 0 : v22;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = sub_21DD77A6C(v9, v10);

    if (v12)
    {
      v13 = *(v0 + 8);
      if (v13 >> 60 == 15)
      {
        return 1;
      }

      v14 = *v0;
      sub_21DD8BEA8();
      sub_21DD77B88(v14, v13);
      v15 = MEMORY[0x223D46A40](v14, v13);
      if (v15)
      {
        v16 = v15;
        if (!*(v15 + 16) || (v17 = sub_21DD72C7C(0x74616E696D726574, 0xEB000000006E6F69), (v18 & 1) == 0))
        {
LABEL_31:
          sub_21DD77BDC(v14, v13);
          goto LABEL_16;
        }

        sub_21DD72CF4(*(v16 + 56) + 32 * v17, v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDA8, &qword_21DD8D180);
        if (swift_dynamicCast())
        {
          if (*(v21 + 16))
          {
            v19 = sub_21DD72C7C(1701080931, 0xE400000000000000);
            if (v20)
            {
              sub_21DD72CF4(*(v21 + 56) + 32 * v19, v23);
              sub_21DD77BDC(v14, v13);

              if (swift_dynamicCast())
              {
                return v21 != 2343432205;
              }

              return 1;
            }
          }

          goto LABEL_31;
        }
      }

      sub_21DD77BDC(v14, v13);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21DD74880(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_21DD72C7C(0x4449656C646E7562, 0xE800000000000000);
    if (v3)
    {
      sub_21DD72CF4(*(a1 + 56) + 32 * v2, v13);
      swift_dynamicCast();
    }
  }

  v4 = sub_21DD8C108();

  if (!*(a1 + 16) || (v5 = sub_21DD72C7C(0x74737269665F7369, 0xEE0079747261705FLL), (v6 & 1) == 0) || (sub_21DD72CF4(*(a1 + 56) + 32 * v5, v13), (swift_dynamicCast() & 1) == 0))
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((v4 & (v12 != 0)) != 0)
  {
    return 0;
  }

LABEL_8:
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DD8BF08();
  __swift_project_value_buffer(v7, qword_281221D58);
  v8 = sub_21DD8BEE8();
  v9 = sub_21DD8C1E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21DD6F000, v8, v9, "3rd party app crash report.", v10, 2u);
    MEMORY[0x223D47710](v10, -1, -1);
  }

  return 1;
}

unint64_t sub_21DD74A90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DD74B5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21DD72CF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21DD74B5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21DD87E00(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21DD8C328();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t get_enum_tag_for_layout_string_27DiagnosticsReporterServices8NotifierV10NoticeTypeO(uint64_t a1)
{
  if ((*(a1 + 49) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 49) & 3;
  }
}

id sub_21DD74CEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8CF30;
  *(inited + 32) = sub_21DD8BFE8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000021DD8E7C0;
  sub_21DD728E4(inited);
  swift_setDeallocating();
  sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v3 = sub_21DD8BFC8();
  v4 = sub_21DD8BF58();

  v5 = [v2 initWithDomain:v3 code:1 userInfo:v4];

  return v5;
}

_OWORD *sub_21DD74E40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21DD74E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if ((isInternal() & 1) == 0)
  {
    sub_21DD83564(a2, v9, &unk_27CE8EF70, &unk_21DD8D580);
    v6 = v10;
    if (v10)
    {
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v7 + 104))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      sub_21DD71200(v9, &unk_27CE8EF70, &unk_21DD8D580);
    }
  }

  return a3(a1);
}

uint64_t sub_21DD74F54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DD75048()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21DD75250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21DD75308()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21DD7535C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21DD7539C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21DD753DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DD8BD58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21DD754A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DD8BD58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DD75560()
{
  if (*(v0 + 16) != 1)
  {

    if (*(v0 + 32))
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_21DD755B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL sub_21DD75750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v18[0] = a1;
  v18[1] = a2;
  v19 = sub_21DD8BE58();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DD8BC38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DD8BE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED70, qword_21DD8D880);
  v10 = sub_21DD8BE48();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DD8CF30;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277CC9980], v10);
  sub_21DD802FC(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_21DD8BE28();

  (*(v3 + 8))(v5, v19);
  v14 = sub_21DD8BC28();
  LOBYTE(v12) = v15;
  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  return v16 < v20;
}

unsigned __int8 *sub_21DD75A74()
{
  result = sub_21DD7A350(0xD000000000000023, 0x800000021DD8E040);
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = result;
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_21DD75DD0(0x64uLL);
    return (v3 < 0x7FFFFFFFFFFFFFFFLL && v2 >= (v3 + 1));
  }

  return result;
}

BOOL sub_21DD75AF4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_21DD75BF0(uint64_t a1, uint64_t a2)
{
  sub_21DD8C458();
  swift_getWitnessTable();
  sub_21DD8BEC8();
  return sub_21DD8C478();
}

uint64_t sub_21DD75C58(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_21DD8BEB8();
}

void type metadata accessor for CFString()
{
  if (!qword_27CE8ED58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CE8ED58);
    }
  }
}

uint64_t sub_21DD75D8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DD75DD0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x223D47720](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x223D47720](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_21DD75EB4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED78, &unk_21DD8D190);
  inited = swift_initStackObject();
  *(inited + 32) = 0x737574617473;
  *(inited + 16) = xmmword_21DD8CF30;
  *(inited + 40) = 0xE600000000000000;
  v5 = sub_21DD8BFC8();

  *(inited + 48) = v5;
  v6 = sub_21DD8061C(inited);
  swift_setDeallocating();
  sub_21DD76770(inited + 32);
  if (*(a2 + 24))
  {
    sub_21DD76824(a2, v110);
    v7 = v111;
    if (!v111)
    {
      goto LABEL_87;
    }

    v8 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v9 = (*(v8 + 56))(v7, v8);
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v105 = v9;

    v15 = 0;
    while (v13)
    {
      v18 = v15;
LABEL_14:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = (*(v105 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v105 + 56) + 8 * v19);

      v108 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_21DD72C7C(v22, v21);
      v27 = *(v6 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_82;
      }

      v31 = v26;
      if (*(v6 + 24) >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v6;
        }

        else
        {
          v98 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
          v37 = sub_21DD8C358();
          v32 = v37;
          if (*(v6 + 16))
          {
            v38 = (v37 + 64);
            v39 = (v6 + 64);
            v40 = ((1 << *(v32 + 32)) + 63) >> 6;
            if (v32 != v6 || v38 >= &v39[8 * v40])
            {
              memmove(v38, v39, 8 * v40);
            }

            v41 = 0;
            *(v32 + 16) = *(v6 + 16);
            v42 = 1 << *(v6 + 32);
            if (v42 < 64)
            {
              v43 = ~(-1 << v42);
            }

            else
            {
              v43 = -1;
            }

            v44 = v43 & *(v6 + 64);
            v45 = (v42 + 63) >> 6;
            v99 = v45;
            if (v44)
            {
              do
              {
                v46 = __clz(__rbit64(v44));
                v103 = (v44 - 1) & v44;
LABEL_37:
                v49 = v46 | (v41 << 6);
                v50 = (*(v6 + 48) + 16 * v49);
                v51 = v50[1];
                v101 = *(*(v6 + 56) + 8 * v49);
                v52 = (*(v32 + 48) + 16 * v49);
                *v52 = *v50;
                v52[1] = v51;
                *(*(v32 + 56) + 8 * v49) = v101;

                v53 = v101;
                v45 = v99;
                v44 = v103;
              }

              while (v103);
            }

            v47 = v41;
            while (1)
            {
              v41 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_86;
              }

              if (v41 >= v45)
              {
                break;
              }

              v48 = *(v6 + 64 + 8 * v41);
              ++v47;
              if (v48)
              {
                v46 = __clz(__rbit64(v48));
                v103 = (v48 - 1) & v48;
                goto LABEL_37;
              }
            }
          }

          v25 = v98;
        }
      }

      else
      {
        sub_21DD7F7F0(v30, isUniquelyReferenced_nonNull_native);
        v32 = v6;
        v25 = sub_21DD72C7C(v22, v21);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_88;
        }
      }

      v13 &= v13 - 1;
      if (v31)
      {
        v16 = *(v32 + 56);
        v17 = *(v16 + 8 * v25);
        *(v16 + 8 * v25) = v108;
      }

      else
      {
        *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v34 = (*(v32 + 48) + 16 * v25);
        *v34 = v22;
        v34[1] = v21;
        *(*(v32 + 56) + 8 * v25) = v108;
        v35 = *(v32 + 16);
        v29 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v29)
        {
          goto LABEL_84;
        }

        *(v32 + 16) = v36;
      }

      v15 = v18;
      v6 = v32;
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        __swift_destroy_boxed_opaque_existential_1(v110);
        goto LABEL_41;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_41:
    v54 = 1 << *(a3 + 32);
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(a3 + 64);
    v57 = (v54 + 63) >> 6;

    v58 = 0;
    while (v56)
    {
      v61 = v58;
LABEL_52:
      v62 = __clz(__rbit64(v56)) | (v61 << 6);
      v63 = (*(a3 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      v66 = *(*(a3 + 56) + 8 * v62);

      v109 = v66;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v6;
      v68 = sub_21DD72C7C(v65, v64);
      v70 = *(v6 + 16);
      v71 = (v69 & 1) == 0;
      v29 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v29)
      {
        goto LABEL_81;
      }

      v73 = v69;
      if (*(v6 + 24) >= v72)
      {
        if (v67)
        {
          v74 = v6;
        }

        else
        {
          v100 = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
          v79 = sub_21DD8C358();
          v74 = v79;
          if (*(v6 + 16))
          {
            v80 = (v79 + 64);
            v81 = (v6 + 64);
            v82 = ((1 << *(v74 + 32)) + 63) >> 6;
            if (v74 != v6 || v80 >= &v81[8 * v82])
            {
              memmove(v80, v81, 8 * v82);
            }

            v83 = 0;
            *(v74 + 16) = *(v6 + 16);
            v84 = 1 << *(v6 + 32);
            if (v84 < 64)
            {
              v85 = ~(-1 << v84);
            }

            else
            {
              v85 = -1;
            }

            v86 = v85 & *(v6 + 64);
            v87 = (v84 + 63) >> 6;
            v102 = v87;
            if (v86)
            {
              do
              {
                v88 = __clz(__rbit64(v86));
                v106 = (v86 - 1) & v86;
LABEL_75:
                v91 = v88 | (v83 << 6);
                v92 = (*(v6 + 48) + 16 * v91);
                v93 = v92[1];
                v104 = *(*(v6 + 56) + 8 * v91);
                v94 = (*(v74 + 48) + 16 * v91);
                *v94 = *v92;
                v94[1] = v93;
                *(*(v74 + 56) + 8 * v91) = v104;

                v95 = v104;
                v87 = v102;
                v86 = v106;
              }

              while (v106);
            }

            v89 = v83;
            while (1)
            {
              v83 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_85;
              }

              if (v83 >= v87)
              {
                break;
              }

              v90 = *(v6 + 64 + 8 * v83);
              ++v89;
              if (v90)
              {
                v88 = __clz(__rbit64(v90));
                v106 = (v90 - 1) & v90;
                goto LABEL_75;
              }
            }
          }

          v68 = v100;
        }
      }

      else
      {
        sub_21DD7F7F0(v72, v67);
        v74 = v110[0];
        v68 = sub_21DD72C7C(v65, v64);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_88;
        }
      }

      v56 &= v56 - 1;
      if (v73)
      {
        v59 = *(v74 + 56);
        v60 = *(v59 + 8 * v68);
        *(v59 + 8 * v68) = v109;
      }

      else
      {
        *(v74 + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v76 = (*(v74 + 48) + 16 * v68);
        *v76 = v65;
        v76[1] = v64;
        *(*(v74 + 56) + 8 * v68) = v109;
        v77 = *(v74 + 16);
        v29 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v29)
        {
          goto LABEL_83;
        }

        *(v74 + 16) = v78;
      }

      v58 = v61;
      v6 = v74;
    }

    while (1)
    {
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v61 >= v57)
      {

        v96 = sub_21DD8BFC8();
        sub_21DD767D8();
        v97 = sub_21DD8BF58();
        AnalyticsSendEvent();

        return;
      }

      v56 = *(a3 + 64 + 8 * v61);
      ++v58;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

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
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  sub_21DD8C438();
  __break(1u);
}

uint64_t sub_21DD76770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED80, &qword_21DD8D058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DD767D8()
{
  result = qword_281221AA8;
  if (!qword_281221AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281221AA8);
  }

  return result;
}

uint64_t sub_21DD76824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EF70, &unk_21DD8D580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD76894(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 4541505;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x647261646E617453;
    }

    if (v3 == 2)
    {
      v5 = 0x800000021DD8DFC0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61576D6574737953;
    }

    else
    {
      v4 = 4541505;
    }

    if (v3)
    {
      v5 = 0xEE00676F64686374;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x800000021DD8DFC0;
  if (a2 != 2)
  {
    v7 = 0x647261646E617453;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x61576D6574737953;
    v6 = 0xEE00676F64686374;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DD8C428();
  }

  return v11 & 1;
}

uint64_t sub_21DD769F4()
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD76AC0(uint64_t a1)
{
  sub_21DD8C098();
}

uint64_t sub_21DD76B78(uint64_t a1)
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

unint64_t sub_21DD76C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DD7797C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DD76C70(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 4541505;
  v4 = 0x800000021DD8DFC0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x647261646E617453;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x61576D6574737953;
    v2 = 0xEE00676F64686374;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21DD76CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21DD771C4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21DD771C4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_21DD74E40(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_21DD76DF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED78, &unk_21DD8D190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D070;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  v2 = *(v0 + *(type metadata accessor for CrashLog(0) + 40));
  if (*(v2 + 16) && (v3 = sub_21DD72C7C(1701667182, 0xE400000000000000), (v4 & 1) != 0) && (sub_21DD72CF4(*(v2 + 56) + 32 * v3, v12), sub_21DD77C48(), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v11;
  }

  else
  {
    sub_21DD77C48();
    v5 = sub_21DD8C238();
  }

  *(inited + 48) = v5;
  *(inited + 56) = 0x746E656469636E69;
  *(inited + 64) = 0xEB0000000064695FLL;
  if (*(v2 + 16) && (v6 = sub_21DD72C7C(0x746E656469636E69, 0xEB0000000064695FLL), (v7 & 1) != 0) && (sub_21DD72CF4(*(v2 + 56) + 32 * v6, v12), sub_21DD77C48(), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v11;
  }

  else
  {
    sub_21DD77C48();
    v8 = sub_21DD8C238();
  }

  *(inited + 72) = v8;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_21DD8BFC8();
  v9 = sub_21DD8061C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED80, &qword_21DD8D058);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_21DD77018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21DD8BD58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21DD7708C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

unint64_t sub_21DD770E4()
{
  v1 = 4541505;
  v2 = 0xD000000000000014;
  if (*(v0 + 16) != 2)
  {
    v2 = 0x647261646E617453;
  }

  if (*(v0 + 16))
  {
    v1 = 0x61576D6574737953;
  }

  if (*(v0 + 16) <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DD77168(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

void *sub_21DD771A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DD771E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DD771C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DD773BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21DD771E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDB8, &qword_21DD8D1A0);
  v10 = *(sub_21DD8BDC8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21DD8BDC8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21DD773BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDB0, &qword_21DD8D188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21DD774CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED98, qword_21DD8D098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21DD77534(uint64_t a1)
{
  sub_21DD77778(319, &qword_281221D40, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_21DD8BD58();
    if (v2 <= 0x3F)
    {
      sub_21DD77658(319);
      if (v3 <= 0x3F)
      {
        sub_21DD776B0();
        if (v4 <= 0x3F)
        {
          sub_21DD77714();
          if (v5 <= 0x3F)
          {
            sub_21DD77778(319, &qword_281221BC8, MEMORY[0x277D837D0]);
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

void sub_21DD77658(uint64_t a1)
{
  if (!qword_281221BC0)
  {
    sub_21DD8BD58();
    v1 = sub_21DD8C168();
    if (!v2)
    {
      atomic_store(v1, &qword_281221BC0);
    }
  }
}

void sub_21DD776B0()
{
  if (!qword_281221BD0)
  {
    v0 = sub_21DD8BF78();
    if (!v1)
    {
      atomic_store(v0, &qword_281221BD0);
    }
  }
}

unint64_t sub_21DD77714()
{
  result = qword_281221D38;
  if (!qword_281221D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281221D38);
  }

  return result;
}

void sub_21DD77778(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21DD8C248();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrashLog.Type(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CrashLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DD77928()
{
  result = qword_27CE8EDA0;
  if (!qword_27CE8EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EDA0);
  }

  return result;
}

unint64_t sub_21DD7797C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DD8C388();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DD779C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_21DD72C7C(0x617465625F7369, 0xE700000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_21DD72CF4(*(a1 + 56) + 32 * v2, v6);
  result = swift_dynamicCast();
  if (result)
  {
    return v5 == 1;
  }

  return result;
}

id sub_21DD77A6C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
    v4 = [v3 allHomeScreenApplicationBundleIdentifiers];

    v5 = sub_21DD8C148();
    sub_21DD76CF8(v5);

    v6 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v7 = sub_21DD8C138();

    v8 = [v6 initWithArray_];

    v9 = sub_21DD8BFC8();
    v2 = [v8 containsObject_];
  }

  return v2;
}

uint64_t sub_21DD77B88(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21DD77BDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DD77BF0(a1, a2);
  }

  return a1;
}

uint64_t sub_21DD77BF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_21DD77C48()
{
  result = qword_281221AA0;
  if (!qword_281221AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281221AA0);
  }

  return result;
}

void sub_21DD77C94(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 24);
  if (v4(v2, v3) == 0x63696E6150 && v5 == 0xE500000000000000)
  {

    goto LABEL_20;
  }

  v7 = sub_21DD8C428();

  if (v7)
  {
LABEL_20:
    v21 = sub_21DD8BFC8();
    v22 = [objc_opt_self() bundleWithIdentifier_];

    if (v22)
    {
      sub_21DD8BC48();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC0, &qword_21DD8D1A8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21DD8CF30;
      v24 = sub_21DD8BFC8();
      v25 = MGGetStringAnswer();

      if (v25)
      {
        v26 = sub_21DD8BFE8();
        v28 = v27;

        *(v23 + 56) = MEMORY[0x277D837D0];
        *(v23 + 64) = sub_21DD783E4();
        *(v23 + 32) = v26;
        *(v23 + 40) = v28;
        sub_21DD8BFD8();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v4(v2, v3) == 0x6873617243 && v8 == 0xE500000000000000)
  {
  }

  else
  {
    v10 = sub_21DD8C428();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  if ((*(v30 + 64))(v29, v30) == 4541505 && v31 == 0xE300000000000000)
  {
    goto LABEL_31;
  }

  v33 = sub_21DD8C428();

  if (v33)
  {
    goto LABEL_32;
  }

  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  if ((*(v35 + 64))(v34, v35) == 0x61576D6574737953 && v36 == 0xEE00676F64686374)
  {
LABEL_31:

    goto LABEL_32;
  }

  v39 = sub_21DD8C428();

  if (v39)
  {
LABEL_32:
    v37 = sub_21DD8BFC8();
    v38 = [objc_opt_self() bundleWithIdentifier_];

    if (v38)
    {
      sub_21DD8BC48();

      sub_21DD8BFD8();

      return;
    }

    goto LABEL_38;
  }

LABEL_11:
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 72))(v11, v12);
  v15 = v14;
  v16 = sub_21DD8BFC8();
  v17 = [objc_opt_self() bundleWithIdentifier_];

  if (!v17)
  {
LABEL_39:
    __break(1u);
    return;
  }

  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E55;
  }

  sub_21DD8BC48();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC0, &qword_21DD8D1A8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21DD8CF30;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_21DD783E4();
  *(v20 + 32) = v19;
  *(v20 + 40) = v18;
  sub_21DD8BFD8();
}

void sub_21DD7826C(void *a1, char a2)
{
  v4 = sub_21DD8BFC8();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (v5)
  {
    sub_21DD8BC48();

    sub_21DD8BFD8();

    sub_21DD77C94(a1);
    if (a2)
    {
      v6 = "\nTap to create a radar.";

      v7 = 0xD000000000000020;
    }

    else
    {
      v6 = "Diagnostics Reporter header";

      v7 = 0xD000000000000017;
    }

    MEMORY[0x223D46C80](v7, v6 | 0x8000000000000000);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21DD783E4()
{
  result = qword_281221AE0;
  if (!qword_281221AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221AE0);
  }

  return result;
}

void sub_21DD78438(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DD8BE18();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21DD8BFB8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21DD8BFC8();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier_];

  if (v8)
  {
    sub_21DD8BC48();

    v9 = sub_21DD8BFD8();
    v24 = v10;
    v25 = v9;

    sub_21DD77C94(a1);
    v23 = v11;
    v13 = v12;
    sub_21DD8BFA8();
    v14 = sub_21DD8BFC8();
    v15 = [v7 bundleWithIdentifier_];

    sub_21DD8BE08();
    v16 = sub_21DD8C038();
    v18 = v17;
    sub_21DD8BFA8();
    v19 = sub_21DD8BFC8();
    v20 = [v7 0x2783383F8];

    sub_21DD8BE08();
    v21 = sub_21DD8C038();
    *a2 = v23;
    a2[1] = v13;
    a2[2] = v25;
    a2[3] = v24;
    a2[4] = v16;
    a2[5] = v18;
    a2[6] = v21;
    a2[7] = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21DD7871C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DD8BD58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_21DD8BD08();
  sub_21DD8BCC8();
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_21DD8BCA8();
  sub_21DD8BCD8();

  v12(v9, v2);
  v13 = [objc_opt_self() defaultManager];
  sub_21DD8BD28();
  v14 = sub_21DD8BFC8();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    (*(v3 + 32))(a1, v11, v2);
    v16 = 0;
  }

  else
  {
    v12(v11, v2);
    v16 = 1;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_21DD7895C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDF0, qword_21DD8D1E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_21DD8BDC8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_21DD771A4(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_21DD72CF4(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v9, v16, v5);
      v25 = v12;
      v17 = v9;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21DD771A4((v18 > 1), v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v9 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_21DD71200(v4, &qword_27CE8EDF0, qword_21DD8D1E0);
    return 0;
  }

  return v12;
}

uint64_t sub_21DD78C20(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_21DD8BDC8();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DD771A4(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21DD771A4((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_21DD78EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_21DD8BD58();
  v28 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = [objc_opt_self() defaultManager];
  sub_21DD8BD28();
  v14 = sub_21DD8BFC8();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    (*(v28 + 16))(a2, a1, v7);
    v16 = *(v28 + 56);

    return v16(a2, 0, 1, v7);
  }

  else
  {
    sub_21DD7871C(v6);
    if ((*(v28 + 48))(v6, 1, v7) == 1)
    {
      sub_21DD71200(v6, &qword_27CE8EDC8, &qword_21DD8D500);
      if (qword_281221BD8 != -1)
      {
        swift_once();
      }

      v18 = sub_21DD8BF08();
      __swift_project_value_buffer(v18, qword_281221D58);
      (*(v28 + 16))(v10, a1, v7);
      v19 = sub_21DD8BEE8();
      v20 = sub_21DD8C1D8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_21DD74A90(0xD000000000000015, 0x800000021DD8E2A0, &v29);
        *(v21 + 12) = 2080;
        v23 = sub_21DD8BD28();
        v25 = v24;
        (*(v28 + 8))(v10, v7);
        v26 = sub_21DD74A90(v23, v25, &v29);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_21DD6F000, v19, v20, "%s: No valid log path found for %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D47710](v22, -1, -1);
        MEMORY[0x223D47710](v21, -1, -1);
      }

      else
      {

        (*(v28 + 8))(v10, v7);
      }

      return (*(v28 + 56))(a2, 1, 1, v7);
    }

    else
    {
      v27 = *(v28 + 32);
      v27(v12, v6, v7);
      v27(a2, v12, v7);
      return (*(v28 + 56))(a2, 0, 1, v7);
    }
  }
}

unint64_t sub_21DD79364()
{
  result = qword_27CE8EDE0;
  if (!qword_27CE8EDE0)
  {
    sub_21DD8BD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EDE0);
  }

  return result;
}

unsigned __int8 *sub_21DD793BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21DD8C118();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21DD79948(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21DD8C328();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21DD79948(uint64_t a1, unint64_t a2)
{
  v2 = sub_21DD8C128();
  v6 = sub_21DD799C8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21DD799C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21DD8C258();
    if (!v9 || (v10 = v9, v11 = sub_21DD88068(v9, 0), v12 = sub_21DD79B20(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21DD8C088();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21DD8C088();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21DD8C328();
LABEL_4:

  return sub_21DD8C088();
}

unint64_t sub_21DD79B20(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21DD79D40(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21DD8C0E8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21DD8C328();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21DD79D40(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21DD8C0C8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21DD79D40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21DD8C0F8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223D46CB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_21DD79DBC(uint64_t a1)
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 operatingSystemVersionString];

  v3 = v2;
  if (!v2)
  {
    sub_21DD8BFE8();
    v3 = sub_21DD8BFC8();
  }

  v4 = sub_21DD8BFE8();
  v6 = v5;
  if (qword_281221AD0 != -1)
  {
    swift_once();
  }

  v7 = qword_281221D48;
  v8 = sub_21DD8BFC8();
  v9 = [v7 stringForKey_];

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = sub_21DD8BFE8();
  v12 = v11;

  if (v10 == v4 && v12 == v6)
  {

LABEL_13:

    goto LABEL_14;
  }

  v14 = sub_21DD8C428();

  if ((v14 & 1) == 0)
  {
    v15 = sub_21DD8BFC8();
    [v7 removeObjectForKey_];
  }

LABEL_14:
  v16 = sub_21DD8BFC8();
  [v7 setValue:v3 forKey:v16];
}

BOOL sub_21DD79FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DD8BDC8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  if (qword_281221AD0 != -1)
  {
    swift_once();
  }

  v15 = qword_281221D48;
  v30[1] = a1;
  v30[2] = a2;
  v16 = sub_21DD8BFC8();
  v17 = [v15 arrayForKey_];

  if (v17 && (v18 = sub_21DD8C148(), v17, v19 = sub_21DD7895C(v18), , v19))
  {
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  sub_21DD8BDB8();
  v20 = v19[2];

  if (v20 >= a3)
  {
    MEMORY[0x28223BE20](v21);
    v30[-4] = a4;
    v30[-3] = v22;
    v30[-2] = v14;

    v23 = sub_21DD78C20(sub_21DD7AB5C, &v30[-6], v19);

    v19 = v23;
  }

  v24 = v19[2];
  if (v24 < a3)
  {
    (*(v9 + 16))(v12, v14, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21DD86E78(0, v24 + 1, 1, v19);
    }

    v26 = v19[2];
    v25 = v19[3];
    if (v26 >= v25 >> 1)
    {
      v19 = sub_21DD86E78((v25 > 1), v26 + 1, 1, v19);
    }

    v19[2] = v26 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v12, v8);
    v27 = sub_21DD8C138();

    v28 = sub_21DD8BFC8();
    [v15 setValue:v27 forKey:v28];
  }

  else
  {
  }

  (*(v9 + 8))(v14, v8);
  return v24 >= a3;
}

unsigned __int8 *sub_21DD7A350(uint64_t a1, unint64_t a2)
{
  if (qword_281221AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_281221D48;
  v5 = sub_21DD8BFC8();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_21DD8C268();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  sub_21DD7AAEC(&v46, &v44);
  v7 = *(&v45 + 1);
  sub_21DD71200(&v44, &qword_27CE8ED98, qword_21DD8D098);
  if (v7)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DD8BF08();
    __swift_project_value_buffer(v8, qword_281221D58);

    v9 = sub_21DD8BEE8();
    v10 = sub_21DD8C1E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v44 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21DD74A90(a1, a2, &v44);
      _os_log_impl(&dword_21DD6F000, v9, v10, "Using defaults value for %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x223D47710](v12, -1, -1);
      MEMORY[0x223D47710](v11, -1, -1);
    }
  }

  else
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = sub_21DD8BFC8();
    v15 = [v13 getTaskingKey_];

    if (v15)
    {
      sub_21DD8C268();
      swift_unknownObjectRelease();
      sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);
    }

    else
    {
      sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
  }

  sub_21DD7AAEC(&v46, &v44);
  if (!*(&v45 + 1))
  {
    sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);
    v25 = &v44;
LABEL_39:
    sub_21DD71200(v25, &qword_27CE8ED98, qword_21DD8D098);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = &v46;
    goto LABEL_39;
  }

  result = v42;
  v17 = HIBYTE(v43) & 0xF;
  v18 = v42 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v19 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);

    return 0;
  }

  if ((v43 & 0x1000000000000000) == 0)
  {
    if ((v43 & 0x2000000000000000) != 0)
    {
      *&v44 = v42;
      *(&v44 + 1) = v43 & 0xFFFFFFFFFFFFFFLL;
      if (v42 == 43)
      {
        if (v17)
        {
          if (--v17)
          {
            v21 = 0;
            v32 = &v44 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v17)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_82;
        }

LABEL_93:
        __break(1u);
        return result;
      }

      if (v42 != 45)
      {
        if (v17)
        {
          v21 = 0;
          v37 = &v44;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v17)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

      if (v17)
      {
        if (--v17)
        {
          v21 = 0;
          v26 = &v44 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v17)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }
    }

    else
    {
      if ((v42 & 0x1000000000000000) != 0)
      {
        result = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_21DD8C328();
      }

      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (result)
            {
              v29 = result + 1;
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_82;
                }

                v31 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_82;
                }

                v21 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  goto LABEL_82;
                }

                ++v29;
                if (!--v17)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_82;
        }

        goto LABEL_92;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v35 = *result - 48;
              if (v35 > 9)
              {
                goto LABEL_82;
              }

              v36 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_82;
              }

              v21 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_82;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_82:
        v21 = 0;
        LOBYTE(v17) = 1;
        goto LABEL_83;
      }

      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_82;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_82;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_82;
              }

              ++v22;
              if (!--v17)
              {
                goto LABEL_83;
              }
            }
          }

LABEL_74:
          LOBYTE(v17) = 0;
LABEL_83:
          v40 = v17;
          goto LABEL_84;
        }

        goto LABEL_82;
      }

      __break(1u);
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v21 = sub_21DD793BC(v42, v43, 10);
  v40 = v41;
LABEL_84:
  sub_21DD71200(&v46, &qword_27CE8ED98, qword_21DD8D098);

  if (v40)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

id sub_21DD7A99C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8CF30;
  *(inited + 32) = sub_21DD8BFE8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_21DD728E4(inited);
  swift_setDeallocating();
  sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
  v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v7 = sub_21DD8BFC8();
  v8 = sub_21DD8BF58();

  v9 = [v6 initWithDomain:v7 code:1 userInfo:v8];

  return v9;
}

uint64_t sub_21DD7AAEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED98, qword_21DD8D098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD7AD9C(uint64_t a1)
{
  v3 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21DD7ADF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id sub_21DD7AF4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_21DD8BFC8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_21DD7AFE0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_21DD7B040(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21DD7B09C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

id DiagnosticsReporterLaunchOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticsReporterLaunchOptions.init()()
{
  *&v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  v3 = type metadata accessor for DiagnosticsReporterLaunchOptions();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21DD7B220()
{
  v1 = *v0;
  sub_21DD8C458();
  MEMORY[0x223D47040](v1);
  return sub_21DD8C478();
}

uint64_t sub_21DD7B294(uint64_t a1)
{
  v2 = *v1;
  sub_21DD8C458();
  MEMORY[0x223D47040](v2);
  return sub_21DD8C478();
}

uint64_t sub_21DD7B2D8()
{
  v1 = 0x687461705F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x74735F63696E6170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F745F73656C6966;
  }
}

uint64_t sub_21DD7B348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DD7C0EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DD7B37C(uint64_t a1)
{
  v2 = sub_21DD7B6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD7B3B8(uint64_t a1)
{
  v2 = sub_21DD7B6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

id DiagnosticsReporterLaunchOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporterLaunchOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DD7B428(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE10, " ");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD7B6CC();
  sub_21DD8C4A8();
  v9 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v13 = *(v3 + v9);
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE20, &qword_21DD8D268);
  sub_21DD7BB00(&qword_27CE8EE28, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_21DD8C408();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v12 = 1;

  sub_21DD8C3F8();

  swift_beginAccess();
  v11[7] = 2;

  sub_21DD8C3F8();
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_21DD7B6CC()
{
  result = qword_27CE8EE18;
  if (!qword_27CE8EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE18);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *DiagnosticsReporterLaunchOptions.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE30, &qword_21DD8D270);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v25 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  *&v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = MEMORY[0x277D84F90];
  v8 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  *v9 = 0;
  v9[1] = 0;
  v30 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD7B6CC();
  sub_21DD8C498();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for DiagnosticsReporterLaunchOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EE20, &qword_21DD8D268);
    v29 = 0;
    sub_21DD7BB00(&qword_27CE8EE38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v10 = v7;
    sub_21DD8C3E8();
    v11 = v28;
    v12 = v25;
    swift_beginAccess();
    *&v3[v12] = v11;

    LOBYTE(v28) = 1;
    v13 = v24;
    v14 = sub_21DD8C398();
    v16 = v15;
    swift_beginAccess();
    *v8 = v14;
    v8[1] = v16;

    v27 = 2;
    v18 = sub_21DD8C398();
    v20 = v19;
    v21 = v30;
    swift_beginAccess();
    *v21 = v18;
    v21[1] = v20;

    v22 = type metadata accessor for DiagnosticsReporterLaunchOptions();
    v26.receiver = v3;
    v26.super_class = v22;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    (*(v23 + 8))(v10, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_21DD7BB00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE8EE20, &qword_21DD8D268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_21DD7BB6C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DiagnosticsReporterLaunchOptions());
  result = DiagnosticsReporterLaunchOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t getEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DD7BFE8()
{
  result = qword_27CE8EE40;
  if (!qword_27CE8EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE40);
  }

  return result;
}

unint64_t sub_21DD7C040()
{
  result = qword_27CE8EE48;
  if (!qword_27CE8EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE48);
  }

  return result;
}

unint64_t sub_21DD7C098()
{
  result = qword_27CE8EE50;
  if (!qword_27CE8EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8EE50);
  }

  return result;
}

uint64_t sub_21DD7C0EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F745F73656C6966 && a2 == 0xEF6863617474615FLL;
  if (v4 || (sub_21DD8C428() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687461705F676F6CLL && a2 == 0xE800000000000000 || (sub_21DD8C428() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74735F63696E6170 && a2 == 0xEC000000676E6972)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DD8C428();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
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

uint64_t sub_21DD7C2AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21DD8BF08();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21DD8BEF8();
}

uint64_t Array.appendIfNotNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_21DD8C248();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *(v3 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v14, v8, v3);
  (*(v9 + 16))(v12, v14, v3);
  sub_21DD8C158();
  return (*(v9 + 8))(v14, v3);
}

id sub_21DD7C53C()
{
  result = [objc_allocWithZone(type metadata accessor for AlertDelegate()) init];
  qword_281221D50 = result;
  return result;
}

char *sub_21DD7C56C()
{
  v1 = OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter;
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_21DD8BFC8();
  v4 = [v2 initWithBundleIdentifier_];

  *&v0[v1] = v4;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AlertDelegate();
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter;
  v7 = *&v5[OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter];
  v8 = v5;
  [v7 setDelegate_];
  [*&v5[v6] setWantsNotificationResponsesDelivered];

  return v8;
}

void sub_21DD7C674(char a1)
{
  v2 = v1;
  v4 = sub_21DD8BFC8();
  v5 = sub_21DD8BFC8();
  v6 = objc_opt_self();
  v7 = [v6 actionWithIdentifier:v4 title:v5 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EF40, &qword_21DD8D560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DD8D440;
  *(v8 + 32) = v7;
  v9 = v7;
  if (a1)
  {
    v10 = sub_21DD8BFC8();
    v11 = sub_21DD8BFC8();
    v12 = [v6 actionWithIdentifier:v10 title:v11 options:0];

    sub_21DD80AB0(0, 0, v12);
  }

  v13 = sub_21DD8BFC8();
  sub_21DD834B4(0, &qword_281221AC8, 0x277CE1F80);
  v14 = sub_21DD8C138();

  v15 = sub_21DD8C138();
  v16 = [objc_opt_self() categoryWithIdentifier:v13 actions:v14 intentIdentifiers:v15 options:0];

  v17 = *(v2 + OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D440;
  *(inited + 32) = v16;
  v19 = v16;
  sub_21DD80B9C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21DD834B4(0, &qword_281221AC0, 0x277CE1F98);
  sub_21DD834FC();
  v20 = sub_21DD8C1A8();

  [v17 setNotificationCategories_];
}

uint64_t sub_21DD7C970(uint64_t a1, uint64_t a2)
{
  v3[154] = v2;
  v3[153] = a2;
  v3[152] = a1;
  v4 = sub_21DD8BDF8();
  v3[155] = v4;
  v3[156] = *(v4 - 8);
  v3[157] = swift_task_alloc();
  v5 = sub_21DD8BD58();
  v3[158] = v5;
  v3[159] = *(v5 - 8);
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v3[162] = swift_task_alloc();
  v3[163] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DD7CAE4, 0, 0);
}

uint64_t sub_21DD7CAE4()
{
  v1 = *(v0[154] + OBJC_IVAR____TtC27DiagnosticsReporterServices13AlertDelegate_userNotificationCenter);
  v0[164] = v1;
  v0[10] = v0;
  v0[15] = v0 + 169;
  v0[11] = sub_21DD7CC14;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF08, &qword_21DD8D528);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21DD7E3CC;
  v0[21] = &block_descriptor;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:6 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21DD7CC14()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1320) = v1;
  if (v1)
  {
    v2 = sub_21DD7DFCC;
  }

  else
  {
    v2 = sub_21DD7CD24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DD7CD24()
{
  if (*(v0 + 1352) == 1)
  {
    v1 = **(v0 + 1224);
    if (v1 && *(v1 + 16))
    {
      v2 = *(v0 + 1304);
      v3 = *(v0 + 1272);
      v4 = *(v0 + 1264);
      *(v0 + 1208) = *(v1 + 32);
      v5 = sub_21DD8C418();
      MEMORY[0x223D46C80](v5);

      sub_21DD8BD38();

      v6 = (*(v3 + 48))(v2, 1, v4) != 1;
    }

    else
    {
      (*(*(v0 + 1272) + 56))(*(v0 + 1304), 1, 1, *(v0 + 1264));
      v6 = 0;
    }

    v13 = *(v0 + 1216);
    sub_21DD7C674(v6);
    v14 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    *(v0 + 1328) = v14;
    sub_21DD7826C(v13, v6);

    v15 = sub_21DD8BFC8();

    [v14 setTitle_];

    v16 = sub_21DD8BFC8();

    [v14 setBody_];

    v17 = [objc_opt_self() defaultSound];
    [v14 setSound_];

    v18 = sub_21DD8BFC8();
    [v14 setCategoryIdentifier_];

    sub_21DD80720(MEMORY[0x277D84F90]);
    v19 = sub_21DD8BF58();

    [v14 setUserInfo_];

    *(v0 + 1112) = 0x79726F6765746163;
    *(v0 + 1120) = 0xE800000000000000;
    v20 = MEMORY[0x277D837D0];
    sub_21DD8C2A8();
    v21 = v13[3];
    v22 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v21);
    (*(v22 + 24))(v21, v22);
    v23 = sub_21DD8C058();
    v25 = v24;

    *(v0 + 896) = v20;
    *(v0 + 872) = v23;
    *(v0 + 880) = v25;
    v26 = [v14 userInfo];
    sub_21DD8BF68();

    if (*(v0 + 896))
    {
      sub_21DD74E40((v0 + 872), (v0 + 1000));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 1000), v0 + 312, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_21DD71200(v0 + 872, &qword_27CE8ED98, qword_21DD8D098);
      sub_21DD7F74C(v0 + 312, (v0 + 712));
      sub_21DD71200(v0 + 712, &qword_27CE8ED98, qword_21DD8D098);
    }

    sub_21DD833D8(v0 + 312);
    v28 = *(v0 + 1216);
    v29 = sub_21DD8BF58();

    [v14 setUserInfo_];

    v30 = v13[3];
    v31 = v13[4];
    __swift_project_boxed_opaque_existential_1(v28, v30);
    v32 = (*(v31 + 72))(v30, v31);
    if (v33)
    {
      v34 = v32;
      v35 = v33;
      *(v0 + 1176) = 0x4E79616C70736964;
      *(v0 + 1184) = 0xEB00000000656D61;
      sub_21DD8C2A8();
      *(v0 + 1056) = v20;
      *(v0 + 1032) = v34;
      *(v0 + 1040) = v35;
      v36 = [v14 userInfo];
      sub_21DD8BF68();

      if (*(v0 + 1056))
      {
        sub_21DD74E40((v0 + 1032), (v0 + 552));
        v37 = swift_isUniquelyReferenced_nonNull_native();
        sub_21DD7FEF0((v0 + 552), v0 + 392, v37);
      }

      else
      {
        sub_21DD71200(v0 + 1032, &qword_27CE8ED98, qword_21DD8D098);
        sub_21DD7F74C(v0 + 392, (v0 + 1064));
        sub_21DD71200(v0 + 1064, &qword_27CE8ED98, qword_21DD8D098);
      }

      sub_21DD833D8(v0 + 392);
      v38 = sub_21DD8BF58();

      [v14 setUserInfo_];
    }

    v40 = v13[3];
    v39 = v13[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 1216), v40);
    v41 = (*(v39 + 32))(v40, v39);
    if (*(v41 + 16))
    {
      v42 = *(v0 + 1288);
      v43 = *(v0 + 1272);
      v44 = *(v0 + 1264);
      (*(v43 + 16))(v42, v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v44);

      v45 = sub_21DD8BD28();
      v47 = v46;
      (*(v43 + 8))(v42, v44);
      *(v0 + 1096) = 0x656D686361747461;
      *(v0 + 1104) = 0xEA0000000000746ELL;
      v48 = MEMORY[0x277D837D0];
      sub_21DD8C2A8();
      *(v0 + 672) = v48;
      *(v0 + 648) = v45;
      *(v0 + 656) = v47;
      v49 = [v14 userInfo];
      sub_21DD8BF68();

      if (*(v0 + 672))
      {
        sub_21DD74E40((v0 + 648), (v0 + 968));
        v50 = swift_isUniquelyReferenced_nonNull_native();
        sub_21DD7FEF0((v0 + 968), v0 + 352, v50);
      }

      else
      {
        sub_21DD71200(v0 + 648, &qword_27CE8ED98, qword_21DD8D098);
        sub_21DD7F74C(v0 + 352, (v0 + 616));
        sub_21DD71200(v0 + 616, &qword_27CE8ED98, qword_21DD8D098);
      }

      sub_21DD833D8(v0 + 352);
      v51 = sub_21DD8BF58();

      [v14 setUserInfo_];
    }

    else
    {
    }

    v52 = *(v0 + 1296);
    v53 = *(v0 + 1272);
    v54 = *(v0 + 1264);
    sub_21DD83564(*(v0 + 1304), v52, &qword_27CE8EDC8, &qword_21DD8D500);
    if ((*(v53 + 48))(v52, 1, v54) == 1)
    {
      sub_21DD71200(*(v0 + 1296), &qword_27CE8EDC8, &qword_21DD8D500);
    }

    else
    {
      v55 = *(v0 + 1280);
      v56 = *(v0 + 1272);
      v57 = *(v0 + 1264);
      (*(v56 + 32))(v55, *(v0 + 1296), v57);
      *(v0 + 1160) = 0x4C52557261646172;
      *(v0 + 1168) = 0xE800000000000000;
      v58 = MEMORY[0x277D837D0];
      sub_21DD8C2A8();
      v59 = sub_21DD8BC88();
      *(v0 + 928) = v58;
      *(v0 + 904) = v59;
      *(v0 + 912) = v60;
      v61 = [v14 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 904), (v0 + 936));
      v62 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 936), v0 + 432, v62);
      sub_21DD833D8(v0 + 432);
      v63 = sub_21DD8BF58();

      [v14 setUserInfo_];

      (*(v56 + 8))(v55, v57);
    }

    v64 = *(v0 + 1224);
    v65 = v64[2];
    if (v65)
    {
      v66 = v64[4];
      v88 = v64[3];
      v89 = v64[5];
      v67 = v64[1];
      *(v0 + 1128) = 0xD000000000000012;
      *(v0 + 1136) = 0x800000021DD8E5B0;
      v68 = MEMORY[0x277D837D0];
      sub_21DD8C2A8();
      *(v0 + 608) = v68;
      *(v0 + 584) = v67;
      *(v0 + 592) = v65;

      v69 = [v14 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 584), (v0 + 840));
      v70 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 840), v0 + 272, v70);
      sub_21DD833D8(v0 + 272);
      v71 = sub_21DD8BF58();

      [v14 setUserInfo_];

      *(v0 + 1192) = 0xD000000000000015;
      *(v0 + 1200) = 0x800000021DD8E5D0;
      sub_21DD8C2A8();
      *(v0 + 704) = v68;
      *(v0 + 680) = v88;
      *(v0 + 688) = v66;

      v72 = [v14 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 680), (v0 + 808));
      v73 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 808), v0 + 512, v73);
      sub_21DD833D8(v0 + 512);
      v74 = sub_21DD8BF58();

      [v14 setUserInfo_];

      *(v0 + 1144) = 0xD000000000000010;
      *(v0 + 1152) = 0x800000021DD8E5F0;
      sub_21DD8C2A8();
      *(v0 + 768) = MEMORY[0x277D83E88];
      *(v0 + 744) = v89;
      v75 = [v14 userInfo];
      sub_21DD8BF68();

      sub_21DD74E40((v0 + 744), (v0 + 776));
      v76 = swift_isUniquelyReferenced_nonNull_native();
      sub_21DD7FEF0((v0 + 776), v0 + 472, v76);
      sub_21DD833D8(v0 + 472);
      v77 = sub_21DD8BF58();

      [v14 setUserInfo_];
    }

    v90 = *(v0 + 1312);
    v78 = *(v0 + 1256);
    v79 = *(v0 + 1248);
    v80 = *(v0 + 1240);
    [v14 setShouldBackgroundDefaultAction_];
    [v14 setShouldAuthenticateDefaultAction_];
    sub_21DD8C2D8();

    sub_21DD8BDE8();
    v81 = sub_21DD8BDD8();
    v83 = v82;
    (*(v79 + 8))(v78, v80);
    MEMORY[0x223D46C80](v81, v83);

    v84 = v14;
    v85 = sub_21DD8BFC8();

    v86 = [objc_opt_self() requestWithIdentifier:v85 content:v84 trigger:0];
    *(v0 + 1336) = v86;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21DD7DD44;
    v87 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF20, &qword_21DD8D540);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_21DD7E498;
    *(v0 + 232) = &block_descriptor_26;
    *(v0 + 240) = v87;
    [v90 addNotificationRequest:v86 withCompletionHandler:v0 + 208];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DD8BF08();
    __swift_project_value_buffer(v7, qword_281221D58);
    v8 = sub_21DD8BEE8();
    v9 = sub_21DD8C1E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21DD6F000, v8, v9, "Notifications were not authorized", v10, 2u);
      MEMORY[0x223D47710](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_21DD7DD44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1344) = v1;
  if (v1)
  {
    v2 = sub_21DD7E1B0;
  }

  else
  {
    v2 = sub_21DD7DE54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DD7DE54()
{
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DD8BF08();
  __swift_project_value_buffer(v1, qword_281221D58);
  v2 = sub_21DD8BEE8();
  v3 = sub_21DD8C1E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21DD6F000, v2, v3, "Successfully showed notification", v4, 2u);
    MEMORY[0x223D47710](v4, -1, -1);
  }

  v5 = *(v0 + 1336);
  v6 = *(v0 + 1304);

  sub_21DD71200(v6, &qword_27CE8EDC8, &qword_21DD8D500);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21DD7DFCC(uint64_t a1)
{
  swift_willThrow();
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 1320);
  v3 = sub_21DD8BF08();
  __swift_project_value_buffer(v3, qword_281221D58);
  v4 = v2;
  v5 = sub_21DD8BEE8();
  v6 = sub_21DD8C1E8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 1320);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21DD6F000, v5, v6, "Error requesting notification authorization: %@", v9, 0xCu);
    sub_21DD71200(v10, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v10, -1, -1);
    MEMORY[0x223D47710](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_21DD7E1B0(uint64_t a1)
{
  swift_willThrow();
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v2 = v1[168];
  v3 = sub_21DD8BF08();
  __swift_project_value_buffer(v3, qword_281221D58);
  v4 = v2;
  v5 = sub_21DD8BEE8();
  v6 = sub_21DD8C1D8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[168];
  v9 = v1[167];
  v10 = v1[166];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21DD6F000, v5, v6, "Failed to show UNUserNotification. Error: %@", v11, 0xCu);
    sub_21DD71200(v12, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v12, -1, -1);
    MEMORY[0x223D47710](v11, -1, -1);
  }

  else
  {
  }

  sub_21DD71200(v1[163], &qword_27CE8EDC8, &qword_21DD8D500);

  v15 = v1[1];

  return v15();
}

uint64_t sub_21DD7E3CC(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF30, &qword_21DD8D550);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21DD7E498(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF30, &qword_21DD8D550);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

id sub_21DD7E544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DD7E5AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 notification];
  v4 = [v3 request];

  v5 = [v4 content];
  v6 = [v5 userInfo];

  v7 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (*(v7 + 16) && (v8 = sub_21DD7F480(v12), (v9 & 1) != 0))
  {
    sub_21DD72CF4(*(v7 + 56) + 32 * v8, v13);
    sub_21DD833D8(v12);

    if (swift_dynamicCast())
    {
      sub_21DD8BD38();
    }
  }

  else
  {

    sub_21DD833D8(v12);
  }

  v11 = sub_21DD8BD58();
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t sub_21DD7E900(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_21DD7E9E8;

  return sub_21DD82390(v9);
}

uint64_t sub_21DD7E9E8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_21DD7EB58()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21DD74F54;

  return sub_21DD7E900(v2, v3, v5, v4);
}

uint64_t sub_21DD7EC18(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21DD7EC78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21DD83BD8;

  return v6();
}

uint64_t sub_21DD7ED60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21DD83BD8;

  return sub_21DD7EC78(v2, v3, v4);
}

uint64_t sub_21DD7EE20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21DD74F54;

  return v7();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21DD7EF48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21DD83BD8;

  return sub_21DD7EE20(a1, v4, v5, v6);
}

uint64_t sub_21DD7F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21DD83564(a3, v23 - v10, &unk_27CE8EED0, &unk_21DD8D6B0);
  v12 = sub_21DD8C198();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21DD71200(v11, &unk_27CE8EED0, &unk_21DD8D6B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21DD8C188();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21DD8C178();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21DD8C068() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21DD71200(a3, &unk_27CE8EED0, &unk_21DD8D6B0);

    return v21;
  }

LABEL_8:
  sub_21DD71200(a3, &unk_27CE8EED0, &unk_21DD8D6B0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_21DD7F310(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DD83BD8;

  return sub_21DD732F8(a1, v4);
}

uint64_t sub_21DD7F3C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DD74F54;

  return sub_21DD732F8(a1, v4);
}

unint64_t sub_21DD7F480(uint64_t a1)
{
  v2 = sub_21DD8C288();

  return sub_21DD7F578(a1, v2);
}

unint64_t sub_21DD7F4C4(uint64_t a1)
{
  sub_21DD8C458();
  type metadata accessor for CFString();
  sub_21DD835CC(&qword_27CE8EF68, type metadata accessor for CFString, &unk_21DD8CFD8);
  sub_21DD8BEC8();
  v2 = sub_21DD8C478();

  return sub_21DD7F640(a1, v2);
}

unint64_t sub_21DD7F578(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21DD8342C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D46E70](v9, a1);
      sub_21DD833D8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21DD7F640(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_21DD835CC(&qword_27CE8EF68, type metadata accessor for CFString, &unk_21DD8CFD8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21DD8BEB8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_21DD7F74C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21DD7F480(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21DD800B8();
      v9 = v11;
    }

    sub_21DD833D8(*(v9 + 48) + 40 * v7);
    sub_21DD74E40((*(v9 + 56) + 32 * v7), a2);
    sub_21DD7FD4C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21DD7F7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
  v35 = v4;
  result = sub_21DD8C368();
  v7 = result;
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
    v14 = result + 64;
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

        v25 = v24;
      }

      sub_21DD8C458();
      sub_21DD8C098();
      result = sub_21DD8C478();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
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
  return result;
}

uint64_t sub_21DD7FA94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
  result = sub_21DD8C368();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_21DD74E40((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_21DD8342C(v23, &v36);
        sub_21DD72CF4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_21DD8C288();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_21DD74E40(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21DD7FD4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DD8C278() + 1) & ~v5;
    do
    {
      sub_21DD8342C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_21DD8C288();
      result = sub_21DD833D8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21DD7FEF0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21DD7F480(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21DD800B8();
      goto LABEL_7;
    }

    sub_21DD7FA94(v13, a3 & 1);
    v19 = sub_21DD7F480(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21DD8342C(a2, v21);
      return sub_21DD8003C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21DD8C438();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_21DD74E40(a1, v17);
}

_OWORD *sub_21DD8003C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21DD74E40(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_21DD800B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
  v2 = *v0;
  v3 = sub_21DD8C358();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_21DD8342C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21DD72CF4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21DD74E40(v22, (*(v4 + 56) + v17));
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

  return result;
}

uint64_t sub_21DD8025C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21DD8C348();
LABEL_9:
  result = sub_21DD8C2F8();
  *v2 = result;
  return result;
}

uint64_t sub_21DD802FC(uint64_t a1)
{
  v2 = sub_21DD8BE48();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF80, &qword_21DD8D678);
    v9 = sub_21DD8C2B8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21DD835CC(&qword_27CE8EF88, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_21DD8BF88();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21DD835CC(&unk_27CE8EF90, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_21DD8BF98();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21DD8061C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED88, &unk_21DD8D060);
    v3 = sub_21DD8C378();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21DD72C7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DD80720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
    v3 = sub_21DD8C378();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DD83564(v4, v13, &qword_27CE8EF38, &qword_21DD8D558);
      result = sub_21DD7F480(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21DD74E40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DD8085C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF58, &qword_21DD8D570);
    v3 = sub_21DD8C378();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DD83564(v4, &v11, &qword_27CE8EF60, &qword_21DD8D578);
      v5 = v11;
      result = sub_21DD7F4C4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21DD74E40(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *sub_21DD80984(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_21DD834B4(0, &qword_281221AC8, 0x277CE1F80);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21DD8C348();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_21DD8C348();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21DD80AB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21DD8C348();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_21DD8C348();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_21DD8025C(result, 1);

  return sub_21DD80984(v7, v6, 1, v4);
}

void sub_21DD80B9C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21DD8C348())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF50, &qword_21DD8D568);
      v3 = sub_21DD8C2B8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21DD8C348();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D46EC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21DD8C218();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_21DD834B4(0, &qword_281221AC0, 0x277CE1F98);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21DD8C228();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_21DD8C218();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_21DD834B4(0, &qword_281221AC0, 0x277CE1F98);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21DD8C228();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21DD80E8C(uint64_t a1)
{
  v2 = sub_21DD8BD58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DD8BF08();
  __swift_project_value_buffer(v6, qword_281221D58);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_21DD8BEE8();
  v8 = sub_21DD8C1E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_21DD835CC(&qword_27CE8EDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v11 = sub_21DD8C418();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_21DD74A90(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_21DD6F000, v7, v8, "Tracking radar URL to be opened: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223D47710](v10, -1, -1);
    MEMORY[0x223D47710](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21DD8BCB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DD8CF30;
    *(inited + 32) = sub_21DD8BFE8();
    *(inited + 40) = v19;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_21DD728E4(inited);
    swift_setDeallocating();
    sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
    v20 = sub_21DD8BF58();

    [v16 openSensitiveURL:v17 withOptions:v20];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21DD8120C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = [a1 notification];
  v5 = [v4 request];

  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (!*(v8 + 16))
  {
    goto LABEL_13;
  }

  v9 = sub_21DD7F480(v31);
  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_21DD72CF4(*(v8 + 56) + 32 * v9, v32);
  sub_21DD833D8(v31);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_14:
    v13 = 0;
    v12 = 0;
    v22 = 0;
    v21 = 0;
    v30 = 0;
    goto LABEL_15;
  }

  v13 = 0xD000000000000012;
  v12 = 0x800000021DD8E5B0;
  v14 = [a1 notification];
  v15 = [v14 &selRef_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler_];

  v16 = [v15 0x278338378];
  v17 = [v16 userInfo];

  v18 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (!*(v18 + 16) || (v19 = sub_21DD7F480(v31), (v20 & 1) == 0))
  {

LABEL_13:

    result = sub_21DD833D8(v31);
    goto LABEL_14;
  }

  sub_21DD72CF4(*(v18 + 56) + 32 * v19, v32);
  sub_21DD833D8(v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    goto LABEL_14;
  }

  v22 = 0xD000000000000015;
  v21 = 0x800000021DD8E5D0;
  v23 = [a1 notification];
  v24 = [v23 request];

  v25 = [v24 0x278338378];
  v26 = [v25 userInfo];

  v27 = sub_21DD8BF68();
  sub_21DD8C2A8();
  if (!*(v27 + 16) || (v28 = sub_21DD7F480(v31), (v29 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_21DD72CF4(*(v27 + 56) + 32 * v28, v32);
  sub_21DD833D8(v31);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_17;
  }

  v30 = 0xD000000000000010;
LABEL_15:
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v22;
  a2[3] = v21;
  a2[4] = v30;
  return result;
}

void sub_21DD81658(uint64_t (*a1)(char *, char *, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v98 = a7;
  v101 = a6;
  v102 = a1;
  v97 = sub_21DD8BC78();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_21DD8BD58();
  v108 = *(v100 - 8);
  v12 = MEMORY[0x28223BE20](v100);
  v93 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v104 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v93 - v17;
  MEMORY[0x28223BE20](v16);
  v94 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v93 - v25;
  v112 = 0;
  v113 = 0xE000000000000000;
  if (a3)
  {
    v27 = a2;
  }

  else
  {
    v27 = 0x6E776F6E6B6E55;
  }

  if (a3)
  {
    v28 = a3;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  MEMORY[0x223D46C80](v27, v28);

  MEMORY[0x223D46C80](32, 0xE100000000000000);
  if (a5)
  {
    v29 = a4;
  }

  else
  {
    v29 = 0;
  }

  if (a5)
  {
    v30 = a5;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  MEMORY[0x223D46C80](v29, v30);
  v31 = v98;

  v99 = v112;
  v105 = v113;
  v112 = 0;
  v113 = 0xE000000000000000;
  sub_21DD8C2D8();

  MEMORY[0x223D46C80](v27, v28);

  MEMORY[0x223D46C80](0xD000000000000017, 0x800000021DD8E500);
  v32 = v112;
  v107 = v113;
  if (v31)
  {
    v33 = v108;
    v34 = v100;
    (*(v108 + 56))(v24, 1, 1, v100);
    (*(v96 + 104))(v95, *MEMORY[0x277CC91D8], v97);

    v35 = v94;
    v36 = v101;
    sub_21DD8BD48();
    sub_21DD78EF0(v35, v26);
    v37 = *(v33 + 8);
    v37(v35, v34);
    v38 = v33;
    if ((*(v33 + 48))(v26, 1, v34) == 1)
    {
      sub_21DD71200(v26, &qword_27CE8EDC8, &qword_21DD8D500);
    }

    else
    {
      v36 = sub_21DD8BD28();
      v40 = v39;
      v37(v26, v34);
      v31 = v40;
    }
  }

  else
  {
    v36 = v101;
    v34 = v100;
    v38 = v108;
  }

  v41 = v105;
  v112 = 0;
  v113 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](0xD000000000000019, 0x800000021DD8E520);
  MEMORY[0x223D46C80](v99, v41);
  MEMORY[0x223D46C80](0x7069726373654426, 0xED00003D6E6F6974);
  MEMORY[0x223D46C80](v32, v107);
  MEMORY[0x223D46C80](0xD00000000000004ELL, 0x800000021DD8E540);
  if (v31)
  {
    v42 = v36;
  }

  else
  {
    v42 = 0;
  }

  if (v31)
  {
    v43 = v31;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  MEMORY[0x223D46C80](v42, v43);

  MEMORY[0x223D46C80](0x64726F7779654B26, 0xEA00000000003D73);
  MEMORY[0x223D46C80](0x34393635323032, 0xE700000000000000);
  v44 = v112;
  v45 = v113;
  v46 = *(v102 + 1);
  if (v46)
  {
    v47 = *(v102 + 3);
    v48 = *(v102 + 4);
    v49 = *(v102 + 2);
    v50 = *v102;
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_21DD8C2D8();
    MEMORY[0x223D46C80](0x656E6F706D6F4326, 0xEF3D656D614E746ELL);
    MEMORY[0x223D46C80](v50, v46);
    MEMORY[0x223D46C80](0xD000000000000012, 0x800000021DD8E590);
    MEMORY[0x223D46C80](v49, v47);
    MEMORY[0x223D46C80](0x656E6F706D6F4326, 0xED00003D4449746ELL);
    v109 = v48;
    v38 = v108;
    v51 = sub_21DD8C418();
    MEMORY[0x223D46C80](v51);

    MEMORY[0x223D46C80](v110, v111);

    v44 = v112;
    v45 = v113;
  }

  v52 = v106;
  v53 = v103;
  v54 = v104;
  sub_21DD8BD38();
  if ((*(v38 + 48))(v53, 1, v34) == 1)
  {

    sub_21DD71200(v53, &qword_27CE8EDC8, &qword_21DD8D500);
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v55 = sub_21DD8BF08();
    __swift_project_value_buffer(v55, qword_281221D58);

    v56 = sub_21DD8BEE8();
    v57 = sub_21DD8C1D8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v110 = v59;
      *v58 = 136315138;
      v60 = sub_21DD74A90(v44, v45, &v110);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_21DD6F000, v56, v57, "Failed to construct TTR URL from string: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x223D47710](v59, -1, -1);
      MEMORY[0x223D47710](v58, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v38 + 32))(v52, v53, v34);
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v61 = sub_21DD8BF08();
    v62 = __swift_project_value_buffer(v61, qword_281221D58);
    v63 = *(v38 + 16);
    v103 = (v38 + 16);
    v102 = v63;
    v63(v54, v52, v34);
    v104 = v62;
    v64 = sub_21DD8BEE8();
    v65 = sub_21DD8C1E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v54;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v110 = v68;
      *v67 = 136315138;
      sub_21DD835CC(&qword_27CE8EDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v69 = sub_21DD8C418();
      v70 = v34;
      v72 = v71;
      v73 = *(v38 + 8);
      v73(v66, v70);
      v74 = sub_21DD74A90(v69, v72, &v110);
      v34 = v70;
      v52 = v106;

      *(v67 + 4) = v74;
      _os_log_impl(&dword_21DD6F000, v64, v65, "TTR URL: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x223D47710](v68, -1, -1);
      MEMORY[0x223D47710](v67, -1, -1);
    }

    else
    {

      v73 = *(v38 + 8);
      v73(v54, v34);
    }

    v75 = [objc_opt_self() defaultWorkspace];
    if (v75)
    {
      v76 = v75;

      v77 = sub_21DD8BCB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DD8CF30;
      *(inited + 32) = sub_21DD8BFE8();
      *(inited + 40) = v79;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      sub_21DD728E4(inited);
      swift_setDeallocating();
      sub_21DD71200(inited + 32, &unk_27CE8EEF0, &unk_21DD8D740);
      v80 = sub_21DD8BF58();

      v81 = [v76 openSensitiveURL:v77 withOptions:v80];

      if (v81)
      {
        v73(v52, v34);
      }

      else
      {
        v82 = v93;
        v102(v93, v52, v34);
        v83 = sub_21DD8BEE8();
        v84 = sub_21DD8C1D8();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = v52;
          v87 = swift_slowAlloc();
          v110 = v87;
          *v85 = 136315138;
          sub_21DD835CC(&qword_27CE8EDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v88 = sub_21DD8C418();
          v89 = v82;
          v91 = v90;
          v73(v89, v34);
          v92 = sub_21DD74A90(v88, v91, &v110);

          *(v85 + 4) = v92;
          _os_log_impl(&dword_21DD6F000, v83, v84, "Failed to create TTR URL: %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v87);
          MEMORY[0x223D47710](v87, -1, -1);
          MEMORY[0x223D47710](v85, -1, -1);

          v73(v86, v34);
        }

        else
        {

          v73(v82, v34);
          v73(v52, v34);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21DD82390(uint64_t a1)
{
  v1[91] = swift_getObjectType();
  v1[90] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v3 = sub_21DD8BD58();
  v1[94] = v3;
  v1[95] = *(v3 - 8);
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DD824B0, 0, 0);
}

uint64_t sub_21DD824B0()
{
  v108 = v0;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = sub_21DD8BF08();
  __swift_project_value_buffer(v2, qword_281221D58);
  v3 = v1;
  v4 = sub_21DD8BEE8();
  v5 = sub_21DD8C1E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 720);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v107 = v8;
    *v7 = 136315138;
    v9 = [v6 actionIdentifier];
    v10 = sub_21DD8BFE8();
    v12 = v11;

    v13 = sub_21DD74A90(v10, v12, &v107);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_21DD6F000, v4, v5, "Received notification response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D47710](v8, -1, -1);
    MEMORY[0x223D47710](v7, -1, -1);
  }

  v14 = *(v0 + 720);
  v15 = [v14 notification];
  v16 = [v15 request];

  v17 = [v16 content];
  v18 = [v17 userInfo];

  v19 = sub_21DD8BF68();
  v20 = [v14 notification];
  v21 = [v20 request];

  v22 = [v21 content];
  v23 = [v22 categoryIdentifier];

  v24 = sub_21DD8BFE8();
  v26 = v25;

  if (v24 == 0x4C415F4853415243 && v26 == 0xEB00000000545245)
  {
  }

  else
  {
    v27 = sub_21DD8C428();

    if ((v27 & 1) == 0)
    {

      goto LABEL_58;
    }
  }

  v28 = [*(v0 + 720) &selRef_content];
  v29 = sub_21DD8BFE8();
  v31 = v30;

  if (v29 == 0xD00000000000001ALL && 0x800000021DD8E4C0 == v31 || (sub_21DD8C428() & 1) != 0)
  {

    v32 = sub_21DD8BEE8();
    v33 = sub_21DD8C1E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21DD6F000, v32, v33, "User has tapped open tracking radar", v34, 2u);
      MEMORY[0x223D47710](v34, -1, -1);
    }

    v35 = *(v0 + 760);
    v36 = *(v0 + 752);
    v37 = *(v0 + 744);
    v38 = *(v0 + 720);

    sub_21DD7E5AC(v38, v37);
    if ((*(v35 + 48))(v37, 1, v36) == 1)
    {
      sub_21DD71200(*(v0 + 744), &qword_27CE8EDC8, &qword_21DD8D500);
      v39 = sub_21DD8BEE8();
      v40 = sub_21DD8C1D8();
      if (!os_log_type_enabled(v39, v40))
      {
LABEL_18:

        goto LABEL_58;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "Unable to open tracking radar URL";
LABEL_17:
      _os_log_impl(&dword_21DD6F000, v39, v40, v42, v41, 2u);
      MEMORY[0x223D47710](v41, -1, -1);
      goto LABEL_18;
    }

    (*(*(v0 + 760) + 32))(*(v0 + 776), *(v0 + 744), *(v0 + 752));
    v43 = sub_21DD8BEE8();
    v44 = sub_21DD8C1E8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21DD6F000, v43, v44, "Opening existing tracking radar", v45, 2u);
      MEMORY[0x223D47710](v45, -1, -1);
    }

    v46 = *(v0 + 776);
    goto LABEL_22;
  }

  if (v29 == 0xD000000000000017 && 0x800000021DD8E4E0 == v31 || (sub_21DD8C428() & 1) != 0)
  {

    v49 = sub_21DD8BEE8();
    v50 = sub_21DD8C1E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_21DD6F000, v49, v50, "User has tapped create new radar", v51, 2u);
      MEMORY[0x223D47710](v51, -1, -1);
    }

    v52 = *(v0 + 720);

    sub_21DD8120C(v52, (v0 + 16));
    *(v0 + 560) = 0x4E79616C70736964;
    *(v0 + 568) = 0xEB00000000656D61;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v53 = sub_21DD7F480(v0 + 256), (v54 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v53, v0 + 336);
      sub_21DD833D8(v0 + 256);
      v55 = swift_dynamicCast();
      if (v55)
      {
        v56 = *(v0 + 704);
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = *(v0 + 712);
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 256);
      v56 = 0;
      v57 = 0;
    }

    *(v0 + 608) = 0x79726F6765746163;
    *(v0 + 616) = 0xE800000000000000;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v58 = sub_21DD7F480(v0 + 216), (v59 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v58, v0 + 496);
      sub_21DD833D8(v0 + 216);
      v60 = swift_dynamicCast();
      if (v60)
      {
        v61 = *(v0 + 688);
      }

      else
      {
        v61 = 0;
      }

      if (v60)
      {
        v62 = *(v0 + 696);
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 216);
      v61 = 0;
      v62 = 0;
    }

    *(v0 + 656) = 0x656D686361747461;
    *(v0 + 664) = 0xEA0000000000746ELL;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v63 = sub_21DD7F480(v0 + 96), (v64 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v63, v0 + 432);
      sub_21DD833D8(v0 + 96);

      v65 = swift_dynamicCast();
      if (v65)
      {
        v66 = *(v0 + 672);
      }

      else
      {
        v66 = 0;
      }

      if (v65)
      {
        v67 = *(v0 + 680);
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {

      sub_21DD833D8(v0 + 96);
      v66 = 0;
      v67 = 0;
    }

    sub_21DD81658((v0 + 16), v56, v57, v61, v62, v66, v67);

    v68 = v0 + 16;
  }

  else
  {
    if (sub_21DD8BFE8() == v29 && v71 == v31)
    {
    }

    else
    {
      v72 = sub_21DD8C428();

      if ((v72 & 1) == 0)
      {

        if (sub_21DD8BFE8() == v29 && v105 == v31)
        {
        }

        else
        {
          v106 = sub_21DD8C428();

          if ((v106 & 1) == 0)
          {
            v39 = sub_21DD8BEE8();
            v40 = sub_21DD8C1E8();
            if (!os_log_type_enabled(v39, v40))
            {
              goto LABEL_18;
            }

            v41 = swift_slowAlloc();
            *v41 = 0;
            v42 = "Unknown response action identifier";
            goto LABEL_17;
          }
        }

        v39 = sub_21DD8BEE8();
        v40 = sub_21DD8C1E8();
        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_18;
        }

        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "User dismissed notification";
        goto LABEL_17;
      }
    }

    v73 = sub_21DD8BEE8();
    v74 = sub_21DD8C1E8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_21DD6F000, v73, v74, "User has tapped notification", v75, 2u);
      MEMORY[0x223D47710](v75, -1, -1);
    }

    v76 = *(v0 + 760);
    v77 = *(v0 + 752);
    v78 = *(v0 + 736);
    v79 = *(v0 + 720);

    sub_21DD7E5AC(v79, v78);
    if ((*(v76 + 48))(v78, 1, v77) != 1)
    {
      v89 = *(v0 + 768);
      v90 = *(v0 + 760);
      v91 = *(v0 + 752);
      v92 = *(v0 + 736);

      (*(v90 + 32))(v89, v92, v91);
      v43 = sub_21DD8BEE8();
      v93 = sub_21DD8C1E8();
      if (os_log_type_enabled(v43, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_21DD6F000, v43, v93, "Opening existing tracking radar", v94, 2u);
        MEMORY[0x223D47710](v94, -1, -1);
      }

      v46 = *(v0 + 768);
LABEL_22:
      v47 = *(v0 + 760);
      v48 = *(v0 + 752);

      sub_21DD80E8C(v46);
      (*(v47 + 8))(v46, v48);
      goto LABEL_58;
    }

    sub_21DD71200(*(v0 + 736), &qword_27CE8EDC8, &qword_21DD8D500);
    v80 = sub_21DD8BEE8();
    v81 = sub_21DD8C1E8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_21DD6F000, v80, v81, "Opening new TTR draft", v82, 2u);
      MEMORY[0x223D47710](v82, -1, -1);
    }

    v83 = *(v0 + 720);

    sub_21DD8120C(v83, (v0 + 296));
    *(v0 + 640) = 0x4E79616C70736964;
    *(v0 + 648) = 0xEB00000000656D61;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v84 = sub_21DD7F480(v0 + 56), (v85 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v84, v0 + 368);
      sub_21DD833D8(v0 + 56);
      v86 = swift_dynamicCast();
      if (v86)
      {
        v87 = *(v0 + 528);
      }

      else
      {
        v87 = 0;
      }

      if (v86)
      {
        v88 = *(v0 + 536);
      }

      else
      {
        v88 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 56);
      v87 = 0;
      v88 = 0;
    }

    *(v0 + 624) = 0x79726F6765746163;
    *(v0 + 632) = 0xE800000000000000;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v95 = sub_21DD7F480(v0 + 136), (v96 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v95, v0 + 400);
      sub_21DD833D8(v0 + 136);
      v97 = swift_dynamicCast();
      if (v97)
      {
        v98 = *(v0 + 544);
      }

      else
      {
        v98 = 0;
      }

      if (v97)
      {
        v99 = *(v0 + 552);
      }

      else
      {
        v99 = 0;
      }
    }

    else
    {
      sub_21DD833D8(v0 + 136);
      v98 = 0;
      v99 = 0;
    }

    *(v0 + 592) = 0x656D686361747461;
    *(v0 + 600) = 0xEA0000000000746ELL;
    sub_21DD8C2A8();
    if (*(v19 + 16) && (v100 = sub_21DD7F480(v0 + 176), (v101 & 1) != 0))
    {
      sub_21DD72CF4(*(v19 + 56) + 32 * v100, v0 + 464);
      sub_21DD833D8(v0 + 176);

      v102 = swift_dynamicCast();
      if (v102)
      {
        v103 = *(v0 + 576);
      }

      else
      {
        v103 = 0;
      }

      if (v102)
      {
        v104 = *(v0 + 584);
      }

      else
      {
        v104 = 0;
      }
    }

    else
    {

      sub_21DD833D8(v0 + 176);
      v103 = 0;
      v104 = 0;
    }

    sub_21DD81658((v0 + 296), v87, v88, v98, v99, v103, v104);

    v68 = v0 + 296;
  }

  sub_21DD71200(v68, &unk_27CE8EEE0, &qword_21DD8D508);
LABEL_58:

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_21DD834B4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_21DD834FC()
{
  result = qword_281221AB8;
  if (!qword_281221AB8)
  {
    sub_21DD834B4(255, &qword_281221AC0, 0x277CE1F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221AB8);
  }

  return result;
}

uint64_t sub_21DD83564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21DD835CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DD83614(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 48))(v30, v2, v3);
  v4 = v31;
  v5 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if ((v6 & 1) == 0)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v19 = sub_21DD8BF08();
    __swift_project_value_buffer(v19, qword_281221D58);
    v20 = sub_21DD8BEE8();
    v21 = sub_21DD8C1D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21DD74A90(0xD000000000000016, 0x800000021DD8E700, v30);
      _os_log_impl(&dword_21DD6F000, v20, v21, "%s Sampled out.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223D47710](v23, -1, -1);
      MEMORY[0x223D47710](v22, -1, -1);
    }

    sub_21DD73140(a1, v30);
    v17 = sub_21DD8061C(MEMORY[0x277D84F90]);
    v18 = 5;
    goto LABEL_13;
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 48))(v30, v7, v8);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v11 = (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v11)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DD8BF08();
    __swift_project_value_buffer(v12, qword_281221D58);
    v13 = sub_21DD8BEE8();
    v14 = sub_21DD8C1D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21DD74A90(0xD000000000000016, 0x800000021DD8E700, v30);
      _os_log_impl(&dword_21DD6F000, v13, v14, "%s Exceeded show limit.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x223D47710](v16, -1, -1);
      MEMORY[0x223D47710](v15, -1, -1);
    }

    sub_21DD73140(a1, v30);
    v17 = sub_21DD8061C(MEMORY[0x277D84F90]);
    v18 = 4;
LABEL_13:
    sub_21DD75EB4(v18, v30, v17);

    sub_21DD71200(v30, &unk_27CE8EF70, &unk_21DD8D580);
    return 0;
  }

  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v25 = sub_21DD8BF08();
  __swift_project_value_buffer(v25, qword_281221D58);
  v26 = sub_21DD8BEE8();
  v27 = sub_21DD8C1E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21DD74A90(0xD000000000000016, 0x800000021DD8E700, v30);
    _os_log_impl(&dword_21DD6F000, v26, v27, "%s Success.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223D47710](v29, -1, -1);
    MEMORY[0x223D47710](v28, -1, -1);
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_27DiagnosticsReporterServices11SpeedTracerV8ResponseV5RadarV9ComponentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21DD83AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 49);
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

uint64_t sub_21DD83B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_21DD83B98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 33) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 49) = a2;
  return result;
}

uint64_t sub_21DD83BDC()
{
  if (qword_281221B08 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_21DD83C3C(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DD8BF08();
  __swift_project_value_buffer(v13, qword_281221D58);
  v14 = a2;
  v15 = sub_21DD8BEE8();
  v16 = sub_21DD8C1E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_21DD6F000, v15, v16, "Launching app with options: %@", v17, 0xCu);
    sub_21DD71200(v18, &unk_27CE8EF10, &unk_21DD8D530);
    MEMORY[0x223D47710](v18, -1, -1);
    MEMORY[0x223D47710](v17, -1, -1);
  }

  sub_21DD71260(a1, v14, v38);
  sub_21DD83564(v38, v36, &unk_27CE8EF70, &unk_21DD8D580);
  sub_21DD83564(v36, v35, &unk_27CE8EF70, &unk_21DD8D580);
  v20 = swift_allocObject();
  v21 = v36[1];
  *(v20 + 16) = v36[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  sub_21DD83564(v38, &v30, &unk_27CE8EF70, &unk_21DD8D580);
  v22 = v31;

  if (v22)
  {
    sub_21DD71200(v35, &unk_27CE8EF70, &unk_21DD8D580);
    sub_21DD72A14(&v30, v32);
    v23 = sub_21DD8C198();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    sub_21DD73140(v32, &v30);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    sub_21DD72A14(&v30, (v24 + 4));
    v24[9] = v5;
    v24[10] = sub_21DD74F38;
    v24[11] = v20;
    v24[12] = a1;
    v24[13] = v14;
    v25 = v14;

    sub_21DD8426C(0, 0, v12, &unk_21DD8D6C8, v24);

    sub_21DD71200(v12, &unk_27CE8EED0, &unk_21DD8D6B0);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_21DD71200(&v30, &unk_27CE8EF70, &unk_21DD8D580);
    v26 = sub_21DD74CEC();
    if ((isInternal() & 1) == 0)
    {
      sub_21DD83564(v35, v32, &unk_27CE8EF70, &unk_21DD8D580);
      v27 = v33;
      if (v33)
      {
        v28 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v28 + 104))(v27, v28);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      else
      {
        sub_21DD71200(v32, &unk_27CE8EF70, &unk_21DD8D580);
      }
    }

    a3(v26);

    sub_21DD71200(v35, &unk_27CE8EF70, &unk_21DD8D580);
  }

  return sub_21DD71200(v38, &unk_27CE8EF70, &unk_21DD8D580);
}

uint64_t sub_21DD840B0()
{

  return MEMORY[0x2822009F8](sub_21DD841D8, 0, 0);
}

uint64_t sub_21DD841D8()
{
  sub_21DD74CBC(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DD8426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DD83564(a3, v25 - v10, &unk_27CE8EED0, &unk_21DD8D6B0);
  v12 = sub_21DD8C198();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DD71200(v11, &unk_27CE8EED0, &unk_21DD8D6B0);
  }

  else
  {
    sub_21DD8C188();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DD8C178();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DD8C068() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21DD8452C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
    v2 = sub_21DD8C378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21DD72CF4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21DD74E40(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21DD74E40(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21DD74E40(v31, v32);
    result = sub_21DD8C288();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21DD74E40(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id DiagnosticsReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticsReporter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiagnosticsReporter.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DiagnosticsReporter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21DD848D4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_21DD84920(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_21DD84930(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_21DD84950(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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