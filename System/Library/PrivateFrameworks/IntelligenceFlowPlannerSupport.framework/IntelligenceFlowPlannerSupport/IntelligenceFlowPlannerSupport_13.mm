uint64_t sub_22BF2805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v49 = a3;
  v46 = a2;
  v52 = a1;
  v12 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C2720A4();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45 = &v45 - v17;
  v18 = sub_22C26E2F4();
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v54[0]) = a6;
  sub_22BF4B988();
  if (v8)
  {
    v55 = v8;
    v22 = v8;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v23 = v53;
      v24 = (*(v53 + 88))(v20, v18);
      if (v24 == *MEMORY[0x277D781A0])
      {

        (*(v23 + 96))(v20, v18);
        v25 = *v20;
        v26 = v20[1];
        v27 = v48;
        sub_22C271AD4();
        v28 = v49;

        v29 = sub_22C272084();
        v30 = sub_22C2737A4();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v28;
          v34 = v32;
          v54[0] = v32;
          *v31 = 136315394;
          *(v31 + 4) = sub_22BE61C88(v46, v33, v54);
          *(v31 + 12) = 2080;
          v35 = sub_22BE61C88(v25, v26, v54);

          *(v31 + 14) = v35;
          _os_log_impl(&dword_22BE15000, v29, v30, "QueryableToolbox %s failed due to unrecoverable error: %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v34, -1, -1);
          MEMORY[0x2318AD180](v31, -1, -1);

          (*(v50 + 8))(v48, v51);
        }

        else
        {

          (*(v50 + 8))(v27, v51);
        }

        v9 = v52;
        v42 = v47;
        sub_22BF1F294(*(a4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v47);
        sub_22BF2B12C();
        sub_22BF249B8(v42);
        swift_beginAccess();
        *(a4 + 24) = 0;

        goto LABEL_13;
      }

      if (v24 == *MEMORY[0x277D781A8])
      {

        v36 = v45;
        sub_22C271AD4();
        v37 = v49;

        v38 = sub_22C272084();
        v39 = sub_22C2737C4();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v54[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_22BE61C88(v46, v37, v54);
          _os_log_impl(&dword_22BE15000, v38, v39, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v40, 0xCu);
          sub_22BE26B64(v41);
          MEMORY[0x2318AD180](v41, -1, -1);
          MEMORY[0x2318AD180](v40, -1, -1);
        }

        (*(v50 + 8))(v36, v51);
        swift_beginAccess();
        *(a4 + 24) = 0;

        v9 = v52;
        goto LABEL_13;
      }

      v43 = *(v23 + 8);
      v9 = v23 + 8;
      v43(v20, v18);
    }

    return v9;
  }

  v9 = v21;
  swift_beginAccess();
  *(a4 + 24) = 1;

LABEL_13:

  return v9;
}

uint64_t sub_22BF28648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a8;
  v64 = a7;
  v55 = a3;
  v52 = a2;
  v58 = a1;
  v60 = a4;
  v61 = a13;
  v14 = a9;
  v15 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C2720A4();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x28223BE20](v17);
  v54 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v51 = &v51 - v20;
  v21 = sub_22C26E2F4();
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v63;
  v63 = a9;
  v25 = v62;
  sub_22BF47454(a6, v64, v24, a9, a10, a11, a12, v61, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  if (!v25)
  {
    v14 = v26;
    v39 = v60;
    swift_beginAccess();
    *(v39 + 24) = 1;

LABEL_17:

    return v14;
  }

  v66 = v25;
  v27 = v25;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v28 = v59;
    v29 = (*(v59 + 88))(v23, v21);
    if (v29 == *MEMORY[0x277D781A0])
    {

      (*(v28 + 96))(v23, v21);
      v30 = v23[1];
      v62 = *v23;
      v31 = v54;
      sub_22C271AD4();
      v32 = v55;

      v33 = sub_22C272084();
      v34 = sub_22C2737A4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = v32;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v65[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_22BE61C88(v52, v35, v65);
        *(v36 + 12) = 2080;
        v38 = sub_22BE61C88(v62, v30, v65);

        *(v36 + 14) = v38;
        _os_log_impl(&dword_22BE15000, v33, v34, "QueryableToolbox %s failed due to unrecoverable error: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v37, -1, -1);
        MEMORY[0x2318AD180](v36, -1, -1);

        (*(v56 + 8))(v54, v57);
      }

      else
      {

        (*(v56 + 8))(v31, v57);
      }

      v46 = v60;
      v47 = v53;
      sub_22BF1F294(*(v60 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v53);
      sub_22BF2B12C();
      sub_22BF249B8(v47);
      swift_beginAccess();
      *(v46 + 24) = 0;
      v48 = v66;
      v14 = v58;
LABEL_16:

      goto LABEL_17;
    }

    if (v29 == *MEMORY[0x277D781A8])
    {

      v40 = v51;
      sub_22C271AD4();
      v41 = v55;

      v42 = sub_22C272084();
      v43 = sub_22C2737C4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v65[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_22BE61C88(v52, v41, v65);
        _os_log_impl(&dword_22BE15000, v42, v43, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v44, 0xCu);
        sub_22BE26B64(v45);
        MEMORY[0x2318AD180](v45, -1, -1);
        MEMORY[0x2318AD180](v44, -1, -1);

        (*(v56 + 8))(v51, v57);
      }

      else
      {

        (*(v56 + 8))(v40, v57);
      }

      v14 = v58;
      v49 = v60;
      swift_beginAccess();
      *(v49 + 24) = 0;
      v48 = v66;
      goto LABEL_16;
    }

    (*(v28 + 8))(v23, v21);
  }

  return v14;
}

uint64_t sub_22BF28CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a8;
  v65 = a7;
  v61 = a3;
  v62 = a4;
  v54 = a2;
  v59 = a1;
  v14 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v14 - 8);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C2720A4();
  v57 = *(v16 - 8);
  v58 = v16;
  MEMORY[0x28223BE20](v16);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v53 = &v53 - v19;
  v20 = sub_22C26E2F4();
  v60 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v64;
  sub_22BF47D78();
  if (v23)
  {
    v64 = a5;
    v67 = v23;
    v25 = v23;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v26 = v60;
      v27 = (*(v60 + 88))(v22, v20);
      if (v27 == *MEMORY[0x277D781A0])
      {

        (*(v26 + 96))(v22, v20);
        v29 = *v22;
        v28 = v22[1];
        v30 = v55;
        sub_22C271AD4();
        v31 = v61;

        v32 = sub_22C272084();
        v33 = sub_22C2737A4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = v31;
          v37 = v35;
          v66[0] = v35;
          *v34 = 136315394;
          *(v34 + 4) = sub_22BE61C88(v54, v36, v66);
          *(v34 + 12) = 2080;
          v38 = sub_22BE61C88(v29, v28, v66);

          *(v34 + 14) = v38;
          _os_log_impl(&dword_22BE15000, v32, v33, "QueryableToolbox %s failed due to unrecoverable error: %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v37, -1, -1);
          MEMORY[0x2318AD180](v34, -1, -1);
        }

        else
        {
        }

        (*(v57 + 8))(v30, v58);
        v48 = v62;
        v49 = v56;
        sub_22BF1F294(*(v62 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v56);
        sub_22BF2B12C();
        sub_22BF249B8(v49);
        swift_beginAccess();
        *(v48 + 24) = 0;
        v50 = v67;
        a10 = v59;

LABEL_13:

        goto LABEL_14;
      }

      v40 = v61;
      if (v27 == *MEMORY[0x277D781A8])
      {

        v41 = v53;
        sub_22C271AD4();

        v42 = sub_22C272084();
        v43 = sub_22C2737C4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v66[0] = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_22BE61C88(v54, v40, v66);
          _os_log_impl(&dword_22BE15000, v42, v43, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v44, 0xCu);
          sub_22BE26B64(v45);
          MEMORY[0x2318AD180](v45, -1, -1);
          MEMORY[0x2318AD180](v44, -1, -1);
        }

        (*(v57 + 8))(v41, v58);
        a10 = v59;
        v46 = v62;
        swift_beginAccess();
        *(v46 + 24) = 0;
        v47 = v67;

        goto LABEL_13;
      }

      v51 = *(v26 + 8);
      a10 = v26 + 8;
      v51(v22, v20);
    }

    return a10;
  }

  a10 = v24;
  v39 = v62;
  swift_beginAccess();
  *(v39 + 24) = 1;

LABEL_14:

  return a10;
}

void sub_22BF292C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_22BE19130();
  v82 = v24;
  v83 = v23;
  v26 = v25;
  v28 = v27;
  v80 = v29;
  v81 = v30;
  v73 = v31;
  v78 = v32;
  v33 = _s19SentinelFileManagerVMa(0);
  v34 = sub_22BE19448(v33);
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  v74 = v36 - v35;
  sub_22C2720A4();
  sub_22BE17C68();
  v76 = v38;
  v77 = v37;
  MEMORY[0x28223BE20](v37);
  v75 = &v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v72 = &v71 - v41;
  v42 = sub_22C26E2F4();
  sub_22BE17C68();
  v79 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22BE179EC();
  v47 = (v46 - v45);
  v48 = v83;
  a23(v28, v26, v82, a21, a22);
  if (!v48)
  {
    v61 = v81;
    swift_beginAccess();
    *(v61 + 24) = 1;

LABEL_17:

    goto LABEL_18;
  }

  v49 = v48;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v50 = v79;
    v51 = (*(v79 + 88))(v47, v42);
    if (v51 == *MEMORY[0x277D781A0])
    {

      (*(v50 + 96))(v47, v42);
      v52 = v47[1];
      v83 = *v47;
      v53 = v75;
      sub_22C271AD4();
      v54 = v80;

      v55 = sub_22C272084();
      v56 = sub_22C2737A4();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v54;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v79 = v26;
        v84[0] = v59;
        *v58 = 136315394;
        *(v58 + 4) = sub_22BE61C88(v73, v57, v84);
        *(v58 + 12) = 2080;
        v60 = sub_22BE61C88(v83, v52, v84);

        *(v58 + 14) = v60;
        _os_log_impl(&dword_22BE15000, v55, v56, "QueryableToolbox %s failed due to unrecoverable error: %s", v58, 0x16u);
        swift_arrayDestroy();
        sub_22BE183C8();
        sub_22BE183C8();

        (*(v76 + 8))(v75, v77);
      }

      else
      {

        (*(v76 + 8))(v53, v77);
      }

      v68 = v81;
      v69 = v74;
      sub_22BF1F294(*(v81 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v74);
      sub_22BF2B12C();
      sub_22BF249B8(v69);
      sub_22BE189D8();
      *(v68 + 24) = 0;
LABEL_16:

      goto LABEL_17;
    }

    v62 = v80;
    if (v51 == *MEMORY[0x277D781A8])
    {

      v63 = v72;
      sub_22C271AD4();

      v64 = sub_22C272084();
      v65 = sub_22C2737C4();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v84[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_22BE61C88(v73, v62, v84);
        _os_log_impl(&dword_22BE15000, v64, v65, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v66, 0xCu);
        sub_22BE26B64(v67);
        sub_22BE183C8();
        sub_22BE183C8();

        (*(v76 + 8))(v72, v77);
      }

      else
      {

        (*(v76 + 8))(v63, v77);
      }

      v70 = v81;
      sub_22BE189D8();
      *(v70 + 24) = 0;
      goto LABEL_16;
    }

    (*(v50 + 8))(v47, v42);
  }

LABEL_18:
  sub_22BE18478();
}

void sub_22BF2988C(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v53 = a4;
  v50 = a3;
  v56 = a2;
  v9 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C2720A4();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = &v46 - v14;
  v15 = sub_22C26E2F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v46 - v21;
  a1(v20);
  if (!v6)
  {
    swift_beginAccess();
    *(v5 + 24) = 1;
    sub_22BF2AF6C(v22, a5);
    return;
  }

  v47 = v5;
  v48 = a5;
  v58 = v6;
  v23 = v6;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v24 = (*(v16 + 88))(v18, v15);
    if (v24 == *MEMORY[0x277D781A0])
    {

      (*(v16 + 96))(v18, v15);
      v26 = *v18;
      v25 = v18[1];
      v27 = v51;
      sub_22C271AD4();
      v28 = v53;

      v29 = sub_22C272084();
      v30 = sub_22C2737A4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v57[0] = v32;
        *v31 = 136315394;
        *(v31 + 4) = sub_22BE61C88(v50, v28, v57);
        *(v31 + 12) = 2080;
        v33 = sub_22BE61C88(v26, v25, v57);

        *(v31 + 14) = v33;
        _os_log_impl(&dword_22BE15000, v29, v30, "QueryableToolbox %s failed due to unrecoverable error: %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v32, -1, -1);
        MEMORY[0x2318AD180](v31, -1, -1);
      }

      else
      {
      }

      (*(v54 + 8))(v27, v55);
      v44 = v47;
      v45 = v52;
      sub_22BF1F294(*(v47 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v52);
      sub_22BF2B12C();
      sub_22BF249B8(v45);
      swift_beginAccess();
      *(v44 + 24) = 0;
      v42 = v56;
      v43 = v48;
LABEL_13:
      sub_22BF2AF04(v42, v43, &qword_27D90B290, &qword_22C28C8F0);

      return;
    }

    if (v24 == *MEMORY[0x277D781A8])
    {

      v34 = v49;
      sub_22C271AD4();
      v35 = v53;

      v36 = sub_22C272084();
      v37 = sub_22C2737C4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v57[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_22BE61C88(v50, v35, v57);
        _os_log_impl(&dword_22BE15000, v36, v37, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v38, 0xCu);
        sub_22BE26B64(v39);
        MEMORY[0x2318AD180](v39, -1, -1);
        MEMORY[0x2318AD180](v38, -1, -1);
      }

      (*(v54 + 8))(v34, v55);
      v41 = v47;
      v40 = v48;
      swift_beginAccess();
      *(v41 + 24) = 0;
      v42 = v56;
      v43 = v40;
      goto LABEL_13;
    }

    (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_22BF29E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v50 = a3;
  v47 = a2;
  v53 = a1;
  v12 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C2720A4();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v46 = &v46 - v17;
  v18 = sub_22C26E2F4();
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v55[0]) = a6;
  sub_22BF4C2B0();
  if (v8)
  {
    v56 = v8;
    v22 = v8;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v23 = v54;
      v24 = (*(v54 + 88))(v20, v18);
      if (v24 == *MEMORY[0x277D781A0])
      {

        (*(v23 + 96))(v20, v18);
        v25 = *v20;
        v26 = v20[1];
        v27 = v49;
        sub_22C271AD4();
        v28 = v50;

        v29 = sub_22C272084();
        v30 = sub_22C2737A4();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v28;
          v34 = v32;
          v55[0] = v32;
          *v31 = 136315394;
          *(v31 + 4) = sub_22BE61C88(v47, v33, v55);
          *(v31 + 12) = 2080;
          v35 = sub_22BE61C88(v25, v26, v55);

          *(v31 + 14) = v35;
          _os_log_impl(&dword_22BE15000, v29, v30, "QueryableToolbox %s failed due to unrecoverable error: %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v34, -1, -1);
          MEMORY[0x2318AD180](v31, -1, -1);

          (*(v51 + 8))(v49, v52);
        }

        else
        {

          (*(v51 + 8))(v27, v52);
        }

        v42 = v48;
        sub_22BF1F294(*(a4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v48);
        sub_22BF2B12C();
        sub_22BF249B8(v42);
LABEL_13:
        swift_beginAccess();
        *(a4 + 24) = 0;
        v43 = v56;
        v9 = v53;

        goto LABEL_14;
      }

      if (v24 == *MEMORY[0x277D781A8])
      {

        v36 = v46;
        sub_22C271AD4();
        v37 = v50;

        v38 = sub_22C272084();
        v39 = sub_22C2737C4();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v55[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_22BE61C88(v47, v37, v55);
          _os_log_impl(&dword_22BE15000, v38, v39, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v40, 0xCu);
          sub_22BE26B64(v41);
          MEMORY[0x2318AD180](v41, -1, -1);
          MEMORY[0x2318AD180](v40, -1, -1);
        }

        (*(v51 + 8))(v36, v52);
        goto LABEL_13;
      }

      v44 = *(v23 + 8);
      v9 = v23 + 8;
      v44(v20, v18);
    }

    return v9;
  }

  v9 = v21;
  swift_beginAccess();
  *(a4 + 24) = 1;

LABEL_14:

  return v9;
}

uint64_t QueryableToolbox.search(query:numOfUniqueTools:bundleIDs:clientIdentifier:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22BE1BF08();
  return sub_22BF28648(v16, v17, v18, v19, v20, a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t QueryableToolbox.search(query:numOfUniqueTools:clientIdentifier:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_22BE1BF08();
  return sub_22BF28CA0(v14, v15, v16, v17, v18, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t QueryableToolbox.toolMapping(customKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  v12 = v2;
  v13 = a1;
  v9 = type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE19DC4(v8, 1, 1, v9);
  sub_22BF2988C(sub_22BF2AE60, v8, 0xD000000000000017, 0x800000022C2D41B0, a2);
  return sub_22BE23388(v8, &qword_27D90B290, &qword_22C28C8F0);
}

void *QueryableToolbox.allowListToolIds()()
{
  sub_22C2720A4();
  sub_22BE17C68();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v3 = *(v0 + 16);
  v4 = v3[7];
  v5 = v3[8];
  v6 = sub_22BE1BD3C(v3 + 4, v4);
  (*(v5 + 96))(v17, v4, v5);
  if (!v1)
  {
    v7 = v17[0];
    if (v17[0])
    {
      v8 = v17[1];

      sub_22BF2A9E0(v9, v8);
      v6 = v10;
      sub_22BF2AE88(v7);
    }

    else
    {
      sub_22C271AD4();
      v11 = sub_22C272084();
      v12 = sub_22C2737A4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22BE15000, v11, v12, "No Allowlist found for Toolbox", v13, 2u);
        sub_22BE183C8();
      }

      v14 = sub_22BE1B328();
      v15(v14);
      return MEMORY[0x277D84FA0];
    }
  }

  return v6;
}

void sub_22BF2A9E0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v22 = a2;
  v4 = a1 + 56;
  sub_22BE185B4();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v3;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_22C1A7B60(v21, v13, v14, v15, v16, v17, v18, v19, v20, *v21);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_22BF2AAD0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v12[1] = a2;
  v4 = a1 + 56;
  sub_22BE185B4();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v3;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_22C1A8734(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
    }

    while (v7);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t QueryableToolbox.listTools(toolType:clientIdentifier:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;

  sub_22BE1BF08();
  return sub_22BF29E94(v6, v7, v8, v9, v10, v5, a2, a3);
}

uint64_t sub_22BF2ACA4(uint64_t (*a1)(uint64_t))
{
  v3 = _s19SentinelFileManagerVMa(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22BF1F294(*(v1 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v6 - v5);
  v9 = a1(v8);
  sub_22BF249B8(v7);
  return v9;
}

uint64_t QueryableToolbox.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_22BF2ADF0(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C273024();

  return v3;
}

double sub_22BF2AE88(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_22BF2AF04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BE5CE4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22BF2AF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19SentinelFileManagerVMa(uint64_t a1)
{
  result = qword_281079B80;
  if (!qword_281079B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BF2B050(uint64_t a1)
{
  result = sub_22C26DF64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BF2B0CC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_22BF2D478(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_22BF2B20C()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1BA64();
  sub_22BF6B0F4();
  if (&dword_281079B98)
  {

    os_unfair_lock_unlock(&dword_281079B98);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(&dword_281079B98);
  }
}

void sub_22BF2B4F4()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1A27C(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(&dword_281079B98);
}

uint64_t sub_22BF2B5D4()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1BA64();
  sub_22BF6B0F4();
  if (&dword_281079B98)
  {

    os_unfair_lock_unlock(&dword_281079B98);
    return 0;
  }

  else
  {
    os_unfair_lock_unlock(&dword_281079B98);
    return v1;
  }
}

uint64_t sub_22BF2B688()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2B76C()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2B850()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2B934()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2BA18()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2BAFC()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2BBE0()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2BCC4()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2BDA8()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

uint64_t sub_22BF2BE8C()
{
  sub_22BE3E58C();
  sub_22BE1BF18();
  MEMORY[0x28223BE20](v0);
  sub_22BE17CBC();
  _s19SentinelFileManagerVMa(0);
  sub_22BE1923C();
  sub_22BE3B02C(v1);
  v2 = sub_22BE1A6E4();
  v3(v2);
  sub_22BE699D0();
  sub_22BE2313C();
  v4 = sub_22BE1B3D4();
  return v5(v4);
}

void sub_22BF2BFF4()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1A27C(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(&dword_281079B98);
}

uint64_t sub_22BF2C074@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_22C26DF64();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  a1();
  v12 = sub_22C26DFA4();
  if (v2)
  {
    return (*(v7 + 8))(v11, v5);
  }

  v15 = v12;
  v16 = v13;
  result = (*(v7 + 8))(v11, v5);
  *a2 = v15;
  a2[1] = v16;
  return result;
}

uint64_t sub_22BF2C238@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C273064();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22C26DF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BF2BDA8();
  sub_22C273054();
  v8 = sub_22C272FE4();
  if (v1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v8;
  v12 = v9;
  (*(v5 + 8))(v7, v4);
  result = sub_22BF2B0CC(v11, v12);
  *a1 = result;
  *(a1 + 8) = v13 & 1;
  return result;
}

void sub_22BF2C3B8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_22C26DF14();
  v1 = sub_22C272FF4();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_22C26DEE4();
    v7[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v7];

    if (v4)
    {
      v5 = v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_22C26DE84();

      swift_willThrow();
    }
  }
}

uint64_t sub_22BF2C4E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_22C26DF64();
  sub_22BE1BF18();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE17CBC();
  a4();
  sub_22C26E044();
  return (*(v8 + 8))(v5, v4);
}

double sub_22BF2C5CC()
{
  v0 = sub_22C273064();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C26DF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C26E074();
  v10[0] = sub_22C273664();
  v10[1] = v8;
  sub_22BF2BDA8();
  sub_22C273054();
  sub_22BE699D0();
  sub_22C273944();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);

  return result;
}

uint64_t sub_22BF2C790@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C273064();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22C26DF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BF2BBE0();
  sub_22C273054();
  v8 = sub_22C272FE4();
  if (v1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v8;
  v12 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_22BF2C8FC(uint64_t a1, void (*a2)(void))
{
  sub_22C26DF64();
  sub_22BE1BF18();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  a2();
  sub_22BF2C3B8();
  return (*(v6 + 8))(v3, v2);
}

void sub_22BF2C9C8(uint64_t a1, void (*a2)(void))
{
  v3 = sub_22C26DF64();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = [objc_opt_self() defaultManager];
  a2();
  sub_22C26DF14();
  (*(v5 + 8))(v9, v3);
  v11 = sub_22C272FF4();

  [v10 createFileAtPath:v11 contents:0 attributes:0];
}

void sub_22BF2CB0C(_BYTE *a1@<X8>)
{
  v2 = sub_22C26DF64();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = [objc_opt_self() defaultManager];
  sub_22BF2BE8C();
  sub_22C26DF14();
  (*(v4 + 8))(v8, v2);
  v10 = sub_22C272FF4();

  LOBYTE(v2) = [v9 fileExistsAtPath_];

  *a1 = v2;
}

void sub_22BF2CC4C()
{
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22C26DF64();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  v39 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v39);
  sub_22BE179EC();
  v10 = v9 - v8;
  sub_22C2720A4();
  sub_22BE179D8();
  v36 = v12;
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v15 = v14 - v13;
  sub_22C271AD4();
  sub_22BF1F294(v0, v10);
  v16 = sub_22C272084();
  v17 = sub_22C2737C4();
  v38 = v1;
  if (os_log_type_enabled(v16, v17))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v34 = 136315138;
    sub_22BF2D58C(&qword_28107F350, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_22C273FD4();
    v20 = v19;
    sub_22BF249B8(v10);
    v21 = sub_22BE61C88(v18, v20, v41);

    *(v34 + 4) = v21;
    _os_log_impl(&dword_22BE15000, v16, v17, "Recovering from corrupted database at %s", v34, 0xCu);
    sub_22BE26B64(v35);
    MEMORY[0x2318AD180](v35, -1, -1);
    MEMORY[0x2318AD180](v34, -1, -1);
  }

  else
  {

    sub_22BF249B8(v10);
  }

  (*(v36 + 8))(v15, v37);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_22C26DEE4();
  v40 = v22;
  v41[0] = 0;
  v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v41];

  v25 = v41[0];
  if (v24)
  {
    v26 = sub_22C273494();
    v27 = v25;

    v28 = 0;
    v29 = *(v26 + 16);
    while (1)
    {
      if (v29 == v28)
      {

        return;
      }

      if (v28 >= *(v26 + 16))
      {
        __break(1u);
      }

      (*(v3 + 16))(v7, v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v38);
      v30 = sub_22C26DEE4();
      (*(v3 + 8))(v7, v38);
      v41[0] = 0;
      v31 = [v40 removeItemAtURL:v30 error:v41];

      v32 = v41[0];
      if (!v31)
      {
        break;
      }

      ++v28;
    }

    v33 = v32;
  }

  else
  {
    v33 = v41[0];
  }

  sub_22C26DE84();

  swift_willThrow();
}

void sub_22BF2D0D8(uint64_t a1@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = sub_22C26DF64();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  sub_22BF2BCC4();
  sub_22C26DF14();
  (*(v4 + 8))(v8, v2);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = sub_22C272FF4();
  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v13 = [v9 defaultManager];
    v14 = sub_22C272FF4();

    *&v29 = 0;
    v15 = [v13 attributesOfItemAtPath:v14 error:&v29];

    v16 = v29;
    if (v15)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_22BF2D58C(&qword_28106DB38, type metadata accessor for FileAttributeKey, &unk_22C274F38);
      v17 = sub_22C272E54();
      v18 = v16;

      sub_22BF16DE8(v17, &v29);

      if (v30)
      {
        v19 = sub_22C26E164();
        v20 = swift_dynamicCast() ^ 1;
        v21 = a1;
        v22 = 1;
        v23 = v19;
      }

      else
      {
        sub_22BF2D5D4(&v29);
        sub_22C26E164();
        v21 = sub_22BE3C838();
      }

      sub_22BE19DC4(v21, v20, v22, v23);
    }

    else
    {
      v28 = v29;
      sub_22C26DE84();

      swift_willThrow();
    }
  }

  else
  {
    sub_22C26E164();
    v24 = sub_22BE3C838();
    sub_22BE19DC4(v24, v25, v26, v27);
  }
}

