void *sub_22B0ACCDC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_22B0DF830();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_22B083484(v2, 0);

    v1 = sub_22B092E38(&v5, v3 + 4, v2, v1);
    sub_22B0781A0(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

unint64_t sub_22B0ACDE4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2318895C0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_22B0AAD44(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_22B0DF830();
      v2 = result;
    }

    while (result);
  }

  return result;
}

id sub_22B0ACF9C()
{
  v1 = [*v0 error];

  return v1;
}

id sub_22B0ACFF0@<X0>(void *a1@<X8>)
{
  result = [*v1 status];
  *a1 = result;
  return result;
}

uint64_t sub_22B0AD02C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_22B0DF0B0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22B0DF0E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_22B0AD0D0(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4 = *(a1 + 80);
  v5 = v1;
  result = type metadata accessor for BaseAnalyzerDataSource(319, &v4);
  if (v3 <= 0x3F)
  {
    *&v4 = *(result - 8) + 64;
    *(&v4 + 1) = MEMORY[0x277D83428] + 64;
    *&v5 = MEMORY[0x277D84F88] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22B0AD188@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  v3 = [v2 lastExitContext];

  result = 0;
  if (v3)
  {
    result = sub_22B0AF6CC();
    v5 = &off_28189EFD0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_22B0AD238()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22B0AD2C0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B0AD2C0()
{
  v1 = sub_22B0DF0E0();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D85000];
  v5 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  v6 = [v5[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v7 = *(v0 + *((*v4 & *v0) + 0x78));
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v44 = sub_22B099028(0x736568636E75616CLL, 0xE800000000000000, v3);
  LOBYTE(v6) = v8;

  os_unfair_lock_unlock(v7 + 22);
  v58 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v43 = sub_22B099028(0x6C616D726F6E6261, 0xEC00000074697845, v3);
  LOBYTE(v6) = v9;

  os_unfair_lock_unlock(v7 + 22);
  v57 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v42 = sub_22B099028(0x7261746E756C6F76, 0xED00007469784579, v3);
  LOBYTE(v6) = v10;

  os_unfair_lock_unlock(v7 + 22);
  v56 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v41 = sub_22B099028(0x6D617374656ALL, 0xE600000000000000, v3);
  LOBYTE(v6) = v11;

  os_unfair_lock_unlock(v7 + 22);
  v55 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v40 = sub_22B099028(0x6574617768676968, 0xE900000000000072, v3);
  LOBYTE(v6) = v12;

  os_unfair_lock_unlock(v7 + 22);
  v54 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v39 = sub_22B099028(0x4C737365636F7270, 0xEC00000074696D69, v3);
  LOBYTE(v6) = v13;

  os_unfair_lock_unlock(v7 + 22);
  v53 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v38 = sub_22B099028(0x74697845656C6469, 0xE800000000000000, v3);
  LOBYTE(v6) = v14;

  os_unfair_lock_unlock(v7 + 22);
  v52 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v37 = sub_22B099028(0x6873617263, 0xE500000000000000, v3);
  LOBYTE(v6) = v15;

  os_unfair_lock_unlock(v7 + 22);
  v51 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v36 = sub_22B099028(0x676F646863746177, 0xE800000000000000, v3);
  v17 = v16;

  os_unfair_lock_unlock(v7 + 22);
  v18 = v17 & 1;
  v50 = v17 & 1;
  v35 = v5;
  v20 = *v5;
  v19 = v5[1];
  LOBYTE(v5) = v58;
  LOBYTE(v4) = v57;
  v21 = v56;
  v30 = v55;
  v31 = v54;
  v32 = v53;
  v33 = v52;
  v34 = v51;
  v22 = type metadata accessor for ProcessLaunchSummaryLogEvent();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v48 = v20;
  v49 = v19;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);
  v24 = v49;
  v25 = &v23[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v25 = v48;
  *(v25 + 1) = v24;
  v26 = &v23[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  *v26 = v44;
  v26[8] = v5;
  *(v26 + 9) = v48;
  *(v26 + 3) = *(&v48 + 3);
  *(v26 + 2) = v43;
  v26[24] = v4;
  *(v26 + 25) = *v65;
  *(v26 + 7) = *&v65[3];
  *(v26 + 4) = v42;
  v26[40] = v21;
  *(v26 + 41) = *v64;
  *(v26 + 11) = *&v64[3];
  *(v26 + 6) = v41;
  v26[56] = v30;
  LODWORD(v24) = *v63;
  *(v26 + 15) = *&v63[3];
  *(v26 + 57) = v24;
  *(v26 + 8) = v40;
  v26[72] = v31;
  LODWORD(v24) = *v62;
  *(v26 + 19) = *&v62[3];
  *(v26 + 73) = v24;
  *(v26 + 10) = v39;
  v26[88] = v32;
  LODWORD(v24) = *v61;
  *(v26 + 23) = *&v61[3];
  *(v26 + 89) = v24;
  *(v26 + 12) = v38;
  v26[104] = v33;
  LODWORD(v24) = *v60;
  *(v26 + 27) = *&v60[3];
  *(v26 + 105) = v24;
  *(v26 + 14) = v37;
  v26[120] = v34;
  LODWORD(v24) = *v59;
  *(v26 + 31) = *&v59[3];
  *(v26 + 121) = v24;
  *(v26 + 16) = v36;
  v26[136] = v18;
  v47.receiver = v23;
  v47.super_class = v22;
  v27 = objc_msgSendSuper2(&v47, sel_init);
  [v35[4] submitLogEvent_];

  return (*(v45 + 8))(v3, v46);
}

void sub_22B0AD950(void *a1)
{
  type metadata accessor for ProcessLaunchLogEvent();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    sub_22B0AD9D4(v3);
  }
}

void sub_22B0AD9D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v3 - 8);
  v149 = &v140 - v4;
  v5 = sub_22B0DF0E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D85000];
  v10 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  os_unfair_lock_lock(v10 + 22);
  v11 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(1, 0x736568636E75616CLL, 0xE800000000000000, v8);

  v148 = v6;
  v14 = *(v6 + 8);
  v12 = v6 + 8;
  v13 = v14;
  v14(v8, v5);
  os_unfair_lock_unlock(v10 + 22);
  if (*(a1 + OBJC_IVAR____TtC14HomeKitMetrics21ProcessLaunchLogEvent_isFirstLaunchAfterBoot) == 1)
  {
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v15 = sub_22B0DF1B0();
    __swift_project_value_buffer(v15, qword_27D8B91F8);
    v16 = sub_22B0DF190();
    v17 = sub_22B0DF6A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B074000, v16, v17, "Last exit context: first launch after reboot", v18, 2u);
      MEMORY[0x23188A520](v18, -1, -1);
    }

    LOBYTE(v169[0]) = 2;
LABEL_19:
    LOBYTE(v166) = 1;
    sub_22B0AEF84(v169, 0x100000000, 0, 1, 0, 0);
    return;
  }

  (*(v1 + *((*v9 & *v1) + 0x80)))(&v166);
  if (!v167)
  {
    sub_22B07D02C(&v166, &qword_27D8B5EB8, &qword_22B0E5188);
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v26 = sub_22B0DF1B0();
    __swift_project_value_buffer(v26, qword_27D8B91F8);
    v27 = sub_22B0DF190();
    v28 = sub_22B0DF6A0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B074000, v27, v28, "Last exit context: exit context is null, skipping", v29, 2u);
      MEMORY[0x23188A520](v29, -1, -1);
    }

    LOBYTE(v169[0]) = 0;
    goto LABEL_19;
  }

  v147 = v13;
  sub_22B0781A8(&v166, v169);
  v19 = v170;
  v20 = v171;
  __swift_project_boxed_opaque_existential_1(v169, v170);
  if ((*(v20 + 24))(v19, v20) == 1)
  {
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v21 = sub_22B0DF1B0();
    __swift_project_value_buffer(v21, qword_27D8B91F8);
    v22 = sub_22B0DF190();
    v23 = sub_22B0DF6A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B074000, v22, v23, "Last exit context: voluntary exit", v24, 2u);
      MEMORY[0x23188A520](v24, -1, -1);
    }

    os_unfair_lock_lock(v10 + 22);
    v25 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x7261746E756C6F76, 0xED00007469784579, v8);

    v147(v8, v5);
    os_unfair_lock_unlock(v10 + 22);
    LOBYTE(v166) = 3;
    LOBYTE(v163) = 1;
LABEL_29:
    sub_22B0AEF84(&v166, 0x100000000, 0, 1, 0, 0);
LABEL_73:
    __swift_destroy_boxed_opaque_existential_0(v169);
    return;
  }

  v146 = v12;
  v142 = v8;
  v143 = v5;
  v141 = v10;
  v144 = v1;
  v31 = v170;
  v30 = v171;
  __swift_project_boxed_opaque_existential_1(v169, v170);
  v32 = *(v30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_22B0DF780();
  v145 = &v140;
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v140 - v36;
  v32(v31, v30);
  v38 = *(AssociatedTypeWitness - 8);
  if ((*(v38 + 48))(v37, 1, AssociatedTypeWitness) == 1)
  {
    (*(v35 + 8))(v37, v34);
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v39 = sub_22B0DF1B0();
    __swift_project_value_buffer(v39, qword_27D8B91F8);
    sub_22B07D124(v169, &v166);
    v40 = sub_22B0DF190();
    v41 = sub_22B0DF6A0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      v43 = v167;
      v44 = v168;
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      v45 = (*(v44 + 24))(v43, v44);
      __swift_destroy_boxed_opaque_existential_0(&v166);
      *(v42 + 4) = v45;
      _os_log_impl(&dword_22B074000, v40, v41, "Last exit context: exit status is null for type %ld, skipping", v42, 0xCu);
      MEMORY[0x23188A520](v42, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v166);
    }

    LOBYTE(v166) = 0;
    LOBYTE(v163) = 1;
    goto LABEL_29;
  }

  v46 = 0x676F646863746157;
  v164 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v165 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
  (*(v38 + 32))(boxed_opaque_existential_1, v37, AssociatedTypeWitness);
  sub_22B0781A8(&v163, &v166);
  v49 = v167;
  v50 = v168;
  __swift_project_boxed_opaque_existential_1(&v166, v167);
  if ((*(AssociatedConformanceWitness + 8))(v49, v50) == 20)
  {
    v51 = 0xE800000000000000;
    v52 = v142;
  }

  else
  {
    v53 = v167;
    v54 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    v55 = (*(v54 + 32))(v53, v54);
    v52 = v142;
    if (v55)
    {
      v46 = 0x6D617374654ALL;
      v51 = 0xE600000000000000;
    }

    else
    {
      v56 = v167;
      v57 = v168;
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      if ((*(v57 + 48))(v56, v57))
      {
        v46 = 0x6873617243;
        v51 = 0xE500000000000000;
      }

      else
      {
        v58 = v167;
        v59 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        if ((*(v59 + 40))(v58, v59))
        {
          v51 = 0xE600000000000000;
          v46 = 0x6C616E676953;
        }

        else
        {
          v60 = v167;
          v61 = v168;
          __swift_project_boxed_opaque_existential_1(&v166, v167);
          if ((*(v61 + 56))(v60, v61))
          {
            v51 = 0xEF6572756C696146;
            v46 = 0x79616C5072696146;
          }

          else
          {
            v62 = v167;
            v63 = v168;
            __swift_project_boxed_opaque_existential_1(&v166, v167);
            v64 = (*(v63 + 24))(v62, v63);
            if (v64)
            {
              v46 = 0x726568744FLL;
            }

            else
            {
              v46 = 0x64696C61766E49;
            }

            if (v64)
            {
              v51 = 0xE500000000000000;
            }

            else
            {
              v51 = 0xE700000000000000;
            }
          }
        }
      }
    }
  }

  if (qword_27D8B53C0 != -1)
  {
    swift_once();
  }

  v65 = sub_22B0DF1B0();
  __swift_project_value_buffer(v65, qword_27D8B91F8);
  sub_22B07D124(v169, &v163);
  sub_22B07D124(v169, v160);
  sub_22B07D124(&v166, v157);
  sub_22B07D124(&v166, v154);
  sub_22B07D124(&v166, v151);

  v66 = sub_22B0DF190();
  v67 = sub_22B0DF6A0();

  if (os_log_type_enabled(v66, v67))
  {
    LODWORD(v145) = v67;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v150[0] = v69;
    *v68 = 134219266;
    v70 = v164;
    v71 = v165;
    __swift_project_boxed_opaque_existential_1(&v163, v164);
    v72 = (*(v71 + 24))(v70, v71);
    __swift_destroy_boxed_opaque_existential_0(&v163);
    *(v68 + 4) = v72;
    *(v68 + 12) = 2082;
    v73 = v161;
    v74 = v162;
    __swift_project_boxed_opaque_existential_1(v160, v161);
    v75 = *(v74 + 40);
    v76 = v74;
    v77 = v149;
    v75(v73, v76);
    v78 = v143;
    if ((*(v148 + 48))(v77, 1, v143) == 1)
    {
      sub_22B07D02C(v77, &unk_27D8B5670, &unk_22B0E32C0);
      v79 = 0xE400000000000000;
      v80 = 1819047278;
    }

    else
    {
      v80 = sub_22B0DEFA0();
      v79 = v81;
      v147(v77, v78);
    }

    __swift_destroy_boxed_opaque_existential_0(v160);
    v82 = sub_22B07B428(v80, v79, v150);

    *(v68 + 14) = v82;
    *(v68 + 22) = 1024;
    v83 = v158;
    v84 = v159;
    __swift_project_boxed_opaque_existential_1(v157, v158);
    v85 = (*(v84 + 8))(v83, v84);
    __swift_destroy_boxed_opaque_existential_0(v157);
    *(v68 + 24) = v85;
    *(v68 + 28) = 2048;
    v86 = v155;
    v87 = v156;
    __swift_project_boxed_opaque_existential_1(v154, v155);
    v88 = (*(v87 + 16))(v86, v87);
    __swift_destroy_boxed_opaque_existential_0(v154);
    *(v68 + 30) = v88;
    *(v68 + 38) = 2080;
    v89 = sub_22B07B428(v46, v51, v150);

    *(v68 + 40) = v89;
    *(v68 + 48) = 2080;
    v90 = v152;
    v91 = v153;
    __swift_project_boxed_opaque_existential_1(v151, v152);
    v92 = (*(v91 + 64))(v90, v91);
    swift_getErrorValue();
    v93 = sub_22B0DFCE0();
    v95 = v94;

    __swift_destroy_boxed_opaque_existential_0(v151);
    v96 = sub_22B07B428(v93, v95, v150);

    *(v68 + 50) = v96;
    _os_log_impl(&dword_22B074000, v66, v145, "    Last exit context:     type = %ld,     timestamp = %{public}s,    domain = %u,     code = %llu,     flag = %s,     error = %s)", v68, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x23188A520](v69, -1, -1);
    MEMORY[0x23188A520](v68, -1, -1);

    v52 = v142;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v154);
    __swift_destroy_boxed_opaque_existential_0(v157);
    __swift_destroy_boxed_opaque_existential_0(&v163);

    __swift_destroy_boxed_opaque_existential_0(v160);
    __swift_destroy_boxed_opaque_existential_0(v151);
  }

  v97 = v167;
  v98 = v168;
  __swift_project_boxed_opaque_existential_1(&v166, v167);
  v99 = (*(v98 + 8))(v97, v98);
  v100 = v141;
  v101 = v143;
  if (v99 == 20)
  {
    os_unfair_lock_lock(v141 + 22);
    v102 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x676F646863746177, 0xE800000000000000, v52);
    v103 = 4;
    goto LABEL_54;
  }

  v127 = v167;
  v128 = v168;
  __swift_project_boxed_opaque_existential_1(&v166, v167);
  if (((*(v128 + 32))(v127, v128) & 1) == 0)
  {
    v134 = v167;
    v135 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    if (((*(v135 + 48))(v134, v135) & 1) == 0)
    {
      v103 = 1;
      goto LABEL_55;
    }

    os_unfair_lock_lock(v100 + 22);
    v136 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x6873617263, 0xE500000000000000, v52);
    v103 = 9;
LABEL_54:

    v147(v52, v101);
    os_unfair_lock_unlock(v100 + 22);
LABEL_55:
    os_unfair_lock_lock(v100 + 22);
    v104 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x6C616D726F6E6261, 0xEC00000074697845, v52);
    goto LABEL_56;
  }

  os_unfair_lock_lock(v100 + 22);
  v129 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(1, 0x6D617374656ALL, 0xE600000000000000, v52);

  v147(v52, v101);
  os_unfair_lock_unlock(v100 + 22);
  v130 = v167;
  v131 = v168;
  __swift_project_boxed_opaque_existential_1(&v166, v167);
  v132 = (*(v131 + 16))(v130, v131);
  if (!(v132 >> 31))
  {
    if (v132 > 8)
    {
      if (v132 == 9 || v132 == 17)
      {
        os_unfair_lock_lock(v100 + 22);
        v137 = [*(sub_22B097390() + 24) currentDatePartition];
        sub_22B0DF0B0();

        sub_22B09A03C(1, 0x74697845656C6469, 0xE800000000000000, v52);
        v103 = 7;
LABEL_56:

        v147(v52, v101);
        os_unfair_lock_unlock(v100 + 22);
        v105 = *&v100[12]._os_unfair_lock_opaque;
        v106 = *&v100[14]._os_unfair_lock_opaque;
        __swift_project_boxed_opaque_existential_1(&v100[6]._os_unfair_lock_opaque, v105);
        (*(v106 + 32))(sub_22B09159C, v100, MEMORY[0x277D84F78] + 8, v105, v106);
        LOBYTE(v157[0]) = v103;
        v107 = v167;
        v108 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        v109 = (*(v108 + 8))(v107, v108);
        v110 = v167;
        v111 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        v112 = (*(v111 + 16))(v110, v111);
        v113 = v167;
        v114 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        v115 = (*(v114 + 64))(v113, v114);
        v116 = sub_22B0DEE70();

        v117 = [v116 userInfo];
        v118 = sub_22B0DF240();

        v119 = sub_22B0DF330();
        if (*(v118 + 16))
        {
          v121 = sub_22B0768A8(v119, v120);
          v123 = v122;

          if (v123)
          {
            sub_22B07BB6C(*(v118 + 56) + 32 * v121, &v163);

            v124 = swift_dynamicCast();
            if (v124)
            {
              v125 = v160[0];
            }

            else
            {
              v125 = 0;
            }

            if (v124)
            {
              v126 = v160[1];
            }

            else
            {
              v126 = 0;
            }

            goto LABEL_72;
          }
        }

        else
        {
        }

        v125 = 0;
        v126 = 0;
LABEL_72:
        LOBYTE(v163) = 0;
        sub_22B0AEF84(v157, v109, v112, 0, v125, v126);

        __swift_destroy_boxed_opaque_existential_0(&v166);
        goto LABEL_73;
      }
    }

    else
    {
      if (v132 == 2)
      {
        os_unfair_lock_lock(v100 + 22);
        v139 = [*(sub_22B097390() + 24) currentDatePartition];
        sub_22B0DF0B0();

        sub_22B09A03C(1, 0x6574617768676968, 0xE900000000000072, v52);
        v103 = 5;
        goto LABEL_54;
      }

      if (v132 == 7)
      {
        os_unfair_lock_lock(v100 + 22);
        v133 = [*(sub_22B097390() + 24) currentDatePartition];
        sub_22B0DF0B0();

        sub_22B09A03C(1, 0x4C737365636F7270, 0xEC00000074696D69, v52);
        v103 = 6;
        goto LABEL_54;
      }
    }

    os_unfair_lock_lock(v100 + 22);
    v138 = [*(sub_22B097390() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09A03C(1, 0x74654A726568746FLL, 0xEB000000006D6173, v52);
    v103 = 8;
    goto LABEL_54;
  }

  __break(1u);
}

void sub_22B0AEF1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22B0AD950(v4);
}

