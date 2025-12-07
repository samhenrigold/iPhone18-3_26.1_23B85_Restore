BOOL sub_224A5FA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v7 = sub_224DACB98();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACC88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DABE18();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAB258();
  v22 = MEMORY[0x28223BE20](v20, v21);
  v78 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v70 - v25;
  v89[0] = 0;
  v83 = v28;
  v84 = v27;
  v29 = *(v28 + 16);
  v75 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v76 = v29;
  v77 = v28 + 16;
  (v29)(&v70 - v25, &v4[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger]);
  v30 = *(v16 + 16);
  v85 = a1;
  v30(v19, a1, v15);
  v79 = v11;
  v80 = v14;
  v31 = *(v11 + 16);
  v32 = v86;
  v82 = v10;
  v31(v14);

  v81 = v26;
  v33 = sub_224DAB228();
  v34 = sub_224DAF268();
  v35 = a2;

  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v88 = v37;
    *v36 = 136446722;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v70 = v33;
    v38 = sub_224DAFD28();
    v71 = v35;
    v40 = v39;
    (*(v16 + 8))(v19, v15);
    v41 = sub_224A33F74(v38, v40, &v88);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2082;
    v42 = v72;
    v43 = v34;
    v44 = v80;
    sub_224DACC68();
    sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v45 = v74;
    v46 = sub_224DAFD28();
    v48 = v47;
    (*(v73 + 8))(v42, v45);
    (*(v79 + 8))(v44, v82);
    v49 = sub_224A33F74(v46, v48, &v88);

    *(v36 + 14) = v49;
    *(v36 + 22) = 2082;
    v50 = v71;
    v51 = sub_224DAC268();
    v35 = v50;
    v52 = MEMORY[0x22AA5D380](v50, v51);
    v54 = sub_224A33F74(v52, v53, &v88);

    *(v36 + 24) = v54;
    v55 = v70;
    _os_log_impl(&dword_224A2F000, v70, v43, "%{public}s Trying cache for %{public}s of %{public}s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v37, -1, -1);
    v32 = v86;
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  else
  {

    (*(v79 + 8))(v80, v82);
    (*(v16 + 8))(v19, v15);
  }

  v56 = v84;
  v57 = *(v83 + 8);
  v57(v81, v84);
  v88 = sub_224A60D5C(MEMORY[0x277D84F90]);
  if (sub_224A601D4(v85, v32))
  {
    v58 = *(v35 + 16);
    if (v58)
    {
      v59 = *(sub_224DAC268() - 8);
      v60 = (v35 + ((*(v59 + 80) + 32) & ~*(v59 + 80)));
      v61 = *(v59 + 72);
      v62 = v58 - 1;
      do
      {
        v63 = v62;
        v87 = 0;
        v64 = MEMORY[0x22AA5E4C0]();
        sub_224A60F4C(v4, v60, &v88, v89, &v87);
        objc_autoreleasePoolPop(v64);
        if (v87)
        {
          break;
        }

        v62 = v63 - 1;
        v60 += v61;
      }

      while (v63);
    }
  }

  else
  {
    v89[0] = 1;
    v65 = v78;
    v76(v78, &v4[v75], v56);
    v66 = sub_224DAB228();
    v67 = sub_224DAF268();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_224A2F000, v66, v67, "Cache should not be consulted", v68, 2u);
      MEMORY[0x22AA5EED0](v68, -1, -1);
    }

    v57(v65, v56);
  }

  return (v89[0] & 1) == 0;
}

uint64_t sub_224A60144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A6018C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A601D4(uint64_t a1, uint64_t a2)
{
  v115 = a1;
  v118 = sub_224DACC88();
  v112 = *(v118 - 8);
  v4 = MEMORY[0x28223BE20](v118, v3);
  v108 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v119 = &v105 - v7;
  v8 = sub_224DABE18();
  v116 = *(v8 - 8);
  v117 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v110 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v106 = &v105 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v111 = &v105 - v16;
  v17 = sub_224DAB258();
  v120 = *(v17 - 8);
  v121 = v17;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v109 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19, v21);
  v107 = &v105 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v105 - v25;
  v27 = sub_224DACB98();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v105 - v34;
  sub_224DACC68();
  v36 = *(v28 + 104);
  v36(v32, *MEMORY[0x277CF9BF0], v27);
  v37 = sub_224DACB88();
  v38 = *(v28 + 8);
  v38(v32, v27);
  v113 = v38;
  v38(v35, v27);
  if (v37 & 1) != 0 || (sub_224DACC68(), v36(v32, *MEMORY[0x277CF9B60], v27), v39 = sub_224DACB88(), v40 = v113, v113(v32, v27), v40(v35, v27), (v39))
  {
    v41 = v120;
    v42 = v26;
    (*(v120 + 16))(v26, &v114[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v121);
    v43 = v116;
    v44 = v111;
    v45 = v117;
    (*(v116 + 16))(v111, v115, v117);
    v46 = v112;
    v47 = a2;
    v48 = v118;
    (*(v112 + 16))(v119, v47, v118);
    v115 = v42;
    v49 = sub_224DAB228();
    LODWORD(v114) = sub_224DAF2A8();
    if (os_log_type_enabled(v49, v114))
    {
      v50 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v122 = v110;
      *v50 = 136446466;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v109 = v49;
      v51 = sub_224DAFD28();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = sub_224A33F74(v51, v53, &v122);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      v55 = v119;
      sub_224DACC68();
      sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v56 = sub_224DAFD28();
      v58 = v57;
      v113(v35, v27);
      (*(v46 + 8))(v55, v118);
      v59 = sub_224A33F74(v56, v58, &v122);

      *(v50 + 14) = v59;
      v60 = v109;
      _os_log_impl(&dword_224A2F000, v109, v114, "%{public}s Checking cache because config reason is %{public}s", v50, 0x16u);
      v61 = v110;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v61, -1, -1);
      MEMORY[0x22AA5EED0](v50, -1, -1);

      (*(v120 + 8))(v115, v121);
    }

    else
    {

      (*(v46 + 8))(v119, v48);
      (*(v43 + 8))(v44, v45);
      (*(v41 + 8))(v115, v121);
    }

    return 1;
  }

  v62 = v115;
  v63 = sub_224DABDB8();
  v64 = [v63 isRemote];

  v65 = *(v120 + 16);
  v66 = v116;
  v67 = (v116 + 16);
  if (v64)
  {
    v68 = v107;
    v69 = v121;
    (v65)(v107, &v114[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v121);
    v70 = v106;
    v71 = v117;
    (*v67)(v106, v62, v117);
    v72 = sub_224DAB228();
    v73 = sub_224DAF2A8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v70;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v122 = v76;
      *v75 = 136446210;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v77 = sub_224DAFD28();
      v78 = v66;
      v80 = v79;
      (*(v78 + 8))(v74, v71);
      v81 = sub_224A33F74(v77, v80, &v122);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_224A2F000, v72, v73, "%{public}s Checking cache because extension is remote", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x22AA5EED0](v76, -1, -1);
      MEMORY[0x22AA5EED0](v75, -1, -1);
    }

    else
    {

      (*(v66 + 8))(v70, v71);
    }

    (*(v120 + 8))(v68, v69);
    return 1;
  }

  v82 = v109;
  v65();
  v83 = v117;
  (*v67)(v110, v62, v117);
  v84 = v112;
  v85 = v108;
  v86 = a2;
  v87 = v118;
  (*(v112 + 16))(v108, v86, v118);
  v88 = sub_224DAB228();
  LODWORD(v119) = sub_224DAF2A8();
  if (os_log_type_enabled(v88, v119))
  {
    v89 = swift_slowAlloc();
    v90 = v83;
    v115 = swift_slowAlloc();
    v122 = v115;
    *v89 = 136446466;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v91 = v110;
    v92 = sub_224DAFD28();
    v114 = v88;
    v93 = v92;
    v95 = v94;
    (*(v66 + 8))(v91, v90);
    v96 = sub_224A33F74(v93, v95, &v122);

    *(v89 + 4) = v96;
    *(v89 + 12) = 2082;
    v97 = v108;
    sub_224DACC68();
    sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v98 = sub_224DAFD28();
    v100 = v99;
    v113(v35, v27);
    (*(v84 + 8))(v97, v118);
    v101 = sub_224A33F74(v98, v100, &v122);

    *(v89 + 14) = v101;
    v102 = v114;
    _os_log_impl(&dword_224A2F000, v114, v119, "%{public}s Not checking cache (%{public}s)", v89, 0x16u);
    v103 = v115;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v103, -1, -1);
    MEMORY[0x22AA5EED0](v89, -1, -1);

    (*(v120 + 8))(v109, v121);
  }

  else
  {

    (*(v84 + 8))(v85, v87);
    (*(v66 + 8))(v110, v83);
    (*(v120 + 8))(v82, v121);
  }

  return 0;
}

unint64_t sub_224A60D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70E8, &unk_224DC3CD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70F0, &qword_224DB4968);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70E8, &unk_224DC3CD0);
      result = sub_224A61E5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC268();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_224A36F98(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_224A60F4C(void *a1, char *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v110 = a4;
  v109 = a5;
  v104 = a3;
  v7 = sub_224DAC268();
  v112 = *(v7 - 8);
  v113 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v108 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v105 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v103 = &v99 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v107 = (&v99 - v18);
  v19 = sub_224DAB258();
  v114 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v119 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v99 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v99 - v28;
  v30 = sub_224DAE6C8();
  v106 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v34 = v111;
  sub_224DAC418();
  if (!v34)
  {
    v108 = v33;
    v109 = v30;
    v101 = v29;
    v100 = v26;
    v111 = 0;
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    v119 = a2;
    v54 = sub_224DAC248();
    v55 = [v54 extensionIdentity];

    sub_224DAC6D8();
    v56 = a1;
    if (v116)
    {
      v99 = a1;
      sub_224A36F98(&v115, v117);
      __swift_project_boxed_opaque_existential_1(v118, v118[3]);
      v57 = v108;
      sub_224DAEAA8();
      v58 = sub_224DAE6B8();
      v60 = v59;
      (*(v106 + 8))(v57, v109);
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      if (v58 == sub_224DAE398() && v60 == v61)
      {

        v62 = v19;
        v63 = v113;
        v64 = v101;
        v65 = v107;
        v56 = v99;
LABEL_12:
        v102 = v62;
        v69 = v114;
        (*(v114 + 16))(v64, v56 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v62);
        v70 = v112;
        v71 = *(v112 + 16);
        v71(v65, v119, v63);
        v72 = sub_224DAB228();
        v73 = v63;
        v74 = sub_224DAF268();
        if (os_log_type_enabled(v72, v74))
        {
          v75 = swift_slowAlloc();
          v113 = v71;
          v76 = v75;
          v110 = swift_slowAlloc();
          *&v115 = v110;
          *v76 = 136446210;
          sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v77 = sub_224DAFD28();
          v78 = v65;
          v79 = v77;
          v81 = v80;
          (*(v70 + 8))(v78, v73);
          v82 = sub_224A33F74(v79, v81, &v115);

          *(v76 + 4) = v82;
          _os_log_impl(&dword_224A2F000, v72, v74, "%{public}s Cache hit", v76, 0xCu);
          v83 = v110;
          __swift_destroy_boxed_opaque_existential_1(v110);
          MEMORY[0x22AA5EED0](v83, -1, -1);
          v84 = v76;
          v71 = v113;
          MEMORY[0x22AA5EED0](v84, -1, -1);

          (*(v69 + 8))(v101, v102);
        }

        else
        {

          (*(v70 + 8))(v65, v73);
          (*(v69 + 8))(v64, v102);
        }

        v85 = v103;
        v71(v103, v119, v73);
        sub_224A3317C(v118, &v115);
        sub_224A61F30(&v115, v85);
        __swift_destroy_boxed_opaque_existential_1(v117);
        return __swift_destroy_boxed_opaque_existential_1(v118);
      }

      v68 = sub_224DAFD88();

      v62 = v19;
      v63 = v113;
      v64 = v101;
      v65 = v107;
      v56 = v99;
      if (v68)
      {
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(v117);
      v67 = v114;
    }

    else
    {
      sub_224A3311C(&v115, &unk_27D6F4700, &unk_224DB3A10);
      v62 = v19;
      v63 = v113;
      v67 = v114;
    }

    v86 = v100;
    (*(v67 + 16))(v100, v56 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v62);
    v87 = v112;
    v88 = v105;
    (*(v112 + 16))(v105, v119, v63);
    v89 = sub_224DAB228();
    v90 = sub_224DAF2A8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v102 = v62;
      v93 = v92;
      v117[0] = v92;
      *v91 = 136446210;
      sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v94 = sub_224DAFD28();
      v95 = v63;
      v97 = v96;
      (*(v87 + 8))(v88, v95);
      v98 = sub_224A33F74(v94, v97, v117);

      *(v91 + 4) = v98;
      _os_log_impl(&dword_224A2F000, v89, v90, "%{public}s Cache miss for extension bundle version difference (or extension didn't exist)", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x22AA5EED0](v93, -1, -1);
      MEMORY[0x22AA5EED0](v91, -1, -1);

      (*(v67 + 8))(v100, v102);
    }

    else
    {

      (*(v87 + 8))(v88, v63);
      (*(v67 + 8))(v86, v62);
    }

    *v110 = 1;
    return __swift_destroy_boxed_opaque_existential_1(v118);
  }

  v35 = v114;
  (*(v114 + 16))(v119, a1 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v19);
  v36 = v112;
  v37 = v113;
  v38 = v108;
  (*(v112 + 16))(v108, a2, v113);
  v39 = v34;
  v40 = sub_224DAB228();
  v41 = v19;
  v42 = sub_224DAF2A8();

  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v102 = v41;
    v44 = v43;
    v107 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v118[0] = v111;
    *v44 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v45 = sub_224DAFD28();
    v47 = v46;
    (*(v36 + 8))(v38, v37);
    v48 = sub_224A33F74(v45, v47, v118);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2114;
    v49 = v34;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v50;
    v51 = v107;
    *v107 = v50;
    _os_log_impl(&dword_224A2F000, v40, v42, "%{public}s Cache miss: %{public}@", v44, 0x16u);
    sub_224A3311C(v51, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v51, -1, -1);
    v52 = v111;
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x22AA5EED0](v52, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);

    result = (*(v35 + 8))(v119, v102);
  }

  else
  {

    (*(v36 + 8))(v38, v37);
    result = (*(v35 + 8))(v119, v41);
  }

  v66 = v109;
  *v110 = 1;
  *v66 = 1;
  return result;
}

void *sub_224A61AA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224A61BB4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v43 = a5(0);
  v45 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_224A61E5C(uint64_t a1)
{
  sub_224DAC268();
  v2 = MEMORY[0x277CF9978];
  sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CF9978], &qword_281350E48, v2, MEMORY[0x277CF9990]);
}

uint64_t sub_224A61F30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_224A36F98(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_224B230AC(v9, a2, isUniquelyReferenced_nonNull_native, &qword_27D6F70F0, &qword_224DB4968, sub_224A39D14, sub_224A39D14);
    v5 = sub_224DAC268();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_224A3311C(a1, &unk_27D6F3CB0, &unk_224DB7860);
    sub_224B0E3B8(a2, sub_224A39D14, &qword_27D6F70F0, &qword_224DB4968, sub_224A39D14, v9);
    v7 = sub_224DAC268();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_224A3311C(v9, &unk_27D6F3CB0, &unk_224DB7860);
  }

  return result;
}

