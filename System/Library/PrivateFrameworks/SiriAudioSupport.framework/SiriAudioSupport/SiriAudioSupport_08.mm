void sub_266365048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_2663650C0(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2663606A4(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_266365168(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, unint64_t, void *), uint64_t a11)
{
  v73 = a7;
  v74 = a8;
  v68 = a6;
  *&v72 = a4;
  *(&v72 + 1) = a2;
  v66 = a1;
  v67 = a3;
  v12 = a11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v65 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v65 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v69 = &v65 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v65 - v26;
  v28 = qword_280F914E8;
  v75 = a9;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v77 = *(v14 + 16);
  v77(v27, v29, v13);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v65 = a5;
    v33 = v32;
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "LibraryProvider#mediaQuery...", v32, 2u);
    v34 = v33;
    v12 = a11;
    a5 = v65;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = *(v14 + 8);
  v35(v27, v13);
  v36 = swift_allocObject();
  if (a5 == 6)
  {
    v77(v70, v29, v13);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v51, v52, "LibraryProvider#mediaQuery playlist", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v54 = (v35)(v70, v13);
    v50 = (v73[12])(v54);
    goto LABEL_20;
  }

  if (a5 == 1)
  {
    v77(v23, v29, v13);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06E8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v71 = v13;
      v45 = v23;
      v46 = v29;
      v47 = v44;
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "LibraryProvider#mediaQuery album", v44, 2u);
      v48 = v47;
      v29 = v46;
      v23 = v45;
      v13 = v71;
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v49 = (v35)(v23, v13);
    v50 = (v73[16])(v49);
    goto LABEL_20;
  }

  if (a5)
  {
    v77(v71, v29, v13);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06E8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "LibraryProvider#mediaQuery default, empty", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v35(v71, v13);
    v50 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v36 + 16) = v50;
    goto LABEL_21;
  }

  v77(v69, v29, v13);
  v37 = sub_2664DFE18();
  v38 = sub_2664E06E8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    *(v39 + 4) = v68 & 1;
    _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v39, 8u);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v40 = (v35)(v69, v13);
  v41 = (v73[14])(v40);
  *(v36 + 16) = v41;
  [v41 setShouldIncludeNonLibraryEntities_];
  [v41 setIgnoreSystemFilterPredicates_];
LABEL_21:
  v58 = *(&v72 + 1);
  if (*(&v72 + 1) == 1 || v72 == 0)
  {
    v77(v76, v29, v13);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06E8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v35(v76, v13);
    v62 = *(v36 + 16);
    sub_266358C74(v62, v74, v75, a10, v12);
  }

  else
  {
    v63 = v75;

    sub_2663611BC(v66, v58, v67, v72, v73, v36, v74, v63, a10, v12);
  }

  sub_266354A00(v36);
}

uint64_t sub_2663658E0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, void *a9, void (*a10)(__int128 *), uint64_t a11, uint64_t a12, void *a13)
{
  v84 = a8;
  *(&v81 + 1) = a2;
  v82 = a7;
  v77 = a6;
  *&v81 = a4;
  v75 = a1;
  v76 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v73 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v73 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v78 = &v73 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - v27;
  v29 = qword_280F914E8;
  v85 = a9;

  v86 = a11;

  v83 = a13;
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v31 = *(v15 + 16);
  v31(v28, v30, v14);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v74 = a5;
    v35 = v24;
    v36 = v31;
    v37 = v30;
    v38 = v34;
    *v34 = 0;
    _os_log_impl(&dword_26629C000, v32, v33, "LibraryProvider#mediaQuery...", v34, 2u);
    v39 = v38;
    v30 = v37;
    v31 = v36;
    v24 = v35;
    a5 = v74;
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v40 = *(v15 + 8);
  v40(v28, v14);
  v41 = swift_allocObject();
  if (a5 == 6)
  {
    v31(v79, v30, v14);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06E8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "LibraryProvider#mediaQuery playlist", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v60 = (v40)(v79, v14);
    v56 = (v82[12])(v60);
    goto LABEL_20;
  }

  if (a5 == 1)
  {
    v31(v24, v30, v14);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06E8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v80 = v14;
      v50 = v24;
      v51 = v31;
      v52 = v30;
      v53 = v49;
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "LibraryProvider#mediaQuery album", v49, 2u);
      v54 = v53;
      v30 = v52;
      v31 = v51;
      v24 = v50;
      v14 = v80;
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = (v40)(v24, v14);
    v56 = (v82[16])(v55);
    goto LABEL_20;
  }

  if (a5)
  {
    v31(v80, v30, v14);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06E8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "LibraryProvider#mediaQuery default, empty", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v40(v80, v14);
    v56 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v41 + 16) = v56;
    goto LABEL_21;
  }

  v31(v78, v30, v14);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v77 & 1;
    _os_log_impl(&dword_26629C000, v42, v43, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v44, 8u);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v45 = (v40)(v78, v14);
  v46 = (v82[14])(v45);
  *(v41 + 16) = v46;
  [v46 setShouldIncludeNonLibraryEntities_];
  [v46 setIgnoreSystemFilterPredicates_];
LABEL_21:
  if (*(&v81 + 1) == 1 || v81 == 0)
  {
    v31(v87, v30, v14);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26629C000, v64, v65, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v66, 2u);
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    v40(v87, v14);
    v67 = *(v41 + 16);
    v68 = v83;
    sub_26635DBA4(v67, v84, v85, a10, v86, a12, v83);
  }

  else
  {
    v69 = v85;
    v70 = *(&v81 + 1);

    v71 = v86;

    v68 = v83;
    v67 = v83;

    sub_2663619D4(v75, v70, v76, v81, v82, v41, v84, v69, a10, v71, a12, v67);
  }

  sub_266354A00(v41);
}

uint64_t sub_266366098(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *), uint64_t a12, void *a13)
{
  v84 = a8;
  *(&v81 + 1) = a2;
  v82 = a7;
  v77 = a6;
  *&v81 = a4;
  v75 = a1;
  v76 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v73 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v73 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v78 = &v73 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - v27;
  v29 = qword_280F914E8;
  v85 = a9;

  v86 = a12;

  v83 = a13;
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v31 = *(v15 + 16);
  v31(v28, v30, v14);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v74 = a5;
    v35 = v24;
    v36 = v31;
    v37 = v30;
    v38 = v34;
    *v34 = 0;
    _os_log_impl(&dword_26629C000, v32, v33, "LibraryProvider#mediaQuery...", v34, 2u);
    v39 = v38;
    v30 = v37;
    v31 = v36;
    v24 = v35;
    a5 = v74;
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v40 = *(v15 + 8);
  v40(v28, v14);
  v41 = swift_allocObject();
  if (a5 == 6)
  {
    v31(v79, v30, v14);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06E8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "LibraryProvider#mediaQuery playlist", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v60 = (v40)(v79, v14);
    v56 = (v82[12])(v60);
    goto LABEL_20;
  }

  if (a5 == 1)
  {
    v31(v24, v30, v14);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06E8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v80 = v14;
      v50 = v24;
      v51 = v31;
      v52 = v30;
      v53 = v49;
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "LibraryProvider#mediaQuery album", v49, 2u);
      v54 = v53;
      v30 = v52;
      v31 = v51;
      v24 = v50;
      v14 = v80;
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = (v40)(v24, v14);
    v56 = (v82[16])(v55);
    goto LABEL_20;
  }

  if (a5)
  {
    v31(v80, v30, v14);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06E8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "LibraryProvider#mediaQuery default, empty", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v40(v80, v14);
    v56 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v41 + 16) = v56;
    goto LABEL_21;
  }

  v31(v78, v30, v14);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v77 & 1;
    _os_log_impl(&dword_26629C000, v42, v43, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v44, 8u);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v45 = (v40)(v78, v14);
  v46 = (v82[14])(v45);
  *(v41 + 16) = v46;
  [v46 setShouldIncludeNonLibraryEntities_];
  [v46 setIgnoreSystemFilterPredicates_];
LABEL_21:
  if (*(&v81 + 1) == 1 || v81 == 0)
  {
    v31(v87, v30, v14);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26629C000, v64, v65, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v66, 2u);
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    v40(v87, v14);
    v67 = *(v41 + 16);
    v68 = v83;
    sub_26635F5CC(v67, v84, v85, a10, a11, v86, v83);
  }

  else
  {
    v69 = v85;
    v70 = *(&v81 + 1);

    v71 = v86;

    v68 = v83;
    v67 = v83;

    sub_266362244(v75, v70, v76, v81, v82, v41, v84, v69, a10, a11, v71, v67);
  }

  sub_266354A00(v41);
}

unsigned __int8 *sub_266366848(uint64_t a1, unint64_t a2, void **a3, uint64_t a4, unint64_t a5, char *a6, unint64_t a7, void **a8, uint64_t a9)
{
  v69 = a3;
  v70 = a6;
  v67 = a4;
  v68 = a5;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v71 = &v65 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  result = swift_allocObject();
  v23 = result;
  *(result + 2) = a8;
  *(result + 3) = a9;
  v72 = a9;
  v24 = HIBYTE(a2) & 0xF;
  v25 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_63;
  }

  v66 = a7;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v28 = sub_26640687C();
    v60 = v59;

    if (v60)
    {
      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v75[0] = a1;
    v75[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v28 = 0;
          v38 = v75 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_81:
      __break(1u);
      return result;
    }

    if (a1 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v43 = v75;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          ++v43;
          if (!--v24)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = v75 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_79;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_2664E0B78();
  }

  v27 = *result;
  if (v27 == 43)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (result)
        {
          v35 = result + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_61;
            }

            v37 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_61;
            }

            v28 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_61;
            }

            ++v35;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_80;
  }

  if (v27 == 45)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (result)
        {
          v29 = result + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_61;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_61;
            }

            v28 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              goto LABEL_61;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v24) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v25)
  {
    v28 = 0;
    if (result)
    {
      while (1)
      {
        v41 = *result - 48;
        if (v41 > 9)
        {
          goto LABEL_61;
        }

        v42 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          goto LABEL_61;
        }

        v28 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v25)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v28 = 0;
  LOBYTE(v24) = 1;
LABEL_62:
  LOBYTE(v73) = v24;
  v46 = v24;

  if (v46)
  {
LABEL_63:
    v70 = v23;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v69 = a8;
    v47 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v48 = *(v14 + 16);
    v48(v21, v47, v13);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "LibraryProvider#addToLibrary Error converting identifier from String to Int64", v51, 2u);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    v52 = *(v14 + 8);
    v52(v21, v13);
    v53 = v71;
    v48(v71, v47, v13);
    v54 = v53;
    v55 = sub_2664DFE18();
    v56 = sub_2664E06B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v73 = v58;
      *v57 = 134218498;
      *(v57 + 4) = 8;
      *(v57 + 12) = 2048;
      *(v57 + 14) = 22;
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F57E0, &v73);
      _os_log_impl(&dword_26629C000, v55, v56, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v57, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v52(v54, v13);
    v73 = xmmword_2664E6E70;
    v74 = 0x80000002664F57E0;
    (v69)(&v73);
  }

LABEL_72:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v61 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v61, v13);
  v62 = sub_2664DFE18();
  v63 = sub_2664E06C8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_26629C000, v62, v63, "LibraryProvider#addToLibrary looking up library for user...", v64, 2u);
    MEMORY[0x266784AD0](v64, -1, -1);
  }

  (*(v14 + 8))(v17, v13);

  sub_266363244(v67, v68, v70, v66, v69, v28, a1, a2, sub_266367438, v23);
}

uint64_t objectdestroy_24Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  if (*(v0 + 216) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2663671B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_266367200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266367438(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t objectdestroy_90Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_125Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_104Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static ExecutorProvider.shared.setter(uint64_t *a1)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_280F90B28, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t (*static ExecutorProvider.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2663679BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2662A5550(qword_280F90B28, a1);
}

uint64_t sub_266367A3C(uint64_t *a1)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_280F90B28, a1);
  return swift_endAccess();
}

uint64_t ExecutorProvider.executorPrepareForAudioHandoff(completion:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "ExecutorProvidere#xecutorPrepareForAudioHandoff: expected AceService backed executor", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return a1(1);
}

uint64_t ExecutorProvider.currentRequestId.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "ExecutorProvider#currentRequestId: expected AceService backed executor", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t ExecutorProvider.carPlay.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "ExecutorProvider#carPlay: expected DeviceState backed executor", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 2;
}

BOOL ExecutorProvider.willSiriSpeak.getter()
{
  v0 = sub_2664DF578();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "ExecutorProvider#willSiriSpeak: expected DeviceState backed executor", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  if (!static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF528();
    sub_2664DF508();
  }

  sub_2664DF4D8();

  sub_2664DFA98();

  sub_2664DF538();
  sub_266368330();
  v15 = sub_2664E0298();
  v16 = *(v1 + 8);
  v16(v4, v0);
  v16(v6, v0);
  return (v15 & 1) == 0;
}

unint64_t sub_266368330()
{
  result = qword_280072D78;
  if (!qword_280072D78)
  {
    sub_2664DF578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D78);
  }

  return result;
}

void *sub_26636839C(void *result)
{
  v29 = result[3];
  v30 = result[4] >> 1;
  v1 = v30 - v29;
  if (!__OFSUB__(v30, v29))
  {
    v2 = *result;
    v26 = result[2];
    v28 = *(*result + 16);
    if (v1 >= v28)
    {
      v3 = *(*result + 16);
    }

    else
    {
      v3 = v30 - v29;
    }

    v34 = MEMORY[0x277D84F90];
    result = sub_2662FCFB4(0, v3 & ~(v3 >> 63), 0);
    if (v1 < 0)
    {
      goto LABEL_37;
    }

    v27 = v2;
    if (v3)
    {
      if (v29 <= v30)
      {
        v4 = v30;
      }

      else
      {
        v4 = v29;
      }

      result = swift_unknownObjectRetain();
      v5 = 0;
      v31 = v29 - v4;
      v6 = (v2 + 48);
      v7 = v28;
      v8 = (v26 + 24 * v29 + 16);
      do
      {
        if (-v28 == v5)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v29 - v30 == v5)
        {
          goto LABEL_31;
        }

        if (v31 == v5)
        {
          goto LABEL_32;
        }

        v10 = *(v6 - 2);
        v9 = *(v6 - 1);
        v11 = *v6;
        v12 = *v8;

        v14 = *(v34 + 16);
        v13 = *(v34 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_2662FCFB4((v13 > 1), v14 + 1, 1);
          v7 = v28;
        }

        *(v34 + 16) = v14 + 1;
        v15 = v34 + 24 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        *(v15 + 48) = vabdd_f64(v11, v12);
        --v5;
        v6 += 3;
        v8 += 3;
      }

      while (-v3 != v5);
      v32 = v29 - v5;
      v2 = v27;
      if (v7 > v30 - v29)
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    result = swift_unknownObjectRetain();
    v7 = v28;
    v32 = v29;
    if (v28 <= v1)
    {
LABEL_29:
      swift_unknownObjectRelease();

      return v34;
    }

LABEL_20:
    v16 = (v2 + 24 * v3 + 48);
    v17 = v32;
    v18 = (v26 + 24 * v32 + 16);
    while (v3 < v7)
    {
      v19 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_34;
      }

      if (v30 != v17)
      {
        if (v32 < v29 || v17 >= v30)
        {
          goto LABEL_35;
        }

        v20 = *(v16 - 1);
        v33 = *(v16 - 2);
        v21 = *v16;
        v22 = *v18;
        v24 = *(v34 + 16);
        v23 = *(v34 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_2662FCFB4((v23 > 1), v24 + 1, 1);
        }

        *(v34 + 16) = v24 + 1;
        v25 = v34 + 24 * v24;
        ++v3;
        *(v25 + 32) = v33;
        *(v25 + 40) = v20;
        *(v25 + 48) = vabdd_f64(v21, v22);
        v16 += 3;
        v18 += 3;
        ++v17;
        v7 = v28;
        if (v19 != v28)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *_s16SiriAudioSupport13ThresholdTrimV4trim17bundleConfidences9thresholdSaySSGSDySSSdG_SdtFZ_0(uint64_t a1, double a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v100 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v99 = (&v99 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v99 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v99 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v99 - v17);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v19 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    v20 = *(v5 + 16);
    v105 = v5 + 16;
    v106 = v19;
    v104 = v20;
    v20(v18, v19, v4);

    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();

    v23 = os_log_type_enabled(v21, v22);
    v103 = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v109[0] = v25;
      *v24 = 136315394;
      v26 = sub_2664E01D8();
      v28 = sub_2662A320C(v26, v27, v109);

      *(v24 + 4) = v28;
      v5 = v103;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a2;
      _os_log_impl(&dword_26629C000, v21, v22, "ThresholdTrim#trim bundleConfidences:%s, threshold:%f...", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    v107 = *(v5 + 8);
    v107(v18, v4);
    v29 = sub_266430D18(a1, 0, 0);
    v104(v16, v106, v4);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v109[0] = v33;
      *v32 = 136315138;
      v34 = sub_2664E01D8();
      v36 = sub_2662A320C(v34, v35, v109);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_26629C000, v30, v31, "ThresholdTrim#trim normalized:%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v107(v16, v4);
    v37 = v102;
    v38 = *(v29 + 16);
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v39 = sub_26640C8A4(*(v29 + 16), 0);
      v40 = sub_26640CC9C(v109, v39 + 4, v38, v29);
      v41 = v109[0];

      sub_2662B793C(v41);
      if (v40 != v38)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v37 = v102;
    }

    v109[0] = v39;
    sub_2662DA3AC(v109);

    a1 = v109[0];
    v104(v37, v106, v4);
    swift_retain_n();
    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v109[0] = v45;
      *v44 = 136315138;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
      v47 = MEMORY[0x2667834D0](a1, v46);
      v49 = sub_2662A320C(v47, v48, v109);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_26629C000, v42, v43, "ThresholdTrim#trim sorted:%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      v50 = v102;
    }

    else
    {

      v50 = v37;
    }

    v107(v50, v4);
    v51 = v101;
    v5 = *(a1 + 16);
    v109[0] = a1;
    v109[1] = a1;
    v109[2] = a1 + 32;
    v109[3] = v5 != 0;
    v109[4] = (2 * v5) | 1;

    v52 = sub_26636839C(v109);

    v104(v51, v106, v4);

    v53 = sub_2664DFE18();
    v54 = sub_2664E06C8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v108[0] = v56;
      *v55 = 136315138;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B8, &unk_2664E4F20);
      v58 = MEMORY[0x2667834D0](v52, v57);
      v60 = sub_2662A320C(v58, v59, v108);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_26629C000, v53, v54, "ThresholdTrim#trim differences: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);

      v61 = v101;
    }

    else
    {

      v61 = v51;
    }

    v107(v61, v4);
    v62 = v52[2];
    if (v62)
    {
      break;
    }

LABEL_19:

    v65 = v100;
    v104(v100, v106, v4);

    v18 = sub_2664DFE18();
    v66 = sub_2664E06E8();

    if (os_log_type_enabled(v18, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v108[0] = v68;
      *v67 = 136446466;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B8, &unk_2664E4F20);
      v70 = MEMORY[0x2667834D0](v52, v69);
      v72 = v71;

      v73 = sub_2662A320C(v70, v72, v108);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2048;
      *(v67 + 14) = a2;
      _os_log_impl(&dword_26629C000, v18, v66, "ThresholdTrim#trim no differences in:%{public}s greater than threshold: %f", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v67, -1, -1);

      v74 = v100;
    }

    else
    {

      v74 = v65;
    }

    v107(v74, v4);
    if (!v5)
    {
      v16 = MEMORY[0x277D84F90];
LABEL_42:

      return v16;
    }

    v75 = 0;
    v76 = (a1 + 40);
    v16 = MEMORY[0x277D84F90];
    while (v75 < *(a1 + 16))
    {
      v77 = *(v76 - 1);
      v4 = *v76;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2663846F4(0, *(v16 + 2) + 1, 1, v16);
      }

      v79 = *(v16 + 2);
      v78 = *(v16 + 3);
      v18 = (v79 + 1);
      if (v79 >= v78 >> 1)
      {
        v16 = sub_2663846F4((v78 > 1), v79 + 1, 1, v16);
      }

      ++v75;
      *(v16 + 2) = v18;
      v80 = &v16[16 * v79];
      *(v80 + 4) = v77;
      *(v80 + 5) = v4;
      v76 += 3;
      if (v5 == v75)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v63 = 0;
  v64 = 6;
  while (*&v52[v64] < a2)
  {
    ++v63;
    v64 += 3;
    if (v62 == v63)
    {
      goto LABEL_19;
    }
  }

  v38 = v63 + 1;
  if (__OFADD__(v63, 1))
  {
    goto LABEL_47;
  }

  v102 = v4;
  v81 = *(a1 + 16);

  if (v81 < v38)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    v82 = v63 + 1;
    v108[0] = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v63 + 1, 0);
    v16 = v108[0];
    v83 = (a1 + 40);
    do
    {
      v85 = *(v83 - 1);
      v84 = *v83;
      v108[0] = v16;
      v86 = *(v16 + 2);
      v87 = *(v16 + 3);

      if (v86 >= v87 >> 1)
      {
        sub_2662FCF24((v87 > 1), v86 + 1, 1);
        v16 = v108[0];
      }

      *(v16 + 2) = v86 + 1;
      v88 = &v16[16 * v86];
      *(v88 + 4) = v85;
      *(v88 + 5) = v84;
      v83 += 3;
      --v82;
    }

    while (v82);

    v89 = v99;
    v90 = v102;
    v104(v99, v106, v102);

    v91 = sub_2664DFE18();
    v92 = sub_2664E06C8();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v108[0] = v94;
      *v93 = 136315394;
      v95 = MEMORY[0x2667834D0](v16, MEMORY[0x277D837D0]);
      v97 = sub_2662A320C(v95, v96, v108);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2048;
      *(v93 + 14) = v63;
      _os_log_impl(&dword_26629C000, v91, v92, "ThresholdTrim#trim result:%s with splitIndex:%ld", v93, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x266784AD0](v94, -1, -1);
      MEMORY[0x266784AD0](v93, -1, -1);
    }

    v107(v89, v90);
    return v16;
  }