void sub_22B0AEF84(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = v6 + *((*MEMORY[0x277D85000] & *v6) + 0x70);
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = type metadata accessor for ProcessExitInfoLogEvent();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions] = 0;
  v24 = v13;
  v25 = v12;

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E74A0);
  v16 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName];
  *v16 = v13;
  v16[1] = v12;
  v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason] = v10;
  v17 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain];
  *v17 = a2;
  v17[4] = BYTE4(a2) & 1;
  v18 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode];
  *v18 = a3;
  v18[8] = a4 & 1;
  v19 = &v15[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason];
  *v19 = a5;
  v19[1] = a6;
  v23.receiver = v15;
  v23.super_class = v14;

  v20 = objc_msgSendSuper2(&v23, sel_init);
  [*(v11 + 4) submitLogEvent_];
}

uint64_t sub_22B0AF17C(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v6[0] = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v6[1] = v3;
  v4 = type metadata accessor for BaseAnalyzerDataSource(0, v6);
  (*(*(v4 - 8) + 8))(&a1[v2], v4);
}

id sub_22B0AF2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = *v3;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v10 = *((*MEMORY[0x277D85000] & v7) + 0x58);
  v25 = *((*MEMORY[0x277D85000] & v7) + 0x60);
  v11 = *((*MEMORY[0x277D85000] & v7) + 0x68);
  v29[0] = *((*MEMORY[0x277D85000] & v7) + 0x50);
  v26 = v29[0];
  v29[1] = v10;
  v29[2] = v25;
  v29[3] = v11;
  v12 = type metadata accessor for BaseAnalyzerDataSource(0, v29);
  (*(*(v12 - 8) + 16))(&v4[v9], a1, v12);
  type metadata accessor for NamedGroupSpecifier();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000011;
  *(v13 + 24) = 0x800000022B0E74C0;
  v14 = sub_22B08C5E8(v13);

  *&v4[*((*v8 & *v4) + 0x78)] = v14;
  v15 = &v4[*((*v8 & *v4) + 0x80)];
  *v15 = a2;
  *(v15 + 1) = a3;
  v28.receiver = v4;
  v28.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v28, sel_init);
  v17 = *(a1 + 40);
  type metadata accessor for ProcessLaunchLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v16;
  [v17 addObserver:v19 forEventClass:ObjCClassFromMetadata];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v26;
  v21[3] = v10;
  v21[4] = v25;
  v21[5] = v11;
  v21[6] = v20;
  v22 = *(v11 + 8);

  v22(0x4C737365636F7250, 0xED000068636E7561, 0x4C737365636F7250, 0xED000068636E7561, &unk_22B0E5198, v21, v10, v11);

  return v19;
}

uint64_t sub_22B0AF608(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A5698;

  return sub_22B0AD218(a1, v4);
}

unint64_t sub_22B0AF6CC()
{
  result = qword_27D8B5EC0;
  if (!qword_27D8B5EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5EC0);
  }

  return result;
}

id sub_22B0AF748(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B0DF300();
  v4 = [v2 initWithEntityName_];

  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B0E4000;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22B0AFDD8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  v8 = sub_22B0DF660();
  [v4 setPredicate_];

  return v4;
}

id sub_22B0AF880(uint64_t a1)
{
  type metadata accessor for ManagedNamedGroup();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v3 = sub_22B0DF300();
  [v2 setName_];

  return v2;
}

id sub_22B0AF8F0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B0DF300();
  v4 = [v2 initWithEntityName_];

  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B0E2760;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22B0AFDD8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  v8 = sub_22B0DF120();
  *(v5 + 96) = sub_22B07BA9C(0, &qword_27D8B5ED0, 0x277CCAD78);
  *(v5 + 104) = sub_22B0AFE2C();
  *(v5 + 72) = v8;
  v9 = sub_22B0DF660();
  [v4 setPredicate_];

  return v4;
}

id sub_22B0AFA68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ManagedHomeGroup();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v4 = sub_22B0DF300();
  [v3 setName_];

  v5 = sub_22B0DF120();
  [v3 setHomeUUID_];

  return v3;
}

id sub_22B0AFB30(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22B0DF300();
  v4 = [v2 initWithEntityName_];

  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B0E2C10;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22B0AFDD8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  v8 = sub_22B0DF120();
  v9 = sub_22B07BA9C(0, &qword_27D8B5ED0, 0x277CCAD78);
  *(v5 + 96) = v9;
  v10 = sub_22B0AFE2C();
  *(v5 + 104) = v10;
  *(v5 + 72) = v8;
  v11 = sub_22B0DF120();
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v11;
  v12 = sub_22B0DF660();
  [v4 setPredicate_];

  return v4;
}

id sub_22B0AFCD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ManagedAccessoryGroup();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v4 = sub_22B0DF300();
  [v3 setName_];

  v5 = v3;
  v6 = sub_22B0DF120();
  [v5 setHomeUUID_];

  v7 = sub_22B0DF120();
  [v5 setAccessoryUUID_];

  return v5;
}

unint64_t sub_22B0AFDD8()
{
  result = qword_2813E99C0;
  if (!qword_2813E99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E99C0);
  }

  return result;
}

unint64_t sub_22B0AFE2C()
{
  result = qword_27D8B5ED8;
  if (!qword_27D8B5ED8)
  {
    sub_22B07BA9C(255, &qword_27D8B5ED0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5ED8);
  }

  return result;
}

uint64_t CoalescingRepeatingSchedulerProvider.makeScheduler(priority:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_22B0B5FC8(a1, a2, a3, a4, v4, ObjectType);
}

char *CoalescingRepeatingScheduler.__allocating_init(clock:priority:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_allocObject();
  v12 = sub_22B0B6610(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v12;
}

uint64_t sub_22B0AFFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v35 = a2;
  v36 = a5;
  v7 = sub_22B0DF780();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v15 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v32 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  v20 = *(v8 + 16);
  v20(v14, a1, v7);
  v34 = v15;
  v21 = *(v15 + 48);
  if (v21(v14, 1, a3) == 1)
  {
    (*(v8 + 8))(v14, v7);
    return (v20)(v36, v35, v7);
  }

  v31 = *(v34 + 32);
  v31(v19, v14, a3);
  v20(v11, v35, v7);
  if (v21(v11, 1, a3) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v23 = v36;
    v24 = v34;
    v25 = v31;
LABEL_8:
    v29 = v23;
    v30 = v19;
    goto LABEL_9;
  }

  v25 = v31;
  v26 = v32;
  v31(v32, v11, a3);
  v27 = sub_22B0DF2C0();
  v24 = v34;
  v28 = *(v34 + 8);
  v23 = v36;
  if ((v27 & 1) == 0)
  {
    v28(v26, a3);
    goto LABEL_8;
  }

  v28(v19, a3);
  v29 = v23;
  v30 = v26;
LABEL_9:
  v25(v29, v30, a3);
  return (*(v24 + 56))(v23, 0, 1, a3);
}

BOOL sub_22B0B02E0()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_22B0DF780();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 136);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  v8 = (*(*(AssociatedTypeWitness - 8) + 48))(v6, 1, AssociatedTypeWitness) == 1;
  (*(v4 + 8))(v6, v3);
  return v8;
}

char *sub_22B0B0508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*v8 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 56);
  v16(&v8[v14], 1, 1, AssociatedTypeWitness);
  v16(&v8[*(*v8 + 136)], 1, 1, AssociatedTypeWitness);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  *(v8 + 6) = a7;
  *(v8 + 7) = a8;
  *(v8 + 8) = a5;
  *(v8 + 9) = a6;
  return v8;
}

void sub_22B0B0648(uint64_t a2@<X8>)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_22B0DF780();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - v7;
  swift_getAssociatedConformanceWitness();
  sub_22B0DF9D0();
  v9 = *(v2 + 8);
  v10 = *(v3 + 9);
  sub_22B0DFDE0();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v17 = v9;
  *(&v17 + 1) = v10;
  if (!__OFADD__(v11, 1))
  {
    sub_22B0DFA00();
    v17 = v16;
    sub_22B0DF9C0();
    v12 = *(AssociatedTypeWitness - 8);
    (*(v12 + 16))(v8, a2, AssociatedTypeWitness);
    (*(v12 + 56))(v8, 0, 1, AssociatedTypeWitness);
    v13 = *(*v3 + 136);
    swift_beginAccess();
    (*(v6 + 40))(&v3[v13], v8, v15);
    swift_endAccess();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22B0B0900(uint64_t a1)
{
  v15 = a1;
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_22B0DF780();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  v12 = *(v2 + 136);
  swift_beginAccess();
  (*(v5 + 16))(v8, &v1[v12], v4);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v13 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v8, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v13 = sub_22B0DF2E0();
    (*(v9 + 8))(v11, AssociatedTypeWitness);
  }

  return v13 & 1;
}

uint64_t sub_22B0B0B80(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_22B0DF780();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(&v14 - v6, a1, AssociatedTypeWitness);
  v9 = *(v8 + 56);
  v9(v7, 0, 1, AssociatedTypeWitness);
  v10 = *(*v1 + 128);
  swift_beginAccess();
  v11 = *(v5 + 40);
  v11(v1 + v10, v7, v4);
  swift_endAccess();
  v9(v7, 1, 1, AssociatedTypeWitness);
  v12 = *(*v1 + 136);
  swift_beginAccess();
  v11(v1 + v12, v7, v4);
  return swift_endAccess();
}

char *sub_22B0B0DA0()
{

  v1 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  v2 = sub_22B0DF780();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 136), v2);
  return v0;
}

uint64_t sub_22B0B0EA8()
{
  v0 = sub_22B0B0DA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0B0EFC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = qword_2813E9E80;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t sub_22B0B0F8C()
{
  v1 = qword_2813E9E80;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22B0B1034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock(255, *(a1 + 16), *(a1 + 24), a4);
  sub_22B0DF550();

  swift_getWitnessTable();
  v4 = sub_22B0DF450();

  return v4 & 1;
}

uint64_t sub_22B0B10E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  *a3 = 1;
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock(0, a1, a2, a4);
  *(a3 + 8) = sub_22B0DF210();
  *(a3 + 16) = 0;
  v8 = type metadata accessor for CoalescingRepeatingScheduler.State(0, a1, a2, v7);
  v9 = *(v8 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a3 + v9, 1, 1, AssociatedTypeWitness);
  v11 = *(v8 + 48);
  type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter(0, a1, a2, v12);
  result = sub_22B0DF210();
  *(a3 + v11) = result;
  return result;
}

char *CoalescingRepeatingScheduler.init(clock:priority:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = sub_22B0B6610(a1, a2, a3, a4, a5);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v8;
}

uint64_t CoalescingRepeatingScheduler.scheduleBlock(name:periodicity:publicSafeName:block:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = *(*v9 + 80);
  v18 = *(*v9 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock(0, v17, v18, a4);
  swift_allocObject();
  v19 = sub_22B0B0508(a1, a2, a5, a6, a3, a4, a7, a8);
  v20 = (v9 + *(*v9 + 136));

  os_unfair_lock_lock(v20);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, v17, v18, v21);
  v22 = sub_22B0DF170();
  sub_22B0B13E0(v20 + *(v22 + 28), a1, a2, v19);
  j__os_unfair_lock_unlock(v20);
  sub_22B0B1598(v19);
}

void sub_22B0B13E0(_BYTE *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (*a1 == 1)
  {
    v11 = a4;
    sub_22B0DF550();

    sub_22B0DF520();
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v6 = sub_22B0DF1B0();
    __swift_project_value_buffer(v6, qword_2813EBE78);

    v7 = sub_22B0DF190();
    v8 = sub_22B0DF690();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_22B07B428(a2, a3, &v11);
      _os_log_impl(&dword_22B074000, v7, v8, "Trying to schedule block %s while the scheduler is not running. Ignoring.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23188A520](v10, -1, -1);
      MEMORY[0x23188A520](v9, -1, -1);
    }
  }
}

void sub_22B0B1598(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 136));
  os_unfair_lock_lock(v4);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, *(v3 + 80), *(v3 + 88), v5);
  v6 = sub_22B0DF170();
  sub_22B0B1880(v4 + *(v6 + 28), a1, v1);

  j__os_unfair_lock_unlock(v4);
}

uint64_t sub_22B0B1680()
{
  v0 = sub_22B0DFDD0();
  v1 = v0 / 3600;
  v2 = v0 % 60;
  v3 = v0 / 60 % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B0E2C10;
  v5 = MEMORY[0x277D84A28];
  v6 = MEMORY[0x277D84A90];
  *(v4 + 56) = MEMORY[0x277D84A28];
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v3;
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  *(v4 + 112) = v2;

  return sub_22B0DF340();
}

uint64_t sub_22B0B1778(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_22B0DF9D0();
  v1 = sub_22B0B1680();
  MEMORY[0x231889070](v1);

  return 11092;
}

uint64_t sub_22B0B1880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v7 = sub_22B0DF780();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v39 = &v33 - v16;
  sub_22B0DFCB0();
  v38 = a3;
  sub_22B0B0648(v17);
  v18 = v40;
  v45 = *(v12 + 8);
  v46 = v12 + 8;
  v45(v15, v40);
  v47 = v5;
  v48 = v4;
  v20 = type metadata accessor for CoalescingRepeatingScheduler.State(0, v5, v4, v19);
  v21 = v41;
  v22 = v42;
  v23 = *(v42 + 16);
  v24 = v43;
  v25 = v44;
  v34 = *(v20 + 44);
  v35 = v23;
  v23(v41, v44 + v34, v43);
  v26 = *(v12 + 48);
  v27 = v18;
  v36 = v12 + 48;
  LODWORD(v18) = v26(v21, 1, v18);
  v28 = v39;
  (*(v22 + 8))(v21, v24);
  if (v18 == 1)
  {
    goto LABEL_4;
  }

  v29 = v37;
  v35(v37, v25 + v34, v24);
  result = v26(v29, 1, v27);
  if (result != 1)
  {
    swift_getAssociatedConformanceWitness();
    v31 = sub_22B0DF2C0();
    v45(v29, v27);
    if ((v31 & 1) == 0)
    {
LABEL_5:
      sub_22B0B6458(v25, v47, v48, v32);
      return (v45)(v28, v27);
    }

LABEL_4:
    sub_22B0B1C44(v28, v25);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0B1C44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = v48 - v7;
  v8 = *(v5 + 88);
  v54 = *(v5 + 80);
  v55 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = v12;
  v52 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v48 - v13;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v15 = sub_22B0DF1B0();
  __swift_project_value_buffer(v15, qword_2813EBE78);
  v49 = *(v10 + 16);
  v50 = v10 + 16;
  v49(v14, a1, AssociatedTypeWitness);

  v16 = sub_22B0DF190();
  v17 = sub_22B0DF670();

  v18 = os_log_type_enabled(v16, v17);
  v56 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58 = v20;
    *v19 = 136446210;
    v21 = sub_22B0B1778(v14);
    v23 = v22;
    v24 = v14;
    v25 = AssociatedTypeWitness;
    (*(v10 + 8))(v24, AssociatedTypeWitness);
    v26 = sub_22B07B428(v21, v23, &v58);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_22B074000, v16, v17, "Scheduled next run for T+%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23188A520](v20, -1, -1);
    MEMORY[0x23188A520](v19, -1, -1);
  }

  else
  {

    v28 = v14;
    v25 = AssociatedTypeWitness;
    (*(v10 + 8))(v28, AssociatedTypeWitness);
  }

  v29 = v10;
  v30 = *(v57 + 16);
  if (v30)
  {
    sub_22B0DF5D0();
  }

  v31 = type metadata accessor for CoalescingRepeatingScheduler.State(0, v54, v55, v27);
  v48[1] = v30;
  v32 = *(v31 + 44);
  v33 = v25;
  v34 = sub_22B0DF780();
  v35 = v57;
  (*(*(v34 - 8) + 8))(v57 + v32, v34);
  v36 = v49;
  v49((v35 + v32), v56, v25);
  (*(v29 + 56))(v35 + v32, 0, 1, v25);
  v37 = *(*v3 + 104);
  v38 = sub_22B0DF5C0();
  v39 = *(v38 - 8);
  v40 = v53;
  (*(v39 + 16))(v53, &v3[v37], v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v52;
  v36(v52, v56, v33);
  v43 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  v45 = v55;
  *(v44 + 4) = v54;
  *(v44 + 5) = v45;
  *(v44 + 6) = v41;
  (*(v29 + 32))(&v44[v43], v42, v33);
  v46 = sub_22B0C8B9C(0, 0, v40, &unk_22B0E5490, v44);
  sub_22B07D02C(v40, &qword_27D8B5C38, &qword_22B0E5480);

  *(v35 + 16) = v46;
  return result;
}

uint64_t sub_22B0B2198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[21] = AssociatedTypeWitness;
  v7[22] = *(AssociatedTypeWitness - 8);
  v7[23] = swift_task_alloc();
  v7[24] = *(a6 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0B22D4, 0, 0);
}