uint64_t sub_224A620C0@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v265 = a3;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v272 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v5);
  v243 = v209 - v6;
  v242 = sub_224DAC268();
  v261 = *(v242 - 8);
  v8 = MEMORY[0x28223BE20](v242, v7);
  v241 = v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v240 = v209 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v222 = v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v234 = v209 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v233 = v209 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v252 = v209 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v253 = v209 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v239 = v209 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v250 = v209 - v32;
  v268 = sub_224DA9878();
  isa = v268[-1].isa;
  v34 = MEMORY[0x28223BE20](v268, v33);
  v221 = v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = v209 - v38;
  v41 = MEMORY[0x28223BE20](v37, v40);
  v235 = v209 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v263 = v209 - v44;
  v231 = sub_224DACB08();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231, v45);
  v232 = v209 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_224DACB28();
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228, v47);
  v229 = v209 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_224DAE4F8();
  v256 = *(v260 - 8);
  MEMORY[0x28223BE20](v260, v49);
  v259 = v209 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_224DAB728();
  v51 = *(v258 - 8);
  MEMORY[0x28223BE20](v258, v52);
  v257 = v209 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_224DABE18();
  v219 = *(v220 - 8);
  v55 = MEMORY[0x28223BE20](v220, v54);
  v215 = v209 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v217 = v209 - v59;
  MEMORY[0x28223BE20](v58, v60);
  v216 = v209 - v61;
  v271 = sub_224DAE928();
  v62 = *(v271 - 1);
  MEMORY[0x28223BE20](v271, v63);
  v270 = (v209 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_224DACB98();
  v66 = *(v65 - 8);
  v68 = MEMORY[0x28223BE20](v65, v67);
  v225 = v209 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v70);
  v72 = v209 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E0, &unk_224DBE988);
  v75 = MEMORY[0x28223BE20](v73 - 8, v74);
  v237 = v209 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v75, v77);
  v224 = v209 - v79;
  MEMORY[0x28223BE20](v78, v80);
  v82 = v209 - v81;
  v83 = sub_224DACC88();
  v236 = *(v83 - 8);
  v84 = *(v236 + 56);
  v264 = v82;
  v262 = v83;
  v255 = v236 + 56;
  v254 = v84;
  (v84)(v82, 1, 1);
  sub_224DACC68();
  v85 = (*(v66 + 88))(v72, v65);
  LODWORD(v82) = *MEMORY[0x277CF9BF0];
  v223 = v66;
  v86 = *(v66 + 8);
  v226 = v65;
  v86(v72, v65);
  v269 = a2;
  if (v85 != v82)
  {
    goto LABEL_35;
  }

  v218 = a1;
  v249 = v39;
  v87 = a2 + 64;
  v88 = 1 << *(a2 + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v89 & *(a2 + 64);
  v91 = (v88 + 63) >> 6;
  v247 = *MEMORY[0x277CE3D90];
  v266 = (v62 + 8);
  v267 = (v62 + 104);
  v246 = (v51 + 8);
  v245 = (v256 + 8);
  v238 = *MEMORY[0x277CE3D98];
  v213 = (v261 + 8);
  v212 = (v272 + 8);
  v211 = (isa + 48);
  v209[0] = isa + 32;
  v214 = (isa + 8);

  v92 = 0;
  if (!v90)
  {
LABEL_7:
    while (1)
    {
      v93 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      if (v93 >= v91)
      {

        v39 = v249;
        goto LABEL_35;
      }

      v90 = *(v87 + 8 * v93);
      ++v92;
      if (v90)
      {
        v92 = v93;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_75;
  }

  while (1)
  {
LABEL_11:
    while (1)
    {
      v94 = __clz(__rbit64(v90));
      v90 &= v90 - 1;
      v95 = *(*(a2 + 56) + ((v92 << 9) | (8 * v94)));
      sub_224DABE68();
      if (v274)
      {
        break;
      }

      sub_224A3311C(&v273, &unk_27D6F3CB0, &unk_224DB7860);
      if (!v90)
      {
        goto LABEL_7;
      }
    }

    v272 = v95;
    sub_224A39D14(&v273, &v275);
    __swift_project_boxed_opaque_existential_1(&v275, v276);
    v96 = sub_224DAEA98();
    v97 = *v267;
    v99 = v270;
    v98 = v271;
    (*v267)(v270, v247, v271);
    v100 = sub_224CD6930(v99, v96);

    v72 = *v266;
    (*v266)(v99, v98);
    if (v100)
    {
      v172 = v219;
      v173 = v216;
      v174 = v220;
      (*(v219 + 16))(v216, v218, v220);
      v175 = sub_224DAB228();
      v176 = sub_224DAF2A8();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        *&v273 = v178;
        *v177 = 136446210;
        sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
        v179 = sub_224DAFD28();
        v181 = v180;
        (*(v172 + 8))(v173, v174);
        v182 = sub_224A33F74(v179, v181, &v273);

        *(v177 + 4) = v182;
        _os_log_impl(&dword_224A2F000, v175, v176, "%{public}s Timeline will reload since it is stale", v177, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x22AA5EED0](v178, -1, -1);
        MEMORY[0x22AA5EED0](v177, -1, -1);
      }

      else
      {

        (*(v172 + 8))(v173, v174);
      }

      v39 = v249;
      v195 = v264;
      goto LABEL_70;
    }

    v256 = v97;
    sub_224DABE38();
    __swift_project_boxed_opaque_existential_1(&v273, v274);
    v101 = v257;
    sub_224DAD168();
    v261 = sub_224DAB668();
    v103 = v102;
    (*v246)(v101, v258);
    __swift_destroy_boxed_opaque_existential_1(&v273);
    __swift_project_boxed_opaque_existential_1(&v275, v276);
    v104 = v259;
    sub_224DAEA78();
    swift_getKeyPath();
    v105 = sub_224DAE4A8();

    (*v245)(v104, v260);
    if (v105)
    {
      if (v105[2])
      {
        v106 = v105[4];
        v107 = v105[5];
        sub_224A77FD0(v106, v107);
      }

      else
      {
        v106 = 0;
        v107 = 0xF000000000000000;
      }

      v108 = v103;
    }

    else
    {
      v106 = 0;
      v107 = 0xF000000000000000;
      v108 = v103;
    }

    v109 = v261;
    if (v108 >> 60 == 15)
    {
      if (v107 >> 60 != 15)
      {
        goto LABEL_63;
      }

      v110 = v261;
      v111 = v108;
      goto LABEL_25;
    }

    if (v107 >> 60 == 15)
    {
LABEL_63:
      sub_224A77FD0(v261, v108);
      sub_224AECAB0(v106, v107);
      sub_224AC1D9C(v109, v108);
      sub_224AC1D9C(v106, v107);
LABEL_64:
      v183 = v219;
      v184 = v217;
      v185 = v220;
      (*(v219 + 16))(v217, v218, v220);
      v186 = sub_224DAB228();
      v187 = sub_224DAF2A8();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *&v273 = v271;
        *v188 = 136446210;
        sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
        v189 = sub_224DAFD28();
        v190 = v184;
        v192 = v191;
        (*(v183 + 8))(v190, v185);
        v193 = sub_224A33F74(v189, v192, &v273);

        *(v188 + 4) = v193;
        _os_log_impl(&dword_224A2F000, v186, v187, "%{public}s Timeline will reload since its locale token is out of date", v188, 0xCu);
        v194 = v271;
        __swift_destroy_boxed_opaque_existential_1(v271);
        MEMORY[0x22AA5EED0](v194, -1, -1);
        MEMORY[0x22AA5EED0](v188, -1, -1);
        sub_224A78024(v261, v108);
        sub_224AC1D9C(v106, v107);
      }

      else
      {
        sub_224A78024(v109, v108);
        sub_224AC1D9C(v106, v107);

        (*(v183 + 8))(v184, v185);
      }

      v39 = v249;
      v195 = v264;
LABEL_70:
      (*(v227 + 104))(v229, *MEMORY[0x277CF9B50], v228);
      (*(v230 + 104))(v232, *MEMORY[0x277CF9B40], v231);
      (*(v223 + 104))(v225, *MEMORY[0x277CF9BE8], v226);
      sub_224DACC48();
      v196 = v224;
      sub_224DACC38();

      goto LABEL_71;
    }

    sub_224A77FD0(v261, v108);
    sub_224A77FD0(v109, v108);
    sub_224AECAB0(v106, v107);
    v112 = sub_224CCC88C(v109, v108, v106, v107);
    sub_224A78024(v109, v108);
    sub_224AC1D9C(v106, v107);
    sub_224AC1D9C(v109, v108);
    if (!v112)
    {
      goto LABEL_64;
    }

    sub_224A78024(v109, v108);
    v110 = v106;
    v111 = v107;
LABEL_25:
    sub_224AC1D9C(v110, v111);
    __swift_project_boxed_opaque_existential_1(&v275, v276);
    a1 = sub_224DAEA98();
    v114 = v270;
    v113 = v271;
    (v256)(v270, v238, v271);
    v115 = sub_224CD6930(v114, a1);

    (v72)(v114, v113);
    if ((v115 & 1) == 0)
    {

LABEL_31:
      a2 = v269;
      goto LABEL_32;
    }

    v261 = v91;
    __swift_project_boxed_opaque_existential_1(&v275, v276);
    sub_224DAEA88();
    v210 = v248[10];
    v256 = v248[11];
    v209[1] = __swift_project_boxed_opaque_existential_1(v248 + 7, v210);
    v116 = v240;
    sub_224DABE58();
    v117 = sub_224DAC248();
    v118 = *v213;
    v119 = v242;
    (*v213)(v116, v242);
    v120 = [v117 extensionIdentity];

    v121 = v243;
    sub_224DAF528();

    v122 = v241;
    sub_224DABE58();
    v123 = sub_224DAC248();
    v118(v122, v119);
    v124 = [v123 kind];

    sub_224DAEE18();
    v72 = v250;
    sub_224DAD1A8();

    (*v212)(v121, v244);
    v125 = v239;
    sub_224A3796C(v72, v239, &qword_27D6F32B0, &qword_224DB3EA0);
    a1 = v268;
    if ((*v211)(v125, 1, v268) != 1)
    {
      break;
    }

    sub_224A3311C(v72, &qword_27D6F32B0, &qword_224DB3EA0);
    (*v214)(v263, a1);
    sub_224A3311C(v125, &qword_27D6F32B0, &qword_224DB3EA0);
    a2 = v269;
    v91 = v261;
LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(&v275);
    if (!v90)
    {
      goto LABEL_7;
    }
  }

  v72 = v235;
  (*v209[0])(v235, v125, a1);
  v126 = sub_224DA9788();
  v91 = v261;
  if ((v126 & 1) == 0)
  {
    v127 = a1;

    a1 = *v214;
    (*v214)(v72, v127);
    sub_224A3311C(v250, &qword_27D6F32B0, &qword_224DB3EA0);
    (a1)(v263, v127);
    goto LABEL_31;
  }

  v91 = v219;
  v90 = v215;
  v87 = v220;
  (*(v219 + 16))(v215, v218, v220);
  a1 = sub_224DAB228();
  v197 = sub_224DAF2A8();
  if (!os_log_type_enabled(a1, v197))
  {
LABEL_75:

    (*(v91 + 8))(v90, v87);
    goto LABEL_76;
  }

  v198 = swift_slowAlloc();
  v199 = swift_slowAlloc();
  *&v273 = v199;
  *v198 = 136446210;
  sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
  v200 = sub_224DAFD28();
  v201 = v90;
  v203 = v202;
  (*(v91 + 8))(v201, v87);
  v204 = sub_224A33F74(v200, v203, &v273);

  *(v198 + 4) = v204;
  _os_log_impl(&dword_224A2F000, a1, v197, "%{public}s Timeline will reload since it was previously removed from the store and its reload date is > current archive creation date.", v198, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v199);
  MEMORY[0x22AA5EED0](v199, -1, -1);
  MEMORY[0x22AA5EED0](v198, -1, -1);

LABEL_76:
  v39 = v249;
  v205 = v263;
  v195 = v264;
  v206 = v250;
  (*(v227 + 104))(v229, *MEMORY[0x277CF9B50], v228);
  (*(v230 + 104))(v232, *MEMORY[0x277CF9B40], v231);
  (*(v223 + 104))(v225, *MEMORY[0x277CF9BE8], v226);
  sub_224DACC48();
  v196 = v224;
  sub_224DACC38();

  v207 = *v214;
  v208 = v268;
  (*v214)(v72, v268);
  sub_224A3311C(v206, &qword_27D6F32B0, &qword_224DB3EA0);
  (v207)(v205, v208);
LABEL_71:
  sub_224A3311C(v195, &qword_27D6F61E0, &unk_224DBE988);
  v254(v196, 0, 1, v262);
  sub_224A64134(v196, v195);
  __swift_destroy_boxed_opaque_existential_1(&v275);
LABEL_35:
  v128 = sub_224DABDB8();
  v129 = &v128[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v130 = *(v129 + 1);

  if (v130)
  {

    sub_224A3311C(v264, &qword_27D6F61E0, &unk_224DBE988);
    return (v254)(v265, 1, 1, v262);
  }

  v132 = v264;
  v133 = v237;
  sub_224A3796C(v264, v237, &qword_27D6F61E0, &unk_224DBE988);
  v134 = (*(v236 + 48))(v133, 1, v262);
  sub_224A3311C(v133, &qword_27D6F61E0, &unk_224DBE988);
  v135 = v265;
  if (v134 != 1)
  {
    return sub_224A64134(v132, v135);
  }

  v136 = (isa + 56);
  v266 = *(isa + 7);
  (v266)(v253, 1, 1, v268);
  v137 = v269;
  v138 = v269 + 64;
  v139 = 1 << *(v269 + 32);
  v140 = -1;
  if (v139 < 64)
  {
    v140 = ~(-1 << v139);
  }

  v141 = v140 & *(v269 + 64);
  v142 = (v139 + 63) >> 6;
  v272 = (v136 - 1);
  v270 = v136 - 3;
  v267 = v136;
  v263 = (v136 - 6);

  v143 = 0;
  v249 = v39;
  while (v141)
  {
LABEL_48:
    v146 = __clz(__rbit64(v141));
    v141 &= v141 - 1;
    v147 = *(*(v137 + 56) + ((v143 << 9) | (8 * v146)));
    sub_224DABE68();
    v148 = v276;
    if (!v276)
    {

      sub_224A3311C(&v275, &unk_27D6F3CB0, &unk_224DB7860);
      v144 = v252;
      (v266)(v252, 1, 1, v268);
LABEL_42:
      result = sub_224A3311C(v144, &qword_27D6F32B0, &qword_224DB3EA0);
      continue;
    }

    v149 = __swift_project_boxed_opaque_existential_1(&v275, v276);
    v271 = v209;
    v150 = *(v148 - 8);
    MEMORY[0x28223BE20](v149, v149);
    v152 = v209 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v150 + 16))(v152);
    sub_224A3311C(&v275, &unk_27D6F3CB0, &unk_224DB7860);
    v153 = v252;
    sub_224DAEAD8();
    v154 = v148;
    v144 = v153;
    (*(v150 + 8))(v152, v154);
    v155 = *v272;
    v156 = v268;
    if ((*v272)(v153, 1, v268) == 1)
    {

      v135 = v265;
      v137 = v269;
      goto LABEL_42;
    }

    v271 = *v270;
    (v271)(v249, v153, v156);
    v157 = v253;
    v158 = v234;
    sub_224A3796C(v253, v234, &qword_27D6F32B0, &qword_224DB3EA0);
    v159 = v155(v158, 1, v156);
    v137 = v269;
    if (v159 == 1)
    {

      sub_224A3311C(v158, &qword_27D6F32B0, &qword_224DB3EA0);
      v160 = v249;
LABEL_55:
      v164 = v253;
      sub_224A3311C(v253, &qword_27D6F32B0, &qword_224DB3EA0);
      (v271)(v164, v160, v156);
      result = (v266)(v164, 0, 1, v156);
      v135 = v265;
      continue;
    }

    sub_224A3311C(v158, &qword_27D6F32B0, &qword_224DB3EA0);
    v161 = v222;
    sub_224A3796C(v157, v222, &qword_27D6F32B0, &qword_224DB3EA0);
    result = (v155)(v161, 1, v156);
    if (result == 1)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    v160 = v249;
    v162 = sub_224DA9798();

    v163 = *v263;
    (*v263)(v161, v156);
    if (v162)
    {
      goto LABEL_55;
    }

    result = v163(v160, v156, &qword_224DB3EA0);
    v135 = v265;
  }

  while (1)
  {
    v145 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v145 >= v142)
    {
      break;
    }

    v141 = *(v138 + 8 * v145);
    ++v143;
    if (v141)
    {
      v143 = v145;
      goto LABEL_48;
    }
  }

  v165 = v253;
  v166 = v233;
  sub_224A3796C(v253, v233, &qword_27D6F32B0, &qword_224DB3EA0);
  v167 = v268;
  if ((*v272)(v166, 1, v268) == 1)
  {
    sub_224A3311C(v165, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224A3311C(v166, &qword_27D6F32B0, &qword_224DB3EA0);
    v132 = v264;
  }

  else
  {
    v168 = isa;
    v169 = v221;
    (*(isa + 4))(v221, v166, v167);
    v170 = v229;
    (*(v168 + 2))(v229, v169, v167);
    (*(v227 + 104))(v170, *MEMORY[0x277CF9B58], v228);
    (*(v230 + 104))(v232, *MEMORY[0x277CF9B48], v231);
    (*(v223 + 104))(v225, *MEMORY[0x277CF9BA0], v226);
    sub_224DACC48();
    v171 = v224;
    sub_224DACC38();
    (*(v168 + 1))(v169, v167);
    sub_224A3311C(v165, &qword_27D6F32B0, &qword_224DB3EA0);
    v132 = v264;
    sub_224A3311C(v264, &qword_27D6F61E0, &unk_224DBE988);
    v254(v171, 0, 1, v262);
    sub_224A64134(v171, v132);
  }

  return sub_224A64134(v132, v135);
}