_BYTE *sub_22BF2D40C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_22BF2D478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_22C273A64();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_22BF2D58C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BF2D5D4(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B260, &qword_22C28C718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BF2DAA4(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v5 = sub_22BEF4C64(0, a1);
    v7 = v6;
    v8 = *(a2 + 32);
    sub_22BEA7680(v8);
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v8;
}

uint64_t sub_22BF2DB0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    sub_22BE38368();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  }

  v8 = sub_22BE36128();

  return sub_22BE19DC4(v8, v9, v10, v11);
}

uint64_t sub_22BF2DBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C259378();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_22BF393F4(result, v5, 0, a1);
    v7 = 0;
  }

  v8 = type metadata accessor for ToolboxCustomKeyResult(0);

  return sub_22BE19DC4(a2, v7, 1, v8);
}

unint64_t sub_22BF2DC40(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_22BE18378();
    sub_22C26CBFC();
    if ((v2 & 0x1000000000000000) != 0)
    {
      v9 = sub_22C273A94();
    }

    else
    {
      v6 = v5 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v19[0] = v3;
        v19[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          sub_22BF394BC();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v7 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_22C273B44();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          sub_22BF394BC();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v4 == 0;
  return v9 | ((v4 == 0) << 32);
}

uint64_t sub_22BF2DDC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  sub_22BE5CE4C(a2, a3);
  if (v3)
  {
    sub_22BE19E14();
    sub_22BE22868();
  }

  v4 = sub_22BE36128();

  return sub_22BE19DC4(v4, v5, v6, v7);
}

uint64_t sub_22BF2DED0(uint64_t a1, void (*a2)(void))
{
  v4 = *(a1 + 16);
  a2(0);
  if (v4)
  {
    sub_22BE19E14();
    sub_22BF386AC();
  }

  v5 = sub_22BE36128();

  return sub_22BE19DC4(v5, v6, v7, v8);
}

uint64_t sub_22BF2DF7C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_22C2732A4();
  }

  else
  {
    return 0;
  }
}

void sub_22BF2DFC4()
{
  sub_22BE19130();
  v2 = v1;
  v30 = v3;
  v31 = v4;
  v33 = sub_22C272224();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v27 = v8;
  sub_22BE1B99C();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = 0;
  v32 = *(v2 + 16);
  v29 = v6 + 16;
  v14 = (v6 + 8);
  v26 = (v6 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v32 == v13)
    {

LABEL_15:
      sub_22BE18478();
      return;
    }

    if (v13 >= *(v2 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    v17 = v2;
    (*(v6 + 16))(v12, v2 + v15 + v16 * v13, v33, v10);
    v18 = v30(v12);
    if (v0)
    {
      (*v14)(v12, v33);

      goto LABEL_15;
    }

    if (v18)
    {
      v25 = *v26;
      v25(v27, v12, v33);
      v19 = v28;
      v34 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v19;
      }

      else
      {
        sub_22BF394EC(*(v19 + 16));
        v20 = v34;
      }

      v2 = v17;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v22 + 1;
        v24 = v22;
        sub_22BE711C4(v21 > 1, v22 + 1, 1);
        v23 = v28;
        v22 = v24;
        v2 = v17;
        v20 = v34;
      }

      ++v13;
      *(v20 + 16) = v23;
      v28 = v20;
      v25(v20 + v15 + v22 * v16, v27, v33);
    }

    else
    {
      (*v14)(v12, v33);
      ++v13;
    }
  }

  __break(1u);
}

BOOL sub_22BF2E274(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BE5CE4C(&qword_27D90B2C0, &qword_22C28C980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_22C272D44();
  sub_22BE19DC4(v4, 1, 1, v5);
  v6 = sub_22C272BD4();
  sub_22BE33928(v4, &qword_27D90B2C0, &qword_22C28C980);
  v7 = *(v6 + 16);

  return v7 != 0;
}

Swift::Bool __swiftcall AssistantSchemaProviding.contains(schemaKind:)(Swift::String schemaKind)
{
  v3 = v2;
  v4 = v1;
  object = schemaKind._object;
  countAndFlagsBits = schemaKind._countAndFlagsBits;
  v7 = sub_22BE1B18C();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_22C272D44();
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = (*(v3 + 32))(countAndFlagsBits, object, v12, v4, v3);
  sub_22BE33928(v12, &qword_27D90B2C0, &qword_22C28C980);
  v18 = *(v17 + 16);

  return v18 != 0;
}

void ToolDefinition.isAvailableForToolboxIndexing.getter()
{
  sub_22BE19460();
  v1 = sub_22C2729F4();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v5);
  sub_22BE181E4();
  v6 = sub_22C272144();
  v20 = *(v6 + 16);
  if (v20)
  {
    v7 = 0;
    sub_22BE19E14();
    v19 = v6 + v8;
    v18 = *MEMORY[0x277D72FD8];
    v9 = (v3 + 8);
    while (v7 < *(v6 + 16))
    {
      v10 = *(v3 + 16);
      v10(v0, v19 + *(v3 + 72) * v7, v1);
      v11 = sub_22BE2590C();
      (v10)(v11);
      v12 = sub_22BE1AB74();
      if (v13(v12) == v18)
      {
        v14 = sub_22C2729E4();
        v15 = *v9;
        (*v9)(v0, v1);
        if ((v14 & 1) == 0)
        {

          v17 = sub_22BE1AB74();
          v15(v17);
          goto LABEL_10;
        }
      }

      else
      {
        v15 = *v9;
        (*v9)(v0, v1);
      }

      ++v7;
      v16 = sub_22BE1AB74();
      v15(v16);
      if (v20 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

LABEL_10:
    sub_22BE1AABC();
  }
}

uint64_t sub_22BF2E644()
{
  v0 = sub_22C26E244();
  sub_22BE952A4(v0, qword_27D90B298);
  v1 = sub_22BE19454();
  sub_22BE199F4(v1, v2);
  return sub_22C26E1E4();
}

uint64_t static Toolbox.staticDataLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D906378 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v2 = sub_22C26E244();
  sub_22BE199F4(v2, qword_27D90B298);
  sub_22BE38368();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t Toolbox.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C2724D4();
  result = sub_22C2724C4();
  if (!v1)
  {
    v10[3] = v3;
    v10[4] = &protocol witness table for ToolDatabase;
    v10[0] = result;
    if (qword_281072040 != -1)
    {
      swift_once();
    }

    v5 = sub_22C271C14();
    sub_22BE199F4(v5, qword_28108A218);
    sub_22BE23C8C();
    v6 = type metadata accessor for SharedAssistantSchemaProvider();
    sub_22BE199AC(qword_281076450, type metadata accessor for SharedAssistantSchemaProvider, &protocol conformance descriptor for SharedAssistantSchemaProvider);
    v9[3] = v6;
    v9[4] = &protocol witness table for SharedAssistantSchemaProvider;
    v9[0] = sub_22C271BD4();
    type metadata accessor for ToolboxCache();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    sub_22BE40C08(v7, MEMORY[0x277D84F98]);
    sub_22BE26B00(v10, a1 + 16);
    *(a1 + 56) = MEMORY[0x277D84F90];
    sub_22BE26B00(v9, a1 + 64);
    sub_22BE5CE4C(&qword_27D90B2C8, &qword_22C28C988);
    v8 = swift_allocObject();
    sub_22BE256D4(v8);
    sub_22BE26B64(v9);
    result = sub_22BE26B64(v10);
    *(a1 + 8) = v8;
  }

  return result;
}

double sub_22BF2E964@<D0>(_OWORD *a1@<X8>)
{
  v65 = a1;
  v1 = sub_22C2720A4();
  v63 = *(v1 - 8);
  v64 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = (v50 - v4);
  v5 = sub_22C26DEA4();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = v50 - v8;
  v59 = sub_22C26DF64();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v50[1] = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = v50 - v11;
  MEMORY[0x28223BE20](v12);
  v57 = v50 - v13;
  v14 = sub_22C26E514();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C26EA04();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22BE5CE4C(&qword_27D90B200, &qword_22C28C460);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v50 - v23;
  v25 = sub_22C270264();
  v60 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v61 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QueryableToolbox();
  static QueryableToolbox.getLanguageCode()();
  if (v27)
  {
    sub_22C26E9F4();
    (*(v15 + 104))(v17, *MEMORY[0x277D1C238], v14);
    sub_22C26E9E4();

    (*(v15 + 8))(v17, v14);
    (*(v19 + 8))(v21, v18);
    if (sub_22BE1AEA8(v24, 1, v25) == 1)
    {
      v28 = &qword_27D90B200;
      v29 = &qword_22C28C460;
      v30 = v24;
    }

    else
    {
      v32 = v60;
      v31 = v61;
      (*(v60 + 32))(v61, v24, v25);
      v33 = v58;
      sub_22C270244();
      v34 = v59;
      if (sub_22BE1AEA8(v33, 1, v59) != 1)
      {
        *&v66[0] = 0xD000000000000019;
        *(&v66[0] + 1) = 0x800000022C2D4470;
        v42 = v52;
        v41 = v53;
        v43 = v54;
        (*(v53 + 104))(v52, *MEMORY[0x277CC91D8], v54);
        sub_22BE699D0();
        v44 = v51;
        sub_22C26DF54();
        (*(v41 + 8))(v42, v43);
        v45 = v55;
        v62 = *(v55 + 8);
        v58 = (v55 + 8);
        v62(v33, v34);
        v46 = v57;
        (*(v45 + 32))(v57, v44, v34);
        v47 = sub_22C26DFA4();
        v49 = v48;
        sub_22C26DDB4();
        swift_allocObject();
        sub_22C26DDA4();
        sub_22BF393A0();
        sub_22C26DD94();

        sub_22BE29DD4(v47, v49);
        v62(v46, v34);
        (*(v32 + 8))(v61, v25);
        result = *v66;
        *v65 = v66[0];
        return result;
      }

      (*(v32 + 8))(v31, v25);
      v28 = &qword_27D908088;
      v29 = &qword_22C278EC0;
      v30 = v33;
    }

    sub_22BE33928(v30, v28, v29);
  }

  v35 = v62;
  sub_22C271AD4();
  v36 = sub_22C272084();
  v37 = sub_22C2737A4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_22BE15000, v36, v37, "Tool Retrieval Deny List not found", v38, 2u);
    MEMORY[0x2318AD180](v38, -1, -1);
  }

  (*(v63 + 8))(v35, v64);
  v40 = v65;
  *v65 = 0;
  *(v40 + 1) = 0;
  return result;
}

IntelligenceFlowPlannerSupport::ActionClass_optional __swiftcall Toolbox.actionClass(tool:)(IntelligenceFlowPlannerSupport::GlobalToolIdentifier *tool)
{
  v3 = v1;
  v4 = sub_22BE5CE4C(&qword_27D90B2D0, &unk_22C28C990);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = type metadata accessor for Toolbox.Entry(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v10);
  sub_22BE26800();
  object = tool->toolId._object;
  representsBuiltInTool = tool->representsBuiltInTool;
  v16[1] = tool->toolId._countAndFlagsBits;
  v16[2] = object;
  deviceIdsId = tool->deviceIdsId;
  v18 = representsBuiltInTool;
  Toolbox.entry(tool:)();
  sub_22BE1AB5C(v7, 1, v8);
  if (v13)
  {
    result.value = sub_22BE33928(v7, &qword_27D90B2D0, &unk_22C28C990);
    EnumCaseMultiPayload = 4;
  }

  else
  {
    sub_22BF38654();
    sub_22BE1AB1C();
    sub_22BF38654();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result.value = sub_22BF36794();
  }

  *v3 = EnumCaseMultiPayload;
  return result;
}

void Toolbox.entry(tool:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  v70 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v67 = v8;
  sub_22BE183BC();
  v66 = sub_22C272114();
  sub_22BE179D8();
  v62 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  sub_22BE190A8(v11);
  v12 = sub_22BE5CE4C(&qword_27D90B2E8, &unk_22C28EBB0);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v72 = v14;
  sub_22BE183BC();
  v73 = sub_22C272CA4();
  sub_22BE179D8();
  v65 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v64 = v17;
  sub_22BE183BC();
  v18 = sub_22C272224();
  sub_22BE179D8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v22);
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v23);
  sub_22BE19490();
  v74 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v26 = 0;
  v75 = *v2;
  v76 = v2[1];
  v69 = v2[2];
  v71 = v2[3];
  HIDWORD(v68) = *(v2 + 32);
  v27 = v0[7];
  v28 = *(v27 + 16);
  while (v28 != v26)
  {
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
LABEL_22:
      sub_22BE185D0();
      swift_once();
      goto LABEL_20;
    }

    sub_22BE19E14();
    v30 = v18;
    (*(v20 + 16))(v0, v27 + v29 + *(v20 + 72) * v26, v18);
    v32 = sub_22C2721D4() == v75 && v31 == v76;
    if (v32)
    {

LABEL_14:
      v34 = *(v20 + 32);
      (v34)(v74, v0, v30);
      v35 = sub_22BE1AB1C();
      v34(v35);
      v36 = sub_22BE27288();
      v34(v36);
      type metadata accessor for Toolbox.Entry(0);
      sub_22BE311A8();
      goto LABEL_15;
    }

    v33 = sub_22C274014();

    if (v33)
    {
      goto LABEL_14;
    }

    v18 = v30;
    (*(v20 + 8))(v0, v30);
    ++v26;
  }

  v27 = v18;

  AssistantSchemaIdentifier.init(id:)();
  sub_22BE1AB5C(v72, 1, v73);
  if (v32)
  {
    sub_22BE33928(v72, &qword_27D90B2E8, &unk_22C28EBB0);
    v26 = v71;
  }

  else
  {
    v40 = sub_22BE25EFC();
    v41(v40);
    v42 = v0[11];
    v43 = v0[12];
    sub_22BE1BD3C(v0 + 8, v42);
    v44 = (*(v43 + 8))(v42, v43);
    sub_22BF16EA0(v44, v67);

    (*(v65 + 8))(v64, v73);
    sub_22BE1AB5C(v67, 1, v66);
    v26 = v71;
    if (!v45)
    {
      v34 = *(v62 + 32);
      (v34)(v61, v67, v66);
      v60 = sub_22BE1A8C4();
      v34(v60);
      type metadata accessor for Toolbox.Entry(0);
      sub_22BE311A8();
      goto LABEL_15;
    }

    sub_22BE33928(v67, &qword_27D90B2E0, &unk_22C28C9A0);
  }

  v46 = qword_27D906378;
  v28 = v76;

  if (v46 != -1)
  {
    goto LABEL_22;
  }

LABEL_20:
  v47 = sub_22C26E244();
  v48 = sub_22BE199F4(v47, qword_27D90B298);
  v77[0] = v75;
  v77[1] = v28;
  v77[2] = v69;
  v77[3] = v26;
  v78 = BYTE4(v68);
  Toolbox.subscript.getter(v77, v48, v49, v50, v51, v52, v53, v54, v61, v62, SWORD1(v62), SWORD2(v62), SBYTE6(v62), SHIBYTE(v62), v63, v64, v65, v66, v67, v68, v69, v70, v71, v0);

  sub_22BE187DC();
  sub_22BE19DC4(v55, v56, v57, v27);
  v34 = *(v20 + 32);
  v58 = sub_22BE1AB1C();
  v34(v58);
  v59 = sub_22BE27288();
  v34(v59);
  type metadata accessor for Toolbox.Entry(0);
  sub_22BE311A8();