uint64_t sub_22B0B22D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 152);
    (*(v5 + 16))(v3, Strong + *(*Strong + 96), v8);

    (*(v5 + 32))(v2, v3, v8);
    sub_22B0DFCB0();
    swift_getAssociatedConformanceWitness();
    sub_22B0DF9D0();
    (*(v7 + 8))(v4, v6);
    *(v0 + 120) = *(v0 + 104);
    sub_22B0DF9F0();
    *(v0 + 64) = *(v0 + 88);
    *(v0 + 80) = 0;
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_22B0B25DC;
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);

    return MEMORY[0x2822008C8](v12, v0 + 64, v10, v11);
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v13 = sub_22B0DF1B0();
    __swift_project_value_buffer(v13, qword_2813EBE78);
    v14 = sub_22B0DF190();
    v15 = sub_22B0DF670();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B074000, v14, v15, "Weak self is nil", v16, 2u);
      MEMORY[0x23188A520](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22B0B25DC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_22B0B2A20;
  }

  else
  {
    v2 = sub_22B0B26F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22B0B26F0()
{
  if (sub_22B0DF5E0())
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v1 = sub_22B0DF1B0();
    __swift_project_value_buffer(v1, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Task cancelled";
LABEL_15:
    _os_log_impl(&dword_22B074000, v2, v3, v5, v4, 2u);
    MEMORY[0x23188A520](v4, -1, -1);
LABEL_16:
    v16 = v0[26];
    v17 = v0[24];
    v18 = v0[19];

    (*(v17 + 8))(v16, v18);
LABEL_17:

    v19 = v0[1];

    v19();
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v15 = sub_22B0DF1B0();
    __swift_project_value_buffer(v15, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Weak self is nil";
    goto LABEL_15;
  }

  v7 = Strong;
  v8 = v0[28];
  v9 = v0[26];
  v11 = v0[19];
  v10 = v0[20];
  v12 = (Strong + *(*Strong + 136));
  os_unfair_lock_lock(v12);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, v11, v10, v13);
  v14 = sub_22B0DF170();
  sub_22B0B2BFC(v12 + *(v14 + 28), v9, v7);
  if (!v8)
  {
    v20 = v0[26];
    v21 = v0[24];
    v22 = v0[19];
    j__os_unfair_lock_unlock(v12);

    (*(v21 + 8))(v20, v22);
    goto LABEL_17;
  }

  j__os_unfair_lock_unlock(v12);
}

uint64_t sub_22B0B2A20()
{
  (*(v0[24] + 8))(v0[26], v0[19]);
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_22B0DF1B0();
  __swift_project_value_buffer(v2, qword_2813EBE78);
  v3 = v1;
  v4 = sub_22B0DF190();
  v5 = sub_22B0DF670();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B074000, v4, v5, "Task error, likely due to cancellation: %@", v8, 0xCu);
    sub_22B07D02C(v9, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v9, -1, -1);
    MEMORY[0x23188A520](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B0B2BFC(uint64_t a1, void *a2, uint64_t a3)
{
  v78 = a2;
  v4 = *(*a3 + 88);
  v5 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_22B0DF780();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v61 - v14;
  v75 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;

  *(a1 + 16) = 0;
  v22 = *(type metadata accessor for CoalescingRepeatingScheduler.State(0, v5, v4, v21) + 44);
  v67 = v8;
  v23 = *(v8 + 8);
  v72 = v8 + 8;
  v73 = v7;
  v24 = v7;
  v25 = v75;
  v66 = v23;
  v23((a1 + v22), v24);
  v26 = *(v25 + 56);
  v76 = a1;
  v63 = v26;
  v64 = (v25 + 56);
  v26((a1 + v22), 1, 1, AssociatedTypeWitness);
  v77 = v5;
  v78 = v4;
  sub_22B0DFCB0();
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v27 = sub_22B0DF1B0();
  __swift_project_value_buffer(v27, qword_2813EBE78);
  v28 = v71;
  (*(v25 + 16))(v71, v20, AssociatedTypeWitness);

  v29 = sub_22B0DF190();
  v30 = sub_22B0DF670();

  v31 = os_log_type_enabled(v29, v30);
  v70 = AssociatedTypeWitness;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79 = v61;
    *v32 = 136446210;
    v33 = sub_22B0B1778(v28);
    v34 = v28;
    v36 = v35;
    v71 = *(v25 + 8);
    (v71)(v34, AssociatedTypeWitness);
    v37 = sub_22B07B428(v33, v36, &v79);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_22B074000, v29, v30, "Running blocks at T+%{public}s", v32, 0xCu);
    v38 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x23188A520](v38, -1, -1);
    MEMORY[0x23188A520](v32, -1, -1);
  }

  else
  {

    v71 = *(v25 + 8);
    (v71)(v28, AssociatedTypeWitness);
  }

  v40 = *(v76 + 8);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock(0, v77, v78, v39);

  if (sub_22B0DF510())
  {
    v41 = 4;
    do
    {
      v42 = v41 - 4;
      v43 = sub_22B0DF4F0();
      sub_22B0DF4C0();
      if (v43)
      {
        v44 = *(v40 + 8 * v41);

        v45 = __OFADD__(v42, 1);
        v46 = v41 - 3;
        if (v45)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v44 = sub_22B0DF900();
        v45 = __OFADD__(v42, 1);
        v46 = v41 - 3;
        if (v45)
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      if (sub_22B0B0900(v20))
      {
        sub_22B0B331C(v44, v20, 0);
      }

      ++v41;
    }

    while (v46 != sub_22B0DF510());
  }

  v79 = v40;
  v47 = v65;
  v48 = v70;
  v49 = v63(v65, 1, 1, v70);
  v64 = &v61;
  MEMORY[0x28223BE20](v49);
  v50 = v78;
  *(&v61 - 2) = v77;
  *(&v61 - 1) = v50;
  sub_22B0DF550();

  swift_getWitnessTable();
  v51 = v74;
  v52 = v73;
  v53 = v69;
  sub_22B0DF440();
  v69 = v53;
  v54 = v66;
  v66(v47, v52);

  v55 = v68;
  (*(v67 + 16))(v68, v51, v52);
  v56 = v75;
  if ((*(v75 + 48))(v55, 1, v48) == 1)
  {
    v54(v55, v52);
    v58 = v71;
  }

  else
  {
    v59 = v62;
    (*(v56 + 32))(v62, v55, v48);
    sub_22B0B1C44(v59, v76);
    v52 = v73;
    v58 = v71;
    (v71)(v59, v48);
  }

  sub_22B0B6458(v76, v77, v78, v57);
  v54(v74, v52);
  return (v58)(v20, v48);
}

uint64_t sub_22B0B331C(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_22B0B3688(a1, a2, 0);
  sub_22B0B0B80(a2);
  v11 = *(*v3 + 104);
  v12 = sub_22B0DF5C0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, v4 + v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a3;
  *(v15 + 48) = v14;

  sub_22B0C8B9C(0, 0, v10, &unk_22B0E54B0, v15);

  return sub_22B07D02C(v10, &qword_27D8B5C38, &qword_22B0E5480);
}

uint64_t sub_22B0B34F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a5@<X8>)
{
  v16 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_22B0DF780();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *a2;
  v13 = *(*v12 + 136);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12 + v13, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22B0AFFB0(v16, v11, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), a5);
  return (*(v9 + 8))(v11, v8);
}

void sub_22B0B3688(char *a1, uint64_t a2, int a3)
{
  v55 = a3;
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_22B0DF780();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  v13 = *(*a1 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v9, &a1[v13], v5);
  v54 = (*(v10 + 48))(v9, 1, AssociatedTypeWitness);
  if (v54 == 1)
  {
    (*(v6 + 8))(v9, v5);
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v14 = sub_22B0DF1B0();
    __swift_project_value_buffer(v14, qword_2813EBE78);

    v15 = sub_22B0DF190();
    v16 = sub_22B0DF670();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v53;
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v57 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B07B428(*(a1 + 2), *(a1 + 3), &v57);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v55 & 1;
      _os_log_impl(&dword_22B074000, v15, v16, "Scheduled block %s, isDaily = %{BOOL}d, ran for the first time.", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188A520](v20, -1, -1);
      MEMORY[0x23188A520](v19, -1, -1);
    }
  }

  else
  {
    v51 = v10;
    (*(v10 + 32))(v12, v9, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_22B0DF9D0();
    v21 = v58;
    v22 = v12;
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v23 = sub_22B0DF1B0();
    __swift_project_value_buffer(v23, qword_2813EBE78);

    v24 = sub_22B0DF190();
    v25 = sub_22B0DF670();

    v26 = os_log_type_enabled(v24, v25);
    v18 = v53;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v52 = v21;
      v28 = v27;
      v29 = swift_slowAlloc();
      v57 = v29;
      *v28 = 136315650;
      *(v28 + 4) = sub_22B07B428(*(a1 + 2), *(a1 + 3), &v57);
      *(v28 + 12) = 1024;
      *(v28 + 14) = v55 & 1;
      *(v28 + 18) = 2080;
      v30 = sub_22B0B1680();
      v32 = sub_22B07B428(v30, v31, &v57);
      v50 = v22;
      v33 = v32;

      *(v28 + 20) = v33;
      _os_log_impl(&dword_22B074000, v24, v25, "Scheduled block %s, isDaily = %{BOOL}d, ran after %s, privacy: .public) after previous run.", v28, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x23188A520](v29, -1, -1);
      MEMORY[0x23188A520](v28, -1, -1);

      (*(v51 + 8))(v50, AssociatedTypeWitness);
    }

    else
    {

      (*(v51 + 8))(v12, AssociatedTypeWitness);
    }
  }

  v34 = (v18 + *(*v18 + 112));
  v36 = *v34;
  v35 = v34[1];
  v38 = *(a1 + 4);
  v37 = *(a1 + 5);
  v39 = type metadata accessor for BlockSchedulerLogEvent();
  v40 = objc_allocWithZone(v39);
  *&v40[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
  v57 = v36;
  v58 = v35;

  MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
  v41 = 0;
  v42 = v58;
  v43 = &v40[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
  *v43 = v57;
  v43[1] = v42;
  v44 = 0x6669636570736E55;
  if (v37)
  {
    v44 = v38;
  }

  v45 = 0xEB00000000646569;
  if (v37)
  {
    v45 = v37;
  }

  v46 = &v40[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
  *v46 = v44;
  v46[1] = v45;
  v47 = v54;
  if (v54 != 1)
  {
    v41 = sub_22B0DFDD0();
  }

  v48 = &v40[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
  *v48 = v41;
  v48[8] = v47 == 1;
  v40[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = v55 & 1;
  v56.receiver = v40;
  v56.super_class = v39;
  v49 = objc_msgSendSuper2(&v56, sel_init);
  [*(v18 + *(*v18 + 120)) submitLogEvent_];
}

uint64_t sub_22B0B3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  return MEMORY[0x2822009F8](sub_22B0B3D54, 0, 0);
}

uint64_t sub_22B0B3D54()
{
  v4 = (*(*(v0 + 40) + 48) + **(*(v0 + 40) + 48));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22B0B3E48;
  v2 = *(v0 + 64);

  return v4(v2);
}

uint64_t sub_22B0B3E48()
{

  return MEMORY[0x2822009F8](sub_22B0B3F44, 0, 0);
}

uint64_t sub_22B0B3F44()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22B0B1598(*(v0 + 40));
  }

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall CoalescingRepeatingScheduler.runBlock(named:isDebug:)(Swift::String named, Swift::Bool isDebug)
{
  v3 = isDebug;
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v6 = *v2;
  v7 = (v2 + *(*v2 + 136));
  os_unfair_lock_lock(v7);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, *(v6 + 80), *(v6 + 88), v8);
  v9 = sub_22B0DF170();
  sub_22B0B40CC(v7 + *(v9 + 28), countAndFlagsBits, object, v2, v3);

  j__os_unfair_lock_unlock(v7);
}

uint64_t sub_22B0B40CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v33 = a5;
  v8 = *(*a4 + 88);
  v9 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v30 - v11;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v12 = sub_22B0DF1B0();
  __swift_project_value_buffer(v12, qword_2813EBE78);

  v13 = sub_22B0DF190();
  v14 = sub_22B0DF670();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v9;
    v16 = v15;
    v17 = a1;
    v18 = swift_slowAlloc();
    v35 = v18;
    *v16 = 136315138;
    *(v16 + 4) = sub_22B07B428(a2, a3, &v35);
    _os_log_impl(&dword_22B074000, v13, v14, "Running block(s) named %s in debug mode...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v19 = v18;
    a1 = v17;
    MEMORY[0x23188A520](v19, -1, -1);
    v20 = v16;
    v9 = v30;
    MEMORY[0x23188A520](v20, -1, -1);
  }

  sub_22B0DFCB0();
  v21 = *(a1 + 8);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock(0, v9, v8, v22);

  if (sub_22B0DF510())
  {
    v23 = 4;
    do
    {
      v24 = v23 - 4;
      v25 = sub_22B0DF4F0();
      sub_22B0DF4C0();
      if (v25)
      {
        v26 = *(v21 + 8 * v23);

        v27 = v23 - 3;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v26 = sub_22B0DF900();
        v27 = v23 - 3;
        if (__OFADD__(v24, 1))
        {
LABEL_19:
          __break(1u);
          break;
        }
      }

      v28 = *(v26 + 16) == a2 && *(v26 + 24) == a3;
      if (v28 || (sub_22B0DFC60()) && !sub_22B0B02E0())
      {
        sub_22B0B331C(v26, v34, v33 & 1);
      }

      ++v23;
    }

    while (v27 != sub_22B0DF510());
  }

  return (*(v31 + 8))(v34, v32);
}

uint64_t CoalescingRepeatingScheduler.waitForBlocksToFinish(timeout:)(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22B0B4470, 0, 0);
}

uint64_t sub_22B0B4470()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[2] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22B0B457C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22B0B457C()
{

  return MEMORY[0x2822009F8](sub_22B0B4694, 0, 0);
}

uint64_t sub_22B0B4694()
{
  if (*(v0 + 16))
  {
    sub_22B0DF5D0();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B0B4724(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4)
{
  v8 = *a2;
  v9 = (a2 + *(*a2 + 136));
  os_unfair_lock_lock(v9);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, *(v8 + 80), *(v8 + 88), v10);
  v11 = sub_22B0DF170();
  sub_22B0B4828(v9 + *(v11 + 28), a2, a1, a3, a4);

  j__os_unfair_lock_unlock(v9);
}

uint64_t sub_22B0B4828(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, double a5)
{
  v58 = a3;
  v55 = a4;
  v59 = a2;
  v6 = a1;
  v62 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  v53 = *(v60 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v60);
  v52 = &v47 - v10;
  v11 = *(v7 + 88);
  v12 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v47 - v15;
  v16 = sub_22B0DF780();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v61 = v12;
  v23 = type metadata accessor for CoalescingRepeatingScheduler.State(0, v12, v11, v22);
  v24 = *(v17 + 16);
  v49 = *(v23 + 44);
  v50 = v24;
  v24(v21, v6 + v49, v16);
  v47 = v14;
  v48 = *(v14 + 48);
  LODWORD(v6) = v48(v21, 1, AssociatedTypeWitness);
  (*(v17 + 8))(v21, v16);
  v28 = v11;
  if (v6 != 1)
  {
    sub_22B0DFCB0();
    v29 = v56;
    v50(v56, v62 + v49, v16);
    result = v48(v29, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    swift_getAssociatedConformanceWitness();
    v32 = v56;
    v31 = v57;
    v33 = sub_22B0DF2D0();
    v34 = *(v47 + 8);
    v34(v31, AssociatedTypeWitness);
    v34(v32, AssociatedTypeWitness);
    if (v33)
    {
LABEL_5:
      type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter(0, v61, v28, v27);
      v57 = v28;
      v36 = v52;
      v35 = v53;
      v56 = *(v53 + 16);
      v37 = v58;
      (v56)(v52, v58, v60);
      v38 = sub_22B0B0EFC(v36);
      v63 = v38;
      sub_22B0DF550();

      sub_22B0DF520();
      v39 = sub_22B0DF5C0();
      v40 = v54;
      (*(*(v39 - 8) + 56))(v54, 1, 1, v39);
      v41 = v37;
      v42 = v60;
      (v56)(v36, v41, v60);
      v43 = (*(v35 + 80) + 72) & ~*(v35 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      v45 = v57;
      *(v44 + 32) = v61;
      *(v44 + 40) = v45;
      *(v44 + 48) = a5;
      *(v44 + 56) = v59;
      *(v44 + 64) = v38;
      (*(v35 + 32))(v44 + v43, v36, v42);

      v46 = sub_22B0B540C(0, 0, v40, &unk_22B0E54C0, v44);
      *v55 = v46;
    }
  }

  if (sub_22B0B1034(v23, v25, v26, v27))
  {
    goto LABEL_5;
  }

  return sub_22B0DF580();
}

uint64_t sub_22B0B4DF4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  *(v7 + 48) = *a5;
  v8 = sub_22B0DF9B0();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0B4EE4, 0, 0);
}

uint64_t sub_22B0B4EE4()
{
  v1 = sub_22B0DFDF0();
  v3 = v2;
  sub_22B0DFCD0();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_22B0B4FC0;

  return sub_22B0B5B10(v1, v3, 0, 0, 1);
}

uint64_t sub_22B0B4FC0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_22B0B5238;
  }

  else
  {
    v3 = sub_22B0B5128;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22B0B5128()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = (v0[3] + *(*v0[3] + 136));
  os_unfair_lock_lock(v5);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, *(v3 + 80), *(v3 + 88), v6);
  v7 = sub_22B0DF170();
  sub_22B0B52A0(v5 + *(v7 + 28), v4, v2, v8);
  j__os_unfair_lock_unlock(v5);
  if (!v1)
  {

    v9 = v0[1];

    v9();
  }
}

uint64_t sub_22B0B5238()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B0B52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  type metadata accessor for CoalescingRepeatingScheduler.State(0, v4, v5, a4);
  type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter(0, v4, v5, v6);
  v7 = sub_22B0DF510();
  sub_22B0DF550();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22B0DF650();
  result = sub_22B0DF510();
  if (result != v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
    return sub_22B0DF580();
  }

  return result;
}

uint64_t sub_22B0B540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B0B77A8(a3, v25 - v10);
  v12 = sub_22B0DF5C0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B07D02C(v11, &qword_27D8B5C38, &qword_22B0E5480);
  }

  else
  {
    sub_22B0DF5B0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B0DF570();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B0DF360() + 32;
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

      sub_22B07D02C(a3, &qword_27D8B5C38, &qword_22B0E5480);

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

  sub_22B07D02C(a3, &qword_27D8B5C38, &qword_22B0E5480);
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

Swift::Void __swiftcall CoalescingRepeatingScheduler.invalidate()()
{
  v1 = *v0;
  v2 = (v0 + *(*v0 + 136));
  os_unfair_lock_lock(v2);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, *(v1 + 80), *(v1 + 88), v3);
  v4 = v2 + *(sub_22B0DF170() + 28);
  *v4 = 0;
  if (*(v4 + 2))
  {
    sub_22B0DF5D0();
  }

  *(v4 + 2) = 0;

  j__os_unfair_lock_unlock(v2);
}

uint64_t *CoalescingRepeatingScheduler.deinit()
{
  v1 = v0;
  v2 = *v0;
  CoalescingRepeatingScheduler.invalidate()();
  v3 = *(*v0 + 96);
  v4 = *(v2 + 80);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(*v1 + 104);
  v6 = sub_22B0DF5C0();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  swift_unknownObjectRelease();
  v7 = *(*v1 + 128);
  v8 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v1 + v7, AssociatedTypeWitness);
  type metadata accessor for CoalescingRepeatingScheduler.State(255, v4, v8, v10);
  sub_22B0DF170();
  v11 = sub_22B0DF180();
  sub_22B0A67A4(v11);
  return v1;
}

uint64_t CoalescingRepeatingScheduler.__deallocating_deinit()
{
  CoalescingRepeatingScheduler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0B5A78(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B0A5698;

  return CoalescingRepeatingScheduler.waitForBlocksToFinish(timeout:)(a1);
}

uint64_t sub_22B0B5B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22B0DF990();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22B0B5C10, 0, 0);
}

