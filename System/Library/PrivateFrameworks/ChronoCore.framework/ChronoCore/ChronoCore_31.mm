uint64_t sub_224D3DD2C(char *a1, uint64_t a2)
{
  v123 = a1;
  v126 = sub_224DACC88();
  v119 = *(v126 - 8);
  v4 = MEMORY[0x28223BE20](v126, v3);
  v115 = (&v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v6);
  v118 = (&v112 - v7);
  v8 = sub_224DAC2B8();
  v9 = *(v8 - 8);
  v124 = v8;
  v125 = v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v113 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v112 = &v112 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v117 = &v112 - v17;
  v18 = sub_224DAB258();
  v127 = *(v18 - 8);
  v128 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v116 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v114 = &v112 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v112 - v26;
  v28 = sub_224DACB98();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v112 - v35;
  sub_224DACC68();
  v37 = *(v29 + 104);
  v37(v33, *MEMORY[0x277CF9BF0], v28);
  v38 = sub_224DACB88();
  v39 = *(v29 + 8);
  v39(v33, v28);
  v120 = v28;
  v121 = v39;
  v39(v36, v28);
  if (v38 & 1) != 0 || (sub_224DACC68(), v40 = v120, v37(v33, *MEMORY[0x277CF9B60], v120), v41 = sub_224DACB88(), v42 = v121, v121(v33, v40), v42(v36, v40), (v41))
  {
    v43 = v127;
    v44 = v27;
    (*(v127 + 16))(v27, v122 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v128);
    v46 = v124;
    v45 = v125;
    v47 = v117;
    (*(v125 + 16))(v117, v123, v124);
    v48 = v118;
    v49 = v119;
    v50 = a2;
    v51 = v126;
    (*(v119 + 16))(v118, v50, v126);
    v123 = v44;
    v52 = sub_224DAB228();
    LODWORD(v122) = sub_224DAF2A8();
    if (os_log_type_enabled(v52, v122))
    {
      v53 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v129 = v116;
      *v53 = 136446466;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v115 = v52;
      v54 = sub_224DAFD28();
      v56 = v55;
      (*(v45 + 8))(v47, v46);
      v57 = sub_224A33F74(v54, v56, &v129);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2082;
      sub_224DACC68();
      sub_224D407A8(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v58 = v120;
      v59 = sub_224DAFD28();
      v61 = v60;
      v121(v36, v58);
      (*(v49 + 8))(v48, v126);
      v62 = sub_224A33F74(v59, v61, &v129);

      *(v53 + 14) = v62;
      v63 = v115;
      _os_log_impl(&dword_224A2F000, v115, v122, "%{public}s Checking cache because config reason is %{public}s", v53, 0x16u);
      v64 = v116;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v64, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);

      (*(v127 + 8))(v123, v128);
      return 1;
    }

    (*(v49 + 8))(v48, v51);
    (*(v45 + 8))(v47, v46);
    (*(v43 + 8))(v123, v128);
    return 1;
  }

  else
  {
    v66 = v123;
    v67 = sub_224DAC2A8();
    v68 = [v67 extensionIdentity];

    v69 = [v68 isRemote];
    v70 = v127;
    v71 = *(v127 + 16);
    v72 = v125;
    v73 = (v125 + 16);
    if (v69)
    {
      v74 = v114;
      v75 = v128;
      v71(v114, v122 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v128);
      v76 = v112;
      v77 = v124;
      (*v73)(v112, v66, v124);
      v78 = sub_224DAB228();
      v79 = sub_224DAF2A8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = v76;
        v81 = swift_slowAlloc();
        v82 = v75;
        v83 = swift_slowAlloc();
        v129 = v83;
        *v81 = 136446210;
        sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v84 = sub_224DAFD28();
        v85 = v72;
        v87 = v86;
        (*(v85 + 8))(v80, v77);
        v88 = sub_224A33F74(v84, v87, &v129);

        *(v81 + 4) = v88;
        _os_log_impl(&dword_224A2F000, v78, v79, "%{public}s Checking cache because extension is remote", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x22AA5EED0](v83, -1, -1);
        MEMORY[0x22AA5EED0](v81, -1, -1);

        (*(v127 + 8))(v74, v82);
      }

      else
      {

        (*(v72 + 8))(v76, v77);
        (*(v127 + 8))(v74, v75);
      }

      return 1;
    }

    v89 = v128;
    v71(v116, v122 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v128);
    v90 = v113;
    v91 = v124;
    (*v73)(v113, v66, v124);
    v92 = v119;
    v93 = v115;
    v94 = a2;
    v95 = v126;
    (*(v119 + 16))(v115, v94, v126);
    v96 = sub_224DAB228();
    LODWORD(v123) = sub_224DAF2A8();
    if (os_log_type_enabled(v96, v123))
    {
      v97 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v129 = v122;
      *v97 = 136446466;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v118 = v96;
      v98 = sub_224DAFD28();
      v99 = v91;
      v100 = v70;
      v102 = v101;
      (*(v125 + 8))(v90, v99);
      v103 = sub_224A33F74(v98, v102, &v129);

      *(v97 + 4) = v103;
      *(v97 + 12) = 2082;
      sub_224DACC68();
      sub_224D407A8(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v104 = v89;
      v105 = v120;
      v106 = sub_224DAFD28();
      v108 = v107;
      v121(v36, v105);
      (*(v92 + 8))(v93, v126);
      v109 = sub_224A33F74(v106, v108, &v129);

      *(v97 + 14) = v109;
      v110 = v118;
      _os_log_impl(&dword_224A2F000, v118, v123, "%{public}s Not checking cache (%{public}s)", v97, 0x16u);
      v111 = v122;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v111, -1, -1);
      MEMORY[0x22AA5EED0](v97, -1, -1);

      (*(v100 + 8))(v116, v104);
    }

    else
    {

      (*(v92 + 8))(v93, v95);
      (*(v125 + 8))(v90, v91);
      (*(v70 + 8))(v116, v89);
    }

    return 0;
  }
}

id sub_224D3E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a4;
  v67 = a3;
  v7 = sub_224DAE6E8();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v69 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v58 - v12;
  v14 = sub_224DA9688();
  v70 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v58 - v20;
  v22 = a5;
  v23 = *(*(a5 + 8) + 8);
  v24 = v73;
  result = sub_224DAC3F8();
  if (!v24)
  {
    v65 = a1;
    v66 = v22;
    v63 = v23;
    v64 = 0;
    v61 = v13;
    v62 = v18;
    v73 = v14;
    v26 = [objc_opt_self() defaultManager];
    sub_224DA95A8();
    v27 = sub_224DAEDE8();

    v28 = [v26 fileExistsAtPath_];

    if (v28)
    {
      v29 = v64;
      sub_224DAC488();
      v30 = v29;
      v31 = v70;
      if (!v29)
      {
        sub_224DAC418();
        (*(v31 + 8))(v21, v73);
        return v75;
      }

      v32 = v73;
      goto LABEL_9;
    }

    __swift_project_boxed_opaque_existential_1(v68 + 9, *(v68 + 12));
    v33 = sub_224DADA48();
    v31 = v70;
    v34 = v66;
    if (!v33 || (v35 = sub_224DAC2A8(), v36 = sub_224DACFB8(), , v35, !v36))
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v43 = v71;
      v42 = v69;
      (*(v71 + 104))(v69, *MEMORY[0x277CE3C18], v72);
      v30 = sub_224DAF638();
      swift_willThrow();
      v32 = v73;
      goto LABEL_13;
    }

    v37 = *(*(v34 + 16) + 16);
    v38 = v36;
    v39 = v64;
    v40 = sub_224DAC438();
    v30 = v39;
    v32 = v73;
    if (v39)
    {

LABEL_9:
      v42 = v69;
      v43 = v71;
LABEL_13:
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v43 + 104))(v42, *MEMORY[0x277CE3C50], v72);
      v48 = v30;
      sub_224DAF638();
      swift_willThrow();

      return (*(v31 + 8))(v21, v32);
    }

    v44 = v40;
    v68 = v21;
    v45 = v41;
    ObjectType = swift_getObjectType();
    v66 = v45;
    v47 = sub_224DABCE8();
    v58[1] = v37;
    v58[2] = ObjectType;
    v59 = v38;
    v60 = v47;
    v58[3] = v44;
    v49 = sub_224DAC2A8();
    v50 = v61;
    sub_224DAC288();
    v51 = v50;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_224A3311C(v51, &qword_27D6F56C0, &unk_224DB3580);
      v64 = 0;
    }

    else
    {
      sub_224DAA1F8();
      v64 = v54;
      (*(v53 + 8))(v51, v52);
    }

    v55 = v62;
    v75 = v59;
    sub_224D4053C();
    sub_224DAE838();

    sub_224DABCF8();
    v56 = *(v31 + 8);
    v56(v55, v32);
    sub_224DAC488();
    sub_224DAC418();
    swift_unknownObjectRelease();
    v57 = v59;

    v56(v68, v32);
    return v75;
  }

  return result;
}

uint64_t sub_224D3F078(NSObject *a1)
{
  v129 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v119 = v105 - v5;
  v127 = sub_224DAC2B8();
  v125 = *(v127 - 8);
  v7 = MEMORY[0x28223BE20](v127, v6);
  v124 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v123 = v105 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = v105 - v13;
  v15 = sub_224DAB258();
  v126 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v128 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v122 = v105 - v20;
  v121 = sub_224DA9688();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v21);
  v23 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v105 - v26;
  v28 = sub_224DAE4F8();
  v30 = MEMORY[0x28223BE20](v28, v29);
  v32 = v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v30, v33);
  v37 = v105 - v36;
  if ((*(v1 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview) & 1) == 0)
  {
    v38 = *(v1 + 128);
    if (v38)
    {
      v114 = v23;
      v116 = v35;
      v117 = result;
      v113 = v14;
      v118 = v15;
      v39 = v1;
      v40 = *(v1 + 136);
      v41 = v38;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v43 = sub_224DAC438();
      if (v2)
      {
        return swift_unknownObjectRelease();
      }

      v112 = v44;
      v109 = v39;
      v107 = v40;
      v108 = ObjectType;
      v115 = v43;
      v111 = v41;
      if (sub_224DAC9E8())
      {
        sub_224DAC9F8();
        __swift_project_boxed_opaque_existential_1(&v131, v133);
        sub_224DAE7E8();
        sub_224D3E918(v111, v129, v37, v108, v107);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v116 + 8))(v37, v117);
        return __swift_destroy_boxed_opaque_existential_1(&v131);
      }

      v45 = swift_getObjectType();
      v46 = sub_224DABCE8();
      v47 = v109;
      v105[1] = v45;
      v106 = v46;
      v110 = 0;
      v48 = sub_224DAC2A8();
      sub_224DAC9F8();
      __swift_project_boxed_opaque_existential_1(&v131, v133);
      sub_224DAE7E8();
      sub_224DAC288();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v27, 1, v49) == 1)
      {
        sub_224A3311C(v27, &qword_27D6F56C0, &unk_224DB3580);
      }

      else
      {
        sub_224DAA1F8();
        (*(v50 + 8))(v27, v49);
      }

      sub_224DAEC78();
      sub_224DAC9F8();
      v130 = sub_224DAEC68();
      v51 = v106;
      v52 = v110;
      sub_224DAE838();
      if (v52)
      {

        (*(v116 + 8))(v32, v117);
        __swift_destroy_boxed_opaque_existential_1(&v131);
        v54 = v127;
        v55 = v125;
        swift_getObjectType();
        v131 = 0;
        v132 = 0xE000000000000000;
        sub_224DAF938();

        v131 = 0xD000000000000025;
        v132 = 0x8000000224DCF630;
        swift_getErrorValue();
        v56 = sub_224D1680C(v134, v135);
        MEMORY[0x22AA5D210](v56);

        sub_224DABD08();

        v57 = v126;
        v58 = v128;
        (*(v126 + 16))(v128, v47 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v118);
        v59 = v124;
        (*(v55 + 16))(v124, v129, v54);
        v60 = v52;
        v61 = sub_224DAB228();
        v62 = sub_224DAF288();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = v59;
          v64 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v110 = v52;
          v66 = v65;
          v131 = v65;
          *v64 = 136446466;
          sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
          v67 = sub_224DAFD28();
          v68 = v54;
          v69 = v57;
          v71 = v70;
          (*(v55 + 8))(v63, v68);
          v72 = sub_224A33F74(v67, v71, &v131);

          *(v64 + 4) = v72;
          *(v64 + 12) = 2114;
          v73 = v110;
          v74 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 14) = v74;
          v75 = v129;
          v129->isa = v74;
          _os_log_impl(&dword_224A2F000, v61, v62, "%{public}s Failed to write placeholder archive: %{public}@", v64, 0x16u);
          sub_224A3311C(v75, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v75, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v66);
          MEMORY[0x22AA5EED0](v66, -1, -1);
          MEMORY[0x22AA5EED0](v64, -1, -1);

          (*(v69 + 8))(v128, v118);
        }

        else
        {

          (*(v55 + 8))(v59, v54);
          (*(v57 + 8))(v58, v118);
        }

        swift_willThrow();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      (*(v116 + 8))(v32, v117);
      __swift_destroy_boxed_opaque_existential_1(&v131);
      v53 = v114;
      sub_224DABCF8();
      v110 = 0;
      v76 = *(v120 + 8);
      v128 = (v120 + 8);
      v124 = v76;
      (v76)(v53, v121);
      v77 = v126;
      v78 = v122;
      v79 = v118;
      (*(v126 + 16))(v122, v47 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v118);
      v80 = v125;
      v81 = *(v125 + 16);
      v82 = v113;
      v83 = v129;
      v84 = v127;
      v81(v113, v129, v127);
      v81(v123, v83, v84);
      swift_unknownObjectRetain();
      v85 = sub_224DAB228();
      v86 = sub_224DAF2A8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v85, v86))
      {
        LODWORD(v117) = v86;
        v129 = v85;
        v87 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v131 = v116;
        *v87 = 136446466;
        sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v88 = sub_224DAFD28();
        v90 = v89;
        v91 = *(v80 + 8);
        v91(v82, v84);
        v92 = sub_224A33F74(v88, v90, &v131);

        *(v87 + 4) = v92;
        *(v87 + 12) = 2080;
        v93 = v119;
        v94 = v123;
        v95 = v110;
        sub_224DAC3F8();
        if (v95)
        {

          (*(v120 + 56))(v93, 1, 1, v121);
          sub_224A3311C(v93, &unk_27D6F4680, &unk_224DB4610);
          v96 = 0xE300000000000000;
          v97 = 7104878;
        }

        else
        {
          v99 = v121;
          (*(v120 + 56))(v93, 0, 1, v121);
          v97 = sub_224DA9578();
          v96 = v100;
          (v124)(v93, v99);
        }

        v101 = v122;
        v91(v94, v127);
        v102 = sub_224A33F74(v97, v96, &v131);

        *(v87 + 14) = v102;
        v103 = v129;
        _os_log_impl(&dword_224A2F000, v129, v117, "%{public}s Successfully saved placeholder archive: %s", v87, 0x16u);
        v104 = v116;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v104, -1, -1);
        MEMORY[0x22AA5EED0](v87, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return (*(v126 + 8))(v101, v118);
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v98 = *(v80 + 8);
        v98(v123, v84);
        v98(v82, v84);
        return (*(v77 + 8))(v78, v79);
      }
    }
  }

  return result;
}