uint64_t sub_224A64134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E0, &unk_224DBE988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A641C8@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a1;
  v64 = a3;
  v4 = sub_224DACB98();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v60 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_224DABE18();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v56 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_224DACB08();
  v63 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v54[-v16];
  v18 = sub_224DACB28();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v54[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v54[-v25];
  sub_224DACC58();
  (*(v19 + 104))(v23, *MEMORY[0x277CF9B50], v18);
  v27 = MEMORY[0x22AA5AE80](v26, v23);
  v28 = *(v19 + 8);
  v28(v23, v18);
  v59 = v26;
  v28(v26, v18);
  v29 = a2;
  if (v27 & 1) != 0 && (sub_224DACC08(), v30 = v63, v31 = v63[13], (v31)(v14, *MEMORY[0x277CF9B48], v10), v32 = sub_224DACAF8(), v33 = v30[1], v33(v14, v10), v33(v17, v10), (v32) && (sub_224DACBD8() & 1) != 0 && ((__swift_project_boxed_opaque_existential_1(v62 + 2, v62[5]), v34 = sub_224DABDB8(), v65 = 0, v66 = 1, sub_224A42660(v34, &v65), v36 = v35, v34, (v36) || (__swift_project_boxed_opaque_existential_1(v62 + 2, v62[5]), v37 = sub_224DABDB8(), v38 = sub_224A4507C(v37), v37, (v38)))
  {
    v63 = v31;
    v40 = v56;
    v39 = v57;
    v41 = v58;
    (*(v57 + 16))(v56, v61, v58);
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v61 = v44;
      v62 = swift_slowAlloc();
      v65 = v62;
      *v44 = 136446210;
      sub_224CCCE00(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v55 = v43;
      v45 = sub_224DAFD28();
      v47 = v46;
      (*(v39 + 8))(v40, v41);
      v48 = sub_224A33F74(v45, v47, &v65);

      v49 = v61;
      *(v61 + 1) = v48;
      v50 = v49;
      _os_log_impl(&dword_224A2F000, v42, v55, "%{public}s Overriding budgeted configuration with free", v49, 0xCu);
      v51 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }

    sub_224DACC58();
    (v63)(v17, *MEMORY[0x277CF9B40], v10);
    sub_224DACC68();
    sub_224DACBB8();
    sub_224DACBE8();
    return sub_224DACC18();
  }

  else
  {
    v52 = sub_224DACC88();
    return (*(*(v52 - 8) + 16))(v64, v29, v52);
  }
}

uint64_t sub_224A647BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v342 = a5;
  v341 = a4;
  v365 = a3;
  v357 = a2;
  v358 = a1;
  v350 = sub_224DACC88();
  v346 = *(v350 - 8);
  v6 = MEMORY[0x28223BE20](v350, v5);
  v336 = &v322 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v349 = &v322 - v9;
  v355 = sub_224DABE18();
  v359 = *(v355 - 8);
  v11 = MEMORY[0x28223BE20](v355, v10);
  v335 = &v322 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v333 = &v322 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v326 = &v322 - v17;
  v331 = sub_224DA9908();
  v330 = *(v331 - 8);
  MEMORY[0x28223BE20](v331, v18);
  v329 = &v322 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for ExtensionTask.Identifier(0);
  v21 = MEMORY[0x28223BE20](v328, v20);
  v348 = &v322 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v356 = &v322 - v24;
  v381 = sub_224DAB258();
  v361 = *(v381 - 8);
  v26 = MEMORY[0x28223BE20](v381, v25);
  v339 = &v322 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v323 = &v322 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v375 = &v322 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v367 = &v322 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v368 = &v322 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v322 - v41;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v387 = *(v396 - 8);
  v44 = MEMORY[0x28223BE20](v396, v43);
  v338 = &v322 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v337 = &v322 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v363 = &v322 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v373 = &v322 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v382 = &v322 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v388 = &v322 - v60;
  MEMORY[0x28223BE20](v59, v61);
  v386 = &v322 - v62;
  v376 = sub_224DAC268();
  v394 = *(v376 - 8);
  v64 = MEMORY[0x28223BE20](v376, v63);
  v343 = &v322 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v64, v66);
  v69 = &v322 - v68;
  MEMORY[0x28223BE20](v67, v70);
  v362 = &v322 - v71;
  v379 = sub_224DACB08();
  v378 = *(v379 - 8);
  MEMORY[0x28223BE20](v379, v72);
  v377 = &v322 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v75 = *(v74 - 8);
  v77 = MEMORY[0x28223BE20](v74, v76);
  v389 = (&v322 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = MEMORY[0x28223BE20](v77, v79);
  v364 = &v322 - v81;
  MEMORY[0x28223BE20](v80, v82);
  v325 = &v322 - v83;
  v384 = sub_224DACB28();
  v383 = *(v384 - 8);
  v85 = MEMORY[0x28223BE20](v384, v84);
  v371 = &v322 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85, v87);
  v340 = &v322 - v88;
  v345 = sub_224DA9878();
  v344 = *(v345 - 8);
  v90 = MEMORY[0x28223BE20](v345, v89);
  v327 = &v322 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v92);
  v324 = &v322 - v93;
  v354 = sub_224DACB98();
  v353 = *(v354 - 8);
  v95 = MEMORY[0x28223BE20](v354, v94);
  v372 = &v322 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95, v97);
  v352 = &v322 - v98;
  v99 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v101 = MEMORY[0x28223BE20](v99 - 8, v100);
  v347 = &v322 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101, v103);
  v105 = &v322 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v107 = *(v75 + 72);
  v108 = *(v75 + 80);
  v109 = ((v108 + 32) & ~v108);
  v395 = v107;
  v380 = v106;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_224DB3100;
  v111 = *MEMORY[0x277CE3D30];
  v112 = sub_224DAE8B8();
  v113 = *(v112 - 8);
  v393 = *(v113 + 104);
  (v393)(&v109[v110], v111, v112);
  v114 = *(v113 + 56);
  v114(&v109[v110], 0, 5, v112);
  v400 = v110;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v116 = *(v115 - 8);
  v117 = *(v116 + 56);
  v360 = v105;
  v370 = v115;
  v369 = v117;
  *&v366 = v116 + 56;
  (v117)(v105, 1, 1);
  v351 = *(v374 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview);
  v390 = v114;
  v391 = (v113 + 56);
  v392 = v109;
  v385 = (v113 + 104);
  if (v351 == 1)
  {

    v118 = v395;
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_224DB30F0;
    v114(&v109[v119], 3, 5, v112);
    (v393)(&v109[v119 + v118], *MEMORY[0x277CE3D18], v112);
    v114(&v109[v119 + v118], 0, 5, v112);
    v400 = v119;
    v120 = v352;
    sub_224DACC68();
    LOBYTE(v119) = sub_224DACB48();
    (*(v353 + 8))(v120, v354);
    v121 = v112;
    if ((v119 & 1) == 0)
    {
      v134 = 0;
      v133 = 1;
      v143 = v376;
      v126 = v382;
      if ((sub_224DACBC8() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    v122 = v340;
    sub_224DACC58();
    v123 = v383;
    v124 = v384;
    v125 = (*(v383 + 88))(v122, v384);
    v126 = v382;
    if (v125 == *MEMORY[0x277CF9B58])
    {
      v127 = v360;
      sub_224A3D238(v360, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      (*(v123 + 96))(v122, v124);
      v128 = *(v344 + 32);
      v129 = v324;
      v130 = v122;
      v131 = v345;
      v128(v324, v130, v345);
      v132 = v370;
      v384 = *(v370 + 48);
      v128(v127, v129, v131);
      *(v127 + v384) = 0x408C200000000000;
      v133 = 1;
      (v369)(v127, 0, 1, v132);
      v134 = 0;
    }

    else
    {
      (*(v123 + 8))(v122, v124);
      v134 = 0;
      v133 = 1;
    }

    goto LABEL_25;
  }

  v340 = v108;
  v135 = v112;
  v136 = v371;
  sub_224DACC58();
  v137 = v383;
  v138 = v384;
  v139 = (*(v383 + 88))(v136, v384);
  if (v139 == *MEMORY[0x277CF9B58])
  {
    v140 = v360;
    sub_224A3D238(v360, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    (*(v137 + 96))(v136, v138);
    v141 = v370;
    v142 = *(v370 + 48);
    (*(v344 + 32))(v140, v136, v345);
    *(v140 + v142) = 0x408C200000000000;
    (v369)(v140, 0, 1, v141);
    v126 = v382;
    v121 = v135;
  }

  else
  {
    v126 = v382;
    v121 = v135;
    if (v139 == *MEMORY[0x277CF9B50])
    {
      v144 = v325;
      (v393)(v325, *MEMORY[0x277CE3D28], v121);
      (v390)(v144, 0, 5, v121);
      v146 = *(v110 + 16);
      v145 = *(v110 + 24);
      if (v146 >= v145 >> 1)
      {
        v110 = sub_224AD946C((v145 > 1), v146 + 1, 1, v110);
      }

      *(v110 + 16) = v146 + 1;
      sub_224B442EC(v144, &v392[v110 + v146 * v395]);
      v400 = v110;
    }

    else
    {
      (*(v137 + 8))(v136, v138);
    }
  }

  v147 = v352;
  sub_224DACC68();
  v148 = v353;
  v149 = v372;
  v150 = v354;
  (*(v353 + 104))(v372, *MEMORY[0x277CF9BC0], v354);
  v151 = sub_224DACB88();
  v152 = *(v148 + 8);
  v152(v149, v150);
  v152(v147, v150);
  if (v151)
  {
    v153 = v395;
    v154 = v392;
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_224DB30F0;
    v156 = &v154[v155];
    (v393)(v156, *MEMORY[0x277CE3D18], v121);
    v157 = v390;
    (v390)(v156, 0, 5, v121);
    v157(&v153[v156], 3, 5, v121);
    sub_224B42B34(v155);
  }

  v158 = v377;
  sub_224DACC08();
  v159 = v378;
  v160 = v379;
  if ((v378[11])(v158, v379) != *MEMORY[0x277CF9B40])
  {
    (v159[1])(v158, v160);
    v133 = 0;
    v134 = 1;
LABEL_25:
    v143 = v376;
    goto LABEL_26;
  }

  v161 = v364;
  (v390)(v364, 3, 5, v121);
  v162 = v400;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143 = v376;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v162 = sub_224AD946C(0, v162[2] + 1, 1, v162);
  }

  v165 = v162[2];
  v164 = v162[3];
  if (v165 >= v164 >> 1)
  {
    v162 = sub_224AD946C((v164 > 1), v165 + 1, 1, v162);
  }

  v162[2] = v165 + 1;
  sub_224B442EC(v161, &v392[v162 + v165 * v395]);
  v134 = 0;
  v400 = v162;
  v133 = 1;
LABEL_26:
  if ((sub_224DACBC8() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v166 = v389;
  (v393)(v389, *MEMORY[0x277CE3D20], v121);
  (v390)(v166, 0, 5, v121);
  v167 = v400;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v167 = sub_224AD946C(0, v167[2] + 1, 1, v167);
  }

  v168 = v392;
  v170 = v167[2];
  v169 = v167[3];
  if (v170 >= v169 >> 1)
  {
    v167 = sub_224AD946C((v169 > 1), v170 + 1, 1, v167);
  }

  v167[2] = v170 + 1;
  sub_224B442EC(v389, &v168[v167 + v170 * v395]);
  v400 = v167;
LABEL_32:
  v171 = *(v357 + 16);
  if (v171)
  {
    v324 = v134;
    LODWORD(v325) = v133;
    v172 = v394 + 16;
    v173 = v171;
    v174 = v357 + ((v394[80] + 32) & ~v394[80]);
    v393 = *(v394 + 2);
    (v393)(v362, v174, v143);
    v390 = *(v172 + 7);
    v394 = v172;
    v175 = v172 - 8;
    v392 = (v387 + 48);
    v385 = (v387 + 32);
    v395 = MEMORY[0x277D84F90];
    v384 = v174;
    v176 = v174;
    v340 = v173;
    v134 = &unk_224DB3580;
    do
    {
      (v393)(v69, v176, v143);
      sub_224DAC218();
      v391 = *v175;
      v391(v69, v143);
      v178 = v396;
      v389 = *v392;
      if ((v389)(v42, 1, v396) == 1)
      {
        sub_224A3311C(v42, &qword_27D6F56C0, &unk_224DB3580);
      }

      else
      {
        v179 = *v385;
        (*v385)(v386, v42, v178);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v180 = v395;
        }

        else
        {
          v180 = sub_224AD9734(0, v395[2] + 1, 1, v395);
        }

        v182 = v180[2];
        v181 = v180[3];
        if (v182 >= v181 >> 1)
        {
          v180 = sub_224AD9734((v181 > 1), v182 + 1, 1, v180);
        }

        v180[2] = v182 + 1;
        v183 = (*(v387 + 80) + 32) & ~*(v387 + 80);
        v395 = v180;
        v179(v180 + v183 + *(v387 + 72) * v182, v386, v396);
        v143 = v376;
        v126 = v382;
      }

      v176 += v390;
      --v173;
    }

    while (v173);
    v369 = v175;
    v184 = v395;
    v380 = v395[2];
    if (v380)
    {
      v185 = 0;
      v378 = (v374 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService);
      v372 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
      v371 = (v361 + 16);
      v370 = v361 + 8;
      v364 = MEMORY[0x277D84F90];
      v377 = (v387 + 8);
      v186 = (v387 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      *&v177 = 136315138;
      v366 = v177;
      v187 = v396;
      v379 = v387 + 16;
      while (1)
      {
        if (v185 >= *(v184 + 2))
        {
          __break(1u);
          goto LABEL_90;
        }

        v386 = v186;
        v188 = (*(v387 + 80) + 32) & ~*(v387 + 80);
        v189 = *(v387 + 72);
        v190 = *(v387 + 16);
        v191 = v388;
        v190(v388, &v184[v188 + v189 * v185], v187);
        v190(v126, v191, v187);
        v192 = v378[3];
        v134 = v378[4];
        __swift_project_boxed_opaque_existential_1(v378, v192);
        if ((*(v134 + 40))(v126, v192, v134))
        {
          v187 = v396;
          sub_224DAA1F8();
          v193 = sub_224DAA048();

          v194 = *v377;
          (*v377)(v126, v187);
          if (v193)
          {
            v195 = *v385;
            (*v385)(v363, v388, v187);
            v196 = v364;
            v197 = swift_isUniquelyReferenced_nonNull_native();
            v398[0] = v196;
            if (v197)
            {
              v198 = v196;
            }

            else
            {
              sub_224ADA564(0, *(v196 + 16) + 1, 1);
              v187 = v396;
              v198 = v398[0];
            }

            v134 = *(v198 + 16);
            v199 = *(v198 + 24);
            if (v134 >= v199 >> 1)
            {
              sub_224ADA564((v199 > 1), v134 + 1, 1);
              v187 = v396;
              v198 = v398[0];
            }

            *(v198 + 16) = v134 + 1;
            v364 = v198;
            v195((v198 + v188 + v134 * v189), v363, v187);
            v186 = v386;
            goto LABEL_52;
          }

          v186 = v386;
        }

        else
        {
          v194 = *v377;
          v187 = v396;
          v186 = v386;
          (*v377)(v126, v396);
        }

        v194(v388, v187);
LABEL_52:
        ++v185;
        v184 = v395;
        if (v380 == v185)
        {
          goto LABEL_60;
        }
      }
    }

    v364 = MEMORY[0x277D84F90];
LABEL_60:

    v200 = (v387 + 8);
    v201 = v340 + 1;
    v134 = v376;
    v202 = v343;
    while (1)
    {
      if (!--v201)
      {
        v209 = sub_224A67760(v364);

        v399 = v209;
        goto LABEL_70;
      }

      (v393)(v202, v384, v134);
      v203 = v368;
      sub_224DAC218();
      v204 = v396;
      v205 = v389;
      if ((v389)(v203, 1, v396) == 1)
      {
        break;
      }

      sub_224A3311C(v203, &qword_27D6F56C0, &unk_224DB3580);
      v206 = v367;
      sub_224DAC218();
      result = v205(v206, 1, v204);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v384 += v390;
      sub_224DAA1F8();
      (*v200)(v206, v204);
      v208 = sub_224DAA048();

      v391(v202, v134);
      if ((v208 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v391(v202, v134);
    sub_224A3311C(v203, &qword_27D6F56C0, &unk_224DB3580);
LABEL_68:
    v210 = sub_224A67760(v364);

    v399 = v210;
    if (qword_281351880 != -1)
    {
      goto LABEL_91;
    }
  }

  else
  {
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v211 = v396;
  v212 = __swift_project_value_buffer(v396, qword_281365198);
  v213 = v387 + 16;
  v214 = v338;
  (*(v387 + 16))(v338, v212, v211);
  v215 = v337;
  sub_224A67790(v337, v214);
  (*(v213 - 8))(v215, v211);
  v209 = v399;
LABEL_70:
  v216 = v356;
  v217 = v355;
  if (!*(v209 + 16))
  {

    v218 = v323;
    v219 = v381;
    (*(v361 + 16))(v323, v374 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v381);
    v220 = sub_224DAB228();
    v221 = sub_224DAF288();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&dword_224A2F000, v220, v221, "No hosts to schedule reloads for.", v222, 2u);
      v223 = v222;
      v219 = v381;
      MEMORY[0x22AA5EED0](v223, -1, -1);
    }

    (*(v361 + 8))(v218, v219);
    v341(0, 0);
    v391(v362, v134);
    sub_224A3D238(v360, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    return 0;
  }

  if (!v351)
  {
    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v226 = *(v225 + 48);
    (*(v359 + 16))(v216, v358, v217);
    *(v216 + v226) = sub_224A67D38();
    v227 = *(v209 + 16);
    if (v227)
    {
      v228 = sub_224A6DE18(*(v209 + 16), 0);
      v229 = sub_224A6DF20(v398, &v228[(*(v387 + 80) + 32) & ~*(v387 + 80)], v227, v209);
      sub_224A3B7E4(v398[0]);
      if (v229 == v227)
      {
LABEL_80:
        *(v216 + *(v225 + 64)) = v228;
        goto LABEL_81;
      }

      __break(1u);
    }

    v228 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  (*(v359 + 16))(v216, v358, v217);
LABEL_81:
  swift_storeEnumTagMultiPayload();
  v230 = v348;
  sub_224A4152C(v216, v348, type metadata accessor for ExtensionTask.Identifier);
  v231 = sub_224DAC248();
  v232 = [v231 extensionIdentity];

  v233 = v347;
  sub_224A4152C(v360, v347, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v392 = v400;
  LODWORD(v396) = sub_224DACBD8();
  v393 = type metadata accessor for ExtensionTask(0);
  v234 = objc_allocWithZone(v393);
  sub_224DAE908();
  v235 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v236 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v237 = sub_224DAC938();
  v390 = *(v237 - 1);
  v394 = *(v390 + 56);
  v395 = v237;
  (v394)(&v234[v236], 1, 1);
  v238 = &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v238 = 0;
  v238[1] = 0;
  v239 = &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v239 = 0;
  v239[1] = 0;
  v240 = &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v240 = 0;
  v240[1] = 0;
  v241 = &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v241 = 0;
  v241[1] = 0;
  v242 = v327;
  sub_224DA9868();
  (*(v344 + 32))(&v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v242, v345);
  *&v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v232;
  sub_224A4152C(v233, &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v234[v235] = v392;
  v392 = v232;

  v243 = &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v243 = v324;
  v243[8] = v325;
  sub_224A4152C(v230, &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v244 = v329;
  sub_224DA98F8();
  v245 = v330;
  v246 = v331;
  (*(v330 + 16))(&v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v244, v331);
  v398[0] = sub_224DA98E8();
  sub_224A3F6A4();
  v247 = sub_224DAEF18();
  v249 = sub_224A3D19C(8, v247, v248);
  v251 = v250;
  v253 = v252;
  v255 = v254;

  v256 = MEMORY[0x22AA5D1C0](v249, v251, v253, v255);
  v258 = v257;

  v259 = &v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v259 = v256;
  v259[1] = v258;
  v234[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = v396 & 1;
  v397.receiver = v234;
  v397.super_class = v393;
  v396 = objc_msgSendSuper2(&v397, sel_init);

  (*(v245 + 8))(v244, v246);
  sub_224A3D238(v347, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D238(v348, type metadata accessor for ExtensionTask.Identifier);
  if (v351)
  {
    v260 = v326;
    v261 = v395;
    (*(v390 + 104))(v326, *MEMORY[0x277CF9B00], v395);
    v262 = v346;
    v263 = v359;
    v264 = v365;
    v265 = v261;
  }

  else
  {
    v266 = v352;
    v264 = v365;
    sub_224DACC68();
    v260 = v326;
    sub_224DACB38();
    (*(v353 + 8))(v266, v354);
    v262 = v346;
    v263 = v359;
    v265 = v395;
  }

  (v394)(v260, 0, 1, v265);
  v267 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v268 = v396;
  swift_beginAccess();
  sub_224A6E1D0(v260, v268 + v267);
  swift_endAccess();
  v269 = swift_allocObject();
  v269[2] = 0;
  v270 = *(v263 + 16);
  v393 = (v263 + 16);
  v394 = v270;
  v271 = v333;
  v272 = v355;
  (v270)(v333, v358, v355);
  v273 = *(v262 + 16);
  v390 = v262 + 16;
  v392 = v273;
  (v273)(v349, v264, v350);
  v274 = (*(v263 + 80) + 24) & ~*(v263 + 80);
  v275 = (v332 + v274 + 7) & 0xFFFFFFFFFFFFFFF8;
  v276 = (*(v262 + 80) + v275 + 8) & ~*(v262 + 80);
  v277 = (v334 + v276 + 7) & 0xFFFFFFFFFFFFFFF8;
  v278 = swift_allocObject();
  *(v278 + 16) = v374;
  (*(v263 + 32))(v278 + v274, v271, v272);
  *(v278 + v275) = v357;
  v279 = *(v262 + 32);
  v280 = v350;
  v279(v278 + v276, v349, v350);
  *(v278 + v277) = v269;
  v281 = v396;
  v282 = (v396 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v283 = *(v396 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v284 = *(v396 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v282 = sub_224A8EDA4;
  v282[1] = v278;
  v285 = v374;

  v286 = v272;

  sub_224A3D418(v283, v284);
  v287 = swift_allocObject();
  v288 = v342;
  *(v287 + 2) = v341;
  *(v287 + 3) = v288;
  *(v287 + 4) = v269;
  v289 = (v281 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v290 = *(v281 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v291 = *(v281 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v289 = sub_224A8B280;
  v289[1] = v287;
  v395 = v269;

  sub_224A3D418(v290, v291);
  v292 = v361;
  v293 = v339;
  v294 = v381;
  (*(v361 + 16))(v339, v285 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v381);
  v295 = v335;
  (v394)(v335, v358, v272);
  v296 = v336;
  (v392)(v336, v365, v280);
  v297 = sub_224DAB228();
  v298 = sub_224DAF2A8();
  if (os_log_type_enabled(v297, v298))
  {
    v299 = v295;
    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v398[0] = v301;
    *v300 = 136446466;
    sub_224A6E240();
    v302 = sub_224DAFD28();
    v303 = v286;
    v305 = v304;
    (*(v359 + 8))(v299, v303);
    v306 = sub_224A33F74(v302, v305, v398);

    *(v300 + 4) = v306;
    *(v300 + 12) = 2082;
    v307 = sub_224DACBA8();
    v309 = v308;
    (*(v346 + 8))(v296, v280);
    v310 = sub_224A33F74(v307, v309, v398);

    *(v300 + 14) = v310;
    _os_log_impl(&dword_224A2F000, v297, v298, "%{public}s scheduled %{public}s", v300, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v301, -1, -1);
    MEMORY[0x22AA5EED0](v300, -1, -1);

    (*(v292 + 8))(v339, v381);
  }

  else
  {

    (*(v346 + 8))(v296, v280);
    (*(v359 + 8))(v295, v286);
    (*(v292 + 8))(v293, v294);
  }

  sub_224DAD358();
  v311 = *(v374 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService + 24);
  v312 = *(v374 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService + 32);
  __swift_project_boxed_opaque_existential_1((v374 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService), v311);
  v313 = v396;
  v314 = (*(v312 + 16))(v396, v311, v312);
  v316 = v315;
  v318 = v317;
  v320 = v319;
  v398[3] = &type metadata for TaskCancellable;
  v398[4] = sub_224A8B0FC();
  v321 = swift_allocObject();
  v398[0] = v321;
  v321[2] = v314;
  v321[3] = v316;
  v321[4] = v318;
  v321[5] = v320;
  v224 = sub_224DAD368();

  sub_224A3D238(v356, type metadata accessor for ExtensionTask.Identifier);
  v391(v362, v376);
  sub_224A3D238(v360, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v224;
}

uint64_t sub_224A67378()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A673B0()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_224DACC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_224A67528()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A67568()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A675A8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - v17;
  v19 = *(a1 + 16);
  v20 = sub_224A33088(a4, a2, a3, MEMORY[0x277CFA018]);
  result = MEMORY[0x22AA5D540](v19, v10, v20);
  v28 = result;
  if (v19)
  {
    v22 = v11 + 16;
    v27 = *(v11 + 16);
    v23 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v25 = a5;
    v26 = (v22 - 8);
    do
    {
      v27(v15, v23, v10);
      v25(v18, v15);
      (*v26)(v18, v10);
      v23 += v24;
      --v19;
    }

    while (v19);
    return v28;
  }

  return result;
}

uint64_t sub_224A67790(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = *v2;
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
  v32 = a2;
  v12 = sub_224DAED88();
  v30 = v11 + 56;
  v31 = v11;
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = a1;
    v29 = ~v13;
    v26 = v7;
    v16 = v7 + 16;
    v15 = *(v7 + 16);
    v17 = (v7 + 8);
    v18 = *(v16 + 56);
    v25[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v19 = v15;
      v15(v10, *(v31 + 48) + v18 * v14, v6);
      sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
      v20 = sub_224DAEDD8();
      v21 = *v17;
      (*v17)(v10, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v29;
      v15 = v19;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v27;
        a1 = v28;
        v7 = v26;
        goto LABEL_7;
      }
    }

    v21(v32, v6);
    v19(v28, *(v31 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v32;
    v15(v10, v32, v6);
    v33 = *v3;
    sub_224A67A74(v10, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

uint64_t sub_224A67A74(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224ADF928(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224AE4EEC(&unk_27D6F30D0, &unk_224DB2AC0, &qword_27D6F3620, &qword_224DB3BF8);
      goto LABEL_12;
    }

    sub_224AE6B90(v11 + 1);
  }

  v13 = *v3;
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
      v22 = sub_224DAEDD8();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224A67D38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v34 - v8;
  v36 = 0;
  v10 = *(v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService + 24);
  v11 = *(v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService), v10);
  (*(v11 + 32))(v35, 768, v10, v11);
  if (!v35[5])
  {
    sub_224A3311C(v35, &qword_27D6F50E0, &qword_224DB41A0);
    return v36;
  }

  v12 = sub_224DABDB8();
  v13 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v2 + 16))(v5, &v12[v13], v1);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = type metadata accessor for HostDescriptorPredicate(0);
  v9[v15[5]] = 3;
  v9[v15[6]] = 3;
  v16 = v15[7];
  v17 = *(v2 + 56);
  v17(&v9[v16], 1, 1, v1);
  v18 = v15[8];
  v19 = sub_224DABE18();
  (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
  v20 = v15[9];
  v21 = sub_224DAC268();
  (*(*(v21 - 8) + 56))(&v9[v20], 1, 1, v21);
  v22 = &v9[v15[10]];
  *v22 = 0;
  v22[8] = 1;
  sub_224A3311C(&v9[v16], &unk_27D6F6140, qword_224DBB6B0);
  (*(v2 + 32))(&v9[v16], v5, v1);
  v17(&v9[v16], 0, 1, v1);
  (*(*(v15 - 1) + 56))(v9, 0, 1, v15);
  v23 = sub_224A6BAF8(v9);
  sub_224A3311C(v9, &qword_27D6F46D0, &unk_224DBD6D0);
  result = sub_224A699F0(v35);
  if (!v23)
  {
    return v36;
  }

  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_19:

    return v36;
  }

  result = sub_224DAF838();
  v25 = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AA5DCC0](v26, v23);
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 widget];
      v31 = sub_224DABE08();

      if (v31)
      {
        v32 = v36;
        if (!v36)
        {
          v32 = v27;
        }

        v36 = v32;
        v33 = v29;
        MEMORY[0x22AA5D350]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34[1] = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A68228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = type metadata accessor for _HostFilterableChange(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = *(*a2 + 112);
  swift_beginAccess();
  v14 = *(v8 + 32);
  v15 = sub_224DAA428();
  v16 = *(*(v15 - 8) + 16);
  v16(&v11[v14], a2 + v13, v15);
  v16(&v11[*(v8 + 28)], &v11[v14], v15);
  LOBYTE(v4) = sub_224A687B0(v11, v4);
  sub_224A6951C(v11);
  return v4 & 1;
}

uint64_t type metadata accessor for _HostFilterableChange(uint64_t a1)
{
  result = qword_2813576B0;
  if (!qword_2813576B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_224A68420@<D0>(unsigned int a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v5 = a1 >> 8;
  v6 = *(v2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v6 + 16));
  swift_beginAccess();
  v14 = v2;
  v15 = v3;
  v16 = v5;

  v8 = sub_224A69378(v7, sub_224A694F8, &v13);

  if (v8[2])
  {
    v9 = sub_224A68A40(v8);

    v10 = sub_224A68EC0(v9);
    os_unfair_lock_unlock(*(v6 + 16));
    if (v10)
    {
      v11 = qword_28135A7E8;
      swift_beginAccess();
      sub_224A68ED8(v2 + v11, v17);
      sub_224A68F48(v10, v17, a2);
      return result;
    }
  }

  else
  {

    os_unfair_lock_unlock(*(v6 + 16));
  }

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_224A68560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  result = MEMORY[0x28223BE20](v34, v5);
  v32 = &v26 - v8;
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = v36;
    v21 = v33;
    v22 = v34;
    (*(v33 + 16))(v15, v36[6] + *(v33 + 72) * v19, v34);
    v23 = v19;
    v24 = *(v20[7] + 8 * v19);

    LOBYTE(v19) = v35(v15, v24);

    result = (*(v21 + 8))(v15, v22);
    v13 = v37;
    if (v19)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_224A69578(v27, v26, v28, v36);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_224A69578(v27, v26, v28, v36);
    }

    v18 = *(v29 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_224A687B0(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2;
  v5 = sub_224DAA428();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + qword_28135C9F0) + 16));
  if (v4 >= 0x100 && HIBYTE(a2) != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v10)
    {

      if (HIBYTE(a2) != 2)
      {
        return 0;
      }
    }

    else if (HIBYTE(a2) != 1)
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  type metadata accessor for _HostFilterableChange(0);
  v11 = (a2 == 1 ? MEMORY[0x277CFA040] : MEMORY[0x277CFA038]);
  v12 = *v11;
  v16 = *(v6 + 104);
  v16(v9, v12, v5);
  sub_224A86C64(&qword_281351828, MEMORY[0x277CFA048], MEMORY[0x277CFA058]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v13 = *(v6 + 8);
  v13(v9, v5);
  if (v18 == v17)
  {
    return 1;
  }

  v16(v9, v12, v5);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v13(v9, v5);
  return v18 == v17;
}

uint64_t sub_224A68A40(uint64_t a1)
{
  v48 = sub_224DAA428();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v4);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v7);
  v45 = &v36 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v36 = v1;
    v51 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v11 = a1 + 64;
    result = sub_224DAF798();
    v12 = result;
    v13 = 0;
    v50 = *(a1 + 36);
    v42 = (v3 + 16);
    v43 = (v6 + 16);
    v40 = (v3 + 32);
    v41 = (v6 + 32);
    v37 = a1 + 72;
    v38 = a1 + 64;
    v44 = a1;
    v39 = v9;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v49 = v13;
      v16 = *(*(a1 + 56) + 8 * v12);
      v18 = v45;
      v17 = v46;
      (*v43)(v45, v16 + qword_281365430, v46);
      v19 = *(*v16 + 104);
      swift_beginAccess();
      v20 = *(v16 + v19);
      v21 = *(*v16 + 112);
      swift_beginAccess();
      v22 = v16 + v21;
      v23 = v47;
      v24 = v48;
      (*v42)(v47, v22, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4070, &qword_224DB5668);
      v25 = swift_allocObject();
      v26 = v17;
      a1 = v44;
      (*v41)(v25 + qword_281365418, v18, v26);
      *(v25 + *(*v25 + 104)) = v20;
      (*v40)(v25 + *(*v25 + 112), v23, v24);
      v27 = v20;
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v11 = v38;
      v28 = v39;
      v29 = *(v38 + 8 * v15);
      if ((v29 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v12 & 0x3F));
      if (v30)
      {
        v14 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v15 << 6;
        v32 = v15 + 1;
        v33 = (v37 + 8 * v15);
        while (v32 < (v14 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_224A3E204(v12, v50, 0);
            v14 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v12, v50, 0);
      }

LABEL_4:
      v13 = v49 + 1;
      v12 = v14;
      if (v49 + 1 == v28)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224A68ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52B8, &unk_224DBB690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A68F48@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v32 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v7);
  v37 = &v29 - v8;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a1 >> 62)
  {
LABEL_26:
    v9 = sub_224DAF838();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v29 = a3;
      v30 = a2;
      v10 = 0;
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = a1 & 0xC000000000000001;
      v36 = (v32 + 16);
      v34 = (v32 + 8);
      v11 = MEMORY[0x277D84F98];
      v33 = a1;
      while (1)
      {
        if (v35)
        {
          v13 = MEMORY[0x22AA5DCC0](v10, a1);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v10 >= *(v31 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a1 + 8 * v10 + 32);

          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v15 = v37;
        a1 = *v36;
        v16 = isUniquelyReferenced_nonNull_native;
        (*v36)(v37, v13 + qword_281365418, isUniquelyReferenced_nonNull_native);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v11;
        a2 = sub_224A683FC(v15);
        v18 = v11[2];
        v19 = (v17 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_23;
        }

        v21 = v17;
        if (v11[3] >= v20)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B250D8();
          }
        }

        else
        {
          sub_224A69A44(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_224A683FC(v37);
          if ((v21 & 1) != (v23 & 1))
          {
            result = sub_224DAFDD8();
            __break(1u);
            return result;
          }

          a2 = v22;
        }

        isUniquelyReferenced_nonNull_native = v16;
        v11 = v38;
        if (v21)
        {
          v12 = v38[7];
          a3 = *(v12 + 8 * a2);
          *(v12 + 8 * a2) = v13;

          (*v34)(v37, v16);
        }

        else
        {
          v38[(a2 >> 6) + 8] |= 1 << a2;
          a3 = v32;
          v24 = v37;
          (a1)(v11[6] + *(v32 + 72) * a2, v37, isUniquelyReferenced_nonNull_native);
          *(v11[7] + 8 * a2) = v13;

          (*(a3 + 8))(v24, isUniquelyReferenced_nonNull_native);
          v25 = v11[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_24;
          }

          v11[2] = v27;
        }

        ++v10;
        a1 = v33;
        if (v14 == v9)
        {

          a3 = v29;
          a2 = v30;
          goto LABEL_28;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_28:
  *(a3 + 40) = v11;
  return sub_224A69A58(a2, a3);
}

unint64_t sub_224A692B0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_224A33088(a4, a2, a3, MEMORY[0x277CFA018]);
  v10 = sub_224DAED88();
  return sub_224A3ADF0(a1, v10, a2, a3, a5, MEMORY[0x277CFA020]);
}

void *sub_224A69378(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v15 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v15;
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_224A68560(v13, v10, v6, a2);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = v4;
  v18 = sub_224D7213C(v16, v10, v6, a2);
  result = MEMORY[0x22AA5EED0](v16, -1, -1);
  if (!v17)
  {
    return v18;
  }

  return result;
}

uint64_t sub_224A6951C(uint64_t a1)
{
  v2 = type metadata accessor for _HostFilterableChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224A6958C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - v12;
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  result = sub_224DAFB98();
  v16 = result;
  if (*(v14 + 16))
  {
    v48 = v13;
    v40 = v4;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v14;
    v43 = v10;
    v45 = (v10 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v43 + 72);
      v30 = v29 + v47 * v28;
      if (v44)
      {
        (*v45)(v48, v30, v9);
        v46 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v41)(v48, v30, v9);
        v46 = *(*(v14 + 56) + 8 * v28);
      }

      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      result = sub_224DAED88();
      v31 = -1 << *(v16 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v23 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v23 + 8 * v33);
          if (v37 != -1)
          {
            v24 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v32) & ~*(v23 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v45)(*(v16 + 48) + v47 * v24, v48, v9);
      *(*(v16 + 56) + 8 * v24) = v46;
      ++*(v16 + 16);
      v14 = v42;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v14 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v18, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v38;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
  return result;
}

uint64_t (*sub_224A6996C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA5DCC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_224A699EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A69A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52B8, &unk_224DBB690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit31ConfiguredWidgetMetadataCaching_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t *sub_224A69AE8(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 104));
  v5 = *(*v1 + 112);
  v6 = sub_224DAA428();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  return v1;
}

uint64_t sub_224A69BFC(uint64_t *a1)
{
  sub_224A69AE8(a1);

  return swift_deallocClassInstance();
}

void *sub_224A69C60(unint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_224DAF838();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_224A8695C(v5, 0);
  a2((v7 + 4), v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224A69CFC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v11 = *(v52 - 8);
  v13 = MEMORY[0x28223BE20](v52, v12);
  v51 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v45 = &v39 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_224DAFBB8();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v44;
  }

  v20 = 0;
  v41 = v11 + 16;
  v42 = result;
  v50 = v11 + 32;
  v21 = result + 64;
  v40 = a4;
  v43 = v11;
  v22 = v52;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_16:
    v26 = v23 | (v20 << 6);
    v27 = a4[6];
    v49 = *(v11 + 72);
    v28 = v45;
    (*(v11 + 16))(v45, v27 + v49 * v26, v22);
    v29 = *(a4[7] + 8 * v26);
    v47 = *(v11 + 32);
    v47(v51, v28, v22);
    v18 = v42;
    sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
    v48 = v29;

    result = sub_224DAED88();
    v30 = -1 << *(v18 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v11 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v21 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v11 = v43;
LABEL_26:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v18 + 48) + v33 * v49, v51, v52);
    *(*(v18 + 56) + 8 * v33) = v48;
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v19 = v46;
    if (!a3)
    {
      return v18;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v25 = v44[v20];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
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

void sub_224A6A0E0(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services];
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue];
  v5 = a1;
  v6 = [v5 remoteProcess];
  v7 = type metadata accessor for WidgetRendererClient();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__subscriptions] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions] = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue] = v4;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_connection] = v5;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] = v3;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v4;

  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v9 + 16) = v12;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock] = v9;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__processHandle] = v6;
  v13 = v6;
  sub_224DAF938();

  aBlock = 0x6552746567646957;
  v46 = 0xEF5B72657265646ELL;
  LODWORD(v51) = [v13 pid];
  v14 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v14);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v15 = &v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier];
  *v15 = 0x6552746567646957;
  *(v15 + 1) = 0xEF5B72657265646ELL;
  v52.receiver = v8;
  v52.super_class = v7;
  v16 = objc_msgSendSuper2(&v52, sel_init);
  sub_224A3317C(*&v16[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 408, &aBlock);
  v17 = *__swift_project_boxed_opaque_existential_1(&aBlock, v48);
  v51 = 0;
  v18 = *(v17 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v19 = *(v18 + 16);
  v20 = v16;
  os_unfair_lock_lock(v19);
  sub_224A6A874(v17, v13, &v51);
  os_unfair_lock_unlock(*(v18 + 16));
  sub_224A6AF54();
  v21 = v51;
  if (v51)
  {

    *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion) = v21;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);

    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_224A75A4C;
    *(v23 + 24) = v22;
    v49 = sub_224A75AA4;
    v50 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_224A37E38;
    v48 = &block_descriptor_81_0;
    v24 = _Block_copy(&aBlock);
    v25 = v20;
    v26 = v2;

    [v10 configureConnection_];
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = &off_27853F000;
      isEscapingClosureAtFileLocation = [v10 remoteProcess];
      sub_224DAA7B8();
      v28 = sub_224DAEDE8();

      v29 = [isEscapingClosureAtFileLocation hasEntitlement_];

      if (v29)
      {
        v30 = *&v26[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
        os_unfair_lock_lock(*(v30 + 16));
        swift_beginAccess();
        sub_224A6A0A4(&v51, v25);
        swift_endAccess();

        os_unfair_lock_unlock(*(v30 + 16));
        v31 = &selRef_activate;
LABEL_9:
        [v10 *v31];

        return;
      }

      if (qword_281351580 == -1)
      {
LABEL_6:
        v32 = sub_224DAB258();
        __swift_project_value_buffer(v32, qword_281364EC8);
        v33 = v10;
        v34 = sub_224DAB228();
        v35 = sub_224DAF2A8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock = v44;
          *v36 = 136446466;
          v37 = [v33 v20[393]];
          v38 = v25;
          v39 = [v37 description];

          v40 = sub_224DAEE18();
          v42 = v41;

          v25 = v38;
          v43 = sub_224A33F74(v40, v42, &aBlock);

          *(v36 + 4) = v43;
          *(v36 + 12) = 2082;
          *(v36 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, &aBlock);
          _os_log_impl(&dword_224A2F000, v34, v35, "Chrono render service connection from %{public}s failed to authenticate <entitled: %{public}s>", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v44, -1, -1);
          MEMORY[0x22AA5EED0](v36, -1, -1);
        }

        v31 = &selRef_invalidate;
        goto LABEL_9;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v18 + 16));
  __break(1u);
}

uint64_t sub_224A6A768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A6A874(uint64_t a1, void *a2, id *a3)
{
  v5 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_224A6AC2C(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      goto LABEL_6;
    }
  }

  v9 = MEMORY[0x277D84FA0];
LABEL_6:
  v25 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v11 = [v10 UUIDString];

  if (!v11)
  {
    sub_224DAEE18();
    v11 = sub_224DAEDE8();
  }

  sub_224DAF938();

  v24 = [a2 pid];
  v12 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v12);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v15 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

  v16 = a2;
  v17 = sub_224DAEDE8();

  aBlock[4] = sub_224B4832C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A3837C;
  aBlock[3] = &block_descriptor_9;
  v18 = _Block_copy(aBlock);
  v19 = [v15 initWithIdentifier:v11 forReason:v17 invalidationBlock:v18];

  _Block_release(v18);

  v20 = *a3;
  *a3 = v19;

  if (*a3)
  {
    sub_224A6AC7C(aBlock, *a3);

    v21 = v25;
    swift_beginAccess();

    sub_224A6ACA0(v21, v16);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224A6ABB4()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A6ABEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A6ACA0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_224A6ADB4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_224A6AC2C(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_224B2AC58(&qword_27D6F3AC8, &qword_224DB4800);
        v10 = v13;
      }

      sub_224A58C3C(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

id sub_224A6ADB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_224A6AC2C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224A6FB90(v13, a3 & 1, &qword_27D6F3AC8, &qword_224DB4800);
      v8 = sub_224A6AC2C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_224B2AC58(&qword_27D6F3AC8, &qword_224DB4800);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_224A6AF54()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService + 24);
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService), v2);
  (*(v3 + 32))(v16, 768, v2, v3);
  if (v17)
  {
    if (*(v17 + 16))
    {
      v4 = sub_224A79FA8(v17);
      sub_224A699F0(v16);
      goto LABEL_7;
    }

    sub_224A699F0(v16);
  }

  else
  {
    sub_224A3311C(v16, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_7:
  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService + 24);
  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService), v5);
  v7 = (*(v6 + 24))(768, v5, v6);
  if (v7)
  {
    v8 = sub_224A7B208(v7);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364FD0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349312;
    if (v4 >> 62)
    {
      v13 = sub_224DAF838();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    *(v12 + 12) = 2050;
    if (v8 >> 62)
    {
      v14 = sub_224DAF838();
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 14) = v14;

    _os_log_impl(&dword_224A2F000, v10, v11, "Received new configured container descriptors: widgets  %{public}ld, controls %{public}ld", v12, 0x16u);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }

  v15 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v15 + 16));
  sub_224A75AB0(v4, v8);

  os_unfair_lock_unlock(*(v15 + 16));
}

uint64_t sub_224A6B208(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_224A6B274(void *a1, const char *a2)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_281364E20);
    oslog = sub_224DAB228();
    v4 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_224DAEEB8();
      v9 = sub_224A33F74(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_224A2F000, oslog, v4, a2, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x22AA5EED0](v6, -1, -1);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_224A6B3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_224DACB98();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v46 - v11;
  v13 = *(v5 + 16);
  v13(v46 - v11, v2, v4);
  v14 = *(v5 + 88);
  v15 = v14(v12, v4);
  if (v15 == *MEMORY[0x277CF9B70])
  {
    (*(v5 + 96))(v12, v4);
    v16 = *(*v12 + 16) == 0xD000000000000019 && 0x8000000224DC58C0 == *(*v12 + 24);
    if (v16 || (sub_224DAFD88() & 1) != 0)
    {
      v17 = MEMORY[0x277D46828];
    }

    else
    {
      v17 = MEMORY[0x277D46820];
    }

    v43 = *v17;
    v44 = sub_224DAB0B8();
    (*(*(v44 - 8) + 104))(a1, v43, v44);
  }

  else if (v15 == *MEMORY[0x277CF9B80])
  {
    (*(v5 + 96))(v12, v4);
    v46[1] = *v12;
    v18 = swift_projectBox();
    v13(v9, v18, v4);
    v19 = v14(v9, v4);
    v20 = *MEMORY[0x277CF9BE8];
    v21 = *MEMORY[0x277CF9BF0];
    v22 = *MEMORY[0x277CF9B88];
    v23 = *MEMORY[0x277CF9B68];
    v24 = *MEMORY[0x277CF9B60];
    v25 = sub_224DAB0B8();
    v26 = *(*(v25 - 8) + 104);
    if (v19 == v20 || v19 == v21 || v19 == v22 || v19 == v23 || v19 == v24)
    {
      v26(a1, *MEMORY[0x277D46828], v25);
    }

    else
    {
      v26(a1, *MEMORY[0x277D46820], v25);
      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    v31 = *MEMORY[0x277CF9BE8];
    v32 = *MEMORY[0x277CF9BF0];
    v33 = *MEMORY[0x277CF9B88];
    v34 = *MEMORY[0x277CF9B68];
    v35 = *MEMORY[0x277CF9B60];
    v36 = v15;
    v37 = sub_224DAB0B8();
    v38 = *(*(v37 - 8) + 104);
    if (v36 == v31 || v36 == v32 || v36 == v33 || v36 == v34 || v36 == v35)
    {
      return v38(a1, *MEMORY[0x277D46828], v37);
    }

    else
    {
      v38(a1, *MEMORY[0x277D46820], v37);
      return (*(v5 + 8))(v12, v4);
    }
  }
}

uint64_t sub_224A6B804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_224A6B84C()
{
  result = qword_281350BA0;
  if (!qword_281350BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4710, &unk_224DB65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BA0);
  }

  return result;
}