LABEL_15:
  swift_storeEnumTagMultiPayload();
  sub_22BE187DC();
  sub_22BE19DC4(v37, v38, v39, v34);
  sub_22BE1AABC();
}

double Toolbox.entry(id:)()
{

  Toolbox.entry(tool:)();

  return result;
}

void AssistantSchemaIdentifier.init(id:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22C273064();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22BE5CE4C(&qword_27D90B2E8, &unk_22C28EBB0);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v13);
  sub_22BE181E4();
  sub_22C273054();
  sub_22C273034();
  v15 = v14;

  (*(v6 + 8))(v10, v4);
  if (v15 >> 60 == 15)
  {
    v16 = sub_22C272CA4();
    sub_22BE1A140();
    sub_22BE19DC4(v17, v18, v19, v16);
  }

  else
  {
    v20 = sub_22BE196A8();
    sub_22BE29D7C(v20, v21);
    if (qword_27D906388 != -1)
    {
      swift_once();
    }

    v16 = sub_22C272CA4();
    sub_22BE3D470();
    sub_22BE199AC(v22, v23, MEMORY[0x277D73378]);
    sub_22BE3EA80();
    sub_22C26DB54();
    sub_22BE19DC4(v1, 0, 1, v16);
    v24 = sub_22BE196A8();
    sub_22BF158B4(v24, v25);
    v26 = sub_22BE196A8();
    sub_22BF158B4(v26, v27);
  }

  sub_22BEBFD18();
  sub_22C272CA4();
  sub_22BE1AB5C(v0, 1, v16);
  if (v28)
  {
    sub_22BE33928(v0, &qword_27D90B2E8, &unk_22C28EBB0);
    v29 = 1;
  }

  else
  {
    (*(*(v16 - 8) + 32))(v3, v0, v16);
    v29 = 0;
  }

  sub_22BE19DC4(v3, v29, 1, v16);
  sub_22BE1AABC();
}

void Toolbox.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v138 = v28;
  v139 = v26;
  v141 = v29;
  v142 = v25;
  sub_22BE17BC4();
  sub_22C2720A4();
  sub_22BE179D8();
  v132 = v31;
  v133 = v30;
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  sub_22BE190A8(v34);
  v35 = sub_22BE5CE4C(&qword_27D90B2F0, &unk_22C28C9B0);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  v136 = v37;
  v135 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE18000();
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v40);
  sub_22BE19E94();
  v134 = v41;
  sub_22BE183BC();
  v42 = sub_22C272224();
  sub_22BE179D8();
  v145 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  v131 = v45;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v46);
  v48 = v127 - v47;
  v49 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v50 = sub_22BE19448(v49);
  MEMORY[0x28223BE20](v50);
  sub_22BE179EC();
  sub_22BE1AB80();
  v52 = *v24;
  v51 = v24[1];
  v54 = v24[2];
  v53 = v24[3];
  v55 = *(v24 + 32);
  v57 = *(v56 + 28);
  sub_22C26E244();
  sub_22BE18000();
  v59 = v27 + v57;
  v60 = v52;
  (*(v58 + 16))(v59, v141);
  *v27 = v52;
  *(v27 + 8) = v51;
  v129 = v54;
  *(v27 + 16) = v54;
  *(v27 + 24) = v53;
  v140 = v27;
  v149 = v55;
  *(v27 + 32) = v55;
  v61 = v142[7];
  v62 = *(v61 + 16);
  v143 = (v145 + 16);
  v144 = v62;
  v63 = (v145 + 8);

  v137 = v53;

  for (i = 0; ; ++i)
  {
    if (v144 == i)
    {
      v144 = v42;
      v72 = v142;
      v73 = *v142;
      v74 = v136;
      sub_22BF30C54();
      sub_22BE1AB5C(v74, 1, v135);
      if (v68)
      {
        v135 = v73;
        sub_22BE33928(v74, &qword_27D90B2F0, &unk_22C28C9B0);
        v76 = v72[5];
        v75 = v72[6];
        sub_22BE1BD3C(v72 + 2, v76);
        v147[0] = v60;
        v147[1] = v51;
        v147[2] = v129;
        v147[3] = v137;
        v148 = v149;
        v77 = *(v75 + 16);

        v78 = v131;
        v79 = v139;
        v77(v147, v141, v76, v75);
        if (v79)
        {

          v147[0] = v79;
          v80 = v79;
          sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
          if (swift_dynamicCast() && (a14 & 1) == 0)
          {

            v110 = v127[0];
            sub_22C271B24();

            v111 = sub_22C272084();
            v112 = sub_22C2737C4();

            if (os_log_type_enabled(v111, v112))
            {
              sub_22BE1A260();
              v113 = swift_slowAlloc();
              sub_22BE2386C();
              v114 = swift_slowAlloc();
              v146 = v114;
              *v113 = 136315138;
              v115 = sub_22BE33560();
              *(v113 + 4) = sub_22BE61C88(v115, v116, v117);
              sub_22BF3952C(&dword_22BE15000, v118, v119, "Error unableToFindMatchingTool %s - Toolbox caching nil");
              sub_22BE26B64(v114);
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
            }

            (*(v132 + 8))(v110, v133);
            v120 = v128;
            sub_22BE1A140();
            sub_22BE19DC4(v121, v122, v123, v124);
            sub_22BF30CA0();
            sub_22BE33928(v120, &qword_27D90B2D8, &qword_22C2B5080);
            v125 = sub_22BF385E0();
            sub_22BE196B4(&type metadata for ToolDatabase.Error, v125);
            *v126 = 1;
            swift_willThrow();
            sub_22BE1924C();
            sub_22BF36794();

            goto LABEL_20;
          }

          v145 = v60;

          v81 = v51;
          v82 = v127[1];
          sub_22C271B24();

          v83 = v79;
          v84 = sub_22C272084();
          v85 = sub_22C2737A4();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            sub_22BE2386C();
            v88 = swift_slowAlloc();
            v147[0] = v88;
            *v86 = 138412546;
            v89 = v79;
            v90 = _swift_stdlib_bridgeErrorToNSError();
            *(v86 + 4) = v90;
            *v87 = v90;
            *(v86 + 12) = 2080;
            *(v86 + 14) = sub_22BE61C88(v145, v81, v147);
            _os_log_impl(&dword_22BE15000, v84, v85, "Unexpected error %@ for %s - Toolbox not caching nil", v86, 0x16u);
            sub_22BE33928(v87, &qword_27D907870, &qword_22C27AB50);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE26B64(v88);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
          }

          (*(v132 + 8))(v82, v133);
          swift_willThrow();
          sub_22BE1924C();
          goto LABEL_25;
        }

        v42 = v144;
        v106 = v128;
        (*v143)(v128, v78, v144);
        sub_22BE187DC();
        sub_22BE19DC4(v107, v108, v109, v42);
        sub_22BF30CA0();
        sub_22BE33928(v106, &qword_27D90B2D8, &qword_22C2B5080);
        v48 = v78;
      }

      else
      {
        v91 = v134;
        sub_22BEBFD18();
        v92 = v130;
        sub_22BE22868();
        v42 = v144;
        v93 = sub_22BE1AEA8(v92, 1, v144);
        if (v93 == 1)
        {
          sub_22BE33928(v92, &qword_27D90B2D8, &qword_22C2B5080);
          v94 = v127[2];
          sub_22C271B24();

          v95 = sub_22C272084();
          v96 = sub_22C273784();

          if (os_log_type_enabled(v95, v96))
          {
            sub_22BE1A260();
            v97 = swift_slowAlloc();
            sub_22BE2386C();
            v98 = swift_slowAlloc();
            v147[0] = v98;
            *v97 = 136315138;
            v99 = sub_22BE33560();
            *(v97 + 4) = sub_22BE61C88(v99, v100, v101);
            sub_22BF3952C(&dword_22BE15000, v102, v103, "Toolbox cached nil for %s");
            sub_22BE26B64(v98);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
          }

          (*(v132 + 8))(v94, v133);
          v104 = sub_22BF385E0();
          sub_22BE196B4(&type metadata for ToolDatabase.Error, v104);
          *v105 = 0;
          swift_willThrow();
          sub_22BE33928(v134, &qword_27D90B2D8, &qword_22C2B5080);
          sub_22BE1924C();
LABEL_25:
          sub_22BF36794();
          goto LABEL_20;
        }

        sub_22BE33928(v91, &qword_27D90B2D8, &qword_22C2B5080);
        v48 = v92;
      }

LABEL_19:
      sub_22BE1924C();
      sub_22BF36794();
      (*(v145 + 4))(v138, v48, v42);
LABEL_20:
      sub_22BE18478();
      return;
    }

    if (i >= *(v61 + 16))
    {
      break;
    }

    sub_22BE19E14();
    (*(v66 + 16))(v48, v61 + v65 + *(v66 + 72) * i, v42);
    v68 = sub_22C2721D4() == v60 && v67 == v51;
    if (v68)
    {

      goto LABEL_19;
    }

    v69 = v60;
    v70 = v51;
    sub_22BE30F20();
    v71 = sub_22C274014();

    if (v71)
    {
      goto LABEL_19;
    }

    (*v63)(v48, v42);
    v51 = v70;
    v60 = v69;
  }

  __break(1u);
}

void Toolbox.Entry.parameters.getter()
{
  sub_22BE19460();
  v2 = type metadata accessor for Toolbox.BuiltInDefinition(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v4);
  sub_22C272114();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE22DB8();
  v6 = sub_22C272224();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1AB80();
  type metadata accessor for Toolbox.Entry(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  sub_22BF386AC();
  sub_22BE289D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v16 = sub_22BE1AEE4();
      v17(v16);
      sub_22C2720E4();
      v18 = sub_22BE33560();
      v19(v18);
      break;
    case 3u:
      sub_22BF38654();
      sub_22BE19454();
      sub_22BF386AC();
      (*(v8 + 32))(v1, v0, v6);
      sub_22C272134();
      v20 = sub_22BE1C2A0();
      v21(v20);
      sub_22BF36794();
      break;
    default:
      (*(v8 + 32))(v1, v13, v6);
      sub_22C272134();
      v14 = sub_22BE1C2A0();
      v15(v14);
      break;
  }

  sub_22BE1AABC();
}

double Toolbox.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = qword_27D906378;

  if (v4 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v5 = sub_22C26E244();
  v6 = sub_22BE199F4(v5, qword_27D90B298);
  LOBYTE(v16) = 0;
  Toolbox.subscript.getter(&v15, v6, v7, v8, v9, v10, v11, v12, v14, a1, SWORD1(a1), SWORD2(a1), SBYTE6(a1), SHIBYTE(a1), a2, 0, 0, v16, v17, v18, v19, v20, v21, v22);

  return result;
}

void sub_22BF30C54()
{
  sub_22BE39064();
  sub_22BF367E8(v1);

  os_unfair_lock_unlock(v0 + 4);
}

void sub_22BF30CA0()
{
  sub_22BF3950C();
  v1 = sub_22BE1C2A0();
  sub_22BF374A8(v1, v2);

  os_unfair_lock_unlock(v0 + 4);
}

void static Toolbox.ContainerForTypeLookup.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22C272AC4();
  sub_22BE179D8();
  v38 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v36 = v5;
  v6 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v37 = v8;
  v9 = sub_22BE5CE4C(&qword_27D9071E8, &unk_22C28C9C0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1AB80();
  v11 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = v14 - v13;
  v16 = sub_22BE5CE4C(&qword_27D9071F0, &qword_22C275070);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE336DC();
  v19 = *(v18 + 56);
  sub_22BF386AC();
  sub_22BF386AC();
  sub_22BE1AB5C(v0, 1, v6);
  if (v20)
  {
    sub_22BE1AB5C(v0 + v19, 1, v6);
    if (v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_22BE17CD4();
    sub_22BF386AC();
    sub_22BE1AB5C(v0 + v19, 1, v6);
    if (!v20)
    {
      v21 = *(v9 + 48);
      sub_22BEBFD18();
      sub_22BEBFD18();
      sub_22BE3675C();
      sub_22BE1AB5C(v22, v23, v24);
      if (v25)
      {
        sub_22BE3675C();
        sub_22BE1AB5C(v26, v27, v28);
        if (v20)
        {
          sub_22BE33928(v1, &unk_27D906F38, qword_22C274D30);
LABEL_19:
          sub_22BF394A4();
          sub_22BF36794();
          goto LABEL_20;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22BE3675C();
        sub_22BE1AB5C(v29, v30, v31);
        if (!v32)
        {
          (*(v38 + 32))(v36, v1 + v21, v2);
          sub_22BE3E5A4();
          sub_22BE199AC(v33, v34, MEMORY[0x277D73120]);
          sub_22BE196A8();
          sub_22C272FD4();
          v35 = *(v38 + 8);
          v35(v36, v2);
          v35(v37, v2);
          sub_22BE33928(v1, &unk_27D906F38, qword_22C274D30);
          goto LABEL_19;
        }

        (*(v38 + 8))(v37, v2);
      }

      sub_22BE33928(v1, &qword_27D9071E8, &unk_22C28C9C0);
      goto LABEL_19;
    }

    sub_22BE33928(v15, &unk_27D906F38, qword_22C274D30);
  }

  sub_22BE33928(v0, &qword_27D9071F0, &qword_22C275070);
LABEL_20:
  sub_22BE1AABC();
}

void Toolbox.ContainerForTypeLookup.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  sub_22BE23C8C();
  v24 = sub_22C272AC4();
  sub_22BE179D8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v30 = v29 - v28;
  v31 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v32);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE17CD4();
  sub_22BE1B18C();
  sub_22BF386AC();
  sub_22BE1AB5C(v21, 1, v31);
  if (v38)
  {
    MEMORY[0x2318AC860](1);
  }

  else
  {
    sub_22BEBFD18();
    MEMORY[0x2318AC860](0);
    sub_22BE2590C();
    sub_22BE22868();
    sub_22BE1AB5C(v20, 1, v24);
    if (v38)
    {
      sub_22C274174();
    }

    else
    {
      (*(v26 + 32))(v30, v20, v24);
      sub_22C274174();
      sub_22BE3E5A4();
      sub_22BE199AC(v39, v40, MEMORY[0x277D73118]);
      sub_22C272EE4();
      (*(v26 + 8))(v30, v24);
    }

    sub_22BE33928(v35, &unk_27D906F38, qword_22C274D30);
  }

  sub_22BE1AABC();
}

void Toolbox.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v151 = v21;
  v148 = v20;
  v149 = v25;
  v153 = v26;
  v28 = v27;
  v140 = v29;
  v150 = sub_22C2728E4();
  sub_22BE179D8();
  v139 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v141 = v32;
  sub_22BE183BC();
  v33 = sub_22C272984();
  sub_22BE179D8();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  v135 = v39;
  sub_22BE183BC();
  sub_22C2720A4();
  sub_22BE179D8();
  v146 = v41;
  v147 = v40;
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  v138 = v42;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v136 = v45;
  v46 = sub_22BE5CE4C(&qword_27D90B308, &qword_22C28C9D0);
  sub_22BE19448(v46);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  v49 = &v132 - v48;
  v50 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
  sub_22BE18000();
  MEMORY[0x28223BE20](v51);
  sub_22BE17B98();
  v137 = v52;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v53);
  v55 = &v132 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v132 - v57;
  v59 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v60 = v59 - 8;
  MEMORY[0x28223BE20](v59);
  sub_22BE179EC();
  sub_22BE1AB80();
  v144 = v35;
  v145 = v33;
  v61 = sub_22BE2590C();
  v62 = v148;
  v142 = v63;
  v143 = v35 + 16;
  (v63)(v61);
  sub_22BE17CD4();
  sub_22BF386AC();
  v64 = *(v60 + 32);
  sub_22C26E244();
  sub_22BE18000();
  v66 = v149;
  (*(v65 + 16))(v22 + v64);
  v67 = *v62;
  v152 = v22;
  sub_22BF31DDC();
  sub_22BE1AB5C(v49, 1, v50);
  if (!v86)
  {
    sub_22BEBFD18();
    sub_22BE1AEE4();
    sub_22BE22868();
    v85 = v150;
    sub_22BE1AB5C(v55, 1, v150);
    if (!v86)
    {
      v70 = v55;
      v98 = v139;
LABEL_15:
      sub_22BE33928(v58, &qword_27D90B310, &qword_22C28C9D8);
      sub_22BE1BA7C();
      sub_22BF36794();
      (*(v98 + 32))(v140, v70, v85);
      goto LABEL_21;
    }

    sub_22BE33928(v55, &qword_27D90B310, &qword_22C28C9D8);
    v87 = v136;
    sub_22C271B24();
    v88 = v135;
    v142(v135, v28, v145);
    v89 = sub_22C272084();
    v90 = sub_22C273784();
    if (os_log_type_enabled(v89, v90))
    {
      sub_22BE1A260();
      v91 = swift_slowAlloc();
      sub_22BE2386C();
      v92 = v58;
      v93 = swift_slowAlloc();
      a10 = v93;
      *v91 = 136315138;
      v94 = v88;
      sub_22C272944();
      sub_22BE194EC();
      v96 = v95;
      sub_22BE26874();
      v97();
      sub_22BE61C88(v94, v96, &a10);
      sub_22BE194EC();

      *(v91 + 4) = v94;
      _os_log_impl(&dword_22BE15000, v89, v90, "Toolbox cached nil for %s", v91, 0xCu);
      sub_22BE26B64(v93);
      v58 = v92;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    else
    {

      sub_22BE26874();
      v119 = sub_22BE289D8();
      v120(v119);
    }

    (*(v146 + 8))(v87, v147);
    v121 = sub_22BF385E0();
    sub_22BE196B4(&type metadata for ToolDatabase.Error, v121);
    *v122 = 1;
    swift_willThrow();
    sub_22BE33928(v58, &qword_27D90B310, &qword_22C28C9D8);
LABEL_20:
    sub_22BE1BA7C();
    sub_22BF36794();
    goto LABEL_21;
  }

  v136 = v67;
  v85 = v150;
  sub_22BE33928(v49, &qword_27D90B308, &qword_22C28C9D0);
  v68 = v62[5];
  v69 = v62[6];
  sub_22BE1BD3C(v62 + 2, v68);
  v70 = v141;
  v71 = v151;
  (*(v69 + 24))(v28, v153, v66, v68, v69);
  if (!v71)
  {
    v98 = v139;
    v58 = v137;
    v114 = sub_22BE18240();
    v115(v114);
    sub_22BE187DC();
    sub_22BE19DC4(v116, v117, v118, v85);
    sub_22BF31E28();
    goto LABEL_15;
  }

  a10 = v71;
  v72 = v71;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (!swift_dynamicCast() || v155 != 1)
  {

    v99 = v138;
    sub_22C271B24();
    v100 = sub_22BE33560();
    (v142)(v100);
    v101 = v71;
    v102 = sub_22C272084();
    v103 = sub_22C2737A4();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      sub_22BE2386C();
      v153 = swift_slowAlloc();
      a10 = v153;
      *v104 = 138412546;
      v106 = v71;
      v107 = _swift_stdlib_bridgeErrorToNSError();
      *(v104 + 4) = v107;
      *v105 = v107;
      *(v104 + 12) = 2080;
      sub_22C272944();
      sub_22BE26874();
      v108 = sub_22BE27BA4();
      v109(v108);
      v110 = sub_22BE3E8FC();
      v113 = sub_22BE61C88(v110, v111, v112);

      *(v104 + 14) = v113;
      _os_log_impl(&dword_22BE15000, v102, v103, "Unexpected error %@ for %s - Toolbox not caching nil", v104, 0x16u);
      sub_22BE33928(v105, &qword_27D907870, &qword_22C27AB50);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE26B64(v153);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      (*(v146 + 8))(v138, v147);
    }

    else
    {

      sub_22BE26874();
      v123 = sub_22BE27BA4();
      v124(v123);
      (*(v146 + 8))(v99, v147);
    }

    swift_willThrow();
    goto LABEL_20;
  }

  v73 = v134;
  sub_22C271B24();
  v74 = v133;
  v75 = v145;
  v142(v133, v28, v145);
  v76 = sub_22C272084();
  v77 = sub_22C2737C4();
  if (os_log_type_enabled(v76, v77))
  {
    sub_22BE1A260();
    v78 = swift_slowAlloc();
    sub_22BE2386C();
    v79 = swift_slowAlloc();
    v154 = v79;
    *v78 = 136315138;
    sub_22C272944();
    sub_22BE26874();
    v80();
    v81 = sub_22BE3E8FC();
    v84 = sub_22BE61C88(v81, v82, v83);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_22BE15000, v76, v77, "Error unableToFindMatchingType %s - Toolbox caching nil", v78, 0xCu);
    sub_22BE26B64(v79);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  else
  {

    sub_22BE26874();
    v125(v74, v75);
  }

  (*(v146 + 8))(v73, v147);
  v126 = v137;
  sub_22BE1A140();
  sub_22BE19DC4(v127, v128, v129, v85);
  sub_22BE2590C();
  sub_22BF31E28();
  sub_22BE33928(v126, &qword_27D90B310, &qword_22C28C9D8);
  v130 = sub_22BF385E0();
  sub_22BE196B4(&type metadata for ToolDatabase.Error, v130);
  *v131 = 1;
  swift_willThrow();
  sub_22BE1BA7C();
  sub_22BF36794();