uint64_t sub_224D3FF9C()
{
  sub_224A3D418(v0[2], v0[3]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v1 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlReloadStrategy(uint64_t a1)
{
  result = qword_281358940;
  if (!qword_281358940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D400C4(uint64_t a1)
{
  result = sub_224DAB258();
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

uint64_t sub_224D4028C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_224DAE6E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 controlType];
  if (v9 == 1)
  {
    a2[3] = sub_224DAE998();
    a2[4] = sub_224D407A8(&qword_27D6F6AB0, MEMORY[0x277CE3DF8], MEMORY[0x277CE3DF0]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_224DAE988();
  }

  else if (v9 == 3)
  {
    a2[3] = sub_224DAE978();
    a2[4] = sub_224D407A8(&qword_27D6F6AB8, MEMORY[0x277CE3DE8], MEMORY[0x277CE3DE0]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_224DAE968();
  }

  else if (v9 == 2)
  {
    a2[3] = sub_224DAE958();
    a2[4] = sub_224D407A8(&qword_27D6F6AC0, MEMORY[0x277CE3DD8], MEMORY[0x277CE3DD0]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_224DAE948();
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v5 + 104))(v8, *MEMORY[0x277CE3C30], v4);
    sub_224DAF638();
    return swift_willThrow();
  }
}

unint64_t sub_224D4053C()
{
  result = qword_27D6F6A98;
  if (!qword_27D6F6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6A98);
  }

  return result;
}

double sub_224D40608(void *a1)
{
  v3 = *(sub_224DAC2B8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224D38464(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_224D406D4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_224DAC2B8() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_224D35C04(a1, a2, a3, v10, v3 + v8, v11, v12);
}

uint64_t sub_224D407A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_224D4082C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_224DAAF48();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_224ADA17C(0, v10, 0);
    v11 = v22;
    v12 = *(sub_224DAAE38() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = v6 + 32;
    v17 = *(v12 + 72);
    while (1)
    {
      v20(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_224ADA17C((v14 > 1), v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v19);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_224D40A30(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v13[2] = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v4 = v10;
      v12 = v10;
      a1(v13, &v12);
      if (v5)
      {
        goto LABEL_18;
      }

      v5 = 0;

      v4 = v13[0];
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_224D40BA4(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v17 = MEMORY[0x277D84F90];
    sub_224ADA4E0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v17;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA5DCC0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v15 = v11;
      a1(v16, &v15);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v17 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        sub_224ADA4E0((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v4;
      sub_224A36F98(v16, v9 + 40 * v13 + 32);
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_224D40D40(void (*a1)(id *), unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v25 = sub_224DAC268();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v11 = a3;
    v29 = MEMORY[0x277D84F90];
    a3 = &v29;
    sub_224ADA224(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = MEMORY[0x22AA5DCC0](v12, v14);
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_224ADA224((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_224D40F88(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_224DA9688();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_224ADA268(0, v10, 0);
    v11 = v22;
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = a3 + v18;
    v17 = (v6 + 32);
    v13 = *(v6 + 72);
    while (1)
    {
      v20(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_224ADA268((v14 > 1), v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      (*v17)(v11 + v18 + v15 * v13, v9, v19);
      v12 += v13;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224D41144(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_224DAB018();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_224ADA758(0, v10, 0);
    v11 = v22;
    v12 = *(sub_224DAC268() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17[1] = v6 + 32;
    v17[0] = *(v12 + 72);
    while (1)
    {
      v19(v13, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_224ADA758((v14 > 1), v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
      v13 += v17[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_224D4134C(void *a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = *a1 + 32;
  v4 = MEMORY[0x277D84FA0];
  do
  {
    sub_224A3317C(v3, v7);
    v5 = sub_224D413EC(v7, a1 + 1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v4 = sub_224AD6960(v5, v4);
    v3 += 40;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_224D413EC(void *a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v38 - v7;
  v9 = sub_224DA9688();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v38[3] = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v40 = v38 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = v38 - v18;
  v20 = v3[3];
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_224DAE338();
  v23 = v20;
  v24 = v9;
  v25 = v10;
  (*(v21 + 8))(v22, v23, v21);

  if ((*(v10 + 48))(v8, 1, v24) == 1)
  {
    sub_224A3311C(v8, &unk_27D6F4680, &unk_224DB4610);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v10 + 32))(v19, v8, v24);
    v26 = v40;
    sub_224DA9548();
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_224DB3100;
    v28 = *MEMORY[0x277CBE7B0];
    *(v27 + 32) = *MEMORY[0x277CBE7B0];
    v29 = v28;
    v30 = sub_224DAA3F8();

    MEMORY[0x28223BE20](v31, v32);
    v38[-2] = v26;
    sub_224D40F88(sub_224D41AD8, &v38[-4], v30);
    v34 = v33;

    v35 = sub_224AE9040(v34);

    v36 = *(v25 + 8);
    v36(v19, v24);
    v36(v26, v24);
    return v35;
  }
}

uint64_t sub_224D41994()
{
  v0 = sub_224DA9598();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = sub_224DA9588();
  v7[1] = v5;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_224AFC154();
  sub_224DA9678();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_224D41B60(uint64_t a1)
{
  sub_224BDD38C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_224DA9878();
    if (v4 <= 0x3F)
    {
      v2 = swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        v2 = sub_224DAF728();
        if (v6 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v2;
}

uint64_t sub_224D41D20(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_224DAE8B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63B0, &qword_224DBFEA8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ExtensionTask.SchedulingOption(0) - 8;
  v13 = MEMORY[0x28223BE20](v11, v12);
  MEMORY[0x28223BE20](v13, v14);
  v18 = &v31 - v17;
  v19 = *(a2 + 16);
  if (!v19)
  {
    return 0;
  }

  v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v21 = (v4 + 48);
  v22 = *(v15 + 72);
  v37 = (v4 + 8);
  v32 = (v4 + 32);
  v33 = v7;
  v38 = v22;
  v39 = v16;
  while (1)
  {
    sub_224D42D6C(v20, v18, type metadata accessor for ExtensionTask.SchedulingOption);
    v23 = *(v7 + 48);
    sub_224D42D6C(v18, v10, type metadata accessor for ExtensionTask.SchedulingOption);
    sub_224D42D6C(v40, &v10[v23], type metadata accessor for ExtensionTask.SchedulingOption);
    v24 = *v21;
    v25 = (*v21)(v10, 5, v3);
    if (v25 > 2)
    {
      break;
    }

    if (v25)
    {
      if (v25 == 1)
      {
        if (v24(&v10[v23], 5, v3) == 1)
        {
          goto LABEL_25;
        }
      }

      else if (v24(&v10[v23], 5, v3) == 2)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v26 = v39;
    sub_224D42D6C(v10, v39, type metadata accessor for ExtensionTask.SchedulingOption);
    if (v24(&v10[v23], 5, v3))
    {
      (*v37)(v26, v3);
      v22 = v38;
      goto LABEL_19;
    }

    v27 = v36;
    (*v32)(v36, &v10[v23], v3);
    sub_224D42EB0(&qword_281350C38, MEMORY[0x277CE3D38], MEMORY[0x277CE3D48]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v28 = *v37;
    v29 = v27;
    v7 = v33;
    (*v37)(v29, v3);
    v34 = v41;
    v35 = v42;
    v28(v26, v3);
    sub_224A3D3B8(v10, type metadata accessor for ExtensionTask.SchedulingOption);
    v22 = v38;
    if (v35 == v34)
    {
      goto LABEL_26;
    }

LABEL_20:
    sub_224A3D3B8(v18, type metadata accessor for ExtensionTask.SchedulingOption);
    v20 += v22;
    if (!--v19)
    {
      return 0;
    }
  }

  if (v25 == 3)
  {
    if (v24(&v10[v23], 5, v3) == 3)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v25 == 4)
  {
    if (v24(&v10[v23], 5, v3) == 4)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v24(&v10[v23], 5, v3) != 5)
  {
LABEL_19:
    sub_224A3311C(v10, &qword_27D6F63B0, &qword_224DBFEA8);
    goto LABEL_20;
  }

LABEL_25:
  sub_224A3D3B8(v10, type metadata accessor for ExtensionTask.SchedulingOption);
LABEL_26:
  sub_224A3D3B8(v18, type metadata accessor for ExtensionTask.SchedulingOption);
  return 1;
}

BOOL sub_224D42214(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_224D42244(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + ((v7 << 9) | (8 * v8))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D423B8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813516A0);
  __swift_project_value_buffer(v0, qword_2813516A0);
  return sub_224DAB238();
}

uint64_t sub_224D42438()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_224DAF728();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v29 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v29 - v14;
  v16 = *(v2 + 184);
  swift_beginAccess();
  (*(v7 + 16))(v11, v1 + v16, v6);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_2813516A0);
  swift_retain_n();
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 138543618;
    v23 = v1[3];
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 1026;
    v24 = v3;
    v25 = v4;
    v26 = *(v1 + 16);
    v27 = v23;

    *(v21 + 14) = v26;
    v4 = v25;
    v3 = v24;

    _os_log_impl(&dword_224A2F000, v19, v20, "Session priority boosting for task %{public}@: %{BOOL,public}d", v21, 0x12u);
    v28 = v29;
    sub_224A3311C(v29, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  else
  {
  }

  (*(v3 + 48))(v15, *(v1 + 16), v4, v3);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_224D42818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v8[14] = swift_getAssociatedTypeWitness();
  v9 = sub_224DAF728();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224D4292C, 0, 0);
}

uint64_t sub_224D4292C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(*v5 + 184);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5 + v6, v3);
  v7 = *(v4 - 8);
  v8 = (*(v7 + 48))(v1, 1, v4);
  v9 = *(v0 + 136);
  if (v8 == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    v10 = *(v0 + 112);
    *(v0 + 40) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v7 + 32))(boxed_opaque_existential_1, v9, v10);
  }

  v14 = (*(v0 + 72) + **(v0 + 72));
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_224D42B24;

  return v14(v0 + 16);
}

uint64_t sub_224D42B24()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_224D42CC0;
  }

  else
  {
    sub_224A3311C(v2 + 16, &qword_27D6F4760, &unk_224DB3680);
    v3 = sub_224D42C50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224D42C50()
{
  (*(v0 + 96))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224D42CC0()
{
  v1 = v0[19];
  v2 = v0[12];
  sub_224A3311C((v0 + 2), &qword_27D6F4760, &unk_224DB3680);
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_224D42D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224D42DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_224ACED1C;

  return sub_224D42818(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_224D42EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224D42F10()
{
  v1 = *v0;
  v23 = sub_224DAA428();
  v2 = *(v23 - 8);
  v4 = MEMORY[0x28223BE20](v23, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v22 - v15;
  type metadata accessor for ReadOnlyHost(0, v7, *(v1 + 88), v17);
  (*(v13 + 16))(v16, v0 + qword_281365430, v12);
  v18 = *(*v0 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v11, v0 + v18, v7);
  v19 = *(*v0 + 112);
  swift_beginAccess();
  (*(v2 + 16))(v6, v0 + v19, v23);
  v20 = swift_allocObject();
  sub_224D43364(v16, v11, v6, &qword_281365418);
  return v20;
}

uint64_t sub_224D431CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_224D43364(a1, a2, a3, &qword_281365418);
  return v6;
}

void sub_224D43250(uint64_t a1)
{
  sub_224AFCD10(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_224DAA428();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t *sub_224D43364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *v4;
  v9 = *a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  (*(*(*(v8 + 80) - 8) + 32))(v4 + *(*v4 + 104), a2);
  v11 = *(*v4 + 112);
  v12 = sub_224DAA428();
  (*(*(v12 - 8) + 32))(v4 + v11, a3, v12);
  return v4;
}

uint64_t sub_224D434D4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_224D43504(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;

  MEMORY[0x22AA5D210](45, 0xE100000000000000);
  sub_224DA98F8();
  v22[1] = sub_224DA98E8();
  sub_224A3F6A4();
  v9 = sub_224DAEF18();
  v11 = sub_224A3D19C(8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x22AA5D1C0](v11, v13, v15, v17);
  v20 = v19;

  (*(v5 + 8))(v8, v4);
  MEMORY[0x22AA5D210](v18, v20);

  return v23;
}

uint64_t sub_224D4369C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_224DAE338();
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v4 += 5;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_224D43768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v32 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v38 = v8;
  v40 = v6;
  v32 = v1;
  v43 = MEMORY[0x277D84F90];
  sub_224ADA64C(0, v9, 0);
  v10 = v43;
  v11 = a1 + 64;
  result = sub_224DAF798();
  v13 = result;
  v14 = 0;
  v39 = v4;
  v36 = v4 + 32;
  v37 = (v4 + 16);
  v33 = a1 + 72;
  v34 = v9;
  v35 = a1 + 64;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 36);
    v41 = v14;
    v42 = v17;
    v18 = *(*(a1 + 48) + 8 * v13);
    v19 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v20 = a1;
    v21 = v38;
    v22 = v40;
    (*v37)(v38, v18 + v19, v40);
    v43 = v10;
    v24 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_224ADA64C((v23 > 1), v24 + 1, 1);
      v10 = v43;
    }

    *(v10 + 16) = v24 + 1;
    result = (*(v39 + 32))(v10 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v24, v21, v22);
    v15 = 1 << *(v20 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v11 = v35;
    v25 = *(v35 + 8 * v16);
    if ((v25 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v20;
    if (v42 != *(v20 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v13 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v16 << 6;
      v28 = v16 + 1;
      v29 = (v33 + 8 * v16);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_224A3E204(v13, v42, 0);
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_224A3E204(v13, v42, 0);
    }

LABEL_4:
    v14 = v41 + 1;
    v13 = v15;
    if (v41 + 1 == v34)
    {
      return v10;
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
  return result;
}

void sub_224D43A9C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v33 = v34;
    v3 = v1 + 64;
    v4 = sub_224DAF798();
    v5 = 0;
    v6 = *(v1 + 36);
    v28 = v1 + 72;
    v29 = v2;
    v30 = v6;
    v31 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v32 = v5;
      v9 = *(*(v1 + 56) + 8 * v4);
      v10 = *(*(v1 + 48) + 8 * v4);
      v11 = v9;
      v12 = [v10 description];
      v13 = sub_224DAEE18();
      v14 = v1;
      v16 = v15;

      MEMORY[0x22AA5D210](v13, v16);

      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224DAFA48();

      v17 = v33;
      v19 = *(v33 + 16);
      v18 = *(v33 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_224A3DFD8((v18 > 1), v19 + 1, 1);
        v17 = v33;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0xE000000000000000;
      v7 = 1 << *(v14 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v3 = v31;
      v21 = *(v31 + 8 * v8);
      if ((v21 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v33 = v17;
      v6 = v30;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v4 & 0x3F));
      if (v22)
      {
        v7 = __clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v8 << 6;
        v24 = v8 + 1;
        v25 = (v28 + 8 * v8);
        while (v24 < (v7 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_224A3E204(v4, v30, 0);
            v7 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v4, v30, 0);
      }

LABEL_4:
      v5 = v32 + 1;
      v4 = v7;
      if (v32 + 1 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_224D43D90(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v34 = v37;
    v3 = v1 + 64;
    v4 = sub_224DAF798();
    v5 = 0;
    v6 = *(v1 + 36);
    v29 = v1 + 72;
    v30 = v2;
    v31 = v6;
    v32 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v33 = v5;
      v9 = *(*(v1 + 56) + 8 * v4);
      v10 = *(*(v1 + 48) + 8 * v4);
      v11 = v9;
      v12 = [v10 description];
      v13 = sub_224DAEE18();
      v14 = v1;
      v16 = v15;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      swift_getErrorValue();
      v17 = sub_224D1680C(v35, v36);
      MEMORY[0x22AA5D210](v17);

      v18 = v34;
      v20 = *(v34 + 16);
      v19 = *(v34 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_224A3DFD8((v19 > 1), v20 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v13;
      *(v21 + 40) = v16;
      v7 = 1 << *(v14 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v3 = v32;
      v22 = *(v32 + 8 * v8);
      if ((v22 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v34 = v18;
      v6 = v31;
      if (v31 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v4 & 0x3F));
      if (v23)
      {
        v7 = __clz(__rbit64(v23)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v8 << 6;
        v25 = v8 + 1;
        v26 = (v29 + 8 * v8);
        while (v25 < (v7 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_224A3E204(v4, v31, 0);
            v7 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v4, v31, 0);
      }

LABEL_4:
      v5 = v33 + 1;
      v4 = v7;
      if (v33 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_224D44060(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0;
  v42 = v8;
  v43 = a1 + 64;

  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          goto LABEL_43;
        }

        v7 = *(v4 + 8 * v11);
        ++v9;
        if (v7)
        {
          v9 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

LABEL_11:
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = v12 >> 62;
    v14 = v12 >> 62 ? sub_224DAF838() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (*v2 >> 62)
    {
      break;
    }

    v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_42;
    }

LABEL_15:
    v17 = *v2;

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v19 = v17;
    *v2 = v17;
    v47 = v7;
    v45 = v14;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      sub_224DAF838();
      goto LABEL_24;
    }

    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      goto LABEL_23;
    }

    v20 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v16 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = v12;
      goto LABEL_25;
    }

LABEL_24:
    v21 = v12;
    v19 = sub_224DAF968();
    *v2 = v19;
    v20 = v19 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v22 = *(v20 + 16);
    v23 = (*(v20 + 24) >> 1) - v22;
    v44 = v19;
    if (v13)
    {
      v27 = sub_224DAF838();
      if (!v27)
      {
LABEL_4:

        v8 = v42;
        v4 = v43;
        v10 = v47;
        if (v45 > 0)
        {
          goto LABEL_45;
        }

        goto LABEL_5;
      }

      v28 = v27;
      v29 = sub_224DAF838();
      if (v23 < v29)
      {
        goto LABEL_48;
      }

      if (v28 < 1)
      {
        goto LABEL_49;
      }

      v41 = v29;
      v30 = v20 + 8 * v22 + 32;
      sub_224A33088(&qword_27D6F4090, &qword_27D6F4088, &unk_224DC1A90, MEMORY[0x277D83988]);
      for (i = 0; i != v28; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4088, &unk_224DC1A90);
        v32 = sub_224A6996C(v46, i, v21);
        v34 = *v33;
        (v32)(v46, 0);
        *(v30 + 8 * i) = v34;
      }

      v2 = a2;
      v3 = v40;
      v26 = v41;
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_4;
      }

      if (v23 < v24)
      {
        goto LABEL_47;
      }

      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
      v26 = v25;
      swift_arrayInitWithCopy();
    }

    v8 = v42;
    v4 = v43;
    v10 = v47;
    if (v26 < v45)
    {
      goto LABEL_45;
    }

    if (v26 > 0)
    {
      v35 = *(v20 + 16);
      v36 = __OFADD__(v35, v26);
      v37 = v35 + v26;
      if (v36)
      {
        goto LABEL_46;
      }

      *(v20 + 16) = v37;
    }

LABEL_5:
    v7 = (v10 - 1) & v10;
    *v2 = v44;
  }

  v38 = sub_224DAF838();
  v16 = v38 + v14;
  if (!__OFADD__(v38, v14))
  {
    goto LABEL_15;
  }

LABEL_42:
  __break(1u);
LABEL_43:
}

unint64_t sub_224D44404(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_41;
        }
      }

      v6 = [*(v4 + *(*v4 + 104)) controlItems];
      sub_224DAF5D8();
      v7 = sub_224DAF008();

      v8 = v7 >> 62;
      v9 = v7 >> 62 ? sub_224DAF838() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_224DAF838();
        goto LABEL_20;
      }

      if (v10)
      {
        goto LABEL_19;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = v3;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v33 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v14 >> 1) - v13) < v9)
          {
            goto LABEL_44;
          }

          v17 = v12 + 8 * v13 + 32;
          v28 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            sub_224A33088(&qword_27D6F4068, &qword_27D6F4060, &unk_224DC1AA0, MEMORY[0x277D83988]);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4060, &unk_224DC1AA0);
              v19 = sub_224A6996C(v32, i, v7);
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
          if (v9 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v9);
            v23 = v22 + v9;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v9 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
    v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
    {
      goto LABEL_13;
    }

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
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_224D447A4()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    return 7105633;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_224D44828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_224D56DB4(a1);

  *a2 = v3;
  return result;
}

void *sub_224D44868@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_224D44888()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53F0, &qword_224DC1B60);
    sub_224A33088(&qword_281350F48, &qword_27D6F53F0, &qword_224DC1B60, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44964()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53F8, &qword_224DBBB38);
    sub_224A33088(&qword_281350F58, &qword_27D6F53F8, &qword_224DBBB38, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44A40()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5400, &unk_224DC1B50);
    sub_224A33088(&qword_281350F50, &qword_27D6F5400, &unk_224DC1B50, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44B1C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5408, &qword_224DBBB40);
    sub_224A33088(&qword_281350F40, &qword_27D6F5408, &qword_224DBBB40, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44BF8()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5410, &unk_224DC1B40);
    sub_224A33088(&qword_281350EF8, &qword_27D6F5410, &unk_224DC1B40, MEMORY[0x277CBCE20]);
    v2 = sub_224DAB3A8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44CD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CC0, &qword_224DC1B10);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CC8, &qword_224DC1B18);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - v7;
  sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
  sub_224DAD8F8();
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277CF9DF8], v0);
  sub_224DAD8E8();
  v10 = *(v1 + 8);
  v10(v4, v0);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D48();

  if ((v11 & 1) == 0)
  {
    v9(v4, *MEMORY[0x277CF9E00], v0);
    sub_224DAD8E8();
    v10(v4, v0);
  }

  v12 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v13 = v21;
  swift_beginAccess();
  sub_224A3796C(v13 + v12, v23, &qword_27D6F6C28, &qword_224DC1A38);
  v14 = v24;
  if (v24)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15, v15);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    sub_224A3311C(v23, &qword_27D6F6C28, &qword_224DC1A38);
    sub_224DAD5C8();
    (*(v16 + 8))(v18, v14);
    v19 = sub_224DACFA8();

    (*(v22 + 8))(v8, v5);
  }

  else
  {
    (*(v22 + 8))(v8, v5);
    sub_224A3311C(v23, &qword_27D6F6C28, &qword_224DC1A38);
    return 0;
  }

  return v19;
}

void sub_224D450A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_persistentSubscriptions;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224A39EF8(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_224A3B7E4(v6);

      v20.receiver = v1;
      v20.super_class = type metadata accessor for DescriptorService(0);
      objc_msgSendSuper2(&v20, sel_dealloc);
      return;
    }

    while (1)
    {
      sub_224DAB328();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for DescriptorService(uint64_t a1)
{
  result = qword_28135A920;
  if (!qword_28135A920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224D455C4(void *a1)
{
  v240 = a1;
  v179 = sub_224DAB7B8();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v1);
  v176 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_224DAB848();
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v3);
  v174 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_224DAD448();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222, v5);
  v220 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v218 = *(v219 - 8);
  MEMORY[0x28223BE20](v219, v7);
  v217 = &v169 - v8;
  v212 = sub_224DAF558();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v9);
  v210 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C58, &qword_224DC1AB8);
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v11);
  v213 = &v169 - v12;
  v231 = sub_224DAF3B8();
  v232 = *(v231 - 8);
  MEMORY[0x28223BE20](v231, v13);
  v216 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_224DADBD8();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203, v15);
  v201 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C60, &qword_224DC1AC0);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v17);
  v192 = &v169 - v18;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C68, &qword_224DC1AC8);
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v19);
  v195 = &v169 - v20;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C70, &qword_224DC1AD0);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v21);
  v198 = &v169 - v22;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C78, &qword_224DC1AD8);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v23);
  v204 = &v169 - v24;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C80, &unk_224DC1AE0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v25);
  v207 = &v169 - v26;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v27);
  v189 = &v169 - v28;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v188 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v29);
  v186 = &v169 - v30;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v31);
  v180 = &v169 - v32;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v33);
  v183 = &v169 - v34;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C88, &qword_224DC1AF8);
  v230 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v35);
  v226 = &v169 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v228 = &v169 - v39;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v229 = *(v224 - 8);
  MEMORY[0x28223BE20](v224, v40);
  v223 = &v169 - v41;
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_281365168);
  v43 = sub_224DAB228();
  v44 = sub_224DAF2A8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_224A2F000, v43, v44, "start", v45, 2u);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v46 = sub_224DA9D58();

  aBlock = v46;
  v251 = *&v241[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  v47 = v251;
  v48 = sub_224DAF358();
  v49 = *(v48 - 8);
  v238 = *(v49 + 56);
  v237 = v49 + 56;
  v50 = v228;
  v238(v228, 1, 1, v48);
  v227 = v47;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  v236 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v225 = MEMORY[0x277CBCD90];
  v52 = sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
  v53 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  v54 = v223;
  v173 = v51;
  v172 = v52;
  sub_224DAB448();
  sub_224A3311C(v50, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v55 = v241;
  swift_unknownObjectWeakInit();
  v56 = MEMORY[0x277CBCD60];
  v57 = sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600, MEMORY[0x277CBCD60]);
  v58 = v224;
  v171 = v57;
  sub_224DAB488();

  v59 = *(v229 + 8);
  v229 += 8;
  v170 = v59;
  v59(v54, v58);
  v60 = &v55[OBJC_IVAR____TtC10ChronoCore17DescriptorService_persistentSubscriptions];
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224DAD528();
  aBlock = sub_224DAD508();
  v61 = v227;
  v251 = v227;
  v235 = v48;
  v238(v50, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54A0, &qword_224DBBB88);
  sub_224A33088(&qword_281351038, &unk_27D6F54A0, &qword_224DBBB88, v225);
  v62 = v226;
  v234 = v53;
  sub_224DAB448();
  sub_224A3311C(v50, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v63 = v241;
  swift_unknownObjectWeakInit();
  sub_224A33088(&qword_281351218, &qword_27D6F6C88, &qword_224DC1AF8, v56);
  v64 = v239;
  sub_224DAB488();

  (*(v230 + 1))(v62, v64);
  swift_beginAccess();
  v233 = v60;
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v240, &aBlock);
  v65 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A838C0(&aBlock, &v63[v65], &qword_27D6F6C28, &qword_224DC1A38);
  swift_endAccess();
  v66 = *&v63[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24];
  v230 = &v63[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager];
  __swift_project_boxed_opaque_existential_1(&v63[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], v66);
  v67 = sub_224DAC678();
  v68 = *(v67 + 16);
  if (v68)
  {
    v239 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager;
    v226 = v67;
    v69 = v67 + 32;
    do
    {
      sub_224A3317C(v69, &v251);
      __swift_project_boxed_opaque_existential_1(&v251, v252);
      v72 = sub_224DAE338();
      sub_224A3317C(v240, &v246);
      aBlock = v72;
      sub_224A3796C(&v241[v239], &v243, &unk_27D6F53A0, &qword_224DC1A80);
      if (v244)
      {
        __swift_project_boxed_opaque_existential_1(&v243, v244);
        v242[3] = &type metadata for ExtensionDescriptorStateCapturing;
        v242[4] = sub_224D5BCA8();
        v242[0] = swift_allocObject();
        sub_224D5BCFC(&aBlock, v242[0] + 16);
        __swift_project_boxed_opaque_existential_1(&v251, v252);
        v70 = sub_224DAE338();
        v71 = [v70 description];

        sub_224DAEE18();
        sub_224DAA2F8();

        sub_224D5BC78(&aBlock);
        __swift_destroy_boxed_opaque_existential_1(v242);
        __swift_destroy_boxed_opaque_existential_1(&v243);
      }

      else
      {
        sub_224D5BC78(&aBlock);
        sub_224A3311C(&v243, &unk_27D6F53A0, &qword_224DC1A80);
      }

      __swift_destroy_boxed_opaque_existential_1(&v251);
      v69 += 40;
      --v68;
    }

    while (v68);
  }

  v73 = v230;
  __swift_project_boxed_opaque_existential_1(v230, *(v230 + 3));
  aBlock = sub_224DAC688();
  __swift_project_boxed_opaque_existential_1(v73, *(v73 + 3));
  v251 = sub_224DAC6A8();
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v239 = MEMORY[0x277CBCD90];
  v226 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
  v74 = v180;
  sub_224DAB428();

  v75 = v227;
  aBlock = v227;
  v76 = v228;
  v238(v228, 1, 1, v235);
  sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0, MEMORY[0x277CBCD48]);
  v77 = v75;
  v78 = v183;
  v79 = v182;
  sub_224DAB448();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  (*(v181 + 8))(v74, v79);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = MEMORY[0x277CBCD60];
  v227 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0, MEMORY[0x277CBCD60]);
  v81 = v185;
  sub_224DAB488();

  (*(v184 + 8))(v78, v81);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(v230, *(v230 + 3));
  aBlock = sub_224DAC698();
  v251 = v77;
  v238(v76, 1, 1, v235);
  v82 = v77;
  v83 = v186;
  sub_224DAB448();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v84 = v241;
  swift_unknownObjectWeakInit();
  v185 = sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, v80);
  v85 = v187;
  sub_224DAB488();

  v184 = *(v188 + 1);
  (v184)(v83, v85);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v86 = *&v84[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService + 24];
  v188 = &v84[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService];
  __swift_project_boxed_opaque_existential_1(&v84[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService], v86);
  aBlock = sub_224DADE88();
  v251 = v82;
  v87 = v235;
  v238(v76, 1, 1, v235);
  v88 = v82;
  sub_224DAB448();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v89 = v241;
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  (v184)(v83, v85);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v90 = &v89[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService];
  v91 = v89;
  v92 = *&v89[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24];
  v93 = *&v89[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32];
  __swift_project_boxed_opaque_existential_1(v90, v92);
  aBlock = (*(*(v93 + 8) + 40))(768, v92);
  v251 = v88;
  v238(v76, 1, 1, v87);
  v94 = v88;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v187 = sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, v239);
  v95 = v189;
  sub_224DAB448();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v186 = sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, v227);
  v96 = v191;
  sub_224DAB488();

  v190 = *(v190 + 8);
  (v190)(v95, v96);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v97 = &v91[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService];
  v98 = *&v91[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 24];
  v99 = *&v91[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 32];
  __swift_project_boxed_opaque_existential_1(v97, v98);
  aBlock = (*(*(v99 + 8) + 40))(768, v98);
  v225 = v94;
  v251 = v94;
  v238(v76, 1, 1, v235);
  sub_224DAB448();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v100 = v241;
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  (v190)(v95, v96);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(v240, v240[3]);
  aBlock = sub_224DAD5E8();
  *(swift_allocObject() + 16) = v100;
  v226 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C90, &unk_224DC1B00);
  sub_224A33088(&qword_2813510B8, &qword_27D6F6C90, &unk_224DC1B00, v239);
  v102 = v192;
  v103 = v203;
  sub_224DAB3B8();

  v104 = sub_224DAF3D8();
  aBlock = v104;
  v238(v76, 1, 1, v235);
  sub_224A33088(&qword_27D6F6C98, &qword_27D6F6C60, &qword_224DC1AC0, MEMORY[0x277CBCB10]);
  v105 = v195;
  v106 = v194;
  sub_224DAB448();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  (*(v193 + 8))(v102, v106);
  v107 = v201;
  sub_224DADBA8();
  sub_224A33088(&qword_27D6F6CA0, &qword_27D6F6C68, &qword_224DC1AC8, v227);

  v108 = v198;
  v109 = v197;
  sub_224DAB3F8();

  (*(v202 + 8))(v107, v103);
  (*(v196 + 8))(v105, v109);
  sub_224A33088(&qword_27D6F6CA8, &qword_27D6F6C70, &qword_224DC1AD0, MEMORY[0x277CBCC28]);

  v110 = v200;
  v111 = v204;
  sub_224DAB3C8();

  (*(v199 + 8))(v108, v110);
  v112 = v216;
  sub_224DAF378();
  v113 = sub_224DAF3D8();
  aBlock = v113;
  v114 = v238;
  v238(v76, 1, 1, v235);
  sub_224A33088(&qword_27D6F6CB0, &qword_27D6F6C78, &qword_224DC1AD8, MEMORY[0x277CBCB60]);
  v115 = v207;
  v116 = v206;
  sub_224DAB468();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  v117 = *(v232 + 8);
  v232 += 8;
  v241 = v117;
  (v117)(v112, v231);
  (*(v205 + 8))(v111, v116);
  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = swift_allocObject();
  *(v119 + 16) = v118;
  *(v119 + 24) = v101;
  v227 = MEMORY[0x277CBCCF8];
  sub_224A33088(&qword_27D6F6CB8, &qword_27D6F6C80, &unk_224DC1AE0, MEMORY[0x277CBCCF8]);
  v206 = v101;

  v120 = v209;
  sub_224DAB488();

  (*(v208 + 8))(v115, v120);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v121 = [objc_opt_self() defaultCenter];
  v122 = v210;
  sub_224DAF568();

  sub_224DAF378();
  v123 = sub_224DAF3D8();
  aBlock = v123;
  v124 = v235;
  v114(v76, 1, 1, v235);
  sub_224A39EF8(&qword_281350980, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v125 = v213;
  v126 = v212;
  sub_224DAB468();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  (v241)(v112, v231);
  (*(v211 + 8))(v122, v126);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224A33088(&qword_281351318, &qword_27D6F6C58, &qword_224DC1AB8, v227);
  v127 = v215;
  sub_224DAB488();

  (*(v214 + 8))(v125, v127);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224DADB98();
  aBlock = sub_224DADB78();
  sub_224DAF378();
  v128 = v225;
  v251 = v225;
  v238(v76, 1, 1, v124);
  v129 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, v239);
  v130 = v217;
  v131 = v129;
  sub_224DAB468();
  sub_224A3311C(v76, &qword_27D6F5090, &qword_224DB5C30);

  (v241)(v112, v231);
  v132 = v226;

  swift_allocObject();
  v133 = v132;
  swift_unknownObjectWeakInit();
  sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, v227);
  v134 = v219;
  sub_224DAB488();

  (*(v218 + 8))(v130, v134);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(v230, *(v230 + 3));
  v135 = sub_224DAC678();
  v136 = *(v135 + 16);
  if (v136)
  {
    v251 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v137 = v135 + 32;
    do
    {
      sub_224A3317C(v137, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v248);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v137 += 40;
      --v136;
    }

    while (v136);

    v138 = v251;
  }

  else
  {

    v138 = MEMORY[0x277D84F90];
  }

  v139 = &v132[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v139, *(v139 + 3));
  sub_224CB986C();
  v141 = v140;

  v143 = sub_224D58898(v142, v138);

  if ((v143 & 0xC000000000000001) != 0)
  {
    v144 = sub_224DAF838();
    if ((v141 & 0xC000000000000001) != 0)
    {
LABEL_18:
      v145 = sub_224DAF838();
      goto LABEL_21;
    }
  }

  else
  {
    v144 = *(v143 + 16);
    if ((v141 & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }
  }

  v145 = *(v141 + 16);
LABEL_21:
  v146 = v131;

  if (v144 == v145)
  {
  }

  else
  {
    swift_beginAccess();
    v147 = *(v139 + 3);
    v148 = *(v139 + 4);
    __swift_mutable_project_boxed_opaque_existential_1(v139, v147);
    (*(v148 + 16))(v143, v147, v148);
    swift_endAccess();
  }

  v149 = v188;
  v150 = v240;
  __swift_project_boxed_opaque_existential_1(v240, v240[3]);
  sub_224A39EF8(&qword_28135A968, type metadata accessor for DescriptorService, &unk_224DC17F8);
  v151 = v133;
  sub_224DAD578();
  __swift_project_boxed_opaque_existential_1(v149, *(v149 + 3));
  sub_224DADE78();
  sub_224D53BF0();
  __swift_project_boxed_opaque_existential_1(v150, v150[3]);
  v152 = v221;
  v153 = v220;
  v154 = v222;
  (*(v221 + 104))(v220, *MEMORY[0x277CF9CD8], v222);
  sub_224DAD628();

  (*(v152 + 8))(v153, v154);
  v155 = swift_allocObject();
  *(v155 + 16) = v151;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_224D5C120;
  *(v156 + 24) = v155;
  v249 = sub_224A8A838;
  v250 = v156;
  aBlock = MEMORY[0x277D85DD0];
  v246 = 1107296256;
  v247 = sub_224A9B6F8;
  v248 = &block_descriptor_251;
  v157 = _Block_copy(&aBlock);
  v158 = v151;

  dispatch_sync(v146, v157);
  _Block_release(v157);
  LOBYTE(v157) = swift_isEscapingClosureAtFileLocation();

  if (v157)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v158[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider], *&v158[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider + 24]);
    aBlock = sub_224DAA168();
    v243 = v146;
    v159 = v228;
    v238(v228, 1, 1, v235);
    v160 = v223;
    sub_224DAB448();
    sub_224A3311C(v159, &qword_27D6F5090, &qword_224DB5C30);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v161 = v224;
    v162 = sub_224DAB488();

    v170(v160, v161);
    *&v158[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken] = v162;

    v163 = swift_allocObject();
    *(v163 + 16) = v158;
    v249 = sub_224D5C130;
    v250 = v163;
    aBlock = MEMORY[0x277D85DD0];
    v246 = 1107296256;
    v247 = sub_224A39F40;
    v248 = &block_descriptor_258;
    v164 = _Block_copy(&aBlock);
    v165 = v158;
    v166 = v174;
    sub_224DAB7E8();
    v243 = MEMORY[0x277D84F90];
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v167 = v176;
    v168 = v179;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v166, v167, v164);
    _Block_release(v164);
    (*(v178 + 8))(v167, v168);
    (*(v175 + 8))(v166, v177);
  }
}