uint64_t type metadata accessor for HostDescriptorPredicate(uint64_t a1)
{
  result = qword_281356820;
  if (!qword_281356820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A6B910(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5]) = a2 + 3;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_224A6BAF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22[-1] - v5;
  v7 = *(v1 + 40);
  if (!*(v7 + 16))
  {
    return 0;
  }

  v24 = 0;
  sub_224A3796C(a1, v6, &qword_27D6F46D0, &unk_224DBD6D0);
  v8 = type metadata accessor for HostDescriptorPredicate(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    v9 = sub_224A3311C(v6, &qword_27D6F46D0, &unk_224DBD6D0);
  }

  else
  {
    v12 = v6[*(v8 + 40) + 8];
    v9 = sub_224A6C020(v6);
    if ((v12 & 1) == 0)
    {
      sub_224A3796C(v1, v22, &qword_27D6F52B8, &unk_224DBB690);
      if (v23)
      {
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v13 = sub_224DADE28();
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_224A3311C(v22, &qword_27D6F52B8, &unk_224DBB690);
        v13 = MEMORY[0x277D84F90];
      }

      v14 = sub_224AE8AF4(v13);

      v24 = v14;
    }
  }

  MEMORY[0x28223BE20](v9, v10);
  *(&v21 - 2) = a1;

  v15 = sub_224A6C07C(sub_224A6CCBC, (&v21 - 4), v7);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = sub_224A6CF18(v15);

  MEMORY[0x28223BE20](v18, v19);
  *(&v21 - 4) = a1;
  *(&v21 - 3) = &v24;
  *(&v21 - 2) = v16;
  sub_224A6D2D0(sub_224A6D3D0, (&v21 - 6), v17);

  swift_beginAccess();
  v11 = *(v16 + 16);

  return v11;
}