LABEL_49:
  __break(1u);

  __break(1u);
  return result;
}

SiriAudioSupport::PlaybackCodeAndDescription __swiftcall PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(SiriAudioSupport::PlaybackCode playbackCode, SiriAudioSupport::DomainCode domainCode, Swift::String errorDescription)
{
  object = errorDescription._object;
  countAndFlagsBits = errorDescription._countAndFlagsBits;
  v6 = domainCode;
  v7 = playbackCode;
  v8 = v3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v13) = *v7;
  v14 = *v6;
  v15 = qword_280F914E8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v16, v9);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06B8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v14;
    v14 = v19;
    v20 = swift_slowAlloc();
    v32 = v13;
    v13 = v20;
    v34 = v20;
    *v14 = 134218498;
    *(v14 + 4) = v33;
    *(v14 + 12) = 2048;
    *(v14 + 14) = qword_2664E7D00[v32 ^ 0x80u];
    *(v14 + 22) = 2080;
    v21 = sub_2662A320C(countAndFlagsBits, object, &v34);
    v31 = v9;
    v22 = v8;
    v23 = countAndFlagsBits;
    v24 = v21;

    *(v14 + 24) = v24;
    countAndFlagsBits = v23;
    v8 = v22;
    _os_log_impl(&dword_26629C000, v17, v18, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v25 = v13;
    LOBYTE(v13) = v32;
    MEMORY[0x266784AD0](v25, -1, -1);
    v26 = v14;
    LOBYTE(v14) = v33;
    MEMORY[0x266784AD0](v26, -1, -1);

    v27 = (*(v10 + 8))(v12, v31);
  }

  else
  {

    v27 = (*(v10 + 8))(v12, v9);
  }

  *v8 = v13;
  *(v8 + 1) = v14;
  *(v8 + 8) = countAndFlagsBits;
  *(v8 + 16) = object;
  result.errorDescription._object = v29;
  result.errorDescription._countAndFlagsBits = v28;
  result.playbackCode = v27;
  result.domainCode = HIBYTE(v27);
  return result;
}

void sub_266369588(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a1);
  v9 = sub_2664E0D68();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v7, a1);
  }

  v12 = sub_2664DE198();

  v13 = [v12 code];
  if ((v13 - 1) > 0xA)
  {
    v14 = 0;
  }

  else
  {
    v14 = asc_2664E7CEE[(v13 - 1)];
  }

  *a3 = v14;
}

SiriAudioSupport::PlaybackCode_optional __swiftcall PlaybackCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = v3 - 128;
  if (v3 >= 0x80)
  {
    v6 = -109;
    LOBYTE(v3) = 0x80;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v3) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v3) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v3) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v3) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v3) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v3) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v3) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v3) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v3) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v3) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v3) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v3) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v3) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v3) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v3) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v3) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v3) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v3) = -110;
        goto LABEL_2;
      case 0x13uLL:
        break;
      case 0x14uLL:
        v6 = -108;
        break;
      case 0x15uLL:
        v6 = -107;
        break;
      case 0x16uLL:
        v6 = -106;
        break;
      case 0x17uLL:
        v6 = -105;
        break;
      case 0x18uLL:
        v6 = -104;
        break;
      case 0x19uLL:
        v6 = -103;
        break;
      case 0x1AuLL:
        v6 = -102;
        break;
      case 0x1BuLL:
        v6 = -101;
        break;
      case 0x1CuLL:
        v6 = -100;
        break;
      case 0x1DuLL:
        v6 = -99;
        break;
      case 0x1EuLL:
        v6 = -98;
        break;
      case 0x1FuLL:
        v6 = -97;
        break;
      case 0x20uLL:
        v6 = -96;
        break;
      case 0x21uLL:
        v6 = -95;
        break;
      case 0x22uLL:
        v6 = -94;
        break;
      case 0x23uLL:
        v6 = -93;
        break;
      case 0x24uLL:
        v6 = -92;
        break;
      default:
        v6 = -91;
        break;
    }
  }

  else
  {
LABEL_2:
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

unint64_t PlaybackCode.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
    case 7:
    case 8:
    case 0x9C:
      result = 0xD000000000000012;
      break;
    case 2:
    case 0xD:
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6575517465536F6ELL;
      break;
    case 4:
      result = 0x6B63616279616C70;
      break;
    case 5:
    case 0x9A:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0x536E776F6E6B6E75;
      break;
    case 0xA:
    case 0x10:
    case 0x15:
    case 0x20:
    case 0x2C:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0x656D726F666C616DLL;
      break;
    case 0xC:
      result = 0x6146746165706572;
      break;
    case 0xE:
    case 0x14:
    case 0x99:
      result = 0xD000000000000015;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD00000000000001ELL;
      break;
    case 0x12:
      result = 0x646E756F46746F6ELL;
      break;
    case 0x13:
      result = 0x62694C7974706D65;
      break;
    case 0x16:
      result = 0x7079547466697773;
      break;
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0x19:
      result = 0xD000000000000011;
      break;
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 0x1B:
      result = 0x74654E736465656ELL;
      break;
    case 0x1C:
      result = 0x6D6F43736465656ELL;
      break;
    case 0x1D:
    case 0x9B:
    case 0x9D:
      result = 0xD000000000000014;
      break;
    case 0x1E:
      result = 0x6563697665446E6FLL;
      break;
    case 0x1F:
      result = 0x6E61706D6F436E6FLL;
      break;
    case 0x21:
      result = 0xD000000000000011;
      break;
    case 0x22:
    case 0x9E:
    case 0xA3:
      result = 0xD000000000000019;
      break;
    case 0x23:
      result = 0x73696D7265506F6ELL;
      break;
    case 0x24:
      result = 0x62694C64756F6C63;
      break;
    case 0x25:
      result = 0x726F7774654E6F6ELL;
      break;
    case 0x26:
      result = 0x756F46746F4E6469;
      break;
    case 0x27:
      result = 0x6F70707553746F6ELL;
      break;
    case 0x28:
      result = 0x656C6C65636E6163;
      break;
    case 0x29:
      result = 0x74754F64656D6974;
      break;
    case 0x2A:
    case 0x2E:
    case 0x2F:
      result = 0xD000000000000010;
      break;
    case 0x2B:
      result = 0x50676E6968746F6ELL;
      break;
    case 0x2D:
      result = 0xD000000000000011;
      break;
    case 0x30:
      result = 0xD000000000000027;
      break;
    case 0x31:
      result = 0xD000000000000011;
      break;
    case 0x32:
      result = 0xD00000000000001DLL;
      break;
    case 0x33:
      result = 0xD000000000000021;
      break;
    case 0x34:
      result = 0xD000000000000025;
      break;
    case 0x35:
      result = 0xD000000000000018;
      break;
    case 0x36:
      result = 0xD000000000000011;
      break;
    case 0x37:
      result = 0x3145476563;
      break;
    case 0x38:
      result = 0x3245476563;
      break;
    case 0x39:
      result = 0x3345476563;
      break;
    case 0x3A:
      result = 0x3445476563;
      break;
    case 0x3B:
      result = 0x3545476563;
      break;
    case 0x3C:
      result = 0x3645476563;
      break;
    case 0x3D:
      result = 0x3745476563;
      break;
    case 0x3E:
      result = 0x3845476563;
      break;
    case 0x3F:
      result = 0x3945476563;
      break;
    case 0x40:
      result = 0x303145476563;
      break;
    case 0x41:
      result = 0x313145476563;
      break;
    case 0x42:
      result = 0x323145476563;
      break;
    case 0x43:
      result = 0x333145476563;
      break;
    case 0x44:
      result = 0x343145476563;
      break;
    case 0x45:
      result = 0x353145476563;
      break;
    case 0x46:
      result = 0x363145476563;
      break;
    case 0x47:
      result = 0x373145476563;
      break;
    case 0x48:
      result = 0x383145476563;
      break;
    case 0x49:
      result = 0x393145476563;
      break;
    case 0x4A:
      result = 0x303245476563;
      break;
    case 0x4B:
      result = 0x313245476563;
      break;
    case 0x4C:
      result = 0x323245476563;
      break;
    case 0x4D:
      result = 0x333245476563;
      break;
    case 0x4E:
      result = 0x343245476563;
      break;
    case 0x4F:
      result = 0x353245476563;
      break;
    case 0x50:
      result = 0x363245476563;
      break;
    case 0x51:
      result = 0x373245476563;
      break;
    case 0x52:
      result = 0x383245476563;
      break;
    case 0x53:
      result = 0x393245476563;
      break;
    case 0x54:
      result = 0x303345476563;
      break;
    case 0x55:
      result = 0x313345476563;
      break;
    case 0x56:
      result = 0x323345476563;
      break;
    case 0x57:
      result = 0x333345476563;
      break;
    case 0x58:
      result = 0x343345476563;
      break;
    case 0x59:
      result = 0x353345476563;
      break;
    case 0x5A:
      result = 0x363345476563;
      break;
    case 0x5B:
      result = 0x373345476563;
      break;
    case 0x5C:
      result = 0x383345476563;
      break;
    case 0x5D:
      result = 0x393345476563;
      break;
    case 0x5E:
      result = 0x303445476563;
      break;
    case 0x5F:
      result = 0x313445476563;
      break;
    case 0x60:
      result = 0x323445476563;
      break;
    case 0x61:
      result = 0x333445476563;
      break;
    case 0x62:
      result = 0x343445476563;
      break;
    case 0x63:
      result = 0x353445476563;
      break;
    case 0x64:
      result = 0x363445476563;
      break;
    case 0x65:
      result = 0x373445476563;
      break;
    case 0x66:
      result = 0x383445476563;
      break;
    case 0x67:
      result = 0x393445476563;
      break;
    case 0x68:
      result = 0x303545476563;
      break;
    case 0x69:
      result = 0x313545476563;
      break;
    case 0x6A:
      result = 0x323545476563;
      break;
    case 0x6B:
      result = 0x333545476563;
      break;
    case 0x6C:
      result = 0x343545476563;
      break;
    case 0x6D:
      result = 0x353545476563;
      break;
    case 0x6E:
      result = 0x363545476563;
      break;
    case 0x6F:
      result = 0x373545476563;
      break;
    case 0x70:
      result = 0x383545476563;
      break;
    case 0x71:
      result = 0x393545476563;
      break;
    case 0x72:
      result = 0x303645476563;
      break;
    case 0x73:
      result = 0x313645476563;
      break;
    case 0x74:
      result = 0x323645476563;
      break;
    case 0x75:
      result = 0x333645476563;
      break;
    case 0x76:
      result = 0x343645476563;
      break;
    case 0x77:
      result = 0x353645476563;
      break;
    case 0x78:
      result = 0x363645476563;
      break;
    case 0x79:
      result = 0x373645476563;
      break;
    case 0x7A:
      result = 0x383645476563;
      break;
    case 0x7B:
      result = 0x393645476563;
      break;
    case 0x7C:
      result = 0x303745476563;
      break;
    case 0x7D:
      result = 0x313745476563;
      break;
    case 0x7E:
      result = 0x323745476563;
      break;
    case 0x7F:
      result = 0x333745476563;
      break;
    case 0x80:
      result = 0x343745476563;
      break;
    case 0x81:
      result = 0x353745476563;
      break;
    case 0x82:
      result = 0x363745476563;
      break;
    case 0x83:
      result = 0x373745476563;
      break;
    case 0x84:
      result = 0x383745476563;
      break;
    case 0x85:
      result = 0x393745476563;
      break;
    case 0x86:
      result = 0x303845476563;
      break;
    case 0x87:
      result = 0x313845476563;
      break;
    case 0x88:
      result = 0x323845476563;
      break;
    case 0x89:
      result = 0x333845476563;
      break;
    case 0x8A:
      result = 0x343845476563;
      break;
    case 0x8B:
      result = 0x353845476563;
      break;
    case 0x8C:
      result = 0x363845476563;
      break;
    case 0x8D:
      result = 0x373845476563;
      break;
    case 0x8E:
      result = 0x383845476563;
      break;
    case 0x8F:
      result = 0x393845476563;
      break;
    case 0x90:
      result = 0x303945476563;
      break;
    case 0x91:
      result = 0x313945476563;
      break;
    case 0x92:
      result = 0x323945476563;
      break;
    case 0x93:
      result = 0x333945476563;
      break;
    case 0x94:
      result = 0x343945476563;
      break;
    case 0x95:
      result = 0x353945476563;
      break;
    case 0x96:
      result = 0x363945476563;
      break;
    case 0x97:
      result = 0x373945476563;
      break;
    case 0x98:
      result = 0x383945476563;
      break;
    case 0x9F:
      result = 0xD000000000000022;
      break;
    case 0xA0:
      result = 0x6E49746F4E707061;
      break;
    case 0xA1:
      result = 0x4F5479616C506F6ELL;
      break;
    case 0xA2:
      result = 0xD00000000000001CLL;
      break;
    case 0xA4:
      result = 0x55656D6568635378;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26636A764()
{
  v0 = PlaybackCode.rawValue.getter();
  v2 = v1;
  if (v0 == PlaybackCode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2664E0D88();
  }

  return v5 & 1;
}

uint64_t sub_26636A800()
{
  sub_2664E0E68();
  PlaybackCode.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636A868(uint64_t a1)
{
  PlaybackCode.rawValue.getter();
  sub_2664E0368();
}

uint64_t sub_26636A8CC(uint64_t a1)
{
  sub_2664E0E68();
  PlaybackCode.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26636A93C@<X0>(unint64_t *a1@<X8>)
{
  result = PlaybackCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriAudioSupport::DomainCode_optional __swiftcall DomainCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 2;
  switch(rawValue)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v2 = 1;
LABEL_3:
      v3 = v2;
      goto LABEL_4;
    case 2:
LABEL_4:
      *v1 = v3;
      break;
    case 3:
      *v1 = 3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 5:
      *v1 = 5;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    default:
      *v1 = 20;
      break;
  }

  return rawValue;
}

uint64_t PlaybackCodeAndDescription.errorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PlaybackCodeAndDescription.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2664E0B28();

  strcpy(v6, "domainCode: ");
  v3 = sub_2664E0D48();
  MEMORY[0x2667833B0](v3);

  MEMORY[0x2667833B0](0xD000000000000010, 0x80000002664F5840);
  v4 = sub_2664E0D48();
  MEMORY[0x2667833B0](v4);

  MEMORY[0x2667833B0](0x44726F727265202CLL, 0xED0000203A637365);
  MEMORY[0x2667833B0](v1, v2);
  return v6[0];
}

uint64_t sub_26636AC38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26636AC6C()
{
  result = qword_280072D80;
  if (!qword_280072D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D80);
  }

  return result;
}