void sub_224D4838C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281365168);
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_224A2F000, v4, v5, "New value set for 'showInternalWidgets': %{BOOL,public}d", v6, 8u);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_224D53DD4(0, MEMORY[0x277D84FA0]);
  }
}

void sub_224D484C0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(v4);
  }
}

void sub_224D48530(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_224D4C850(v2, 1, 0xD000000000000025, 0x8000000224DCFF40);
  }
}

void *sub_224D485A8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_224DAA5C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v6 + 104))(v9, *a3, v5);
    sub_224D52DE4(a1, v9);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_224D486D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_suppressPublishingNotificationsForTesting);
  v6 = sub_224DADBD8();
  v7 = *(v6 - 8);
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a3, a1, v6);
    v7 = v11;
    v8 = 0;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, v6);
}

uint64_t sub_224D487A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v6 = sub_224DADBD8();
    return (*(*(v6 - 8) + 16))(a3, a1, v6);
  }

  else
  {
    sub_224DADBB8();
    v8 = sub_224DADBB8();
    sub_224B42BA0(v8);
    v9 = sub_224DADBC8();
    v10 = sub_224DADBC8();
    sub_224AD6BAC(v10, v9);
    return sub_224DADBA8();
  }
}

void *sub_224D48898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    *(a3 + 16) = 1;
    v6 = sub_224DADBB8();
    v7 = sub_224A3DADC(v6);

    v8 = sub_224DADBC8();
    sub_224D53DD4(v7, v8);
  }

  return result;
}

void sub_224D48954(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB7B8();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9398();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v51 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v43 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v48 = a1;
  v20 = sub_224DA9388();
  if (!v20)
  {

    v54 = 0u;
    v55 = 0u;
    goto LABEL_13;
  }

  v21 = v20;
  aBlock[6] = sub_224DAEE18();
  aBlock[7] = v22;
  sub_224DAF8D8();
  if (!*(v21 + 16) || (v23 = sub_224B0B624(aBlock), (v24 & 1) == 0))
  {

    sub_224AD52A4(aBlock);
    v54 = 0u;
    v55 = 0u;
    goto LABEL_11;
  }

  sub_224A33E0C(*(v21 + 56) + 32 * v23, &v54);
  sub_224AD52A4(aBlock);

  if (!*(&v55 + 1))
  {
LABEL_11:

LABEL_13:
    sub_224A3311C(&v54, &qword_27D6F4760, &unk_224DB3680);
    return;
  }

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return;
  }

  v25 = aBlock[0];
  if ([aBlock[0] integerValue])
  {

    goto LABEL_9;
  }

  v47 = v25;
  v43[2] = *&v19[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  v26 = v52;
  v44 = *(v52 + 16);
  v43[1] = v52 + 16;
  v44(v17, v48, v11);
  v27 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v19;
  v29 = *(v26 + 32);
  v45 = v11;
  v29(&v28[v27], v17, v11);
  aBlock[4] = sub_224D5C198;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_274;
  v30 = _Block_copy(aBlock);
  v46 = v19;
  sub_224DAB7E8();
  *&v54 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v6, v30);
  _Block_release(v30);
  (*(v50 + 8))(v6, v3);
  (*(v49 + 8))(v10, v7);

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v31 = sub_224DAB258();
  __swift_project_value_buffer(v31, qword_281365168);
  v32 = v51;
  v33 = v45;
  v44(v51, v48, v45);
  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136446210;
    if (sub_224DA9388())
    {
      v38 = sub_224DAED18();
      v40 = v39;
    }

    else
    {
      v40 = 0xE300000000000000;
      v38 = 7104878;
    }

    (*(v52 + 8))(v32, v33);
    v41 = sub_224A33F74(v38, v40, aBlock);

    *(v36 + 4) = v41;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x22AA5EED0](v37, -1, -1);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  else
  {

    (*(v52 + 8))(v32, v33);
  }

  v42 = v46;
  sub_224D4DCFC(0xD000000000000018, 0x8000000224DCFF20);
}