uint64_t sub_22B0B5C10()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22B0DF9B0();
  v5 = sub_22B0B7998(&unk_2813E9930, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22B0DFCB0();
  sub_22B0B7998(&unk_2813E9940, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22B0DF9C0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22B0B5DA0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_22B0B5DA0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B0B5F5C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22B0B5F5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B0B5FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_22B0DF5C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B0DF9B0();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B0DF9A0();
  (*(v11 + 16))(v13, a1, v10);

  swift_unknownObjectRetain();
  return sub_22B0B6128(v16, v13, a2, a3, a4);
}

uint64_t sub_22B0B6128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  v13 = swift_allocObject();
  v14 = (v13 + *(*v13 + 136));
  *v12 = 1;
  v15 = MEMORY[0x277D84F90];
  *(v12 + 1) = MEMORY[0x277D84F90];
  *(v12 + 2) = 0;
  v16 = *(v10 + 52);
  v17 = sub_22B0DF990();
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  *&v12[*(v10 + 56)] = v15;
  *v14 = 0;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5F28, &unk_22B0E6120);
  bzero(v14 + v18, *(*(v19 - 8) + 64));
  sub_22B0B79E0(v12, v14 + v18);
  v20 = *(*v13 + 96);
  v21 = sub_22B0DF9B0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13 + v20, a1, v21);
  v23 = *(*v13 + 104);
  v24 = sub_22B0DF5C0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13 + v23, a2, v24);
  v26 = (v13 + *(*v13 + 112));
  *v26 = a3;
  v26[1] = a4;
  *(v13 + *(*v13 + 120)) = v29;
  sub_22B0B7998(&unk_2813E9930, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22B0DFCB0();
  (*(v25 + 8))(a2, v24);
  (*(v22 + 8))(a1, v21);
  return v13;
}

uint64_t sub_22B0B6458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CoalescingRepeatingScheduler.State(0, a2, a3, a4);
  type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter(255, a2, a3, v7);
  sub_22B0DF550();
  swift_getWitnessTable();
  result = sub_22B0DF640();
  if (result)
  {
    return result;
  }

  result = sub_22B0B1034(v6, v9, v10, v11);
  if (result)
  {
    return result;
  }

  if (!sub_22B0DF510())
  {
    goto LABEL_12;
  }

  v12 = 4;
  while (1)
  {
    v13 = v12 - 4;
    v14 = sub_22B0DF4F0();
    sub_22B0DF4C0();
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = v12 - 3;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
    sub_22B0DF580();

    ++v12;
    if (v15 == sub_22B0DF510())
    {
      goto LABEL_12;
    }
  }

  sub_22B0DF900();
  v15 = v12 - 3;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:

  return sub_22B0DF540();
}

char *sub_22B0B6610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v8 = *v5;
  v9 = v8[11];
  v10 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v29 - v12;
  v15 = type metadata accessor for CoalescingRepeatingScheduler.State(0, v10, v9, v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = &v6[v8[17]];
  sub_22B0B10E8(v10, v9, &v29 - v16, v19);
  *v18 = 0;
  v20 = *(sub_22B0DF170() + 28);
  v21 = sub_22B0DF180();
  bzero(&v18[v20], *(*(v21 - 8) + 64));
  sub_22B0CC750(v17, &v18[v20], v15);
  (*(*(v10 - 8) + 16))(&v6[*(*v6 + 96)], a1, v10);
  v22 = *(*v6 + 104);
  v23 = sub_22B0DF5C0();
  v24 = *(v23 - 8);
  v25 = v30;
  (*(v24 + 16))(&v6[v22], v30, v23);
  v26 = &v6[*(*v6 + 112)];
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  *&v6[*(*v6 + 120)] = v33;
  sub_22B0DFCB0();
  (*(v24 + 8))(v25, v23);
  (*(v11 + 32))(&v6[*(*v6 + 128)], v13, AssociatedTypeWitness);
  return v6;
}

uint64_t dispatch thunk of RepeatingScheduler.waitForBlocksToFinish(timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  v10 = (*(a2 + 24) + **(a2 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B0A5698;
  v8.n128_f64[0] = a3;

  return v10(a1, a2, v8);
}

uint64_t sub_22B0B6AD4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    result = sub_22B0DF5C0();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 88);
      result = swift_getAssociatedTypeWitness();
      if (v8 <= 0x3F)
      {
        type metadata accessor for CoalescingRepeatingScheduler.State(255, v4, v6, v7);
        result = sub_22B0DF170();
        if (v9 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22B0B6CAC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_22B0DF780();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22B0B6D88(uint64_t a1)
{
  sub_22B0B6E30();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_22B0B6E30()
{
  if (!qword_2813E99B8)
  {
    v0 = sub_22B0DF590();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E99B8);
    }
  }
}

void sub_22B0B6E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for CoalescingRepeatingScheduler.ScheduledBlock(255, v4, v5, a4);
  sub_22B0DF550();
  if (v6 <= 0x3F)
  {
    sub_22B0B73F0(319);
    if (v7 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_22B0DF780();
      if (v9 <= 0x3F)
      {
        type metadata accessor for CoalescingRepeatingScheduler.BlockWaiter(255, v4, v5, v8);
        sub_22B0DF550();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22B0B6FB8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  v12 = 7;
  if (!v7)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_33;
  }

  v13 = ((v12 + v11 + ((v10 + 24) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v9 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_33:
    v21 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v8 & 0x80000000) != 0)
    {
      v23 = (*(v6 + 48))((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10);
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = *(v21 + 8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v9 + (v14 | v20) + 1;
}

void sub_22B0B7168(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((v13 + ((v11 + 24) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 < a3)
  {
    if (((v13 + ((v11 + 24) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((v13 + ((v11 + 24) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v12;
    }

    else
    {
      v17 = 1;
    }

    if (((v13 + ((v11 + 24) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v12 + a2;
      bzero(a1, ((v13 + ((v11 + 24) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v18;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + v14) = v17;
      }

      else
      {
        *(a1 + v14) = v17;
      }
    }

    else if (v7)
    {
      *(a1 + v14) = v17;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v14) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  *(a1 + v14) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v10 & 0x80000000) != 0)
  {
    v21 = ((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
    if (v10 >= a2)
    {
      v25 = *(v8 + 56);

      v25((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, a2 + 1);
    }

    else
    {
      if (v13 <= 3)
      {
        v22 = ~(-1 << (8 * v13));
      }

      else
      {
        v22 = -1;
      }

      if (v13)
      {
        v23 = v22 & (~v10 + a2);
        if (v13 <= 3)
        {
          v24 = v13;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v13);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *(v19 + 8) = v20;
  }
}

void sub_22B0B73F0(uint64_t a1)
{
  if (!qword_2813E99B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B5EE8, qword_22B0E5460);
    v1 = sub_22B0DF780();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E99B0);
    }
  }
}

uint64_t sub_22B0B7454(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B0A78E4;

  return sub_22B0B2198(a1, v8, v9, v10, v1 + v7, v5, v4);
}

uint64_t sub_22B0B7594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B0A78E4;

  return sub_22B0B3D30(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B0B7690(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B0A78E4;

  return sub_22B0B4DF4(v8, a1, v6, v7, v9, v10, v1 + v5);
}

uint64_t sub_22B0B77A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0B7818(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A78E4;

  return sub_22B0CC964(a1, v4);
}

uint64_t sub_22B0B78D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A5698;

  return sub_22B0CC964(a1, v4);
}

uint64_t sub_22B0B7998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B0B79E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BaseAnalyzerDataSource.coreAnalyticsEventPrefix.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BaseAnalyzerDataSource.init(coreAnalyticsEventPrefix:dateProvider:uptimeProvider:logEventDispatcher:repeatingScheduler:dailyScheduler:countersManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a5;
  v19[0] = a10;
  v19[1] = a11;
  v19[2] = a12;
  v19[3] = a13;
  v17 = type metadata accessor for BaseAnalyzerDataSource(0, v19);
  (*(*(a10 - 8) + 32))(&a9[v17[17]], a6, a10);
  (*(*(a11 - 8) + 32))(&a9[v17[18]], a7, a11);
  *&a9[v17[19]] = a8;
  return swift_unknownObjectRetain();
}

uint64_t sub_22B0B7C3C(uint64_t a1)
{
  result = sub_22B0B8230();
  if (v2 <= 0x3F)
  {
    result = sub_22B0B827C(319, &qword_27D8B5FB8, &protocolRef_HMMUptimeProvider);
    if (v3 <= 0x3F)
    {
      result = sub_22B0B827C(319, &qword_27D8B5FC0, &protocolRef_HMMLogEventSubmitting);
      if (v4 <= 0x3F)
      {
        result = sub_22B0B827C(319, &qword_27D8B5FC8, &protocolRef_HMMLogEventDispatching);
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for CountersManager();
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22B0B7D80(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 48) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v25 = (((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(a1 + 1);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v22) + 1;
}

void *sub_22B0B7F88(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v23 = (((((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          result[1] = a2 - 1;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 48) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

unint64_t sub_22B0B8230()
{
  result = qword_27D8B5FB0;
  if (!qword_27D8B5FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5FB0);
  }

  return result;
}

uint64_t sub_22B0B827C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id ProcessExitInfoLogEvent.__allocating_init(coreAnalyticsEventPrefix:launchReason:exitStatusDomain:exitStatusCode:exitStatusErrorReason:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = objc_allocWithZone(v9);
  *&v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions] = 0;
  v18 = *a3;
  v26 = a1;
  v27 = a2;

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E74A0);

  v19 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName];
  *v19 = a1;
  v19[1] = a2;
  v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason] = v18;
  v20 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain];
  *v20 = a4;
  v20[4] = BYTE4(a4) & 1;
  v21 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode];
  *v21 = a5;
  v21[8] = a6 & 1;
  v22 = &v17[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason];
  *v22 = a7;
  v22[1] = a8;
  v25.receiver = v17;
  v25.super_class = v9;
  return objc_msgSendSuper2(&v25, sel_init);
}

HomeKitMetrics::ProcessExitInfoLogEvent::LaunchReason_optional __swiftcall ProcessExitInfoLogEvent.LaunchReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ProcessExitInfoLogEvent.coreAnalyticsEventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName);

  return v1;
}

uint64_t ProcessExitInfoLogEvent.exitStatusErrorReason.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason);

  return v1;
}

id ProcessExitInfoLogEvent.init(coreAnalyticsEventPrefix:launchReason:exitStatusDomain:exitStatusCode:exitStatusErrorReason:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions] = 0;
  v14 = *a3;
  v22 = a1;
  v23 = a2;

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E74A0);

  v15 = v23;
  v16 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventName];
  *v16 = v22;
  v16[1] = v15;
  v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_launchReason] = v14;
  v17 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain];
  *v17 = a4;
  v17[4] = BYTE4(a4) & 1;
  v18 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode];
  *v18 = a5;
  v18[8] = a6 & 1;
  v19 = &v8[OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason];
  *v19 = a7;
  v19[1] = a8;
  v21.receiver = v8;
  v21.super_class = type metadata accessor for ProcessExitInfoLogEvent();
  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t sub_22B0B86F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6060, &qword_22B0E5560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E4000;
  strcpy((inited + 32), "launchReason");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_22B0DF620();
  v3 = sub_22B0B942C(inited);
  swift_setDeallocating();
  sub_22B0B9530(inited + 32);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusDomain + 4))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_22B0DFD90();
  }

  sub_22B080C88(v4, 0xD000000000000010, 0x800000022B0E7600);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusCode + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22B0DFDA0();
  }

  sub_22B080C88(v5, 0x7461745374697865, 0xEE0065646F437375);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_exitStatusErrorReason + 8))
  {
    v6 = sub_22B0DF300();
  }

  else
  {
    v6 = 0;
  }

  sub_22B080C88(v6, 0xD000000000000015, 0x800000022B0E7620);
  return v3;
}

uint64_t sub_22B0B88C4()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B0B895C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ProcessExitInfoLogEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessExitInfoLogEvent.__allocating_init(startTime:)(double a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStartTime_];
}

id ProcessExitInfoLogEvent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessExitInfoLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_22B0B8BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B60A8, &qword_22B0E56A0);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_22B08350C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22B0B8CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B6080, &unk_22B0E5680);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5898, &qword_22B0E39A0);
    v7 = sub_22B0DFB50();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22B0898A8(v9, v5, &unk_27D8B6080, &unk_22B0E5680);
      result = sub_22B07639C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22B0DF0E0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22B0B8ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B60A0, &unk_22B0E5690);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22B0B8FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6090, &unk_22B0E43F0);
    v3 = sub_22B0DFB50();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B0898A8(v4, v13, &qword_27D8B6098, &unk_22B0E5BF0);
      result = sub_22B0835E4(v13);
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
      result = sub_22B096E2C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22B0B9108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5900, &qword_22B0E3A10);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22B0B9204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60C0, &qword_22B0E3A08);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22B0B9308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58F0, &qword_22B0E3A00);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_22B0768A8(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_22B0B942C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60B0, &qword_22B0E39B0);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22B0768A8(v5, v6);
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

uint64_t sub_22B0B9530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6068, &qword_22B0E5568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B0B959C()
{
  result = qword_27D8B6070;
  if (!qword_27D8B6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B6070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessExitInfoLogEvent.LaunchReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessExitInfoLogEvent.LaunchReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int __swiftcall Int.accumulate(_:)(Swift::Int a1)
{
  v2 = __OFADD__(v1, a1);
  result = v1 + a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B0B987C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

double sub_22B0B98A0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t dispatch thunk of Accumulatable.accumulate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
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

uint64_t sub_22B0B99F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22B0DF1B0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22B0DF1A0();
}

uint64_t sub_22B0B9AC4()
{
  v1 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState__isActive);
  os_unfair_lock_unlock(v1 + 4);
  return v2;
}

void sub_22B0B9B8C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v4 + 4);
  sub_22B0B9BF8(v2, v3);

  os_unfair_lock_unlock(v4 + 4);
}

id sub_22B0B9BF8(id result, uint64_t a2)
{
  v2 = OBJC_IVAR___HMMEphemeralContainerState__isActive;
  if (*(a2 + OBJC_IVAR___HMMEphemeralContainerState__isActive) != (result & 1))
  {
    v4 = result;
    result = [*(a2 + OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider) uptime];
    v6 = OBJC_IVAR___HMMEphemeralContainerState__startTime;
    if ((v4 & 1) == 0)
    {
      v6 = OBJC_IVAR___HMMEphemeralContainerState__activeDuration;
      v5 = v5 - *(a2 + OBJC_IVAR___HMMEphemeralContainerState__startTime) + *(a2 + OBJC_IVAR___HMMEphemeralContainerState__activeDuration);
    }

    *(a2 + v6) = v5;
    *(a2 + v2) = v4 & 1;
  }

  return result;
}

double sub_22B0B9CC8()
{
  v1 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v1 + 4);
  if (*(v0 + OBJC_IVAR___HMMEphemeralContainerState__isActive) == 1)
  {
    [*(v0 + OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider) uptime];
    v3 = v2 - *(v0 + OBJC_IVAR___HMMEphemeralContainerState__startTime) + *(v0 + OBJC_IVAR___HMMEphemeralContainerState__activeDuration);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___HMMEphemeralContainerState__activeDuration);
  }

  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

id EphemeralContainerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EphemeralContainerState.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EphemeralContainerState();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_22B0B9F20(uint64_t a1)
{
  v3 = OBJC_IVAR___HMMEphemeralContainerState_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B6100, &unk_22B0E5720);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  v1[OBJC_IVAR___HMMEphemeralContainerState__isActive] = 1;
  *&v1[OBJC_IVAR___HMMEphemeralContainerState__activeDuration] = 0;
  *&v1[OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider] = a1;
  [swift_unknownObjectRetain() uptime];
  *&v1[OBJC_IVAR___HMMEphemeralContainerState__startTime] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EphemeralContainerState();
  return objc_msgSendSuper2(&v7, sel_init);
}

char *sub_22B0B9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v57 = a5;
  v58 = a6;
  v52 = a3;
  v59 = *v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v46 - v13;
  v55 = sub_22B0DEF00();
  v14 = *(v55 - 8);
  v15 = MEMORY[0x28223BE20](v55);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17);
  v54 = &v46 - v20;
  v21 = OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_uptimeProvider;
  v22 = [objc_opt_self() sharedInstance];
  v48 = v21;
  *&v6[v21] = v22;
  v23 = &v6[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex];
  *v23 = 0;
  *(v23 + 5) = 0;
  *(v23 + 8) = 0u;
  v24 = (v23 + 8);
  *(v23 + 24) = 0u;
  v6[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_suggestFullDayLoad] = 0;
  v62 = a1;
  if (a1 == 0x6C756E2F7665642FLL && a2 == 0xE90000000000006CLL || (sub_22B0DFC60() & 1) != 0)
  {
    goto LABEL_14;
  }

  v56 = a2;
  v51 = v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v47 = v24;
  v53 = v26;
  if (!a4)
  {
    v30 = sub_22B0DF300();
    v31 = sub_22B0DF300();
    v29 = [v26 URLForResource:v30 withExtension:v31];

    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v60 = 0xD00000000000001DLL;
  v61 = 0x800000022B0E78C0;
  MEMORY[0x231889070](v52, a4);
  v27 = sub_22B0DF300();

  v28 = sub_22B0DF300();
  v29 = [v26 URLForResource:v27 withExtension:v28];

  if (!v29)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_22B0DFB00();
    __break(1u);
    return result;
  }

LABEL_8:
  sub_22B0DEEE0();

  v32 = v14;
  v33 = *(v14 + 32);
  v34 = v54;
  v35 = v55;
  v33(v54, v19, v55);
  v36 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v37 = sub_22B0DEEB0();
  v38 = [v36 initWithContentsOfURL_];

  if (v38)
  {
    *(v8 + 2) = v38;
    v39 = *(v32 + 56);
    v59 = v33;
    v40 = v50;
    v39(v50, 1, 1, v35);
    sub_22B0DF360();
    v41 = v38;

    v42 = v49;
    sub_22B0DEED0();

    sub_22B07D02C(v40, &qword_27D8B57B8, &unk_22B0E5850);
    (*(v32 + 8))(v34, v35);

    v59(&v8[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL], v42, v35);
    v43 = &v8[OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock];
    v44 = v58;
    *v43 = v57;
    *(v43 + 1) = v44;
  }

  else
  {

    sub_22B0BB6C0();
    swift_allocError();
    swift_willThrow();

    sub_22B094864(v57, v58);
    (*(v32 + 8))(v34, v35);

    sub_22B0BB690(v47);
    swift_deallocPartialClassInstance();
  }

  return v8;
}

void sub_22B0BA5D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*a1 == 2)
  {
    v5 = *(a2 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_uptimeProvider);
    v6 = &unk_2786F9000;
    [v5 uptime];
    if (*(a1 + 32) > v9)
    {
LABEL_7:
      *a4 = 0;
      return;
    }

    if (qword_2813E9AA8 == -1)
    {
LABEL_4:
      v10 = sub_22B0DF1B0();
      __swift_project_value_buffer(v10, qword_2813EBE90);
      v11 = sub_22B0DF190();
      v12 = sub_22B0DF690();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B074000, v11, v12, "Persistent store is in failure mode, not reopening. Persistent storage disabled.", v13, 2u);
        MEMORY[0x23188A520](v13, -1, -1);
      }

      [v5 v6[218]];
      *(a1 + 32) = v14 + 600.0;
      goto LABEL_7;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = *(a1 + 24);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(a1 + 24) = v18;
    *a4 = v15;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    sub_22B0BA7A4(a2, a1);
    objc_autoreleasePoolPop(v20);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *a4 = *(a1 + 8);
    }
  }
}