LABEL_21:
  sub_22BE18478();
}

void sub_22BF31DDC()
{
  sub_22BE39064();
  sub_22BF36E48(v1);

  os_unfair_lock_unlock(v0 + 4);
}

void sub_22BF31E28()
{
  sub_22BF3950C();
  v1 = sub_22BE1C2A0();
  sub_22BF37D44(v1, v2);

  os_unfair_lock_unlock(v0 + 4);
}

void Toolbox.appIntents(schemaIdentifier:)()
{
  sub_22BE19460();
  v2 = v1;
  sub_22C272CA4();
  sub_22BE179D8();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v5);
  sub_22BE26800();
  sub_22C2720A4();
  sub_22BE179D8();
  v34 = v7;
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  v8 = sub_22C272C54();
  v10 = v9;
  v11._countAndFlagsBits = sub_22C272C64();
  v13 = v12;
  v14._countAndFlagsBits = v8;
  v14._object = v10;
  v11._object = v13;
  v15 = Toolbox.appIntentsConformingToSchema(kind:domain:)(v14, v11);

  if (v15)
  {
    MEMORY[0x28223BE20](v16);
    *(&v32 - 2) = v2;
    sub_22BF2DFC4();
    if (!*(v17 + 16))
    {

      sub_22C271B24();
      v18 = *(v33 + 16);
      v19 = sub_22BE3EA80();
      v18(v19);
      v20 = sub_22C272084();
      v21 = sub_22C2737A4();
      if (os_log_type_enabled(v20, v21))
      {
        sub_22BE1A260();
        v22 = swift_slowAlloc();
        sub_22BE2386C();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v22 = 136315138;
        v23 = sub_22BE18240();
        v18(v23);
        sub_22BE33560();
        v24 = sub_22C273074();
        v26 = v25;
        v27 = sub_22BE1AB1C();
        v28(v27);
        v29 = sub_22BE61C88(v24, v26, &v36);

        *(v22 + 4) = v29;
        _os_log_impl(&dword_22BE15000, v20, v21, "no tools implement schema ID %s", v22, 0xCu);
        sub_22BE26B64(v32);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      else
      {

        v30 = sub_22BE1AB1C();
        v31(v30);
      }

      (*(v34 + 8))(v0, v35);
    }
  }

  sub_22BE1AABC();
}

Swift::OpaquePointer_optional __swiftcall Toolbox.appIntentsConformingToSchema(kind:domain:)(Swift::String kind, Swift::String domain)
{
  sub_22BE19460();
  v5 = v4;
  v33 = v6;
  v8 = v7;
  sub_22BE17BC4();
  sub_22C2720A4();
  sub_22BE179D8();
  v31 = v10;
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v30 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  v13 = v3[5];
  v14 = v3[6];
  sub_22BE1BD3C(v3 + 2, v13);
  sub_22BE5CE4C(&qword_27D90B318, &qword_22C28C9E0);
  sub_22BE23C8C();
  sub_22C2720C4();
  sub_22BE179D8();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22C275160;
  v19 = (v18 + v17);
  *v19 = v2;
  v19[1] = v8;
  v19[2] = v33;
  v19[3] = v5;
  (*(v16 + 104))();
  v20 = qword_27D906378;

  if (v20 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v21 = sub_22C26E244();
  sub_22BE199F4(v21, qword_27D90B298);
  v22 = sub_22C26E1F4();
  v24 = (*(v14 + 32))(v18, v22, v23, v13, v14);

  if (!*(v24 + 16))
  {

    sub_22C271B24();

    v27 = sub_22C272084();
    v28 = sub_22C2737A4();

    if (os_log_type_enabled(v27, v28))
    {
      sub_22BE1A260();
      v29 = swift_slowAlloc();
      sub_22BE2386C();
      v34 = swift_slowAlloc();
      *(v29 + 4) = sub_22BE37BC4(4.8149e-34);
      _os_log_impl(&dword_22BE15000, v27, v28, "no tools implement schema ID %s", v29, 0xCu);
      sub_22BE26B64(v34);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    (*(v31 + 8))(v30, v32);
  }

  sub_22BE1AABC();
  result.value._rawValue = v25;
  result.is_nil = v26;
  return result;
}

BOOL sub_22BF32520(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C272164();
  v6[2] = a2;
  v4 = sub_22BF0CC88(sub_22BF39380, v6, v3);

  return v4;
}

uint64_t sub_22BF325A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C272CA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C2720D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D72148])
  {
    (*(v8 + 96))(v11, v7);
    (*(v4 + 32))(v6, v11, v3);
    sub_22BE199AC(&qword_28106DED8, MEMORY[0x277D73358], MEMORY[0x277D73370]);
    v12 = sub_22C272FD4();
    (*(v4 + 8))(v6, v3);
    if (v12)
    {
      return 1;
    }
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

void Toolbox.appIntent(for:appBundleId:)()
{
  sub_22BE19130();
  v60 = v0;
  v61 = v1;
  v3 = v2;
  v4 = sub_22C2720A4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v50 = v8;
  sub_22BE183BC();
  v59 = sub_22C272AC4();
  sub_22BE179D8();
  v55 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v58 = v11;
  sub_22BE183BC();
  v12 = sub_22C272224();
  sub_22BE179D8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v53 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v63 = v18;
  Toolbox.appIntents(schemaIdentifier:)();
  if (v19)
  {
    v20 = v19;
    v48 = v6;
    v49 = v4;
    v21 = 0;
    v62 = *(v19 + 16);
    v56 = (v55 + 8);
    v52 = (v14 + 32);
    v54 = MEMORY[0x277D84F90];
    v22 = v12;
    for (i = v3; ; v3 = i)
    {
      while (1)
      {
        if (v62 == v21)
        {

          if (*(v54 + 16) <= 1uLL)
          {
            sub_22BF2DB0C(v54, MEMORY[0x277D72238], v3);
          }

          else
          {

            sub_22C271B24();
            v38 = sub_22C272084();
            v39 = sub_22C2737A4();
            v40 = sub_22BE28610();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              _os_log_impl(&dword_22BE15000, v38, v39, "ToolKit's build-time static extraction tools enforce that there may only be one AppEntity, AppIntent or AppEnum per application allowed to conform to a particular schema.", v42, 2u);
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
            }

            (*(v48 + 8))(v50, v49);
            v43 = sub_22BF38764();
            sub_22BE196B4(&type metadata for ToolBoxError, v43);
            *v44 = 13;
            swift_willThrow();
          }

          goto LABEL_23;
        }

        if (v21 >= *(v20 + 16))
        {
          __break(1u);
          return;
        }

        v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v24 = *(v14 + 72);
        v25 = v21;
        v26 = v20 + v23 + v24 * v21;
        v27 = v22;
        (*(v14 + 16))(v63, v26, v22);
        sub_22C272154();
        v28 = sub_22C272A24();
        v30 = v29;
        (*v56)(v58, v59);
        if (v28 != v60 || v30 != v61)
        {
          break;
        }

LABEL_12:
        v33 = *v52;
        v22 = v27;
        (*v52)(v53, v63, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v54;
        v51 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BF394EC(*(v54 + 16));
          v22 = v27;
          v35 = v54;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_22BE711C4(v36 > 1, v37 + 1, 1);
          v22 = v27;
          v35 = v54;
        }

        v21 = v25 + 1;
        *(v35 + 16) = v37 + 1;
        v54 = v35;
        v51(v35 + v23 + v37 * v24, v53, v22);
        v3 = i;
      }

      sub_22BE25EFC();
      v32 = sub_22C274014();

      if (v32)
      {
        goto LABEL_12;
      }

      v22 = v27;
      (*(v14 + 8))(v63, v27);
      v21 = v25 + 1;
    }
  }

  sub_22BE1A140();
  sub_22BE19DC4(v45, v46, v47, v12);
LABEL_23:
  sub_22BE18478();
}

void sub_22BF32CAC()
{
  sub_22BE19460();
  v99 = v2;
  v93 = sub_22C272224();
  sub_22BE179D8();
  v92 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v5);
  v7 = &v89 - v6;
  v8 = sub_22C2720A4();
  sub_22BE179D8();
  v94 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  sub_22BE190A8(v11);
  v12 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE336DC();
  v14 = sub_22C272AC4();
  sub_22BE179D8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v20 = v19 - v18;
  v21 = *(v1 + 8);
  os_unfair_lock_lock((v21 + 36));
  v22 = *(v21 + 16);
  if (*(v21 + 32))
  {
    v23 = *(v21 + 16);
    v101 = *(v21 + 24);
  }

  else
  {

    v24 = sub_22BE25EFC();
    v26 = sub_22BF39370(v24, v25, 0);
    v22(v105, v26);
    v27 = sub_22BE25EFC();
    sub_22BF39370(v27, v28, 0);
    v22 = v105[0];
    v29 = v105[1];
    *(v21 + 16) = v105[0];
    *(v21 + 24) = v29;
    *(v21 + 32) = 1;
    v23 = v22;
    v101 = v29;
  }

  sub_22BF39330(v23);
  os_unfair_lock_unlock((v21 + 36));
  if (!v22)
  {
    goto LABEL_46;
  }

  v104 = v22;
  v90 = v8;
  sub_22BE5CE4C(&qword_27D90B3E8, &qword_22C28CE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C2759F0;
  sub_22C272154();
  v31 = sub_22C272A24();
  v33 = v32;
  v34 = *(v16 + 8);
  v34(v20, v14);
  *(inited + 32) = v31;
  v95 = inited + 32;
  v96 = inited;
  *(inited + 40) = v33;
  sub_22C272194();
  sub_22BE1AB5C(v0, 1, v14);
  if (v56)
  {
    sub_22BE33928(v0, &unk_27D906F38, qword_22C274D30);
    v35 = 0;
    v37 = 0;
  }

  else
  {
    v35 = sub_22C272A24();
    v37 = v36;
    v34(v0, v14);
  }

  v38 = v96;
  *(v96 + 48) = v35;
  *(v38 + 56) = v37;
  v39 = sub_22C2721D4();
  v41 = v40;
  v42 = 0;
  v43 = 0;
  v44 = v104;
  v102 = v101 + 56;
  v103 = v104 + 7;
  v45 = v95;
  v97 = v7;
  while (1)
  {
    v46 = v42;
    v47 = (v45 + 16 * v43);
    v48 = v47[1];
    if (!v48)
    {
      goto LABEL_38;
    }

    v100 = v46;
    v49 = *v47;
    if (v44[2])
    {
      sub_22C274154();

      sub_22C272F44();
      v50 = sub_22C2741A4();
      v51 = ~(-1 << *(v44 + 32));
      do
      {
        v52 = v50 & v51;
        v53 = (1 << (v50 & v51)) & *(v103 + (((v50 & v51) >> 3) & 0xFFFFFFFFFFFFFF8));
        v54 = v53 != 0;
        if (!v53)
        {
          break;
        }

        v55 = (v104[6] + 16 * v52);
        v56 = *v55 == v49 && v48 == v55[1];
        if (v56)
        {
          break;
        }

        sub_22BE30F20();
        v57 = sub_22C274014();
        v50 = v52 + 1;
      }

      while ((v57 & 1) == 0);
    }

    else
    {

      v54 = 0;
    }

    v58 = v101;
    if (!*(v101 + 16))
    {

      goto LABEL_37;
    }

    sub_22C274154();

    sub_22C272F44();
    sub_22C272F44();
    v59 = sub_22C2741A4();
    v60 = -1 << *(v58 + 32);
    v7 = v59 & ~v60;
    if ((*(v102 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      break;
    }

    sub_22BE29488();
LABEL_37:
    v44 = v104;
    LOBYTE(v46) = v100;
    if (v54)
    {

      v88 = sub_22BE1A8C4();
      sub_22BF2AE88(v88);
      v69 = 0;
      v54 = 1;
      v70 = v93;
      goto LABEL_42;
    }

LABEL_38:
    v42 = 1;
    v43 = 1;
    if (v46)
    {
      v68 = sub_22BE1A8C4();
      sub_22BF2AE88(v68);

      swift_setDeallocating();
      sub_22BEDDA5C();
      goto LABEL_46;
    }
  }

  v61 = ~v60;
  v62 = *(v58 + 48);
  while (1)
  {
    v63 = (v62 + 32 * v7);
    v64 = v63[2];
    v65 = v63[3];
    v66 = *v63 == v39 && v63[1] == v41;
    if (v66 || (sub_22C274014() & 1) != 0)
    {
      if (v64 == v49 && v48 == v65)
      {
        break;
      }

      sub_22BE1A8C4();
      sub_22BE30F20();
      if (sub_22C274014())
      {
        break;
      }
    }

    v7 = (v7 + 1) & v61;
    if (((*(v102 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {

      sub_22BE29488();
      v45 = v95;
      goto LABEL_37;
    }
  }

  swift_bridgeObjectRelease_n();
  sub_22BF2AE88(v104);
  v69 = 1;
  v70 = v93;
  sub_22BE29488();
LABEL_42:
  swift_setDeallocating();
  sub_22BEDDA5C();
  sub_22C271B24();
  v71 = *(v92 + 16);
  v72 = sub_22BE289D8();
  v71(v72);
  v73 = v70;
  v74 = sub_22C272084();
  v75 = sub_22C273794();
  v76 = sub_22BE28610();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    LODWORD(v103) = v69;
    v79 = v78;
    sub_22BE2386C();
    v104 = swift_slowAlloc();
    v105[0] = v104;
    *v79 = 136315650;
    (v71)(v91, v7, v73);
    v80 = sub_22C273074();
    v82 = v81;
    v83 = sub_22BE289D8();
    v84(v83);
    v85 = sub_22BE61C88(v80, v82, v105);

    *(v79 + 4) = v85;
    *(v79 + 12) = 1024;
    *(v79 + 14) = v103;
    *(v79 + 18) = 1024;
    *(v79 + 20) = v54;
    _os_log_impl(&dword_22BE15000, v74, v75, "toolDefinition: %s is deny listed. isDeniedTool: %{BOOL}d, isDeniedBundleId: %{BOOL}d", v79, 0x18u);
    sub_22BE26B64(v104);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  else
  {

    v86 = sub_22BE289D8();
    v87(v86);
  }

  (*(v94 + 8))(v98, v90);
LABEL_46:
  sub_22BE1AABC();
}

void Toolbox.bundleIds(schemaIdentifier:)()
{
  sub_22BE19460();
  v38 = sub_22C272AC4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v37 = v4;
  sub_22BE183BC();
  v36 = sub_22C272224();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  Toolbox.appIntents(schemaIdentifier:)();
  if (v11)
  {
    MEMORY[0x28223BE20](v11);
    *(&v32 - 2) = v0;
    sub_22BF2DFC4();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v6 + 16;
      sub_22BE19E14();
      v32 = v15;
      v17 = v15 + v16;
      v33 = *(v14 + 56);
      v34 = v18;
      v19 = (v2 + 8);
      v35 = v14;
      v20 = (v14 - 8);
      v21 = MEMORY[0x277D84F90];
      do
      {
        v22 = sub_22BE3EA80();
        v23 = v36;
        v34(v22);
        v24 = v37;
        sub_22C272154();
        v25 = sub_22C272A24();
        v27 = v26;
        (*v19)(v24, v38);
        (*v20)(v10, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BE66214();
          v21 = v30;
        }

        v28 = *(v21 + 16);
        if (v28 >= *(v21 + 24) >> 1)
        {
          sub_22BE66214();
          v21 = v31;
        }

        *(v21 + 16) = v28 + 1;
        v29 = v21 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v27;
        v17 += v33;
        --v13;
      }

      while (v13);
    }
  }

  sub_22BE1AABC();
}

uint64_t sub_22BF33714()
{
  v0 = sub_22C272294();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  sub_22BF32CAC();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    sub_22C272174();
    sub_22C272284();
    sub_22BE199AC(&qword_28106DF78, MEMORY[0x277D72418], MEMORY[0x277D72420]);
    v8 = sub_22C273974();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);
  }

  return v8 & 1;
}

void Toolbox.isToolAvailable(toolDefinition:)()
{
  sub_22BE19460();
  v137 = v0;
  v4 = v3;
  v5 = sub_22C272224();
  sub_22BE179D8();
  v118 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  v112 = v9;
  sub_22BE183BC();
  v10 = sub_22C2720A4();
  sub_22BE179D8();
  v119 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v113 = v14;
  sub_22BE183BC();
  v130 = sub_22C2729A4();
  sub_22BE179D8();
  v126 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  sub_22BE190A8(v17);
  v129 = sub_22BE5CE4C(&qword_27D90B328, &qword_22C28C9E8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v128 = v19;
  v20 = sub_22BE5CE4C(&qword_27D90B330, &qword_22C28C9F0);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19490();
  v127 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  v131 = v25;
  sub_22BE183BC();
  v139 = sub_22C272D74();
  sub_22BE179D8();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v138 = v29;
  sub_22BE183BC();
  v30 = sub_22C2729F4();
  sub_22BE179D8();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v34);
  v36 = &v106 - v35;
  ToolDefinition.isAvailableForToolboxIndexing.getter();
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_22BF32CAC();
  if (v38)
  {
    goto LABEL_27;
  }

  v108 = v4;
  v137 = *(sub_22C272144() + 16);
  if (v137)
  {
    v115 = v2;
    v132 = v1;
    v107 = v5;
    v106 = v10;
    v39 = 0;
    sub_22BE19E14();
    v136 = v40 + v41;
    v134 = v32 + 88;
    v135 = v32 + 16;
    v133 = *MEMORY[0x277D72FE0];
    v42 = (v32 + 8);
    v124 = v32 + 96;
    v123 = *MEMORY[0x277D72FD0];
    v122 = v27 + 32;
    v109 = (v126 + 4);
    v114 = (v126 + 1);
    v126 = (v27 + 8);
    v140 = v36;
    v43 = v127;
    v44 = v40;
    v110 = (v32 + 8);
    v125 = v40;
    v141 = v30;
    v121 = v32;
    while (1)
    {
      if (v39 >= *(v44 + 16))
      {
        __break(1u);
        return;
      }

      v45 = *(v32 + 16);
      v46 = v140;
      v45(v140, v136 + *(v32 + 72) * v39, v30);
      v47 = v132;
      v45(v132, v46, v141);
      v30 = v141;
      v48 = sub_22BE180C8();
      v50 = v49(v48);
      if (v50 == v133)
      {
        break;
      }

      v59 = *v42;
      if (v50 == v123)
      {
        v60 = sub_22BE180C8();
        v59(v60);
        v61 = v140;
        if ((sub_22C2729E4() & 1) == 0)
        {

          v69 = v117;
          sub_22C271B24();
          sub_22BE29488();
          v70 = v116;
          (*(v30 + 16))(v116, v108, v107);
          v71 = sub_22C272084();
          v72 = sub_22C2737C4();
          v73 = sub_22BE28610();
          if (os_log_type_enabled(v73, v74))
          {
            sub_22BE1A260();
            v75 = v69;
            v76 = swift_slowAlloc();
            sub_22BE2386C();
            v77 = swift_slowAlloc();
            v142[0] = v77;
            *v76 = 136315138;
            v78 = sub_22C2721D4();
            v80 = v79;
            (*(v30 + 8))(v70, v107);
            v81 = sub_22BE61C88(v78, v80, v142);

            *(v76 + 4) = v81;
            _os_log_impl(&dword_22BE15000, v71, v72, "Skipping tool due to disabled feature flag: %s", v76, 0xCu);
            sub_22BE26B64(v77);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();

            sub_22BE196EC();
            v83 = v75;
          }

          else
          {

            v102 = sub_22BE1B18C();
            v103(v102);
            sub_22BE196EC();
            v83 = v69;
          }

          v82(v83, v106);
          (v59)(v140, v141);
          goto LABEL_27;
        }

        v62 = v61;
      }

      else
      {
        (v59)(v140, v30);
        v62 = v47;
      }

      (v59)(v62, v30);
LABEL_25:
      if (v137 == ++v39)
      {
        goto LABEL_26;
      }
    }

    v51 = sub_22BE180C8();
    v52(v51);
    v53 = sub_22BE3E8FC();
    v54(v53);
    v44 = v131;
    sub_22C272D64();
    sub_22BE187DC();
    v30 = v130;
    sub_22BE19DC4(v55, v56, v57, v130);
    sub_22C272994();
    v32 = v128;
    v58 = *(v129 + 48);
    sub_22BE27BA4();
    sub_22BE22868();
    sub_22BE2388C();
    sub_22BE22868();
    sub_22BE1AB5C(v32, 1, v30);
    if (v63)
    {
      sub_22BF394D4(v43);
      sub_22BF394D4(v44);
      sub_22BE1AB5C(&v58[v32], 1, v30);
      if (v63)
      {
        sub_22BE33928(v32, &qword_27D90B330, &qword_22C28C9F0);
        sub_22BE37570();
        goto LABEL_23;
      }
    }

    else
    {
      v44 = v115;
      sub_22BE2388C();
      sub_22BE22868();
      sub_22BE1AB5C(&v58[v32], 1, v30);
      if (!v63)
      {
        v66 = v120;
        (*v109)(v120, &v58[v32], v30);
        sub_22BE199AC(&qword_27D90B338, MEMORY[0x277D72DA0], MEMORY[0x277D72DA8]);
        v111 = sub_22C272FD4();
        v67 = *v114;
        (*v114)(v66, v30);
        v43 = v127;
        sub_22BF394D4(v127);
        sub_22BF394D4(v131);
        v68 = sub_22BE1AEE4();
        v67(v68);
        v42 = v110;
        v58 = v140;
        sub_22BF394D4(v32);
        v44 = v125;
        v30 = v141;
        v32 = v121;
        if (v111)
        {
LABEL_23:
          if ((sub_22C2729E4() & 1) == 0)
          {
            v84 = v58;

            v85 = v113;
            sub_22C271B24();
            v86 = v118;
            v87 = v112;
            v88 = v107;
            (*(v118 + 16))(v112, v108, v107);
            v89 = sub_22C272084();
            v90 = sub_22C2737C4();
            v91 = sub_22BE28610();
            if (os_log_type_enabled(v91, v92))
            {
              sub_22BE1A260();
              v93 = v85;
              v94 = swift_slowAlloc();
              sub_22BE2386C();
              v95 = swift_slowAlloc();
              v142[0] = v95;
              *v94 = 136315138;
              v96 = v87;
              sub_22C2721D4();
              v97 = sub_22BE194EC();
              v99 = v98;
              (*(v86 + 8))(v97, v88);
              sub_22BE61C88(v96, v99, v142);
              sub_22BE194EC();

              *(v94 + 4) = v96;
              _os_log_impl(&dword_22BE15000, v89, v90, "Skipping tool due to unmet platform requirements: %s", v94, 0xCu);
              sub_22BE26B64(v95);
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();

              sub_22BE196EC();
              v101 = v93;
            }

            else
            {

              v104 = sub_22BE289D8();
              v105(v104);
              sub_22BE196EC();
              v101 = v85;
            }

            v100(v101, v106);
            (*v126)(v138, v139);
            (*v110)(v84, v141);
            goto LABEL_27;
          }
        }

LABEL_24:
        (*v126)(v138, v139);
        (*v42)(v58, v30);
        goto LABEL_25;
      }

      v43 = v127;
      sub_22BF394D4(v127);
      sub_22BF394D4(v131);
      v64 = sub_22BE1AEE4();
      v65(v64);
    }

    sub_22BE33928(v32, &qword_27D90B328, &qword_22C28C9E8);
    sub_22BE37570();
    goto LABEL_24;
  }

LABEL_26:

LABEL_27:
  sub_22BE1AABC();
}

void ToolDatabase.subscript.getter()
{
  sub_22BE19130();
  v72 = v0;
  v73 = v1;
  v71 = v2;
  v4 = v3;
  v59 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v74 = v8;
  sub_22BE5CE4C(&qword_27D90B340, &qword_22C28C9F8);
  sub_22BE179D8();
  v68 = v10;
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v61 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  v75 = v13;
  v70 = sub_22BE5CE4C(&qword_27D90B348, &qword_22C28CA00);
  sub_22BE179D8();
  v63 = v14;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v17 = (&v59 - v16);
  v18 = sub_22C2722D4();
  sub_22BE179D8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v67 = v26;
  v27 = *v4;
  v28 = v4[1];
  v29 = v4[3];
  v60 = v4[2];
  v62 = v29;

  sub_22C2722B4();
  swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;
  *v17 = v30;
  v31 = v63;
  v32 = *(v63 + 104);
  v64 = *MEMORY[0x277D721C8];
  v33 = v70;
  v32(v17);
  v34 = sub_22BE199AC(&qword_28106DF70, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_22BF387D8(&qword_28106DF80, &qword_27D90B348, &qword_22C28CA00);
  v65 = v34;
  v66 = v24;
  sub_22C2724E4();

  v35 = v31;
  v36 = v62;
  (*(v35 + 8))(v17, v33);
  v37 = *(v20 + 8);
  v70 = v20 + 8;
  v37(v0, v18);
  swift_getKeyPath();
  sub_22C272A74();
  v39 = swift_allocBox();
  if (v36)
  {
    *v38 = v60;
    v38[1] = v36;
    sub_22BE38368();
    (*(v40 + 104))();
    v41 = v61;
    *v61 = v39;
    v43 = v68;
    v42 = v69;
    (*(v68 + 104))(v41, v64, v69);
    (*(v43 + 32))(v75, v41, v42);
  }

  else
  {
    sub_22BE38368();
    (*(v44 + 104))();
    *v75 = v39;
    (*(v68 + 104))();
  }

  sub_22BF387D8(&qword_28106DF88, &qword_27D90B340, &qword_22C28C9F8);

  v45 = v66;
  v46 = v67;
  sub_22C2724E4();

  v47 = sub_22BE1AB74();
  v48(v47);
  v37(v45, v18);
  v49 = v73;
  v50 = v74;
  sub_22C272484();
  if (v49)
  {
    goto LABEL_8;
  }

  v51 = sub_22C272224();
  sub_22BE3675C();
  sub_22BE1AB5C(v52, v53, v54);
  if (v55)
  {
    sub_22BE33928(v50, &qword_27D90B2D8, &qword_22C2B5080);
    v56 = sub_22BF385E0();
    sub_22BE196B4(&type metadata for ToolDatabase.Error, v56);
    *v57 = 0;
    swift_willThrow();
LABEL_8:
    v37(v46, v18);
    goto LABEL_9;
  }

  v37(v46, v18);
  sub_22BE38368();
  (*(v58 + 32))(v59, v50, v51);
LABEL_9:
  sub_22BE18478();
}

{
  sub_22BE19130();
  v91 = v4;
  v81 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v90 = v8;
  v9 = sub_22BE5CE4C(&qword_27D90B350, &qword_22C28CA68);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v87 = v11;
  sub_22BE5CE4C(&qword_27D90B358, &qword_22C28CA70);
  sub_22BE179D8();
  v93 = v13;
  v94 = v12;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v88 = v15;
  sub_22BE5CE4C(&qword_27D90B360, &qword_22C28CA78);
  sub_22BE179D8();
  v86 = v16;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v85 = v18;
  sub_22BE183BC();
  v96 = sub_22C272B54();
  sub_22BE179D8();
  v89 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  v83 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19490();
  v95 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  sub_22BE183BC();
  v82 = sub_22C272914();
  sub_22BE179D8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v30 = v29 - v28;
  v31 = sub_22C272984();
  sub_22BE179D8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  sub_22BE22DB8();
  v35 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v36 = sub_22BE19448(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BE179EC();
  sub_22BE1AB80();
  v37 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v38);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v39);
  sub_22BE181E4();
  sub_22BE17CD4();
  sub_22BF386AC();
  sub_22BE1AB5C(v1, 1, v37);
  if (v40)
  {
    (*(v33 + 16))(v3, v91, v31);
    v41 = sub_22BE18240();
    if (v42(v41) == *MEMORY[0x277D72D18])
    {
      v43 = sub_22BE18240();
      v44(v43);
      v45 = swift_projectBox();
      (*(v26 + 16))(v30, v45, v82);
      sub_22C2728F4();
      (*(v26 + 8))(v30, v82);
      sub_22C272AC4();
      sub_22BE187DC();
      sub_22BE19DC4(v46, v47, v48, v49);
    }

    else
    {
      sub_22C272AC4();
      sub_22BE1A140();
      sub_22BE19DC4(v50, v51, v52, v53);
      v54 = sub_22BE18240();
      v55(v54);
    }
  }

  else
  {
    sub_22BE2590C();
    sub_22BEBFD18();
  }

  sub_22C272B34();
  swift_getKeyPath();
  v56 = swift_allocBox();
  (*(v33 + 16))(v57, v91, v31);
  *v85 = v56;
  v84 = *MEMORY[0x277D721C8];
  (*(v86 + 104))(v85);
  sub_22BE199AC(&qword_27D90B368, MEMORY[0x277D73198], MEMORY[0x277D73190]);
  sub_22BF387D8(&qword_27D90B370, &qword_27D90B360, &qword_22C28CA78);
  sub_22C2724E4();

  v58 = sub_22BE27BA4();
  v59(v58);
  v60 = *(v89 + 8);
  v60(v83, v96);
  swift_getKeyPath();
  v92 = v2;
  sub_22BE22868();
  sub_22C272AC4();
  v61 = 1;
  sub_22BE3675C();
  sub_22BE1AB5C(v62, v63, v64);
  if (!v40)
  {
    v65 = swift_allocBox();
    sub_22BE38368();
    (*(v66 + 32))();
    *v87 = v65;
    (*(v93 + 104))(v87, v84, v94);
    v61 = 0;
  }

  sub_22BE19DC4(v87, v61, 1, v94);
  sub_22BE1AB5C(v87, 1, v94);
  if (v40)
  {
    v67 = v93;
    v68 = v88;
    (*(v93 + 104))(v88, *MEMORY[0x277D721D0], v94);
    sub_22BE1AB5C(v87, 1, v94);
    v71 = v90;
    if (!v40)
    {
      sub_22BE33928(v87, &qword_27D90B350, &qword_22C28CA68);
    }
  }

  else
  {
    v67 = v93;
    v68 = v88;
    v69 = sub_22BE3E8FC();
    v70(v69);
    v71 = v90;
  }

  sub_22BF387D8(&qword_27D90B378, &qword_27D90B358, &qword_22C28CA70);
  sub_22C2724E4();

  (*(v67 + 8))(v68, v94);
  v60(v95, v96);
  sub_22C272494();
  if (v0)
  {
    goto LABEL_16;
  }

  v72 = sub_22C2728E4();
  sub_22BE3675C();
  sub_22BE1AB5C(v73, v74, v75);
  if (v40)
  {
    sub_22BE33928(v71, &qword_27D90B310, &qword_22C28C9D8);
    v76 = sub_22BF385E0();
    sub_22BE196B4(&type metadata for ToolDatabase.Error, v76);
    *v77 = 1;
    swift_willThrow();
LABEL_16:
    v78 = sub_22BE1B18C();
    (v60)(v78);
    sub_22BE33928(v92, &unk_27D906F38, qword_22C274D30);
    goto LABEL_17;
  }

  v79 = sub_22BE1B18C();
  (v60)(v79);
  sub_22BE33928(v92, &unk_27D906F38, qword_22C274D30);
  sub_22BE38368();
  (*(v80 + 32))(v81, v71, v72);
LABEL_17:
  sub_22BE18478();
}

uint64_t ToolDatabase.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  ToolDatabase.subscript.getter();
  sub_22BF394A4();
  return sub_22BF36794();
}

uint64_t sub_22BF35374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_22BE5CE4C(a5, a6);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AB80();
  v10 = sub_22BE1C2A0();
  v11(v10);
  return a7(v7);
}

uint64_t ToolDatabase.tools(query:locale:)()
{
  v1 = sub_22C2725E4();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE1AB80();
  (*(v3 + 104))(v0, *MEMORY[0x277D72858], v1);
  sub_22BE18240();
  v5 = sub_22C2724A4();
  v6 = sub_22BE1AB74();
  v7(v6);
  return v5;
}

uint64_t ToolDatabase.iterate(query:locale:block:)()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_22C2725E4();
  v1[7] = v6;
  v1[8] = *(v6 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF355F0, 0, 0);
}