uint64_t sub_224D49098(uint64_t a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v3);
  v66 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v70 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v68 = &v58 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v72 = &v58 - v18;
  swift_beginAccess();
  v69 = a1;

  v20 = sub_224D43768(v19);

  v21 = sub_224AE9E84(v20);

  v22 = sub_224DA9388();
  if (!v22)
  {

    v85 = 0u;
    v86 = 0u;
    return sub_224A3311C(&v85, &qword_27D6F4760, &unk_224DB3680);
  }

  v23 = v22;
  v81 = sub_224DAEE18();
  v82 = v24;
  sub_224DAF8D8();
  if (!*(v23 + 16) || (v25 = sub_224B0B624(v83), (v26 & 1) == 0))
  {

    sub_224AD52A4(v83);
    v85 = 0u;
    v86 = 0u;
    goto LABEL_34;
  }

  sub_224A33E0C(*(v23 + 56) + 32 * v25, &v85);
  sub_224AD52A4(v83);

  if (!*(&v86 + 1))
  {
LABEL_34:

    return sub_224A3311C(&v85, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
  }

  v28 = v83[0];
  v63 = *(v83[0] + 16);
  if (!v63)
  {
LABEL_39:
  }

  v29 = 0;
  v67 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionsPendingRefetchWithLNMetadataChanged;
  v60 = (v69 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager);
  v62 = v83[0] + 32;
  v77 = v21 + 56;
  v79 = (v70 + 16);
  v80 = (v70 + 8);
  v59 = (v2 + 8);
  v76 = v9;
  v78 = v21;
  v61 = v83[0];
  while (v29 < *(v28 + 16))
  {
    v65 = v29;
    swift_bridgeObjectRetain_n();
    sub_224DA9FF8();
    if (*(v21 + 16) && (v31 = v78, sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]), v32 = sub_224DAED88(), v33 = -1 << *(v31 + 32), v34 = v32 & ~v33, ((*(v77 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      v36 = *(v70 + 72);
      v37 = *(v70 + 16);
      while (1)
      {
        v37(v16, *(v78 + 48) + v36 * v34, v5);
        sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
        v38 = sub_224DAEDD8();
        v39 = *v80;
        (*v80)(v16, v5);
        if (v38)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v77 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v56 = v68;
      v57 = v72;
      v37(v68, v72, v5);
      swift_beginAccess();
      sub_224A85C9C(v16, v56);
      v39(v16, v5);
      swift_endAccess();
      result = (v39)(v57, v5);
      v21 = v78;
      v28 = v61;
      v30 = v65;
    }

    else
    {
LABEL_17:
      sub_224DA9FF8();
      __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      result = sub_224DAC668();
      v40 = result;
      v75 = *(result + 16);
      if (v75)
      {
        v41 = 0;
        v74 = result + 32;
        v42 = v76;
        v21 = v78;
        v73 = result;
        while (v41 < *(v40 + 16))
        {
          sub_224A3317C(v74 + 40 * v41, v83);
          __swift_project_boxed_opaque_existential_1(v83, v84);
          v43 = sub_224DAE338();
          v44 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v45 = *v79;
          (*v79)(v42, &v43[v44], v5);

          if (*(v21 + 16))
          {
            sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
            v46 = sub_224DAED88();
            v47 = -1 << *(v21 + 32);
            v48 = v46 & ~v47;
            if ((*(v77 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
            {
              v71 = v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v49 = ~v47;
              v50 = *(v70 + 72);
              while (1)
              {
                v45(v16, (*(v78 + 48) + v50 * v48), v5);
                sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
                v51 = sub_224DAEDD8();
                v52 = *v80;
                (*v80)(v16, v5);
                if (v51)
                {
                  break;
                }

                v48 = (v48 + 1) & v49;
                if (((*(v77 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                {
                  v42 = v76;
                  v21 = v78;
                  v40 = v73;
                  goto LABEL_29;
                }
              }

              v42 = v76;
              v52(v76, v5);
              __swift_project_boxed_opaque_existential_1(v83, v84);
              v53 = sub_224DAE338();
              v54 = *MEMORY[0x277CFA138];
              swift_beginAccess();
              v55 = v68;
              v45(v68, &v53[v54], v5);

              swift_beginAccess();
              sub_224A85C9C(v16, v55);
              v52(v16, v5);
              swift_endAccess();
              v21 = v78;
              v40 = v73;
            }

            else
            {
              v52 = *v80;
              v40 = v73;
LABEL_29:
              v52(v42, v5);
            }
          }

          else
          {
            (*v80)(v42, v5);
          }

          ++v41;
          result = __swift_destroy_boxed_opaque_existential_1(v83);
          if (v41 == v75)
          {

            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

      v21 = v78;
LABEL_9:
      v28 = v61;
      v30 = v65;
      (*v59)(v66, v64);
      result = (*v80)(v72, v5);
    }

    v29 = v30 + 1;
    if (v29 == v63)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void sub_224D49B50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224D4CBFC();
  }
}

void sub_224D49BA4(uint64_t a1)
{
  sub_224D50518(2);
  v2 = *(a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24);
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService), v2);
  (*(v3 + 32))(v5, 768, v2, v3);
  if (v6)
  {
    v4 = *(v6 + 16);
    sub_224A699F0(v5);
    if (v4)
    {
      sub_224D50518(1);
    }
  }

  else
  {
    sub_224A3311C(v5, &qword_27D6F50E0, &qword_224DB41A0);
  }
}

void sub_224D49C60(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v5 = sub_224DAB258();
      __swift_project_value_buffer(v5, qword_281365168);
      v6 = sub_224DAB228();
      v7 = sub_224DAF2A8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_224A2F000, v6, v7, "First unlock event received.  Reloading any default intents if necessary...", v8, 2u);
        MEMORY[0x22AA5EED0](v8, -1, -1);
      }

      sub_224D4DCFC(0x6E75207473726966, 0xEC0000006B636F6CLL);
      v9 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken;
      if (*&v4[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken])
      {

        sub_224DAB328();
      }

      *&v4[v9] = 0;
    }

    else
    {
    }
  }
}

void sub_224D49DD4(void *a1)
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365168);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerInterval];
    _os_log_impl(&dword_224A2F000, v4, v5, "Lazy refresh timer scheduled with %{public}f hour interval.  Running pending ones now.", v6, 0xCu);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  sub_224D507B4();
  v7 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v8 = sub_224DAEDE8();
  v9 = [v7 initWithIdentifier_];

  v10 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer];
  *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer] = v9;
  v11 = v9;

  if (v11)
  {
    v12 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_initialQueryTimerInterval];
    v13 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerInterval];
    v14 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17[4] = sub_224D5C138;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_224A3837C;
    v17[3] = &block_descriptor_263;
    v16 = _Block_copy(v17);

    [v11 scheduleRepeatingWithFireInterval:v14 repeatInterval:v16 leewayInterval:v12 queue:v13 handler:60.0];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_224D4A048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224D507B4();
  }
}

void sub_224D4A09C(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_224DAB7B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB848();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v22 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v3;
    v17[4] = a2;
    v17[5] = a3;
    aBlock[4] = sub_224D5BFD0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_221;
    v18 = _Block_copy(aBlock);

    v19 = v3;

    sub_224DAB7E8();
    v23 = MEMORY[0x277D84F90];
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v21 = v12;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v16, v11, v18);
    _Block_release(v18);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v21);

    return;
  }

  a2();
}

void sub_224D4A3C8(unint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v75[2] = a4;
  v76 = a3;
  v81 = sub_224DAD448();
  v6 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v7);
  v80 = (v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v89 = v75 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v12 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v13);
  v87 = v75 - v14;
  if (qword_281351708 != -1)
  {
LABEL_48:
    swift_once();
  }

  v15 = sub_224DAB258();
  v16 = __swift_project_value_buffer(v15, qword_281365168);

  v75[1] = v16;
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  v19 = os_log_type_enabled(v17, v18);
  v90 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v98 = v21;
    *v20 = 136446210;
    v22 = sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
    v23 = MEMORY[0x22AA5D380](a1, v22);
    v25 = sub_224A33F74(v23, v24, &v98);

    *(v20 + 4) = v25;
    a1 = v90;
    _os_log_impl(&dword_224A2F000, v17, v18, "Modify descriptor enablement requested: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA5EED0](v21, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  v100 = 0;
  if (a1 >> 62)
  {
    v26 = sub_224DAF838();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager;
  v91 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  swift_beginAccess();
  if (v26)
  {
    v28 = 0;
    v84 = (a2 + v27);
    v86 = a1 & 0xC000000000000001;
    v85 = a1 & 0xFFFFFFFFFFFFFF8;
    v83 = (v12 + 1);
    v79 = *MEMORY[0x277CF9CC0];
    v78 = (v6 + 104);
    v77 = (v6 + 8);
    v82 = v26;
    while (1)
    {
      if (v86)
      {
        v29 = MEMORY[0x22AA5DCC0](v28, a1);
      }

      else
      {
        if (v28 >= *(v85 + 16))
        {
          goto LABEL_47;
        }

        v29 = *(a1 + 8 * v28 + 32);
      }

      v6 = v29;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v93 = v28 + 1;
      __swift_project_boxed_opaque_existential_1(v84, v84[3]);
      v94 = v6;
      v30 = [v6 extensionBundleIdentifier];
      sub_224DAEE18();

      sub_224DA9FF8();
      v31 = v87;
      sub_224DAA278();
      sub_224DAC6C8();
      (*v83)(v31, v88);
      if (!v97)
      {
        break;
      }

      sub_224A36F98(&v96, &v98);
      v6 = v91;
      v12 = &qword_27D6F6C28;
      sub_224A3796C(a2 + v91, &v96, &qword_27D6F6C28, &qword_224DC1A38);
      v32 = v97;
      if (v97)
      {
        v33 = __swift_project_boxed_opaque_existential_1(&v96, v97);
        v34 = *(v32 - 8);
        MEMORY[0x28223BE20](v33, v33);
        v36 = v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v36);
        sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
        sub_224DAD5A8();
        (*(v34 + 8))(v36, v32);
        v37 = sub_224DACF78();

        __swift_project_boxed_opaque_existential_1(&v98, v99);
        v38 = sub_224DAE338();
        v39 = v38;
        if (*(v37 + 16) && (v40 = sub_224A3E7EC(v38), (v41 & 1) != 0))
        {
          v42 = *(*(v37 + 56) + 8 * v40);

          v92 = sub_224D4B200(v42, v94, &v100, &unk_2813509D0, 0x277CFA378);
        }

        else
        {

          v92 = MEMORY[0x277D84F90];
        }

        v12 = &qword_27D6F6C28;
      }

      else
      {
        sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
        v92 = MEMORY[0x277D84F90];
      }

      sub_224A3796C(&v6[a2], &v96, &qword_27D6F6C28, &qword_224DC1A38);
      v43 = v97;
      if (v97)
      {
        v44 = __swift_project_boxed_opaque_existential_1(&v96, v97);
        v45 = *(v43 - 8);
        MEMORY[0x28223BE20](v44, v44);
        v47 = v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v45 + 16))(v47);
        sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
        sub_224DAD5B8();
        (*(v45 + 8))(v47, v43);
        v48 = sub_224DACF78();

        __swift_project_boxed_opaque_existential_1(&v98, v99);
        v49 = sub_224DAE338();
        v50 = v49;
        if (*(v48 + 16) && (v51 = sub_224A3E7EC(v49), (v52 & 1) != 0))
        {
          v53 = *(*(v48 + 56) + 8 * v51);

          sub_224D4B200(v53, v94, &v100, &qword_2813509B8, 0x277CFA210);
        }

        else
        {
        }
      }

      else
      {
        sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
      }

      sub_224A3796C(&v6[a2], &v96, &qword_27D6F6C28, &qword_224DC1A38);
      v54 = v97;
      if (v97)
      {
        v55 = __swift_project_boxed_opaque_existential_1(&v96, v97);
        v56 = *(v54 - 8);
        MEMORY[0x28223BE20](v55, v55);
        v58 = v75 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v56 + 16))(v58);
        sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
        v59 = sub_224DAD608();
        (*(v56 + 8))(v58, v54);
        __swift_project_boxed_opaque_existential_1(&v98, v99);
        v60 = sub_224DAE338();
        v61 = v60;
        if (*(v59 + 16) && (sub_224A3E7EC(v60), (v62 & 1) != 0))
        {
        }

        else
        {
        }

        v6 = v91;
      }

      else
      {
        sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
      }

      if (v100 == 1)
      {
        sub_224A3796C(&v6[a2], &v96, &qword_27D6F6C28, &qword_224DC1A38);
        if (v97)
        {
          sub_224A3317C(&v96, v95);
          sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
          __swift_project_boxed_opaque_existential_1(v95, v95[3]);
          v12 = v80;
          v6 = v81;
          (*v78)(v80, v79, v81);
          sub_224DAD638();

          (*v77)(v12, v6);
          __swift_destroy_boxed_opaque_existential_1(v95);
        }

        else
        {

          sub_224A3311C(&v96, &qword_27D6F6C28, &qword_224DC1A38);
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v98);
      ++v28;
      a1 = v90;
      if (v93 == v82)
      {
        goto LABEL_40;
      }
    }

    sub_224A3311C(&v96, &unk_27D6F4700, &unk_224DB3A10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v66 = sub_224CBC42C(24, 0, 0);
    swift_willThrow();

    v67 = v66;
    v68 = sub_224DAB228();
    v69 = sub_224DAF2A8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138543362;
      v72 = v67;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v73;
      *v71 = v73;
      _os_log_impl(&dword_224A2F000, v68, v69, "Modify descriptor enablement request failed with error: %{public}@", v70, 0xCu);
      sub_224A3311C(v71, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v71, -1, -1);
      MEMORY[0x22AA5EED0](v70, -1, -1);
    }

    v74 = v67;
    v76(v67);
  }

  else
  {
LABEL_40:
    v63 = sub_224DAB228();
    v64 = sub_224DAF2A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_224A2F000, v63, v64, "Modify descriptor enablement request completed successfully.", v65, 2u);
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    v76(0);
  }
}

unint64_t sub_224D4B200(unint64_t result, void *a2, _BYTE *a3, unint64_t *a4, void *a5)
{
  v63 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    v49 = result;
    v8 = sub_224DAF838();
    result = v49;
    if (v8)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v8 >= 1)
  {
    v58 = result & 0xC000000000000001;
    v9 = result;
    swift_beginAccess();
    v10 = v9;
    v11 = 0;
    v50 = "storefront change";
    v59 = v8;
    v60 = v9;
    v56 = a2;
    while (1)
    {
      if (v58)
      {
        v27 = MEMORY[0x22AA5DCC0](v11, v10);
      }

      else
      {
        v27 = *(v10 + 8 * v11 + 32);
      }

      v28 = v27;
      v29 = [v27 kind];
      v30 = sub_224DAEE18();
      v32 = v31;

      v33 = [a2 kind];
      v34 = sub_224DAEE18();
      v36 = v35;

      if (v30 == v34 && v32 == v36)
      {
      }

      else
      {
        v38 = sub_224DAFD88();

        if ((v38 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if ([v28 wasEnablementExplicitlyDeclared])
      {
        [v28 mutableCopy];
        sub_224DAF758();
        swift_unknownObjectRelease();
        sub_224A3B79C(0, a4, a5);
        if (swift_dynamicCast())
        {
          v39 = v61;
          if ([a2 enabled])
          {
            v40 = 1;
          }

          else
          {
            v40 = 2;
          }

          [v39 setEnablement_];

          [v39 copy];
          sub_224DAF758();
          swift_unknownObjectRelease();
          v41 = swift_dynamicCast();
          MEMORY[0x22AA5D350](v41);
          if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          sub_224DAF078();
          v42 = v63;
          if (qword_281351708 != -1)
          {
            swift_once();
          }

          v43 = sub_224DAB258();
          __swift_project_value_buffer(v43, qword_281365168);
          v44 = v28;
          v45 = a2;
          v46 = sub_224DAB228();
          v47 = sub_224DAF2A8();

          if (os_log_type_enabled(v46, v47))
          {
            v53 = v47;
            v12 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v62[0] = v55;
            *v12 = 138543874;
            v13 = [v44 extensionIdentity];
            *(v12 + 4) = v13;
            *v51 = v13;
            *(v12 + 12) = 2082;
            v14 = a5;
            v15 = [v45 kind];
            v54 = v44;
            v16 = a4;
            v17 = sub_224DAEE18();
            v52 = v39;
            v19 = v18;

            v20 = v17;
            a4 = v16;
            v21 = sub_224A33F74(v20, v19, v62);

            *(v12 + 14) = v21;
            a5 = v14;
            *(v12 + 22) = 2082;
            v22 = [v45 enabled];
            v23 = v22 == 0;
            if (v22)
            {
              v24 = 0xD000000000000011;
            }

            else
            {
              v24 = 0xD000000000000012;
            }

            if (v23)
            {
              v25 = v50;
            }

            else
            {
              v25 = "explicitlyDisabled";
            }

            v26 = sub_224A33F74(v24, v25 | 0x8000000000000000, v62);

            *(v12 + 24) = v26;
            _os_log_impl(&dword_224A2F000, v46, v53, "Modifying %{public}@, %{public}s to: %{public}s", v12, 0x20u);
            sub_224A3311C(v51, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v51, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v55, -1, -1);
            MEMORY[0x22AA5EED0](v12, -1, -1);
          }

          else
          {
          }

          v10 = v60;
          a2 = v56;
          *a3 = 1;
          goto LABEL_13;
        }
      }

LABEL_35:
      v48 = v28;
      MEMORY[0x22AA5D350]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();

      v42 = v63;
      v10 = v60;
LABEL_13:
      if (v59 == ++v11)
      {
        return v42;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_224D4B7DC(char a1, uint64_t a2, unint64_t a3)
{
  v71 = a3;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v70 = a2;
    v73 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v74 = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    v83 = sub_224D5BFC8;
    v84 = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    v82 = &block_descriptor_215;
    v18 = _Block_copy(aBlock);
    v75 = v3;
    sub_224DAB7E8();
    v76[0] = MEMORY[0x277D84F90];
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v16, v10, v18);
    _Block_release(v18);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v16, v74);

    if (qword_281351708 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281365168);
      v20 = v71;

      v21 = sub_224DAB228();
      v22 = sub_224DAF2A8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_224A33F74(v70, v20, aBlock);
        _os_log_impl(&dword_224A2F000, v21, v22, "Discover descriptors for reason: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x22AA5EED0](v24, -1, -1);
        MEMORY[0x22AA5EED0](v23, -1, -1);
      }

      v25 = v75;
      v26 = MEMORY[0x277D84F90];
      v80 = MEMORY[0x277D84FA0];
      v27 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
      swift_beginAccess();
      sub_224A3796C(v25 + v27, aBlock, &qword_27D6F6C28, &qword_224DC1A38);
      v28 = v82;
      if (v82)
      {
        v29 = __swift_project_boxed_opaque_existential_1(aBlock, v82);
        v30 = *(v28 - 1);
        MEMORY[0x28223BE20](v29, v29);
        v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v30 + 16))(v32);
        sub_224A3311C(aBlock, &qword_27D6F6C28, &qword_224DC1A38);
        sub_224DAD598();
        (*(v30 + 8))(v32, v28);
        v33 = sub_224DACF58();

        v69 = v33;
        v80 = v33;
      }

      else
      {
        sub_224A3311C(aBlock, &qword_27D6F6C28, &qword_224DC1A38);
        v69 = MEMORY[0x277D84FA0];
      }

      v79 = v26;
      __swift_project_boxed_opaque_existential_1((&v25->isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(&v25[3].isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager));
      v41 = sub_224DAC678();
      v42 = sub_224D563AC(v41, &v80);

      sub_224A85B54(v42);
      if (sub_224A48648())
      {
        v43 = sub_224DACF18();
      }

      else
      {
        v43 = 0;
      }

      if (sub_224A5B8B8())
      {
        v44 = sub_224DACF18();
      }

      else
      {
        v44 = 0;
      }

      sub_224D5726C(v43, v44);
      v46 = v45;

      v47 = v25;
      sub_224D56DEC(v46, v47);
      v49 = v48;

      v74 = *(v49 + 16);
      if (!v74)
      {

        goto LABEL_37;
      }

      v68 = v47;
      v50 = 0;
      v72 = v49;
      v73 = v49 + 32;
LABEL_25:
      if (v50 < *(v49 + 16))
      {
        break;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }

    v75 = (&v50->isa + 1);
    sub_224A3317C(v73 + 40 * v50, aBlock);
    v57 = v79;
    v58 = (v79 + 4);
    v59 = -v79[2];
    v60 = -1;
    while (v59 + v60 != -1)
    {
      if (++v60 >= v57[2])
      {
        __break(1u);
        goto LABEL_39;
      }

      v61 = v58 + 40;
      sub_224A3317C(v58, v76);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v62 = sub_224DAE338();
      __swift_project_boxed_opaque_existential_1(aBlock, v82);
      v63 = sub_224DAE338();
      v64 = sub_224DAF6A8();

      __swift_destroy_boxed_opaque_existential_1(v76);
      v58 = v61;
      if (v64)
      {
        v49 = v72;
        goto LABEL_24;
      }
    }

    sub_224A3317C(aBlock, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_224A5C040(0, v57[2] + 1, 1, v57);
      v79 = v57;
    }

    v49 = v72;
    v67 = v57[2];
    v66 = v57[3];
    if (v67 >= v66 >> 1)
    {
      v57 = sub_224A5C040((v66 > 1), v67 + 1, 1, v57);
      v79 = v57;
    }

    v51 = v77;
    v52 = v78;
    v53 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    MEMORY[0x28223BE20](v53, v53);
    v55 = &v68 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55);
    sub_224A5C064(v67, v55, &v79, v51, v52);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v79 = v57;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v50 = v75;
    if (v75 != v74)
    {
      goto LABEL_25;
    }

    v20 = v71;
LABEL_37:
    sub_224D4C850(v79, 1, v70, v20);
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v34 = sub_224DAB258();
    __swift_project_value_buffer(v34, qword_281365168);
    v35 = v71;

    v75 = sub_224DAB228();
    v36 = sub_224DAF2A8();

    if (os_log_type_enabled(v75, v36))
    {
      v37 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_224A33F74(v37, v35, aBlock);
      _os_log_impl(&dword_224A2F000, v75, v36, "Ignoring request to discover descriptors because it was not user initiated for reason: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    else
    {
      v40 = v75;
    }
  }
}

uint64_t sub_224D4C278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_224DA9868();
  v6 = sub_224DA9878();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_lastUserInitiatedDiscovery;
  swift_beginAccess();
  sub_224A838C0(v5, a1 + v7, &qword_27D6F32B0, &qword_224DB3EA0);
  return swift_endAccess();
}

uint64_t sub_224D4C384(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v30 = a6;
  v31 = a5;
  v28 = a4;
  v27 = a3;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25[-v12];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v15);
  v17 = &v25[-v16];
  (*(v10 + 16))(v13, a1, v9);
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9F98]);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC0]);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA0]);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAA1D8();
  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], *&v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24]);
  sub_224DAC6C8();
  if (v33)
  {
    sub_224A36F98(&v32, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3500, &qword_224DB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    sub_224A3317C(v34, inited + 32);
    v20 = v30;
    v19 = v31;
    sub_224A364AC(v31, v30);
    sub_224D58DD8(inited, v26 & 1, v27, v28, v7, v19, v20);
    sub_224A3D418(v19, v20);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v34);
    return (*(v14 + 8))(v17, v29);
  }

  else
  {
    v22 = v29;
    sub_224A3311C(&v32, &unk_27D6F4700, &unk_224DB3A10);
    v23 = v31;
    if (v31)
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v24 = sub_224CBC42C(24, 0, 0);
      (v23)(0, v24);
    }

    return (*(v14 + 8))(v17, v22);
  }
}