unint64_t sub_26636ACC4()
{
  result = qword_280072D88;
  if (!qword_280072D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x5C)
  {
    goto LABEL_17;
  }

  if (a2 + 164 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 164) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 164;
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

      return (*a1 | (v4 << 8)) - 164;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 164;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA5;
  v8 = v6 - 165;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 164 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 164) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x5C)
  {
    v4 = 0;
  }

  if (a2 > 0x5B)
  {
    v5 = ((a2 - 92) >> 8) + 1;
    *result = a2 - 92;
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
    *result = a2 - 92;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DomainCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DomainCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SiriAudioDomainExecutionLogger.__allocating_init(type:taskType:domainPerfContextEventSender:analyticsQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = swift_allocObject();
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_26636C8C0(v9, a2, a3, v15, a5, v10, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v17;
}

uint64_t SiriAudioDomainExecutionLogger.deinit()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1 || (*(v1 + 97) & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);

    v7 = sub_2664DFE18();
    v8 = sub_2664E06D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2664E0898();
      v13 = sub_2662A320C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_26629C000, v7, v8, "SiriAudioDomainExecutionLogger#deinit Error event wasn't logged successfully. Make sure that you called send(event:) for: %s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266784AD0](v10, -1, -1);
      MEMORY[0x266784AD0](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_26636BE0C();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  return v1;
}

uint64_t SiriAudioDomainExecutionLogger.__deallocating_deinit()
{
  SiriAudioDomainExecutionLogger.deinit();

  return swift_deallocClassInstance();
}

uint64_t SiriAudioDomainExecutionLogger.init(type:taskType:domainPerfContextEventSender:analyticsQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = a1;
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_26636C8C0(v10, a2, a3, v15, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v17;
}

void sub_26636B4BC()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v12 = *(v3 + 16);
  v12(v10, v11, v2);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v12;
    v16 = v2;
    v17 = v6;
    v18 = v1;
    v19 = v3;
    v20 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "SiriAudioDomainExecutionLogger#startDomainExecution...", v15, 2u);
    v21 = v20;
    v3 = v19;
    v1 = v18;
    v6 = v17;
    v2 = v16;
    v12 = v37;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v3 + 8);
  v22(v10, v2);
  v23 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (!v23)
  {
    v12(v6, v11, v2);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "SiriAudioDomainExecutionLogger#startDomainExecution Couldn't initialize FLOWSchemaFLOWDomainExecutionStarted", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v31 = v6;
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (!v25)
  {
    v32 = v38;
    v12(v38, v11, v2);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "SiriAudioDomainExecutionLogger#startDomainExecution Couldn't initialize start FLOWSchemaFLOWDomainExecutionContext", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    else
    {
    }

    v31 = v32;
LABEL_16:
    v22(v31, v2);
    return;
  }

  v26 = v25;
  [v24 setDomainExecutionType_];
  [v26 setStartedOrChanged_];
  [v26 setContextId_];
  v27 = sub_26636C2E8(v26, 0x74726174732ELL, 0xE600000000000000);

  if (v27)
  {
    *(v1 + 96) = 1;
  }
}

void sub_26636B8D0()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v46 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v49 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  v13 = *(v1 + 16);
  v13(v11, v12, v0);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06B8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48 = v0;
    v17 = v13;
    v18 = v4;
    v19 = v7;
    v20 = v1;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "SiriAudioDomainExecutionLogger#endDomainExecution...", v16, 2u);
    v22 = v21;
    v1 = v20;
    v7 = v19;
    v4 = v18;
    v13 = v17;
    v0 = v48;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v50 = *(v1 + 8);
  v50(v11, v0);
  v23 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
  if (!v23)
  {
    v13(v4, v12, v0);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "SiriAudioDomainExecutionLogger#endDomainExecution Couldn't initialize FLOWSchemaFLOWDomainExecutionEnded", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);

      v40 = v4;
      v41 = v38;
LABEL_18:
      v50(v40, v41);
      return;
    }

    v40 = v4;
LABEL_17:
    v41 = v0;
    goto LABEL_18;
  }

  v24 = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (!v25)
  {
    v13(v7, v12, v0);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v0;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "SiriAudioDomainExecutionLogger#endDomainExecution Couldn't initialize end FLOWSchemaFLOWDomainExecutionContext", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);

      v40 = v7;
      v41 = v44;
      goto LABEL_18;
    }

    v40 = v7;
    goto LABEL_17;
  }

  v26 = v25;
  [v25 setEnded_];
  v27 = v47;
  v28 = *(v47 + 48);
  [v26 setContextId_];
  v48 = v0;
  v13(v49, v12, v0);
  v29 = v27;

  v30 = sub_2664DFE18();
  v31 = sub_2664E06B8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v28;
    *v33 = v28;
    v34 = v28;
    _os_log_impl(&dword_26629C000, v30, v31, "SiriAudioDomainExecutionLogger#endDomainExecution Sending Success - End events with contextId: %@", v32, 0xCu);
    sub_2662E4324(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v50(v49, v48);
  v35 = sub_26636C2E8(v26, 1684956462, 0xE400000000000000);

  if (v35)
  {
    *(v29 + 97) = 1;
  }
}

void sub_26636BE0C()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D57538]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
    if (v13)
    {
      v14 = v13;
      [v13 setFailed_];
      v15 = *(v0 + 48);
      [v14 setContextId_];
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (*(v2 + 16))(v10, v16, v1);

      v17 = sub_2664DFE18();
      v18 = sub_2664E06B8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v32 = v1;
        v20 = v19;
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v15;
        *v21 = v15;
        v22 = v15;
        _os_log_impl(&dword_26629C000, v17, v18, "SiriAudioDomainExecutionLogger#errorAndLog Sending Success - Failed events with contextId: %@", v20, 0xCu);
        sub_2662E4324(v21);
        MEMORY[0x266784AD0](v21, -1, -1);
        v23 = v20;
        v1 = v32;
        MEMORY[0x266784AD0](v23, -1, -1);
      }

      (*(v2 + 8))(v10, v1);
      sub_26636C2E8(v14, 0x64656C6961662ELL, 0xE700000000000000);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (*(v2 + 16))(v8, v28, v1);
      v29 = sub_2664DFE18();
      v30 = sub_2664E06D8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26629C000, v29, v30, "SiriAudioDomainExecutionLogger#errorAndLog Couldn't initialize failed FLOWSchemaFLOWDomainExecutionContext", v31, 2u);
        MEMORY[0x266784AD0](v31, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v8, v1);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v5, v24, v1);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "SiriAudioDomainExecutionLogger#errorAndLog Couldn't initialize FLOWSchemaFLOWDomainExecutionFailed", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

BOOL sub_26636C2E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
  if (v18)
  {
    v57 = v15;
    v58 = v18;
    [v18 setFlowDomainExecutionContext_];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v55 = *(v9 + 16);
    v55(v17, v19, v8);

    v20 = sub_2664DFE18();
    v54 = v8;
    v21 = v20;
    v22 = sub_2664E06B8();
    v59 = v9;
    v23 = v22;

    v24 = os_log_type_enabled(v21, v23);
    v53 = a2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v52 = v19;
      v26 = v25;
      v27 = swift_slowAlloc();
      v28 = a2;
      v29 = v27;
      v60 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_2662A320C(v28, a3, &v60);
      *(v26 + 12) = 2080;
      v30 = sub_2664E0898();
      v31 = a3;
      v33 = sub_2662A320C(v30, v32, &v60);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_26629C000, v21, v23, "SiriAudioDomainExecutionLogger#send sending %s event with domainExecutionType: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v29, -1, -1);
      v34 = v26;
      v19 = v52;
      MEMORY[0x266784AD0](v34, -1, -1);

      v35 = v54;
      v56 = *(v59 + 8);
      v56(v17, v54);
    }

    else
    {

      v35 = v54;
      v56 = *(v59 + 8);
      v56(v17, v54);
      v31 = a3;
    }

    v41 = v4[10];
    v42 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v41);
    v40 = v58;
    (*(v42 + 8))(v4[3], v4[4], v58, v41, v42);
    v43 = v57;
    v55(v57, v19, v35);

    v44 = sub_2664DFE18();
    v45 = sub_2664E06B8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60 = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_2662A320C(v53, v31, &v60);
      *(v46 + 12) = 2080;
      v48 = sub_2664E0898();
      v50 = sub_2662A320C(v48, v49, &v60);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_26629C000, v44, v45, "SiriAudioDomainExecutionLogger#send sent %s event with domainExecutionType: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v56(v43, v35);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v36, v8);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "SiriAudioDomainExecutionLogger#sendSirikitEvents Couldn't initialize FLOWSchemaFLOWClientEvent", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v40 = 0;
  }

  return v40 != 0;
}

uint64_t sub_26636C8C0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a2;
  v15 = sub_2664DE4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = a7;
  v26[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a4, a7);
  *(a6 + 96) = 0;
  sub_2664DE498();
  v20 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v21 = sub_2664DE478();
  v22 = [v20 initWithNSUUID_];

  (*(v16 + 8))(v18, v15);
  *(a6 + 48) = v22;
  *(a6 + 40) = a1;
  *(a6 + 24) = v25;
  *(a6 + 32) = a3;
  *(a6 + 16) = a5;
  sub_2662A5550(v26, a6 + 56);
  v23 = a5;
  sub_26636B4BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return a6;
}