uint64_t sub_22BF355F0()
{
  sub_22BE183F0();
  (*(v0[8] + 104))(v0[9], *MEMORY[0x277D72858], v0[7]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_22BF356B4;
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x2821DACB8](v6, v2, v4, v5, v3);
}

uint64_t sub_22BF356B4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v8 = *v1;
  sub_22BE18C2C();
  *v5 = v8;
  *(v8 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22BF35850, 0, 0);
  }

  else
  {

    sub_22BE17A94();

    return v6();
  }
}

uint64_t sub_22BF35850()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t ToolDatabase.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t sub_22BF35980(uint64_t a1)
{
  v2 = sub_22BF392DC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BF359BC(uint64_t a1)
{
  v2 = sub_22BF392DC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BF35B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BF35C20;

  return ToolDatabase.iterate(query:locale:block:)();
}

uint64_t sub_22BF35C20()
{
  sub_22BE183F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  sub_22BE17A94();

  return v3();
}

uint64_t sub_22BF35D68()
{
  v0 = sub_22C26DBA4();
  v1 = sub_22BE19448(v0);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22C26DC34();
  swift_allocObject();
  v2 = sub_22C26DC24();
  sub_22C26DB84();
  result = sub_22C26DBB4();
  qword_27D90B2B0 = v2;
  return result;
}

uint64_t sub_22BF35DF4()
{
  sub_22C26DB74();
  swift_allocObject();
  result = sub_22C26DB64();
  qword_27D90B2B8 = result;
  return result;
}

uint64_t AssistantSchemaIdentifier.id.getter()
{
  v2 = sub_22C273064();
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE336DC();
  if (qword_27D906380 != -1)
  {
    swift_once();
  }

  sub_22C272CA4();
  sub_22BE3D470();
  sub_22BE199AC(v4, v5, MEMORY[0x277D73360]);
  sub_22C26DC04();
  if (!v1)
  {
    sub_22C273054();
    sub_22BE2590C();
    v0 = sub_22C273044();
    v7 = v6;
    v8 = sub_22BE2590C();
    sub_22BE29DD4(v8, v9);
    if (!v7)
    {
      v0 = 0x800000022C2D43B0;
      v11 = sub_22BF103C8();
      sub_22BE196B4(&type metadata for UnwrappedNilError, v11);
      *v12 = 0xD000000000000072;
      *(v12 + 8) = 0x800000022C2D43B0;
      *(v12 + 16) = xmmword_22C28C970;
      *(v12 + 32) = 0xE200000000000000;
      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_22BF35FB8()
{
  sub_22BE18378();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v9 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (v6)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    return 0;
  }

  if (v3 != v7 || v4 != v6)
  {
    sub_22BE1C2A0();
    sub_22BE30F20();
    if ((sub_22C274014() & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    if (((v5 ^ v8) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v5 == v8)
  {
LABEL_16:
    type metadata accessor for ToolboxCache.ToolCacheKey(0);

    JUMPOUT(0x2318A6910);
  }

  return 0;
}

uint64_t sub_22BF360A4(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_22C272F44();
  sub_22C274174();
  if (v2)
  {
    sub_22C272F44();
  }

  sub_22C274174();
  type metadata accessor for ToolboxCache.ToolCacheKey(0);
  sub_22C26E244();
  sub_22BE189F8();
  v5 = sub_22BE199AC(v3, v4, MEMORY[0x277CC9798]);
  return sub_22BE2BBBC(v5);
}

uint64_t sub_22BF36164()
{
  sub_22C274154();
  v1 = *(v0 + 24);
  sub_22C272F44();
  sub_22C274174();
  if (v1)
  {
    sub_22C272F44();
  }

  sub_22C274174();
  type metadata accessor for ToolboxCache.ToolCacheKey(0);
  sub_22C26E244();
  sub_22BE189F8();
  sub_22BE199AC(v2, v3, MEMORY[0x277CC9798]);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BF3624C()
{
  sub_22BE18378();
  if (sub_22C272954())
  {
    type metadata accessor for ToolboxCache.TypeCacheKey(0);
    static Toolbox.ContainerForTypeLookup.== infix(_:_:)();
    if (v0)
    {

      JUMPOUT(0x2318A6910);
    }
  }

  return 0;
}

void sub_22BF362CC()
{
  sub_22BE19460();
  sub_22BE17BC4();
  v1 = sub_22C272AC4();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v25 = v5;
  v6 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE26800();
  v12 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  sub_22C272984();
  sub_22BE199AC(&qword_28106DF18, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
  sub_22C272EE4();
  type metadata accessor for ToolboxCache.TypeCacheKey(0);
  sub_22BE17CD4();
  sub_22BF386AC();
  sub_22BE1AB5C(v16, 1, v6);
  if (v17)
  {
    MEMORY[0x2318AC860](1);
  }

  else
  {
    sub_22BE2388C();
    sub_22BEBFD18();
    MEMORY[0x2318AC860](0);
    sub_22BE3EA80();
    sub_22BE2388C();
    sub_22BE22868();
    sub_22BE1AB5C(v10, 1, v1);
    if (v17)
    {
      sub_22C274174();
    }

    else
    {
      v18 = sub_22BE180C8();
      v19(v18);
      sub_22C274174();
      sub_22BE3E5A4();
      sub_22BE199AC(v20, v21, MEMORY[0x277D73118]);
      sub_22C272EE4();
      (*(v3 + 8))(v25, v1);
    }

    sub_22BE33928(v0, &unk_27D906F38, qword_22C274D30);
  }

  sub_22C26E244();
  sub_22BE189F8();
  v24 = sub_22BE199AC(v22, v23, MEMORY[0x277CC9798]);
  sub_22BE2BBBC(v24);
  sub_22BE1AABC();
}

uint64_t sub_22BF365C0(uint64_t (*a1)(_BYTE *))
{
  sub_22C274154();
  a1(v3);
  return sub_22C2741A4();
}

uint64_t sub_22BF36610(uint64_t a1)
{
  sub_22C274154();
  GlobalToolIdentifier.hash(into:)(v4);
  sub_22C26E244();
  sub_22BE189F8();
  sub_22BE199AC(v1, v2, MEMORY[0x277CC9798]);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BF3670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_22C274154();
  a4(v6);
  return sub_22C2741A4();
}

uint64_t sub_22BF36794()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BF367E8@<X0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22BE5CE4C(&qword_27D907228, &unk_22C275090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v35 - v7;
  v9 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v35[3] = *(v9 - 8);
  v35[4] = v9;
  MEMORY[0x28223BE20](v9);
  v38 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C26E164();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36 = v35 - v15;
  v16 = sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  v37 = v2;
  if (*(*(v2 + 8) + 16))
  {
    sub_22BE6071C();
    if (v22)
    {
      v35[2] = *(v17 + 72);
      sub_22BE22868();
      sub_22BEBFD18();
      v23 = v36;
      sub_22C26E154();
      (*(v39 + 16))(v13, v23, v40);
      v24 = v37;
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BF386AC();
      v25 = *(v24 + 8);
      v42 = v25;
      v35[1] = sub_22BE6071C();
      if (__OFADD__(*(v25 + 16), (v26 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v27 = v26;
        sub_22BE5CE4C(&qword_27D907210, &qword_22C275088);
        if (sub_22C273C44())
        {
          sub_22BE6071C();
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_17;
          }
        }

        if (v27)
        {
          v32 = v42;
          sub_22BEBFD18();
          sub_22BE19DC4(v8, 0, 1, v16);
          (*(v39 + 40))(&v8[*(v16 + 44)], v13, v40);
          sub_22BE22868();
          if (sub_22BE1AEA8(v5, 1, v16) == 1)
          {
            sub_22BE33928(v5, &qword_27D907228, &unk_22C275090);
            sub_22BF36794();
            sub_22BE199AC(&qword_27D907218, type metadata accessor for ToolboxCache.ToolCacheKey, &unk_22C28CDC8);
            sub_22C273C64();
          }

          else
          {
            sub_22BEBFD18();
            sub_22BEBFD18();
          }

          sub_22BF36794();
          (*(v39 + 8))(v36, v40);
          sub_22BE33928(v8, &qword_27D907228, &unk_22C275090);
          *(v37 + 8) = v32;
          v33 = v41;
          sub_22BE22868();
          sub_22BE33928(v21, &qword_27D907208, &qword_22C275080);
          v34 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
          return sub_22BE19DC4(v33, 0, 1, v34);
        }
      }

      sub_22BE19DC4(v8, 1, 1, v16);
      __break(1u);
LABEL_17:
      result = sub_22C2740B4();
      __break(1u);
      return result;
    }
  }

  v29 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v30 = v41;

  return sub_22BE19DC4(v30, 1, 1, v29);
}

uint64_t sub_22BF36E48@<X0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22BE5CE4C(&qword_27D907200, &qword_22C275078);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v35 - v7;
  v9 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v35[3] = *(v9 - 8);
  v35[4] = v9;
  MEMORY[0x28223BE20](v9);
  v38 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C26E164();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36 = v35 - v15;
  v16 = sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  v37 = v2;
  if (*(*(v2 + 8) + 16))
  {
    sub_22BE608D0();
    if (v22)
    {
      v35[2] = *(v17 + 72);
      sub_22BE22868();
      sub_22BEBFD18();
      v23 = v36;
      sub_22C26E154();
      (*(v39 + 16))(v13, v23, v40);
      v24 = v37;
      swift_isUniquelyReferenced_nonNull_native();
      sub_22BF386AC();
      v25 = *(v24 + 8);
      v42 = v25;
      v35[1] = sub_22BE608D0();
      if (__OFADD__(*(v25 + 16), (v26 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v27 = v26;
        sub_22BE5CE4C(&qword_27D9071D8, &qword_22C275068);
        if (sub_22C273C44())
        {
          sub_22BE608D0();
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_17;
          }
        }

        if (v27)
        {
          v32 = v42;
          sub_22BEBFD18();
          sub_22BE19DC4(v8, 0, 1, v16);
          (*(v39 + 40))(&v8[*(v16 + 44)], v13, v40);
          sub_22BE22868();
          if (sub_22BE1AEA8(v5, 1, v16) == 1)
          {
            sub_22BE33928(v5, &qword_27D907200, &qword_22C275078);
            sub_22BF36794();
            sub_22BE199AC(&qword_27D9071E0, type metadata accessor for ToolboxCache.TypeCacheKey, &unk_22C28CE30);
            sub_22C273C64();
          }

          else
          {
            sub_22BEBFD18();
            sub_22BEBFD18();
          }

          sub_22BF36794();
          (*(v39 + 8))(v36, v40);
          sub_22BE33928(v8, &qword_27D907200, &qword_22C275078);
          *(v37 + 8) = v32;
          v33 = v41;
          sub_22BE22868();
          sub_22BE33928(v21, &qword_27D9071D0, &qword_22C275060);
          v34 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
          return sub_22BE19DC4(v33, 0, 1, v34);
        }
      }

      sub_22BE19DC4(v8, 1, 1, v16);
      __break(1u);
LABEL_17:
      result = sub_22C2740B4();
      __break(1u);
      return result;
    }
  }

  v29 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
  v30 = v41;

  return sub_22BE19DC4(v30, 1, 1, v29);
}

uint64_t sub_22BF374A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v79 = a2;
  v82 = sub_22BE5CE4C(&qword_27D90B3F8, &unk_22C28CE90);
  MEMORY[0x28223BE20](v82);
  v77 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = v62 - v6;
  MEMORY[0x28223BE20](v7);
  v76 = v62 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  MEMORY[0x28223BE20](v12);
  v70 = v62 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v62 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v62 - v18;
  MEMORY[0x28223BE20](v20);
  v63 = v62 - v21;
  v22 = sub_22BE5CE4C(&qword_27D907228, &unk_22C275090);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v62 - v23;
  v25 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v68 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  v26 = sub_22C26E164();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v75 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v80 = v62 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = v62 - v32;
  sub_22C26E154();
  sub_22BF386AC();
  sub_22BE22868();
  v34 = sub_22BE5CE4C(&qword_27D907208, &qword_22C275080);
  v35 = &v24[*(v34 + 44)];
  v73 = *(v27 + 16);
  v74 = v27 + 16;
  v73(v35, v33, v26);
  v78 = v34;
  sub_22BE19DC4(v24, 0, 1, v34);
  result = sub_22BE5FC4C();
  v37 = v3[1];
  if (*v3 >= *(v37 + 16))
  {
    return (*(v27 + 8))(v33, v26);
  }

  v71 = v26;
  v72 = v33;
  v79 = v16;
  v62[0] = v24;
  v62[1] = v19;
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v62[2] = v3;
  if (v41)
  {
    v42 = 0;
    v43 = (v41 - 1) & v41;
    v44 = (v39 + 63) >> 6;
LABEL_11:
    v66 = *(v68 + 72);
    sub_22BF386AC();
    v65 = *(*(v78 - 8) + 72);
    sub_22BE22868();
    sub_22BEBFD18();
    v70 = (v27 + 8);

    v67 = v44;
    v68 = v37 + 64;
    v69 = v37;
    v64 = v11;
    while (1)
    {
      v47 = v72;
      if (!v43)
      {
        break;
      }

      v48 = v42;
LABEL_17:
      v43 &= v43 - 1;
      sub_22BF386AC();
      v49 = v82;
      sub_22BE22868();
      sub_22BEBFD18();
      v50 = v81;
      sub_22BE22868();
      v51 = &v50[*(v49 + 48)];
      v52 = v78;
      v53 = v71;
      v54 = v73;
      v73(v80, (v51 + *(v78 + 44)), v71);
      sub_22BE33928(v51, &qword_27D907208, &qword_22C275080);
      v55 = v77;
      sub_22BE22868();
      v56 = &v55[*(v82 + 48)];
      v57 = v75;
      v54(v75, v56 + *(v52 + 44), v53);
      sub_22BE33928(v56, &qword_27D907208, &qword_22C275080);
      v58 = v80;
      LOBYTE(v56) = sub_22C26E0F4();
      v59 = *v70;
      (*v70)(v57, v53);
      v59(v58, v53);
      sub_22BF36794();
      sub_22BF36794();
      if (v56)
      {
        sub_22BE33928(v79, &qword_27D90B3F8, &unk_22C28CE90);
        result = sub_22BEBFD18();
      }

      else
      {
        result = sub_22BE33928(v64, &qword_27D90B3F8, &unk_22C28CE90);
      }

      v42 = v48;
      v38 = v68;
      v44 = v67;
    }

    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v48 >= v44)
      {

        sub_22BEBFD18();
        v60 = v63;
        sub_22BF38654();
        sub_22BEBFD18();
        v61 = v62[0];
        sub_22BE622B4();
        sub_22BE33928(v61, &qword_27D907228, &unk_22C275090);
        sub_22BE33928(v60, &qword_27D90B3F8, &unk_22C28CE90);
        return (*v70)(v47, v71);
      }

      v43 = *(v38 + 8 * v48);
      ++v42;
      if (v43)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = 0;
    v44 = (v39 + 63) >> 6;
    while (1)
    {
      v42 = v45 + 1;
      if (v45 + 1 >= v44)
      {
        break;
      }

      v46 = *(v37 + 72 + 8 * v45);
      v41 += 64;
      ++v45;
      if (v46)
      {
        v43 = (v46 - 1) & v46;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF37D44(uint64_t a1, char *a2)
{
  v3 = v2;
  v79 = a2;
  v82 = sub_22BE5CE4C(&qword_27D90B3F0, &unk_22C28CE80);
  MEMORY[0x28223BE20](v82);
  v77 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = v62 - v6;
  MEMORY[0x28223BE20](v7);
  v76 = v62 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v62 - v10;
  MEMORY[0x28223BE20](v12);
  v70 = v62 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v62 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v62 - v18;
  MEMORY[0x28223BE20](v20);
  v63 = v62 - v21;
  v22 = sub_22BE5CE4C(&qword_27D907200, &qword_22C275078);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v62 - v23;
  v25 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v68 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  v26 = sub_22C26E164();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v75 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v80 = v62 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = v62 - v32;
  sub_22C26E154();
  sub_22BF386AC();
  sub_22BE22868();
  v34 = sub_22BE5CE4C(&qword_27D9071D0, &qword_22C275060);
  v35 = &v24[*(v34 + 44)];
  v73 = *(v27 + 16);
  v74 = v27 + 16;
  v73(v35, v33, v26);
  v78 = v34;
  sub_22BE19DC4(v24, 0, 1, v34);
  result = sub_22BE5FDA0();
  v37 = v3[1];
  if (*v3 >= *(v37 + 16))
  {
    return (*(v27 + 8))(v33, v26);
  }

  v71 = v26;
  v72 = v33;
  v79 = v16;
  v62[0] = v24;
  v62[1] = v19;
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v62[2] = v3;
  if (v41)
  {
    v42 = 0;
    v43 = (v41 - 1) & v41;
    v44 = (v39 + 63) >> 6;
LABEL_11:
    v66 = *(v68 + 72);
    sub_22BF386AC();
    v65 = *(*(v78 - 8) + 72);
    sub_22BE22868();
    sub_22BEBFD18();
    v70 = (v27 + 8);

    v67 = v44;
    v68 = v37 + 64;
    v69 = v37;
    v64 = v11;
    while (1)
    {
      v47 = v72;
      if (!v43)
      {
        break;
      }

      v48 = v42;
LABEL_17:
      v43 &= v43 - 1;
      sub_22BF386AC();
      v49 = v82;
      sub_22BE22868();
      sub_22BEBFD18();
      v50 = v81;
      sub_22BE22868();
      v51 = &v50[*(v49 + 48)];
      v52 = v78;
      v53 = v71;
      v54 = v73;
      v73(v80, (v51 + *(v78 + 44)), v71);
      sub_22BE33928(v51, &qword_27D9071D0, &qword_22C275060);
      v55 = v77;
      sub_22BE22868();
      v56 = &v55[*(v82 + 48)];
      v57 = v75;
      v54(v75, v56 + *(v52 + 44), v53);
      sub_22BE33928(v56, &qword_27D9071D0, &qword_22C275060);
      v58 = v80;
      LOBYTE(v56) = sub_22C26E0F4();
      v59 = *v70;
      (*v70)(v57, v53);
      v59(v58, v53);
      sub_22BF36794();
      sub_22BF36794();
      if (v56)
      {
        sub_22BE33928(v79, &qword_27D90B3F0, &unk_22C28CE80);
        result = sub_22BEBFD18();
      }

      else
      {
        result = sub_22BE33928(v64, &qword_27D90B3F0, &unk_22C28CE80);
      }

      v42 = v48;
      v38 = v68;
      v44 = v67;
    }

    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v48 >= v44)
      {

        sub_22BEBFD18();
        v60 = v63;
        sub_22BF38654();
        sub_22BEBFD18();
        v61 = v62[0];
        sub_22BE623EC();
        sub_22BE33928(v61, &qword_27D907200, &qword_22C275078);
        sub_22BE33928(v60, &qword_27D90B3F0, &unk_22C28CE80);
        return (*v70)(v47, v71);
      }

      v43 = *(v38 + 8 * v48);
      ++v42;
      if (v43)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = 0;
    v44 = (v39 + 63) >> 6;
    while (1)
    {
      v42 = v45 + 1;
      if (v45 + 1 >= v44)
      {
        break;
      }

      v46 = *(v37 + 72 + 8 * v45);
      v41 += 64;
      ++v45;
      if (v46)
      {
        v43 = (v46 - 1) & v46;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BF385E0()
{
  result = qword_27D90B2F8;
  if (!qword_27D90B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B2F8);
  }

  return result;
}

uint64_t sub_22BF38654()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t sub_22BF386AC()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

unint64_t sub_22BF38764()
{
  result = qword_27D90B320;
  if (!qword_27D90B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B320);
  }

  return result;
}

uint64_t sub_22BF387D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BF38878()
{
  result = qword_27D90B388;
  if (!qword_27D90B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B388);
  }

  return result;
}

uint64_t sub_22BF388D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF38910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BF38968(uint64_t a1)
{
  result = sub_22C272224();
  if (v2 <= 0x3F)
  {
    result = sub_22C272114();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Toolbox.BuiltInDefinition(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BF389F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C272224();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BF38A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C272224();

  return sub_22BE19DC4(a1, a2, a3, v6);
}

uint64_t sub_22BF38A90(uint64_t a1)
{
  v2 = sub_22C272224();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_22BF38B60(uint64_t a1)
{
  sub_22BF38BB8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22BF38BB8(uint64_t a1)
{
  if (!qword_27D90B3A0)
  {
    sub_22C272AC4();
    v1 = sub_22C273844();
    if (!v2)
    {
      atomic_store(v1, &qword_27D90B3A0);
    }
  }
}

uint64_t dispatch thunk of ToolStoring.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))(a1, a2, a3);
}

{
  return (*(a4 + 16))(a1, a2, a3);
}

uint64_t dispatch thunk of ToolStoring.iterate(query:locale:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a6 + 80) + **(a6 + 80));
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_22BF35C20;
  v8 = sub_22BE196A8();

  return v10(v8);
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_22BF3908C(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t sub_22BF3910C(uint64_t a1)
{
  result = sub_22C272984();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Toolbox.ContainerForTypeLookup(319);
    if (v3 <= 0x3F)
    {
      result = sub_22C26E244();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BF391D0(uint64_t a1)
{
  result = sub_22C26E244();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22BF392DC()
{
  result = qword_27D90B3E0;
  if (!qword_27D90B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B3E0);
  }

  return result;
}

uint64_t sub_22BF39330(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_22BF39370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_22BF2AE88(a1);
  }

  return result;
}

unint64_t sub_22BF393A0()
{
  result = qword_28107CBD8;
  if (!qword_28107CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CBD8);
  }

  return result;
}

uint64_t sub_22BF393F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    type metadata accessor for ToolboxCustomKeyResult(0);
    return sub_22BF386AC();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BF394D4(uint64_t a1)
{

  return sub_22BE33928(a1, v2, v1);
}

void sub_22BF394EC(uint64_t a1@<X8>)
{

  sub_22BE711C4(0, a1 + 1, 1);
}

void sub_22BF3950C()
{

  os_unfair_lock_lock(v0 + 4);
}

void sub_22BF3952C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_22BF3954C(uint64_t a1)
{
  v2 = 0;
  v13[2] = MEMORY[0x2318ABD80](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    ++v2;
    v6 = *(i - 1);
    v5 = *i;

    sub_22C1A7B60(v13, v6, v5, v7, v8, v9, v10, v11, v12, v13[0]);
  }

  __break(1u);
}

uint64_t sub_22BF3960C(uint64_t a1)
{
  v2 = sub_22C272CA4();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  v12 = sub_22BF3A9E0(&qword_28106DEE0, MEMORY[0x277D73358], MEMORY[0x277D73368]);
  v13 = MEMORY[0x2318ABD80](v11, v2, v12);
  v24 = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v4 + 16);
    v15 = v4 + 16;
    v16 = v17;
    v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v23 = a1;
    v19 = a1 + v18;
    v20 = *(v15 + 56);
    do
    {
      v16(v7, v19, v2);
      sub_22C1A7C40();
      (*(v15 - 8))(v10, v2);
      v19 += v20;
      --v14;
    }

    while (v14);

    return v24;
  }

  else
  {
    v21 = v13;
  }

  return v21;
}

void sub_22BF397C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22BE5CE4C(&qword_27D907728, &unk_22C2757A0);
  v4 = sub_22BEF8A28(&qword_27D90B420, &qword_27D907728, &unk_22C2757A0, &protocol conformance descriptor for HashablePair<A, B>);
  v5 = 0;
  v12[4] = MEMORY[0x2318ABD80](v2, v3, v4);
  v6 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_22C1A7EAC(v12, v11, v10, v9, v8);
  }

  __break(1u);
}

uint64_t sub_22BF398EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C273174();
  v20 = MEMORY[0x2318ABD80](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v16 = a1;
  v17 = a2;
  v18 = 0;
  v19 = v5;
  while (1)
  {
    v6 = sub_22C273204();
    if (!v7)
    {
      break;
    }

    sub_22C1A8654(v15, v6, v7, v8, v9, v10, v11, v12, v14, *v15);
  }

  return v20;
}

uint64_t sub_22BF3998C(uint64_t a1)
{
  v2 = MEMORY[0x2318ABD80](*(a1 + 16), MEMORY[0x277D84A28], MEMORY[0x277D84A38]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_22C1A8734(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_22BF39A20(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
  v4 = sub_22BF3A92C();
  v5 = MEMORY[0x2318ABD80](v2, v3, v4);
  v6 = 0;
  v17 = v5;
  v7 = *(a1 + 16);
  while (1)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v8 = v6 + 1;
    v9 = *(a1 + 8 * v6 + 32);

    sub_22C1A8804(&v16, v9, v10, v11, v12, v13, v14, v15, v16, v17);

    v6 = v8;
  }

  __break(1u);
}

void sub_22BF39AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_22BE70138(0, v1, 0);
    v5 = sub_22C259378();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_22BE70138(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_22BE2FC64(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_22BE2FC64(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void static Toolbox.toolboxAllowList()(uint64_t *a1@<X8>)
{
  sub_22C26DF64();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v70 = sub_22C2720A4();
  sub_22BE179D8();
  v67 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  swift_getKeyPath();
  sub_22BE185E4();

  if (v68)
  {
    sub_22C271AD4();
    v16 = sub_22C272084();
    v17 = sub_22C2737C4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22BE15000, v16, v17, "Use of allow list is disabled for Toolbox indexing", v18, 2u);
      sub_22BE183C8();
    }

    (*(v67 + 8))(v9, v70);
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v64 = v4;
  v65 = a1;
  sub_22BF3A4D4();
  v66 = sub_22BF3A464(0xD000000000000039, 0x800000022C2D4490);
  swift_getKeyPath();
  sub_22BE185E4();

  if (v69)
  {
    v19 = v68;
  }

  else
  {
    v19 = 0xD000000000000010;
  }

  if (v69)
  {
    v20 = v69;
  }

  else
  {
    v20 = 0x800000022C2D44D0;
  }

  swift_getKeyPath();
  sub_22C26E624();

  v21 = *(v68 + 16);

  if (!v21)
  {
    swift_getKeyPath();
    sub_22C26E624();

    v22 = *(v68 + 16);

    if (!v22)
    {
      if (v66)
      {
        v46 = v66;
        v47 = sub_22BF3A694(v19, v20, 0x7473696C70, 0xE500000000000000, v46);
        v49 = v48;

        if (v49)
        {
          v62 = v46;
          v63 = v47;
          sub_22C271AD4();
          v50 = sub_22C272084();
          v51 = sub_22C2737C4();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_22BE15000, v50, v51, "Toolbox Allow List accessed", v52, 2u);
            sub_22BE183C8();
          }

          (*(v67 + 8))(v15, v70);
          sub_22C26DEC4();

          v53 = sub_22C26DFA4();
          if (v1)
          {
            v55 = sub_22BE1BF30();
            v56(v55);

            return;
          }

          v58 = v53;
          v59 = v54;
          v27 = v12;
          v60 = sub_22BE1BF30();
          v61(v60);
          sub_22C26DDB4();
          swift_allocObject();
          sub_22C26DDA4();
          sub_22BF3A73C();
          sub_22C26DD94();
          sub_22BE29DD4(v58, v59);

          v24 = v68;
          v26 = v69;
          goto LABEL_14;
        }
      }

      else
      {

        v46 = 0;
      }

      sub_22BF38764();
      swift_allocError();
      *v57 = 6;
      swift_willThrow();

      return;
    }
  }

  swift_getKeyPath();
  sub_22BE185E4();

  sub_22BF3954C(v68);
  v24 = v23;
  swift_getKeyPath();
  sub_22BE185E4();

  sub_22BF3954C(v68);
  v26 = v25;
  v27 = v12;
LABEL_14:
  sub_22C271AD4();

  v28 = sub_22C272084();
  v29 = sub_22C273794();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68 = v63;
    *v30 = 136315394;

    sub_22BF39AEC(v31);
    v33 = v32;
    v64 = v27;

    v34 = MEMORY[0x2318ABBB0](v33, MEMORY[0x277D837D0]);
    v36 = v35;

    v37 = sub_22BE61C88(v34, v36, &v68);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2080;

    sub_22BF39AEC(v38);
    v40 = v39;

    v41 = MEMORY[0x2318ABBB0](v40, MEMORY[0x277D837D0]);
    v43 = v42;

    v44 = sub_22BE61C88(v41, v43, &v68);

    *(v30 + 14) = v44;
    _os_log_impl(&dword_22BE15000, v28, v29, "Allowed global tools: %s and local tools: %s either set through user default or ToolBoxAllowList.plist", v30, 0x16u);
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v67 + 8))(v64, v70);
  }

  else
  {

    (*(v67 + 8))(v27, v70);
  }

  v45 = v65;
  *v65 = v24;
  v45[1] = v26;
}

id sub_22BF3A464(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C272FF4();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

unint64_t sub_22BF3A4D4()
{
  result = qword_28106DAF0;
  if (!qword_28106DAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28106DAF0);
  }

  return result;
}

void ToolBoxAllowLists.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_22C273DC4();

  *a3 = v4 != 0;
}

unint64_t sub_22BF3A5A4@<X0>(void *a1@<X8>)
{
  result = ToolBoxAllowLists.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BF3A694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C272FF4();
  v7 = sub_22C272FF4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_22C273024();

  return v9;
}

unint64_t sub_22BF3A73C()
{
  result = qword_28107B630;
  if (!qword_28107B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107B630);
  }

  return result;
}

unint64_t sub_22BF3A794()
{
  result = qword_27D90B400;
  if (!qword_27D90B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B400);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxAllowLists(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BF3A8D8()
{
  result = qword_27D90B418;
  if (!qword_27D90B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B418);
  }

  return result;
}

unint64_t sub_22BF3A92C()
{
  result = qword_28106DE98;
  if (!qword_28106DE98)
  {
    sub_22BE7431C(&qword_27D907580, &qword_22C2B85E0);
    sub_22BF3A9E0(qword_28106E198, type metadata accessor for Candidate, &protocol conformance descriptor for Candidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DE98);
  }

  return result;
}

uint64_t sub_22BF3A9E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22BF3AA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a4;
  v21 = a3;
  v22 = a2;
  v6 = sub_22C272CA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v19 = v7 + 16;
  v15 = (v7 + 8);
  v23 = a1;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v6);
      v18 = sub_22BF3BD7C(v9, v22, v21, v20);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v15)(v9, v6, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v15)(v9, v6, v18);
LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_12;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_22BF3AC20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  while (v6 != v5)
  {
    v7 = sub_22C272D24();
    sub_22BE17A18(v7);
    v8 = sub_22C272D14();
    sub_22BF3AD14(v8, a2);

    v9 = sub_22C272CF4();
    sub_22BF3AD14(v9, a3);

    ++v5;
  }
}

void sub_22BF3AD14(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  for (i = (a1 + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = *a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BE66214();
      v7 = v11;
      *a2 = v11;
    }

    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      sub_22BE66214();
      v7 = v12;
      *a2 = v12;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;

    i += 2;
  }
}

uint64_t sub_22BF3AE08()
{
  v1[5] = v0;
  v2 = sub_22C2722D4();
  v1[6] = v2;
  sub_22BE17A18(v2);
  v1[7] = v3;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF3AEC0, 0, 0);
}

uint64_t sub_22BF3AEC0()
{
  v21 = v0;
  sub_22BF4D750();
  v2 = v1;
  v3 = v0[5];
  v4 = v3[7];
  v5 = v3[8];
  sub_22BE1BD3C(v3 + 4, v4);
  (*(v5 + 96))(v20, v4, v5);
  v6 = v20[0];
  v19 = v20[1];
  if (qword_27D906378 != -1)
  {
    swift_once();
  }

  v7 = v0[5];
  v8 = sub_22C26E244();
  v18 = sub_22BE199F4(v8, qword_27D90B298);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = v3[7];
  v11 = v3[8];
  sub_22BE1BD3C(v3 + 4, v10);
  sub_22C2722B4();
  v12 = swift_allocObject();
  v0[10] = v12;
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = v19;
  v12[5] = v2;
  v12[6] = v9;
  v13 = *(v11 + 80);

  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_22BF3B190;
  v15 = v0[8];

  return (v17)(v15, v18, sub_22BF3C468, v12, v10, v11);
}

uint64_t sub_22BF3B190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*v6 + 64);
  v8 = *(*v6 + 56);
  v9 = *(*v6 + 48);
  *(*v6 + 96) = v5;

  (*(v8 + 8))(v7, v9);

  if (v5)
  {
    v10 = sub_22BF3B3C0;
  }

  else
  {
    v10 = sub_22BF3B324;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22BF3B324()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22BF3B3C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22BF3B42C()
{
  v1[2] = v0;
  v2 = sub_22C272CA4();
  v1[3] = v2;
  sub_22BE17A18(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF3B4F0, 0, 0);
}

uint64_t sub_22BF3B4F0()
{
  v52 = v0;
  sub_22BF4D750();
  v2 = v1;
  v3 = v0[2];
  v4 = v3[7];
  v5 = v3[8];
  sub_22BE1BD3C(v3 + 4, v4);
  (*(v5 + 96))(v51, v4, v5);
  v6 = v51[0];
  v7 = v51[1];
  if (v51[0])
  {

    sub_22BF2A9E0(v8, v6);
    v48 = v9;
  }

  else
  {
    v48 = 0;
  }

  v49 = v7;
  v50 = v6;
  v43 = v2;
  if (qword_281072040 != -1)
  {
LABEL_25:
    swift_once();
  }

  v10 = v0[4];
  v11 = sub_22C271C14();
  sub_22BE199F4(v11, qword_28108A218);
  type metadata accessor for SharedAssistantSchemaProvider();
  sub_22BF3C338();
  sub_22C271BD4();
  v12 = sub_22C272BF4();

  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  v45 = (v10 + 8);
  v46 = v10 + 16;
  v42 = (v10 + 32);
  v47 = v12;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v44 = MEMORY[0x277D84F90];
  while (v16)
  {
LABEL_13:
    v20 = v0[6];
    v21 = *(v10 + 72);
    (*(v10 + 16))(v20, *(v47 + 48) + v21 * (__clz(__rbit64(v16)) | (v18 << 6)), v0[3]);
    sub_22BF4E0FC(v20, v48, v51, v22, v23, v24, v25, v26, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v50, v49);
    v16 &= v16 - 1;
    if (v28 && (v29 = v27, , (v29 & 0x100) != 0))
    {
      v30 = *v42;
      (*v42)(v0[5], v0[6], v0[3]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE66E18(0, *(v44 + 16) + 1, 1, v44);
        v44 = v35;
      }

      v32 = *(v44 + 16);
      v31 = *(v44 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22BE66E18(v31 > 1, v32 + 1, 1, v44);
        v44 = v36;
      }

      v33 = v0[5];
      v34 = v0[3];
      *(v44 + 16) = v32 + 1;
      v30(v44 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v32 * v21, v33, v34);
    }

    else
    {
      (*v45)(v0[6], v0[3]);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_13;
    }
  }

  sub_22BF2AE88(v50);

  v37 = sub_22BF3960C(v44);
  v51[0] = MEMORY[0x277D84F90];

  sub_22BF3AA28(v37, v47, v43, v51);

  v38 = v51[0];

  v39 = v0[1];

  return v39(v38);
}

void sub_22BF3B9B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v11 = sub_22C272AC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51.i8[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = a3;
  v57 = a4;
  sub_22BF4DCB4();
  if (!v6)
  {
    v54.i64[0] = a1;
    if (BYTE1(v59) << 8 != 512)
    {
      v52 = sub_22C2721D4();
      v53 = v15;
      sub_22C272154();
      v16 = sub_22C272A54();
      v18 = v17;
      (*(v12 + 8))(v14, v11);
      v19 = sub_22C2721E4();
      v21 = v20;
      v56 = v16;
      v57 = v18;

      MEMORY[0x2318AB8D0](v19, v21);

      sub_22C26AD34(0, v56, v57);
      v23 = v22;
      v25 = v24;

      v26 = sub_22C2721D4();
      if (*(a5 + 16))
      {
        v28 = sub_22BE3B674(v26, v27);
        v30 = v29;

        v31 = v55;
        if (v30)
        {
          v32 = (*(a5 + 56) + 32 * v28);
          v33 = v23;
          v34 = v32[1].i64[0];
          v35 = v32[1].i64[1];
          v54 = *v32;
          v51 = vbslq_s8(vceqzq_s64(v54), vdupq_n_s64(MEMORY[0x277D84F90]), v54);
          swift_beginAccess();

          sub_22BE78AF0();
          v36 = *(*(v31 + 16) + 16);
          sub_22BE78BDC(v36);
          v37 = *(v31 + 16);
          *(v37 + 16) = v36 + 1;
          v38 = (v37 + (v36 << 6));
          v39 = v53;
          v38[2].i64[0] = v52;
          v38[2].i64[1] = v39;
          v38[3].i64[0] = v33;
          v38[3].i64[1] = v25;
          v38[4].i64[0] = v34;
          v38[4].i64[1] = v35;
          v38[5] = v51;
          *(v31 + 16) = v37;
          swift_endAccess();
          return;
        }
      }

      else
      {

        v31 = v55;
      }

      v59 = MEMORY[0x277D84F90];
      v58 = MEMORY[0x277D84F90];
      sub_22C272C34();
      sub_22C272C24();
      v40 = sub_22C2721A4();

      sub_22BF3AC20(v40, &v59, &v58);

      v55 = sub_22C272184();
      v42 = v41;
      v43 = v59;
      v44 = v58;
      swift_beginAccess();

      sub_22BE78AF0();
      v45 = v23;
      v46 = v31;
      v47 = *(*(v31 + 16) + 16);
      sub_22BE78BDC(v47);
      v48 = *(v46 + 16);
      *(v48 + 16) = v47 + 1;
      v49 = (v48 + (v47 << 6));
      v50 = v53;
      v49[4] = v52;
      v49[5] = v50;
      v49[6] = v45;
      v49[7] = v25;
      v49[8] = v55;
      v49[9] = v42;
      v49[10] = v43;
      v49[11] = v44;
      *(v46 + 16) = v48;
      swift_endAccess();
    }
  }
}

double sub_22BF3BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = a4;
  v59.i64[0] = a3;
  v58.i64[0] = sub_22C272BA4();
  v5 = *(v58.i64[0] - 8);
  MEMORY[0x28223BE20](v58.i64[0]);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = sub_22C272C54();
  sub_22C26AD34(0, v16, v17);
  v60 = v18;
  v61 = v19;

  v63 = v15;
  sub_22BF16EA0(a2, v15);
  v20 = sub_22C272C54();
  v22 = v21;
  sub_22C272C74();
  v23 = sub_22C272B94();
  v25 = v24;
  (*(v5 + 8))(v7, v58.i64[0]);
  v64 = v20;
  v65 = v22;

  MEMORY[0x2318AB8D0](v23, v25);

  v27 = v64;
  v26 = v65;
  v28 = v59.i64[0];
  v29 = sub_22C272C54();
  if (*(v28 + 16))
  {
    v31 = sub_22BE3B674(v29, v30);
    v33 = v32;

    if (v33)
    {
      v34 = (*(v28 + 56) + 32 * v31);
      v36 = v34[1].i64[0];
      v35 = v34[1].i64[1];
      v58 = *v34;
      v59 = vbslq_s8(vceqzq_s64(v58), vdupq_n_s64(MEMORY[0x277D84F90]), v58);

      v37 = v62;
      sub_22BE78AF0();
      v38 = *(*v37 + 16);
      sub_22BE78BDC(v38);
      sub_22BF3C400(v63);
      v39 = *v37;
      *(v39 + 16) = v38 + 1;
      v40 = (v39 + (v38 << 6));
      v40[2].i64[0] = v27;
      v40[2].i64[1] = v26;
      v41 = v61;
      v40[3].i64[0] = v60;
      v40[3].i64[1] = v41;
      v40[4].i64[0] = v36;
      v40[4].i64[1] = v35;
      result = *v59.i64;
      v40[5] = v59;
      return result;
    }
  }

  else
  {
  }

  v64 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  sub_22BF3C390(v63, v12);
  v43 = sub_22C272114();
  if (sub_22BE1AEA8(v12, 1, v43) == 1)
  {
    sub_22BF3C400(v12);
  }

  else
  {
    v44 = sub_22C2720F4();
    (*(*(v43 - 8) + 8))(v12, v43);
    sub_22BF3AC20(v44, &v64, &v66);
  }

  v45 = v57;
  sub_22BF3C390(v63, v57);
  if (sub_22BE1AEA8(v45, 1, v43) == 1)
  {
    sub_22BF3C400(v45);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v46 = sub_22C272104();
    v47 = v48;
    (*(*(v43 - 8) + 8))(v45, v43);
  }

  v49 = v64;
  v50 = v66;

  v51 = v62;
  sub_22BE78AF0();
  v52 = *(*v51 + 16);
  sub_22BE78BDC(v52);
  sub_22BF3C400(v63);
  v53 = *v51;
  *(v53 + 16) = v52 + 1;
  v54 = (v53 + (v52 << 6));
  v54[4] = v27;
  v54[5] = v26;
  v55 = v61;
  v54[6] = v60;
  v54[7] = v55;
  v54[8] = v46;
  v54[9] = v47;
  v54[10] = v49;
  v54[11] = v50;

  return result;
}

uint64_t ToolboxMetadata.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToolboxMetadata.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToolboxMetadata.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22BF3C298(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF3C2D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BF3C338()
{
  result = qword_281076450[0];
  if (!qword_281076450[0])
  {
    type metadata accessor for SharedAssistantSchemaProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281076450);
  }

  return result;
}

uint64_t sub_22BF3C390(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF3C400(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF3C48C()
{
  v66 = sub_22C2728A4();
  sub_22BE179D8();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v65 = (v4 - v3);
  v64 = sub_22C26E784();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v63 = v9 - v8;
  v62 = sub_22C272224();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = v14 - v13;
  sub_22BE5CE4C(&qword_27D90B428, &unk_22C28D170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C28D160;
  *(inited + 32) = 0x6E5F657461657263;
  *(inited + 40) = 0xEB0000000065746FLL;
  *(inited + 48) = 0xD00000000000005BLL;
  *(inited + 56) = 0x800000022C2D44F0;
  sub_22BE17D00();
  *(v18 + 64) = v17 & 0xFFFFFFFFFFFFLL | 0x725F000000000000;
  *(v18 + 72) = 0xEF7265646E696D65;
  sub_22BE18A1C();
  *(v20 + 80) = v19 + 79;
  *(v20 + 88) = v21;
  strcpy((v20 + 96), "send_message");
  *(v20 + 109) = 0;
  *(v20 + 110) = -5120;
  *(v20 + 112) = v19 + 39;
  *(v20 + 120) = 0x800000022C2D45C0;
  *(v20 + 128) = 0x64656D5F79616C70;
  *(v20 + 136) = 0xEA00000000006169;
  sub_22BE18A1C();
  v23[18] = v22 + 36;
  v23[19] = v24;
  v23[20] = 0x61635F7472617473;
  v23[21] = v25 + 2819;
  sub_22BE18A1C();
  *(v26 + 176) = v27;
  *(v26 + 184) = v28;
  sub_22BE17D00();
  *(v30 + 192) = v29 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
  *(v30 + 200) = 0xEC00000072656D69;
  sub_22BE18A1C();
  *(v32 + 208) = v31 + 20;
  *(v32 + 216) = v33;
  sub_22BE17D00();
  *(v35 + 224) = v34 & 0xFFFFFFFFFFFFLL | 0x615F000000000000;
  *(v35 + 232) = 0xEC0000006D72616CLL;
  strcpy((v35 + 240), "Creates alarms");
  *(v35 + 255) = -18;
  *(v35 + 256) = 0x657461676976616ELL;
  *(v35 + 264) = 0xEB000000006F745FLL;
  sub_22BE18A1C();
  *(v37 + 272) = v36 + 116;
  *(v37 + 280) = v38;
  v67 = MEMORY[0x277D84F90];
  sub_22BE711C4(0, 8, 0);
  v39 = v67;
  v40 = sub_22C272984();
  v41 = 0;
  v58 = *MEMORY[0x277D72CC8];
  v57 = *MEMORY[0x277D72D50];
  v59 = v40;
  v56 = *MEMORY[0x277D72AD0];
  v54 = (v6 + 8);
  v55 = (v1 + 104);
  v60 = v15;
  v61 = v11;
  do
  {
    v42 = swift_allocBox();
    v44 = v43;
    v45 = v39;
    v46 = sub_22C272934();
    v47 = swift_allocBox();
    v48 = *(*(v46 - 8) + 104);
    v49 = v46;
    v39 = v45;
    v48(v50, v58, v49);
    *v44 = v47;
    (*(*(v59 - 8) + 104))(v44, v57, v59);
    *v65 = v42;
    (*v55)(v65, v56, v66);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_22C26E764();
    ClientAction.Definition.toolDefinition.getter(v60);

    (*v54)(v63, v64);
    v52 = *(v45 + 16);
    v51 = *(v45 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_22BE711C4(v51 > 1, v52 + 1, 1);
      v39 = v45;
    }

    *(v39 + 16) = v52 + 1;
    (*(v61 + 32))(v39 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v52, v60, v62);
    v41 += 32;
  }

  while (v41 != 256);
  swift_setDeallocating();
  sub_22BEDDAE4();
  return v39;
}

void ToolDatabase.LaunchServicesDatabaseVersion.encodedLSDBVersion()()
{
  v1 = v0;
  v2 = MEMORY[0x2318ACA20]();
  sub_22BF406B8(v1, &v4, &v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t ToolboxVersion.init(versionNumber:client:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  sub_22BE3D170();
  sub_22BE18000();
  v7 = *(v6 + 32);

  return v7(&a3[v3], a2);
}

Swift::String __swiftcall ToolboxDelegate.embeddingSnippetForToolInvocation(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_22BF3CB68()
{
  v0 = sub_22C272BA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C272C54();
  v6 = v5;
  sub_22C272C74();
  v7 = sub_22C272B94();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v11[0] = v4;
  v11[1] = v6;

  MEMORY[0x2318AB8D0](v7, v9);

  return v11[0];
}

uint64_t ToolboxDelegate.embeddingSnippetForAssistantSchema(_:)()
{
  sub_22BE23C8C();
  v0 = sub_22C272BA4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C272C54();
  sub_22C272C74();
  v8 = sub_22C272B94();
  v10 = v9;
  (*(v2 + 8))(v6, v0);

  MEMORY[0x2318AB8D0](v8, v10);

  return v7;
}

uint64_t String.databaseValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = *MEMORY[0x277D78288];
  sub_22C26E4D4();
  sub_22BE18000();
  (*(v5 + 104))(a3, v4);
}

uint64_t ToolboxPlanGenerationDelegate.versionIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))(a1);

  return sub_22BE297F8(v2, v3);
}

uint64_t ToolboxEmbeddingModel.hashValue.getter()
{
  sub_22BE25DAC();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t ToolboxVersion.client.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22BE3D170();
  sub_22BE18000();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t ToolboxVersion.client.setter(uint64_t a1)
{
  sub_22BE3D170();
  sub_22BE18000();
  v5 = *(v4 + 40);

  return v5(v1 + v2, a1);
}

uint64_t ToolsOverride.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22BE1BD3C(a1, a1[3]);
  sub_22C274204();
  if (!v2)
  {
    sub_22BE1BD3C(v7, v7[3]);
    sub_22BE5CE4C(&qword_27D90B430, &qword_22C28D180);
    sub_22BF40CD0(&unk_28106DE78);
    sub_22C274024();
    v5 = v7[6];
    sub_22BE26B64(v7);
    *a2 = v5;
  }

  return sub_22BE26B64(a1);
}

uint64_t sub_22BF3D1B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BF3D23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3D1B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BF3D268(uint64_t a1)
{
  v2 = sub_22BF40C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3D2A4(uint64_t a1)
{
  v2 = sub_22BF40C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolsOverride.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v22 = v21;
  v23 = sub_22BE5CE4C(&qword_27D90B438, &qword_22C28D188);
  sub_22BE179D8();
  v25 = v24;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1BC40();
  sub_22BE1BD3C(v22, v22[3]);
  sub_22BF40C7C();

  sub_22C274234();
  sub_22BE5CE4C(&qword_27D90B430, &qword_22C28D180);
  sub_22BF40CD0(&unk_27D90B448);
  sub_22C273FA4();

  (*(v25 + 8))(v20, v23);
  sub_22BE18478();
}

uint64_t ToolDefinitionOverrride.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_22BF3D4D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C273DC4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22BF3D520(char a1)
{
  if (!a1)
  {
    return 0x6D6178655F736F70;
  }

  if (a1 == 1)
  {
    return 0x6D6178655F67656ELL;
  }

  return 0x7470697263736564;
}

unint64_t sub_22BF3D5A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BF3D4D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22BF3D5D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BF3D520(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22BF3D60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3D4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3D634(uint64_t a1)
{
  v2 = sub_22BF40DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3D670(uint64_t a1)
{
  v2 = sub_22BF40DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolDefinitionOverrride.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v22 = v21;
  v23 = sub_22BE5CE4C(&qword_27D90B458, &unk_22C28D190);
  sub_22BE179D8();
  v25 = v24;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1AB80();
  sub_22BE1BD3C(v22, v22[3]);
  v27 = sub_22BF40DA4();

  sub_22C274234();
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BE48F64(&qword_28106DBE8);
  sub_22BE256F4();

  if (!v27)
  {
    sub_22BE256F4();
    sub_22C273F54();
  }

  (*(v25 + 8))(v20, v23);
  sub_22BE18478();
}

void ToolDefinitionOverrride.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  v22 = v21;
  v24 = v23;
  sub_22BE5CE4C(&qword_27D90B460, &qword_22C28D1A0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1BD3C(v22, v22[3]);
  sub_22BF40DA4();
  sub_22C274214();
  if (v20)
  {
    sub_22BE26B64(v22);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE48F64(&qword_28106DBD8);
    sub_22BE269BC();
    sub_22BE269BC();
    v26 = sub_22C273E64();
    v28 = v27;
    v29 = sub_22BE3E5BC();
    v30(v29);
    *v24 = a10;
    v24[1] = a10;
    v24[2] = v26;
    v24[3] = v28;

    sub_22BE26B64(v22);
  }

  sub_22BE18478();
}

uint64_t ToolBoxToolSearchResult.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ToolBoxToolSearchResult(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_22BF3DB64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF3DC7C(char a1)
{
  if (!a1)
  {
    return 0x696665446C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x65726F6373;
  }

  return 0x65706F6373;
}

uint64_t sub_22BF3DCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3DB64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3DD08(uint64_t a1)
{
  v2 = sub_22BF40E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3DD44(uint64_t a1)
{
  v2 = sub_22BF40E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolBoxToolSearchResult.encode(to:)(void *a1)
{
  v4 = sub_22BE5CE4C(&qword_27D90B468, &qword_22C28D1A8);
  sub_22BE179D8();
  v6 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1AB80();
  sub_22BE2018C(a1);
  v8 = sub_22BF40E18();
  sub_22BE194D0(&type metadata for ToolBoxToolSearchResult.CodingKeys, v9, v8);
  sub_22C272224();
  sub_22BE18DC4();
  sub_22BF40EC0(v10);
  sub_22BE19F48();
  if (!v1)
  {
    type metadata accessor for ToolBoxToolSearchResult(0);
    sub_22BE2315C();
    sub_22BE230B8();
    sub_22C273F84();
    sub_22BE25918();
    sub_22BE230B8();
    sub_22C273F34();
  }

  return (*(v6 + 8))(v2, v4);
}

void ToolBoxToolSearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  sub_22BE35844(v14);
  v15 = sub_22C272224();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE5CE4C(&qword_27D90B488, &qword_22C28D1B0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE24FD8();
  v19 = type metadata accessor for ToolBoxToolSearchResult(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22BE2018C(v12);
  v21 = sub_22BF40E18();
  sub_22BE35B58(&type metadata for ToolBoxToolSearchResult.CodingKeys, v22, v21);
  if (v13)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE18DC4();
    v24 = sub_22BF40EC0(v23);
    sub_22BE1C310(v24);
    v25 = sub_22BE1A2A0();
    v26(v25);
    sub_22BE2315C();
    sub_22BE3D488();
    sub_22C273E94();
    sub_22BE36768(v27);
    sub_22BE3D488();
    sub_22C273E44();
    v28 = sub_22BE19264();
    v29(v28);
    *(v15 + *(v19 + 24)) = a12;
    sub_22BF40FCC(v15, v30);
    sub_22BE26B64(v12);
    sub_22BF41028(v15, type metadata accessor for ToolBoxToolSearchResult);
  }

  sub_22BE18478();
}

uint64_t ToolBoxAssistantSchemaSearchResult.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_22BF3E254(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000022C2D4780 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF3E36C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x65726F6373;
  }

  return 0x65706F6373;
}

uint64_t sub_22BF3E3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3E254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3E3F0(uint64_t a1)
{
  v2 = sub_22BF40F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3E42C(uint64_t a1)
{
  v2 = sub_22BF40F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolBoxAssistantSchemaSearchResult.encode(to:)(void *a1)
{
  v4 = sub_22BE5CE4C(&qword_27D90B4A0, &qword_22C28D1B8);
  sub_22BE179D8();
  v6 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1AB80();
  sub_22BE2018C(a1);
  v8 = sub_22BF40F78();
  sub_22BE194D0(&type metadata for ToolBoxAssistantSchemaSearchResult.CodingKeys, v9, v8);
  sub_22C272CA4();
  sub_22BE1BF44();
  sub_22BF40EC0(v10);
  sub_22BE19F48();
  if (!v1)
  {
    type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
    sub_22BE2315C();
    sub_22BE230B8();
    sub_22C273F84();
    sub_22BE25918();
    sub_22BE230B8();
    sub_22C273F34();
  }

  return (*(v6 + 8))(v2, v4);
}

void ToolBoxAssistantSchemaSearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  sub_22BE35844(v14);
  v15 = sub_22C272CA4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE5CE4C(&qword_27D90B4B0, &qword_22C28D1C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE24FD8();
  v19 = type metadata accessor for ToolBoxAssistantSchemaSearchResult(v18);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22BE2018C(v12);
  v21 = sub_22BF40F78();
  sub_22BE35B58(&type metadata for ToolBoxAssistantSchemaSearchResult.CodingKeys, v22, v21);
  if (v13)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE1BF44();
    v24 = sub_22BF40EC0(v23);
    sub_22BE1C310(v24);
    v25 = sub_22BE1A2A0();
    v26(v25);
    sub_22BE2315C();
    sub_22BE3D488();
    sub_22C273E94();
    sub_22BE36768(v27);
    sub_22BE3D488();
    sub_22C273E44();
    v28 = sub_22BE19264();
    v29(v28);
    *(v15 + *(v19 + 24)) = a12;
    sub_22BF40FCC(v15, v30);
    sub_22BE26B64(v12);
    sub_22BF41028(v15, type metadata accessor for ToolBoxAssistantSchemaSearchResult);
  }

  sub_22BE18478();
}

uint64_t sub_22BF3E8CC@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  sub_22BE18000();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_22BF3E958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF3EA24(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x696665446C6F6F74;
  }
}

uint64_t sub_22BF3EA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3E958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3EA94(uint64_t a1)
{
  v2 = sub_22BF410A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3EAD0(uint64_t a1)
{
  v2 = sub_22BF410A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolBoxClientActionSearchResult.encode(to:)(void *a1)
{
  v4 = sub_22BE5CE4C(&qword_27D90B4B8, &qword_22C28D1C8);
  sub_22BE179D8();
  v6 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1BC40();
  sub_22BE2018C(a1);
  v8 = sub_22BF410A0();
  sub_22BE194D0(&type metadata for ToolBoxClientActionSearchResult.CodingKeys, v9, v8);
  sub_22C272224();
  sub_22BE18DC4();
  sub_22BF40EC0(v10);
  sub_22C273FA4();
  if (!v1)
  {
    type metadata accessor for ToolBoxClientActionSearchResult(0);
    sub_22BE2315C();
    sub_22C273F84();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t ToolBoxClientActionSearchResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C272224();
  sub_22BE179D8();
  v21 = v6;
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v9 = v8 - v7;
  sub_22BE5CE4C(&qword_27D90B4C8, &unk_22C28D1D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE24FD8();
  v12 = type metadata accessor for ToolBoxClientActionSearchResult(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF410A0();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  sub_22BE18DC4();
  sub_22BF40EC0(v14);
  sub_22C273EB4();
  (*(v21 + 32))(v3, v9, v22);
  sub_22C273E94();
  v16 = v15;
  v17 = sub_22BE25AC8();
  v18(v17);
  *(v3 + *(v12 + 20)) = v16;
  sub_22BF40FCC(v3, a2);
  sub_22BE26B64(a1);
  return sub_22BF41028(v3, type metadata accessor for ToolBoxClientActionSearchResult);
}

uint64_t static ToolboxCustomKeyResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  sub_22C272CA4();
  sub_22BE179D8();
  v27 = v5;
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE1AB80();
  v6 = sub_22C272224();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1BC40();
  type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_22BE5CE4C(&qword_27D90B4D0, &qword_22C2CB6C0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_22BF40FCC(v29, &v27 - v17);
  sub_22BF40FCC(v30, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE18A28();
    sub_22BF40FCC(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v27;
      v21 = v28;
      (*(v27 + 32))(v2, &v18[v20], v28);
      v23 = sub_22C272C44();
      v24 = *(v22 + 8);
      v24(v2, v21);
      v24(v12, v21);
LABEL_9:
      sub_22BF41028(v18, type metadata accessor for ToolboxCustomKeyResult);
      return v23 & 1;
    }

    (*(v27 + 8))(v12, v28);
  }

  else
  {
    sub_22BE18A28();
    sub_22BF40FCC(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v8 + 32))(v3, &v18[v20], v6);
      v23 = sub_22C2721B4();
      v25 = *(v8 + 8);
      v25(v3, v6);
      v25(v15, v6);
      goto LABEL_9;
    }

    (*(v8 + 8))(v15, v6);
  }

  sub_22BE33928(v18, &qword_27D90B4D0, &qword_22C2CB6C0);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_22BF3F310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF3F3E8(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 0x696665446C6F6F74;
  }
}

uint64_t sub_22BF3F438(uint64_t a1)
{
  v2 = sub_22BF41168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3F474(uint64_t a1)
{
  v2 = sub_22BF41168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF3F4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF3F310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF3F4E0(uint64_t a1)
{
  v2 = sub_22BF41114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3F51C(uint64_t a1)
{
  v2 = sub_22BF41114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF3F558(uint64_t a1)
{
  v2 = sub_22BF411BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF3F594(uint64_t a1)
{
  v2 = sub_22BF411BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolboxCustomKeyResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v76 = v24;
  v74 = v23;
  v27 = v26;
  sub_22BE5CE4C(&qword_27D90B4D8, &qword_22C28D1E0);
  sub_22BE179D8();
  v72 = v29;
  v73 = v28;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v69 = &v63 - v31;
  sub_22C272CA4();
  sub_22BE179D8();
  v70 = v33;
  v71 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BE179EC();
  v68 = v35 - v34;
  sub_22BE5CE4C(&qword_27D90B4E0, &qword_22C28D1E8);
  sub_22BE179D8();
  v66 = v37;
  v67 = v36;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1BC40();
  sub_22C272224();
  sub_22BE179D8();
  v64 = v40;
  v65 = v39;
  MEMORY[0x28223BE20](v39);
  sub_22BE179EC();
  v43 = v42 - v41;
  type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v44);
  sub_22BE179EC();
  v47 = v46 - v45;
  v48 = sub_22BE5CE4C(&qword_27D90B4E8, &qword_22C28D1F0);
  sub_22BE179D8();
  v75 = v49;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  v52 = &v63 - v51;
  sub_22BE1BD3C(v27, v27[3]);
  sub_22BF41114();
  sub_22C274234();
  sub_22BE18A28();
  sub_22BF40FCC(v74, v47);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v70;
    v53 = v71;
    v55 = v68;
    (*(v70 + 32))(v68, v47, v71);
    sub_22BF41168();
    v56 = v69;
    sub_22C273EE4();
    sub_22BE1BF44();
    sub_22BF40EC0(v57);
    v58 = v73;
    sub_22C273FA4();
    (*(v72 + 8))(v56, v58);
    (*(v54 + 8))(v55, v53);
  }

  else
  {
    v60 = v64;
    v59 = v65;
    (*(v64 + 32))(v43, v47, v65);
    sub_22BF411BC();
    sub_22C273EE4();
    sub_22BE18DC4();
    sub_22BF40EC0(v61);
    v62 = v67;
    sub_22C273FA4();
    (*(v66 + 8))(v25, v62);
    (*(v60 + 8))(v43, v59);
  }

  (*(v75 + 8))(v52, v48);
  sub_22BE18478();
}

uint64_t ToolboxCustomKeyResult.hash(into:)()
{
  sub_22BE23C8C();
  v2 = sub_22C272CA4();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22C272224();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  sub_22BE1BC40();
  type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  sub_22BE18A28();
  sub_22BF40FCC(v0, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v16, v2);
    MEMORY[0x2318AC860](1);
    sub_22BE1BF44();
    sub_22BF40EC0(v17);
    sub_22C272EE4();
    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    (*(v11 + 32))(v1, v16, v9);
    MEMORY[0x2318AC860](0);
    sub_22BE18DC4();
    sub_22BF40EC0(v19);
    sub_22C272EE4();
    return (*(v11 + 8))(v1, v9);
  }
}

uint64_t ToolboxCustomKeyResult.hashValue.getter()
{
  sub_22BE25DAC();
  ToolboxCustomKeyResult.hash(into:)();
  return sub_22C2741A4();
}

void ToolboxCustomKeyResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  a23 = v25;
  a24 = v26;
  v103 = v24;
  v28 = v27;
  v94 = v29;
  v102 = sub_22BE5CE4C(&qword_27D90B510, &qword_22C28D1F8);
  sub_22BE179D8();
  v97 = v30;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  v99 = &v90 - v32;
  sub_22BE5CE4C(&qword_27D90B518, &qword_22C28D200);
  sub_22BE179D8();
  v95 = v34;
  v96 = v33;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v98 = &v90 - v36;
  sub_22BE5CE4C(&qword_27D90B520, &unk_22C28D208);
  sub_22BE179D8();
  v100 = v38;
  v101 = v37;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  v41 = &v90 - v40;
  v42 = type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v43);
  v45 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v90 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v90 - v50;
  sub_22BE2018C(v28);
  sub_22BF41114();
  v52 = v103;
  sub_22C274214();
  if (v52)
  {
    goto LABEL_8;
  }

  v90 = v45;
  v91 = v48;
  v53 = v101;
  v92 = v51;
  v93 = v42;
  v103 = v28;
  sub_22C273ED4();
  sub_22BE7C5C4();
  if (v55 == v56 >> 1)
  {
LABEL_7:
    v71 = v93;
    v72 = sub_22C273B34();
    swift_allocError();
    v74 = v73;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v74 = v71;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D84160], v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = sub_22BF42C78();
    v76(v75, v53);
    v28 = v103;
LABEL_8:
    v77 = v28;
LABEL_9:
    sub_22BE26B64(v77);
    sub_22BE18478();
    return;
  }

  if (v55 < (v56 >> 1))
  {
    a10 = *(v54 + v55);
    sub_22BE7C5C0();
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    if (v58 == v60 >> 1)
    {
      v61 = v53;
      if (a10)
      {
        a14 = 1;
        sub_22BF41168();
        sub_22BE254B0(&type metadata for ToolboxCustomKeyResult.AssistantSchemaCodingKeys, &a14);
        v62 = v92;
        v63 = sub_22C272CA4();
        sub_22BE1BF44();
        v65 = sub_22BF40EC0(v64);
        v66 = v90;
        sub_22BE289E4(v63, v67, v68, v69, v65);
        v70 = v100;
        swift_unknownObjectRelease();
        v84 = sub_22BE1BA94();
        v85(v84);
        (*(v70 + 8))(v41, v61);
      }

      else
      {
        a13 = 0;
        sub_22BF411BC();
        sub_22BE254B0(&type metadata for ToolboxCustomKeyResult.ToolDefinitionCodingKeys, &a13);
        v62 = v92;
        v78 = sub_22C272224();
        sub_22BE18DC4();
        v80 = sub_22BF40EC0(v79);
        v66 = v91;
        sub_22BE289E4(v78, v81, v82, v83, v80);
        swift_unknownObjectRelease();
        v86 = sub_22BE1BA94();
        v87(v86);
        v88 = sub_22BF42C78();
        v89(v88, v61);
      }

      swift_storeEnumTagMultiPayload();
      sub_22BF41268(v66, v62);
      sub_22BF41268(v62, v94);
      v77 = v103;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BF40334(uint64_t a1)
{
  sub_22C274154();
  ToolboxCustomKeyResult.hash(into:)();
  return sub_22C2741A4();
}

IntelligenceFlowPlannerSupport::ToolBoxToolScope_optional __swiftcall ToolBoxToolScope.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

IntelligenceFlowPlannerSupport::ToolBoxToolType_optional __swiftcall ToolBoxToolType.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v5 = a1._countAndFlagsBits == 0x6E61747369737361 && a1._object == 0xEF616D6568635374;
  if (v5 || (sub_22BE1A608(0x6E61747369737361, 0xEF616D6568635374) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x7261507473726966 && object == 0xED00007070417974;
    if (v8 || (sub_22BE1A608(0x7261507473726966, 0xED00007070417974) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x7261506472696874 && object == 0xED00007070417974;
      if (v9 || (sub_22BE1A608(0x7261506472696874, 0xED00007070417974) & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v10 = sub_22BF42C88();
        v12 = countAndFlagsBits == v10 && object == v11;
        if (v12 || (sub_22BE1A608(v10, v11) & 1) != 0)
        {

          v7 = 3;
        }

        else
        {
          v13 = sub_22BE2F160();
          if (countAndFlagsBits == v13 && object == v14)
          {

            v7 = 4;
          }

          else
          {
            v16 = sub_22BE1A608(v13, v14);

            if (v16)
            {
              v7 = 4;
            }

            else
            {
              v7 = 5;
            }
          }
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t ToolBoxToolType.description.getter()
{
  result = 0x6E61747369737361;
  switch(*v0)
  {
    case 1:
      v2 = 0x507473726966;
      goto LABEL_5;
    case 2:
      v2 = 0x506472696874;
LABEL_5:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      break;
    case 3:
      result = sub_22BF42C88();
      break;
    case 4:
      result = sub_22BE2F160();
      break;
    default:
      return result;
  }

  return result;
}

IntelligenceFlowPlannerSupport::ToolBoxToolType_optional __swiftcall ToolBoxToolType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_22BF406B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a2;
  v40 = a1;
  v32 = a3;
  v3 = sub_22C2720A4();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26DBC4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C26DBA4();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C26DBE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22C26DC34();
  (*(v12 + 104))(v14, *MEMORY[0x277CC8758], v11);
  sub_22BE5CE4C(&qword_27D908098, &qword_22C278EC8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22C275160;
  sub_22C26DB84();
  v42 = v15;
  sub_22BF40EC0(&qword_28107F370);
  sub_22BE5CE4C(&qword_27D9080A0, &qword_22C278ED0);
  sub_22BF42BE8(&qword_28106DDD0);
  sub_22C2739B4();
  (*(v38 + 104))(v7, *MEMORY[0x277CC8740], v39);
  sub_22C25F42C(v14, v10, v7);
  sub_22C272424();
  sub_22BF40EC0(&qword_28106DF58);
  v16 = v41;
  v17 = sub_22C26DC04();
  if (v16)
  {

    v19 = v33;
    sub_22C271AD4();
    v20 = v16;
    v21 = sub_22C272084();
    v22 = sub_22C2737A4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v16;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_22BE15000, v21, v22, "Could not serialize ToolKit database version toolbox. Error: %@", v23, 0xCu);
      sub_22BE33928(v24, &qword_27D907870, &qword_22C27AB50);
      MEMORY[0x2318AD180](v24, -1, -1);
      MEMORY[0x2318AD180](v23, -1, -1);
    }

    (*(v34 + 8))(v19, v35);
    sub_22BF1C114();
    v27 = swift_allocError();
    *v28 = 4;
    swift_willThrow();

    *v36 = v27;
  }

  else
  {
    v29 = v17;
    v30 = v18;

    v31 = v32;
    *v32 = v29;
    v31[1] = v30;
  }
}

unint64_t sub_22BF40C28()
{
  result = qword_281079200;
  if (!qword_281079200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079200);
  }

  return result;
}

unint64_t sub_22BF40C7C()
{
  result = qword_27D90B440;
  if (!qword_27D90B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B440);
  }

  return result;
}

unint64_t sub_22BF40CD0(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BE7431C(&qword_27D90B430, &qword_22C28D180);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BF40D50()
{
  result = qword_27D90B450;
  if (!qword_27D90B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B450);
  }

  return result;
}

unint64_t sub_22BF40DA4()
{
  result = qword_281079218[0];
  if (!qword_281079218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281079218);
  }

  return result;
}

unint64_t sub_22BF40E18()
{
  result = qword_27D90B470;
  if (!qword_27D90B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B470);
  }

  return result;
}

unint64_t sub_22BF40E6C()
{
  result = qword_27D90B480;
  if (!qword_27D90B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B480);
  }

  return result;
}

unint64_t sub_22BF40EC0(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BF40F04()
{
  result = qword_27D90B498;
  if (!qword_27D90B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B498);
  }

  return result;
}

unint64_t sub_22BF40F78()
{
  result = qword_27D90B4A8;
  if (!qword_27D90B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4A8);
  }

  return result;
}

uint64_t sub_22BF40FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE23C8C();
  v5(v4);
  sub_22BE18000();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22BF41028(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22BF410A0()
{
  result = qword_27D90B4C0;
  if (!qword_27D90B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4C0);
  }

  return result;
}

unint64_t sub_22BF41114()
{
  result = qword_27D90B4F0;
  if (!qword_27D90B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4F0);
  }

  return result;
}

unint64_t sub_22BF41168()
{
  result = qword_27D90B4F8;
  if (!qword_27D90B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B4F8);
  }

  return result;
}

unint64_t sub_22BF411BC()
{
  result = qword_27D90B500;
  if (!qword_27D90B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B500);
  }

  return result;
}

uint64_t ToolboxCancellationStatus.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t ToolboxCancellationStatus.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_22BF41268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolboxCustomKeyResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BF412D0()
{
  result = qword_27D90B528;
  if (!qword_27D90B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B528);
  }

  return result;
}

unint64_t sub_22BF41328()
{
  result = qword_27D90B530;
  if (!qword_27D90B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B530);
  }

  return result;
}

unint64_t sub_22BF41380()
{
  result = qword_27D90B538;
  if (!qword_27D90B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B538);
  }

  return result;
}

unint64_t sub_22BF413D4(uint64_t a1)
{
  *(a1 + 8) = sub_22BF40EC0(&unk_28107D4A8);
  result = sub_22BF40EC0(&unk_28107D4B0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BF41458(uint64_t a1)
{
  *(a1 + 8) = sub_22BF40EC0(&unk_281073940);
  result = sub_22BF40EC0(&unk_281073948);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BF414DC(uint64_t a1)
{
  *(a1 + 8) = sub_22BF40EC0(&unk_2810751B0);
  result = sub_22BF40EC0(&unk_2810751B8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BF415AC()
{
  result = qword_27D90B548;
  if (!qword_27D90B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B548);
  }

  return result;
}

unint64_t sub_22BF41648()
{
  result = qword_27D90B560;
  if (!qword_27D90B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B560);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}