void sub_224D4C788(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_3:
    if (a3)
    {
      v6 = sub_224D5D6B4(a1);
      if (v6)
      {
        v8 = v7;

        v6 = v8;
      }

      v9 = v6;
      a3();
    }

    return;
  }

  if (a3)
  {
    (a3)(0, a2);
  }
}

void sub_224D4C850(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281365168);

  v9 = sub_224DAB228();
  v10 = sub_224DAF268();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v11 = 136446466;
    *(v11 + 4) = sub_224A33F74(a3, a4, v19);
    *(v11 + 12) = 2082;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
    v13 = MEMORY[0x22AA5D380](a1, v12);
    v15 = sub_224A33F74(v13, v14, v19);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_224A2F000, v9, v10, "Reloading descriptors for reason: %{public}s with extensions: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v18, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + 32;
    do
    {
      sub_224A3317C(v17, v19);
      sub_224A365A0(v19, a2 & 1, a3, a4, 0, 0);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v17 += 40;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_224D4CA64()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
  result = sub_224DAC678();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      sub_224A3317C(v5, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v7 = sub_224DAE268();
      if (v7 && (v8 = v7, v9 = [v7 invalidatesOnStorefrontChange], v8, v9))
      {
        sub_224A36F98(&v14, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v6 + 16) + 1, 1);
          v6 = v16;
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_224ADA390((v11 > 1), v12 + 1, 1);
          v6 = v16;
        }

        *(v6 + 16) = v12 + 1;
        result = sub_224A36F98(v13, v6 + 40 * v12 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v14);
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:

    return v6;
  }

  return result;
}

uint64_t sub_224D4CBFC()
{
  v0 = sub_224D4CA64();
  if (*(v0 + 16))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_281365168);

    v2 = sub_224DAB228();
    v3 = sub_224DAF2A8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136446210;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
      v7 = MEMORY[0x22AA5D380](v0, v6);
      v9 = sub_224A33F74(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_224A2F000, v2, v3, "Reloading descriptors for storefront change: %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x22AA5EED0](v5, -1, -1);
      MEMORY[0x22AA5EED0](v4, -1, -1);
    }

    sub_224D4C850(v0, 1, 0xD000000000000011, 0x8000000224DCFEA0);
  }
}

void sub_224D4CDBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, dispatch_group_t a5, uint64_t a6)
{
  v89 = a3;
  v87 = a2;
  v11 = sub_224DAB7B8();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_224DAB848();
  v85 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v17);
  v84 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  v90 = v6;
  sub_224A3796C(v6 + v19, &aBlock, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v96)
  {
    sub_224A3311C(&aBlock, &qword_27D6F6C28, &qword_224DC1A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = sub_224DAEE18();
    *(inited + 40) = v27;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x8000000224DCFE80;
    v28 = sub_224D9FE14(inited);
    swift_setDeallocating();
    sub_224A3311C(inited + 32, &qword_27D6F32E0, &unk_224DB65F0);
    v29 = a5;
    LOBYTE(aBlock) = 17;
    sub_224B67B98();
    sub_224B67BEC();
    sub_224B67C40();
    v30 = sub_224DA93D8();
    sub_224D9F01C(v28);

    v31 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v32 = sub_224DAEDE8();
    v33 = sub_224DAECC8();

    v34 = [v31 initWithDomain:v32 code:v30 userInfo:v33];

    v35 = sub_224DA1CC8(MEMORY[0x277D84F90]);
    v36 = v34;
    (v29)(v35, v34);

    return;
  }

  v80 = v12;
  sub_224A36F98(&aBlock, &v99);
  if (qword_281351708 != -1)
  {
LABEL_43:
    swift_once();
  }

  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281365168);

  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  v23 = os_log_type_enabled(v21, v22);
  v83 = a6;
  v82 = a5;
  v81 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&aBlock = v25;
    *v24 = 134349314;
    *(v24 + 4) = *(a1 + 16);

    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_224A33F74(v89, a4, &aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "Fetching descriptors for %{public}ld extensions with reason: %{public}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  else
  {
  }

  v78 = v15;
  v79 = isUniquelyReferenced_nonNull_native;
  a5 = dispatch_group_create();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84F98];
  v88 = v37;
  *(v37 + 16) = MEMORY[0x277D84F98];
  v39 = (v37 + 16);
  v91 = swift_allocObject();
  *(v91 + 16) = v38;
  a6 = *(a1 + 16);
  if (!a6)
  {
LABEL_39:
    v67 = MEMORY[0x277D84F90];
    v68 = v90;
    v69 = swift_allocObject();
    v70 = v91;
    v69[2] = v68;
    v69[3] = v70;
    v71 = v82;
    v69[4] = v88;
    v69[5] = v71;
    v69[6] = v83;
    v97 = sub_224D5BE1C;
    v98 = v69;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v95 = sub_224A39F40;
    v96 = &block_descriptor_171_0;
    v72 = _Block_copy(&aBlock);

    v73 = v68;

    v74 = v84;
    sub_224DAB7E8();
    v93[0] = v67;
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v75 = v78;
    v76 = v81;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v72);

    (*(v80 + 8))(v75, v76);
    (*(v85 + 8))(v74, v79);

    __swift_destroy_boxed_opaque_existential_1(&v99);
    return;
  }

  a1 += 32;
  v86 = a4;
  while (1)
  {
    sub_224A3317C(a1, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v96);
    v43 = sub_224DAE338();
    __swift_project_boxed_opaque_existential_1(&v99, v100);
    if ((sub_224DAD5D8() & 1) == 0)
    {
      dispatch_group_enter(a5);
      v40 = swift_allocObject();
      v40[2] = v88;
      v40[3] = v43;
      v40[4] = v91;
      v40[5] = a5;
      v41 = v43;

      v42 = a5;
      sub_224A365A0(&aBlock, v87 & 1, v89, a4, sub_224D5BE10, v40);

      goto LABEL_10;
    }

    __swift_project_boxed_opaque_existential_1(&v99, v100);
    sub_224DAD5A8();
    v44 = sub_224DACF78();

    if (*(v44 + 16))
    {
      sub_224A3E7EC(v43);
      if (v45)
      {
      }
    }

    __swift_project_boxed_opaque_existential_1(&v99, v100);
    if (*(sub_224DAD5F8() + 16))
    {
      sub_224A3E7EC(v43);
      if (v46)
      {
      }
    }

    v15 = v101;
    __swift_project_boxed_opaque_existential_1(&v99, v100);
    v47 = sub_224DAD608();
    if (*(v47 + 16) && (v48 = sub_224A3E7EC(v43), (v49 & 1) != 0))
    {
      isUniquelyReferenced_nonNull_native = *(*(v47 + 56) + 8 * v48);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    }

    sub_224DAE9F8();
    v11 = v43;
    a4 = sub_224DAE9B8();
    swift_beginAccess();
    v50 = *v39;
    if ((*v39 & 0xC000000000000001) != 0)
    {
      if (v50 < 0)
      {
        v51 = *v39;
      }

      else
      {
        v51 = v50 & 0xFFFFFFFFFFFFFF8;
      }

      v52 = sub_224DAF838();
      if (__OFADD__(v52, 1))
      {
        goto LABEL_41;
      }

      *v39 = sub_224D2CDB4(v51, v52 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *v39;
    v53 = v92;
    *v39 = 0x8000000000000000;
    v15 = sub_224A3E7EC(v11);
    v55 = v53[2];
    v56 = (v54 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v58 = v54;
    if (v53[3] >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B27EA4();
      }

      goto LABEL_34;
    }

    sub_224B13F9C(v57, isUniquelyReferenced_nonNull_native);
    v59 = sub_224A3E7EC(v11);
    if ((v58 & 1) != (v60 & 1))
    {
      break;
    }

    v15 = v59;
LABEL_34:
    v61 = v92;
    if (v58)
    {
      v62 = v92[7];
      v63 = *(v62 + 8 * v15);
      *(v62 + 8 * v15) = a4;
    }

    else
    {
      v92[(v15 >> 6) + 8] |= 1 << v15;
      *(v61[6] + 8 * v15) = v11;
      *(v61[7] + 8 * v15) = a4;
      v64 = v61[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_42;
      }

      v61[2] = v66;
    }

    *v39 = v61;
    swift_endAccess();

    a4 = v86;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    a1 += 40;
    if (!--a6)
    {
      goto LABEL_39;
    }
  }

  sub_224DAF538();
  sub_224DAFDD8();
  __break(1u);
}

void sub_224D4D924(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(a3 + 16);
      }

      else
      {
        v12 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = a1;
      v14 = sub_224DAF838();
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      *(a3 + 16) = sub_224D2CDB4(v12, v14 + 1);
    }

    else
    {
      v13 = a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + 16);
    sub_224A59194(v13, a4, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v17;
    swift_endAccess();
  }

  if (a2)
  {
    swift_beginAccess();
    v16 = a2;
    sub_224B09A8C(a2, a4);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_224D4DA58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__n128))
{
  swift_beginAccess();

  v7 = sub_224A5988C(v6);

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281365168);
  v9 = v7;

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v23 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 134349314;
    swift_beginAccess();
    v14 = *(a3 + 16);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = sub_224DAF838();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    *(v12 + 4) = v15;

    *(v12 + 12) = 2082;
    if (v7)
    {
      v16 = [v9 debugDescription];
      v17 = sub_224DAEE18();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_224A33F74(v17, v19, v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_224A2F000, v10, v11, "Received descriptors for %{public}ld extensions from descriptor service with error: %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x22AA5EED0](v13, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);

    a4 = v23;
  }

  else
  {
  }

  swift_beginAccess();
  v21 = v9;

  (a4)(v22, v7);
}

uint64_t sub_224D4DCFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (sub_224A48648())
  {
    v6 = sub_224DACF18();
  }

  else
  {
    v6 = 0;
  }

  if (sub_224A5B8B8())
  {
    v7 = sub_224DACF18();
  }

  else
  {
    v7 = 0;
  }

  sub_224D5726C(v6, v7);
  v9 = v8;

  v10 = v3;
  sub_224D56DEC(v9, v10);
  v12 = v11;

  sub_224A3796C(v10 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_userManager, v43, &unk_27D6F5418, &qword_224DBBB48);
  if (!v44)
  {
    v28 = &unk_27D6F5418;
    v29 = &qword_224DBBB48;
    v30 = v43;
LABEL_19:
    sub_224A3311C(v30, v28, v29);
    goto LABEL_20;
  }

  v13 = [*(*__swift_project_boxed_opaque_existential_1(v43 v44) + 16)];
  __swift_destroy_boxed_opaque_existential_1(v43);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
    swift_beginAccess();
    sub_224A3796C(v10 + v14, &v41, &qword_27D6F6C28, &qword_224DC1A38);
    if (v42)
    {
      v15 = sub_224A36F98(&v41, v43);
      MEMORY[0x28223BE20](v15, v16);
      v40[2] = v43;
      v17 = sub_224C5CCE8(sub_224D5BDF0, v40, v12);
      if (*(v17 + 2))
      {
        if (qword_281351708 != -1)
        {
          swift_once();
        }

        v18 = sub_224DAB258();
        __swift_project_value_buffer(v18, qword_281365168);

        v19 = sub_224DAB228();
        v20 = sub_224DAF2A8();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v41 = v22;
          *v21 = 136446466;
          *(v21 + 4) = sub_224A33F74(a1, a2, &v41);
          *(v21 + 12) = 2082;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
          v24 = MEMORY[0x22AA5D380](v17, v23);
          v26 = sub_224A33F74(v24, v25, &v41);

          *(v21 + 14) = v26;
          _os_log_impl(&dword_224A2F000, v19, v20, "Reloading descriptors with unresolved default intents for filtered extensions in EDU mode for reason: %{public}s: %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v22, -1, -1);
          MEMORY[0x22AA5EED0](v21, -1, -1);
        }

        sub_224D4C850(v17, 1, a1, a2);
      }

      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

    v28 = &qword_27D6F6C28;
    v29 = &qword_224DC1A38;
    v30 = &v41;
    goto LABEL_19;
  }

LABEL_20:
  if (*(v12 + 16))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v31 = sub_224DAB258();
    __swift_project_value_buffer(v31, qword_281365168);

    v32 = sub_224DAB228();
    v33 = sub_224DAF2A8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43[0] = v35;
      *v34 = 136446466;
      *(v34 + 4) = sub_224A33F74(a1, a2, v43);
      *(v34 + 12) = 2082;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
      v37 = MEMORY[0x22AA5D380](v12, v36);
      v39 = sub_224A33F74(v37, v38, v43);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_224A2F000, v32, v33, "Reloading descriptors with unresolved default intents for extensions for reason: %{public}s: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v35, -1, -1);
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }

    sub_224D4C850(v12, 1, a1, a2);
  }
}

uint64_t sub_224D4E244(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_224DAD5F8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_224DAE338();
  v5 = v4;
  if (*(v3 + 16) && (sub_224A3E7EC(v4), (v6 & 1) != 0))
  {

    v7 = sub_224DAD5F8();
    v8 = sub_224DAE338();
    v9 = v8;
    if (*(v7 + 16) && (v10 = sub_224A3E7EC(v8), (v11 & 1) != 0))
    {
      v12 = *(*(v7 + 56) + 8 * v10);

      v13 = sub_224C91694(v12, MEMORY[0x277D84F90]);

      v14 = v13 ^ 1;
    }

    else
    {

      v14 = 1;
    }
  }

  else
  {

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_224D4E3B4(void *a1, void *a2)
{
  v3 = v2;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v61 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_224DAE338();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_224DAE238())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((sub_224DAE368() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_224DAE338();
  v19 = [v18 isRemote];

  if (v19)
  {
    goto LABEL_20;
  }

  v20 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24);
  v21 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService), v20);
  (*(v21 + 32))(v66, 768, v20, v21);
  v22 = MEMORY[0x277CFA138];
  v62 = v17;
  v63 = v3;
  if (v66[5])
  {
    v23 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v61 = v12;
    v24 = v65;
    (*(v65 + 16))(v61, &v17[v23], v9);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v26 = type metadata accessor for HostDescriptorPredicate(0);
    v16[v26[5]] = 3;
    v16[v26[6]] = 3;
    v27 = v26[7];
    v28 = *(v24 + 56);
    v28(&v16[v27], 1, 1, v9);
    v29 = v26[8];
    v30 = sub_224DABE18();
    (*(*(v30 - 8) + 56))(&v16[v29], 1, 1, v30);
    v31 = v26[9];
    v32 = sub_224DAC268();
    (*(*(v32 - 8) + 56))(&v16[v31], 1, 1, v32);
    v33 = &v16[v26[10]];
    *v33 = 0;
    v33[8] = 1;
    sub_224A3311C(&v16[v27], &unk_27D6F6140, qword_224DBB6B0);
    v34 = v24;
    v12 = v61;
    (*(v34 + 32))(&v16[v27], v61, v9);
    v28(&v16[v27], 0, 1, v9);
    (*(*(v26 - 1) + 56))(v16, 0, 1, v26);
    v35 = sub_224A6BAF8(v16);
    if (v35)
    {
      if (v35 >> 62)
      {
        v36 = sub_224DAF838();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v62;
      v3 = v63;
      v22 = MEMORY[0x277CFA138];

      sub_224A3311C(v16, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0(v66);
      if (v36)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_224A3311C(v16, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0(v66);
      v17 = v62;
      v3 = v63;
      v22 = MEMORY[0x277CFA138];
    }
  }

  else
  {
    sub_224A3311C(v66, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v37 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 24);
  v38 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService), v37);
  v61 = (*(v38 + 24))(768, v37, v38);
  if (v61)
  {
    v39 = *v22;
    swift_beginAccess();
    v40 = v12;
    v41 = v65;
    (*(v65 + 16))(v40, &v17[v39], v9);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
    v43 = type metadata accessor for ControlHostDescriptorPredicate(0);
    v8[v43[5]] = 3;
    v8[v43[6]] = 3;
    v44 = v43[7];
    v45 = *(v41 + 56);
    v45(&v8[v44], 1, 1, v9);
    v46 = v43[8];
    v47 = sub_224DAC2B8();
    (*(*(v47 - 8) + 56))(&v8[v46], 1, 1, v47);
    sub_224A3311C(&v8[v44], &unk_27D6F6140, qword_224DBB6B0);
    (*(v41 + 32))(&v8[v44], v40, v9);
    v45(&v8[v44], 0, 1, v9);
    v48 = (*(*(v43 - 1) + 56))(v8, 0, 1, v43);
    if (*(v61 + 16))
    {
      MEMORY[0x28223BE20](v48, v49);
      *(&v61 - 2) = v8;
      v50 = v61;

      v51 = sub_224A6CD14(sub_224ACFDF4, (&v61 - 4), v50);
      v52 = sub_224D44404(v51);

      MEMORY[0x28223BE20](v53, v54);
      *(&v61 - 2) = v8;
      v55 = sub_224A4ECE8(sub_224ACFE14, (&v61 - 4), v52);
      if (v55 >> 62)
      {
        v56 = sub_224DAF838();
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v62;
      v3 = v63;

      sub_224A3311C(v8, &qword_27D6F3380, &qword_224DB3598);
      if (v56)
      {
        goto LABEL_20;
      }
    }

    else
    {

      sub_224A3311C(v8, &qword_27D6F3380, &qword_224DB3598);
      v17 = v62;
      v3 = v63;
    }
  }

  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  if ((sub_224DAD5D8() & 1) == 0)
  {
    v59 = (v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences);
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    sub_224CB986C();
    v57 = sub_224CD6B48(v17, v60);

    return v57 & 1;
  }

LABEL_20:

  v57 = 1;
  return v57 & 1;
}

void sub_224D4EC94(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v71 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v75 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v8);
  v79 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C48, &qword_224DC1A88);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = (&v71 - v12);
  BSDispatchQueueAssert();
  if (qword_281351708 != -1)
  {
LABEL_55:
    swift_once();
  }

  v14 = sub_224DAB258();
  v15 = __swift_project_value_buffer(v14, qword_281365168);

  v78 = v15;
  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();

  v18 = os_log_type_enabled(v16, v17);
  v80 = v7;
  v81 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v86[0] = v20;
    *v19 = 136446210;
    v77 = v19;
    v76 = v20;
    if (a1)
    {
      LODWORD(v72) = v17;
      v74 = v13;
      if (a1 >> 62)
      {
        v21 = sub_224DAF838();
      }

      else
      {
        v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v71 = v16;
        v73 = v2;
        *&v84 = MEMORY[0x277D84F90];
        sub_224A3DFD8(0, v21 & ~(v21 >> 63), 0);
        if (v21 < 0)
        {
          __break(1u);
          return;
        }

        v23 = 0;
        v22 = v84;
        v24 = a1 & 0xC000000000000001;
        do
        {
          if (v24)
          {
            v25 = MEMORY[0x22AA5DCC0](v23, a1);
          }

          else
          {
            v25 = *(a1 + 8 * v23 + 32);
          }

          v26 = v25;
          v27 = [v26 description];
          v28 = sub_224DAEE18();
          v30 = v29;

          *&v84 = v22;
          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_224A3DFD8((v31 > 1), v32 + 1, 1);
            v22 = v84;
          }

          ++v23;
          *(v22 + 16) = v32 + 1;
          v33 = v22 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
          a1 = v81;
        }

        while (v21 != v23);
        v2 = v73;
        v16 = v71;
      }

      *&v84 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v34 = sub_224DAEDA8();
      v36 = v35;

      v13 = v74;
      LOBYTE(v17) = v72;
    }

    else
    {
      v36 = 0xED0000656C61636FLL;
      v34 = 0x6C206D6574737973;
    }

    v37 = sub_224A33F74(v34, v36, v86);

    v38 = v77;
    *(v77 + 4) = v37;
    _os_log_impl(&dword_224A2F000, v16, v17, "Received locale changed notification: %{public}s", v38, 0xCu);
    v39 = v76;
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  v40 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v2 + v40, &v84, &qword_27D6F6C28, &qword_224DC1A38);
  if (v85)
  {
    sub_224A36F98(&v84, v86);
    v41 = sub_224A3B79C(0, &qword_27D6F6C50, 0x277CBEAF8);
    sub_224DAF678();
    v83 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    sub_224DAD598();
    v7 = sub_224DACF78();

    if (a1)
    {
      v72 = v41;
      v74 = v13;
      v73 = v2;
      v2 = (v7 + 64);
      v42 = 1 << v7[32];
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v7 + 8);
      v45 = (v42 + 63) >> 6;

      v48 = 0;
      v13 = 0;
      while (v44)
      {
LABEL_30:
        *&v84 = *(*(v7 + 6) + ((v48 << 9) | (8 * __clz(__rbit64(v44)))));
        MEMORY[0x28223BE20](v46, v47);
        *(&v71 - 2) = &v84;
        a1 = v50;

        if (sub_224B449EC(sub_224D5BDCC, &(&v71)[-4], v81))
        {

          sub_224B42A18(v51);
        }

        v44 &= v44 - 1;
      }

      while (1)
      {
        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v49 >= v45)
        {
          break;
        }

        v44 = *(v2 + 8 * v49);
        ++v48;
        if (v44)
        {
          v48 = v49;
          goto LABEL_30;
        }
      }

      v2 = v83;
      if (v83 >> 62)
      {
        v81 = sub_224DAF838();
        if (v81)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v81 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v81)
        {
LABEL_34:
          v52 = 0;
          v77 = v2 & 0xFFFFFFFFFFFFFF8;
          v78 = v2 & 0xC000000000000001;
          v53 = (v75 + 48);
          v76 = (v75 + 32);
          v13 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v78)
            {
              v54 = MEMORY[0x22AA5DCC0](v52, v2);
            }

            else
            {
              if (v52 >= *(v77 + 16))
              {
                goto LABEL_54;
              }

              v54 = *(v2 + 8 * v52 + 32);
            }

            a1 = v54;
            v7 = (v52 + 1);
            if (__OFADD__(v52, 1))
            {
              goto LABEL_53;
            }

            v55 = [v54 extensionIdentity];

            v56 = *MEMORY[0x277CFA130];
            swift_beginAccess();
            v57 = v55 + v56;
            v58 = v80;
            sub_224A3796C(v57, v80, &unk_27D6F5060, &qword_224DB5620);

            a1 = v82;
            if ((*v53)(v58, 1, v82) == 1)
            {
              sub_224A3311C(v58, &unk_27D6F5060, &qword_224DB5620);
            }

            else
            {
              v59 = *v76;
              (*v76)(v79, v58, a1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_224AD9A3C(0, v13[2].isa + 1, 1, v13);
              }

              isa = v13[2].isa;
              v60 = v13[3].isa;
              a1 = isa + 1;
              if (isa >= v60 >> 1)
              {
                v13 = sub_224AD9A3C((v60 > 1), isa + 1, 1, v13);
              }

              v13[2].isa = a1;
              v59(v13 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * isa, v79);
            }

            ++v52;
            if (v7 == v81)
            {
              goto LABEL_58;
            }
          }
        }
      }

      v13 = MEMORY[0x277D84F90];