uint64_t sub_224A6BDE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A6BE30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v11 = *(a1 + a3[5]);
    if (v11 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a1 + a3[5]);
    }

    v13 = v12 - 3;
    if (v11 >= 3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v16 = *(v15 - 8);
    v17 = a3[7];
LABEL_14:
    v9 = *(v16 + 48);
    v10 = a1 + v17;
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v16 = *(v18 - 8);
    v17 = a3[8];
    goto LABEL_14;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_224A6C020(uint64_t a1)
{
  v2 = type metadata accessor for HostDescriptorPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_224A6C0AC(uint64_t a1)
{
  v102 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v93 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v1);
  v84 = &v84 - v2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  MEMORY[0x28223BE20](v87, v3);
  v88 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v99 = &v84 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v92 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v95 = &v84 - v16;
  v98 = sub_224DAC268();
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v17);
  v96 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAA428();
  v90 = *(v19 - 8);
  v91 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v27 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v94 = &v84 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v84 - v36;
  v38 = type metadata accessor for HostDescriptorPredicate(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v102, v37, &qword_27D6F46D0, &unk_224DBD6D0);
  v43 = *(v39 + 48);
  v102 = v38;
  if (v43(v37, 1, v38) == 1)
  {
    v44 = &qword_27D6F46D0;
    v45 = &unk_224DBD6D0;
    v46 = v37;
LABEL_24:
    sub_224A3311C(v46, v44, v45);
    return 1;
  }

  sub_224A6CEB4(v37, v42);
  v86 = v42;
  sub_224A3796C(v42, v25, &qword_27D6F3390, &qword_224DB35B8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_224A3311C(v25, &qword_27D6F3390, &qword_224DB35B8);
    v48 = v98;
    v47 = v99;
    v49 = v97;
  }

  else
  {
    v50 = v94;
    (*(v27 + 32))(v94, v25, v26);
    v49 = v97;
    sub_224DAA238();
    sub_224A33088(&qword_27D6F52C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FB8]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v48 = v98;
    if (v105 == v103 && v106 == v104)
    {
      v51 = *(v27 + 8);
      v51(v31, v26);
      v51(v50, v26);

      v47 = v99;
    }

    else
    {
      v52 = sub_224DAFD88();
      v53 = *(v27 + 8);
      v53(v31, v26);
      v53(v50, v26);

      v47 = v99;
      if ((v52 & 1) == 0)
      {
        v69 = v86;
        goto LABEL_34;
      }
    }
  }

  v54 = v101;
  v55 = v102;
  v56 = v86;
  v57 = v86[*(v102 + 24)];
  v58 = v100;
  if (v57 == 3)
  {
    goto LABEL_16;
  }

  sub_224DAA1F8();
  if (!v57)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v57 != 1)
  {
    if (!v59)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v59)
  {

LABEL_26:
    v69 = v56;
LABEL_34:
    sub_224A6C020(v69);
    return 0;
  }

LABEL_16:
  if (*(v56 + *(v55 + 20)) > 1u)
  {
    if (*(v56 + *(v55 + 20)) != 2)
    {
      goto LABEL_22;
    }

    v60 = MEMORY[0x277CFA038];
  }

  else
  {
    if (!*(v56 + *(v55 + 20)))
    {
      goto LABEL_22;
    }

    v60 = MEMORY[0x277CFA040];
  }

  v61 = v89;
  v62 = v90;
  v63 = v48;
  v64 = v91;
  (*(v90 + 104))(v89, *v60, v91);
  sub_224C16D98();
  sub_224DAEFA8();
  sub_224DAEFA8();
  v65 = v61;
  v66 = v64;
  v48 = v63;
  v58 = v100;
  v54 = v101;
  (*(v62 + 8))(v65, v66);
  v55 = v102;
  if (v105 != v103)
  {
    goto LABEL_26;
  }

LABEL_22:
  v67 = v95;
  sub_224A3796C(v56 + *(v55 + 36), v95, &qword_27D6F4A18, &qword_224DB9070);
  if ((*(v58 + 48))(v67, 1, v48) == 1)
  {
    sub_224A6C020(v56);
    v44 = &qword_27D6F4A18;
    v45 = &qword_224DB9070;
    v46 = v67;
    goto LABEL_24;
  }

  (*(v58 + 32))(v96, v67, v48);
  v70 = v92;
  sub_224DAC218();
  v71 = v93;
  (*(v93 + 16))(v47, v49 + qword_281365418, v54);
  (*(v71 + 56))(v47, 0, 1, v54);
  v72 = *(v87 + 48);
  v73 = v58;
  v74 = v48;
  v75 = v88;
  sub_224A3796C(v70, v88, &qword_27D6F56C0, &unk_224DB3580);
  v102 = v72;
  sub_224A3796C(v47, v75 + v72, &qword_27D6F56C0, &unk_224DB3580);
  v76 = v47;
  v77 = *(v71 + 48);
  if (v77(v75, 1, v54) == 1)
  {
    sub_224A3311C(v76, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v70, &qword_27D6F56C0, &unk_224DB3580);
    (*(v73 + 8))(v96, v74);
    sub_224A6C020(v86);
    if (v77(v75 + v102, 1, v54) == 1)
    {
      v44 = &qword_27D6F56C0;
      v45 = &unk_224DB3580;
      v46 = v75;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v78 = v85;
  sub_224A3796C(v75, v85, &qword_27D6F56C0, &unk_224DB3580);
  v79 = v102;
  if (v77(v75 + v102, 1, v54) == 1)
  {
    sub_224A3311C(v99, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v92, &qword_27D6F56C0, &unk_224DB3580);
    (*(v73 + 8))(v96, v74);
    sub_224A6C020(v86);
    (*(v93 + 8))(v78, v54);
LABEL_32:
    sub_224A3311C(v75, &qword_27D6F33C8, &qword_224DB3600);
    return 0;
  }

  v80 = v93;
  v81 = v84;
  (*(v93 + 32))(v84, v75 + v79, v54);
  sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
  v82 = sub_224DAEDD8();
  v83 = *(v80 + 8);
  v83(v81, v54);
  sub_224A3311C(v99, &qword_27D6F56C0, &unk_224DB3580);
  sub_224A3311C(v92, &qword_27D6F56C0, &unk_224DB3580);
  (*(v73 + 8))(v96, v74);
  sub_224A6C020(v86);
  v83(v78, v54);
  sub_224A3311C(v75, &qword_27D6F56C0, &unk_224DB3580);
  return (v82 & 1) != 0;
}

uint64_t (*sub_224A6CD14(uint64_t (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = a3;
  v14 = result;
  v5 = 0;
  v16 = MEMORY[0x277D84F90];
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v10)
    {

      return v16;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
  }

  while (!v9);
  while (1)
  {
    v15 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    v12 = v14(&v15);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    if (v12)
    {
      sub_224DAF9B8();
      sub_224DAF9F8();
      v4 = a3;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v5;
  }
}

uint64_t sub_224A6CEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostDescriptorPredicate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A6CF18(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v7 = [*(v4 + *(*v4 + 104)) containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v8 = sub_224DAF008();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_224DAF838() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_224DAF838();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_224A33088(&qword_281350B60, &qword_27D6F34A8, &qword_224DB3A30, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A8, &qword_224DB3A30);
              v19 = sub_224A6996C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_224A6D2D0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_224A6D3F0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v8 = sub_224DAF008();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  v9 = sub_224DAF838();
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    v16 = v9;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x22AA5DCC0](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = *a3;

      v15 = sub_224A6D624(a2, v14);

      if (v15)
      {
        swift_beginAccess();
        if (!*(a4 + 16))
        {
          swift_beginAccess();
          *(a4 + 16) = MEMORY[0x277D84F90];
        }

        swift_beginAccess();
        v11 = v13;
        MEMORY[0x22AA5D350]();
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        swift_endAccess();
        v9 = v16;
      }

      ++v10;
    }

    while (v9 != v10);
    goto LABEL_17;
  }

  __break(1u);
}

BOOL sub_224A6D624(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v66 = &v64 - v4;
  v5 = sub_224DABE18();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v70 = &v64 - v10;
  v11 = sub_224DAC268();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v64 - v25;
  v27 = type metadata accessor for HostDescriptorPredicate(0);
  v28 = *(v27 - 1);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v75, v26, &qword_27D6F46D0, &unk_224DBD6D0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_224A3311C(v26, &qword_27D6F46D0, &unk_224DBD6D0);
    return 1;
  }

  sub_224A6CEB4(v26, v31);
  sub_224A3796C(&v31[v27[7]], v17, &unk_27D6F6140, qword_224DBB6B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_224A3311C(v17, &unk_27D6F6140, qword_224DBB6B0);
LABEL_9:
    v41 = v73;
    goto LABEL_10;
  }

  v33 = v31;
  (*(v19 + 32))(v22, v17, v18);
  v34 = sub_224DA9FE8();
  v36 = v35;
  v37 = [v74 extensionBundleIdentifier];
  v38 = sub_224DAEE18();
  v40 = v39;

  if (v34 == v38 && v36 == v40)
  {

    (*(v19 + 8))(v22, v18);
    v31 = v33;
    goto LABEL_9;
  }

  v63 = sub_224DAFD88();

  (*(v19 + 8))(v22, v18);
  v31 = v33;
  v41 = v73;
  if ((v63 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v42 = v70;
  sub_224A3796C(&v31[v27[9]], v70, &qword_27D6F4A18, &qword_224DB9070);
  v44 = v71;
  v43 = v72;
  if ((*(v71 + 48))(v42, 1, v72) == 1)
  {
    sub_224A3311C(v42, &qword_27D6F4A18, &qword_224DB9070);
    v45 = v74;
  }

  else
  {
    (*(v44 + 32))(v41, v42, v43);
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v45 = v74;
    v50 = [v74 widget];
    v51 = sub_224DAC248();
    v52 = sub_224DAF6A8();

    if ((v52 & 1) == 0)
    {
      (*(v44 + 8))(v41, v43);
      goto LABEL_24;
    }

    v53 = [v45 metrics];
    v54 = sub_224DAC258();
    v55 = sub_224DAF6A8();

    (*(v44 + 8))(v41, v43);
    if ((v55 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v46 = v66;
  sub_224A3796C(&v31[v27[8]], v66, &unk_27D6F6130, &unk_224DBB6A0);
  v48 = v67;
  v47 = v68;
  if ((*(v67 + 48))(v46, 1, v68) == 1)
  {
    sub_224A3311C(v46, &unk_27D6F6130, &unk_224DBB6A0);
    v49 = v69;
    goto LABEL_18;
  }

  v56 = v65;
  (*(v48 + 32))(v65, v46, v47);
  v57 = [v45 widget];
  v58 = sub_224DABE08();

  (*(v48 + 8))(v56, v47);
  v49 = v69;
  if ((v58 & 1) == 0)
  {
LABEL_24:
    sub_224A6C020(v31);
    return 0;
  }

LABEL_18:
  if (!v49)
  {
    sub_224A6C020(v31);
    return 1;
  }

  v59 = [v45 uniqueIdentifier];
  v60 = sub_224DAEE18();
  v62 = v61;

  LOBYTE(v59) = sub_224A3A53C(v60, v62, v49);

  sub_224A6C020(v31);
  return (v59 & 1) != 0;
}

void *sub_224A6DE18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B90, &qword_224DB3CB8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224A6DF20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v44 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224A6E1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A6E240()
{
  result = qword_281350E70;
  if (!qword_281350E70)
  {
    sub_224DABE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350E70);
  }

  return result;
}

uint64_t sub_224A6E298(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v8, v11);
  v14 = &v27[-v13];
  if (*(v1 + 32) == 2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = v1[5];
  if (!v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15 - 1;
  v1[5] = v16;
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v1 + 32) = 1;
    if ((a1 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = v1[6];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17 - 1;
  v1[6] = v18;
  if (!v18)
  {
    a1 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
    swift_beginAccess();
    sub_224A3796C(v1 + a1, &v28, &unk_27D6F4700, &unk_224DB3A10);
    if (v29)
    {
      sub_224A36F98(&v28, v30);
      a1 = v31;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v2 = v1;
      if (sub_224DAE278())
      {
        v3 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v1 + v3, v14, &qword_27D6F3948, &qword_224DB5C10);
        a1 = sub_224DAC378();
        v4 = *(a1 - 8);
        v19 = (*(v4 + 48))(v14, 1, a1);
        sub_224A3311C(v14, &qword_27D6F3948, &qword_224DB5C10);
        if (v19 != 1)
        {
          goto LABEL_25;
        }

        if (swift_weakLoadStrong())
        {
          if (qword_281351430 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_26;
        }
      }

      goto LABEL_17;
    }

    result = sub_224A3311C(&v28, &unk_27D6F4700, &unk_224DB3A10);
  }

LABEL_19:
  while (v1[5] < v1[6])
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_14:
    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364D60);

    v1 = v2;
    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      *v23 = 138543362;
      v24 = v1[2];
      *(v23 + 4) = v24;
      *v2 = v24;
      v25 = v24;
      _os_log_impl(&dword_224A2F000, v21, v22, "[ext:%{public}@] starting grace", v23, 0xCu);
      sub_224A3311C(v2, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v2, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    sub_224DAC308();

    v26 = *(v4 + 56);
    v4 += 56;
    v26(v10, 0, 1, a1);
    swift_beginAccess();
    sub_224A838C0(v10, v1 + v3, &qword_27D6F3948, &qword_224DB5C10);
    swift_endAccess();
LABEL_17:
    result = __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

void sub_224A6E6A4(void *a1, void *a2)
{
  v3 = v2;
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281364EC8);
  v7 = a1;
  v8 = a2;
  v9 = sub_224DAB228();
  v10 = sub_224DAF278();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 1026;
    v13 = v8;
    v14 = [v7 BOOLValue];

    *(v11 + 14) = v14;
    _os_log_impl(&dword_224A2F000, v9, v10, "Received setVisiblySettled for %{public}@: %{BOOL,public}d", v11, 0x12u);
    sub_224A3311C(v12, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v12, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  else
  {

    v9 = v7;
  }

  v15 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v17 = *(v3 + v16);

  v18 = sub_224A71D20(v8, v17);

  os_unfair_lock_unlock(*(v15 + 16));
  if (v18)
  {
    v19 = [v7 BOOLValue];
    v20 = *(v18 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled);
    *(v18 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled) = v19;
    sub_224A6F948(v20);
  }
}

uint64_t sub_224A6E964(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_224DAC378();
  v80 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v76 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v67[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v67[-v23];
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v67[-v27];
  v30 = MEMORY[0x28223BE20](v26, v29);
  v79 = &v67[-v31];
  result = MEMORY[0x28223BE20](v30, v32);
  v82 = &v67[-v37];
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    return result;
  }

  v70 = v36;
  v71 = v35;
  v77 = a3;
  v78 = v7;
  v72 = v34;
  v38 = *(a2 + 16);
  v39 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v74 = v38;
  v75 = a1;
  v40 = sub_224A71E2C(v38, *(a1 + v39), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  result = swift_endAccess();
  if (!v40)
  {
    __break(1u);
    return result;
  }

  v41 = v79;
  if (v40 != a2)
  {
    __break(1u);
    goto LABEL_33;
  }

  a1 = a2;
  sub_224A71B08(v28);
  *(a2 + 32) = 0;
  sub_224A6E298(v77 & 1);
  v42 = *(a2 + 32);
  *(a2 + 32) = 2;
  v73 = v3;
  if ((v42 & 1) == 0)
  {
    sub_224A71DBC(v28, v41);
    goto LABEL_9;
  }

  sub_224A6FDF8();
  v69 = a2;
  sub_224A71B08(v24);
  sub_224A3796C(v24, v41, &qword_27D6F3948, &qword_224DB5C10);
  v43 = *(v10 + 48);
  sub_224A3796C(v28, v13, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3796C(v24, &v13[v43], &qword_27D6F3948, &qword_224DB5C10);
  v44 = *(v80 + 48);
  v45 = v78;
  if (v44(v13, 1, v78) == 1)
  {
    sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
    v41 = v79;
    sub_224A3311C(v28, &qword_27D6F3948, &qword_224DB5C10);
    v46 = v44(&v13[v43], 1, v45);
    a1 = v69;
    if (v46 == 1)
    {
      sub_224A3311C(v13, &qword_27D6F3948, &qword_224DB5C10);
LABEL_9:
      LOBYTE(a2) = 0;
LABEL_13:
      v28 = v82;
      goto LABEL_14;
    }

LABEL_12:
    sub_224A3311C(v13, &qword_27D6F6938, &qword_224DC0A70);
    LOBYTE(a2) = 1;
    goto LABEL_13;
  }

  a2 = v70;
  sub_224A3796C(v13, v70, &qword_27D6F3948, &qword_224DB5C10);
  if (v44(&v13[v43], 1, v45) == 1)
  {
    sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3311C(v28, &qword_27D6F3948, &qword_224DB5C10);
    (*(v80 + 8))(a2, v45);
    a1 = v69;
    goto LABEL_12;
  }

  v65 = v76;
  (*(v80 + 32))(v76, &v13[v43], v45);
  sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
  v68 = sub_224DAEDD8();
  v66 = *(v80 + 8);
  v66(v65, v45);
  sub_224A3311C(v24, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3311C(v28, &qword_27D6F3948, &qword_224DB5C10);
  v66(a2, v45);
  sub_224A3311C(v13, &qword_27D6F3948, &qword_224DB5C10);
  LOBYTE(a2) = v68 ^ 1;
  v28 = v82;
  a1 = v69;
LABEL_14:
  sub_224A71DBC(v41, v28);
  if (qword_281351430 != -1)
  {
LABEL_33:
    swift_once();
  }

  v47 = sub_224DAB258();
  __swift_project_value_buffer(v47, qword_281364D60);

  v48 = sub_224DAB228();
  v49 = sub_224DAF278();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v81[0] = v52;
    *v50 = 138543618;
    v53 = v74;
    *(v50 + 4) = v74;
    *v51 = v53;
    *(v50 + 12) = 2082;
    if (v77)
    {
      v54 = 0x7465736572;
    }

    else
    {
      v54 = 1701736302;
    }

    v55 = a1;
    if (v77)
    {
      v56 = 0xE500000000000000;
    }

    else
    {
      v56 = 0xE400000000000000;
    }

    v57 = v53;
    v58 = sub_224A33F74(v54, v56, v81);
    a1 = v55;

    *(v50 + 14) = v58;
    v28 = v82;
    _os_log_impl(&dword_224A2F000, v48, v49, "[ext:%{public}@] released assertion marking visible with grace policy %{public}s", v50, 0x16u);
    sub_224A3311C(v51, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v51, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x22AA5EED0](v52, -1, -1);
    MEMORY[0x22AA5EED0](v50, -1, -1);
  }

  if (a2)
  {
    if ((*(v80 + 48))(v28, 1, v78) == 1)
    {
      swift_beginAccess();

      v59 = v72;
      sub_224B0E020(v74, v72);
      sub_224A3311C(v59, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
    }

    else
    {
      v60 = a1;
      v61 = v72;
      sub_224A3796C(v28, v72, &qword_27D6F3948, &qword_224DB5C10);
      v62 = v71;
      sub_224A3796C(v61, v71, &qword_27D6F3948, &qword_224DB5C10);
      swift_beginAccess();
      v63 = v74;

      sub_224A83A8C(v62, v63);
      swift_endAccess();

      v64 = v61;
      a1 = v60;
      sub_224A3311C(v64, &qword_27D6F3948, &qword_224DB5C10);
    }

    sub_224A83EBC();
    sub_224A6F4FC(a1);
    sub_224A843F0();
  }

  else
  {
    sub_224A6F4FC(a1);
  }

  return sub_224A3311C(v28, &qword_27D6F3948, &qword_224DB5C10);
}

void sub_224A6F268(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = sub_224A3E7EC(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2993C();
        v9 = v13;
      }

      sub_224A58C3C(v7, v9);
      *v4 = v9;
    }

    else
    {
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_224A8A0B0(a1, a3, v11);

    *v3 = v14;
  }
}

uint64_t sub_224A6F360(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (*(v5 + 16))
  {
    v6 = sub_224A3E7EC(a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
      swift_beginAccess();
      if (v8 <= 1)
      {
        sub_224A6F268(0, 1, a2);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *(a1 + v4);
        *(a1 + v4) = 0x8000000000000000;
        sub_224A8A0B0(v8 - 1, a2, isUniquelyReferenced_nonNull_native);
        *(a1 + v4) = v11;
      }
    }
  }

  return swift_endAccess();
}

uint64_t sub_224A6F460(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 240);
    os_unfair_lock_lock(*(v5 + 16));
    sub_224A6F360(v4, a2);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

void sub_224A6F4FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22[-v9];
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(a1 + 40))
  {
    return;
  }

  v11 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  sub_224A3796C(a1 + v11, v10, &qword_27D6F3948, &qword_224DB5C10);
  v12 = sub_224DAC378();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  sub_224A3311C(v10, &qword_27D6F3948, &qword_224DB5C10);
  if (v14 != 1 || *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertionCount) || *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount) || (*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange) & 1) != 0)
  {
    return;
  }

  sub_224A71B08(v7);
  v15 = v13(v7, 1, v12);
  sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
  if (v15 != 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a1 + 16);
  swift_beginAccess();
  sub_224B0E8A4(v7);
  swift_endAccess();

  if (qword_281351430 != -1)
  {
LABEL_13:
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281364D60);

  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    *(v19 + 4) = v7;
    *v20 = v7;
    v21 = v7;
    _os_log_impl(&dword_224A2F000, v17, v18, "[ext:%{public}@] stopped tracking", v19, 0xCu);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v20, -1, -1);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }
}

uint64_t sub_224A6F83C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v7 + 16));
    sub_224A6E964(v6, a2, a3 & 1);
    os_unfair_lock_unlock(*(v7 + 16));
  }

  return result;
}