void sub_22B0BA7A4(uint64_t a1, _BYTE *a2)
{
  v5 = sub_22B0DEF00();
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock);
  if (!v9)
  {
    v16 = a2;
    v17 = *(a1 + 16);
    (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL, v5);
    v18 = *v16 == 0;
    type metadata accessor for CoreDataCounterStore();
    swift_allocObject();
    v19 = sub_22B0961D8(0x746E756F434D4D48, 0xEB00000000737265, v17, v8, v18);
    if (v2)
    {
      v33 = v5;
      v34 = v16;
      goto LABEL_6;
    }

    *(v16 + 1) = v19;

    v13 = v16;
LABEL_14:
    *v13 = 1;
    *(v13 + 3) = 1;
    return;
  }

  v33 = v5;
  v10 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock + 8);
  v11 = *(a1 + 16);
  v12 = OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL;
  v13 = a2;
  v14 = *a2 == 0;
  sub_22B0A7418(v9, v10);
  v15 = v9(0x746E756F434D4D48, 0xEB00000000737265, v11, a1 + v12, v14);
  if (!v2)
  {
    v32 = v15;
    sub_22B094864(v9, v10);
    *(v13 + 1) = v32;

    goto LABEL_14;
  }

  v34 = v13;
  sub_22B094864(v9, v10);
LABEL_6:
  if (qword_2813E9AA8 != -1)
  {
    swift_once();
  }

  v20 = sub_22B0DF1B0();
  __swift_project_value_buffer(v20, qword_2813EBE90);

  v21 = v2;
  v22 = sub_22B0DF190();
  v23 = sub_22B0DF690();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v24 = 136315394;
    sub_22B096DD4();
    v27 = sub_22B0DFC20();
    v29 = sub_22B07B428(v27, v28, &v35);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2112;
    v30 = v2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v31;
    *v25 = v31;
    _os_log_impl(&dword_22B074000, v22, v23, "Failed to recreate persistent store at %s: %@. Persistent storage disabled.", v24, 0x16u);
    sub_22B07D02C(v25, &qword_27D8B5660, &qword_22B0E54A0);
    MEMORY[0x23188A520](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23188A520](v26, -1, -1);
    MEMORY[0x23188A520](v24, -1, -1);
  }

  else
  {
  }

  *v34 = 2;
}

uint64_t sub_22B0BAB9C()
{
  v1 = *v0;
  v2 = (v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  sub_22B0BA5D8(&v2[2], v0, v1, &v4);
  os_unfair_lock_unlock(v2);
}

void sub_22B0BAC38()
{
  v1 = v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  if (*(v1 + 8) != 2)
  {
    v2 = *(v1 + 32);
    v3 = v2 == 1;
    v4 = v2 < 1;
    v5 = v2 - 1;
    if (v4)
    {
      __break(1u);
      return;
    }

    *(v1 + 32) = v5;
    if (v3)
    {
      *(v1 + 16) = 0;
    }
  }

  os_unfair_lock_unlock(v1);
}

uint64_t sub_22B0BACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v12 + 56))(v13, v12);
  v22[0] = a3;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    if (*(&v24 + 1))
    {
      sub_22B07D124(&v23, &v19);
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  v19 = v23;
  v20 = v24;
  v21 = v25;
LABEL_6:
  if (*(&v20 + 1))
  {
    v14 = sub_22B0781A8(&v19, v22);
    MEMORY[0x28223BE20](v14);
    *(&v19 - 6) = a3;
    *(&v19 - 5) = a4;
    *(&v19 - 4) = a5;
    *(&v19 - 3) = a1;
    v17 = a2;
    v18 = v22;
    sub_22B0BAFE4(sub_22B0BB64C, a4, a6);
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    if (*(&v24 + 1))
    {
      return __swift_destroy_boxed_opaque_existential_0(&v23);
    }
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_22B0DF8E0();

    strcpy(v22, "Counter class ");
    HIBYTE(v22[1]) = -18;
    v16 = sub_22B0DFE30();
    MEMORY[0x231889070](v16);

    MEMORY[0x231889070](0xD00000000000001FLL, 0x800000022B0E78A0);
    result = sub_22B0DFB00();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B0BAF30(uint64_t a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  (*(v7 + 32))(v9, a1, v6, v7);
  a2(v9);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_22B0BAFE4(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v5;
  v10 = (v5 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  sub_22B0BA5D8(&v10[2], v5, v9, &v11);
  if (v4)
  {
    os_unfair_lock_unlock(v10);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v10);
    if (v11)
    {
      a1(v11);
      sub_22B0BAC38();
    }

    else
    {
      (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }
}

uint64_t sub_22B0BB160(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for CoreDataGroupPersistenceProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v7[3] = v4;
  v7[4] = &off_283EECD50;
  v7[0] = v5;

  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_22B0BB200(void (*a1)(uint64_t))
{
  v4 = *v1;
  v5 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex));
  sub_22B0BA5D8(&v5[2], v1, v4, &v7);
  os_unfair_lock_unlock(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {

    a1(v6);
    sub_22B0BAC38();
  }
}

uint64_t sub_22B0BB2E0()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_persistentStoreURL;
  v2 = sub_22B0DEF00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_22B094864(*(v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock), *(v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_openStoreTestBlock + 8));
  sub_22B0BB690(v0 + OBJC_IVAR____TtC14HomeKitMetrics32PersistentCoreDataCounterStorage_mutex + 8);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PersistentCoreDataCounterStorage(uint64_t a1)
{
  result = qword_27D8B6130;
  if (!qword_27D8B6130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0BB410(uint64_t a1)
{
  result = sub_22B0DEF00();
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

uint64_t sub_22B0BB4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22B0BB52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_22B0BB6C0()
{
  result = qword_27D8B6148;
  if (!qword_27D8B6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B6148);
  }

  return result;
}

unint64_t sub_22B0BB728()
{
  result = qword_27D8B6150;
  if (!qword_27D8B6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B6150);
  }

  return result;
}

void *DailySchedulerDelegate.__allocating_init(dailyScheduler:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_22B07D124(a1, v3 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *DailySchedulerDelegate.init(dailyScheduler:)(void *a1)
{
  sub_22B07D124(a1, v1 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DailySchedulerDelegate();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_22B0BB874(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B6168, &qword_22B0E58E8);
  v2 = sub_22B0DF350();
  v4 = v3;
  swift_unknownObjectWeakInit();
  v5 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler + 24);
  v6 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14HomeKitMetrics22DailySchedulerDelegate_dailyScheduler), v5);
  sub_22B0BBA84(&ObjectType, &v10);
  v7 = swift_allocObject();
  sub_22B0BBABC(&v10, v7 + 16);
  v8 = *(v6 + 8);

  v8(v2, v4, v2, v4, &unk_22B0E58F8, v7, v5, v6);
  swift_bridgeObjectRelease_n();

  return sub_22B0BBB8C(&ObjectType);
}

uint64_t sub_22B0BB9A4(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_22B0BB9C8, 0, 0);
}

uint64_t sub_22B0BB9C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 32) == 1 && (*(v0 + 16) = &unk_283EFAD00, (v3 = swift_dynamicCastObjCProtocolConditional()) != 0))
    {
      v4 = &selRef_runHomeutilTask;
    }

    else
    {
      v4 = &selRef_runDailyTask;
      v3 = v2;
    }

    [v3 *v4];
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B0BBAF4(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B0A5698;

  return sub_22B0BB9A4(a1, v1 + 16);
}

id DailySchedulerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DailySchedulerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DailySchedulerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B0BBDA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, unint64_t *a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  a5[3] = v10;
  a5[4] = sub_22B0BBE5C(a4, a2, a3);
  *a5 = v11;
}

uint64_t sub_22B0BBE5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22B0BBF00(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_22B0BBF44(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v4 = sub_22B0DF0E0();
  v55 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v66 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v53 = &v49 - v9;
  v50 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v71 = AssociatedTypeWitness;
  v72 = AssociatedConformanceWitness;
  v14 = v4;
  v73 = v12;
  v74 = v13;
  v57 = type metadata accessor for CounterSet(255, &v71);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = sub_22B0DF780();
  v16 = *(v61 - 8);
  v17 = MEMORY[0x28223BE20](v61);
  v63 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  sub_22B0DEE10();
  swift_allocObject();
  v60 = sub_22B0DEE00();
  v21 = *(a1 + 64);
  v51 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v62 = TupleTypeMetadata2 - 8;
  v65 = v55 + 16;
  v67 = (v55 + 32);
  v59 = (v16 + 32);
  v56 = (v55 + 8);
  v54 = a1;

  v26 = 0;
  v27.n128_u64[0] = 136446722;
  v49 = v27;
  v68 = v14;
  v64 = TupleTypeMetadata2;
  v52 = v20;
  if (!v24)
  {
    goto LABEL_6;
  }

  do
  {
    v33 = v26;
LABEL_16:
    v36 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v37 = v36 | (v33 << 6);
    v38 = v54;
    v39 = v55;
    v40 = v53;
    (*(v55 + 16))(v53, *(v54 + 48) + *(v55 + 72) * v37, v14);
    v41 = *(v38 + 56) + 16 * v37;
    LOBYTE(v38) = *v41;
    v42 = *(v41 + 8);
    v43 = v14;
    v34 = v63;
    v44 = &v63[*(v64 + 48)];
    v45 = v40;
    TupleTypeMetadata2 = v64;
    (*(v39 + 32))(v63, v45, v43);
    *v44 = v38;
    *(v44 + 1) = v42;
    v35 = *(TupleTypeMetadata2 - 8);
    (*(v35 + 56))(v34, 0, 1, TupleTypeMetadata2);

    v32 = v33;
    v20 = v52;
LABEL_17:
    (*v59)(v20, v34, v61);
    if ((*(v35 + 48))(v20, 1, TupleTypeMetadata2) == 1)
    {

      return;
    }

    v69 = v32;
    v46 = &v20[*(TupleTypeMetadata2 + 48)];
    v47 = *v46;
    v48 = *(v46 + 1);
    v14 = v68;
    (*v67)(v70, v20, v68);
    LOBYTE(v71) = v47;
    v72 = v48;
    swift_getWitnessTable();
    v28 = sub_22B0DEDF0();
    v30 = v29;

    sub_22B0920C0(v28, v30, 1, *(v50 + 24), v58, v70);
    sub_22B080408(v28, v30);
    (*v56)(v70, v14);
    v26 = v69;
  }

  while (v24);
LABEL_6:
  if (v25 <= v26 + 1)
  {
    v31 = v26 + 1;
  }

  else
  {
    v31 = v25;
  }

  v32 = v31 - 1;
  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v33 >= v25)
    {
      v34 = v63;
      v35 = *(TupleTypeMetadata2 - 8);
      (*(v35 + 56))(v63, 1, 1, TupleTypeMetadata2);
      v24 = 0;
      goto LABEL_17;
    }

    v24 = *(v51 + 8 * v33);
    ++v26;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

BOOL sub_22B0BC878(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B091E9C(*(v2 + 24), a1, a2);
  v6 = v5;
  if (v5 != 2)
  {
    sub_22B0BD258(v3, v4, v5);
  }

  return v6 != 2;
}

uint64_t sub_22B0BC8C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_22B0DF0E0();
  v42 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = sub_22B091E9C(*(v2 + 24), a1, a2);
  if (v11 == 2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v13 = sub_22B07AB00(AssociatedTypeWitness);
LABEL_11:
    v35 = sub_22B0D20BC(v13, 0);
    return v35 & 1;
  }

  v39 = v9;
  v40 = v10;
  v41 = v11;
  if ((v11 & 1) == 0)
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v20 = sub_22B0DF1B0();
    __swift_project_value_buffer(v20, qword_2813EBE90);
    v21 = v42;
    (*(v42 + 16))(v8, a2, v5);

    v22 = sub_22B0DF190();
    v23 = sub_22B0DF690();

    if (os_log_type_enabled(v22, v23))
    {
      LODWORD(v38) = v41 & 1;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43[0] = v25;
      *v24 = 136446722;
      v26 = (*(*a1 + 96))();
      v28 = sub_22B07B428(v26, v27, v43);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      sub_22B0BD26C();
      v29 = sub_22B0DFC20();
      v31 = v30;
      (*(v21 + 8))(v8, v5);
      v32 = sub_22B07B428(v29, v31, v43);

      *(v24 + 14) = v32;
      *(v24 + 22) = 256;
      *(v24 + 24) = v38;
      _os_log_impl(&dword_22B074000, v22, v23, "Unsupported encoding for %{public}s for %s: %hhu", v24, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x23188A520](v25, -1, -1);
      MEMORY[0x23188A520](v24, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v8, v5);
    }

    v33 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v34 = sub_22B07AB00(v33);
    sub_22B0BD258(v39, v40, v41);
    v13 = v34;
    goto LABEL_11;
  }

  v37[4] = v5;
  sub_22B0DEDE0();
  swift_allocObject();
  sub_22B0DEDD0();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v18 = v39;
  v17 = v40;
  v19 = swift_getAssociatedConformanceWitness();
  v37[5] = v14;
  v38 = AssociatedConformanceWitness;
  v43[0] = v14;
  v43[1] = AssociatedConformanceWitness;
  v43[2] = v16;
  v43[3] = v19;
  v37[3] = v19;
  type metadata accessor for CounterSet(0, v43);
  swift_getWitnessTable();
  sub_22B0DEDC0();
  sub_22B0BD258(v18, v17, v41);

  v35 = v44;
  return v35 & 1;
}

uint64_t sub_22B0BD194()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_22B0BD258(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_22B080408(result, a2);
  }

  return result;
}

unint64_t sub_22B0BD26C()
{
  result = qword_2813EAD68;
  if (!qword_2813EAD68)
  {
    sub_22B0DF0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD68);
  }

  return result;
}

uint64_t sub_22B0BD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v17 = a1;
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  swift_getAssociatedConformanceWitness();
  sub_22B0DFC80();
  sub_22B0DFC50();
  sub_22B0DF630();
  v14 = *(v8 + 8);
  v14(v11, a2);
  v15 = v18(v13, a2, a3);
  v14(v13, a2);
  return v15;
}

id MappedDisplayReasonRadarRequestFilter.__allocating_init(defaultRequestFilter:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MappedDisplayReasonRadarRequestFilter.init(defaultRequestFilter:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MappedDisplayReasonRadarRequestFilter();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_22B0BD5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_22B0886CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v10;
  return swift_endAccess();
}

uint64_t sub_22B0BD6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_22B0768A8(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v10 = *(v3 + OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter);
    swift_unknownObjectRetain();
    return v10;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  return v10;
}

id sub_22B0BD768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_22B0768A8(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v10 = *(v3 + OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

LABEL_6:
  v11 = sub_22B0DF300();
  v12 = [v10 shouldRequestRadarForDisplayReason_];
  swift_unknownObjectRelease();

  return v12;
}

void sub_22B0BD8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_filtersByDisplayReason;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_22B0768A8(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v10 = *(v3 + OBJC_IVAR____TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter_defaultRequestFilter);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

LABEL_6:
  v11 = sub_22B0DF300();
  [v10 radarRequestedForDisplayReason_];
  swift_unknownObjectRelease();
}

id MappedDisplayReasonRadarRequestFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MappedDisplayReasonRadarRequestFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MappedDisplayReasonRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B0BDD30()
{
  v1 = v0;
  v2 = sub_22B0DF300();
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B08851C(v2, 0x6C4263696C627570, 0xEF656D614E6B636FLL, isUniquelyReferenced_nonNull_native);
  if (*(v1 + OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22B0DFD30();
  }

  sub_22B080C88(v5, 0xD000000000000013, 0x800000022B0E7B10);
  v6 = sub_22B0DF560();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B08851C(v6, 0x42796C6961447369, 0xEC0000006B636F6CLL, v7);
  return v3;
}

id sub_22B0BDEDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BlockSchedulerLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t TapToRadarComponent.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TapToRadarComponent.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TapToRadarComponent.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TapToRadarComponent.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall TapToRadarComponent.init(name:version:identifier:)(HomeKitMetrics::TapToRadarComponent *__return_ptr retstr, Swift::String name, Swift::String version, Swift::Int identifier)
{
  retstr->name = name;
  retstr->version = version;
  retstr->identifier = identifier;
}

BOOL static TapToRadarComponent.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_22B0DFC60()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22B0DFC60()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_22B0BE174(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_22B0DFC60()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22B0DFC60()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B0BE210(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B0BE258(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22B0BE2B0(uint64_t a1)
{
  type metadata accessor for AccessoryGroupSpecifier(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &type metadata for AccessoryCoreDataGroupSpecifier;
    v4 = &off_283EEC4B8;
  }

  else
  {
    type metadata accessor for HomeGroupSpecifier(0);
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
      v12 = &type metadata for NamedCoreDataGroupSpecifier;
      v13 = &off_283EEC4E8;
      v11[0] = a1;
      goto LABEL_6;
    }

    v3 = &type metadata for HomeCoreDataGroupSpecifier;
    v4 = &off_283EEC4D0;
  }

  v12 = v3;
  v13 = v4;
  v11[0] = v2;
LABEL_6:
  MEMORY[0x28223BE20](v2);
  v6 = *(v5 + 16);

  v7 = [v6 newBackgroundContext];
  v8 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v7 setMergePolicy_];

  MEMORY[0x28223BE20](v9);
  sub_22B0DF710();

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_22B0BE634(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  [v6 setIncludesSubentities_];
  v16[0] = 0;
  v7 = [v6 execute_];
  v8 = v16[0];
  if (v7)
  {
    v9 = v7;
    type metadata accessor for ManagedNamedGroup();
    v10 = sub_22B0DF4B0();
    v11 = v8;

    if (v10 >> 62)
    {
      v12 = sub_22B0DF830();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
      v13 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v13);

      sub_22B096BB4(a1);
    }
  }

  else
  {
    v15 = v16[0];
    sub_22B0DEE80();

    swift_willThrow();
  }
}

void sub_22B0BE960(void *a1@<X8>)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22B0DF300();
  v5 = [v3 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B0E5B80;
  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  v7 = MEMORY[0x277D84F90];
  *(v6 + 32) = sub_22B0DF660();
  *(v6 + 40) = sub_22B0DF660();
  *(v6 + 48) = sub_22B0DF660();
  v8 = sub_22B0DF4A0();

  v9 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v5 setPredicate_];
  [v5 setIncludesSubentities_];
  type metadata accessor for ManagedNamedGroup();
  v10 = sub_22B0DF720();
  if (v1)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_13:

    v17 = MEMORY[0x277D84F90];
LABEL_14:
    *a1 = v17;
    return;
  }

  v12 = sub_22B0DF830();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_5:
  v18 = a1;
  v19 = v7;
  sub_22B0DF960();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = MEMORY[0x277D85000];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2318895C0](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      ++v13;
      (*((*v14 & *v15) + 0x50))();

      sub_22B0DF940();
      sub_22B0DF970();
      sub_22B0DF980();
      sub_22B0DF950();
    }

    while (v12 != v13);

    v17 = v19;
    a1 = v18;
    goto LABEL_14;
  }

  __break(1u);
}