SiriAudioSupport::SiriAudioDeviceType_optional __swiftcall SiriAudioDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SiriAudioDeviceType.rawValue.getter()
{
  v1 = 0x656E6F685069;
  v2 = 0x646F50656D6F68;
  if (*v0 != 2)
  {
    v2 = 0x5654656C707061;
  }

  if (*v0)
  {
    v1 = 1684099177;
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

uint64_t sub_26636CBF4()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636CCAC(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_26636CD50(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_26636CE10(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E6F685069;
  v4 = 0x646F50656D6F68;
  if (*v1 != 2)
  {
    v4 = 0x5654656C707061;
  }

  if (*v1)
  {
    v3 = 1684099177;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t DeviceProviding.deviceType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 8))();
  if (result)
  {
    v7 = 2;
  }

  else
  {
    result = (*(a2 + 16))(a1, a2);
    if (result)
    {
      v7 = 3;
    }

    else
    {
      result = (*(a2 + 24))(a1, a2);
      if (result)
      {
        v7 = 1;
      }

      else
      {
        result = (*(a2 + 32))(a1, a2);
        if (result)
        {
          v7 = 0;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

unint64_t sub_26636CF54()
{
  result = qword_280072D90;
  if (!qword_280072D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAudioDeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAudioDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

SiriAudioSupport::NowPlayingInfoError_optional __swiftcall NowPlayingInfoError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t NowPlayingInfoError.rawValue.getter()
{
  if (*v0)
  {
    return 0x616C50776F4E6F6ELL;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_26636D21C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616C50776F4E6F6ELL;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEF707041676E6979;
  }

  if (*a2)
  {
    v5 = 0x616C50776F4E6F6ELL;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v6 = 0xEF707041676E6979;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2664E0D88();
  }

  return v8 & 1;
}

unint64_t sub_26636D2D4()
{
  result = qword_280072D98;
  if (!qword_280072D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D98);
  }

  return result;
}

uint64_t sub_26636D328()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636D3B8(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_26636D434(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636D4C0@<X0>(char *a2@<X8>)
{
  v3 = sub_2664E0CB8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26636D520(uint64_t *a1@<X8>)
{
  v2 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v2 = 0x616C50776F4E6F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF707041676E6979;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PodcastEpisodeEntity.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t PodcastEpisodeEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t PodcastEpisodeEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastEpisodeEntity(uint64_t a1)
{
  result = qword_280072E08;
  if (!qword_280072E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26636DB6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_26636DC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_26636DC88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastEpisodeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26636DCCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

Swift::Int __swiftcall ListPosition.toIndex()()
{
  v1 = *v0;
  if (v0[1])
  {
    result = -v1;
    if (!__OFSUB__(0, v1))
    {
      return result;
    }

    __break(1u);
  }

  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ListPosition.description.getter()
{
  if (*(v0 + 8))
  {
    v1 = 0x657372657665722ELL;
  }

  else
  {
    v1 = 0x6465726564726F2ELL;
  }

  v4 = v1;
  v2 = sub_2664E0D48();
  MEMORY[0x2667833B0](v2);

  MEMORY[0x2667833B0](41, 0xE100000000000000);
  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ListPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ListPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26636DF9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_2664E0978();
  v4 = v3;
  *(v0 + 56) = v1;
  v5 = sub_2662C4094();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 96) = v1;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000002664F5990;
  *(v0 + 136) = v1;
  *(v0 + 144) = v5;
  *(v0 + 112) = 0x656C7069746C756DLL;
  *(v0 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  qword_280072E18 = result;
  qword_280072E20 = v7;
  return result;
}

uint64_t sub_26636E148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_2664E0978();
  v4 = v3;
  *(v0 + 56) = v1;
  v5 = sub_2662C4094();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 96) = v1;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000002664F5970;
  *(v0 + 136) = v1;
  *(v0 + 144) = v5;
  *(v0 + 112) = 0x656C7069746C756DLL;
  *(v0 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  qword_280072E48 = result;
  qword_280072E50 = v7;
  return result;
}

uint64_t sub_26636E378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v10 = MEMORY[0x277D837D0];
  v11 = sub_2664E0978();
  v13 = v12;
  *(v9 + 56) = v10;
  v14 = sub_2662C4094();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *(v9 + 96) = v10;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;
  *(v9 + 136) = v10;
  *(v9 + 144) = v14;
  *(v9 + 112) = 0x656C7069746C756DLL;
  *(v9 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  *a4 = result;
  *a5 = v16;
  return result;
}

uint64_t sub_26636E4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_2664E0978();
  v4 = v3;
  *(v0 + 56) = v1;
  v5 = sub_2662C4094();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 96) = v1;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000002664F5930;
  *(v0 + 136) = v1;
  *(v0 + 144) = v5;
  *(v0 + 112) = 0x656C7069746C756DLL;
  *(v0 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  qword_280072E88 = result;
  qword_280072E90 = v7;
  return result;
}

uint64_t sub_26636E628(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v17[3] = type metadata accessor for MediaPlaybackProvider();
  v17[4] = &off_2877F3740;
  v17[0] = v9;
  sub_2662A5550(v17, v16);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
  MEMORY[0x28223BE20](v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_2664DD13C(a1, *v12, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

uint64_t sub_26636E828(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_2662FCF24(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2662FCF24((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_26636E9A0(unsigned int a1)
{
  v24 = a1;
  v2 = sub_2664DEA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v1 privatePlayMediaIntentData];
  if (v10 && (v11 = v10, v12 = [v10 privateMediaIntentData], v11, v12) && (v13 = objc_msgSend(v12, sel_speakerIDInfo), v12, v13) && (v14 = objc_msgSend(v13, sel_sharedUserID), v13, v14))
  {
    v15 = sub_2664E02C8();
  }

  else if (!static SiriEnvironmentWrapper.retrieve()() || (sub_2664DF4A8(), , sub_2664DEB48(), , v15 = sub_2664DEA18(), v17 = v16, (*(v3 + 8))(v5, v2), !v17))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v9, v19, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "PrivateMediaIntentDataProviding#sharedUserID and SiriEnvironment.UserIdentityProvider no sharedUserID", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  if (sub_26636ED04(v24))
  {
    return v15;
  }

  return 0;
}

BOOL sub_26636ED04(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v3 = sub_2664DEA98();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2664DEA78();
  v83 = *(v85 - 8);
  v5 = MEMORY[0x28223BE20](v85);
  v75 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v76 = &v75 - v11;
  MEMORY[0x28223BE20](v10);
  v84 = &v75 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v90 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  v24 = [v2 privatePlayMediaIntentData];
  if (v24 && (v25 = v24, v26 = [v24 privateMediaIntentData], v25, v26) && (v27 = objc_msgSend(v26, sel_speakerIDInfo), v26, v27))
  {
    v28 = [v27 speakerIDConfidence];
  }

  else
  {
    v28 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v30 = *(v14 + 16);
  v88 = v14 + 16;
  v89 = v29;
  v87 = v30;
  v30(v23, v29, v13);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();
  v33 = os_log_type_enabled(v31, v32);
  v82 = v19;
  v80 = v9;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = v13;
    v36 = swift_slowAlloc();
    v91 = v28;
    v92 = v36;
    *v34 = 136315138;
    type metadata accessor for INSpeakerIDConfidence(0);
    v37 = sub_2664E0318();
    v39 = sub_2662A320C(v37, v38, &v92);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_26629C000, v31, v32, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized speakerID confidence: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v40 = v36;
    v13 = v35;
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v34, -1, -1);

    v41 = *(v14 + 8);
    v41(v23, v35);
  }

  else
  {

    v41 = *(v14 + 8);
    v41(v23, v13);
  }

  v42 = *(&off_279BCC210 + v86);
  v43 = *(v42 + 16);
  v44 = 32;
  do
  {
    v45 = v43;
    if (v43-- == 0)
    {
      break;
    }

    v47 = *(v42 + v44);
    v44 += 8;
  }

  while (v47 != v28);

  v87(v90, v89, v13);
  v48 = sub_2664DFE18();
  v49 = sub_2664E06C8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 67109376;
    *(v50 + 4) = v45 != 0;
    *(v50 + 8) = 2048;
    *(v50 + 10) = v28;
    _os_log_impl(&dword_26629C000, v48, v49, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized %{BOOL}d for confidence from PrivateMediaIntentData: %ld", v50, 0x12u);
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  v41(v90, v13);
  if (v45)
  {
    return 1;
  }

  else if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4A8();

    v52 = v77;
    sub_2664DEB48();

    v53 = v76;
    sub_2664DEA88();
    (*(v78 + 8))(v52, v79);
    v55 = v83;
    v54 = v84;
    v56 = v85;
    (*(v83 + 32))(v84, v53, v85);
    v87(v82, v89, v13);
    v79 = v13;
    v57 = *(v55 + 16);
    v58 = v80;
    v57(v80, v54, v56);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06C8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v92 = v62;
      *v61 = 136315138;
      LODWORD(v78) = v60;
      v57(v75, v58, v85);
      v63 = sub_2664E0318();
      v65 = v64;
      v90 = *(v83 + 8);
      (v90)(v58, v85);
      v66 = sub_2662A320C(v63, v65, &v92);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_26629C000, v59, v78, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized userClassification confidence: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      v67 = v85;
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      v68 = v79;
      v41(v82, v79);
    }

    else
    {

      v90 = *(v55 + 8);
      (v90)(v58, v56);
      v68 = v79;
      v41(v82, v79);
      v67 = v56;
    }

    LOBYTE(v92) = v86;
    v69 = sub_2664B74CC();
    v51 = sub_266457A34(v84, v69);

    v70 = v81;
    v87(v81, v89, v68);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06C8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109376;
      *(v73 + 4) = v51;
      *(v73 + 8) = 2048;
      *(v73 + 10) = v28;
      _os_log_impl(&dword_26629C000, v71, v72, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized %{BOOL}d for confidence from SiriEnvironment.UserIdentityProvider: %ld", v73, 0x12u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v41(v70, v68);
    (v90)(v84, v67);
  }

  else
  {
    return 0;
  }

  return v51;
}

uint64_t sub_26636F60C()
{
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v0 = qword_280F8F808;
  qword_280F91D38 = type metadata accessor for MultiUserConnectionProvider();
  unk_280F91D40 = &protocol witness table for MultiUserConnectionProvider;
  qword_280F91D20 = v0;
}

uint64_t sub_26636F694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB8, &unk_2664E8B88);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385DCC(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000002664F5A10;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000013, 0x80000002664F5A10, 1, v3);
  *(v0 + 24) = result;
  off_280F912E0 = v0;
  return result;
}

uint64_t sub_26636F7A8()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664F5A90, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280072E98 = v8;
  return result;
}

uint64_t sub_26636F940(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v52 = a2;
  v49 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EA0, &qword_2664E8B70);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v43 - v9;
  v10 = sub_2664DFE38();
  v48 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v46 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EA8, &qword_2664E8B78);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_2664DF478();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DF348();
  MEMORY[0x28223BE20](v19);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v21;
  if (a3 == 0x65726168536C696ELL && a4 == v20 || (v24 = sub_2664E0D88(), v21 = v53, (v24 & 1) != 0))
  {
    (*(v21 + 104))(v23, *MEMORY[0x277D5FF40], v19);
  }

  else
  {
    *v23 = a3;
    v23[1] = a4;
    (*(v21 + 104))(v23, *MEMORY[0x277D5FF38], v19);
  }

  sub_2664DF468();
  v50 = v19;
  (*(v17 + 56))(v15, 0, 1, v16);
  (*(v17 + 32))(v47, v15, v16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = v10;
  v26 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v27 = v48;
  v28 = v46;
  (*(v48 + 16))(v46, v26, v10);
  v29 = v45;

  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54 = v43;
    *v32 = 136315138;
    if (v29)
    {
      v33 = v44;
    }

    else
    {
      v33 = 0x3E6C696E3CLL;
    }

    if (!v29)
    {
      v29 = 0xE500000000000000;
    }

    v34 = sub_2662A320C(v33, v29, &v54);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_26629C000, v30, v31, "SiriRemembersEntityProvider#storeForSharedUserId success initializing store for user: %s", v32, 0xCu);
    v35 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);

    (*(v27 + 8))(v46, v25);
  }

  else
  {

    (*(v27 + 8))(v28, v25);
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB0, &qword_2664E8B80);
  v37 = *(v36 + 48);
  v38 = v51;
  v39 = v47;
  (*(v17 + 16))(v51, v47, v16);
  v40 = v53;
  v41 = v50;
  (*(v53 + 16))(v38 + v37, v23, v50);
  (*(*(v36 - 8) + 56))(v38, 0, 1, v36);
  v49(v38);
  sub_2662A9238(v38, &qword_280072EA0, &qword_2664E8B70);
  (*(v17 + 8))(v39, v16);
  return (*(v40 + 8))(v23, v41);
}

uint64_t sub_2663701A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v34 = a1;
  v4 = sub_2664E0038();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E00B8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "SiriRemembersEntityProvider#warmup", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  if (qword_280071B40 != -1)
  {
    swift_once();
  }

  v32[1] = qword_280072E98;
  sub_26634CBCC(v3, v46);
  v19 = swift_allocObject();
  v20 = v46[1];
  *(v19 + 16) = v46[0];
  *(v19 + 32) = v20;
  *(v19 + 48) = v47;
  *(v19 + 56) = v18;
  v44 = sub_2663746EC;
  v45 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v32[5] = &v42;
  v42 = sub_2662A3F90;
  v43 = &block_descriptor_16;
  v21 = _Block_copy(&aBlock);
  v33 = v18;
  v22 = v9;
  sub_2664E0068();
  v39 = MEMORY[0x277D84F90];
  v32[4] = sub_2662A6120();
  v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v23 = v35;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v22, v23, v21);
  _Block_release(v21);
  v24 = *(v5 + 8);
  v32[2] = v5 + 8;
  v24(v23, v4);
  v25 = v38;
  v26 = *(v37 + 8);
  v26(v22, v38);

  v27 = swift_allocObject();
  v28 = v36;
  *(v27 + 16) = v34;
  *(v27 + 24) = v28;
  v44 = sub_266374738;
  v45 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_2662A3F90;
  v43 = &block_descriptor_19;
  v29 = _Block_copy(&aBlock);

  sub_2664E0068();
  *&v46[0] = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v30 = v33;
  sub_2664E0758();
  _Block_release(v29);

  v24(v23, v4);
  v26(v22, v25);
}

uint64_t sub_266370788(char *a1, NSObject *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    if (v9 >= v8 >> 1)
    {
      a1 = sub_2663846F4((v8 > 1), v9 + 1, 1, a1);
    }

    *(a1 + 2) = v9 + 1;
    v10 = &a1[16 * v9];
    *(v10 + 4) = 0x65726168536C696ELL;
    *(v10 + 5) = 0xEF64497265735564;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v11, v4);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06E8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v4;
      v32 = v15;
      v16 = v15;
      *v14 = 136315138;

      v18 = MEMORY[0x2667834D0](v17, MEMORY[0x277D837D0]);
      v20 = v19;

      v21 = sub_2662A320C(v18, v20, &v32);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_26629C000, v12, v13, "SiriRemembersEntityProvider#warmup warming up for users: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266784AD0](v16, -1, -1);
      MEMORY[0x266784AD0](v14, -1, -1);

      v22 = *(v5 + 8);
      v5 += 8;
      v22(v7, v31);
    }

    else
    {

      v23 = *(v5 + 8);
      v5 += 8;
      v23(v7, v4);
    }

    v24 = *(a1 + 2);

    if (!v24)
    {
      break;
    }

    v4 = 0;
    v25 = (a1 + 40);
    v7 = &unk_2877EB4C8;
    while (v4 < *(a1 + 2))
    {
      ++v4;
      v26 = *(v25 - 1);
      v5 = *v25;

      dispatch_group_enter(a2);
      v27 = swift_allocObject();
      *(v27 + 16) = a2;
      v28 = a2;
      sub_266373EC4(v26, v5, sub_266374740, v27);

      v25 += 2;
      if (v24 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
  }

LABEL_13:

  dispatch_group_leave(a2);
}

uint64_t sub_266370B18(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "SiriRemembersEntityProvider#warmup complete", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return a1(1);
}

uint64_t sub_266370CDC(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2664DFE08();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [a1 mediaSearch];
  v14 = sub_266373224(v13);
  v16 = v15;

  if (v16)
  {
    v17 = sub_26636E9A0(0);
    v19 = v18;
    v20 = sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v21 = qword_280F91D48;
    sub_2664DFDF8();
    sub_2664DFDC8(v20, &dword_26629C000, v21, "initalizeIPStoreEntity", 22, 2, v12, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (*(v10 + 8))(v12, v9);
    v22 = swift_allocObject();
    *(v22 + 16) = v30;
    *(v22 + 24) = v31;
    *(v22 + 32) = v14;
    *(v22 + 40) = v16;
    *(v22 + 48) = v29 & 1;

    sub_266373EC4(v17, v19, sub_266373EB4, v22);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v8, v23, v5);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "SiriRemembersEntityProvider#findEntitiesSRView no query string, returning no matches", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_266385DE0(MEMORY[0x277D84F90]);
    v30();
  }
}

uint64_t sub_26637109C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  *&v195 = a6;
  v179 = a5;
  v176 = a4;
  v186 = a3;
  v187 = a2;
  v180 = a1;
  v173 = sub_2664DF3E8();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_2664DF458();
  v174 = *(v190 - 8);
  v7 = MEMORY[0x28223BE20](v190);
  v170 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v178 = &v151 - v10;
  MEMORY[0x28223BE20](v9);
  v189 = &v151 - v11;
  v185 = sub_2664DF328();
  v196 = *(v185 - 8);
  v12 = MEMORY[0x28223BE20](v185);
  v168 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v151 - v15;
  MEMORY[0x28223BE20](v14);
  v188 = &v151 - v16;
  v184 = sub_2664DF488();
  v183 = *(v184 - 8);
  v17 = MEMORY[0x28223BE20](v184);
  v161 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v167 = &v151 - v20;
  MEMORY[0x28223BE20](v19);
  v192 = &v151 - v21;
  v194 = sub_2664DFE08();
  v197 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_2664DF348();
  v166 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v191 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2664DF478();
  v24 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v26 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2664DFE38();
  v198 = *(v27 - 8);
  v199 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v160 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v159 = &v151 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v163 = &v151 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v162 = &v151 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v177 = &v151 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v151 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EA0, &qword_2664E8B70);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v151 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB0, &qword_2664E8B80);
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v151 - v48;
  sub_2662A7224(v180, v42, &qword_280072EA0, &qword_2664E8B70);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_2662A9238(v42, &qword_280072EA0, &qword_2664E8B70);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = v199;
    v51 = __swift_project_value_buffer(v199, qword_280F914F0);
    swift_beginAccess();
    v52 = v198;
    (*(v198 + 16))(v39, v51, v50);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "SiriRemembersEntityProvider#findEntitiesSRView Failed to get results", v55, 2u);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    (*(v52 + 8))(v39, v50);
    sub_266385DE0(MEMORY[0x277D84F90]);
    v187();
  }

  else
  {
    sub_266374288(v42, v49);
    sub_2662A7224(v49, v47, &qword_280072EB0, &qword_2664E8B80);
    v57 = *(v43 + 48);
    v58 = *(v24 + 32);
    v175 = v26;
    v59 = v26;
    v60 = v181;
    v58(v59, v47, v181);
    v61 = v166;
    v62 = *(v166 + 8);
    v63 = &v47[v57];
    v64 = v182;
    v156 = v166 + 8;
    v155 = v62;
    v62(v63, v182);
    v157 = v49;
    sub_2662A7224(v49, v47, &qword_280072EB0, &qword_2664E8B80);
    (*(v61 + 32))(v191, &v47[*(v43 + 48)], v64);
    v154 = *(v24 + 8);
    v154(v47, v60);
    sub_2664E0838();
    v65 = v24 + 8;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v66 = qword_280F91D48;
    v67 = v193;
    sub_2664DFDF8();
    v153 = v66;
    sub_2664DFDD8();
    v68 = *(v197 + 8);
    v197 += 8;
    v152 = v68;
    v68(v67, v194);
    v69 = v192;
    v70 = v179;
    *v192 = v176;
    *(v69 + 1) = v70;
    v71 = v183;
    v72 = v184;
    (*(v183 + 104))(v69, *MEMORY[0x277D5FFF8], v184);
    v73 = qword_280F914E8;

    if (v73 != -1)
    {
      swift_once();
    }

    v158 = v65;
    LODWORD(v180) = v195 ^ 1;
    v74 = v199;
    v75 = __swift_project_value_buffer(v199, qword_280F914F0);
    swift_beginAccess();
    v76 = *(v198 + 16);
    v77 = v177;
    v166 = v75;
    v165 = v198 + 16;
    v164 = v76;
    v76(v177, v75, v74);
    v78 = *(v71 + 16);
    v79 = v167;
    v78(v167, v69, v72);
    v80 = sub_2664DFE18();
    v81 = sub_2664E06C8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v201 = v151;
      *v82 = 136315394;
      v78(v161, v79, v72);
      v83 = sub_2664E0318();
      v85 = v84;
      v161 = *(v71 + 8);
      (v161)(v79, v72);
      v86 = sub_2662A320C(v83, v85, &v201);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2080;
      v200 = v195 & 1;
      v87 = sub_2664E0318();
      v89 = sub_2662A320C(v87, v88, &v201);

      *(v82 + 14) = v89;
      _os_log_impl(&dword_26629C000, v80, v81, "SiriRemembersEntityProvider#findEntitiesSRView entity filter %s for srDataSource %s", v82, 0x16u);
      v90 = v151;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v90, -1, -1);
      MEMORY[0x266784AD0](v82, -1, -1);

      v167 = *(v198 + 8);
      (v167)(v177, v74);
    }

    else
    {

      v161 = *(v71 + 8);
      (v161)(v79, v72);
      v167 = *(v198 + 8);
      (v167)(v77, v74);
    }

    v91 = v189;
    v92 = v190;
    v93 = v168;
    sub_2664DF318();
    v94 = v169;
    sub_2664DF308();
    v95 = v196 + 8;
    v96 = *(v196 + 8);
    v97 = v185;
    v96(v93, v185);
    sub_2664DF2F8();
    v196 = v95;
    v169 = v96;
    v96(v94, v97);
    v98 = v170;
    sub_2664DF448();
    v99 = v178;
    sub_2664DF418();
    v100 = v174;
    v101 = v174 + 8;
    v102 = *(v174 + 8);
    v102(v98, v92);
    sub_2664DF438();
    v180 = v101;
    v177 = v102;
    v102(v99, v92);
    v103 = v193;
    v104 = v195;
    v105 = v173;
    if (v195)
    {
      v106 = v172;
      v107 = v171;
      (*(v172 + 104))(v171, *MEMORY[0x277D5FFA0], v173);
    }

    else
    {
      v107 = v171;
      sub_2664DF338();
      v106 = v172;
    }

    sub_2664DF428();
    (*(v106 + 8))(v107, v105);
    (v177)(v91, v92);
    v108 = *(v100 + 32);
    v108(v91, v99, v92);
    v109 = v153;
    if (qword_280F91CD8 != 1)
    {
      v110 = v162;
      v164(v162, v166, v199);
      v111 = sub_2664DFE18();
      v112 = sub_2664E06E8();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_26629C000, v111, v112, "SiriRemembersEntityProvider#findEntitiesSRView excluding direct writes for non-siri caller", v113, 2u);
        v114 = v113;
        v104 = v195;
        MEMORY[0x266784AD0](v114, -1, -1);
      }

      (v167)(v110, v199);
      v115 = v178;
      sub_2664DF408();
      (v177)(v91, v92);
      v108(v91, v115, v92);
    }

    v116 = sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v117 = swift_allocObject();
    v195 = xmmword_2664E36F0;
    v118 = MEMORY[0x277D83B88];
    *(v117 + 16) = xmmword_2664E36F0;
    v119 = MEMORY[0x277D83C10];
    *(v117 + 56) = v118;
    *(v117 + 64) = v119;
    *(v117 + 32) = v104 & 1;
    sub_2664DFDF8();
    sub_2664DFDC8(v116, &dword_26629C000, v109, "fetchDataSRView", 15, 2, v103, "srDataSource=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 71, 2, v117);

    v120 = v194;
    v121 = v152;
    v152(v103, v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EC0, &qword_2664E8B98);
    v122 = sub_2664DF3D8();
    v123 = *(v122 - 8);
    v124 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = v195;
    v126 = v125 + v124;
    v127 = v189;
    (*(v123 + 104))(v126, *MEMORY[0x277D5FF90], v122);
    v128 = sub_2664DF3F8();

    sub_2664E0838();
    sub_2664DFDF8();
    sub_2664DFDD8();
    v121(v103, v120);
    v129 = v159;
    v164(v159, v166, v199);

    v130 = sub_2664DFE18();
    v131 = sub_2664E06E8();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 134349056;
      *(v132 + 4) = *(v128 + 16);

      _os_log_impl(&dword_26629C000, v130, v131, "SiriRemembersEntityProvider#findEntitiesSRView Found %{public}ld matching media item entities", v132, 0xCu);
      MEMORY[0x266784AD0](v132, -1, -1);
    }

    else
    {
    }

    v133 = v190;
    v134 = v167;
    v135 = v188;
    v136 = v129;
    v137 = v199;
    v198 += 8;
    (v167)(v136, v199);
    v138 = v160;
    v164(v160, v166, v137);

    v139 = sub_2664DFE18();
    v140 = sub_2664E06E8();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v201 = v142;
      *v141 = 136315394;
      sub_2664DF398();
      v143 = sub_2664E01D8();
      v145 = sub_2662A320C(v143, v144, &v201);
      v167 = v134;
      v146 = v145;
      v135 = v188;
      v133 = v190;

      *(v141 + 4) = v146;
      v147 = v185;
      *(v141 + 12) = 2080;
      *(v141 + 14) = sub_2662A320C(v176, v179, &v201);
      _os_log_impl(&dword_26629C000, v139, v140, "SiriRemembersEntityProvider#findEntitiesSRView results : %s for query: %s", v141, 0x16u);
      swift_arrayDestroy();
      v148 = v142;
      v127 = v189;
      MEMORY[0x266784AD0](v148, -1, -1);
      MEMORY[0x266784AD0](v141, -1, -1);

      (v167)(v138, v137);
      v149 = v184;
    }

    else
    {

      (v134)(v138, v137);
      v149 = v184;
      v147 = v185;
    }

    v150 = sub_26631750C(v128);

    (v187)(v150);

    (v177)(v127, v133);
    (v169)(v135, v147);
    (v161)(v192, v149);
    v155(v191, v182);
    v154(v175, v181);
    return sub_2662A9238(v157, &qword_280072EB0, &qword_2664E8B80);
  }
}