LABEL_58:
      v68 = MEMORY[0x22AA5D9D0](v13);

      MEMORY[0x28223BE20](v69, v70);
      v13 = v74;
      *(&v71 - 2) = v68;
      *(&v71 - 1) = v13;
      sub_224D4F6FC(v2, sub_224D5BDE8, &(&v71)[-4], v73);
    }

    else
    {
      sub_224D44060(v7, &v83);

      v66 = v83;
      MEMORY[0x28223BE20](v65, v67);
      *(&v71 - 2) = v13;
      sub_224D4F6FC(v66, sub_224D5BD9C, &(&v71)[-4], v2);
    }

    sub_224A3311C(v13, &qword_27D6F6C48, &qword_224DC1A88);
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    sub_224A3311C(&v84, &qword_27D6F6C28, &qword_224DC1A38);
    v62 = sub_224DAB228();
    v63 = sub_224DAF288();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_224A2F000, v62, v63, "Waiting for descriptor cache", v64, 2u);
      MEMORY[0x22AA5EED0](v64, -1, -1);
    }
  }
}

void sub_224D4F6FC(unint64_t a1, char *a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v33[1] = a4;
  *&v37 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v8 = sub_224DAF838();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v34 = a1 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v12 = MEMORY[0x22AA5DCC0](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v4 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *&v36[0] = v12;
      if (sub_224D4FB30(v36, a2, a3))
      {
        v35 = 0;
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v11 = v34;
      }

      else
      {
      }

      ++v10;
    }

    while (v13 != v8);
    v14 = v37;
    v9 = MEMORY[0x277D84F90];
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v14 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v15 = sub_224DAF838();
    if (!v15)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_30:

    v20 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_19:
  *&v37 = v9;
  sub_224DAF9E8();
  if (v15 < 0)
  {
LABEL_47:
    __break(1u);

    __break(1u);
    return;
  }

  v16 = 0;
  v4 = &off_27853F000;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AA5DCC0](v16, v14);
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    ++v16;
    v19 = [v17 extensionIdentity];

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
  }

  while (v15 != v16);

  v20 = v37;
LABEL_31:
  v21 = sub_224D53BF0();
  v22 = v21;
  v23 = *(v21 + 2);
  if (v23)
  {
    v24 = 0;
    v25 = v21 + 32;
    v26 = MEMORY[0x277D84F90];
    while (v24 < *(v22 + 2))
    {
      sub_224A3317C(v25, &v37);
      __swift_project_boxed_opaque_existential_1(&v37, v38);
      v27 = sub_224DAE338();
      v4 = v33;
      *&v36[0] = v27;
      MEMORY[0x28223BE20](v27, v28);
      v32[2] = v36;
      v29 = sub_224B449EC(sub_224D5C320, v32, v20);

      if (v29)
      {
        sub_224A36F98(&v37, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v26 + 16) + 1, 1);
          v26 = v39;
        }

        v4 = *(v26 + 16);
        v31 = *(v26 + 24);
        if (v4 >= v31 >> 1)
        {
          sub_224ADA390((v31 > 1), v4 + 1, 1);
          v26 = v39;
        }

        *(v26 + 16) = v4 + 1;
        sub_224A36F98(v36, v26 + 40 * v4 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      ++v24;
      v25 += 40;
      if (v23 == v24)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_43:

  if (*(v26 + 16))
  {
    sub_224D4C850(v26, 1, 0x6320656C61636F6CLL, 0xEE006465676E6168);
  }
}

uint64_t sub_224D4FB30(id *a1, char *a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v87 = a3;
  v88 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v82 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C48, &qword_224DC1A88);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v86 = &v76 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v76 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v76 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v76 - v28;
  v89 = *a1;
  v30 = [v89 extensionIdentity];
  v31 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v30 + v31, v24, &unk_27D6F5060, &qword_224DB5620);

  v32 = v25;
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
    return 0;
  }

  v81 = v26;
  (*(v26 + 32))(v29, v24, v25);
  (v88)(v29);
  sub_224A3796C(v20, v17, &qword_27D6F6C48, &qword_224DC1A88);
  v33 = sub_224DAD318();
  v34 = *(v33 - 8);
  v87 = *(v34 + 48);
  v35 = v87(v17, 1, v33);
  v88 = v29;
  v80 = v34;
  if (v35 == 1)
  {
    sub_224A3311C(v17, &qword_27D6F6C48, &qword_224DC1A88);
    v36 = 0;
    v37 = 0xF000000000000000;
  }

  else
  {
    v36 = sub_224DAD308();
    v37 = v38;
    (*(v34 + 8))(v17, v33);
  }

  v39 = v89;
  v40 = sub_224DAF2D8();
  sub_224AC1D9C(v36, v37);
  if (v40)
  {
    sub_224A3311C(v20, &qword_27D6F6C48, &qword_224DC1A88);
    (*(v81 + 8))(v88, v32);
    return 0;
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_281365168);
  v43 = v86;
  sub_224A3796C(v20, v86, &qword_27D6F6C48, &qword_224DC1A88);
  v44 = v39;
  v45 = sub_224DAB228();
  v46 = sub_224DAF2A8();

  if (os_log_type_enabled(v45, v46))
  {
    v77 = v46;
    v78 = v45;
    v79 = v20;
    v89 = v32;
    v47 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v90 = v76;
    *v47 = 136446722;
    v48 = [v44 extensionIdentity];
    v49 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v51 = v82;
    v50 = v83;
    v52 = v84;
    (*(v83 + 16))(v82, &v48[v49], v84);

    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
    v53 = sub_224DAFD28();
    v55 = v54;
    (*(v50 + 8))(v51, v52);
    v56 = sub_224A33F74(v53, v55, &v90);

    *(v47 + 4) = v56;
    *(v47 + 12) = 2082;
    v57 = [v44 localeToken];
    if (v57)
    {
      v58 = v57;
      v59 = sub_224DA96D8();
      v61 = v60;

      v62 = sub_224DA96C8();
      v64 = v63;
      sub_224A78024(v59, v61);
    }

    else
    {
      v64 = 0xE300000000000000;
      v62 = 7104878;
    }

    v65 = sub_224A33F74(v62, v64, &v90);

    *(v47 + 14) = v65;
    *(v47 + 22) = 2082;
    v66 = v85;
    v67 = v86;
    sub_224A3796C(v86, v85, &qword_27D6F6C48, &qword_224DC1A88);
    if (v87(v66, 1, v33) == 1)
    {
      sub_224A3311C(v66, &qword_27D6F6C48, &qword_224DC1A88);
      v68 = 0xE300000000000000;
      v69 = v88;
      v70 = v77;
      v71 = 7104878;
    }

    else
    {
      v71 = sub_224DAD2F8();
      v68 = v72;
      (*(v80 + 8))(v66, v33);
      v69 = v88;
      v70 = v77;
    }

    sub_224A3311C(v67, &qword_27D6F6C48, &qword_224DC1A88);
    v73 = sub_224A33F74(v71, v68, &v90);

    *(v47 + 24) = v73;
    v74 = v78;
    _os_log_impl(&dword_224A2F000, v78, v70, "Locale for existing descriptor for %{public}s: %{public}s does not match current locale: %{public}s", v47, 0x20u);
    v75 = v76;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v75, -1, -1);
    MEMORY[0x22AA5EED0](v47, -1, -1);

    sub_224A3311C(v79, &qword_27D6F6C48, &qword_224DC1A88);
    (*(v81 + 8))(v69, v89);
  }

  else
  {

    sub_224A3311C(v43, &qword_27D6F6C48, &qword_224DC1A88);
    sub_224A3311C(v20, &qword_27D6F6C48, &qword_224DC1A88);
    (*(v81 + 8))(v88, v32);
  }

  return 1;
}

uint64_t sub_224D503BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_224DAD318();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return sub_224A3796C(a3, a4, &qword_27D6F6C48, &qword_224DC1A88);
  }

  v13 = sub_224A89A08(a1);
  if ((v14 & 1) == 0)
  {
    return sub_224A3796C(a3, a4, &qword_27D6F6C48, &qword_224DC1A88);
  }

  (*(v9 + 16))(v12, *(a2 + 56) + *(v9 + 72) * v13, v8);
  (*(v9 + 32))(a4, v12, v8);
  return (*(v9 + 56))(a4, 0, 1, v8);
}

void sub_224D50518(uint64_t a1)
{
  BSDispatchQueueAssert();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281365168);
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v8 = 0xEE00736E6F697461;
    v9 = 0x72756769666E6F63;
    if (a1 != 1)
    {
      v9 = 0x6E776F6E6B6E75;
      v8 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v9 = 0xD000000000000013;
      v8 = 0x8000000224DCFD70;
    }

    if (a1 == 3)
    {
      v10 = 7105633;
    }

    else
    {
      v10 = v9;
    }

    if (a1 == 3)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v8;
    }

    v12 = sub_224A33F74(v10, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_224A2F000, v4, v5, "Data source ready: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  v13 = *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources);
  if ((a1 & ~v13) != 0)
  {
    v13 |= a1;
    *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources) = v13;
  }

  if (v13 == 3)
  {
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_224A2F000, v14, v15, "All data sources ready - processing pending extension events", v16, 2u);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    sub_224D51338();
  }
}

void sub_224D507B4()
{
  v1 = v0;
  v78 = sub_224DAB7B8();
  v2 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v3);
  v77 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_224DAB848();
  v5 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v6);
  v75 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_224DAD448();
  v79 = *(v84 - 8);
  v8 = *(v79 + 64);
  v10 = MEMORY[0x28223BE20](v84, v9);
  v74 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v83 = v60 - v12;
  v73 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  v13 = (v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_224CB986C();
  v15 = v14;
  v16 = v14 & 0xC000000000000001;
  if ((v14 & 0xC000000000000001) == 0)
  {
    if (*(v14 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v31 = sub_224DAB258();
    __swift_project_value_buffer(v31, qword_281365168);
    v32 = sub_224DAB228();
    v33 = sub_224DAF2A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_224A2F000, v32, v33, "Lazy refresh timer fired - no pending work.", v34, 2u);
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }

    return;
  }

  if (!sub_224DAF838())
  {
    goto LABEL_9;
  }

LABEL_3:
  if (qword_281351708 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281365168);

    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    v20 = os_log_type_enabled(v18, v19);
    v82 = v1;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v81 = v5;
      v22 = v21;
      v23 = swift_slowAlloc();
      *&aBlock = v23;
      *v22 = 136446210;
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      v24 = sub_224DAF1C8();
      v26 = sub_224A33F74(v24, v25, &aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_224A2F000, v18, v19, "Lazy refresh timer fired - pending descriptors to fetch: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x22AA5EED0](v23, -1, -1);
      v27 = v22;
      v5 = v81;
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    if (v16)
    {
      sub_224DAF7E8();
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v15 = v94;
      v16 = v95;
      v28 = v96;
      v29 = v97;
      v30 = v98;
    }

    else
    {
      v29 = 0;
      v35 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v28 = ~v35;
      v36 = -v35;
      v37 = v36 < 64 ? ~(-1 << v36) : -1;
      v30 = (v37 & *(v15 + 56));
    }

    v60[1] = v28;
    v1 = (v28 + 64) >> 6;
    v69 = 0x8000000224DCFE60;
    v68 = *MEMORY[0x277CF9CC8];
    v67 = v79 + 104;
    v66 = v79 + 16;
    v65 = v8 + 7;
    v64 = v79 + 32;
    v63 = &v87;
    v62 = v2 + 1;
    v61 = (v5 + 8);
    v60[2] = v79 + 8;
    v72 = v15;
    v71 = v16;
    v70 = v1;
    if (v15 < 0)
    {
      break;
    }

    while (1)
    {
      v56 = v29;
      v57 = v30;
      v58 = v29;
      v8 = v82;
      if (!v30)
      {
        break;
      }

LABEL_25:
      v5 = ((v57 - 1) & v57);
      v2 = *(*(v15 + 48) + ((v58 << 9) | (8 * __clz(__rbit64(v57)))));
      if (!v2)
      {
        goto LABEL_32;
      }

LABEL_29:
      __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], *&v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24]);
      sub_224DAC6D8();
      if (v88)
      {
        sub_224A36F98(&aBlock, v93);
        v38 = v79;
        v39 = v83;
        v40 = v84;
        (*(v79 + 104))(v83, v68, v84);
        sub_224A3317C(v93, &v92);
        v41 = v74;
        (*(v38 + 16))(v74, v39, v40);
        v42 = (*(v38 + 80) + 64) & ~*(v38 + 80);
        v43 = &v65[v42] & 0xFFFFFFFFFFFFFFF8;
        v44 = swift_allocObject();
        *(v44 + 16) = v8;
        sub_224A36F98(&v92, v44 + 24);
        (*(v38 + 32))(v44 + v42, v41, v40);
        v45 = (v44 + v43);
        *v45 = 0;
        v45[1] = 0;
        LOBYTE(v45) = ~v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries];
        v81 = v2;
        v46 = v45 & 1;
        __swift_project_boxed_opaque_existential_1(v93, v93[3]);
        v47 = v8;
        v48 = sub_224DAE338();
        sub_224A3317C(v93, &v91);
        v49 = swift_allocObject();
        *(v49 + 16) = v47;
        *(v49 + 24) = v48;
        *(v49 + 32) = sub_224A58DC8;
        *(v49 + 40) = v44;
        *(v49 + 48) = 0xD000000000000016;
        *(v49 + 56) = v69;
        sub_224A36F98(&v91, v49 + 64);
        *(v49 + 104) = v46;
        *(v49 + 112) = 0;
        v89 = sub_224D5C2B4;
        v90 = v49;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v87 = sub_224A39F40;
        v88 = &block_descriptor_155;
        v50 = _Block_copy(&aBlock);
        v51 = v47;
        v52 = v48;

        v53 = v75;
        sub_224DAB7E8();
        v85 = MEMORY[0x277D84F90];
        sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v80 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v5 = v77;
        v2 = v78;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v53, v5, v50);

        _Block_release(v50);
        v15 = v72;

        (*v62)(v5, v2);
        v54 = v53;
        v16 = v71;
        (*v61)(v54, v76);
        v55 = *(v38 + 8);
        v1 = v70;
        v55(v83, v84);

        __swift_destroy_boxed_opaque_existential_1(v93);
        v29 = v58;
        v30 = v80;
        if (v15 < 0)
        {
          goto LABEL_27;
        }
      }

      else
      {

        sub_224A3311C(&aBlock, &unk_27D6F4700, &unk_224DB3A10);
        v29 = v58;
        v30 = v5;
        if (v15 < 0)
        {
          goto LABEL_27;
        }
      }
    }

    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v58 >= v1)
      {
        goto LABEL_32;
      }

      v57 = *(v16 + 8 * v58);
      ++v56;
      if (v57)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

LABEL_27:
  v59 = sub_224DAF878();
  v8 = v82;
  if (v59)
  {
    v93[0] = v59;
    sub_224DAF538();
    swift_dynamicCast();
    v2 = aBlock;
    v58 = v29;
    v5 = v30;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  sub_224A3B7E4(v15);
}