char *sub_22B0BEC88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AC0, &qword_22B0E5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2C10;
  sub_22B07993C(sub_22B0C07A4, a1);
  v4 = sub_22B09EF88(v3);

  *(inited + 32) = v4;
  sub_22B07993C(sub_22B0C07E8, a1);
  v6 = sub_22B09EF88(v5);

  *(inited + 40) = v6;
  sub_22B07993C(sub_22B0C082C, a1);
  v8 = sub_22B09EF88(v7);

  *(inited + 48) = v8;
  v9 = sub_22B098524(inited);
  v10 = v9;
  v11 = *(v9 + 16);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = sub_22B083388(*(v9 + 16), 0);
  v13 = *(sub_22B0DF0E0() - 8);
  v14 = sub_22B093468(&v16, &v12[(*(v13 + 80) + 32) & ~*(v13 + 80)], v11, v10);
  sub_22B0A0228(v16);
  if (v14 != v11)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v12;
}

void sub_22B0BEE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_22B0DF0E0();
  v67 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v57 - v10;
  v11 = sub_22B0BFD58(a2);
  if (v11)
  {
    v12 = v11;
    a3(0);
    v13 = [swift_getObjCClassFromMetadata() entity];
    v14 = [v13 name];

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
    v16 = swift_allocObject();
    v65 = xmmword_22B0E4000;
    *(v16 + 16) = xmmword_22B0E4000;
    *(v16 + 56) = type metadata accessor for ManagedNamedGroup();
    *(v16 + 64) = sub_22B0C0870();
    *(v16 + 32) = v12;
    v64 = v12;
    v17 = sub_22B0DF660();
    [v15 setPredicate_];

    [v15 setResultType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62C0, &qword_22B0E5C08);
    v18 = swift_allocObject();
    *(v18 + 16) = v65;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = 1702125924;
    *(v18 + 40) = 0xE400000000000000;
    v19 = sub_22B0DF4A0();

    [v15 setPropertiesToFetch_];

    [v15 setReturnsDistinctResults_];
    sub_22B07BA9C(0, &qword_27D8B62C8, 0x277CBEAC0);
    v20 = sub_22B0DF720();
    v21 = v3;
    if (v3)
    {
      if (qword_2813E9AA8 == -1)
      {
LABEL_5:
        v22 = sub_22B0DF1B0();
        __swift_project_value_buffer(v22, qword_2813EBE90);
        v23 = v64;
        v24 = v21;
        v25 = sub_22B0DF190();
        v26 = sub_22B0DF690();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543618;
          *(v27 + 4) = v23;
          *v28 = v12;
          *(v27 + 12) = 2112;
          v29 = v23;
          v30 = v21;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 14) = v31;
          v28[1] = v31;
          _os_log_impl(&dword_22B074000, v25, v26, "Error getting dates for group %{public}@: %@", v27, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
          swift_arrayDestroy();
          MEMORY[0x23188A520](v28, -1, -1);
          MEMORY[0x23188A520](v27, -1, -1);
        }

        return;
      }
    }

    else
    {
      v40 = sub_22B0BF5BC(v20);

      if (!v40)
      {

        return;
      }

      v58 = v15;
      v59 = 0;
      v21 = *(v40 + 16);
      if (!v21)
      {
LABEL_27:

        return;
      }

      v62 = v9;
      v15 = 0;
      v41 = v40 + 32;
      v60 = v67 + 16;
      v42 = v67 + 32;
      v12 = MEMORY[0x277D84F90];
      v63 = v6;
      v61 = v40 + 32;
      *&v65 = v40;
      while (v15 < *(v40 + 16))
      {
        v43 = *(v41 + 8 * v15);
        if (*(v43 + 16))
        {

          v44 = sub_22B0768A8(1702125924, 0xE400000000000000);
          if (v45)
          {
            v46 = v21;
            v47 = v67;
            v48 = *(v67 + 72);
            v49 = v42;
            v50 = v6;
            v51 = v62;
            (*(v67 + 16))(v62, *(v43 + 56) + v48 * v44, v50);

            v52 = *(v47 + 32);
            v53 = v50;
            v42 = v49;
            v52(v66, v51, v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_22B082E70(0, v12[2] + 1, 1, v12);
            }

            v55 = v12[2];
            v54 = v12[3];
            v21 = v46;
            if (v55 >= v54 >> 1)
            {
              v12 = sub_22B082E70((v54 > 1), v55 + 1, 1, v12);
            }

            v40 = v65;
            v12[2] = v55 + 1;
            v56 = v12 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + v55 * v48;
            v6 = v63;
            v52(v56, v66, v63);
            v41 = v61;
          }

          else
          {
          }
        }

        if (v21 == ++v15)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  if (qword_2813E9AA8 != -1)
  {
    swift_once();
  }

  v32 = sub_22B0DF1B0();
  __swift_project_value_buffer(v32, qword_2813EBE90);

  v33 = sub_22B0DF190();
  v34 = sub_22B0DF690();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136446210;
    v37 = (*(*a2 + 96))();
    v39 = sub_22B07B428(v37, v38, &v68);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_22B074000, v33, v34, "Failed to load group for %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x23188A520](v36, -1, -1);
    MEMORY[0x23188A520](v35, -1, -1);
  }
}

uint64_t sub_22B0BF5BC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B0DF830())
  {
    v8 = MEMORY[0x277D84F90];
    sub_22B0BFAD0(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_22B0DF830();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x2318895C0](0, a1);
LABEL_10:
  v6 = v5;
  sub_22B0DF0E0();
  sub_22B0DF230();

  return 0;
}

void sub_22B0BF754(uint64_t a1)
{
  v2 = [*(*(v1 + 16) + 16) newBackgroundContext];
  v3 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v2 setMergePolicy_];

  sub_22B0DF710();
}

void sub_22B0BF824(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ManagedCounter();
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_22B0C02D8(a3, v5, a1);

  type metadata accessor for ManagedDuration();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_22B0C02D8(a3, v6, a1);

  type metadata accessor for ManagedDistribution();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_22B0C02D8(a3, v7, a1);
}

void sub_22B0BF9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B0E4000;
  v5 = sub_22B0DF070();
  *(v4 + 56) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
  *(v4 + 64) = sub_22B07BAE4();
  *(v4 + 32) = v5;
  v6 = sub_22B0DF660();
  sub_22B0BF754(v6);
}

void *sub_22B0BFAB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B0BFAF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B0BFAD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22B0BFC24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22B0BFAF0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62E0, &qword_22B0E5C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62E8, &qword_22B0E5C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B0BFC24(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62D0, &qword_22B0E5C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62D8, &qword_22B0E5C18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_22B0BFD58(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  type metadata accessor for AccessoryGroupSpecifier(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &type metadata for AccessoryCoreDataGroupSpecifier;
    v4 = &off_283EEC4B8;
LABEL_5:
    v40 = v3;
    v41 = v4;
    v39[0] = v2;
    goto LABEL_6;
  }

  type metadata accessor for HomeGroupSpecifier(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = &type metadata for HomeCoreDataGroupSpecifier;
    v4 = &off_283EEC4D0;
    goto LABEL_5;
  }

  v3 = &type metadata for NamedCoreDataGroupSpecifier;
  v4 = &off_283EEC4E8;
  v40 = &type metadata for NamedCoreDataGroupSpecifier;
  v41 = &off_283EEC4E8;
  v39[0] = a1;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(v39, v3);
  v5 = v4[1];

  v6 = v5();
  [v6 setIncludesSubentities_];
  v38 = 0;
  v7 = [v6 execute_];
  v8 = v38;
  if (!v7)
  {
    v13 = v38;
    v14 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v15 = sub_22B0DF1B0();
    __swift_project_value_buffer(v15, qword_2813EBE90);

    v16 = v14;
    v17 = sub_22B0DF190();
    v18 = sub_22B0DF690();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136446466;
      v22 = (*(*a1 + 96))();
      v24 = sub_22B07B428(v22, v23, &v38);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_22B074000, v17, v18, "Error getting group %{public}s: %@", v19, 0x16u);
      sub_22B07D02C(v20, &qword_27D8B5660, &qword_22B0E54A0);
      MEMORY[0x23188A520](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188A520](v21, -1, -1);
      MEMORY[0x23188A520](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v9 = v7;
  type metadata accessor for ManagedNamedGroup();
  v10 = sub_22B0DF4B0();
  v11 = v8;

  if (v10 >> 62)
  {
    v12 = sub_22B0DF830();
    if (v12 != 1)
    {
LABEL_9:
      if (v12)
      {

        if (qword_2813E9AA8 != -1)
        {
          swift_once();
        }

        v27 = sub_22B0DF1B0();
        __swift_project_value_buffer(v27, qword_2813EBE90);

        v28 = sub_22B0DF190();
        v29 = sub_22B0DF690();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v38 = v31;
          *v30 = 136446210;
          v32 = (*(*a1 + 96))();
          v34 = sub_22B07B428(v32, v33, &v38);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_22B074000, v28, v29, "Unexpected extra groups returned for group %{public}s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x23188A520](v31, -1, -1);
          MEMORY[0x23188A520](v30, -1, -1);
        }
      }

      else
      {
      }

LABEL_21:
      v35 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 != 1)
    {
      goto LABEL_9;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x2318895C0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v36 = *(v10 + 32);
  }

  v35 = v36;

LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v35;
}

void sub_22B0C02D8(void *a1, id a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  [a2 setPredicate_];
  v6 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v6 setResultType_];
  *&v34 = 0;
  v7 = [a3 executeRequest:v6 error:&v34];
  v8 = v34;
  if (v7)
  {
    v9 = v7;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v8;
    if (v10)
    {
      if ([v10 result])
      {
        sub_22B0DF7A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      v34 = v32;
      v35 = v33;
      if (*(&v33 + 1))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62A8, &qword_22B0E5BE0);
        if (swift_dynamicCast())
        {
          v25 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62B0, &qword_22B0E5BE8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B0E4000;
          *&v34 = sub_22B0DF330();
          *(&v34 + 1) = v27;
          sub_22B0DF880();
          *(inited + 96) = v24;
          *(inited + 72) = v32;
          sub_22B0B8FCC(inited);
          swift_setDeallocating();
          sub_22B07D02C(inited + 32, &qword_27D8B6098, &unk_22B0E5BF0);
          v28 = sub_22B0DF220();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_22B0E4D80;
          *(v29 + 32) = a3;
          sub_22B07BA9C(0, &qword_27D8B62B8, 0x277CBE440);
          v30 = a3;
          v31 = sub_22B0DF4A0();

          [v25 mergeChangesFromRemoteContextSave:v28 intoContexts:v31];
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v34 = 0u;
      v35 = 0u;
    }

    sub_22B07D02C(&v34, &qword_27D8B5770, &unk_22B0E2E40);
    return;
  }

  v12 = v34;
  v13 = sub_22B0DEE80();

  swift_willThrow();
  if (qword_2813E9AA8 != -1)
  {
    swift_once();
  }

  v14 = sub_22B0DF1B0();
  __swift_project_value_buffer(v14, qword_2813EBE90);
  v15 = a1;
  v16 = v13;
  v17 = sub_22B0DF190();
  v18 = sub_22B0DF690();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543618;
    *(v19 + 4) = v15;
    *v20 = a1;
    *(v19 + 12) = 2112;
    v21 = v15;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v23;
    v20[1] = v23;
    _os_log_impl(&dword_22B074000, v17, v18, "Error deleting counters where %{public}@: %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
    swift_arrayDestroy();
    MEMORY[0x23188A520](v20, -1, -1);
    MEMORY[0x23188A520](v19, -1, -1);
  }

  else
  {
  }
}

void sub_22B0C07A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22B0BEE34(a1, v2, type metadata accessor for ManagedCounter);
  if (!v3)
  {
    *a2 = v5;
  }
}

void sub_22B0C07E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22B0BEE34(a1, v2, type metadata accessor for ManagedDuration);
  if (!v3)
  {
    *a2 = v5;
  }
}

void sub_22B0C082C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22B0BEE34(a1, v2, type metadata accessor for ManagedDistribution);
  if (!v3)
  {
    *a2 = v5;
  }
}

unint64_t sub_22B0C0870()
{
  result = qword_2813EA430;
  if (!qword_2813EA430)
  {
    type metadata accessor for ManagedNamedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA430);
  }

  return result;
}

id PassThroughRadarRequestFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassThroughRadarRequestFilter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassThroughRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PassThroughRadarRequestFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassThroughRadarRequestFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CountersError.hashValue.getter()
{
  sub_22B0DFD40();
  MEMORY[0x231889A00](0);
  return sub_22B0DFD80();
}

unint64_t sub_22B0C0B00()
{
  result = qword_27D8B62F0;
  if (!qword_27D8B62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B62F0);
  }

  return result;
}

uint64_t *TapToRadarManager.__allocating_init(processName:defaultDraft:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = [objc_opt_self() sharedInstance];
  sub_22B0C0C5C(a3, v8);
  swift_allocObject();
  v10 = sub_22B0C0CCC(v9, a1, a2, v8);
  sub_22B0C1278(a3);
  return v10;
}

uint64_t sub_22B0C0C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_22B0C0CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36[1] = *v4;
  v37 = a2;
  v9 = sub_22B0DF6E0();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v41 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22B0DF6D0();
  MEMORY[0x28223BE20](v39);
  v40 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B0DF1F0();
  MEMORY[0x28223BE20](v12 - 8);
  v38 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v36 - v15;
  v17 = type metadata accessor for TapToRadarDraft(0);
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v4 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters;
  *v21 = 0;
  v22 = MEMORY[0x277D84F90];
  *(v21 + 1) = MEMORY[0x277D84F90];
  v23 = (v21 + 8);
  if (a1)
  {
    v24 = v37;
    v5[2] = a1;
    v5[3] = v24;
    v5[4] = a3;
    sub_22B0C0C5C(a4, v16);
    v25 = *(v18 + 48);
    v26 = v25(v16, 1, v17);
    v36[0] = a4;
    if (v26 == 1)
    {
      *v20 = 0;
      *(v20 + 1) = 0xE000000000000000;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0xE000000000000000;
      *(v20 + 4) = 0;
      *(v20 + 5) = 0xE000000000000000;
      *(v20 + 6) = 0;
      *(v20 + 7) = 0xE000000000000000;
      *(v20 + 5) = 0u;
      *(v20 + 6) = 0u;
      *(v20 + 107) = 0u;
      *(v20 + 4) = 0u;
      *(v20 + 16) = v22;
      *(v20 + 17) = v22;
      *(v20 + 18) = MEMORY[0x277D84F98];
      *(v20 + 19) = v22;
      *(v20 + 20) = v22;
      *(v20 + 21) = v22;
      v20[176] = 0;
      *(v20 + 23) = 0;
      *(v20 + 24) = 0;
      v27 = v17[22];
      v28 = sub_22B0DF0E0();
      (*(*(v28 - 8) + 56))(&v20[v27], 1, 1, v28);
      v20[v17[23]] = 0;
      v20[v17[24]] = 0;
      v20[v17[25]] = 0;
      *&v20[v17[26]] = 0;
      v20[v17[27]] = 0;
      v20[v17[28]] = 0;
      *&v20[v17[29]] = v22;
      v29 = &v20[v17[30]];
      *v29 = 0;
      *(v29 + 1) = 0;
      v30 = v17[31];
      v31 = sub_22B0DEF00();
      (*(*(v31 - 8) + 56))(&v20[v30], 1, 1, v31);
      v32 = &v20[v17[32]];
      *v32 = 0;
      *(v32 + 1) = 0;
      v20[v17[33]] = 0;
      v33 = v25(v16, 1, v17);
      swift_unknownObjectRetain();
      if (v33 != 1)
      {
        sub_22B0C1278(v16);
      }
    }

    else
    {
      sub_22B0C2194(v16, v20);
      swift_unknownObjectRetain();
    }

    sub_22B0C2194(v20, v5 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft);
    sub_22B0C23F0();
    sub_22B0DF1D0();
    v44 = v22;
    sub_22B0C243C(&qword_27D8B6348, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6350, &qword_22B0E5E08);
    sub_22B0C2484(&qword_27D8B6358, &qword_27D8B6350, &qword_22B0E5E08);
    sub_22B0DF7D0();
    (*(v42 + 104))(v41, *MEMORY[0x277D85260], v43);
    v34 = sub_22B0DF700();
    swift_unknownObjectRelease();
    sub_22B0C1278(v36[0]);
    *(v5 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_queue) = v34;
  }

  else
  {
    sub_22B0C1278(a4);

    sub_22B0C2274(v23);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_22B0C1278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B62F8, &unk_22B0E5D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TapToRadarManager.addFilter(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters));
  sub_22B07D124(a1, v8);
  v4 = *(v3 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22B083074(0, v4[2] + 1, 1, v4);
    *(v3 + 8) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_22B083074((v6 > 1), v7 + 1, 1, v4);
    *(v3 + 8) = v4;
  }

  v4[2] = v7 + 1;
  sub_22B0781A8(v8, &v4[5 * v7 + 4]);
  os_unfair_lock_unlock(v3);
}

uint64_t TapToRadarManager.makeDraft(category:displayReason:title:problemDescription:component:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v68 = a7;
  v69 = a8;
  v67 = a5;
  v72 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = type metadata accessor for TapToRadarDraft(0);
  v70 = *(v19 - 8);
  v71 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *a10;
  v23 = a10[1];
  v24 = a10[3];
  v65 = a10[2];
  v66 = v22;
  v64 = v24;
  v25 = a10[4];
  sub_22B0C20D4(v10 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft, v21);
  if (v23 || v21[9] || v21[14])
  {

    *v21 = a1;
    v21[1] = a2;

    v26 = sub_22B089738(75, a3, a4);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = MEMORY[0x231889020](v26, v28, v30, v32);
    v35 = v34;

    v21[2] = v33;
    v21[3] = v35;

    v36 = sub_22B089738(240, v67, a6);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v43 = MEMORY[0x231889020](v36, v38, v40, v42);
    v45 = v44;

    v21[4] = v43;
    v21[5] = v45;
    v46 = v69;

    v21[6] = v68;
    v21[7] = v46;
    if (v23)
    {
      v47 = v21[8];
      v48 = v21[9];
      v49 = v25;
      v50 = v21[10];
      v51 = v21[11];

      v52 = v64;

      sub_22B089818(v47, v48, v50, v51);
      v53 = v65;
      v21[8] = v66;
      v21[9] = v23;
      v21[10] = v53;
      v21[11] = v52;
      v21[12] = v49;
    }

    sub_22B0DF0D0();
    v54 = sub_22B0DF0E0();
    (*(*(v54 - 8) + 56))(v18, 0, 1, v54);
    v55 = v71;
    sub_22B07E0F8(v18, v21 + *(v71 + 88));
    v56 = v72;
    sub_22B0C20D4(v21, v72);
    v57 = 0;
  }

  else
  {
    if (qword_27D8B53C8 != -1)
    {
      swift_once();
    }

    v59 = sub_22B0DF1B0();
    __swift_project_value_buffer(v59, qword_27D8B9210);
    v60 = sub_22B0DF190();
    v61 = sub_22B0DF690();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_22B074000, v60, v61, "Component not specified, and default radar doesn't have a component or bundle ID", v62, 2u);
      MEMORY[0x23188A520](v62, -1, -1);
    }

    v57 = 1;
    v55 = v71;
    v56 = v72;
  }

  (*(v70 + 56))(v56, v57, 1, v55);
  return sub_22B0C2138(v21);
}