void *sub_2663728EC@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_26637290C(uint64_t result, char a2)
{
  if (result)
  {
    v2 = 0;
    v3 = *(result + 16);
    v4 = result + 40;
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
LABEL_3:
    v7 = (v4 + 16 * v2);
    while (v3 != v2)
    {
      if (v2 >= v3)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_27;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      v11 = HIBYTE(*v7) & 0xF;
      if ((*v7 & 0x2000000000000000) == 0)
      {
        v11 = v10 & 0xFFFFFFFFFFFFLL;
      }

      ++v2;
      v7 += 2;
      if (v11)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2662FCF24(0, v6[2] + 1, 1);
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_2662FCF24((v12 > 1), v13 + 1, 1);
        }

        v6[2] = v13 + 1;
        v14 = &v6[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v2 = v8;
        goto LABEL_3;
      }
    }

    v15 = v6[2];
    if (v15)
    {
      sub_2662FCF24(0, v15, 0);
      v16 = v5;
      v17 = v6 + 5;
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        MEMORY[0x2667833B0](v18, v19);
        MEMORY[0x2667833B0](34, 0xE100000000000000);

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2662FCF24((v20 > 1), v21 + 1, 1);
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + 16 * v21;
        *(v22 + 32) = 34;
        *(v22 + 40) = 0xE100000000000000;
        v17 += 2;
        --v15;
      }

      while (v15);
    }

    MEMORY[0x2667833B0](32, 0xE100000000000000);
    sub_2664E0C28();
    MEMORY[0x2667833B0](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600, MEMORY[0x277D83958]);
    v23 = sub_2664E0288();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      return v23;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_266372C18(uint64_t a1)
{
  v4 = sub_2664DFE38();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 4;
LABEL_2:
  if (v6 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v6;
  }

  do
  {
    if (v6 == v9)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
      goto LABEL_55;
    }

    v10 = qword_2877E2EA0[v6++ + 4];
    v11 = *(v10 + 16);
    v12 = 32;
    while (v11)
    {
      v13 = *(v10 + v12);
      v12 += 8;
      --v11;
      if (v13 == a1)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD0DC(0, *(v7 + 16) + 1, 1);
          v7 = v61;
        }

        v1 = *(v7 + 16);
        v15 = *(v7 + 24);
        v16 = v1 + 1;
        if (v1 >= v15 >> 1)
        {
          sub_2662FD0DC((v15 > 1), v1 + 1, 1);
          v7 = v61;
        }

        *(v7 + 16) = v16;
        *(v7 + 8 * v1 + 32) = v10;
        if (v6 == 4)
        {
LABEL_19:
          v17 = 0;
          v18 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v17 >= *(v7 + 16))
            {
              goto LABEL_60;
            }

            v19 = *(v7 + 8 * v17 + 32);
            v8 = *(v19 + 16);
            v1 = *(v18 + 2);
            v2 = v1 + v8;
            if (__OFADD__(v1, v8))
            {
              goto LABEL_61;
            }

            v20 = swift_isUniquelyReferenced_nonNull_native();
            if (v20 && v2 <= *(v18 + 3) >> 1)
            {
              if (!*(v19 + 16))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v1 <= v2)
              {
                v21 = v1 + v8;
              }

              else
              {
                v21 = v1;
              }

              v18 = sub_266384BD0(v20, v21, 1, v18);
              if (!*(v19 + 16))
              {
LABEL_20:

                if (v8)
                {
                  goto LABEL_62;
                }

                goto LABEL_21;
              }
            }

            v22 = *(v18 + 2);
            if ((*(v18 + 3) >> 1) - v22 < v8)
            {
              goto LABEL_63;
            }

            memcpy(&v18[8 * v22 + 32], (v19 + 32), 8 * v8);

            if (v8)
            {
              v23 = *(v18 + 2);
              v24 = __OFADD__(v23, v8);
              v25 = v23 + v8;
              if (v24)
              {
                goto LABEL_64;
              }

              *(v18 + 2) = v25;
            }

LABEL_21:
            if (v16 == ++v17)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_2;
      }
    }
  }

  while (v6 != 4);
  v16 = *(v7 + 16);
  if (v16)
  {
    goto LABEL_19;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_37:

  v26 = *(v18 + 2);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = v18 + 32;
    v29 = MEMORY[0x277D84F90];
    do
    {
      v28 += 8;
      v31 = INMediaItemTypeGetName();
      if (v31)
      {
        v32 = v31;
        v33 = sub_2664E02C8();
        v35 = v34;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2663846F4(0, *(v29 + 2) + 1, 1, v29);
        }

        v37 = *(v29 + 2);
        v36 = *(v29 + 3);
        if (v37 >= v36 >> 1)
        {
          v29 = sub_2663846F4((v36 > 1), v37 + 1, 1, v29);
        }

        *(v29 + 2) = v37 + 1;
        v30 = &v29[16 * v37];
        *(v30 + 4) = v33;
        *(v30 + 5) = v35;
      }

      --v26;
    }

    while (v26);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v38 = *(v29 + 2);
  if (v38)
  {
    v63 = v27;
    sub_2662FCF24(0, v38, 0);
    v7 = v63;
    v39 = (v29 + 40);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;
      v61 = 0x707974616964656DLL;
      v62 = 0xEA00000000003D65;

      MEMORY[0x2667833B0](v40, v41);

      v43 = v61;
      v42 = v62;
      v63 = v7;
      v45 = *(v7 + 16);
      v44 = *(v7 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2662FCF24((v44 > 1), v45 + 1, 1);
        v7 = v63;
      }

      *(v7 + 16) = v45 + 1;
      v46 = v7 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      v39 += 2;
      --v38;
    }

    while (v38);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v2 = v59;
  v1 = v60;
  v8 = v58;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_65;
  }

LABEL_55:
  v47 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v8, v47, v1);

  v48 = sub_2664DFE18();
  v49 = sub_2664E06C8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v63 = v51;
    *v50 = 136315394;
    v52 = MEMORY[0x2667834D0](v7, MEMORY[0x277D837D0]);
    v54 = sub_2662A320C(v52, v53, &v63);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2048;
    *(v50 + 14) = a1;
    _os_log_impl(&dword_26629C000, v48, v49, "SiriRemembersEntityProvider#typeQuery terms: %s for type: %ld", v50, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);

    (*(v2 + 8))(v8, v60);
  }

  else
  {

    (*(v2 + 8))(v8, v1);
  }

  v55 = sub_26637290C(v7, 1);

  return v55;
}

uint64_t sub_266373224(char *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v125 = &v125 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v129 = &v125 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v130 = &v125 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v125 - v13);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v15 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v16 = *(v3 + 2);
    v133 = v3 + 16;
    v134 = v15;
    v132 = v16;
    v16(v14, v15, v2);
    v17 = a1;
    v18 = sub_2664DFE18();
    v19 = sub_2664E06C8();

    v20 = os_log_type_enabled(v18, v19);
    v135 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v136 = a1;
      v137 = v128;
      *v21 = 136315138;
      v22 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EC8, qword_2664E8BA0);
      v23 = sub_2664E0318();
      v25 = v3;
      v26 = v2;
      v27 = sub_2662A320C(v23, v24, &v137);

      *(v21 + 4) = v27;
      v2 = v26;
      v3 = v25;
      _os_log_impl(&dword_26629C000, v18, v19, "SiriRemembersEntityProvider#findEntities building query for search: %s...", v21, 0xCu);
      v28 = v128;
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v21, -1, -1);

      v29 = v25;
    }

    else
    {

      v29 = v3;
    }

    v30 = *(v29 + 1);
    (v30)(v14, v2);
    if (!a1)
    {
      v132(v6, v134, v2);
      v40 = sub_2664DFE18();
      v41 = sub_2664E06E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v2;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26629C000, v40, v41, "SiriRemembersEntityProvider#findEntities nil MediaSearch returning implicit music types search", v43, 2u);
        v44 = v43;
        v2 = v42;
        MEMORY[0x266784AD0](v44, -1, -1);
      }

      (v30)(v6, v2);
      return sub_266372C18(18);
    }

    v131 = v2;
    v31 = v135;
    v32 = [v31 mediaName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2664E02C8();
      v36 = v35;

      a1 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
      v38 = *(a1 + 2);
      v37 = *(a1 + 3);
      if (v38 >= v37 >> 1)
      {
        a1 = sub_2663846F4((v37 > 1), v38 + 1, 1, a1);
      }

      *(a1 + 2) = v38 + 1;
      v39 = &a1[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

    v46 = [v31 artistName];
    if (v46)
    {
      v47 = v46;
      v48 = sub_2664E02C8();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
      }

      v52 = *(a1 + 2);
      v51 = *(a1 + 3);
      if (v52 >= v51 >> 1)
      {
        a1 = sub_2663846F4((v51 > 1), v52 + 1, 1, a1);
      }

      *(a1 + 2) = v52 + 1;
      v53 = &a1[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
    }

    v54 = [v31 albumName];
    if (v54)
    {
      v55 = v54;
      v56 = sub_2664E02C8();
      v58 = v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
      }

      v60 = *(a1 + 2);
      v59 = *(a1 + 3);
      if (v60 >= v59 >> 1)
      {
        a1 = sub_2663846F4((v59 > 1), v60 + 1, 1, a1);
      }

      *(a1 + 2) = v60 + 1;
      v61 = &a1[16 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
    }

    v135 = v31;
    v62 = sub_26637290C(a1, 1);
    if (v63)
    {
      v64 = v62;
      v65 = v63;

      v66 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_2663846F4((v67 > 1), v68 + 1, 1, v66);
      }

      *(v66 + 2) = v68 + 1;
      v69 = &v66[16 * v68];
      *(v69 + 4) = v64;
      *(v69 + 5) = v65;
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    v70 = [v135 genreNames];
    v128 = v30;
    if (v70)
    {
      v71 = v70;
      v72 = sub_2664E04A8();
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }

    v73 = [v135 moodNames];
    v74 = MEMORY[0x277D84F90];
    if (v73)
    {
      v75 = v73;
      v76 = sub_2664E04A8();
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
    }

    v137 = v72;
    sub_2662F9CB0(v76);
    v77 = sub_26637290C(v137, 1);
    v14 = v78;

    if (v14)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_2663846F4(0, *(v66 + 2) + 1, 1, v66);
      }

      v80 = *(v66 + 2);
      v79 = *(v66 + 3);
      if (v80 >= v79 >> 1)
      {
        v66 = sub_2663846F4((v79 > 1), v80 + 1, 1, v66);
      }

      *(v66 + 2) = v80 + 1;
      v81 = &v66[16 * v80];
      *(v81 + 4) = v77;
      *(v81 + 5) = v14;
    }

    v127 = a1;
    v2 = *(v66 + 2);
    if (!v2)
    {
      break;
    }

    v82 = 0;
    v83 = v66 + 40;
    while (v82 < *(v66 + 2))
    {
      v84 = *(v83 - 1);
      v14 = *v83;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_2663846F4(0, *(v74 + 2) + 1, 1, v74);
      }

      v6 = *(v74 + 2);
      v85 = *(v74 + 3);
      a1 = (v6 + 1);
      if (v6 >= v85 >> 1)
      {
        v74 = sub_2663846F4((v85 > 1), v6 + 1, 1, v74);
      }

      ++v82;
      *(v74 + 2) = a1;
      v86 = &v74[16 * v6];
      *(v86 + 4) = v84;
      *(v86 + 5) = v14;
      v83 += 2;
      if (v2 == v82)
      {
        goto LABEL_53;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

  a1 = *(v74 + 2);
LABEL_53:
  v2 = 0;
  v87 = v74 + 40;
  v14 = MEMORY[0x277D84F90];
LABEL_54:
  v88 = &v87[16 * v2];
  while (a1 != v2)
  {
    if (v2 >= *(v74 + 2))
    {
      __break(1u);
      goto LABEL_80;
    }

    ++v2;
    v90 = *(v88 - 1);
    v89 = *v88;
    v88 += 16;
    v91 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v91 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v14;
      v126 = v87;
      v6 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FCF24(0, v14[2] + 1, 1);
        v14 = v137;
      }

      v94 = v14[2];
      v93 = v14[3];
      if (v94 >= v93 >> 1)
      {
        sub_2662FCF24((v93 > 1), v94 + 1, 1);
        v14 = v137;
      }

      v14[2] = v94 + 1;
      v95 = &v14[2 * v94];
      v95[4] = v90;
      v95[5] = v89;
      v3 = v6;
      v87 = v126;
      goto LABEL_54;
    }
  }

  if (v14[2])
  {
    v45 = v14[4];
    v96 = v14[5];

    v97 = v130;
    v98 = v131;
    v132(v130, v134, v131);

    v99 = sub_2664DFE18();
    v100 = sub_2664E06C8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = v97;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v137 = v103;
      *v102 = 136315138;
      v104 = sub_2662A320C(v45, v96, &v137);

      *(v102 + 4) = v104;
      _os_log_impl(&dword_26629C000, v99, v100, "SiriRemembersEntityProvider#findEntities EntitySearch query for term: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x266784AD0](v103, -1, -1);
      MEMORY[0x266784AD0](v102, -1, -1);

      v105 = v101;
      v106 = v131;
    }

    else
    {

      v105 = v97;
      v106 = v98;
    }

    (v128)(v105, v106);
  }

  else
  {

    v107 = v135;
    v108 = [v135 mediaType];
    v109 = v131;
    if (v108)
    {
      v132(v129, v134, v131);
      v110 = v107;
      v111 = sub_2664DFE18();
      v112 = sub_2664E06E8();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v128;
      if (v113)
      {
        v115 = swift_slowAlloc();
        *v115 = 134349056;
        *(v115 + 4) = [v110 mediaType];

        _os_log_impl(&dword_26629C000, v111, v112, "SiriRemembersEntityProvider#findEntities no primary term, but we do have a type: %{public}ld, creating family-type query", v115, 0xCu);
        v116 = v115;
        v109 = v131;
        MEMORY[0x266784AD0](v116, -1, -1);
      }

      else
      {

        v111 = v110;
      }

      v114(v129, v109);
      v45 = sub_266372C18([v110 mediaType]);
    }

    else
    {
      v117 = v125;
      v132(v125, v134, v131);
      v118 = sub_2664DFE18();
      v119 = sub_2664E06E8();
      v120 = os_log_type_enabled(v118, v119);
      v121 = v128;
      if (v120)
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_26629C000, v118, v119, "SiriRemembersEntityProvider#findEntities had non-nil (but empty) search, defaulting to music-family types", v122, 2u);
        v123 = v122;
        v109 = v131;
        MEMORY[0x266784AD0](v123, -1, -1);
      }

      v121(v117, v109);
      v45 = sub_266372C18(18);
    }
  }

  return v45;
}

uint64_t sub_266373EC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  v15 = os_log_type_enabled(v13, v14);
  v34 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v33 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = a3;
    v19 = v18;
    v35[0] = v18;
    *v17 = 136315138;
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      a1 = 0x3E6C696E3CLL;
      v20 = 0xE500000000000000;
    }

    v21 = sub_2662A320C(a1, v20, v35);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26629C000, v13, v14, "SiriRemembersEntityProvider#storeForSharedUserId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v22 = v19;
    a3 = v32;
    MEMORY[0x266784AD0](v22, -1, -1);
    v23 = v17;
    a4 = v33;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v24 = qword_280F912D8;

  if (v24 != -1)
  {
    swift_once();
  }

  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0xEF64497265735564;
  }

  v26 = off_280F912E0;
  v27 = v34;
  if (a2)
  {
    v28 = v34;
  }

  else
  {
    v28 = 0x65726168536C696ELL;
  }

  v35[0] = v28;
  v35[1] = v25;
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v25;
  v29[4] = v27;
  v29[5] = a2;
  v30 = *(*v26 + 160);

  v30(v35, sub_26637427C, v29, 0, 1, a3, a4);
}

uint64_t objectdestroyTm_2(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_266374288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB0, &qword_2664E8B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2663742F8(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a1 + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v7 += 8;
      v10 = INMediaItemTypeGetName();
      if (v10)
      {
        v11 = v10;
        v12 = sub_2664E02C8();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2663846F4(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_2663846F4((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v9 = &v8[16 * v16];
        *(v9 + 4) = v12;
        *(v9 + 5) = v14;
      }

      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v17 = *(v8 + 2);
  if (v17)
  {
    v39 = v3;
    v40 = v2;
    v44 = v6;
    sub_2662FCF24(0, v17, 0);
    v18 = v44;
    v19 = (v8 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v42 = 0x707974616964656DLL;
      v43 = 0xEA00000000003D65;

      MEMORY[0x2667833B0](v20, v21);

      v23 = v42;
      v22 = v43;
      v44 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2662FCF24((v24 > 1), v25 + 1, 1);
        v18 = v44;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v19 += 2;
      --v17;
    }

    while (v17);

    v3 = v39;
    v2 = v40;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v27 = v41;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v27, v28, v2);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x2667834D0](v18, MEMORY[0x277D837D0]);
    v35 = sub_2662A320C(v33, v34, &v44);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_26629C000, v29, v30, "SiriRemembersEntityProvider#typeGroupQuery terms: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  (*(v3 + 8))(v27, v2);
  v36 = sub_26637290C(v18, 1);

  return v36;
}

void sub_2663746EC()
{
  v1 = *(v0 + 56);
  sub_266370788(MEMORY[0x277D84F90], v1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26637477C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2663747C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266374820()
{
  result = qword_280072ED0;
  if (!qword_280072ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072ED0);
  }

  return result;
}

unint64_t sub_266374878()
{
  result = qword_280072ED8;
  if (!qword_280072ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072ED8);
  }

  return result;
}

uint64_t sub_2663748EC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6, void (*a7)(__int128 *), uint64_t a8)
{
  v65 = a8;
  v64 = a7;
  v63 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = sub_2664DFE08();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 + 16);
  v20 = *(a2 + 40);
  v62 = a2;
  v21 = *__swift_project_boxed_opaque_existential_1((a2 + 16), v20);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  sub_2664DFDE8();
  v23 = sub_2664E0848();
  sub_2664DFDC8(v23, &dword_26629C000, v22, "mediaPlaybackProviderStreamingAvailability", 42, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_26648D3D0(0, v21, v73);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v17 + 8))(v19, v16);
  v58 = *&v73[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v11 + 16);
  v25(v15, v24, v10);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "LocalPlaybackHelper#playLocalMediaItems Setting local queue", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = *(v11 + 8);
  v29(v15, v10);
  v30 = v57;
  if (v57)
  {
    v25(v66, v24, v10);
    v31 = v30;
    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "LocalPlaybackHelper#playLocalMediaItems using x scheme", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v29(v66, v10);
    v35 = v31;
    v36 = v61;
    v37 = v60;
    v38 = v59;
  }

  else
  {
    v39 = objc_allocWithZone(MEMORY[0x277D27868]);
    v36 = v61;
    v40 = [v39 initWithContextID:0 query:v61];
    v37 = v60;
    v41 = *v60;
    v35 = v40;
    [v35 setShuffleType_];
    [v35 setShouldOverrideManuallyCuratedQueue_];
    v38 = v59;
    if (*(v59 + 88))
    {
      v42 = sub_2664E02A8();
    }

    else
    {
      v42 = 0;
    }

    [v35 setSiriRecommendationID_];

    swift_beginAccess();
    if (*(v38 + 24))
    {

      v43 = sub_2664E02A8();
    }

    else
    {
      v43 = 0;
    }

    [v35 setSiriAssetInfo_];

    v44 = sub_2664E01A8();
    [v35 setSiriWHAMetricsInfo_];
  }

  v45 = v37[49];
  if (v45 < 3)
  {
    v46 = v45 + 1;
  }

  else
  {
    v46 = 0;
  }

  v47 = v58 == 4;
  v48 = [objc_opt_self() systemMediaApplicationDestination];
  v49 = v37[50];
  v50 = *(v37 + 8);
  v51 = *(v38 + 96);
  v53 = *(v37 + 3);
  v52 = *(v37 + 4);
  v54 = *(v37 + 5);
  *&v67 = v48;
  *(&v67 + 1) = v35;
  LOBYTE(v68) = v47;
  *(&v68 + 1) = 0;
  DWORD2(v68) = v46;
  BYTE12(v68) = v49;
  v70 = v51;
  v69 = v50;
  *&v71 = v53;
  *(&v71 + 1) = v52;
  v72 = v54;
  v74 = v54;
  v73[2] = v50;
  v73[3] = v51;
  v73[4] = v71;
  v73[0] = v67;
  v73[1] = v68;

  sub_266379CF4(v73, v36, v63, v64, v65);

  return sub_26637F5FC(&v67);
}