uint64_t objectdestroy_72Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_224A6F948(char a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled) != (a1 & 1))
  {
    v3 = v1;
    if (qword_281351528 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281364EB0);
    swift_retain_n();
    v5 = sub_224DAB228();
    v6 = sub_224DAF2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543618;
      v9 = *(v3 + 24);
      *(v7 + 4) = v9;
      *v8 = v9;
      *(v7 + 12) = 1026;
      v10 = *(v3 + v2);
      v11 = v9;

      *(v7 + 14) = v10;

      _os_log_impl(&dword_224A2F000, v5, v6, "[%{public}@] Visibility did change: %{BOOL,public}d", v7, 0x12u);
      sub_224A3311C(v8, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v8, -1, -1);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }

    else
    {
    }

    v12 = *(v3 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion);
    if (v12)
    {
      v13 = *(v3 + v2);
      v14 = *(v12 + 144);
      v15 = *(v14 + 16);

      os_unfair_lock_lock(v15);
      sub_224A71EF0(v12, v13);
      os_unfair_lock_unlock(*(v14 + 16));
    }
  }
}

char *sub_224A6FB70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224A737DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_224A6FB90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_224DAFB98();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_224DAF698();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_224A6FDF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v212 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v212 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v212 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v212 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v220 = *(v23 - 8);
  v221 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v219 = &v212 - v25;
  if (*(v1 + 32) != 2)
  {
    __break(1u);
    goto LABEL_120;
  }

  v218 = v15;
  v26 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v1 + v26, &v226, &unk_27D6F4700, &unk_224DB3A10);
  v27 = &unk_28135B000;
  if (!*(&v227 + 1))
  {
    sub_224A3311C(&v226, &unk_27D6F4700, &unk_224DB3A10);
    v6 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
    if (!*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility))
    {
      goto LABEL_17;
    }

    v19 = v6[1];
    v52 = qword_281351430;
    swift_unknownObjectRetain();
    if (v52 == -1)
    {
LABEL_14:
      v53 = sub_224DAB258();
      __swift_project_value_buffer(v53, qword_281364D60);

      v54 = sub_224DAB228();
      v55 = sub_224DAF2A8();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138543362;
        v58 = *(v1 + 16);
        *(v56 + 4) = v58;
        *v57 = v58;
        v59 = v58;
        _os_log_impl(&dword_224A2F000, v54, v55, "[ext:%{public}@] invalidating underlying visibility assertion : ambiguous", v56, 0xCu);
        sub_224A3311C(v57, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v57, -1, -1);
        MEMORY[0x22AA5EED0](v56, -1, -1);
      }

      ObjectType = swift_getObjectType();
      (*(v19 + 2))(ObjectType, v19);
      swift_unknownObjectRelease();
      *v6 = 0;
      v6[1] = 0;
      swift_unknownObjectRelease();
      v27 = &unk_28135B000;
LABEL_17:
      if (!*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount))
      {
        v108 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
        if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
        {
          v109 = v108[1];
          v110 = qword_281351430;
          swift_unknownObjectRetain();
          if (v110 != -1)
          {
            swift_once();
          }

          v111 = sub_224DAB258();
          __swift_project_value_buffer(v111, qword_281364D60);

          v112 = sub_224DAB228();
          v113 = sub_224DAF2A8();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            *v114 = 138543362;
            v116 = *(v1 + 16);
            *(v114 + 4) = v116;
            *v115 = v116;
            v117 = v116;
            _os_log_impl(&dword_224A2F000, v112, v113, "[ext:%{public}@] invalidating underlying activity assertion : ambiguous", v114, 0xCu);
            sub_224A3311C(v115, &unk_27D6F69F0, &unk_224DB3900);
            v118 = v115;
            v27 = &unk_28135B000;
            MEMORY[0x22AA5EED0](v118, -1, -1);
            MEMORY[0x22AA5EED0](v114, -1, -1);
          }

          v119 = swift_getObjectType();
          (*(v109 + 16))(v119, v109);
          swift_unknownObjectRelease();
          *v108 = 0;
          v108[1] = 0;
          swift_unknownObjectRelease();
        }

        goto LABEL_114;
      }

      v61 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      swift_beginAccess();
      sub_224A3796C(v1 + v61, v11, &qword_27D6F3948, &qword_224DB5C10);
      v62 = sub_224DAC378();
      LODWORD(v61) = (*(*(v62 - 8) + 48))(v11, 1, v62);
      sub_224A3311C(v11, &qword_27D6F3948, &qword_224DB5C10);
      if (v61 == 1 || (v63 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity), *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity)) || (Strong = swift_weakLoadStrong()) == 0)
      {
LABEL_114:
        v210 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
        swift_beginAccess();
        sub_224A3796C(v1 + v210, &v226, &qword_27D6F3AE8, &unk_224DB9600);
        if (!*(&v227 + 1))
        {
          result = sub_224A3311C(&v226, &qword_27D6F3AE8, &unk_224DB9600);
          goto LABEL_117;
        }

        sub_224A36F98(&v226, v229);
        __swift_project_boxed_opaque_existential_1(v229, v230);
        sub_224DAE1F8();
        v228 = 0;
        v226 = 0u;
        v227 = 0u;
        swift_beginAccess();
        sub_224A838C0(&v226, v1 + v210, &qword_27D6F3AE8, &unk_224DB9600);
        swift_endAccess();
        goto LABEL_116;
      }

      v65 = v221;
      v66 = *(Strong + 80);
      v67 = *(Strong + 88);
      v68 = *(v1 + 16);
      v69 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v70 = v220;
      v71 = &v68[v69];
      v72 = v219;
      (*(v220 + 16))(v219, v71, v65);
      v73 = (*(v67 + 8))(v72, v66, v67);
      v75 = v74;
      (*(v70 + 8))(v72, v65);
      *v63 = v73;
      v63[1] = v75;
      swift_unknownObjectRelease();
      if (*v63)
      {
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v76 = sub_224DAB258();
        __swift_project_value_buffer(v76, qword_281364D60);

        v77 = sub_224DAB228();
        v78 = sub_224DAF2A8();

        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_113;
        }

        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543362;
        *(v79 + 4) = v68;
        *v80 = v68;
        v81 = v68;
        v82 = "[ext:%{public}@] acquired new underlying activity assertion : ambiguous";
      }

      else
      {
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v208 = sub_224DAB258();
        __swift_project_value_buffer(v208, qword_281364D60);

        v77 = sub_224DAB228();
        v78 = sub_224DAF288();

        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_113;
        }

        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543362;
        *(v79 + 4) = v68;
        *v80 = v68;
        v209 = v68;
        v82 = "[ext:%{public}@] failed to acquire new underlying activity assertion : ambiguous";
      }

      _os_log_impl(&dword_224A2F000, v77, v78, v82, v79, 0xCu);
      sub_224A3311C(v80, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v80, -1, -1);
      MEMORY[0x22AA5EED0](v79, -1, -1);
LABEL_113:

      v27 = &unk_28135B000;
      goto LABEL_114;
    }

LABEL_120:
    swift_once();
    goto LABEL_14;
  }

  v215 = v6;
  v216 = v3;
  v217 = v2;
  sub_224A36F98(&v226, v229);
  v28 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
  v29 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
  v214 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility + 8);
  __swift_project_boxed_opaque_existential_1(v229, v230);
  v222 = v29;
  swift_unknownObjectRetain();
  if ((sub_224DAE278() & 1) == 0)
  {
    if (*v28)
    {
      v83 = v28[1];
      v84 = qword_281351430;
      swift_unknownObjectRetain();
      if (v84 != -1)
      {
        swift_once();
      }

      v85 = sub_224DAB258();
      __swift_project_value_buffer(v85, qword_281364D60);

      v86 = sub_224DAB228();
      v87 = sub_224DAF2A8();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v88 = 138543362;
        v90 = *(v1 + 16);
        *(v88 + 4) = v90;
        *v89 = v90;
        v91 = v90;
        _os_log_impl(&dword_224A2F000, v86, v87, "[ext:%{public}@] invalidating underlying visibility assertion : extension doesn't want location", v88, 0xCu);
        sub_224A3311C(v89, &unk_27D6F69F0, &unk_224DB3900);
        v92 = v89;
        v27 = &unk_28135B000;
        MEMORY[0x22AA5EED0](v92, -1, -1);
        MEMORY[0x22AA5EED0](v88, -1, -1);
      }

      v93 = swift_getObjectType();
      (*(v83 + 16))(v93, v83);
      swift_unknownObjectRelease();
      *v28 = 0;
      v28[1] = 0;
      swift_unknownObjectRelease();
    }

    v94 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
    if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
    {
      v95 = v94[1];
      v96 = qword_281351430;
      swift_unknownObjectRetain();
      if (v96 != -1)
      {
        swift_once();
      }

      v97 = sub_224DAB258();
      __swift_project_value_buffer(v97, qword_281364D60);

      v98 = sub_224DAB228();
      v99 = sub_224DAF2A8();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v213 = v28;
        v102 = v101;
        *v100 = 138543362;
        v103 = *(v1 + 16);
        *(v100 + 4) = v103;
        *v101 = v103;
        v104 = v103;
        _os_log_impl(&dword_224A2F000, v98, v99, "[ext:%{public}@] invalidating underlying activity assertion : extension doesn't want location", v100, 0xCu);
        sub_224A3311C(v102, &unk_27D6F69F0, &unk_224DB3900);
        v105 = v102;
        v27 = &unk_28135B000;
        v28 = v213;
        MEMORY[0x22AA5EED0](v105, -1, -1);
        MEMORY[0x22AA5EED0](v100, -1, -1);
      }

      v106 = swift_getObjectType();
      (*(v95 + 16))(v106, v95);
      swift_unknownObjectRelease();
      *v94 = 0;
      v94[1] = 0;
      swift_unknownObjectRelease();
    }

    v107 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
    swift_beginAccess();
    sub_224A3796C(v1 + v107, &v223, &qword_27D6F3AE8, &unk_224DB9600);
    if (!*(&v224 + 1))
    {
      goto LABEL_80;
    }

    goto LABEL_39;
  }

  v30 = *v28;
  if (*(v1 + 40))
  {
    if (!v30)
    {
      v31 = swift_weakLoadStrong();
      if (v31)
      {
        v32 = *(v31 + 80);
        v33 = *(v31 + 88);
        v34 = *(v1 + 16);
        v35 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v36 = v220;
        v37 = *(v220 + 16);
        v213 = v34;
        v38 = v34 + v35;
        v39 = v219;
        v40 = v221;
        v37(v219, v38, v221);
        v41 = (*(v33 + 8))(v39, v32, v33);
        v43 = v42;
        (*(v36 + 8))(v39, v40);
        *v28 = v41;
        v28[1] = v43;
        swift_unknownObjectRelease();
        if (*v28)
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v44 = sub_224DAB258();
          __swift_project_value_buffer(v44, qword_281364D60);

          v45 = sub_224DAB228();
          v46 = sub_224DAF2A8();

          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_59;
          }

          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138543362;
          v49 = v213;
          *(v47 + 4) = v213;
          *v48 = v49;
          v50 = v49;
          v51 = "[ext:%{public}@] acquired new underlying visibility assertion";
        }

        else
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v131 = sub_224DAB258();
          __swift_project_value_buffer(v131, qword_281364D60);

          v45 = sub_224DAB228();
          v46 = sub_224DAF288();

          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_59;
          }

          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138543362;
          v132 = v213;
          *(v47 + 4) = v213;
          *v48 = v132;
          v133 = v132;
          v51 = "[ext:%{public}@] failed to acquire new underlying visibility assertion";
        }

        _os_log_impl(&dword_224A2F000, v45, v46, v51, v47, 0xCu);
        sub_224A3311C(v48, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v48, -1, -1);
        MEMORY[0x22AA5EED0](v47, -1, -1);
LABEL_59:
      }
    }
  }

  else if (v30)
  {
    v120 = v28[1];
    v121 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
    swift_beginAccess();
    sub_224A3796C(v1 + v121, v22, &qword_27D6F3948, &qword_224DB5C10);
    v122 = sub_224DAC378();
    if ((*(*(v122 - 8) + 48))(v22, 1, v122) == 1)
    {
      swift_unknownObjectRetain();
      sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10);
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v123 = sub_224DAB258();
      __swift_project_value_buffer(v123, qword_281364D60);

      v124 = sub_224DAB228();
      v125 = sub_224DAF2A8();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *v126 = 138543362;
        v128 = *(v1 + 16);
        *(v126 + 4) = v128;
        *v127 = v128;
        v129 = v128;
        _os_log_impl(&dword_224A2F000, v124, v125, "[ext:%{public}@] invalidating underlying visibility assertion", v126, 0xCu);
        sub_224A3311C(v127, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v127, -1, -1);
        MEMORY[0x22AA5EED0](v126, -1, -1);
      }

      v130 = swift_getObjectType();
      (*(v120 + 16))(v130, v120);
      swift_unknownObjectRelease();
      *v28 = 0;
      v28[1] = 0;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_224A3311C(v22, &qword_27D6F3948, &qword_224DB5C10);
    }
  }

  if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount))
  {
    if (*(v1 + 40) || (v134 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace, swift_beginAccess(), sub_224A3796C(v1 + v134, v19, &qword_27D6F3948, &qword_224DB5C10), v135 = sub_224DAC378(), LODWORD(v134) = (*(*(v135 - 8) + 48))(v19, 1, v135), sub_224A3311C(v19, &qword_27D6F3948, &qword_224DB5C10), v134 != 1))
    {
      v136 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
      if (!*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
      {
        v137 = swift_weakLoadStrong();
        if (v137)
        {
          v213 = v28;
          v138 = *(v137 + 80);
          v139 = *(v137 + 88);
          v140 = *(v1 + 16);
          v141 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v142 = v220;
          v143 = v221;
          v144 = &v140[v141];
          v145 = v219;
          (*(v220 + 16))(v219, v144, v221);
          v146 = (*(v139 + 8))(v145, v138, v139);
          v148 = v147;
          (*(v142 + 8))(v145, v143);
          *v136 = v146;
          v136[1] = v148;
          swift_unknownObjectRelease();
          if (*v136)
          {
            if (qword_281351430 != -1)
            {
              swift_once();
            }

            v149 = sub_224DAB258();
            __swift_project_value_buffer(v149, qword_281364D60);

            v150 = sub_224DAB228();
            v151 = sub_224DAF2A8();

            v152 = os_log_type_enabled(v150, v151);
            v28 = v213;
            if (v152)
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              *v153 = 138543362;
              *(v153 + 4) = v140;
              *v154 = v140;
              v155 = v140;
              v156 = "[ext:%{public}@] acquired new underlying activity assertion";
LABEL_86:
              _os_log_impl(&dword_224A2F000, v150, v151, v156, v153, 0xCu);
              sub_224A3311C(v154, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v154, -1, -1);
              MEMORY[0x22AA5EED0](v153, -1, -1);
            }
          }

          else
          {
            if (qword_281351430 != -1)
            {
              swift_once();
            }

            v172 = sub_224DAB258();
            __swift_project_value_buffer(v172, qword_281364D60);

            v150 = sub_224DAB228();
            v151 = sub_224DAF288();

            v173 = os_log_type_enabled(v150, v151);
            v28 = v213;
            if (v173)
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              *v153 = 138543362;
              *(v153 + 4) = v140;
              *v154 = v140;
              v174 = v140;
              v156 = "[ext:%{public}@] failed to acquire new underlying activity assertion";
              goto LABEL_86;
            }
          }

          if (*(v1 + 40))
          {
            goto LABEL_88;
          }

          goto LABEL_77;
        }
      }
    }
  }

  else
  {
    v157 = (v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
    if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
    {
      v158 = v157[1];
      v159 = qword_281351430;
      swift_unknownObjectRetain();
      if (v159 != -1)
      {
        swift_once();
      }

      v160 = sub_224DAB258();
      __swift_project_value_buffer(v160, qword_281364D60);

      v161 = sub_224DAB228();
      v162 = sub_224DAF2A8();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v163 = 138543362;
        v165 = *(v1 + 16);
        *(v163 + 4) = v165;
        *v164 = v165;
        v166 = v165;
        _os_log_impl(&dword_224A2F000, v161, v162, "[ext:%{public}@] invalidating underlying activity assertion", v163, 0xCu);
        sub_224A3311C(v164, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v164, -1, -1);
        MEMORY[0x22AA5EED0](v163, -1, -1);
      }

      v167 = swift_getObjectType();
      (*(v158 + 16))(v167, v158);
      swift_unknownObjectRelease();
      *v157 = 0;
      v157[1] = 0;
      swift_unknownObjectRelease();
    }
  }

  if (*(v1 + 40))
  {
    goto LABEL_88;
  }

LABEL_77:
  v168 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  v169 = v218;
  sub_224A3796C(v1 + v168, v218, &qword_27D6F3948, &qword_224DB5C10);
  v170 = sub_224DAC378();
  LODWORD(v168) = (*(*(v170 - 8) + 48))(v169, 1, v170);
  sub_224A3311C(v169, &qword_27D6F3948, &qword_224DB5C10);
  if (v168 != 1 || *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertionCount))
  {
LABEL_88:
    v175 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
    swift_beginAccess();
    sub_224A3796C(v1 + v175, &v226, &qword_27D6F3AE8, &unk_224DB9600);
    v176 = *(&v227 + 1);
    sub_224A3311C(&v226, &qword_27D6F3AE8, &unk_224DB9600);
    v27 = &unk_28135B000;
    v171 = v222;
    if (!v176 && swift_weakLoadStrong())
    {
      __swift_project_boxed_opaque_existential_1(v229, v230);
      sub_224DAE328();
      v177 = v215;
      sub_224DA9FF8();
      sub_224D26978(v177, &v226);

      (*(v216 + 8))(v177, v217);
      swift_beginAccess();
      sub_224A838C0(&v226, v1 + v175, &qword_27D6F3AE8, &unk_224DB9600);
      swift_endAccess();
    }

    goto LABEL_91;
  }

  v107 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
  swift_beginAccess();
  sub_224A3796C(v1 + v107, &v223, &qword_27D6F3AE8, &unk_224DB9600);
  v27 = &unk_28135B000;
  if (!*(&v224 + 1))
  {
LABEL_80:
    sub_224A3311C(&v223, &qword_27D6F3AE8, &unk_224DB9600);
    goto LABEL_81;
  }