void sub_224D51338()
{
  v1 = v0;
  v2 = sub_224DAD448();
  v116 = *(v2 - 8);
  v117 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v112 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v14 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v1 + v14, &v130, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v131)
  {
    sub_224A3311C(&v130, &qword_27D6F6C28, &qword_224DC1A38);
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281365168);
    v18 = sub_224DAB228();
    v19 = sub_224DAF288();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_224A2F000, v18, v19, "Unable to process extension events: waiting for descriptor cache", v20, 2u);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    return;
  }

  sub_224A36F98(&v130, v135);
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources) != 3)
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281365168);
    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_224A2F000, v22, v23, "Unable to process extension events: waiting for data sources", v24, 2u);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    goto LABEL_16;
  }

  v15 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionEvents;
  swift_beginAccess();
  if (!*(*(v1 + v15) + 16))
  {
    goto LABEL_16;
  }

  v113 = v15;
  v16 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_lastUserInitiatedDiscovery;
  swift_beginAccess();
  sub_224A3796C(v1 + v16, v8, &qword_27D6F32B0, &qword_224DB3EA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_224A3311C(v8, &qword_27D6F32B0, &qword_224DB3EA0);
    v119 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_224DA97B8();
    v26 = v25;
    (*(v10 + 8))(v13, v9);
    v119 = v26 > -5.0;
  }

  v134 = MEMORY[0x277D84F90];
  v27 = v113;
  v28 = *(v1 + v113);
  v29 = *(v28 + 16);
  v118 = v1;
  if (!v29)
  {
    v31 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v121 = v28 + 32;

  v31 = MEMORY[0x277D84F90];
  *&v32 = 136446466;
  v114 = v32;
  v124 = MEMORY[0x277D84F90];
  v120 = v30;
  while (v29 <= *(v30 + 16))
  {
    v123 = (v29 - 1);
    sub_224D5BD34(v121 + 48 * (v29 - 1), &v130);
    v40 = (v31 + 4);
    v41 = -v31[2];
    v42 = -1;
    while (v41 + v42 != -1)
    {
      if (++v42 >= v31[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v43 = v40 + 40;
      sub_224A3317C(v40, v127);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v130, v131);
      v44 = sub_224DAE338();
      v45 = v31;
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v46 = sub_224DAE338();
      v47 = sub_224DAF6A8();

      v31 = v45;
      __swift_destroy_boxed_opaque_existential_1(v127);
      v40 = v43;
      if (v47)
      {
        goto LABEL_22;
      }
    }

    v122 = v31;
    v48 = v124[2];
    v31 = v124 + 4;

    v49 = v31;
    v50 = -v48;
    v51 = -1;
    while (v50 + v51 != -1)
    {
      if (++v51 >= v124[2])
      {
        goto LABEL_53;
      }

      v52 = v49 + 40;
      sub_224A3317C(v49, v127);
      v31 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v130, v131);
      v53 = sub_224DAE338();
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v54 = sub_224DAE338();
      v55 = sub_224DAF6A8();

      __swift_destroy_boxed_opaque_existential_1(v127);
      v49 = v52;
      if (v55)
      {

        v31 = v122;
        goto LABEL_22;
      }
    }

    v56 = v122;
    if ((v132 & 1) == 0)
    {
      if (v119 && (__swift_project_boxed_opaque_existential_1(&v130, v131), v56 = v122, (sub_224DAE368() & 1) == 0) || (sub_224D4E3B4(&v130, v135) & 1) != 0)
      {
        sub_224A3317C(&v130, v127);
        v60 = v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v60;
        v134 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = sub_224A5C040(0, v60[2] + 1, 1, v60);
          v134 = v62;
        }

        v124 = v62;
        v64 = v62[2];
        v63 = v62[3];
        if (v64 >= v63 >> 1)
        {
          v124 = sub_224A5C040((v63 > 1), v64 + 1, 1, v124);
          v134 = v124;
        }

        v65 = v128;
        v66 = v129;
        v67 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
        MEMORY[0x28223BE20](v67, v67);
        v69 = &v112 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v70 + 16))(v69);
        sub_224A5C064(v64, v69, &v134, v65, v66);
        __swift_destroy_boxed_opaque_existential_1(v127);
        v134 = v124;
        v31 = v122;
        goto LABEL_22;
      }

      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v71 = sub_224DAB258();
      __swift_project_value_buffer(v71, qword_281365168);
      sub_224D5BD34(&v130, v127);
      sub_224D5BD34(&v130, v126);
      v72 = sub_224DAB228();
      v73 = sub_224DAF288();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v125 = v75;
        *v74 = v114;
        __swift_project_boxed_opaque_existential_1(v127, v128);
        v76 = sub_224DAFD28();
        v78 = v77;
        sub_224D5BD6C(v127);
        v79 = sub_224A33F74(v76, v78, &v125);

        *(v74 + 4) = v79;
        *(v74 + 12) = 1026;
        __swift_project_boxed_opaque_existential_1(v126, v126[3]);
        v56 = v122;
        LODWORD(v79) = sub_224DAE238() & 1;
        sub_224D5BD6C(v126);
        *(v74 + 14) = v79;
        _os_log_impl(&dword_224A2F000, v72, v73, "Requested to add extension, but purging instead because we shouldn't cache it: %{public}s - isInternal? %{BOOL,public}d", v74, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x22AA5EED0](v75, -1, -1);
        MEMORY[0x22AA5EED0](v74, -1, -1);
      }

      else
      {
        sub_224D5BD6C(v126);

        sub_224D5BD6C(v127);
      }
    }

    sub_224A3317C(&v130, v127);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v56;
    if ((v57 & 1) == 0)
    {
      v56 = sub_224A5C040(0, v56[2] + 1, 1, v56);
      v133 = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      v33 = sub_224A5C040((v58 > 1), v59 + 1, 1, v56);
      v133 = v33;
    }

    else
    {
      v33 = v56;
    }

    v34 = v128;
    v35 = v129;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
    MEMORY[0x28223BE20](v36, v36);
    v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38);
    sub_224A5C064(v59, v38, &v133, v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v127);
    v31 = v33;
LABEL_22:
    sub_224D5BD6C(&v130);
    v30 = v120;
    v29 = v123;
    if (!v123)
    {
      goto LABEL_55;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:

  v1 = v118;
  v27 = v113;
LABEL_56:
  *(v1 + v27) = MEMORY[0x277D84F90];

  if (!v124[2])
  {
    goto LABEL_62;
  }

  if (qword_281351708 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v80 = sub_224DAB258();
    __swift_project_value_buffer(v80, qword_281365168);
    v81 = sub_224DAB228();
    v82 = sub_224DAF2A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v130 = v123;
      *v83 = 136446210;

      v85 = sub_224D4369C(v84);

      v86 = sub_224DAF538();
      v87 = MEMORY[0x22AA5D380](v85, v86);
      v89 = v88;

      v90 = sub_224A33F74(v87, v89, &v130);

      *(v83 + 4) = v90;
      v1 = v118;
      _os_log_impl(&dword_224A2F000, v81, v82, "Updating descriptors if necessary for new or updated extensions: %{public}s", v83, 0xCu);
      v91 = v123;
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x22AA5EED0](v91, -1, -1);
      MEMORY[0x22AA5EED0](v83, -1, -1);
    }

    v92 = v117;
    v123 = v137;
    __swift_project_boxed_opaque_existential_1(v135, v136);
    v93 = v115;
    v94 = v116;
    (*(v116 + 104))(v115, *MEMORY[0x277CF9CC8], v92);

    sub_224DAD628();

    (*(v94 + 8))(v93, v92);
LABEL_62:
    if (!v31[2])
    {

      goto LABEL_75;
    }

    v95 = v31[2];
    if (!v95)
    {
      break;
    }

    v96 = v1;
    v127[0] = MEMORY[0x277D84F90];

    sub_224DAF9E8();
    v97 = 0;
    v98 = (v31 + 4);
    while (v97 < v31[2])
    {
      sub_224A3317C(v98, &v130);
      __swift_project_boxed_opaque_existential_1(&v130, v131);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&v130);
      ++v97;
      sub_224DAF9B8();
      v1 = *(v127[0] + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v98 += 40;
      if (v95 == v97)
      {
        v99 = v127[0];
        v1 = v96;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_78:
    swift_once();
  }

  v99 = MEMORY[0x277D84F90];
LABEL_70:
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v100 = sub_224DAB258();
  __swift_project_value_buffer(v100, qword_281365168);

  v101 = sub_224DAB228();
  v102 = sub_224DAF2A8();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v130 = v104;
    *v103 = 136446210;
    v105 = sub_224DAF538();
    v106 = MEMORY[0x22AA5D380](v99, v105);
    v108 = sub_224A33F74(v106, v107, &v130);

    *(v103 + 4) = v108;
    _os_log_impl(&dword_224A2F000, v101, v102, "Purging descriptors for extensions: %{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x22AA5EED0](v104, -1, -1);
    MEMORY[0x22AA5EED0](v103, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v135, v136);

  sub_224DAD618();

  v109 = v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences;
  swift_beginAccess();
  v110 = *(v109 + 24);
  v111 = *(v109 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  (*(v111 + 40))(v99, v110, v111);
  swift_endAccess();

LABEL_75:

LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v135);
}

void sub_224D523A4(uint64_t a1, char a2)
{
  BSDispatchQueueAssert();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionEvents;
    v7 = a1 + 32;
    v8 = a2 & 1;
    do
    {
      sub_224A3317C(v7, &v16);
      v17[24] = v8;
      swift_beginAccess();
      v9 = *(v2 + v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v6) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_224AD9C48(0, *(v9 + 2) + 1, 1, v9);
        *(v2 + v6) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_224AD9C48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[48 * v12];
      v14 = v16;
      v15 = *v17;
      *(v13 + 57) = *&v17[9];
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
      *(v2 + v6) = v9;
      swift_endAccess();
      v7 += 40;
      --v5;
    }

    while (v5);
  }

  sub_224D51338();
}

void sub_224D524E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  v36 = v1;
  sub_224A3796C(v1 + v3, &v40, &qword_27D6F6C28, &qword_224DC1A38);
  v34 = a1;
  if (v41)
  {
    sub_224A36F98(&v40, v44);
    v4 = *(a1 + 16);
    if (v4)
    {
      v35 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager;
      v5 = &unk_27D6F53A0;
      v6 = a1 + 32;
      do
      {
        sub_224A3317C(v6, v42);
        __swift_project_boxed_opaque_existential_1(v42, v43);
        v10 = sub_224DAE338();
        sub_224A3317C(v44, &v40 + 8);
        *&v40 = v10;
        sub_224A3796C(v36 + v35, v38, v5, &qword_224DC1A80);
        if (v39)
        {
          __swift_project_boxed_opaque_existential_1(v38, v39);
          v37[3] = &type metadata for ExtensionDescriptorStateCapturing;
          v37[4] = sub_224D5BCA8();
          v37[0] = swift_allocObject();
          sub_224D5BCFC(&v40, v37[0] + 16);
          v7 = v5;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v8 = sub_224DAE338();
          v9 = [v8 description];

          sub_224DAEE18();
          v5 = v7;
          sub_224DAA2F8();

          sub_224D5BC78(&v40);
          __swift_destroy_boxed_opaque_existential_1(v37);
          __swift_destroy_boxed_opaque_existential_1(v38);
        }

        else
        {
          sub_224D5BC78(&v40);
          sub_224A3311C(v38, v5, &qword_224DC1A80);
        }

        __swift_destroy_boxed_opaque_existential_1(v42);
        v6 += 40;
        --v4;
      }

      while (v4);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    a1 = v34;
  }

  else
  {
    sub_224A3311C(&v40, &qword_27D6F6C28, &qword_224DC1A38);
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281365168);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    v44[0] = v15;
    *v14 = 136446210;
    v17 = *(a1 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v32 = v15;
      v33 = v14;
      v42[0] = MEMORY[0x277D84F90];
      sub_224A3DFD8(0, v17, 0);
      v18 = v42[0];
      v19 = a1 + 32;
      do
      {
        sub_224A3317C(v19, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v41);
        v20 = sub_224DAE338();
        v21 = [v20 description];
        v22 = sub_224DAEE18();
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_1(&v40);
        v42[0] = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_224A3DFD8((v25 > 1), v26 + 1, 1);
          v18 = v42[0];
        }

        *(v18 + 16) = v26 + 1;
        v27 = v18 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v19 += 40;
        --v17;
      }

      while (v17);
      v14 = v33;
      a1 = v34;
      v16 = v32;
    }

    *&v40 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v28 = sub_224DAEDA8();
    v30 = v29;

    v31 = sub_224A33F74(v28, v30, v44);

    *(v14 + 4) = v31;
    _os_log_impl(&dword_224A2F000, v12, v13, "Queuing extension added events: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  sub_224D523A4(a1, 0);
}