uint64_t TapToRadarManager.initiateDraft(_:)(uint64_t a1)
{
  v3 = sub_22B0DF1C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22B0DF1F0();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TapToRadarDraft(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v17[1] = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_queue);
  sub_22B0C20D4(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_22B0C2194(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_22B0C21F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B0C1F9C;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  sub_22B0DF1E0();
  v19 = MEMORY[0x277D84F90];
  sub_22B0C243C(&qword_27D8B6310, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6318, &qword_22B0E5D40);
  sub_22B0C2484(&qword_27D8B6320, &qword_27D8B6318, &qword_22B0E5D40);
  sub_22B0DF7D0();
  MEMORY[0x2318893A0](0, v9, v6, v15);
  _Block_release(v15);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v18);
}

void sub_22B0C1B1C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v46 - v11);
  v13 = a1[2];
  ObjectType = swift_getObjectType();
  if ([v13 isTapToRadarServiceAuthorized])
  {
    v15 = a1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters;
    os_unfair_lock_lock((a1 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters));
    v16 = *(v15 + 1);

    os_unfair_lock_unlock(v15);
    v17 = *(v16 + 16);
    if (v17)
    {
      v49 = ObjectType;
      v50 = a1;
      v46 = v12;
      v47 = v10;
      v48 = v7;
      v18 = 0;
      v19 = v16 + 32;
      v20 = v16 + 32;
      do
      {
        if (v18 >= *(v16 + 16))
        {
          __break(1u);
LABEL_17:
          swift_once();
LABEL_9:
          v23 = sub_22B0DF1B0();
          __swift_project_value_buffer(v23, qword_27D8B9210);
          v24 = v46;
          sub_22B0C20D4(a2, v46);
          v25 = v47;
          sub_22B0C20D4(a2, v47);
          v26 = v48;
          sub_22B0C20D4(a2, v48);
          v27 = sub_22B0DF190();
          v28 = sub_22B0DF6A0();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v51 = v30;
            *v29 = 136315650;
            v31 = *v24;
            v32 = v24[1];

            sub_22B0C2138(v24);
            v33 = sub_22B07B428(v31, v32, &v51);

            *(v29 + 4) = v33;
            *(v29 + 12) = 2080;
            v34 = *(v25 + 16);
            v35 = *(v25 + 24);

            sub_22B0C2138(v25);
            v36 = sub_22B07B428(v34, v35, &v51);

            *(v29 + 14) = v36;
            *(v29 + 22) = 2080;
            v37 = *(v26 + 32);
            v38 = *(v26 + 40);

            sub_22B0C2138(v26);
            v39 = sub_22B07B428(v37, v38, &v51);

            *(v29 + 24) = v39;
            swift_arrayDestroy();
            MEMORY[0x23188A520](v30, -1, -1);
            MEMORY[0x23188A520](v29, -1, -1);
          }

          else
          {

            sub_22B0C2138(v26);
            sub_22B0C2138(v25);
            sub_22B0C2138(v24);
          }

          return;
        }

        sub_22B07D124(v20, v52 + 1);
        v21 = v53;
        v22 = v54;
        __swift_project_boxed_opaque_existential_1((v52 + 1), v53);
        (*(v22 + 8))(v52, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_0((v52 + 1));
        if (LOBYTE(v52[0]) && LOBYTE(v52[0]) != 2)
        {

          if (qword_27D8B53C8 == -1)
          {
            goto LABEL_9;
          }

          goto LABEL_17;
        }

        ++v18;
        v20 += 40;
      }

      while (v17 != v18);
      do
      {
        sub_22B07D124(v19, v52 + 1);
        v40 = v53;
        v41 = v54;
        __swift_project_boxed_opaque_existential_1((v52 + 1), v53);
        (*(v41 + 16))(a2, v40, v41);
        __swift_destroy_boxed_opaque_existential_0((v52 + 1));
        v19 += 40;
        --v17;
      }

      while (v17);
    }

    v42 = sub_22B089030(v13, a2);
    if (v42)
    {
      v43 = v42;
      v44 = sub_22B0DF300();
      v45 = sub_22B0DF300();
      [v13 createDraft:v43 forProcessNamed:v44 withDisplayReason:v45];
    }
  }
}

uint64_t sub_22B0C1F9C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t TapToRadarManager.deinit()
{
  swift_unknownObjectRelease();

  sub_22B0C2138(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft);

  sub_22B0C2274(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters + 8);
  return v0;
}

uint64_t TapToRadarManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_22B0C2138(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_defaultDraft);

  sub_22B0C2274(v0 + OBJC_IVAR____TtC14HomeKitMetrics17TapToRadarManager_filters + 8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0C20D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0C2138(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B0C2194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22B0C21F8()
{
  v1 = *(type metadata accessor for TapToRadarDraft(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_22B0C1B1C(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for TapToRadarManager(uint64_t a1)
{
  result = qword_27D8B6328;
  if (!qword_27D8B6328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0C230C(uint64_t a1)
{
  result = type metadata accessor for TapToRadarDraft(319);
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

unint64_t sub_22B0C23F0()
{
  result = qword_27D8B6340;
  if (!qword_27D8B6340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B6340);
  }

  return result;
}

uint64_t sub_22B0C243C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B0C2484(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22B0C24D8(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_22B0C24FC, 0, 0);
}

uint64_t sub_22B0C24FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_22B0A3DB0;
    v3 = *(v0 + 64);

    return sub_22B0C25EC(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22B0C25EC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 168) = a1;
  *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C30, &unk_22B0E60A0);
  *(v2 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  v3 = sub_22B0DF0E0();
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C2754, 0, 0);
}

uint64_t sub_22B0C2754()
{
  if (*(v0 + 168))
  {
    goto LABEL_2;
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 16);
  v13 = *(v12 + 88);
  v14 = [v13 startOfCurrentDay];
  sub_22B0DF0B0();

  v15 = (*(v12 + 80) + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v15 + *(v16 + 28), v11);
  os_unfair_lock_unlock(v15);
  v56 = v13;
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 56);
  v19 = *(v0 + 64);
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  v55 = v18[2];
  v55(v20, *(v0 + 96), v17);
  v54 = v18[7];
  v54(v20, 0, 1, v17);
  v23 = *(v22 + 48);
  sub_22B0898A8(v19, v21, &unk_27D8B5670, &unk_22B0E32C0);
  sub_22B0898A8(v20, v21 + v23, &unk_27D8B5670, &unk_22B0E32C0);
  v24 = v18[6];
  v25 = v24(v21, 1, v17);
  v26 = *(v0 + 72);
  if (v25 == 1)
  {
    v27 = *(v0 + 64);
    sub_22B07D02C(*(v0 + 56), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v27, &unk_27D8B5670, &unk_22B0E32C0);
    if (v24(v21 + v23, 1, v26) == 1)
    {
      v28 = *(v0 + 80);
      sub_22B07D02C(*(v0 + 32), &unk_27D8B5670, &unk_22B0E32C0);
      (*(v28 + 8))(*(v0 + 96), *(v0 + 72));
      goto LABEL_20;
    }
  }

  else
  {
    sub_22B0898A8(*(v0 + 32), *(v0 + 48), &unk_27D8B5670, &unk_22B0E32C0);
    if (v24(v21 + v23, 1, v26) != 1)
    {
      v44 = *(v0 + 80);
      v43 = *(v0 + 88);
      v45 = *(v0 + 72);
      v46 = *(v0 + 48);
      v52 = *(v0 + 56);
      v53 = *(v0 + 64);
      v47 = *(v0 + 32);
      (*(v44 + 32))(v43, v21 + v23, v45);
      sub_22B076354(&qword_2813EAD70, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v48 = sub_22B0DF2F0();
      v49 = *(v44 + 8);
      v49(v43, v45);
      sub_22B07D02C(v52, &unk_27D8B5670, &unk_22B0E32C0);
      sub_22B07D02C(v53, &unk_27D8B5670, &unk_22B0E32C0);
      v49(v46, v45);
      sub_22B07D02C(v47, &unk_27D8B5670, &unk_22B0E32C0);
      if (v48)
      {
        v49(*(v0 + 96), *(v0 + 72));
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    v31 = *(v0 + 64);
    v32 = *(v0 + 48);
    sub_22B07D02C(*(v0 + 56), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v31, &unk_27D8B5670, &unk_22B0E32C0);
    (*(v30 + 8))(v32, v29);
  }

  sub_22B07D02C(*(v0 + 32), &qword_27D8B5C30, &unk_22B0E60A0);
LABEL_15:
  v33 = *(v0 + 88);
  v34 = *(v0 + 72);
  v35 = *(v0 + 80);
  v36 = [v56 currentDate];
  sub_22B0DF0B0();

  sub_22B0DEFC0();
  v38 = v37;
  v39 = *(v35 + 8);
  v39(v33, v34);
  v40 = *(v0 + 96);
  v41 = *(v0 + 72);
  if (v38 >= 300.0)
  {
    v42 = *(v0 + 40);
    v55(v42, *(v0 + 96), *(v0 + 72));
    v54(v42, 0, 1, v41);
    RunDatePreferencesStorage.lastRunDate.setter(v42);
    v39(v40, v41);
LABEL_2:
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v1 = sub_22B0DF1B0();
    __swift_project_value_buffer(v1, qword_2813EBE78);
    v2 = sub_22B0DF190();
    v3 = sub_22B0DF670();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 168);
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_22B074000, v2, v3, "Running daily blocks with isDebug = %{BOOL}d...", v5, 8u);
      MEMORY[0x23188A520](v5, -1, -1);
    }

    v6 = *(v0 + 16);
    v7 = *(v0 + 168);

    os_unfair_lock_lock((v6 + 56));
    v8 = *(v6 + 72);
    *(v0 + 104) = v8;
    *(v0 + 112) = *(v6 + 64);

    os_unfair_lock_unlock((v6 + 56));
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_22B0C2E68;

    return MEMORY[0x2822007C0]();
  }

  v39(*(v0 + 96), *(v0 + 72));
LABEL_20:

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_22B0C2E68()
{

  return MEMORY[0x2822009F8](sub_22B0C2F80, 0, 0);
}

uint64_t sub_22B0C2F80()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  v3 = *(v0 + 168);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_22B0C306C;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0C306C()
{

  return MEMORY[0x2822009F8](sub_22B0C31A0, 0, 0);
}

uint64_t sub_22B0C31A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_22B0C3288;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0C3288()
{

  return MEMORY[0x2822009F8](sub_22B0C33BC, 0, 0);
}

uint64_t sub_22B0C33BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B0C3468(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C3514, 0, 0);
}

uint64_t sub_22B0C3514()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v23 = *(v0 + 104);
    v3 = (v1 + 72);
    do
    {
      v6 = *(v3 - 3);
      if (v6)
      {
        v25 = v2;
        v7 = *(v3 - 2);
        v26 = *(v3 - 1);
        v27 = *v3;
        v9 = *(v0 + 88);
        v8 = *(v0 + 96);
        v10 = sub_22B0DF5C0();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v8, 1, 1, v10);
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 32) = v6;
        *(v12 + 40) = v7;
        *(v12 + 48) = v23;
        sub_22B0898A8(v8, v9, &qword_27D8B5C38, &qword_22B0E5480);
        v24 = v11;
        v13 = v11;
        v14 = v6;
        LODWORD(v9) = (*(v13 + 48))(v9, 1, v10);
        sub_22B0A7418(v6, v7);
        sub_22B0A7418(v6, v7);
        sub_22B0A7418(v6, v7);

        sub_22B0A7418(v26, v27);
        v15 = *(v0 + 88);
        if (v9 == 1)
        {
          sub_22B07D02C(*(v0 + 88), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v24 + 8))(v15, v10);
        }

        if (*(v12 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_22B0DF570();
          v18 = v17;
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        v19 = **(v0 + 72);
        v20 = swift_allocObject();
        *(v20 + 16) = &unk_22B0E6110;
        *(v20 + 24) = v12;

        if (v18 | v16)
        {
          v4 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v16;
          *(v0 + 40) = v18;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 96);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v19;
        swift_task_create();

        sub_22B094864(v14, v7);
        sub_22B094864(v26, v27);

        sub_22B094864(v14, v7);
        sub_22B07D02C(v5, &qword_27D8B5C38, &qword_22B0E5480);
        v2 = v25;
      }

      v3 += 6;
      --v2;
    }

    while (v2);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B0C38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C396C, 0, 0);
}

uint64_t sub_22B0C396C(__n128 a1)
{
  v54 = v1;
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v45 = *(v1 + 128);
    v4 = *(v1 + 104);
    v5 = (v2 + 72);
    v44 = **(v1 + 88);
    v43 = v4[12];
    v42 = v4[13];
    v41 = v4[14];
    a1.n128_u64[0] = 136315138;
    v40 = a1;
    do
    {
      v49 = v3;
      v9 = *(v5 - 5);
      v8 = *(v5 - 4);
      v10 = *(v5 - 2);
      v11 = *v5;
      v46 = *(v5 - 1);
      v47 = *(v5 - 3);
      v12 = qword_2813E9AA0;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_22B0DF1B0();
      __swift_project_value_buffer(v13, qword_2813EBE78);

      v14 = sub_22B0DF190();
      v15 = sub_22B0DF670();

      v51 = v11;
      v48 = v5;
      v50 = v8;
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v52 = v17;
        *v16 = v40.n128_u32[0];
        *(v16 + 4) = sub_22B07B428(v9, v8, &v52);
        _os_log_impl(&dword_22B074000, v14, v15, "Running daily block %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x23188A520](v17, -1, -1);
        MEMORY[0x23188A520](v16, -1, -1);
      }

      v18 = *(v1 + 112);
      v19 = *(v1 + 120);
      v20 = type metadata accessor for BlockSchedulerLogEvent();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
      v52 = v43;
      v53 = v42;

      MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
      v22 = v53;
      v23 = &v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
      *v23 = v52;
      v23[1] = v22;
      v24 = 0x6669636570736E55;
      if (v10)
      {
        v24 = v47;
      }

      v25 = 0xEB00000000646569;
      if (v10)
      {
        v25 = v10;
      }

      v26 = &v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
      *v26 = v24;
      v26[1] = v25;
      v27 = &v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
      *v27 = 0;
      v27[8] = 1;
      v21[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = 1;
      *(v1 + 72) = v21;
      *(v1 + 80) = v20;
      v28 = objc_msgSendSuper2((v1 + 72), sel_init, *&v40);
      [v41 submitLogEvent_];

      v29 = sub_22B0DF5C0();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v19, 1, 1, v29);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = v9;
      *(v31 + 40) = v50;
      *(v31 + 48) = v47;
      *(v31 + 56) = v10;
      *(v31 + 64) = v46;
      *(v31 + 72) = v51;
      *(v31 + 80) = v45;
      sub_22B0898A8(v19, v18, &qword_27D8B5C38, &qword_22B0E5480);
      v32 = (*(v30 + 48))(v18, 1, v29);

      v33 = *(v1 + 112);
      if (v32 == 1)
      {
        sub_22B07D02C(*(v1 + 112), &qword_27D8B5C38, &qword_22B0E5480);
      }

      else
      {
        sub_22B0DF5B0();
        (*(v30 + 8))(v33, v29);
      }

      if (*(v31 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = sub_22B0DF570();
        v36 = v35;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = swift_allocObject();
      *(v37 + 16) = &unk_22B0E6100;
      *(v37 + 24) = v31;

      if (v36 | v34)
      {
        v6 = v1 + 16;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = v34;
        *(v1 + 40) = v36;
      }

      else
      {
        v6 = 0;
      }

      v5 = v48 + 6;
      v7 = *(v1 + 120);
      *(v1 + 48) = 1;
      *(v1 + 56) = v6;
      *(v1 + 64) = v44;
      swift_task_create();

      sub_22B07D02C(v7, &qword_27D8B5C38, &qword_22B0E5480);
      v3 = v49 - 1;
    }

    while (v49 != 1);
  }

  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_22B0C3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a3 + 32) + **(a3 + 32));
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22B0A5698;

  return v8(a4);
}

uint64_t sub_22B0C4048(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C40F4, 0, 0);
}

uint64_t sub_22B0C40F4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v23 = *(v0 + 104);
    v3 = (v1 + 72);
    do
    {
      v6 = *(v3 - 1);
      if (v6)
      {
        v26 = v2;
        v24 = *(v3 - 3);
        v27 = *(v3 - 2);
        v7 = *v3;
        v9 = *(v0 + 88);
        v8 = *(v0 + 96);
        v10 = sub_22B0DF5C0();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v8, 1, 1, v10);
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 32) = v6;
        *(v12 + 40) = v7;
        *(v12 + 48) = v23;
        sub_22B0898A8(v8, v9, &qword_27D8B5C38, &qword_22B0E5480);
        v25 = v11;
        v13 = v11;
        v14 = v6;
        LODWORD(v9) = (*(v13 + 48))(v9, 1, v10);
        sub_22B0A7418(v6, v7);
        sub_22B0A7418(v6, v7);
        sub_22B0A7418(v6, v7);

        sub_22B0A7418(v24, v27);
        v15 = *(v0 + 88);
        if (v9 == 1)
        {
          sub_22B07D02C(*(v0 + 88), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v25 + 8))(v15, v10);
        }

        if (*(v12 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_22B0DF570();
          v18 = v17;
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0;
          v18 = 0;
        }

        v19 = **(v0 + 72);
        v20 = swift_allocObject();
        *(v20 + 16) = &unk_22B0E4B40;
        *(v20 + 24) = v12;

        if (v18 | v16)
        {
          v4 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v16;
          *(v0 + 40) = v18;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 96);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v19;
        swift_task_create();

        sub_22B094864(v24, v27);
        sub_22B094864(v14, v7);

        sub_22B094864(v14, v7);
        sub_22B07D02C(v5, &qword_27D8B5C38, &qword_22B0E5480);
        v2 = v26;
      }

      v3 += 6;
      --v2;
    }

    while (v2);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B0C44A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v5;
  *(v3 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v6;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5C60, &unk_22B0E4BB0);
  v9 = swift_allocObject();
  v10 = *(*v9 + 128);
  v11 = sub_22B0DF990();
  v12 = *(*(v11 - 8) + 56);
  v12(&v9[v10], 1, 1, v11);
  v12(&v9[*(*v9 + 136)], 1, 1, v11);
  *(v9 + 2) = 0xD000000000000011;
  *(v9 + 3) = 0x800000022B0E7320;
  *(v9 + 4) = 0xD000000000000011;
  *(v9 + 5) = 0x800000022B0E7320;
  *(v9 + 6) = &unk_22B0E6010;
  *(v9 + 7) = v7;
  *(v9 + 8) = a2;
  *(v9 + 9) = a3;
  v13 = &v8[*(*v8 + 136)];
  sub_22B0898A8(a1, v18, &qword_27D8B65A0, &qword_22B0E5FD8);
  swift_retain_n();
  os_unfair_lock_lock(v13);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  sub_22B0C5BF8(v13 + v14, 0xD000000000000011, 0x800000022B0E7320, v9);
  os_unfair_lock_unlock(v13);
  os_unfair_lock_lock(v13);
  sub_22B0C5F44((&v13->_os_unfair_lock_opaque + v14), v9, v8);
  os_unfair_lock_unlock(v13);

  sub_22B07D02C(a1, &qword_27D8B65A0, &qword_22B0E5FD8);

  return v3;
}