id sub_266374FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v111 = a5;
  v125 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v109 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v109 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v109 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v118 = &v109 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v109 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v109 - v27;
  result = [objc_opt_self() ULIDPropertyForGroupingType_];
  if (!result)
  {
    goto LABEL_98;
  }

  v126 = result;
  v117 = sub_2664E02C8();
  v31 = v30;
  if (!a2 || ![a2 _countOfCollections])
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v28, v50, v10);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = a1;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v51, v52, "LocalPlaybackHelper#makeCollectionQuery Count of collections in query is 0", v54, 2u);
      v55 = v54;
      a1 = v53;
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    (*(v11 + 8))(v28, v10);
    return sub_266379168(v125, a1);
  }

  v112 = a2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v33 = *(v11 + 16);
  v122 = v32;
  v121 = v11 + 16;
  v120 = v33;
  v33(v26, v32, v10);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v10;
    v37 = a3;
    v38 = a1;
    v39 = v11;
    v40 = v6;
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_26629C000, v34, v35, "LocalPlaybackHelper#makeCollectionQuery Count of collections in query is > 0", v41, 2u);
    v42 = v41;
    v6 = v40;
    v11 = v39;
    a1 = v38;
    a3 = v37;
    v10 = v36;
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  v123 = *(v11 + 8);
  v124 = v11 + 8;
  v123(v26, v10);
  v43 = [v112 collections];
  v44 = v31;
  if (v43)
  {
    v45 = v43;
    sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
    v46 = sub_2664E04A8();

    if (v46 >> 62)
    {
      v47 = sub_2664E0A68();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v118;
    if (v47)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x266783B70](0, v46);
      }

      else
      {
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_75:
          result = sub_2664E0A68();
          if (result)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

        v49 = *(v46 + 32);
      }

      v31 = v49;
    }

    else
    {

      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    v48 = v118;
  }

  v120(v48, v122, v10);

  v56 = sub_2664DFE18();
  v57 = sub_2664E06E8();

  v58 = os_log_type_enabled(v56, v57);
  v110 = v6;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v131 = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_2662A320C(v117, v44, &v131);
    _os_log_impl(&dword_26629C000, v56, v57, "LocalPlaybackHelper#makeCollectionQuery ulidProperty: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x266784AD0](v60, -1, -1);
    MEMORY[0x266784AD0](v59, -1, -1);
  }

  v123(v48, v10);
  v6 = v112;
  if (v31 && (v61 = [v31 representativeItem]) != 0)
  {
    v62 = v61;
    v63 = [v61 valueForProperty_];

    if (v63)
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
    }

    v129 = v127;
    v130 = v128;
    if (*(&v128 + 1))
    {
      sub_266318804(&v129, &v131);
      v120(v113, v122, v10);
      v69 = sub_2664DFE18();
      v70 = sub_2664E06E8();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_26629C000, v69, v70, "LocalPlaybackHelper#makeCollectionQuery have mediaItemCollection representativeItem", v71, 2u);
        MEMORY[0x266784AD0](v71, -1, -1);
      }

      v123(v113, v10);
      sub_266318804(&v131, v133);
      goto LABEL_42;
    }
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  sub_26637F490(&v129);
  v120(v119, v122, v10);
  v64 = sub_2664DFE18();
  v65 = sub_2664E06E8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_26629C000, v64, v65, "LocalPlaybackHelper#makeCollectionQuery using mediaItemCollection value", v66, 2u);
    MEMORY[0x266784AD0](v66, -1, -1);
  }

  v123(v119, v10);
  if (v31 && [v31 valueForProperty_])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
    v67 = v131;
    v68 = v132;
  }

  else
  {
    v67 = 0uLL;
    v68 = 0uLL;
  }

  v133[0] = v67;
  v133[1] = v68;
LABEL_42:
  sub_26637F58C(v133, &v131);
  if (*(&v132 + 1))
  {
    if (swift_dynamicCast())
    {
      v72 = *(&v127 + 1);
      v73 = v127 & 0xFFFFFFFFFFFFLL;
      goto LABEL_47;
    }
  }

  else
  {
    sub_26637F490(&v131);
  }

  v73 = 0;
  v72 = 0;
  v127 = 0uLL;
LABEL_47:
  if (v72)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  if (v72)
  {
    v75 = v72;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v74;
  }

  v109 = a1;
  if (v76)
  {

    goto LABEL_80;
  }

  v120(v116, v122, v10);
  v77 = sub_2664DFE18();
  v78 = sub_2664E06D8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_26629C000, v77, v78, "LocalPlaybackHelper#makeCollectionQuery Unable to unwrap ulidIDOpt value to String", v79, 2u);
    MEMORY[0x266784AD0](v79, -1, -1);
  }

  v123(v116, v10);
  v80 = [v6 items];
  if (!v80)
  {

LABEL_77:
    v131 = 0u;
    v132 = 0u;
    goto LABEL_78;
  }

  v81 = v80;
  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v46 = sub_2664E04A8();

  if (v46 >> 62)
  {
    goto LABEL_75;
  }

  result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_76:

    goto LABEL_77;
  }

LABEL_62:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v82 = MEMORY[0x266783B70](0, v46);
LABEL_65:
    v83 = v82;

    v84 = v126;
    v85 = [v83 valueForProperty_];

    if (v85)
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
    }

    v131 = v129;
    v132 = v130;
    if (*(&v130 + 1))
    {
      v86 = swift_dynamicCast();
      v88 = *(&v129 + 1);
      v87 = v129;
      if (!v86)
      {
        v87 = 0;
        v88 = 0;
      }

      goto LABEL_79;
    }

LABEL_78:
    sub_26637F490(&v131);
    v87 = 0;
    v88 = 0;
LABEL_79:
    *&v127 = v87;
    *(&v127 + 1) = v88;

LABEL_80:
    v126 = v31;
    v89 = *(&v127 + 1);
    if (!*(&v127 + 1))
    {
      goto LABEL_86;
    }

    v90 = v127;
    v91 = HIBYTE(*(&v127 + 1)) & 0xFLL;
    if ((*(&v127 + 1) & 0x2000000000000000) == 0)
    {
      v91 = v127 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      v92 = v114;
      v120(v114, v122, v10);

      v93 = sub_2664DFE18();
      v94 = sub_2664E06E8();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v122 = a3;
        v96 = v95;
        v121 = swift_slowAlloc();
        *&v131 = v121;
        *v96 = 136315650;
        *&v129 = v122;
        v97 = sub_2664E0D48();
        v99 = sub_2662A320C(v97, v98, &v131);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2080;

        v100 = v117;
        v101 = sub_2662A320C(v117, v44, &v131);

        *(v96 + 14) = v101;
        *(v96 + 22) = 2080;
        *(v96 + 24) = sub_2662A320C(v90, v89, &v131);
        _os_log_impl(&dword_26629C000, v93, v94, "LocalPlaybackHelper#makeCollectionQuery Using grouping: %s, ulidProperty: %s, and ulidID: %s for .ulid", v96, 0x20u);
        v102 = v121;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v102, -1, -1);
        v103 = v96;
        a3 = v122;
        MEMORY[0x266784AD0](v103, -1, -1);

        v123(v114, v10);
      }

      else
      {

        v123(v92, v10);
        v100 = v117;
      }

      v6 = sub_266375FE0(v109, v125, v111 & 1, a3, v100, v44, v90, v89, 2u);

      sub_26637F490(v133);
    }

    else
    {
LABEL_86:

      v104 = v115;
      v120(v115, v122, v10);
      v105 = sub_2664DFE18();
      v106 = sub_2664E06D8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_26629C000, v105, v106, "LocalPlaybackHelper#makeCollectionQuery Unable to extract Query Items as fallback; returning original query", v107, 2u);
        MEMORY[0x266784AD0](v107, -1, -1);
      }

      v123(v104, v10);
      if (a3 == 6)
      {
        [v6 setGroupingType_];

        sub_26637F490(v133);
      }

      else
      {
        sub_26637F490(v133);
      }

      v108 = v6;
    }

    return v6;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v82 = *(v46 + 32);
    goto LABEL_65;
  }

  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

id sub_266375FE0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(char *, uint64_t), unint64_t a8, unsigned __int8 a9)
{
  v144 = a7;
  v145 = a8;
  v148 = a5;
  v149 = a6;
  v146 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v142 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](&v132 - v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v132 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v132 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v132 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v37 = &v132 - v36;
  v150 = v13;
  v143 = a3;
  if ((a3 & 1) == 0 && a4 == 6)
  {
    v145 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v39 = *(v14 + 16);
    v39(v37, v38, v13);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "LocalPlaybackHelper#getResultQuery Local search for !onlyPlayableItems and playlist mediaGrouping", v42, 2u);
      v43 = v42;
      v13 = v150;
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = *(v14 + 8);
    v147 = v14 + 8;
    v144 = v44;
    v44(v37, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664E34F0;
    v46 = *(v146 + 64);
    v151[0] = *(v146 + 56);
    v151[1] = v46;

    v47 = sub_2664E0DB8();
    v48 = sub_2664E02A8();
    v49 = [objc_opt_self() predicateWithValue:v47 forProperty:v48];
    swift_unknownObjectRelease();

    *(inited + 32) = v49;
    v50 = sub_26639ED20(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v51 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    sub_266460394(v50);

    v52 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v53 = v51;
    v54 = sub_2664E05F8();

    v55 = [v52 initWithFilterPredicates:v54 library:v53];

    if (v55)
    {
      [v55 setGroupingType_];
    }

    v56 = v150;
    v39(v30, v38, v150);
    v57 = v55;
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v151[0] = v61;
      *v60 = 136446210;
      if (v55)
      {
        v62 = [v57 description];
        v63 = sub_2664E02C8();
        v65 = v64;
      }

      else
      {
        v63 = 7104878;
        v65 = 0xE300000000000000;
      }

      v115 = sub_2662A320C(v63, v65, v151);

      *(v60 + 4) = v115;
      _os_log_impl(&dword_26629C000, v58, v59, "LocalPlaybackHelper#getResultQuery returning query: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);

      v85 = v30;
      v86 = v150;
    }

    else
    {

      v85 = v30;
      v86 = v56;
    }

    v144(v85, v86);
    return v55;
  }

  v138 = v32;
  v140 = v31;
  v136 = v9;
  v135 = v35;
  v66 = a2;
  v133 = v34;
  v132 = v33;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v141 = a9;
  v67 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v68 = *(v14 + 16);
  v68(v27, v67, v13);
  v69 = sub_2664DFE18();
  v70 = sub_2664E06C8();
  v71 = os_log_type_enabled(v69, v70);
  v139 = a4;
  if (v71)
  {
    v72 = v67;
    v73 = v14;
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_26629C000, v69, v70, "LocalPlaybackHelper#getResultQuery getting localQuery", v74, 2u);
    v75 = v74;
    v14 = v73;
    v67 = v72;
    a4 = v139;
    MEMORY[0x266784AD0](v75, -1, -1);
  }

  v77 = *(v14 + 8);
  v76 = v14 + 8;
  v78 = v27;
  v79 = v77;
  v80 = v150;
  v77(v78, v150);
  if (a4 == 7)
  {
    goto LABEL_19;
  }

  if (a4 == 6)
  {
    v68(v138, v67, v80);
    v87 = sub_2664DFE18();
    v88 = sub_2664E06E8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v137 = v79;
      v90 = v67;
      v91 = v76;
      v92 = v89;
      *v89 = 0;
      _os_log_impl(&dword_26629C000, v87, v88, "LocalPlaybackHelper#getResultQuery using title for playlist query as want items", v89, 2u);
      v93 = v92;
      v76 = v91;
      v67 = v90;
      a4 = 6;
      v79 = v137;
      MEMORY[0x266784AD0](v93, -1, -1);
    }

    v79(v138, v80);
    v81 = 0;
  }

  else
  {
    v81 = a4;
    if (!a4)
    {
LABEL_19:
      v68(v24, v67, v80);
      v82 = sub_2664DFE18();
      v83 = sub_2664E06E8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_26629C000, v82, v83, "LocalPlaybackHelper#getResultQuery Media grouping is title / podcastTitle", v84, 2u);
        MEMORY[0x266784AD0](v84, -1, -1);
      }

      v79(v24, v80);
      return sub_26637E54C(v66, v148, v149, v144, v145, v141, a4, a4, v143 & 1);
    }
  }

  v138 = v81;
  v94 = sub_26637E54C(v66, v148, v149, v144, v145, v141, a4, v81, v143 & 1);
  v95 = v94;
  v147 = v76;
  v134 = v68;
  v137 = v79;
  if (v94 && (v96 = [v94 collections]) != 0 && ((v97 = v96, sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0), v98 = sub_2664E04A8(), v97, v98 >> 62) ? (v99 = sub_2664E0A68()) : (v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v99))
  {
    v55 = v95;
  }

  else
  {
    v68(v140, v67, v80);
    v100 = sub_2664DFE18();
    v101 = sub_2664E06E8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_26629C000, v100, v101, "LocalPlaybackHelper#getResultQuery Query.collections is empty, trying to read each item out individually", v102, 2u);
      MEMORY[0x266784AD0](v102, -1, -1);
    }

    v79(v140, v80);
    v103 = sub_266379168(v66, v146);
    if (v103)
    {
      v55 = v103;
    }

    else
    {
      v117 = v143 ^ 1;
      v134(v135, v67, v80);
      v118 = sub_2664DFE18();
      v119 = sub_2664E06D8();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_26629C000, v118, v119, "LocalPlaybackHelper#getResultQuery createLocalCollection returned nil, trying with onlyPlayableItems: false", v120, 2u);
        MEMORY[0x266784AD0](v120, -1, -1);
      }

      v137(v135, v80);
      v121 = v139;
      v55 = sub_26637E54C(v66, v148, v149, v144, v145, v141, v139, v138, v117 & 1);

      if (v121 == 2 && !v55)
      {
        v122 = v67;
        v123 = v150;
        v134(v133, v67, v150);
        v124 = sub_2664DFE18();
        v125 = sub_2664E06E8();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 134218240;
          *(v126 + 4) = 2;
          *(v126 + 12) = 2048;
          *(v126 + 14) = 3;
          _os_log_impl(&dword_26629C000, v124, v125, "LocalPlaybackHelper#getResultQuery mediaGrouping: %ld, trying fallback: %ld for failed query", v126, 0x16u);
          MEMORY[0x266784AD0](v126, -1, -1);
        }

        v137(v133, v123);
        v55 = sub_26637E54C(v66, v148, v149, v144, v145, v141, 3, v138, v143 & 1);
        v67 = v122;
        if (!v55)
        {
          v127 = v150;
          v134(v132, v122, v150);
          v128 = sub_2664DFE18();
          v129 = sub_2664E06E8();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&dword_26629C000, v128, v129, "LocalPlaybackHelper#getResultQuery failed again, trying non playable items", v130, 2u);
            MEMORY[0x266784AD0](v130, -1, -1);
          }

          v137(v132, v127);
          v55 = sub_26637E54C(v66, v148, v149, v144, v145, v141, 3, v138, v117 & 1);
          v67 = v122;
        }
      }
    }
  }

  v104 = v142;
  v105 = v150;
  v134(v142, v67, v150);
  v106 = sub_2664DFE18();
  v107 = sub_2664E06E8();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = v137;
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v151[0] = v110;
    *v109 = 136446210;
    if (v55)
    {
      v111 = [v55 description];
      v112 = sub_2664E02C8();
      v114 = v113;
    }

    else
    {
      v112 = 7104878;
      v114 = 0xE300000000000000;
    }

    v131 = sub_2662A320C(v112, v114, v151);

    *(v109 + 4) = v131;
    _os_log_impl(&dword_26629C000, v106, v107, "LocalPlaybackHelper#getResultQuery returning query: %{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x266784AD0](v110, -1, -1);
    MEMORY[0x266784AD0](v109, -1, -1);

    v108(v104, v150);
  }

  else
  {

    v137(v104, v105);
  }

  return v55;
}