LABEL_39:
  sub_224A36F98(&v223, &v226);
  __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
  sub_224DAE1F8();
  v225 = 0;
  v223 = 0u;
  v224 = 0u;
  swift_beginAccess();
  sub_224A838C0(&v223, v1 + v107, &qword_27D6F3AE8, &unk_224DB9600);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v226);
LABEL_81:
  v171 = v222;
LABEL_91:
  if (*(v1 + v27[488]) != 1 || !*v28)
  {
LABEL_102:
    swift_unknownObjectRelease();
    goto LABEL_116;
  }

  if (v171)
  {
    if (v171 == *v28)
    {
      v178 = swift_weakLoadStrong();
      if (v178)
      {
        v179 = *(v178 + 80);
        v180 = *(v178 + 88);
        v181 = *(v1 + 16);
        v182 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v183 = v220;
        v184 = &v181[v182];
        v185 = v219;
        v186 = v28;
        v187 = v221;
        (*(v220 + 16))(v219, v184, v221);
        v188 = (*(v180 + 8))(v185, v179, v180);
        v190 = v189;
        (*(v183 + 8))(v185, v187);
        *v186 = v188;
        v186[1] = v190;
        swift_unknownObjectRelease();
        if (*v186)
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v191 = sub_224DAB258();
          __swift_project_value_buffer(v191, qword_281364D60);

          v192 = sub_224DAB228();
          v193 = sub_224DAF2A8();

          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            *v194 = 138543362;
            *(v194 + 4) = v181;
            *v195 = v181;
            v196 = v181;
            _os_log_impl(&dword_224A2F000, v192, v193, "[ext:%{public}@] refreshing underlying visibility assertion", v194, 0xCu);
            sub_224A3311C(v195, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v195, -1, -1);
            MEMORY[0x22AA5EED0](v194, -1, -1);
          }

          v197 = swift_getObjectType();
          v198 = v214;
          v199 = *(v214 + 16);
          swift_unknownObjectRetain();
          v199(v197, v198);

          swift_unknownObjectRelease_n();
          v27 = &unk_28135B000;
        }

        else
        {
          v200 = v214;
          *v186 = v222;
          v186[1] = v200;
          v201 = qword_281351430;
          swift_unknownObjectRetain();
          if (v201 != -1)
          {
            swift_once();
          }

          v202 = sub_224DAB258();
          __swift_project_value_buffer(v202, qword_281364D60);

          v203 = sub_224DAB228();
          v204 = sub_224DAF288();

          if (os_log_type_enabled(v203, v204))
          {
            v205 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            *v205 = 138543362;
            *(v205 + 4) = v181;
            *v206 = v181;
            v207 = v181;
            _os_log_impl(&dword_224A2F000, v203, v204, "[ext:%{public}@] failed to refresh underlying visibility assertion", v205, 0xCu);
            sub_224A3311C(v206, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v206, -1, -1);
            MEMORY[0x22AA5EED0](v205, -1, -1);
          }

          swift_unknownObjectRelease();
          v27 = &unk_28135B000;
        }

        goto LABEL_116;
      }
    }

    goto LABEL_102;
  }

LABEL_116:
  result = __swift_destroy_boxed_opaque_existential_1(v229);
LABEL_117:
  *(v1 + v27[488]) = 0;
  return result;
}