void sub_224D529E4(uint64_t a1)
{
  v31 = *(a1 + 16);
  if (v31)
  {
    v28 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager;
    v1 = a1 + 32;
    v2 = *(a1 + 16);
    do
    {
      sub_224A3317C(v1, v35);
      sub_224A3796C(v30 + v28, v33, &unk_27D6F53A0, &qword_224DC1A80);
      if (v34)
      {
        __swift_project_boxed_opaque_existential_1(v33, v34);
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v3 = sub_224DAE338();
        v4 = [v3 tokenString];

        sub_224DAEE18();
        sub_224DAA298();

        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        sub_224A3311C(v33, &unk_27D6F53A0, &qword_224DC1A80);
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v1 += 40;
      --v2;
    }

    while (v2);
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281365168);
  v6 = a1;

  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    v33[0] = v10;
    *v9 = 136446210;
    v12 = MEMORY[0x277D84F90];
    if (v31)
    {
      v26 = v10;
      v29 = v8;
      v32 = MEMORY[0x277D84F90];
      sub_224A3DFD8(0, v31, 0);
      v12 = v32;
      v13 = a1 + 32;
      do
      {
        sub_224A3317C(v13, v35);
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v14 = sub_224DAE338();
        v15 = [v14 description];
        v16 = sub_224DAEE18();
        v18 = v17;

        __swift_destroy_boxed_opaque_existential_1(v35);
        v20 = *(v32 + 16);
        v19 = *(v32 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_224A3DFD8((v19 > 1), v20 + 1, 1);
        }

        *(v32 + 16) = v20 + 1;
        v21 = v32 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v31;
      }

      while (v31);
      v6 = a1;
      v8 = v29;
      v11 = v26;
    }

    v35[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v22 = sub_224DAEDA8();
    v24 = v23;

    v25 = sub_224A33F74(v22, v24, v33);

    *(v9 + 4) = v25;
    _os_log_impl(&dword_224A2F000, v7, v8, "Queuing extension removed events: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  sub_224D523A4(v6, 1);
}

void sub_224D52DE4(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v80 = sub_224DAD448();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v4);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_224DAA5C8();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v6);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24);
  v9 = *(v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService), v8);
  (*(v9 + 32))(v105, 768, v8, v9);
  v10 = v106;
  if (v106)
  {
    if (*(v106 + 16) && (v11 = sub_224A683FC(a1), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      v14 = [*(v13 + *(*v13 + 104)) containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v91 = sub_224DAF008();
    }

    else
    {
      v91 = 0;
    }

    sub_224A699F0(v105);
  }

  else
  {
    sub_224A3311C(v105, &qword_27D6F50E0, &qword_224DB41A0);
    v91 = 0;
  }

  v15 = *(v87 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 24);
  v16 = *(v87 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 32);
  __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService), v15);
  v17 = (*(v16 + 24))(768, v15, v16);
  if (!v17)
  {
    if (!v91)
    {
      goto LABEL_82;
    }

LABEL_13:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v18 = sub_224CFFD3C(a1, v17);

  if (v91)
  {
    if (v18)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (!v18)
  {
    goto LABEL_82;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_16:
  v19 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v20 = v87;
  swift_beginAccess();
  sub_224A3796C(v20 + v19, &v103, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v104)
  {

    sub_224A3311C(&v103, &qword_27D6F6C28, &qword_224DC1A38);
    goto LABEL_82;
  }

  sub_224A36F98(&v103, v105);
  *&v103 = MEMORY[0x277D84FA0];
  if (v91 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v22 = 0;
    v90 = v91 & 0xC000000000000001;
    v86 = v91 & 0xFFFFFFFFFFFFFF8;
    v85 = v91 + 32;
    v23 = MEMORY[0x277D84FA0];
    v89 = v18;
    v88 = i;
    while (1)
    {
      if (v90)
      {
        v25 = MEMORY[0x22AA5DCC0](v22, v91);
      }

      else
      {
        if (v22 >= *(v86 + 16))
        {
          goto LABEL_70;
        }

        v25 = *(v85 + 8 * v22);
      }

      v26 = v25;
      v27 = __OFADD__(v22, 1);
      v28 = v22 + 1;
      if (v27)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v29 = [v25 widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v30 = sub_224DAF008();

      v31 = v30 >> 62 ? sub_224DAF838() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v92 = v26;
      v93 = v28;
      if (v31)
      {
        break;
      }

LABEL_20:
      v24 = v23;
LABEL_21:

      v23 = v24;
      v22 = v93;
      v18 = v89;
      if (v93 == v88)
      {
        goto LABEL_72;
      }
    }

    v32 = v31;
    if (v31 < 1)
    {
      goto LABEL_68;
    }

    v33 = 0;
    v18 = v30 & 0xC000000000000001;
    v96 = v30 + 32;
    v97 = v31;
    v95 = v30 & 0xC000000000000001;
    v94 = v30;
    while (1)
    {
LABEL_33:
      v37 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v37 = v23;
      }

      v98 = v37;
      v99 = v23 & 0xC000000000000001;
      v38 = v23 + 56;
      while (1)
      {
        while (1)
        {
          v39 = v18 ? MEMORY[0x22AA5DCC0](v33, v30) : *(v96 + 8 * v33);
          ++v33;
          v100 = v39;
          v40 = [v39 extensionIdentity];
          v41 = v40;
          if (v99)
          {
            break;
          }

          sub_224DAF538();
          v44 = sub_224DAF698();
          v45 = -1 << *(v23 + 32);
          v46 = v44 & ~v45;
          if (((*(v38 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
LABEL_32:
            v34 = v103;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v102 = v34;
            v36 = v41;
            sub_224AE2760(v36, v46, isUniquelyReferenced_nonNull_native);

            v23 = v102;
            *&v103 = v102;
            v24 = v102;
            v32 = v97;
            v30 = v94;
            v18 = v95;
            if (v33 == v97)
            {
              goto LABEL_21;
            }

            goto LABEL_33;
          }

          v47 = ~v45;
          while (1)
          {
            v48 = *(*(v23 + 48) + 8 * v46);
            v49 = sub_224DAF6A8();

            if (v49)
            {
              break;
            }

            v46 = (v46 + 1) & v47;
            if (((*(v38 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v32 = v97;
          v30 = v94;
          v18 = v95;
          if (v33 == v97)
          {
            goto LABEL_20;
          }
        }

        v42 = v40;

        v43 = sub_224DAF858();

        if (!v43)
        {
          break;
        }

        v101 = v43;
        sub_224DAF538();
        swift_dynamicCast();

        if (v33 == v32)
        {
          goto LABEL_20;
        }
      }

      v50 = v98;
      v51 = sub_224DAF838();
      if (__OFADD__(v51, 1))
      {
        break;
      }

      v24 = sub_224ADD3D8(v50, v51 + 1);
      v102 = v24;
      v52 = *(v24 + 2);
      if (*(v24 + 3) <= v52)
      {
        sub_224ADEE2C(v52 + 1);
        v24 = v102;
      }

      v53 = v42;
      v54 = sub_224DAF698();
      v55 = v24 + 56;
      v56 = -1 << v24[32];
      v57 = v54 & ~v56;
      v58 = v57 >> 6;
      if (((-1 << v57) & ~*&v24[8 * (v57 >> 6) + 56]) != 0)
      {
        v59 = __clz(__rbit64((-1 << v57) & ~*&v24[8 * (v57 >> 6) + 56])) | v57 & 0x7FFFFFFFFFFFFFC0;
        v32 = v97;
      }

      else
      {
        v60 = 0;
        v61 = (63 - v56) >> 6;
        v32 = v97;
        do
        {
          if (++v58 == v61 && (v60 & 1) != 0)
          {
            __break(1u);
            goto LABEL_67;
          }

          v62 = v58 == v61;
          if (v58 == v61)
          {
            v58 = 0;
          }

          v60 |= v62;
          v63 = *&v55[8 * v58];
        }

        while (v63 == -1);
        v59 = __clz(__rbit64(~v63)) + (v58 << 6);
      }

      *&v55[(v59 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v59;
      *(*(v24 + 6) + 8 * v59) = v53;
      ++*(v24 + 2);

      *&v103 = v24;
      v23 = v24;
      if (v33 == v32)
      {
        goto LABEL_21;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

LABEL_72:

  if (v18 >> 62)
  {
    v64 = sub_224DAF838();
    if (v64)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v64 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64)
    {
LABEL_74:
      if (v64 < 1)
      {
        __break(1u);
        return;
      }

      v65 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x22AA5DCC0](v65, v18);
        }

        else
        {
          v66 = *(v18 + 8 * v65 + 32);
        }

        v67 = v66;
        ++v65;
        v68 = [v66 controlIdentity];
        v69 = [v68 &off_27853F578];

        sub_224A3DC84(&v102, v69);
      }

      while (v64 != v65);
    }
  }

  __swift_project_boxed_opaque_existential_1((v87 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v87 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
  v70 = sub_224DAC678();
  sub_224D5662C(v70, &v103);

  __swift_project_boxed_opaque_existential_1(v105, v105[3]);
  v71 = v79;
  v72 = v78;
  v73 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277CF9CD8], v80);
  sub_224DAD628();

  (*(v71 + 8))(v72, v73);

  __swift_destroy_boxed_opaque_existential_1(v105);
LABEL_82:
  v74 = v83;
  v75 = v82;
  v76 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x277CFA0D8], v84);
  sub_224A39EF8(&qword_2813517E8, MEMORY[0x277CFA0E8], MEMORY[0x277CFA0F0]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  (*(v74 + 8))(v75, v76);
  if (v105[0] == v103)
  {
    sub_224D50518(1);
  }
}

uint64_t sub_224D53938(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t (*a5)(void, uint64_t), uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(a1 + v13, &v15, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v16)
  {
    sub_224A3311C(&v15, &qword_27D6F6C28, &qword_224DC1A38);
    return a5(0, a7);
  }

  sub_224A36F98(&v15, v17);
  result = sub_224D4E3B4(a2, v17);
  if ((result & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    return a5(0, a7);
  }

  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_224A3E908(a2, a3 - 1, 0xD00000000000001ALL, 0x8000000224DCFDB0, a4 & 1);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

void sub_224D53A60(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, dispatch_group_t group)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v11 = a1;
  [a2 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C40, &unk_224DC1A70);
  swift_dynamicCast();
  v12 = [objc_allocWithZone(MEMORY[0x277CFA278]) initWithIntent_];
  [v18 setDefaultIntentReference_];

  os_unfair_lock_lock(*(a3 + 16));
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = v18;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(a4 + 16) = v13;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = sub_224B44A20(v13);
    *(a4 + 16) = v13;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a5)
  {
    v16 = (v13 & 0xFFFFFFFFFFFFFF8) + 8 * a5;
    v17 = *(v16 + 0x20);
    *(v16 + 32) = v14;
    *(a4 + 16) = v13;
    swift_endAccess();

    os_unfair_lock_unlock(*(a3 + 16));
LABEL_9:
    dispatch_group_leave(group);
    return;
  }

  __break(1u);
}

uint64_t (*sub_224D53BF0())(__int128 *)
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v0 + v1, &v12, &qword_27D6F6C28, &qword_224DC1A38);
  if (v13)
  {
    sub_224A36F98(&v12, v14);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
    v2 = sub_224DAC678();
    MEMORY[0x28223BE20](v2, v3);
    v11[2] = v0;
    v11[3] = v14;
    v5 = sub_224C5CCE8(sub_224D5BBE8, v11, v4);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_224A3311C(&v12, &qword_27D6F6C28, &qword_224DC1A38);
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281365168);
    v7 = sub_224DAB228();
    v8 = sub_224DAF288();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224A2F000, v7, v8, "Waiting for descriptor cache", v9, 2u);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v5;
}

double sub_224D53DD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = a1;
  v5 = sub_224DADDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DADD78();
  v122 = *(v10 - 8);
  v123 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v121 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DADCA8();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v13);
  v118 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DADC58();
  v117 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_suppressPublishingNotificationsForTesting))
  {
    return result;
  }

  v20 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v2 + v20, v127, &qword_27D6F6C28, &qword_224DC1A38);
  v21 = v127[3];
  sub_224A3311C(v127, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v21)
  {
    return result;
  }

  v112 = v9;
  v116 = a2;
  v113 = v6;
  v114 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  v22 = MEMORY[0x277D84F90];
  sub_224DA06A0(MEMORY[0x277D84F90]);
  v23 = sub_224DACF68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5698, &qword_224DBBCC0);
  sub_224DA06C8(v22);
  sub_224DACF68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C30, qword_224DC1A40);
  sub_224DA2D68(v22);
  v125 = sub_224DACF68();
  v24 = sub_224A48648();
  if (v24)
  {
    v26 = v24;
    if (v124)
    {
      MEMORY[0x28223BE20](v24, v25);
      *(&v107 - 2) = v27;
      v28 = 0;
      v29 = sub_224DACF48();

      v23 = v29;
    }

    else
    {

      v28 = 0;
      v23 = v26;
    }

    v31 = qword_281351708;
    swift_retain_n();
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_281365168);
    swift_retain_n();

    v33 = v3;
    v34 = sub_224DAB228();
    v35 = sub_224DAF2A8();
    v111 = v33;

    v110 = v35;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v127[0] = v109;
      *v36 = 134349570;
      v108 = v34;
      v37 = sub_224DACF88();

      *(v36 + 4) = v37;

      *(v36 + 12) = 2050;
      v38 = sub_224DACF88();

      *(v36 + 14) = v38;

      *(v36 + 22) = 2082;
      v39 = &v111[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
      sub_224CB986C();
      sub_224DAF538();
      v115 = 0;
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      v40 = sub_224DAF1C8();
      v41 = v3;
      v42 = v23;
      v44 = v43;

      v45 = v40;
      v28 = v115;
      v46 = sub_224A33F74(v45, v44, v127);
      v23 = v42;
      v3 = v41;

      *(v36 + 24) = v46;
      v47 = v108;
      _os_log_impl(&dword_224A2F000, v108, v110, "Publishing changed widget descriptors - count = %{public}ld (total = %{public}ld, pending = %{public}s)", v36, 0x20u);
      v48 = v109;
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x22AA5EED0](v48, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    else
    {
    }

    v30 = v124;

    sub_224DADC28();
    sub_224DAB348();

    (v117[1])(v19, v15);
  }

  else
  {
    v28 = 0;
    v30 = v124;
  }

  v49 = sub_224A5B8B8();
  if (v49)
  {
    if (v30)
    {
      MEMORY[0x28223BE20](v49, v50);
      *(&v107 - 2) = v30;
      sub_224DACF48();
    }

    else
    {
    }

    v51 = qword_281351708;
    swift_retain_n();
    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281365168);
    v53 = v3;

    v54 = sub_224DAB228();
    v55 = sub_224DAF2A8();

    v56 = os_log_type_enabled(v54, v55);
    v115 = v28;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v127[0] = v117;
      *v57 = 134349570;
      LODWORD(v111) = v55;
      v58 = sub_224DACF88();

      *(v57 + 4) = v58;

      *(v57 + 12) = 2050;
      *(v57 + 14) = sub_224DACF88();

      *(v57 + 22) = 2082;
      v59 = &v53[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1(v59, *(v59 + 3));
      sub_224CB986C();
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      v60 = sub_224DAF1C8();
      v61 = v3;
      v62 = v23;
      v64 = v63;

      v65 = v60;
      v30 = v124;
      v66 = sub_224A33F74(v65, v64, v127);
      v23 = v62;
      v3 = v61;

      *(v57 + 24) = v66;
      _os_log_impl(&dword_224A2F000, v54, v111, "Publishing changed control descriptors - count = %{public}ld (total = %{public}ld, pending = %{public}s)", v57, 0x20u);
      v67 = v117;
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x22AA5EED0](v67, -1, -1);
      MEMORY[0x22AA5EED0](v57, -1, -1);
    }

    else
    {
    }

    v68 = v118;
    sub_224DADC28();
    sub_224DAB348();

    (v119[1])(v68, v120);
  }

  v69 = sub_224D44CD4();
  if (v69)
  {
    v71 = v69;
    if (v30)
    {
      MEMORY[0x28223BE20](v69, v70);
      *(&v107 - 2) = v30;
      v72 = sub_224DACF48();

      v125 = v72;
    }

    else
    {

      v125 = v71;
    }

    v73 = qword_281351708;
    swift_retain_n();
    if (v73 != -1)
    {
      swift_once();
    }

    v74 = sub_224DAB258();
    __swift_project_value_buffer(v74, qword_281365168);
    v75 = v3;

    v76 = sub_224DAB228();
    v77 = sub_224DAF2A8();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v120 = v23;
      v119 = v79;
      v126 = v79;
      *v78 = 134349570;
      v80 = sub_224DACF88();

      *(v78 + 4) = v80;

      *(v78 + 12) = 2050;
      *(v78 + 14) = sub_224DACF88();

      *(v78 + 22) = 2082;
      v81 = &v75[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
      sub_224CB986C();
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
      v82 = sub_224DAF1C8();
      v84 = v83;

      v85 = sub_224A33F74(v82, v84, &v126);
      v30 = v124;

      *(v78 + 24) = v85;
      _os_log_impl(&dword_224A2F000, v76, v77, "Publishing changed activity descriptors - count = %{public}ld (total = %{public}ld, pending = %{public}s)", v78, 0x20u);
      v86 = v119;
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x22AA5EED0](v86, -1, -1);
      MEMORY[0x22AA5EED0](v78, -1, -1);
    }

    else
    {
    }

    v87 = v121;
    sub_224DADC28();
    sub_224DAB348();

    (*(v122 + 8))(v87, v123);
  }

  if (!v30)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_224DAF838())
      {
        sub_224D57F20(MEMORY[0x277D84F90], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);
        v88 = v106;
      }

      else
      {
        v88 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v88 = MEMORY[0x277D84FA0];
    }

    if (sub_224A48648())
    {
      v90 = sub_224DACF58();
      sub_224A5B11C(v90, v88);
      v88 = v91;
    }

    if (sub_224A5B8B8())
    {
      v92 = sub_224DACF58();
      sub_224A5B11C(v92, v88);
      v88 = v93;
    }

    if ((v88 & 0xC000000000000001) != 0)
    {
      goto LABEL_36;
    }

LABEL_44:
    v89 = *(v88 + 16);
    swift_bridgeObjectRetain_n();
    goto LABEL_45;
  }

  v88 = v30;
  if ((v30 & 0xC000000000000001) == 0)
  {
    goto LABEL_44;
  }

LABEL_36:
  swift_bridgeObjectRetain_n();
  v89 = sub_224DAF838();
LABEL_45:

  if (v89)
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v94 = sub_224DAB258();
    __swift_project_value_buffer(v94, qword_281365168);

    v95 = sub_224DAB228();
    v96 = sub_224DAF2A8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134349312;
      *(v97 + 4) = sub_224DACF88();

      *(v97 + 12) = 2050;
      *(v97 + 14) = sub_224DACF88();

      _os_log_impl(&dword_224A2F000, v95, v96, "Publishing combined descriptors change event - widgets: %{public}ld, controls: %{public}ld", v97, 0x16u);
      MEMORY[0x22AA5EED0](v97, -1, -1);
    }

    else
    {
    }

    v98 = v112;
    sub_224DADD88();
    sub_224DAB348();
    (*(v113 + 8))(v98, v114);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  sub_224DAC1E8();
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_224DB30F0;
  sub_224DAC1C8();
  sub_224DAC1D8();
  v100 = sub_224A5AD0C(v99);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v101 = sub_224DAB258();
  __swift_project_value_buffer(v101, qword_281365168);

  v102 = sub_224DAB228();
  v103 = sub_224DAF2A8();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 134349056;
    if ((v100 & 0xC000000000000001) != 0)
    {
      v105 = sub_224DAF838();
    }

    else
    {
      v105 = *(v100 + 16);
    }

    *(v104 + 4) = v105;

    _os_log_impl(&dword_224A2F000, v102, v103, "Publishing new extensions set - count = %{public}ld", v104, 0xCu);
    MEMORY[0x22AA5EED0](v104, -1, -1);
  }

  else
  {
  }

  v126 = v100;
  sub_224DAB348();

  return result;
}

void sub_224D55068(uint64_t a1)
{
  sub_224BDD38C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_224D55270(uint64_t a1, int a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1((*v6 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(*v6 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
  v12 = sub_224DAC668();
  sub_224D4CDBC(v12, a2, a3, a4, a5, a6);
}

uint64_t sub_224D55498()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224D5550C()
{
  result = qword_27D6F6BE8;
  if (!qword_27D6F6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6BE8);
  }

  return result;
}

unint64_t sub_224D55564()
{
  result = qword_27D6F6BF0;
  if (!qword_27D6F6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6BF0);
  }

  return result;
}

unint64_t sub_224D555BC()
{
  result = qword_27D6F6BF8;
  if (!qword_27D6F6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6BF8);
  }

  return result;
}

unint64_t sub_224D55614()
{
  result = qword_27D6F6C00;
  if (!qword_27D6F6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6C00);
  }

  return result;
}

double sub_224D55668(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v7 = sub_224DAB7B8();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries) & 1) == 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_224DAE338();
  sub_224A3317C(a1, v28);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v16;
  *(v17 + 32) = v22;
  *(v17 + 40) = a3;
  *(v17 + 48) = 0x6E69206568636163;
  *(v17 + 56) = 0xEF64657461697469;
  sub_224A36F98(v28, v17 + 64);
  *(v17 + 104) = v15;
  *(v17 + 112) = 0;
  aBlock[4] = sub_224A39F84;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  v20 = v16;

  sub_224DAB7E8();
  v26 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v14, v10, v18);
  _Block_release(v18);

  (*(v25 + 8))(v10, v7);
  (*(v23 + 8))(v14, v24);

  return result;
}

uint64_t sub_224D55C2C(void **a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = sub_224DA9FE8();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v7 = sub_224A921B4(v3, v5, 0);
  if (v1)
  {

    return 1;
  }

  else if (v7)
  {
    v9 = v7;
    v10 = [v7 appClipMetadata];
    if (v10)
    {

      if (qword_281351460 != -1)
      {
        swift_once();
      }

      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_281364DC0);
      v12 = v2;
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v15 = 136446210;
        v17 = [v12 extensionBundleIdentifier];
        v18 = sub_224DAEE18();
        v20 = v19;

        v21 = sub_224A33F74(v18, v20, &v22);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_224A2F000, v13, v14, "Descriptor from %{public}s is an App Clip", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x22AA5EED0](v16, -1, -1);
        MEMORY[0x22AA5EED0](v15, -1, -1);
      }

      return 0;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t sub_224D55E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - v4 + 16;
  strcpy(v11, "Descriptors[");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v6 = *v0;
  v7 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
  v8 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v8);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_224D55FF8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  v1 = sub_224DAD588();
  if (!v1)
  {
    return 0x30203A746E756F43;
  }

  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_224DAF838();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v4);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  if (!v3)
  {
    goto LABEL_15;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_224A3DFD8(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 description];
      v10 = sub_224DAEE18();
      v12 = v11;

      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_224A3DFD8((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v6);
LABEL_15:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v16 = sub_224DAEDA8();
    v18 = v17;

    MEMORY[0x22AA5D210](v16, v18);

    return 0x203A746E756F43;
  }

  __break(1u);
  return result;
}

uint64_t sub_224D5628C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t *sub_224D562BC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
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

    sub_224D58430(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_224D563AC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 32;
    v6 = MEMORY[0x277D84F90];
    v21 = *(a1 + 16);
    v20 = a1 + 32;
    while (1)
    {
      sub_224A3317C(v5 + 40 * v4, &v24);
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      if ((sub_224DAE368() & 1) == 0)
      {
        v7 = *v3;
        __swift_project_boxed_opaque_existential_1(&v24, v25);

        v8 = sub_224DAE338();
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = sub_224DAF888();

          if ((v9 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (!*(v7 + 16) || (sub_224DAF538(), v10 = sub_224DAF698(), v11 = -1 << *(v7 + 32), v12 = v10 & ~v11, ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0))
          {
LABEL_15:

            v2 = v21;
            v3 = a2;
            v5 = v20;
LABEL_16:
            sub_224A36F98(&v24, v23);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA390(0, *(v6 + 16) + 1, 1);
              v6 = v26;
            }

            v18 = *(v6 + 16);
            v17 = *(v6 + 24);
            if (v18 >= v17 >> 1)
            {
              sub_224ADA390((v17 > 1), v18 + 1, 1);
              v6 = v26;
            }

            *(v6 + 16) = v18 + 1;
            sub_224A36F98(v23, v6 + 40 * v18 + 32);
            goto LABEL_5;
          }

          v13 = ~v11;
          while (1)
          {
            v14 = *(*(v7 + 48) + 8 * v12);
            v15 = sub_224DAF6A8();

            if (v15)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v2 = v21;
          v3 = a2;
          v5 = v20;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_5:
      if (++v4 == v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224D5662C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 32;
    v23 = MEMORY[0x277D84F90];
    v20 = a1 + 32;
    v21 = *(a1 + 16);
    while (1)
    {
      sub_224A3317C(v5 + 40 * v4, &v25);
      v6 = *v3;
      __swift_project_boxed_opaque_existential_1(&v25, v26);

      v7 = sub_224DAE338();
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = sub_224DAF888();

        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (*(v6 + 16))
        {
          sub_224DAF538();
          v13 = sub_224DAF698();
          v14 = -1 << *(v6 + 32);
          v15 = v13 & ~v14;
          if ((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            v16 = ~v14;
            while (1)
            {
              v17 = *(*(v6 + 48) + 8 * v15);
              v18 = sub_224DAF6A8();

              if (v18)
              {
                break;
              }

              v15 = (v15 + 1) & v16;
              if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            v2 = v21;
            v3 = a2;
            v5 = v20;
LABEL_8:
            sub_224A36F98(&v25, v24);
            v9 = v23;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA390(0, *(v23 + 16) + 1, 1);
              v9 = v27;
            }

            v12 = *(v9 + 16);
            v11 = *(v9 + 24);
            if (v12 >= v11 >> 1)
            {
              sub_224ADA390((v11 > 1), v12 + 1, 1);
              v9 = v27;
            }

            *(v9 + 16) = v12 + 1;
            v23 = v9;
            sub_224A36F98(v24, v9 + 40 * v12 + 32);
            goto LABEL_5;
          }
        }

LABEL_3:

        v2 = v21;
        v3 = a2;
        v5 = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v25);
LABEL_5:
      if (++v4 == v2)
      {
        return v23;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224D56880(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v8 = sub_224DAC1E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v39 = v5;
    v47 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v15 = (a1 + 32);
    v46 = (v9 + 8);
    v43 = v8;
    v44 = a2;
    do
    {
      v17 = sub_224A5B354(v15);
      sub_224DAC1C8();
      v18 = sub_224D422E0(v12, a2);
      v19 = *v46;
      (*v46)(v12, v8);
      if (v18)
      {
        if (*v40)
        {

          v20 = sub_224DACF78();

          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          v21 = sub_224DAE338();
          v22 = v21;
          if (*(v20 + 16) && (sub_224A3E7EC(v21), (v23 & 1) != 0))
          {
          }

          else
          {
          }

          v8 = v43;
          a2 = v44;
        }

        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        v24 = sub_224DAEFF8();

        [v17 setOrderedWidgetDescriptors_];
      }

      sub_224DAC1D8();
      v25 = sub_224D422E0(v12, a2);
      v19(v12, v8);
      if (v25)
      {
        if (*v41)
        {

          v26 = sub_224DACF78();

          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          v27 = sub_224DAE338();
          v28 = v27;
          if (*(v26 + 16) && (sub_224A3E7EC(v27), (v29 & 1) != 0))
          {
          }

          else
          {
          }

          v8 = v43;
          a2 = v44;
        }

        sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
        v30 = sub_224DAEFF8();

        [v17 setOrderedControlDescriptors_];
      }

      sub_224DAC1B8();
      v31 = sub_224D422E0(v12, a2);
      v19(v12, v8);
      if (v31)
      {
        v32 = *v42;
        v45 = v17;
        if (v32)
        {

          v33 = sub_224DACF78();

          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          v34 = sub_224DAE338();
          v35 = v34;
          if (*(v33 + 16) && (v36 = sub_224A3E7EC(v34), (v37 & 1) != 0))
          {
            v38 = *(*(v33 + 56) + 8 * v36);

            sub_224AE8D28(v38);
          }

          else
          {
          }

          v8 = v43;
          a2 = v44;
        }

        sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
        sub_224A3B758(&unk_2813508C0, &qword_2813508D0, 0x277CFA318, MEMORY[0x277D85378]);
        v16 = sub_224DAF1A8();

        v17 = v45;
        [v45 setLiveActivityDescriptors_];
      }

      [objc_allocWithZone(MEMORY[0x277CFA3A8]) initFromExtension_];

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v15 += 5;
      --v13;
    }

    while (v13);
    return v47;
  }

  return result;
}