id sub_266376F50(uint64_t a1, void *a2, int a3, unsigned int a4, int a5)
{
  LODWORD(v319) = a5;
  v316 = a4;
  v320 = a3;
  v313 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v314 = &v292 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v292 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v317 = &v292 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v304 = &v292 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v301 = &v292 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v295 = &v292 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v294 = &v292 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v300 = &v292 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v302 = &v292 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v299 = &v292 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v306 = &v292 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v298 = &v292 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v297 = &v292 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v310 = &v292 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v307 = &v292 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v312 = &v292 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v303 = &v292 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v305 = &v292 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v309 = &v292 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v308 = &v292 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v311 = &v292 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v322 = &v292 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = &v292 - v53;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v56 = *(v7 + 2);
  v324 = v55;
  v56(v54, v55, v6);

  v57 = sub_2664DFE18();
  v58 = sub_2664E06C8();

  v59 = os_log_type_enabled(v57, v58);
  v318 = v12;
  v323 = v6;
  v321 = v7 + 16;
  if (v59)
  {
    v60 = swift_slowAlloc();
    *v315 = v56;
    v61 = v6;
    v62 = v60;
    v63 = swift_slowAlloc();
    v326[0] = v63;
    *v62 = 136446978;

    v64 = sub_2664C8950();
    v66 = v65;

    v67 = sub_2662A320C(v64, v66, v326);

    *(v62 + 4) = v67;
    *(v62 + 12) = 1026;
    *(v62 + 14) = v320 & 1;
    *(v62 + 18) = 1024;
    *(v62 + 20) = v319 & 1;
    *(v62 + 24) = 1026;
    *(v62 + 26) = v316 & 1;
    _os_log_impl(&dword_26629C000, v57, v58, "LocalPlaybackHelper#queryOnlyPlayableItems for %{public}s with onlyPlayableItems: %{BOOL,public}d, hasRoutes: %{BOOL}d, and targetsLocalDevice: %{BOOL,public}d", v62, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x266784AD0](v63, -1, -1);
    v56 = *v315;
    MEMORY[0x266784AD0](v62, -1, -1);

    v68 = *(v7 + 1);
    v68(v54, v61);
  }

  else
  {

    v68 = *(v7 + 1);
    v68(v54, v6);
  }

  v69 = v7;
  v70 = *(a1 + 49);
  v71 = sub_26637C354(a1);
  v72 = v322;
  if (v73)
  {
    v74 = v314;
    v75 = v323;
    v56(v314, v324, v323);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06D8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v74;
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_26629C000, v76, v77, "LocalPlaybackHelper#queryOnlyPlayableItems Failed to get grouping for scheme", v79, 2u);
      MEMORY[0x266784AD0](v79, -1, -1);

      v80 = v78;
    }

    else
    {

      v80 = v74;
    }

    v68(v80, v75);
    return 0;
  }

  v81 = v71;
  v315[0] = v70;
  v82 = v323;
  v56(v322, v324, v323);

  v83 = sub_2664DFE18();
  v84 = sub_2664E06E8();

  v85 = os_log_type_enabled(v83, v84);
  v314 = v69;
  v293 = a1;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v296 = v68;
    v88 = v87;
    v325 = v81;
    v326[0] = v87;
    *v86 = 136446466;
    v89 = sub_2664E0D48();
    v91 = v56;
    v92 = v81;
    v93 = sub_2662A320C(v89, v90, v326);

    *(v86 + 4) = v93;
    *(v86 + 12) = 2082;
    LOBYTE(v325) = *(a1 + 48);
    v94 = PlaybackItem.Scheme.rawValue.getter();
    v96 = sub_2662A320C(v94, v95, v326);

    *(v86 + 14) = v96;
    v81 = v92;
    v56 = v91;
    _os_log_impl(&dword_26629C000, v83, v84, "LocalPlaybackHelper#queryOnlyPlayableItems Got grouping: %{public}s for scheme: %{public}s", v86, 0x16u);
    swift_arrayDestroy();
    v97 = v88;
    v68 = v296;
    MEMORY[0x266784AD0](v97, -1, -1);
    MEMORY[0x266784AD0](v86, -1, -1);

    v98 = v322;
  }

  else
  {

    v98 = v72;
  }

  v68(v98, v82);
  v100 = v317;
  v101 = v315[0];
  if (v315[0] != 4)
  {
    if (v315[0] != 1)
    {
      if (v315[0])
      {
        v157 = v323;
        v56(v317, v324, v323);
        v158 = sub_2664DFE18();
        v159 = sub_2664E06D8();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v326[0] = v161;
          v162 = 0xEC00000079726172;
          *v160 = 136446210;
          v163 = 0x62696C656C6F6877;
          if (v101 != 6)
          {
            v163 = 0x6E776F6E6B6E75;
            v162 = 0xE700000000000000;
          }

          v164 = 0xE400000000000000;
          v165 = 1684630645;
          if (v101 != 4)
          {
            v165 = 0x6867696C746F7073;
            v164 = 0xE900000000000074;
          }

          if (v101 <= 5)
          {
            v163 = v165;
            v162 = v164;
          }

          v166 = 0xEA00000000006573;
          v167 = 0x72657669746C756DLL;
          if (v101 != 2)
          {
            v167 = 0x65726F7473;
            v166 = 0xE500000000000000;
          }

          if (v101 <= 3)
          {
            v168 = v167;
          }

          else
          {
            v168 = v163;
          }

          if (v101 <= 3)
          {
            v169 = v166;
          }

          else
          {
            v169 = v162;
          }

          v170 = sub_2662A320C(v168, v169, v326);

          *(v160 + 4) = v170;
          _os_log_impl(&dword_26629C000, v158, v159, "LocalPlaybackHelper#queryOnlyPlayableItems Unsupported contentOrigin for local playback %{public}s", v160, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v161);
          MEMORY[0x266784AD0](v161, -1, -1);
          MEMORY[0x266784AD0](v160, -1, -1);

          v102 = v323;
          v68(v317, v323);
          v99 = 0;
          v156 = v318;
        }

        else
        {

          v68(v100, v157);
          v99 = 0;
          v156 = v318;
          v102 = v157;
        }

        goto LABEL_84;
      }

      v322 = v81;
      v102 = v323;
      v56(v311, v324, v323);
      v103 = sub_2664DFE18();
      v104 = sub_2664E06E8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 67109120;
        *(v105 + 4) = v316 & 1;
        _os_log_impl(&dword_26629C000, v103, v104, "LocalPlaybackHelper#queryOnlyPlayableItems .device local search, targetsLocalDevice: %{BOOL}d", v105, 8u);
        MEMORY[0x266784AD0](v105, -1, -1);
      }

      v68(v311, v102);
      v106 = static SiriEnvironmentWrapper.retrieve()();
      v107 = v293;
      if (v106)
      {
        sub_2664DF4E8();
        v108 = sub_2664DF5A8();
      }

      else
      {
        sub_2664DEC08();
        __swift_project_boxed_opaque_existential_1(v326, v327);
        v108 = sub_2664DE988();
        __swift_destroy_boxed_opaque_existential_1Tm(v326);
      }

      v171 = v322;
      if ((v108 & 1) == 0 && v319 & 1 | (v322 == 6))
      {
        v56(v308, v324, v102);
        v172 = sub_2664DFE18();
        v173 = sub_2664E06E8();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          *v174 = 0;
          _os_log_impl(&dword_26629C000, v172, v173, "LocalPlaybackHelper#queryOnlyPlayableItems .device generating transportableID", v174, 2u);
          v175 = v174;
          v171 = v322;
          MEMORY[0x266784AD0](v175, -1, -1);
        }

        v68(v308, v102);
        v176 = v320;
        v177 = v313;
        sub_26637C81C(*(v107 + 56), *(v107 + 64), v171, v313, v320 & 1);
        v178 = v171;
        v180 = v179;
        v99 = sub_266374FE8(v107, v179, v178, v177, v176 & 1);

        v156 = v318;
        goto LABEL_84;
      }

      *v315 = v56;
      v56(v309, v324, v102);
      v181 = sub_2664DFE18();
      v182 = sub_2664E06E8();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&dword_26629C000, v181, v182, "LocalPlaybackHelper#queryOnlyPlayableItems .device not generating transportableID", v183, 2u);
        v184 = v183;
        v171 = v322;
        MEMORY[0x266784AD0](v184, -1, -1);
      }

      v68(v309, v102);
      v185 = [objc_opt_self() persistentIDPropertyForGroupingType_];
      v186 = sub_2664E02C8();
      v188 = v187;

      v189 = *(v107 + 56);
      v190 = *(v107 + 64);

      v191 = sub_26648B718(v189, v190);
      if (v192)
      {

        v193 = v303;
        (*v315)(v303, v324, v102);

        v194 = sub_2664DFE18();
        v195 = sub_2664E06D8();

        if (os_log_type_enabled(v194, v195))
        {
          v196 = v193;
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v326[0] = v198;
          *v197 = 136446210;
          *(v197 + 4) = sub_2662A320C(v189, v190, v326);
          _os_log_impl(&dword_26629C000, v194, v195, "LocalPlaybackHelper#queryOnlyPlayableItems Unable to convert device ID %{public}s to Int64", v197, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v198);
          MEMORY[0x266784AD0](v198, -1, -1);
          MEMORY[0x266784AD0](v197, -1, -1);

          v199 = v196;
        }

        else
        {

          v199 = v193;
        }

        v68(v199, v102);
        return 0;
      }

      v319 = v191;
      v202 = v305;
      (*v315)(v305, v324, v102);

      v203 = sub_2664DFE18();
      v204 = sub_2664E06E8();

      if (os_log_type_enabled(v203, v204))
      {
        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v317 = v186;
        v207 = v206;
        *v205 = 136446722;
        v325 = v322;
        v326[0] = v206;
        v208 = sub_2664E0D48();
        v210 = sub_2662A320C(v208, v209, v326);

        *(v205 + 4) = v210;
        *(v205 + 12) = 2082;

        v211 = sub_2662A320C(v317, v188, v326);

        *(v205 + 14) = v211;
        *(v205 + 22) = 2082;
        v212 = v319;
        v325 = v319;
        v213 = sub_2664E0D48();
        v215 = sub_2662A320C(v213, v214, v326);

        *(v205 + 24) = v215;
        v102 = v323;
        _os_log_impl(&dword_26629C000, v203, v204, "LocalPlaybackHelper#queryOnlyPlayableItems for .device using grouping: %{public}s, persistentIDProperty: %{public}s, and persistentID: %{public}s", v205, 0x20u);
        swift_arrayDestroy();
        v216 = v207;
        v186 = v317;
        MEMORY[0x266784AD0](v216, -1, -1);
        MEMORY[0x266784AD0](v205, -1, -1);

        v68(v305, v102);
        v217 = v322;
        v218 = v293;
      }

      else
      {

        v68(v202, v102);
        v218 = v293;
        v217 = v322;
        v212 = v319;
      }

      v99 = sub_266375FE0(v218, v313, v320 & 1, v217, v186, v188, v212, 0, 0);

      v156 = v318;
LABEL_83:
      v56 = *v315;
LABEL_84:
      v56(v156, v324, v102);
      goto LABEL_85;
    }

    v322 = v81;
    v296 = v68;
    v109 = v307;
    v102 = v323;
    *v315 = v56;
    v56(v307, v324, v323);
    v110 = sub_2664DFE18();
    v111 = sub_2664E06E8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_26629C000, v110, v111, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync local search", v112, 2u);
      MEMORY[0x266784AD0](v112, -1, -1);
    }

    v296(v109, v102);
    v113 = *(v293 + 56);
    v114 = *(v293 + 64);
    LOWORD(v326[0]) = *(v293 + 48);
    v326[1] = v113;
    v326[2] = v114;
    v115 = PlaybackItem.Identifier.identifierForSiriSyncID.getter();
    v118 = v117;
    v119 = HIBYTE(v117) & 0xF;
    if ((v117 & 0x2000000000000000) == 0)
    {
      v119 = v115 & 0xFFFFFFFFFFFFLL;
    }

    v120 = v310;
    if (v119)
    {
      v121 = v115;
      v122 = v116;
      (*v315)(v310, v324, v102);

      v123 = sub_2664DFE18();
      v124 = sub_2664E06E8();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = v102;
        v127 = swift_slowAlloc();
        v326[0] = v127;
        *v125 = 136315138;
        *(v125 + 4) = sub_2662A320C(v121, v118, v326);
        _os_log_impl(&dword_26629C000, v123, v124, "LocalPlaybackHelper#queryOnlyPlayableItems trying to play siriSyncID: %s", v125, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        v128 = v127;
        v102 = v126;
        MEMORY[0x266784AD0](v128, -1, -1);
        MEMORY[0x266784AD0](v125, -1, -1);
      }

      v296(v120, v102);
      v129 = [objc_opt_self() persistentIDPropertyForGroupingType_];
      v130 = sub_2664E02C8();
      v132 = v131;

      if (v122)
      {
        v133 = sub_26648B718(v121, v118);
        if (v134)
        {

          v135 = v297;
          (*v315)(v297, v324, v102);
          v136 = sub_2664DFE18();
          v137 = sub_2664E06D8();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *v138 = 0;
            v139 = "LocalPlaybackHelper#queryOnlyPlayableItems unable to convert siriSyncID to Int64";
LABEL_70:
            _os_log_impl(&dword_26629C000, v136, v137, v139, v138, 2u);
            MEMORY[0x266784AD0](v138, -1, -1);
            goto LABEL_71;
          }

          goto LABEL_71;
        }

        v219 = v133;
        LODWORD(v220) = 0;
      }

      else
      {
        v200 = sub_26648BA18(v121, v118);
        if (v201)
        {

          v135 = v298;
          (*v315)(v298, v324, v102);
          v136 = sub_2664DFE18();
          v137 = sub_2664E06D8();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *v138 = 0;
            v139 = "LocalPlaybackHelper#queryOnlyPlayableItems unable to convert siriSyncID to UInt64";
            goto LABEL_70;
          }

          goto LABEL_71;
        }

        v219 = v200;
        LODWORD(v220) = 1;
      }

      v317 = v130;
      v221 = v306;
      (*v315)(v306, v324, v102);

      v222 = sub_2664DFE18();
      v223 = sub_2664E06E8();

      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        v225 = v220;
        v220 = swift_slowAlloc();
        *v224 = 136446722;
        v325 = v322;
        v326[0] = v220;
        v226 = sub_2664E0D48();
        v228 = sub_2662A320C(v226, v227, v326);

        *(v224 + 4) = v228;
        *(v224 + 12) = 2082;

        v229 = sub_2662A320C(v317, v132, v326);

        *(v224 + 14) = v229;
        *(v224 + 22) = 2082;
        v316 = v225;
        v230 = v219;
        v325 = v219;
        v243 = sub_2664E0D48();
        v245 = sub_2662A320C(v243, v244, v326);

        *(v224 + 24) = v245;
        _os_log_impl(&dword_26629C000, v222, v223, "LocalPlaybackHelper#queryOnlyPlayableItems for .sirisync using grouping: %{public}s, persistentIDProperty: %{public}s, and persistentID: %{public}s", v224, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v220, -1, -1);
        MEMORY[0x266784AD0](v224, -1, -1);

        v102 = v323;
        v296(v306, v323);
        v156 = v318;
        LOBYTE(v220) = v316;
      }

      else
      {

        v296(v221, v102);
        v156 = v318;
        v230 = v219;
      }

      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(v326, v327);
      v246 = sub_2664DE978();
      __swift_destroy_boxed_opaque_existential_1Tm(v326);
      if ((v246 & 1) != 0 && (v319 & 1) == 0)
      {
        v247 = v299;
        v248 = *v315;
        (*v315)(v299, v324, v102);
        v249 = sub_2664DFE18();
        v250 = sub_2664E06E8();
        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          *v251 = 0;
          _os_log_impl(&dword_26629C000, v249, v250, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync Phone has no routes, not making transportable ID", v251, 2u);
          v252 = v251;
          v248 = *v315;
          MEMORY[0x266784AD0](v252, -1, -1);
        }

        v253 = v247;
        v254 = v296;
        v296(v253, v102);
        v99 = sub_266375FE0(v293, v313, v320 & 1, v322, v317, v132, v230, 0, v220);

        sub_26637F574(v230, 0, v220);
        v255 = v302;
        v248(v302, v324, v102);
        v256 = sub_2664DFE18();
        v257 = sub_2664E06E8();
        if (os_log_type_enabled(v256, v257))
        {
          v258 = v102;
          v259 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v326[0] = v260;
          *v259 = 136446210;
          if (v99)
          {
            v261 = [v99 description];
            v262 = sub_2664E02C8();
            v264 = v263;
          }

          else
          {
            v262 = 7104878;
            v264 = 0xE300000000000000;
          }

          v291 = sub_2662A320C(v262, v264, v326);

          *(v259 + 4) = v291;
          _os_log_impl(&dword_26629C000, v256, v257, "LocalPlaybackHelper#queryOnlyPlayableItems returning query:%{public}s ", v259, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v260);
          MEMORY[0x266784AD0](v260, -1, -1);
          MEMORY[0x266784AD0](v259, -1, -1);

          v296(v302, v258);
        }

        else
        {

          v254(v255, v102);
        }

        return v99;
      }

      if (static SiriEnvironmentWrapper.retrieve()())
      {
        sub_2664DF4E8();
        v265 = sub_2664DF5A8();
      }

      else
      {
        sub_2664DEC08();
        __swift_project_boxed_opaque_existential_1(v326, v327);
        v265 = sub_2664DE988();
        __swift_destroy_boxed_opaque_existential_1Tm(v326);
      }

      v56 = *v315;
      if ((v265 & 1) != 0 || !(v319 & 1 | (v322 == 6)))
      {
        (*v315)(v301, v324, v102);
        v269 = sub_2664DFE18();
        v270 = sub_2664E06E8();
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          *v271 = 0;
          _os_log_impl(&dword_26629C000, v269, v270, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync not generating transportableID", v271, 2u);
          v272 = v271;
          v56 = *v315;
          MEMORY[0x266784AD0](v272, -1, -1);
        }

        v273 = v296;
        v296(v301, v102);
        v68 = v273;
        v99 = sub_266375FE0(v293, v313, v320 & 1, v322, v317, v132, v230, 0, v220);

        sub_26637F574(v230, 0, v220);
        goto LABEL_84;
      }

      (*v315)(v300, v324, v102);
      v266 = sub_2664DFE18();
      v267 = sub_2664E06E8();
      if (os_log_type_enabled(v266, v267))
      {
        v268 = swift_slowAlloc();
        *v268 = 0;
        _os_log_impl(&dword_26629C000, v266, v267, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync generating transportableID", v268, 2u);
        MEMORY[0x266784AD0](v268, -1, -1);
      }

      v296(v300, v102);
      v326[0] = v230;
      v274 = sub_2664E0D48();
      v275 = v322;
      sub_26637C81C(v274, v276, v322, v313, v320 & 1);
      v278 = v277;

      if (v275 == 6)
      {

        sub_26637F574(v230, 0, v220);
        v279 = v294;
        (*v315)(v294, v324, v102);
        v280 = sub_2664DFE18();
        v281 = sub_2664E06E8();
        if (os_log_type_enabled(v280, v281))
        {
          v282 = swift_slowAlloc();
          *v282 = 0;
          _os_log_impl(&dword_26629C000, v280, v281, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync generating collection query", v282, 2u);
          v283 = v282;
          v156 = v318;
          MEMORY[0x266784AD0](v283, -1, -1);
        }

        v284 = v296;
        v296(v279, v102);
        v68 = v284;
        v99 = sub_266374FE8(v293, v278, 6, v313, v320 & 1);
      }

      else
      {
        (*v315)(v295, v324, v102);
        v285 = sub_2664DFE18();
        v286 = sub_2664E06E8();
        if (os_log_type_enabled(v285, v286))
        {
          v287 = v102;
          v288 = swift_slowAlloc();
          *v288 = 0;
          _os_log_impl(&dword_26629C000, v285, v286, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync not generating collection query", v288, 2u);
          v289 = v288;
          v102 = v287;
          v156 = v318;
          MEMORY[0x266784AD0](v289, -1, -1);
        }

        v290 = v296;
        v296(v295, v102);
        v68 = v290;
        v99 = sub_266375FE0(v293, v313, v320 & 1, v322, v317, v132, v230, 0, v220);

        sub_26637F574(v230, 0, v220);
      }

      goto LABEL_83;
    }

    v135 = v304;
    (*v315)(v304, v324, v102);
    v136 = sub_2664DFE18();
    v137 = sub_2664E06D8();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      v139 = "LocalPlaybackHelper#queryOnlyPlayableItems unable to extract identifierForSiriSyncID";
      goto LABEL_70;
    }

LABEL_71:

    v296(v135, v102);
    return 0;
  }

  v102 = v323;
  v140 = v56;
  v56(v312, v324, v323);
  v141 = sub_2664DFE18();
  v142 = sub_2664E06E8();
  v143 = os_log_type_enabled(v141, v142);
  v144 = v293;
  if (v143)
  {
    v145 = v81;
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&dword_26629C000, v141, v142, "LocalPlaybackHelper#queryOnlyPlayableItems .ulid local search", v146, 2u);
    v147 = v146;
    v81 = v145;
    MEMORY[0x266784AD0](v147, -1, -1);
  }

  v68(v312, v102);
  result = [objc_opt_self() ULIDPropertyForGroupingType_];
  if (result)
  {
    v149 = result;
    v150 = v81;
    v151 = sub_2664E02C8();
    v153 = v152;

    LODWORD(v149) = v320 & 1;
    v154 = v313;
    v155 = sub_26637E54C(v313, v151, v153, *(v144 + 56), *(v144 + 64), 2, v150, v150, v320 & 1);

    v99 = sub_266374FE8(v144, v155, v150, v154, v149);

    v156 = v318;
    v140(v318, v324, v102);
LABEL_85:
    v231 = sub_2664DFE18();
    v232 = sub_2664E06E8();
    if (os_log_type_enabled(v231, v232))
    {
      v233 = v102;
      v234 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v326[0] = v235;
      *v234 = 136446210;
      if (v99)
      {
        v236 = [v99 description];
        v237 = sub_2664E02C8();
        v239 = v238;
      }

      else
      {
        v237 = 7104878;
        v239 = 0xE300000000000000;
      }

      v242 = sub_2662A320C(v237, v239, v326);

      *(v234 + 4) = v242;
      _os_log_impl(&dword_26629C000, v231, v232, "LocalPlaybackHelper#queryOnlyPlayableItems returning query:%{public}s ", v234, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v235);
      MEMORY[0x266784AD0](v235, -1, -1);
      MEMORY[0x266784AD0](v234, -1, -1);

      v240 = v318;
      v241 = v233;
    }

    else
    {

      v240 = v156;
      v241 = v102;
    }

    v68(v240, v241);
    return v99;
  }

  __break(1u);
  return result;
}