uint64_t sub_22B0C4718()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22B0C47A4();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B0C47A4()
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v1 = getpid();
  v2 = proc_pid_rusage(v1, 6, buffer);
  if (v2)
  {
    v3 = v2;
    sub_22B07BA9C(0, &qword_27D8B5CE8, 0x277D86200);
    v4 = sub_22B0DF760();
    v5 = sub_22B0DF6A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_22B074000, v4, v5, "Unable to retrieve memory foot-print, result: %d", v6, 8u);
      MEMORY[0x23188A520](v6, -1, -1);
    }
  }

  else
  {
    v7 = *(&v16 + 1);
    v8 = *(&v29 + 1);
    proc_reset_footprint_interval();
    v9 = type metadata accessor for ProcessMemorySampleLogEvent();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_currentMemoryUsage] = v7;
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_intervalMaxMemoryUsage] = v8;
    v11.receiver = v10;
    v11.super_class = v9;
    v4 = objc_msgSendSuper2(&v11, sel_init);
    [*(v0 + 48) submitLogEvent_];
  }
}

uint64_t sub_22B0C4984()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22B0C4A0C();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_22B0C4A0C()
{
  v1 = v0;
  v51 = sub_22B0DF0E0();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  v6 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  v7 = [v6[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v8 = *v1;
  v9 = *v5;
  v10 = *(v1 + *((*v5 & *v1) + 0x90));
  if (v10)
  {
    v12 = *(v1 + *((*v5 & *v1) + 0x70));
    if (!v12)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    os_unfair_lock_lock(v12 + 22);
    sub_22B097390();
    v13 = sub_22B099028(0xD000000000000015, 0x800000022B0E73D0, v4);
    v15 = v14;

    os_unfair_lock_unlock(v12 + 22);
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    v50 = v16;
    v8 = *v1;
    v9 = *v5;
    if ((v10 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v50 = 0;
    if ((v10 & 2) == 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_14;
    }
  }

  v17 = *(v1 + *((v9 & v8) + 0x70));
  if (!v17)
  {
LABEL_33:
    __break(1u);
    return;
  }

  os_unfair_lock_lock(v17 + 22);
  sub_22B097390();
  v18 = sub_22B099028(0xD000000000000016, 0x800000022B0E73F0, v4);
  v20 = v19;

  os_unfair_lock_unlock(v17 + 22);
  if (v20)
  {
    v11 = 0;
  }

  else
  {
    v11 = v18;
  }

  v8 = *v1;
  v9 = *v5;
LABEL_14:
  v21 = *(v1 + *((v9 & v8) + 0x70));
  if (!v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  os_unfair_lock_lock(v21 + 22);
  sub_22B0975F8();
  sub_22B09D024(v4);
  v23 = v22;
  if (*(v22 + 16) && (v24 = sub_22B0768A8(0x694879726F6D656DLL, 0xEF72657461776867), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 40 * v24 + 8);

    v27 = 0;
  }

  else
  {

    v26 = 0;
    v27 = 1;
  }

  os_unfair_lock_unlock(v21 + 22);
  os_unfair_lock_lock(v21 + 22);
  sub_22B0975F8();
  sub_22B09D024(v4);
  v29 = v28;
  if (!*(v28 + 16))
  {
    goto LABEL_25;
  }

  v30 = sub_22B0768A8(0x615379726F6D656DLL, 0xEC000000656C706DLL);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

  v32 = *(v29 + 56) + 40 * v30;
  v34 = *(v32 + 16);
  v33 = *(v32 + 24);

  os_unfair_lock_unlock(v21 + 22);
  v35 = v33 / v34;
  if (COERCE__INT64(fabs(v35)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v35 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v35 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:

    os_unfair_lock_unlock(v21 + 22);
    v35 = 0.0;
  }

  v36 = (v10 & 2) == 0;
  v37 = (v10 & 1) == 0;
  if (v27)
  {
    v26 = 0;
  }

  v39 = *v6;
  v38 = v6[1];
  v60 = v37;
  v59 = v36;
  v49 = v4;
  v40 = v6;
  v41 = v35 & ~(v35 >> 63);
  v57 = v35 < 1;
  v55 = v27;
  v42 = type metadata accessor for ProcessMemorySummaryLogEvent();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v53 = v39;
  v54 = v38;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E7430);
  v44 = v54;
  v45 = &v43[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventName];
  *v45 = v53;
  *(v45 + 1) = v44;
  v46 = &v43[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts];
  *v46 = v50;
  v46[8] = v60;
  *(v46 + 9) = v53;
  *(v46 + 3) = *(&v53 + 3);
  *(v46 + 2) = v11;
  v46[24] = v59;
  *(v46 + 25) = *v58;
  *(v46 + 7) = *&v58[3];
  *(v46 + 4) = v41;
  v46[40] = v57;
  LODWORD(v44) = *v56;
  *(v46 + 11) = *&v56[3];
  *(v46 + 41) = v44;
  *(v46 + 6) = v26;
  v46[56] = v55;
  v52.receiver = v43;
  v52.super_class = v42;
  v47 = objc_msgSendSuper2(&v52, sel_init);
  [v40[4] submitLogEvent_];

  (*(v2 + 8))(v49, v51);
}

id sub_22B0C4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x277D85000];
  v10 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v11 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v11;
  *(v10 + 8) = *(a1 + 64);
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  type metadata accessor for NamedGroupSpecifier();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000011;
  *(v13 + 24) = 0x800000022B0E74C0;
  sub_22B0898A8(a1, v30, &qword_27D8B65A0, &qword_22B0E5FD8);
  v14 = sub_22B08C5E8(v13);

  *(v4 + *((*v9 & *v4) + 0x78)) = v14;
  v15 = (v4 + *((*v9 & *v4) + 0x80));
  *v15 = a2;
  v15[1] = a3;
  v29.receiver = v4;
  v29.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v29, sel_init);
  v17 = *(a1 + 40);
  type metadata accessor for ProcessLaunchLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v16;
  [v17 addObserver:v19 forEventClass:ObjCClassFromMetadata];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(a1 + 56);

  os_unfair_lock_lock((v21 + 56));
  v22 = *(v21 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 64) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = v22[2];

    *(v21 + 64) = sub_22B0831BC(0, v28 + 1, 1, v22);

    v22 = *(v21 + 64);
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_22B0831BC((v24 > 1), v25 + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  v22[2] = v25 + 1;
  v26 = *(v21 + 64) + 48 * v25;
  strcpy((v26 + 32), "ProcessLaunch");
  *(v26 + 46) = -4864;
  *(v26 + 48) = xmmword_22B0E5E30;
  *(v26 + 64) = &unk_22B0E6080;
  *(v26 + 72) = v20;
  os_unfair_lock_unlock((v21 + 56));

  sub_22B07D02C(a1, &qword_27D8B65A0, &qword_22B0E5FD8);

  return v19;
}

uint64_t sub_22B0C529C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22B0C5324();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B0C5324()
{
  v1 = sub_22B0DF0E0();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D85000];
  v5 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  v6 = [v5[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v7 = *(v0 + *((*v4 & *v0) + 0x78));
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v44 = sub_22B099028(0x736568636E75616CLL, 0xE800000000000000, v3);
  LOBYTE(v6) = v8;

  os_unfair_lock_unlock(v7 + 22);
  v58 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v43 = sub_22B099028(0x6C616D726F6E6261, 0xEC00000074697845, v3);
  LOBYTE(v6) = v9;

  os_unfair_lock_unlock(v7 + 22);
  v57 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v42 = sub_22B099028(0x7261746E756C6F76, 0xED00007469784579, v3);
  LOBYTE(v6) = v10;

  os_unfair_lock_unlock(v7 + 22);
  v56 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v41 = sub_22B099028(0x6D617374656ALL, 0xE600000000000000, v3);
  LOBYTE(v6) = v11;

  os_unfair_lock_unlock(v7 + 22);
  v55 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v40 = sub_22B099028(0x6574617768676968, 0xE900000000000072, v3);
  LOBYTE(v6) = v12;

  os_unfair_lock_unlock(v7 + 22);
  v54 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v39 = sub_22B099028(0x4C737365636F7270, 0xEC00000074696D69, v3);
  LOBYTE(v6) = v13;

  os_unfair_lock_unlock(v7 + 22);
  v53 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v38 = sub_22B099028(0x74697845656C6469, 0xE800000000000000, v3);
  LOBYTE(v6) = v14;

  os_unfair_lock_unlock(v7 + 22);
  v52 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v37 = sub_22B099028(0x6873617263, 0xE500000000000000, v3);
  LOBYTE(v6) = v15;

  os_unfair_lock_unlock(v7 + 22);
  v51 = v6 & 1;
  os_unfair_lock_lock(v7 + 22);
  sub_22B097390();
  v36 = sub_22B099028(0x676F646863746177, 0xE800000000000000, v3);
  v17 = v16;

  os_unfair_lock_unlock(v7 + 22);
  v18 = v17 & 1;
  v50 = v17 & 1;
  v35 = v5;
  v20 = *v5;
  v19 = v5[1];
  LOBYTE(v5) = v58;
  LOBYTE(v4) = v57;
  v21 = v56;
  v30 = v55;
  v31 = v54;
  v32 = v53;
  v33 = v52;
  v34 = v51;
  v22 = type metadata accessor for ProcessLaunchSummaryLogEvent();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v48 = v20;
  v49 = v19;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);
  v24 = v49;
  v25 = &v23[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v25 = v48;
  *(v25 + 1) = v24;
  v26 = &v23[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  *v26 = v44;
  v26[8] = v5;
  *(v26 + 9) = v48;
  *(v26 + 3) = *(&v48 + 3);
  *(v26 + 2) = v43;
  v26[24] = v4;
  *(v26 + 25) = *v65;
  *(v26 + 7) = *&v65[3];
  *(v26 + 4) = v42;
  v26[40] = v21;
  *(v26 + 41) = *v64;
  *(v26 + 11) = *&v64[3];
  *(v26 + 6) = v41;
  v26[56] = v30;
  LODWORD(v24) = *v63;
  *(v26 + 15) = *&v63[3];
  *(v26 + 57) = v24;
  *(v26 + 8) = v40;
  v26[72] = v31;
  LODWORD(v24) = *v62;
  *(v26 + 19) = *&v62[3];
  *(v26 + 73) = v24;
  *(v26 + 10) = v39;
  v26[88] = v32;
  LODWORD(v24) = *v61;
  *(v26 + 23) = *&v61[3];
  *(v26 + 89) = v24;
  *(v26 + 12) = v38;
  v26[104] = v33;
  LODWORD(v24) = *v60;
  *(v26 + 27) = *&v60[3];
  *(v26 + 105) = v24;
  *(v26 + 14) = v37;
  v26[120] = v34;
  LODWORD(v24) = *v59;
  *(v26 + 31) = *&v59[3];
  *(v26 + 121) = v24;
  *(v26 + 16) = v36;
  v26[136] = v18;
  v47.receiver = v23;
  v47.super_class = v22;
  v27 = objc_msgSendSuper2(&v47, sel_init);
  [v35[4] submitLogEvent_];

  return (*(v45 + 8))(v3, v46);
}

void sub_22B0C59B4(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_22B0DF990();
  sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22B0DF9D0();
  v9 = v2[8];
  v10 = v3[9];
  sub_22B0DFDE0();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v15 = v9;
  *(&v15 + 1) = v10;
  if (!__OFADD__(v11, 1))
  {
    sub_22B0DFA00();
    v15 = v14;
    sub_22B0DF9C0();
    v12 = *(v8 - 8);
    (*(v12 + 16))(v7, a2, v8);
    (*(v12 + 56))(v7, 0, 1, v8);
    v13 = *(*v3 + 136);
    swift_beginAccess();
    sub_22B0CDF00(v7, v3 + v13);
    swift_endAccess();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_22B0C5BF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {

    MEMORY[0x231889140](v5);
    if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B0DF4D0();
    }

    sub_22B0DF500();
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v8 = sub_22B0DF1B0();
    __swift_project_value_buffer(v8, qword_2813EBE78);

    v9 = sub_22B0DF190();
    v10 = sub_22B0DF690();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B07B428(a2, a3, &v13);
      _os_log_impl(&dword_22B074000, v9, v10, "Trying to schedule block %s while the scheduler is not running. Ignoring.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23188A520](v12, -1, -1);
      MEMORY[0x23188A520](v11, -1, -1);
    }
  }
}

uint64_t sub_22B0C5DB8(uint64_t a1)
{
  sub_22B0DF990();
  sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22B0DF9D0();
  v1 = sub_22B0DFDD0();
  v2 = v1 / 3600;
  v3 = v1 % 60;
  v4 = v1 / 60 % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84A28];
  *(v5 + 16) = xmmword_22B0E2C10;
  v7 = MEMORY[0x277D84A90];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = v3;
  v8 = sub_22B0DF340();
  MEMORY[0x231889070](v8);

  return 11092;
}

char *sub_22B0C5F44(void *a1, uint64_t a2, char *a3)
{
  v42 = a1;
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B65C0, &unk_22B0E6018);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = sub_22B0DF990();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  sub_22B0DF9B0();
  sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  v18 = v42;
  sub_22B0DFCB0();
  v47 = a3;
  sub_22B0C59B4(v17);
  v19 = v15;
  v20 = v11;
  v43 = *(v12 + 8);
  v44 = v12 + 8;
  v43(v19, v11);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v21 = *(v50 + 44);
  sub_22B0898A8(v18 + v21, v10, &qword_27D8B65C0, &unk_22B0E6018);
  v48 = *(v12 + 48);
  v49 = v12 + 48;
  v22 = v48(v10, 1, v11);
  sub_22B07D02C(v10, &qword_27D8B65C0, &unk_22B0E6018);
  if (v22 == 1)
  {
    goto LABEL_4;
  }

  v23 = v46;
  sub_22B0898A8(v18 + v21, v46, &qword_27D8B65C0, &unk_22B0E6018);
  result = v48(v23, 1, v11);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  sub_22B076354(&unk_2813E9950, MEMORY[0x277D858F8], MEMORY[0x277D85910]);
  v25 = sub_22B0DF2C0();
  v43(v23, v11);
  if (v25)
  {
LABEL_4:
    sub_22B0C6594(v17, v18);
  }

  v26 = *(v50 + 48);
  v27 = *(v18 + v26);
  v28 = v27 >> 62;
  if (v27 >> 62)
  {
    goto LABEL_33;
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return (v43)(v17, v20);
  }

LABEL_7:
  v40 = v28;
  v41 = v17;
  v28 = v18[1];
  v50 = v27;
  v39 = v26;
  if (v28 >> 62)
  {
    result = sub_22B0DF830();
    v47 = result;
  }

  else
  {
    v47 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v20;
  if (v47)
  {
    v27 = 0;
    v18 = &unk_22B0E6018;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318895C0](v27, v28);
        v29 = result;
        v17 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
LABEL_19:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          result = sub_22B0DF830();
          if (!result)
          {
            return (v43)(v17, v20);
          }

          goto LABEL_7;
        }

        v29 = *(v28 + 8 * v27 + 32);

        v17 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          goto LABEL_19;
        }
      }

      v30 = *(*v29 + 136);
      swift_beginAccess();
      v31 = v29 + v30;
      v32 = v45;
      sub_22B0898A8(v31, v45, &qword_27D8B65C0, &unk_22B0E6018);
      v20 = v32;

      v33 = v32;
      v26 = v46;
      if (v48(v33, 1, v46) == 1)
      {
        v43(v41, v26);
        return sub_22B07D02C(v20, &qword_27D8B65C0, &unk_22B0E6018);
      }

      result = sub_22B07D02C(v20, &qword_27D8B65C0, &unk_22B0E6018);
      ++v27;
    }

    while (v17 != v47);
  }

  if (v40)
  {
    v34 = v50;
    result = sub_22B0DF830();
    v35 = result;
    v36 = v42;
    if (!result)
    {
      goto LABEL_29;
    }

LABEL_22:
    if (v35 >= 1)
    {

      v37 = 0;
      do
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318895C0](v37, v50);
        }

        else
        {
        }

        ++v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
        sub_22B0DF580();
      }

      while (v35 != v37);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_38;
  }

  v34 = v50;
  v35 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v42;
  if (v35)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_30:
  v43(v41, v46);
  result = swift_bridgeObjectRelease_n();
  *(v36 + v39) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22B0C6594(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v40 - v6;
  v7 = sub_22B0DF990();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = v10;
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v13 = sub_22B0DF1B0();
  __swift_project_value_buffer(v13, qword_2813EBE78);
  v14 = *(v8 + 16);
  v42 = v8 + 16;
  v43 = v14;
  v14(v12, a1, v7);

  v15 = sub_22B0DF190();
  v16 = sub_22B0DF670();

  v17 = os_log_type_enabled(v15, v16);
  v48 = a1;
  v46 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136446210;
    v20 = sub_22B0C5DB8(v12);
    v41 = a2;
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_22B07B428(v20, v22, &v49);
    a2 = v41;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B074000, v15, v16, "Scheduled next run for T+%{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188A520](v19, -1, -1);
    MEMORY[0x23188A520](v18, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    sub_22B0DF5D0();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F10, &unk_22B0E54E0);
  v41 = v24;
  v26 = *(v25 + 44);
  v27 = a2;
  sub_22B07D02C(a2 + v26, &qword_27D8B65C0, &unk_22B0E6018);
  v28 = v43;
  v43((a2 + v26), v48, v7);
  (*(v8 + 56))(a2 + v26, 0, 1, v7);
  v29 = v46;
  v30 = *(*v46 + 104);
  v31 = sub_22B0DF5C0();
  v32 = *(v31 - 8);
  v33 = v47;
  (*(v32 + 16))(v47, v29 + v30, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = v45;
  v28(v45, v48, v7);
  v36 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = v34;
  (*(v8 + 32))(&v37[v36], v35, v7);
  v38 = sub_22B0C8B9C(0, 0, v33, &unk_22B0E6030, v37);
  sub_22B07D02C(v33, &qword_27D8B5C38, &qword_22B0E5480);

  *(v27 + 16) = v38;
  return result;
}

uint64_t sub_22B0C6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_22B0DF990();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v7 = sub_22B0DF9B0();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0C6BAC, 0, 0);
}

uint64_t sub_22B0C6BAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v5 + 16))(v2, Strong + *(*Strong + 96), v4);

    (*(v5 + 32))(v3, v2, v4);
    v9 = sub_22B076354(&unk_2813E9930, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_22B0DFCB0();
    sub_22B076354(&unk_2813E9940, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_22B0DF9D0();
    (*(v7 + 8))(v6, v8);
    *(v0 + 120) = *(v0 + 104);
    sub_22B0DF9F0();
    *(v0 + 64) = *(v0 + 88);
    *(v0 + 80) = 0;
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_22B0C6EFC;
    v11 = *(v0 + 184);
    v12 = *(v0 + 152);

    return MEMORY[0x2822008C8](v12, v0 + 64, v11, v9);
  }

  else
  {
    if (qword_2813E9AA0 != -1)
    {
      swift_once();
    }

    v13 = sub_22B0DF1B0();
    __swift_project_value_buffer(v13, qword_2813EBE78);
    v14 = sub_22B0DF190();
    v15 = sub_22B0DF670();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B074000, v14, v15, "Weak self is nil", v16, 2u);
      MEMORY[0x23188A520](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}