uint64_t sub_224A71B08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v2 + v4, &v10, &unk_27D6F4700, &unk_224DB3A10);
  if (v11)
  {
    sub_224A36F98(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    if (sub_224DAE278())
    {
      if (*(v2 + 48))
      {
        sub_224DAC2E8();
        v5 = sub_224DAC378();
        (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
      }

      else
      {
        v9 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v2 + v9, a1, &qword_27D6F3948, &qword_224DB5C10);
      }
    }

    else
    {
      v8 = sub_224DAC378();
      (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_224A3311C(&v10, &unk_27D6F4700, &unk_224DB3A10);
    v6 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
    swift_beginAccess();
    return sub_224A3796C(v2 + v6, a1, &qword_27D6F3948, &qword_224DB5C10);
  }
}

uint64_t sub_224A71D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AE8, &unk_224DB9600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A71DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A71E2C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_224DAFB08();

    if (v6)
    {
      a4(0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    a3(a1);
    if (v8)
    {
    }
  }

  return 0;
}

void sub_224A71EF0(uint64_t a1, char a2)
{
  if (*(a1 + 272) != (a2 & 1))
  {
    *(a1 + 272) = a2 & 1;
    if (a2)
    {
      sub_224A3796C(a1 + 24, v13, &qword_27D6F4200, &unk_224DB5FC0);
      if (v14)
      {
        __swift_project_boxed_opaque_existential_1(v13, v14);
        sub_224A883DC(*(a1 + 16), 1, &v15);
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_224A3311C(v13, &qword_27D6F4200, &unk_224DB5FC0);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
      }

      swift_beginAccess();
      sub_224A71D4C(&v15, a1 + 152);
      swift_endAccess();
      sub_224A3796C(a1 + 64, v13, &qword_27D6F5EF8, &qword_224DBE1F0);
      if (v14)
      {
        __swift_project_boxed_opaque_existential_1(v13, v14);
        sub_224DAE028();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_224A3311C(v13, &qword_27D6F5EF8, &qword_224DBE1F0);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
      }

      swift_beginAccess();
      sub_224A71D4C(&v15, a1 + 192);
      swift_endAccess();
      sub_224A3796C(a1 + 104, v13, &qword_27D6F5F00, qword_224DBE1F8);
      if (v14)
      {
        v4 = __swift_project_boxed_opaque_existential_1(v13, v14);
        v5 = *(a1 + 16);
        v6 = *v4;
        v7 = sub_224DAC198();
        v8 = swift_allocObject();
        swift_weakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;
        v10 = v5;
        v11 = sub_224DAC1A8();
        v12 = v6[3];
        os_unfair_lock_lock(*(v12 + 16));
        sub_224CBF61C(v6, v10, v11, &v15);
        if (v2)
        {

          os_unfair_lock_unlock(*(v12 + 16));
          __break(1u);
          return;
        }

        os_unfair_lock_unlock(*(v12 + 16));

        *(&v16 + 1) = v7;
        v17 = MEMORY[0x277CF9950];
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_224A3311C(v13, &qword_27D6F5F00, qword_224DBE1F8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
      }
    }

    else
    {
      swift_beginAccess();
      sub_224A3796C(a1 + 152, &v15, &qword_27D6F3AE8, &unk_224DB9600);
      if (*(&v16 + 1))
      {
        sub_224A3317C(&v15, v13);
        sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_project_boxed_opaque_existential_1(v13, v14);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
      }

      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      swift_beginAccess();
      sub_224A71D4C(&v15, a1 + 152);
      swift_endAccess();
      swift_beginAccess();
      sub_224A3796C(a1 + 192, &v15, &qword_27D6F3AE8, &unk_224DB9600);
      if (*(&v16 + 1))
      {
        sub_224A3317C(&v15, v13);
        sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_project_boxed_opaque_existential_1(v13, v14);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
      }

      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      swift_beginAccess();
      sub_224A71D4C(&v15, a1 + 192);
      swift_endAccess();
      swift_beginAccess();
      sub_224A3796C(a1 + 232, &v15, &qword_27D6F3AE8, &unk_224DB9600);
      if (*(&v16 + 1))
      {
        sub_224A3317C(&v15, v13);
        sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_project_boxed_opaque_existential_1(v13, v14);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
      }

      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }

    swift_beginAccess();
    sub_224A71D4C(&v15, a1 + 232);
    swift_endAccess();
  }
}

uint64_t sub_224A7244C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A72484()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A724C4(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for _SessionPriorityInfo(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v36 = v8;
  v37 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v35 = v10;
    sub_224ADEB50(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_224AE46B8();
      goto LABEL_16;
    }

    v35 = v10;
    sub_224A72A50(v13 + 1);
  }

  v15 = *v3;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*a1);
  v16 = sub_224DAFEA8();
  v38 = v15 + 56;
  v39 = v15;
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v8 + 72);
    do
    {
      sub_224A7358C(*(v39 + 48) + v19 * a2, v12);
      v20 = v12[4];
      v21 = v12[5];
      __swift_project_boxed_opaque_existential_1(v12 + 1, v20);
      v22 = (*(v21 + 16))(v20, v21);
      v24 = v23;
      v26 = a1[4];
      v25 = a1[5];
      __swift_project_boxed_opaque_existential_1(a1 + 1, v26);
      if (v22 == (*(v25 + 16))(v26, v25) && v24 == v27)
      {
        goto LABEL_19;
      }

      v29 = sub_224DAFD88();

      sub_224A8EA6C(v12);
      if (v29)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v38 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_224A72CFC(a1, *(v30 + 48) + *(v36 + 72) * a2);
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v30 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_19:

  sub_224A8EA6C(v12);
LABEL_20:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

uint64_t sub_224A7277C(uint64_t a1, void *a2)
{
  v36 = a1;
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v33 - v11;
  v35 = v2;
  v13 = *v2;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](*a2);
  v14 = sub_224DAFEA8();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  v38 = v13 + 56;
  v17 = *(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16;
  v34 = v12;
  if (v17)
  {
    v37 = ~v15;
    v39 = *(v5 + 72);
    while (1)
    {
      v18 = v39 * v16;
      sub_224A7358C(*(v13 + 48) + v39 * v16, v9);
      v19 = v9[4];
      v20 = v9[5];
      __swift_project_boxed_opaque_existential_1(v9 + 1, v19);
      v21 = (*(v20 + 16))(v19, v20);
      v23 = v22;
      v25 = a2[4];
      v24 = a2[5];
      __swift_project_boxed_opaque_existential_1(a2 + 1, v25);
      if (v21 == (*(v24 + 16))(v25, v24) && v23 == v26)
      {
        break;
      }

      v28 = sub_224DAFD88();

      sub_224A8EA6C(v9);
      if (v28)
      {
        goto LABEL_11;
      }

      v16 = (v16 + 1) & v37;
      if (((*(v38 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_224A8EA6C(v9);
LABEL_11:
    sub_224A8EA6C(a2);
    sub_224A7358C(*(v13 + 48) + v18, v36);
    return 0;
  }

  else
  {
LABEL_9:
    v29 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v34;
    sub_224A7358C(a2, v34);
    v40[0] = *v29;
    sub_224A724C4(v31, v16, isUniquelyReferenced_nonNull_native);
    *v29 = v40[0];
    sub_224A72CFC(a2, v36);
    return 1;
  }
}

uint64_t sub_224A72A50(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for _SessionPriorityInfo(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3658, &qword_224DB3C30);
  result = sub_224DAF8F8();
  v9 = result;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v30 + 72);
      sub_224A7358C(*(v7 + 48) + v20 * (v17 | (v10 << 6)), v6);
      sub_224DAFE68();
      MEMORY[0x22AA5E1E0](*v6);
      result = sub_224DAFEA8();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_224A72CFC(v6, *(v9 + 48) + v16 * v20);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_224A72CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A72D60(uint64_t a1, void *a2)
{
  v31 = a1;
  v4 = sub_224DA9F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for _SessionPriorityInfo(0);
  v10 = MEMORY[0x28223BE20](v30, v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v30 - v14;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 24))(v16, v17);
  swift_beginAccess();
  v32 = v2;
  v19 = *(v2 + 32);
  if (!*(v19 + 16))
  {
    goto LABEL_5;
  }

  v20 = sub_224A3E7EC(v18);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v22 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  v22 = *(*(v19 + 56) + 8 * v20);

LABEL_6:
  v36 = v22;
  sub_224A3317C(a2, v33);
  v23 = *(v5 + 16);
  v23(v8, v31, v4);
  sub_224A3317C(v33, (v12 + 1));
  v23(v12 + *(v30 + 24), v8, v4);
  v24 = v34;
  v25 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v26 = (*(v25 + 16))(v24, v25);
  v27 = MEMORY[0x22AA5D270](v26);

  (*(v5 + 8))(v8, v4);
  *v12 = v27;
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_224A7277C(v15, v12);
  sub_224A424D8(v15, type metadata accessor for _SessionPriorityInfo);
  swift_beginAccess();

  sub_224A7305C(v28, v18);
  swift_endAccess();
}

id sub_224A73070(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_224A71CD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224A7487C(v13, a3 & 1, &qword_27D6F3B20, &qword_224DB4838);
      v8 = sub_224A71CD0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_224B2A574(&qword_27D6F3B20, &qword_224DB4838);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void *sub_224A73210(uint64_t a1)
{
  v2 = sub_224DAF798();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_224A73280(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_224A73280(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_224A732D0(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_224A3E7EC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_224A7487C(v17, a3 & 1, a4, a5);
      v12 = sub_224A3E7EC(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_224DAF538();
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_224B2A574(a4, a5);
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

uint64_t sub_224A73474()
{
  sub_224DAC268();
  v1 = *(v0 + 16);

  return sub_224A73BC8(v1);
}

id sub_224A734DC()
{
  v1 = [*v0 widget];
  v2 = [v1 extensionIdentity];

  return v2;
}

uint64_t sub_224A73534()
{
  v1 = [*v0 identifier];
  v2 = sub_224DAEE18();

  return v2;
}

uint64_t sub_224A7358C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SessionPriorityInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_224A735F0(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_224DAF838();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_224A6FB70(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x22AA5DCC0](i, a1);
        sub_224A3B79C(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_224A6FB70((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_224A739A4(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_224A3B79C(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_224A6FB70((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_224A739A4(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_224A737DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3618, &qword_224DB3BF0);
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

void sub_224A73900(void *a1, unint64_t a2, SEL *a3)
{
  sub_224A738EC(a2);
  v5 = sub_224DAEFF8();

  [a1 *a3];
}

_OWORD *sub_224A739A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_224A73A64(char *a1, void *a2, uint64_t a3)
{
  if ([*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_connection] remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    return sub_224A3311C(v10, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6128, &qword_224DBE878);
  result = swift_dynamicCast();
  if (result)
  {

    swift_unknownObjectRetain();
    sub_224A78078(a1, a2, a3, v7);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

id sub_224A73B8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224CEB940();
  *a1 = result;
  return result;
}

uint64_t sub_224A73BC8(void *a1)
{
  v2 = sub_224DADA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 23, a1[26]);
  result = sub_224DADA38();
  if (result)
  {
    v8 = sub_224DAC248();
    v9 = [v8 extensionIdentity];

    sub_224DACA18();
    sub_224DACF08();

    (*(v3 + 8))(v6, v2);
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v10 = sub_224DACF38();
    v11 = v10;
    v12 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors;
    v13 = *(a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);
    if (v13)
    {

      v14 = sub_224A73DB4(v11, v13);
    }

    else
    {
      v14 = sub_224AE8EB4(v10);
    }

    v15 = v14;

    *(a1 + v12) = v15;
  }

  return result;
}

id sub_224A73DB4(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AA5DCC0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_224A5E830(&v10, v5, &unk_2813509D0, 0x277CFA378, &qword_27D6F3638, &qword_224DB3C10);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_224DAF838();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t objectdestroy_47Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void sub_224A73F30(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v6 = sub_224DAA888();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  BSDispatchQueueAssert();
  v46 = 0;
  sub_224DA94D8();
  swift_allocObject();
  sub_224DA94C8();
  sub_224DAA868();
  sub_224A7940C(&qword_281351780, MEMORY[0x277D7BBE8], MEMORY[0x277D7BBF0]);
  sub_224DA94B8();
  v44 = v7;

  v11 = v45;
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  v13 = __swift_project_value_buffer(v12, qword_281364EC8);
  v14 = a3;

  v15 = sub_224DAB228();
  v16 = sub_224DAF278();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v13;
    v20 = v19;
    v21 = v11;
    v22 = swift_slowAlloc();
    v45 = v22;
    *v18 = 136446466;
    *(v18 + 4) = sub_224A33F74(*&v14[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v14[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v45);
    *(v18 + 12) = 2114;
    v23 = sub_224DAA818();
    *(v18 + 14) = v23;
    *v20 = v23;
    _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s] Received message to subscribe to %{public}@.", v18, 0x16u);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = v22;
    v11 = v21;
    MEMORY[0x22AA5EED0](v24, -1, -1);
    v25 = v18;
    v6 = v43;
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  v26 = *&v14[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v26 + 16));
  _Block_copy(a4);
  sub_224A7E9B8(v11, v14, &v46, a4);
  os_unfair_lock_unlock(*(v26 + 16));
  if (v46)
  {
  }

  else
  {
    sub_224DAA878();
    sub_224DA9508();
    swift_allocObject();
    sub_224DA94F8();
    sub_224A7940C(&unk_281351770, MEMORY[0x277D7BBF8], MEMORY[0x277D7BC00]);
    v27 = sub_224DA94E8();
    v28 = v6;
    v29 = v27;
    v31 = v30;
    v43 = v28;

    v32 = v14;

    v33 = sub_224DAB228();
    v34 = sub_224DAF2A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v33;
      v38 = v37;
      v45 = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_224A33F74(*&v32[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v32[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v45);
      *(v35 + 12) = 2114;
      v39 = sub_224DAA818();
      *(v35 + 14) = v39;
      *v36 = v39;
      v40 = v42;
      _os_log_impl(&dword_224A2F000, v42, v34, "[%{public}s] Successfully subscribed to session: %{public}@", v35, 0x16u);
      sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x22AA5EED0](v38, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    else
    {
    }

    sub_224A77FD0(v29, v31);
    v41 = sub_224DA96B8();
    (a4)[2](a4, v41, 0);

    sub_224A78024(v29, v31);
    sub_224A78024(v29, v31);

    (*(v44 + 8))(v10, v43);
  }

  _Block_release(a4);
}

uint64_t sub_224A7487C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_224DAFB98();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_224DAF698();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t type metadata accessor for WidgetRendererSession(uint64_t a1)
{
  result = qword_281357978;
  if (!qword_281357978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224A74B30(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v116 = a5;
  v115 = a4;
  v8 = sub_224DAB258();
  v119 = *(v8 - 8);
  v120 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v118 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_224DAB7B8();
  v111 = *(v112 - 1);
  MEMORY[0x28223BE20](v112, v11);
  v108 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_224DAB848();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v13);
  v106 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_224DACB98();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v15);
  v103 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_224DACB08();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v17);
  v101 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_224DACB28();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v19);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DACC88();
  v113 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v117 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DAE918();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v24);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAC268();
  v121 = *(v27 - 8);
  v122 = v27;
  v28 = *(v121 + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v114 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v110 = &v89 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v105 = &v89 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v95 = &v89 - v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  aBlock[0] = a2;
  sub_224DAD3D8();
  v39 = v126;
  if (!v126)
  {
    v90 = v21;
    v40 = v115;
    __swift_project_boxed_opaque_existential_1(v115 + 12, v115[15]);
    v89 = a2;
    sub_224DADA58();
    sub_224DABE88();
    v41 = *(v121 + 16);
    v91 = v121 + 16;
    v92 = v41;
    v42 = v95;
    v41(v95, a3, v122);
    (*(v93 + 104))(v26, *MEMORY[0x277CE3D68], v94);
    sub_224A3317C(&v125, aBlock);
    sub_224A3317C(v40 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver, &v124);
    v43 = v42;
    v44 = sub_224DABE48();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v45 = v89;
    aBlock[0] = v89;
    v94 = v44;
    v124 = v44;
    sub_224DAD3B8();
    (*(v96 + 104))(v98, *MEMORY[0x277CF9B50], v97);
    (*(v99 + 104))(v101, *MEMORY[0x277CF9B40], v100);
    (*(v102 + 104))(v103, *MEMORY[0x277CF9BF0], v104);
    sub_224DACC48();
    sub_224DACC38();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    aBlock[0] = v45;
    sub_224DAD3E8();
    v46 = v115;
    v47 = *(v115 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
    v48 = v122;
    v92(v43, v116, v122);
    v49 = v121;
    v50 = (*(v121 + 80) + 24) & ~*(v121 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    (*(v49 + 32))(v51 + v50, v43, v48);
    aBlock[4] = sub_224A73474;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_171;
    v52 = _Block_copy(aBlock);
    v53 = v47;
    v54 = v46;

    v55 = v106;
    sub_224DAB7E8();
    v124 = MEMORY[0x277D84F90];
    sub_224A828F0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v56 = v108;
    v57 = v112;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v55, v56, v52);
    _Block_release(v52);

    (*(v111 + 8))(v56, v57);
    (*(v107 + 8))(v55, v109);

    (*(v119 + 16))(v118, v54 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v120);
    v58 = v105;
    v59 = v116;
    v60 = v122;
    v61 = v92;
    v92(v105, v116, v122);
    v62 = v110;
    v61(v110, v59, v60);
    v61(v114, v59, v60);
    v63 = sub_224DAB228();
    v64 = sub_224DAF2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v112 = v66;
      v116 = swift_slowAlloc();
      aBlock[0] = v116;
      *v65 = 138543874;
      LODWORD(v115) = v64;
      v67 = sub_224DAC248();
      v68 = [v67 extensionIdentity];

      v69 = *(v121 + 8);
      v70 = v58;
      v71 = v122;
      v69(v70, v122);
      *(v65 + 4) = v68;
      *v66 = v68;
      *(v65 + 12) = 2082;
      v72 = sub_224DAC248();
      v73 = [v72 kind];

      v74 = sub_224DAEE18();
      v76 = v75;

      v69(v62, v71);
      v77 = sub_224A33F74(v74, v76, aBlock);

      *(v65 + 14) = v77;
      *(v65 + 22) = 2082;
      v78 = v114;
      v79 = sub_224DAC248();
      [v79 family];

      v80 = NSStringFromWidgetFamily();
      v81 = sub_224DAEE18();
      v83 = v82;

      v69(v78, v71);
      v84 = sub_224A33F74(v81, v83, aBlock);

      *(v65 + 24) = v84;
      _os_log_impl(&dword_224A2F000, v63, v115, "Acquired lifetime assertion for: %{public}@:%{public}s:%{public}s", v65, 0x20u);
      v85 = v112;
      sub_224A3311C(v112, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v85, -1, -1);
      v86 = v116;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v86, -1, -1);
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    else
    {

      v87 = v122;
      v88 = *(v121 + 8);
      v88(v114, v122);
      v88(v62, v87);
      v88(v58, v87);
    }

    (*(v119 + 8))(v118, v120);
    (*(v113 + 8))(v117, v90);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    v39 = v94;
  }
}

uint64_t sub_224A75914()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A759D8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_224DACC88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_224A75AB0(unint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v183 = v174 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v175 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v178 = v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v180 = v174 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v174 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v202 = v174 - v21;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v179 = *(v195 - 8);
  v23 = MEMORY[0x28223BE20](v195, v22);
  v182 = v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v197 = v174 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v199 = v174 - v29;
  if (a1 >> 62)
  {
    goto LABEL_117;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v201 = v9;
    if (i)
    {
      goto LABEL_7;
    }

    if (a2 >> 62)
    {
      if (sub_224DAF838())
      {
        goto LABEL_7;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    v31 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
    swift_beginAccess();
    if (!*(*&v3[v31] + 16))
    {
      if (qword_281351610 == -1)
      {
LABEL_105:
        v167 = sub_224DAB258();
        __swift_project_value_buffer(v167, qword_281364FD0);
        v168 = sub_224DAB228();
        v169 = sub_224DAF2A8();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&dword_224A2F000, v168, v169, "Tearing down existing process monitor because we have nothing to observe.", v170, 2u);
          MEMORY[0x22AA5EED0](v170, -1, -1);
        }

        v171 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processMonitor;
        swift_beginAccess();
        sub_224A3796C(&v3[v171], &v203, &qword_27D6F4160, &unk_224DB5BF0);
        if (*(&v204 + 1))
        {
          sub_224A3317C(&v203, &v208);
          sub_224A3311C(&v203, &qword_27D6F4160, &unk_224DB5BF0);
          v172 = *(&v209 + 1);
          v173 = v210;
          __swift_project_boxed_opaque_existential_1(&v208, *(&v209 + 1));
          (*(v173 + 16))(v172, v173);
          __swift_destroy_boxed_opaque_existential_1(&v208);
        }

        else
        {
          sub_224A3311C(&v203, &qword_27D6F4160, &unk_224DB5BF0);
        }

        v205 = 0;
        v203 = 0u;
        v204 = 0u;
        swift_beginAccess();
        sub_224A838C0(&v203, &v3[v171], &qword_27D6F4160, &unk_224DB5BF0);
        return swift_endAccess();
      }

LABEL_123:
      swift_once();
      goto LABEL_105;
    }

LABEL_7:
    v212 = MEMORY[0x277D84FA0];
    v213 = MEMORY[0x277D84FA0];
    v211 = MEMORY[0x277D84FA0];
    v32 = sub_224A7B5CC(a1);
    a1 = v32;
    v174[1] = 0;
    if (v32 >> 62)
    {
      v9 = sub_224DAF838();
    }

    else
    {
      v9 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v188 = a2 >> 62;
    v34 = &unk_224DB3000;
    v176 = v3;
    v192 = v19;
    v190 = a2;
    if (v9)
    {
      v35 = 0;
      v193 = &v3[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager];
      v198 = (a1 & 0xC000000000000001);
      v196 = a1 & 0xFFFFFFFFFFFFFF8;
      v200 = MEMORY[0x277D84F90];
      *&v33 = 138543362;
      v189 = v33;
      v194 = a1;
      v191 = v9;
      while (1)
      {
        if (v198)
        {
          v36 = MEMORY[0x22AA5DCC0](v35, a1);
        }

        else
        {
          if (v35 >= *(v196 + 16))
          {
            goto LABEL_113;
          }

          v36 = *(a1 + 8 * v35 + 32);
        }

        v37 = v36;
        v19 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          goto LABEL_112;
        }

        v38 = [v36 extensionIdentity];
        __swift_project_boxed_opaque_existential_1(v193, *(v193 + 3));
        sub_224DAC6D8();
        if (*(&v204 + 1))
        {
          sub_224A36F98(&v203, &v208);
        }

        else
        {
          sub_224A3311C(&v203, &unk_27D6F4700, &unk_224DB3A10);
          if (qword_281351610 != -1)
          {
            swift_once();
          }

          v39 = sub_224DAB258();
          __swift_project_value_buffer(v39, qword_281364FD0);
          v40 = v38;
          v41 = sub_224DAB228();
          v3 = sub_224DAF2A8();

          if (os_log_type_enabled(v41, v3))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v42 = v189;
            *(v42 + 4) = v40;
            *v43 = v40;
            v44 = v40;
            _os_log_impl(&dword_224A2F000, v41, v3, "Ignoring configured descriptor for unknown extension: %{public}@", v42, 0xCu);
            sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
            v45 = v43;
            a2 = v190;
            MEMORY[0x22AA5EED0](v45, -1, -1);
            MEMORY[0x22AA5EED0](v42, -1, -1);
          }

          v210 = 0;
          v208 = 0u;
          v209 = 0u;
          v34 = &unk_224DB3000;
        }

        if (*(&v209 + 1))
        {
          sub_224A36F98(&v208, &v203);
          v46 = v200;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v207[0] = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v200 = sub_224A5C040(0, v200[2] + 1, 1, v200);
            v207[0] = v200;
          }

          v49 = v200[2];
          v48 = v200[3];
          if (v49 >= v48 >> 1)
          {
            v200 = sub_224A5C040((v48 > 1), v49 + 1, 1, v200);
            v207[0] = v200;
          }

          v50 = *(&v204 + 1);
          v51 = v205;
          v52 = __swift_mutable_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
          MEMORY[0x28223BE20](v52, v52);
          v54 = v174 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v55 + 16))(v54);
          sub_224A5C064(v49, v54, v207, v50, v51);
          __swift_destroy_boxed_opaque_existential_1(&v203);
          v34 = &unk_224DB3000;
        }

        else
        {
          sub_224A3311C(&v208, &unk_27D6F4700, &unk_224DB3A10);
        }

        v9 = v191;
        ++v35;
        a1 = v194;
        if (v19 == v191)
        {
          goto LABEL_32;
        }
      }
    }

    v200 = MEMORY[0x277D84F90];
LABEL_32:

    v57 = v188 ? sub_224DAF838() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v191 = v57;
    if (!v57)
    {
      break;
    }

    v58 = 0;
    v193 = &v176[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager];
    v196 = a2 & 0xC000000000000001;
    v194 = a2 & 0xFFFFFFFFFFFFFF8;
    v198 = MEMORY[0x277D84F90];
    *&v56 = v34[194];
    v189 = v56;
    v3 = v191;
    while (1)
    {
      if (v196)
      {
        v59 = MEMORY[0x22AA5DCC0](v58, a2);
      }

      else
      {
        if (v58 >= *(v194 + 16))
        {
          goto LABEL_115;
        }

        v59 = *&a2[8 * v58 + 32];
      }

      v60 = v59;
      v19 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v61 = [v59 controlIdentity];
      v9 = [v61 extensionIdentity];

      a1 = __swift_project_boxed_opaque_existential_1(v193, *(v193 + 3));
      sub_224DAC6D8();
      if (*(&v204 + 1))
      {
        sub_224A36F98(&v203, &v208);
      }

      else
      {
        sub_224A3311C(&v203, &unk_27D6F4700, &unk_224DB3A10);
        if (qword_281351610 != -1)
        {
          swift_once();
        }

        v62 = sub_224DAB258();
        a1 = __swift_project_value_buffer(v62, qword_281364FD0);
        v63 = v9;
        v64 = sub_224DAB228();
        v65 = sub_224DAF2A8();

        if (os_log_type_enabled(v64, v65))
        {
          a1 = swift_slowAlloc();
          v66 = v60;
          v67 = swift_slowAlloc();
          *a1 = v189;
          *(a1 + 4) = v63;
          *v67 = v63;
          v68 = v63;
          _os_log_impl(&dword_224A2F000, v64, v65, "Ignoring configured descriptor for unknown extension: %{public}@", a1, 0xCu);
          sub_224A3311C(v67, &unk_27D6F69F0, &unk_224DB3900);
          v69 = v67;
          v60 = v66;
          v3 = v191;
          MEMORY[0x22AA5EED0](v69, -1, -1);
          MEMORY[0x22AA5EED0](a1, -1, -1);
        }

        v210 = 0;
        v208 = 0u;
        v209 = 0u;
        a2 = v190;
      }

      if (*(&v209 + 1))
      {
        sub_224A36F98(&v208, &v203);
        v70 = v198;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v207[0] = v70;
        if ((v71 & 1) == 0)
        {
          v70 = sub_224A5C040(0, v70[2] + 1, 1, v70);
          v207[0] = v70;
        }

        a1 = v70[2];
        v72 = v70[3];
        if (a1 >= v72 >> 1)
        {
          v198 = sub_224A5C040((v72 > 1), a1 + 1, 1, v70);
          v207[0] = v198;
        }

        else
        {
          v198 = v70;
        }

        v9 = *(&v204 + 1);
        v73 = v205;
        v74 = __swift_mutable_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
        MEMORY[0x28223BE20](v74, v74);
        v76 = v174 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v77 + 16))(v76);
        sub_224A5C064(a1, v76, v207, v9, v73);
        __swift_destroy_boxed_opaque_existential_1(&v203);
        v3 = v191;
      }

      else
      {
        sub_224A3311C(&v208, &unk_27D6F4700, &unk_224DB3A10);
      }

      ++v58;
      if (v19 == v3)
      {
        goto LABEL_58;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    ;
  }

  v198 = MEMORY[0x277D84F90];
LABEL_58:
  *&v203 = v200;
  sub_224A85B54(v198);
  v78 = v203;
  v188 = *(v203 + 16);
  if (v188)
  {
    a1 = 0;
    v198 = (v179 + 16);
    v184 = (v175 + 16);
    v181 = (v175 + 48);
    v177 = (v175 + 32);
    v196 = v179 + 8;
    v185 = (v179 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v186 = v203 + 32;
    v187 = v203;
    v191 = (v175 + 8);
    while (a1 < *(v78 + 16))
    {
      v193 = a1;
      sub_224A3317C(v186 + 40 * a1, &v203);
      __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
      v79 = sub_224DAE338();
      v80 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v9 = *v198;
      v81 = &v79[v80];
      v19 = v195;
      (*v198)(v199, v81, v195);

      v82 = v212;
      if (*(v212 + 16) && (sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]), v83 = sub_224DAED88(), v84 = -1 << *(v82 + 32), v85 = v83 & ~v84, ((*(v82 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) != 0))
      {
        v86 = ~v84;
        a2 = *(v179 + 72);
        while (1)
        {
          v87 = v197;
          (v9)(v197, *(v82 + 48) + a2 * v85, v19);
          sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
          v88 = sub_224DAEDD8();
          v89 = v87;
          v3 = *v196;
          (*v196)(v89, v19);
          if (v88)
          {
            break;
          }

          v85 = (v85 + 1) & v86;
          if (((*(v82 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
LABEL_68:
        v90 = v182;
        (v9)(v182, v199, v19);
        v91 = v197;
        sub_224A85C9C(v197, v90);
        v190 = *v196;
        (v190)(v91, v19);
        __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
        sub_224DAE228();
        v92 = v201;
        v94 = v191;
        v93 = v192;
        if (v95)
        {
          v96 = v202;
          sub_224DA9FF8();
          v97 = v180;
          (*v184)(v180, v96, v92);
          sub_224A3A634(v93, v97);
          v98 = *v94;
          (*v94)(v93, v92);
          v98(v96, v92);
        }

        __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
        v99 = sub_224DAE338();
        v100 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        v101 = v99 + v100;
        v9 = v183;
        sub_224A3796C(v101, v183, &unk_27D6F5060, &qword_224DB5620);

        if ((*v181)(v9, 1, v92) == 1)
        {
          sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
          v102 = &off_27853F000;
        }

        else
        {
          v103 = v178;
          (*v177)(v178, v9, v92);
          (*v184)(v93, v103, v92);
          v104 = v202;
          sub_224A3A634(v202, v93);
          v9 = *v94;
          (*v94)(v104, v92);
          sub_224DA9FE8();
          v105 = sub_224DAEDE8();

          v102 = &off_27853F000;
          v106 = [objc_opt_self() predicateMatchingBundleIdentifier_];

          sub_224A85F80(&v208, v106);
          (v9)(v103, v92);
        }

        sub_224DA9FE8();
        v107 = sub_224DAEDE8();

        v108 = objc_opt_self();
        v109 = *(v102 + 354);
        v200 = v108;
        v110 = [v108 v109];

        *&v189 = v110;
        sub_224A85F80(&v208, v189);

        a2 = v205;
        __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
        v194 = sub_224DAE378();
        v111 = *(v194 + 16);
        v113 = v191;
        v112 = v192;
        if (v111)
        {
          a2 = v102;
          v114 = v194 + 40;
          do
          {
            swift_bridgeObjectRetain_n();
            sub_224DA9FF8();
            v115 = v202;
            sub_224A3A634(v202, v112);
            (*v113)(v115, v201);
            v116 = sub_224DAEDE8();

            v9 = [v200 a2 + 1081];

            sub_224A85F80(&v208, v9);
            v114 += 16;
            --v111;
          }

          while (v111);
        }

        v19 = v195;
        v3 = v190;
      }

      a1 = (v193 + 1);
      (v3)(v199, v19);
      __swift_destroy_boxed_opaque_existential_1(&v203);
      v78 = v187;
      if (a1 == v188)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_116;
  }

LABEL_77:

  v117 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
  v118 = v176;
  swift_beginAccess();
  a1 = *&v118[v117];
  v3 = (a1 + 64);
  v119 = 1 << *(a1 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v9 = v120 & *(a1 + 64);
  v19 = ((v119 + 63) >> 6);
  v198 = (v175 + 8);

  v121 = 0;
  v199 = a1;
  if (v9)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_83:
    v126 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (v126 >= v19)
    {
      break;
    }

    v9 = *&v3[8 * v126];
    ++v121;
    if (v9)
    {
      while (1)
      {
        v127 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v128 = *(*(a1 + 48) + ((v126 << 9) | (8 * v127)));
        v129 = [v128 bundleIdentifier];
        if (v129)
        {
          v122 = v129;
          v200 = sub_224DAEE18();
          v123 = [objc_opt_self() predicateMatchingBundleIdentifier_];

          a2 = v123;
          sub_224A85F80(&v203, a2);

          v124 = v192;
          sub_224DA9FF8();
          v125 = v202;
          sub_224A3A634(v202, v124);
          a1 = v199;

          (*v198)(v125, v201);
          v121 = v126;
          if (!v9)
          {
            goto LABEL_83;
          }
        }

        else
        {

          v121 = v126;
          if (!v9)
          {
            goto LABEL_83;
          }
        }

LABEL_82:
        v126 = v121;
      }
    }
  }

  v130 = v212;
  v3 = v176;
  swift_beginAccess();

  sub_224C70A64(v131);
  swift_endAccess();
  v132 = v213;
  swift_beginAccess();

  sub_224C70A8C(v133);
  swift_endAccess();
  v134 = sub_224A861C4(v130, &unk_27D6F3920, &qword_224DB35B0);
  v135 = sub_224A861C4(v132, &qword_27D6F3900, &unk_224DB4640);

  *&v203 = v134;
  sub_224A864D0(v135);
  v136 = v203;
  v137 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processMonitor;
  swift_beginAccess();
  sub_224A3796C(&v3[v137], &v208, &qword_27D6F4160, &unk_224DB5BF0);
  if (!*(&v209 + 1))
  {
    sub_224A3311C(&v208, &qword_27D6F4160, &unk_224DB5BF0);
    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v147 = sub_224DAB258();
    __swift_project_value_buffer(v147, qword_281364FD0);

    v148 = sub_224DAB228();
    v149 = sub_224DAF2A8();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *&v203 = v151;
      *v150 = 136446210;
      v152 = MEMORY[0x22AA5D380](v136, MEMORY[0x277D837D0]);
      v154 = v153;

      v155 = sub_224A33F74(v152, v154, &v203);

      *(v150 + 4) = v155;
      _os_log_impl(&dword_224A2F000, v148, v149, "Creating a process monitor for bundle identifiers: %{public}s", v150, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v151);
      v156 = v151;
      v3 = v176;
      MEMORY[0x22AA5EED0](v156, -1, -1);
      MEMORY[0x22AA5EED0](v150, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v160, v161);
    v174[-2] = v3;
    v174[-1] = &v211;
    v162 = swift_allocObject();
    *(v162 + 16) = sub_224B486E4;
    *(v162 + 24) = &v174[-4];
    v205 = sub_224A37E94;
    v206 = v162;
    *&v203 = MEMORY[0x277D85DD0];
    *(&v203 + 1) = 1107296256;
    *&v204 = sub_224A37E38;
    *(&v204 + 1) = &block_descriptor_95;
    v163 = _Block_copy(&v203);
    v164 = objc_opt_self();

    v165 = [v164 monitorWithConfiguration_];
    _Block_release(v163);

    LOBYTE(v163) = swift_isEscapingClosureAtFileLocation();

    if ((v163 & 1) == 0)
    {
      *(&v204 + 1) = sub_224A3B79C(0, &unk_281350A60, 0x277D46F80);
      v205 = &off_28382A9B0;
      *&v203 = v165;
      swift_beginAccess();
      sub_224A838C0(&v203, &v3[v137], &qword_27D6F4160, &unk_224DB5BF0);
      swift_endAccess();
    }

    __break(1u);
    goto LABEL_123;
  }

  sub_224A36F98(&v208, &v203);
  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v138 = sub_224DAB258();
  __swift_project_value_buffer(v138, qword_281364FD0);

  v139 = sub_224DAB228();
  v140 = sub_224DAF2A8();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v208 = v142;
    *v141 = 136446210;
    v143 = MEMORY[0x22AA5D380](v136, MEMORY[0x277D837D0]);
    v145 = v144;

    v146 = sub_224A33F74(v143, v145, &v208);

    *(v141 + 4) = v146;
    _os_log_impl(&dword_224A2F000, v139, v140, "Updating existing process monitor for bundle identifiers: %{public}s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v142);
    MEMORY[0x22AA5EED0](v142, -1, -1);
    MEMORY[0x22AA5EED0](v141, -1, -1);
  }

  else
  {
  }

  v157 = v205;
  v158 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
  MEMORY[0x28223BE20](v158, v159);
  v174[-2] = &v211;
  (*(v157 + 1))(sub_224A867EC);
  __swift_destroy_boxed_opaque_existential_1(&v203);
}

void sub_224A77578(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAA7B8();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAA7C8();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAA7D8();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAA7F8();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224A77A04;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_91;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224CCBC28;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_99;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224CCBC30;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_107_0;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

uint64_t sub_224A7799C()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224A77A0C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364EC8);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v23);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono render service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v22 = v20;
      sub_224A77CC8(sub_224A77FC8, v21);
    }

    else
    {
    }
  }
}