id sub_266379168(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v12 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    v13 = *(v4 + 16);
    v46 = v4 + 16;
    v47 = v12;
    v45 = v13;
    v13(v11, v12, v3);

    v14 = sub_2664DFE18();
    v15 = sub_2664E06E8();

    v16 = os_log_type_enabled(v14, v15);
    v51 = v4;
    v49 = v9;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55 = v18;
      *v17 = 136446210;

      v19 = sub_2664C8950();
      v21 = v20;

      v22 = sub_2662A320C(v19, v21, &v55);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_26629C000, v14, v15, "LocalPlaybackHelper#createLocalCollection for %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266784AD0](v18, -1, -1);
      MEMORY[0x266784AD0](v17, -1, -1);

      v48 = *(v51 + 8);
    }

    else
    {

      v48 = *(v4 + 8);
    }

    v48(v11, v3);
    v9 = *(a2 + 72);
    v55 = MEMORY[0x277D84F90];
    if (!(v9 >> 62))
    {
      v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v50 = v3;
      if (!v23)
      {
        break;
      }

      goto LABEL_7;
    }

    v23 = sub_2664E0A68();
    v50 = v3;
    if (!v23)
    {
      break;
    }

LABEL_7:
    v24 = 0;
    a2 = 0;
    v4 = v9 & 0xC000000000000001;
    v3 = v9 & 0xFFFFFFFFFFFFFF8;
    v11 = MEMORY[0x277D84F90];
    while (v4)
    {
      v25 = MEMORY[0x266783B70](v24, v9);
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_18;
      }

LABEL_13:
      v54 = v25;
      sub_2663797A0(&v54, v52, &v53);

      if (v53)
      {
        MEMORY[0x266783490](v27);
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2664E04C8();
        }

        sub_2664E0518();
        v11 = v55;
      }

      ++v24;
      if (v26 == v23)
      {
        goto LABEL_23;
      }
    }

    if (v24 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v25 = *(v9 + 8 * v24 + 32);

    v26 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_23:
  if (v11 >> 62)
  {
    v37 = sub_2664E0A68();
    v29 = v49;
    v28 = v50;
    if (!v37)
    {
      goto LABEL_33;
    }

LABEL_25:
    v45(v29, v47, v28);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      if (v11 >> 62)
      {
        v33 = sub_2664E0A68();
      }

      else
      {
        v33 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v32 + 4) = v33;

      _os_log_impl(&dword_26629C000, v30, v31, "LocalPlaybackHelper#createLocalCollection items not empty, returning MPMediaQuery with %{public}ld items", v32, 0xCu);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    else
    {
    }

    v48(v29, v28);
    sub_26645FB50(v11);

    v34 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v35 = sub_2664E0488();

    v36 = [v34 initWithEntities:v35 entityType:0];
  }

  else
  {
    v29 = v49;
    v28 = v50;
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_33:

    v38 = v44;
    v45(v44, v47, v28);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "LocalPlaybackHelper#createLocalCollection items empty, returning nil", v41, 2u);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v48(v38, v28);
    return 0;
  }

  return v36;
}

uint64_t sub_2663797A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, NSObject **a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  sub_26637D108(*a1, a2);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v30 = a3;
  if ([v16 valueForProperty:*MEMORY[0x277CD5828]])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {

    sub_26637F490(&v33);
LABEL_14:
    a3 = v30;
LABEL_15:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v22, v6);
    v19 = sub_2664DFE18();
    v23 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v19, v23, "LocalPlaybackHelper#createLocalCollection MPMediaItem is nil", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    v15 = v10;
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (v35)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v18, v6);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "LocalPlaybackHelper#createLocalCollection MPMediaItem is restricted", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    else
    {

      v19 = v17;
    }

    v15 = v13;
    a3 = v30;
LABEL_20:

    result = (*(v7 + 8))(v15, v6);
    v17 = 0;
    goto LABEL_21;
  }

  if ([v17 valueForProperty:*MEMORY[0x277CD57A0]])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  a3 = v30;
  if (!*(&v32 + 1))
  {
    sub_26637F490(&v33);
LABEL_32:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v15, v26, v6);
    v19 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v19, v27, "LocalPlaybackHelper#createLocalCollection MPMediaItem isn't playable", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    else
    {

      v19 = v17;
    }

    goto LABEL_20;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v35 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  *a3 = v17;
  return result;
}

void sub_266379CF4(uint64_t a1, void *a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v62 = a4;
  v61 = a1;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = [a2 items];
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = v22;
  v60 = a3;
  v24 = v10;
  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v10 = sub_2664E04A8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (!sub_2664E0A68())
  {
LABEL_23:

    v10 = v24;
LABEL_24:
    v63 = 0u;
    v64 = 0u;
LABEL_25:
    sub_26637F490(&v63);
    goto LABEL_26;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x266783B70](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v25 = *(v10 + 32);
  }

  v26 = v25;

  v27 = [v26 valueForProperty_];

  if (v27)
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v66 = 0u;
  }

  v10 = v24;
  v63 = aBlock;
  v64 = v66;
  if (!*(&v66 + 1))
  {
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v61 = a5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v48 = *(v10 + 16);
    v48(v16, v47, v9);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v10;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "LocalPlaybackHelper#handleQueue Unable to unwrap first item of mediaQuery to Bool", v52, 2u);
      v53 = v52;
      v10 = v51;
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v54 = *(v10 + 8);
    v54(v16, v9);
    v48(v13, v47, v9);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v63 = v58;
      *v57 = 134218498;
      *(v57 + 4) = 2;
      *(v57 + 12) = 2048;
      *(v57 + 14) = 32;
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_2662A320C(0xD000000000000017, 0x80000002664F5B00, &v63);
      _os_log_impl(&dword_26629C000, v55, v56, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v57, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v54(v13, v9);
    v63 = xmmword_2664E8D70;
    *&v64 = 0x80000002664F5B00;
    BYTE8(v64) = 1;
    v62(&v63);
    sub_2662D2F30(v63, *(&v63 + 1), v64, SBYTE8(v64));
    return;
  }

  v13 = v5;
  if (aBlock)
  {
    if (qword_280F914E8 == -1)
    {
LABEL_14:
      v28 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v19, v28, v9);
      v29 = sub_2664DFE18();
      v30 = sub_2664E06E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26629C000, v29, v30, "LocalPlaybackHelper#handleQueue Item explicit, checking if we can play", v31, 2u);
        v32 = v31;
        v10 = v24;
        MEMORY[0x266784AD0](v32, -1, -1);
      }

      (*(v10 + 8))(v19, v9);
      v33 = [objc_opt_self() defaultManager];
      v34 = swift_allocObject();
      v35 = v61;
      v36 = *(v61 + 48);
      *(v34 + 72) = *(v61 + 32);
      *(v34 + 88) = v36;
      *(v34 + 104) = *(v35 + 64);
      v37 = *(v35 + 16);
      *(v34 + 40) = *v35;
      *(v34 + 16) = v62;
      *(v34 + 24) = a5;
      *(v34 + 32) = v13;
      v38 = *(v35 + 80);
      *(v34 + 56) = v37;
      v39 = v60;
      *(v34 + 120) = v38;
      *(v34 + 128) = v39;
      v67 = sub_26637F4F8;
      v68 = v34;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_26637AA0C;
      *(&v66 + 1) = &block_descriptor_29;
      v40 = _Block_copy(&aBlock);

      sub_26637C270(v35, &v63);
      v41 = v39;

      [v33 getAgeVerificationStateWithCompletion_];
      _Block_release(v40);

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v24 + 16))(v21, v42, v9);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_26629C000, v43, v44, "LocalPlaybackHelper#handleQueue Item not explicit, continuing on to processQueue", v45, 2u);
    v46 = v45;
    v10 = v24;
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  (*(v10 + 8))(v21, v9);
  sub_26637AA74(v61, v60, v62, a5);
}

void sub_26637A55C(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  if ([a1 isExplicitContentAllowed])
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v20, v10);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "LocalPlaybackHelper#handleQueue Explicit content allowed, continuing to processQueue", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    sub_26637AA74(a5, a6, v35, a3);
  }

  else
  {
    v34 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v25 = *(v11 + 16);
    v25(v19, v24, v10);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06E8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "LocalPlaybackHelper#handleQueue Explicit content not allowed", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v29 = *(v11 + 8);
    v29(v19, v10);
    v25(v17, v24, v10);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v36 = v33;
      *v32 = 134218498;
      *(v32 + 4) = 2;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 17;
      *(v32 + 22) = 2080;
      *(v32 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664F5B50, &v36);
      _os_log_impl(&dword_26629C000, v30, v31, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v29(v17, v10);
    v36 = xmmword_2664E8D80;
    v37 = 0x80000002664F5B50;
    v38 = 1;
    v35(&v36);
    sub_2662D2F30(v36, *(&v36 + 1), v37, v38);
  }
}

void sub_26637AA0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_26637AA74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(a1 + 80) && !*(*(a1 + 64) + 16))
  {
    v39 = *a1;
    v41 = *(a1 + 8);
    v43 = *(a1 + 16);
    v23 = *(a1 + 17);
    v24 = *(a1 + 18);
    v25 = *(a1 + 19);
    v26 = *(a1 + 20);
    v28 = swift_allocObject();
    v29 = *(a1 + 48);
    *(v28 + 56) = *(a1 + 32);
    *(v28 + 72) = v29;
    *(v28 + 88) = *(a1 + 64);
    v30 = *(a1 + 16);
    *(v28 + 24) = *a1;
    *(v28 + 16) = v5;
    v31 = *(a1 + 80);
    *(v28 + 40) = v30;
    *(v28 + 104) = v31;
    *(v28 + 112) = a2;
    *(v28 + 120) = a3;
    *(v28 + 128) = a4;
    v49 = sub_26637C320;
    v50 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_2663A0C48;
    v48 = &block_descriptor_12_1;
    v32 = _Block_copy(&aBlock);

    sub_26637C270(a1, v44);
    v33 = a2;

    v34 = 0x1000000;
    if (!v26)
    {
      v34 = 0;
    }

    v35 = 0x10000;
    if (!v25)
    {
      v35 = 0;
    }

    v36 = 256;
    if (!v24)
    {
      v36 = 0;
    }

    [v39 resolveWithQueue:v41 routeIdentifiers:0 localPlaybackPermitted:v43 audioRoutingInfo:v36 | v23 | v35 | v34 completion:v32];
    _Block_release(v32);
  }

  else
  {
    v40 = *a1;
    v42 = *(a1 + 8);
    v10 = sub_2664E0488();
    v38 = *(a1 + 16);
    v37 = *(a1 + 17);
    v11 = *(a1 + 18);
    v12 = *(a1 + 19);
    v13 = *(a1 + 20);
    v14 = swift_allocObject();
    v15 = *(a1 + 48);
    *(v14 + 56) = *(a1 + 32);
    *(v14 + 72) = v15;
    *(v14 + 88) = *(a1 + 64);
    v16 = *(a1 + 16);
    *(v14 + 24) = *a1;
    *(v14 + 16) = v5;
    v17 = *(a1 + 80);
    *(v14 + 40) = v16;
    *(v14 + 104) = v17;
    *(v14 + 112) = a2;
    *(v14 + 120) = a3;
    *(v14 + 128) = a4;
    v49 = sub_26637C258;
    v50 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_2663A0C48;
    v48 = &block_descriptor_17;
    v18 = _Block_copy(&aBlock);

    sub_26637C270(a1, v44);
    v19 = a2;

    v20 = 0x1000000;
    if (!v13)
    {
      v20 = 0;
    }

    v21 = 0x10000;
    if (!v12)
    {
      v21 = 0;
    }

    v22 = 256;
    if (!v11)
    {
      v22 = 0;
    }

    [v40 resolveWithQueue:v42 hashedRouteIdentifiers:v10 localPlaybackPermitted:v38 audioRoutingInfo:v22 | v37 | v21 | v20 completion:{v18, v37}];
    _Block_release(v18);
  }
}

uint64_t sub_26637AD9C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v91 = a5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v78[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v78[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v85 = &v78[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v78[-v21];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v87 = a4;
  v90 = a6;
  v23 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v24 = *(v12 + 16);
  v86 = v23;
  v89 = v24;
  v88 = v12 + 16;
  v24(v22, v23, v11);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "LocalPlaybackHelper#processQueue [SE Route Logic] Attempting to play local queue", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v12 + 8);
  v84 = v12 + 8;
  v83 = v28;
  v28(v22, v11);
  v29 = sub_2664AD590(a1, *(a3 + 72), *(a3 + 80));
  v30 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  v31 = *(a3 + 8);
  v79 = *(a3 + 28);
  v33 = *(a3 + 32);
  v32 = *(a3 + 40);
  v34 = *(a3 + 48);
  v35 = *(a3 + 56);
  v98[3] = &type metadata for LocalPlaybackHelper.QueueAttributes;
  v98[4] = &off_2877EB8A0;
  v36 = swift_allocObject();
  v98[0] = v36;
  v37 = *(a3 + 48);
  *(v36 + 48) = *(a3 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(a3 + 64);
  *(v36 + 96) = *(a3 + 80);
  v38 = *(a3 + 16);
  *(v36 + 16) = *a3;
  *(v36 + 32) = v38;
  sub_26637C7BC(v30, &v92);
  sub_2662A5550(v98, v97);
  v39 = swift_allocObject();
  v40 = v95;
  *(v39 + 48) = v94;
  *(v39 + 64) = v40;
  *(v39 + 80) = v96;
  v41 = v93;
  *(v39 + 16) = v92;
  *(v39 + 32) = v41;
  *(v39 + 96) = v33;
  *(v39 + 104) = v32;
  *(v39 + 112) = v34;
  *(v39 + 120) = v35;
  v42 = v90;
  *(v39 + 128) = v91;
  *(v39 + 136) = v42;
  sub_2662A8618(v97, v39 + 144);
  v43 = v87;
  *(v39 + 184) = v31;
  *(v39 + 192) = v43;
  *(v39 + 200) = 1;
  if (!v29)
  {
    v50 = v86;
    v89(v85, v86, v11);
    sub_26637C270(a3, &v92);

    v51 = v31;
    v52 = v43;

    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();
    v55 = v11;
    if (os_log_type_enabled(v53, v54))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v57 = v83;
    v83(v85, v11);
    v58 = v82;
    v89(v82, v50, v11);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06B8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v57;
      v63 = swift_slowAlloc();
      *&v92 = v63;
      *v61 = 134218498;
      *(v61 + 4) = 15;
      *(v61 + 12) = 2048;
      *(v61 + 14) = 13;
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v92);
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v61, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      v62(v58, v55);
    }

    else
    {

      v57(v58, v11);
    }

    v92 = xmmword_2664E8DA0;
    *&v93 = 0xE900000000000074;
    BYTE8(v93) = 1;
    v91(&v92);
    goto LABEL_20;
  }

  sub_26637C270(a3, &v92);

  v44 = v31;
  v45 = v43;

  [v29 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v87 = v29;
    v64 = v80;
    v65 = v86;
    v89(v80, v86, v11);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_26629C000, v66, v67, "Guaranteed cast to mutable RemoteControlDestination failed", v68, 2u);
      v69 = v68;
      v65 = v86;
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    v70 = v83;
    v83(v64, v11);
    v71 = v81;
    v89(v81, v65, v11);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06B8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v70;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v92 = v76;
      *v75 = 134218498;
      *(v75 + 4) = 15;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 22;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v92);
      _os_log_impl(&dword_26629C000, v72, v73, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v75, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);

      v74(v71, v11);
    }

    else
    {

      v70(v71, v11);
    }

    v92 = xmmword_2664E8D90;
    *&v93 = 0x80000002664F5AE0;
    BYTE8(v93) = 1;
    v91(&v92);

LABEL_20:

    sub_2662D2F30(v92, *(&v92 + 1), v93, SBYTE8(v93));
    return __swift_destroy_boxed_opaque_existential_1Tm(v98);
  }

  v46 = *&v97[0];
  [*&v97[0] setSingleGroup_];
  v47 = v44;
  v48 = v29;

  v49 = v46;
  sub_2664ADBE8(v48, v45, v48, v47, sub_26637C818, v39, v49, v79);

  return __swift_destroy_boxed_opaque_existential_1Tm(v98);
}