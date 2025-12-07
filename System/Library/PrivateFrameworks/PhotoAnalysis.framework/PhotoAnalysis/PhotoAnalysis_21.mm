void sub_22FC36A84(uint64_t a1)
{
  sub_22FCC6794();
  if (v1 <= 0x3F)
  {
    sub_22FB1CD70(319, &qword_28147AF00, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_22FB1CD70(319, &qword_28147AEF8, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_22FB1CD70(319, &qword_28147AD80, MEMORY[0x277D83E88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FC36BA8(uint64_t a1)
{
  sub_22FC36C98(319, &qword_28147AF98, type metadata accessor for TaskRecord);
  if (v1 <= 0x3F)
  {
    sub_22FC36C98(319, &qword_28147AFB0, type metadata accessor for PhotoKitChangeToken);
    if (v2 <= 0x3F)
    {
      sub_22FC369C8(319, qword_28147B350, type metadata accessor for Metadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FC36C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FCC89F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FC36D44(uint64_t a1)
{
  result = sub_22FCC6794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FC36DC0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = sub_22FCC68D4();
  v142 = *(v7 - 8);
  v143 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v146 = v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v138 - v12;
  v14 = type metadata accessor for TaskRecord(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22FCC6794();
  v147 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v140 = v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v139 = v138 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v144 = v138 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v141 = v138 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = v138 - v33;
  v153[3] = a3;
  v153[4] = a4;
  v148 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v153);
  (*(*(a3 - 1) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_22FC35168(v153, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v36 = a3;
    v37 = v148;
    sub_22FA2B420(v13, &qword_27DAD84B8, &unk_22FCD64A0);
    sub_22FA2D328(v153, &v150);
    v38 = sub_22FCC8664();
    v39 = sub_22FCC8F34();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v149 = v41;
      *v40 = 136446210;
      __swift_project_boxed_opaque_existential_1(&v150, v152);
      v42 = (*(v37 + 40))(v36, v37);
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_0(&v150);
      v45 = sub_22FA2F600(v42, v44, &v149);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_22FA28000, v38, v39, "Task %{public}s was never run previously, due now", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23190A000](v41, -1, -1);
      MEMORY[0x23190A000](v40, -1, -1);

LABEL_16:
      v84 = 1;
      goto LABEL_17;
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(&v150);
    goto LABEL_16;
  }

  sub_22FC3B2C0(v13, v18, type metadata accessor for TaskRecord);
  v46 = v147;
  (*(v147 + 32))(v34, &v18[*(v14 + 20)], v19);
  sub_22FCC6734();
  v48 = sub_22FC3B88C(fabs(v47));
  v50 = v49;
  v51 = sub_22FC3B3DC(&qword_281482528, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v145 = v34;
  v150 = sub_22FCC96C4();
  v151 = v52;
  MEMORY[0x231907FA0](10272, 0xE200000000000000);
  MEMORY[0x231907FA0](v48, v50);

  MEMORY[0x231907FA0](0x296F676120, 0xE500000000000000);
  v54 = v150;
  v53 = v151;
  v55 = (*(v148 + 64))(a3);
  v56 = v19;
  v57 = a3;
  if (v55 == -1.0)
  {
    sub_22FA2D328(v153, &v150);

    v58 = sub_22FCC8664();
    v59 = sub_22FCC8F34();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v144 = v56;
      v61 = v54;
      v62 = v53;
      v63 = v60;
      v64 = swift_slowAlloc();
      v149 = v64;
      *v63 = 136446466;
      __swift_project_boxed_opaque_existential_1(&v150, v152);
      v65 = (*(v148 + 40))(v57);
      v66 = v46;
      v68 = v67;
      __swift_destroy_boxed_opaque_existential_0(&v150);
      v69 = sub_22FA2F600(v65, v68, &v149);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2082;
      v70 = sub_22FA2F600(v61, v62, &v149);

      *(v63 + 14) = v70;
      _os_log_impl(&dword_22FA28000, v58, v59, "Last task %{public}s ran on %{public}s, task is due now (PHATaskIgnorePeriodValue)", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v64, -1, -1);
      MEMORY[0x23190A000](v63, -1, -1);

LABEL_7:
      (*(v66 + 8))(v145, v144);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v138[1] = v51;
  if (v55 != -2.0)
  {
    v143 = v54;
    v86 = v53;
    v146 = a3;
    v87 = v141;
    v88 = v145;
    sub_22FCC66E4();
    sub_22FCC6784();
    v89 = (v46 + 16);
    if (sub_22FCC6704())
    {
      sub_22FA2D328(v153, &v150);
      v90 = v139;
      (*v89)(v139, v87, v56);

      v91 = sub_22FCC8664();
      v92 = sub_22FCC8F34();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v149 = v142;
        *v93 = 136446722;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v94 = (*(v148 + 40))(v146);
        v95 = v87;
        v96 = v46;
        v98 = v97;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v99 = sub_22FA2F600(v94, v98, &v149);

        *(v93 + 4) = v99;
        *(v93 + 12) = 2082;
        v100 = sub_22FA2F600(v143, v86, &v149);

        *(v93 + 14) = v100;
        *(v93 + 22) = 2082;
        v101 = sub_22FCC96C4();
        v103 = v102;
        v104 = *(v96 + 8);
        v104(v90, v56);
        v105 = sub_22FA2F600(v101, v103, &v149);

        *(v93 + 24) = v105;
        _os_log_impl(&dword_22FA28000, v91, v92, "Last task %{public}s ran on %{public}s, task is due to run since %{public}s", v93, 0x20u);
        v106 = v142;
        swift_arrayDestroy();
        MEMORY[0x23190A000](v106, -1, -1);
        MEMORY[0x23190A000](v93, -1, -1);

        v104(v144, v56);
        v104(v95, v56);
        v104(v145, v56);
        goto LABEL_16;
      }

      v136 = *(v46 + 8);
      v136(v90, v56);
      v136(v144, v56);
      v136(v87, v56);
      v136(v88, v56);
      goto LABEL_15;
    }

    sub_22FA2D328(v153, &v150);
    v119 = v140;
    (*v89)(v140, v87, v56);

    v120 = sub_22FCC8664();
    v121 = v87;
    v122 = sub_22FCC8EF4();

    if (os_log_type_enabled(v120, v122))
    {
      v123 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v149 = v142;
      *v123 = 136446722;
      __swift_project_boxed_opaque_existential_1(&v150, v152);
      v124 = (*(v148 + 40))(v146);
      v125 = v46;
      v127 = v126;
      __swift_destroy_boxed_opaque_existential_0(&v150);
      v128 = sub_22FA2F600(v124, v127, &v149);

      *(v123 + 4) = v128;
      *(v123 + 12) = 2082;
      v129 = sub_22FA2F600(v143, v86, &v149);

      *(v123 + 14) = v129;
      *(v123 + 22) = 2082;
      v130 = sub_22FCC96C4();
      v132 = v131;
      v133 = *(v125 + 8);
      v133(v119, v56);
      v134 = sub_22FA2F600(v130, v132, &v149);

      *(v123 + 24) = v134;
      _os_log_impl(&dword_22FA28000, v120, v122, "Last task %{public}s ran on %{public}s, task will be due on %{public}s", v123, 0x20u);
      v135 = v142;
      swift_arrayDestroy();
      MEMORY[0x23190A000](v135, -1, -1);
      MEMORY[0x23190A000](v123, -1, -1);

      v133(v144, v56);
      v133(v141, v56);
      v133(v145, v56);
      v84 = 0;
      goto LABEL_17;
    }

    v137 = *(v46 + 8);
    v137(v119, v56);
    v137(v144, v56);
    v137(v121, v56);
    v137(v145, v56);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0(&v150);
    v84 = 0;
    goto LABEL_17;
  }

  sub_22FCC68C4();
  if ((sub_22FCC68B4() & 1) == 0)
  {
    sub_22FA2D328(v153, &v150);

    v107 = sub_22FCC8664();
    v108 = sub_22FCC8F34();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v144 = v56;
      v110 = v54;
      v111 = v53;
      v112 = v109;
      v113 = swift_slowAlloc();
      v149 = v113;
      *v112 = 136446466;
      __swift_project_boxed_opaque_existential_1(&v150, v152);
      v114 = (*(v148 + 40))(v57);
      v66 = v46;
      v116 = v115;
      __swift_destroy_boxed_opaque_existential_0(&v150);
      v117 = sub_22FA2F600(v114, v116, &v149);

      *(v112 + 4) = v117;
      *(v112 + 12) = 2082;
      v118 = sub_22FA2F600(v110, v111, &v149);

      *(v112 + 14) = v118;
      _os_log_impl(&dword_22FA28000, v107, v108, "Last task %{public}s ran on %{public}s, task is due to run today", v112, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v112, -1, -1);

      (*(v142 + 8))(v146, v143);
      goto LABEL_7;
    }

    (*(v142 + 8))(v146, v143);
LABEL_14:
    (*(v46 + 8))(v145, v56);
    goto LABEL_15;
  }

  sub_22FA2D328(v153, &v150);

  v71 = sub_22FCC8664();
  v72 = sub_22FCC8EF4();

  if (!os_log_type_enabled(v71, v72))
  {

    (*(v142 + 8))(v146, v143);
    (*(v46 + 8))(v145, v56);
    goto LABEL_29;
  }

  v73 = swift_slowAlloc();
  v144 = v56;
  v74 = v54;
  v75 = v53;
  v76 = v73;
  v77 = swift_slowAlloc();
  v149 = v77;
  *v76 = 136446466;
  __swift_project_boxed_opaque_existential_1(&v150, v152);
  v78 = (*(v148 + 40))(v57);
  v79 = v46;
  v81 = v80;
  __swift_destroy_boxed_opaque_existential_0(&v150);
  v82 = sub_22FA2F600(v78, v81, &v149);

  *(v76 + 4) = v82;
  *(v76 + 12) = 2082;
  v83 = sub_22FA2F600(v74, v75, &v149);

  *(v76 + 14) = v83;
  _os_log_impl(&dword_22FA28000, v71, v72, "Last task %{public}s ran on %{public}s, task will be due tomorrow", v76, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x23190A000](v77, -1, -1);
  MEMORY[0x23190A000](v76, -1, -1);

  (*(v142 + 8))(v146, v143);
  (*(v79 + 8))(v145, v144);
  v84 = 0;
LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(v153);
  return v84;
}

uint64_t sub_22FC37E04(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  *(v10 + 88) = v17;
  *(v10 + 96) = v18;
  *(v10 + 234) = a9;
  *(v10 + 233) = a8;
  *(v10 + 72) = a7;
  *(v10 + 80) = a10;
  *(v10 + 56) = a5;
  *(v10 + 64) = a6;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  *(v10 + 232) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8D30, &qword_22FCDBA58);
  *(v10 + 104) = swift_task_alloc();
  v12 = sub_22FCC6794();
  *(v10 + 112) = v12;
  *(v10 + 120) = *(v12 - 8);
  *(v10 + 128) = swift_task_alloc();
  *(v10 + 136) = type metadata accessor for TaskRecord(0);
  *(v10 + 144) = swift_task_alloc();
  *(v10 + 152) = swift_task_alloc();
  v13 = type metadata accessor for TaskRecords(0);
  *(v10 + 160) = v13;
  *(v10 + 168) = *(v13 - 8);
  *(v10 + 176) = swift_task_alloc();
  v14 = *(v17 - 8);
  *(v10 + 184) = v14;
  *(v10 + 192) = swift_task_alloc();
  (*(v14 + 16))();

  return MEMORY[0x2822009F8](sub_22FC38034, a10, 0);
}

uint64_t sub_22FC38034()
{
  if ((*(*(v0 + 96) + 96))(*(v0 + 88)))
  {
    v1 = swift_task_alloc();
    *(v0 + 200) = v1;
    *v1 = v0;
    v1[1] = sub_22FC3821C;
    v2 = *(v0 + 192);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = *(v0 + 232);

    return sub_22FC389B0(v2, v7, v6, 1, v5, v3, v4);
  }

  else
  {
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F14();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22FA28000, v9, v10, "recordCompletion called for a task with shouldRecordCompletion:false", v11, 2u);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 88));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22FC3821C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v13 = *v2;
  v4[26] = a1;
  *(v4 + 235) = a2;

  v5 = swift_task_alloc();
  v4[27] = v5;
  *v5 = v13;
  v5[1] = sub_22FC383C8;
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v9 = v3[8];
  v10 = *(v4 + 232);
  v11 = v3[24];

  return sub_22FC389B0(v11, v10, v9, 0, v8, v7, v6);
}

uint64_t sub_22FC383C8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  *(v3 + 224) = a1;
  *(v3 + 236) = a2;

  return MEMORY[0x2822009F8](sub_22FC384E4, v4, 0);
}

uint64_t sub_22FC384E4()
{
  if (!*(v0 + 234))
  {
    sub_22FC3997C(*(v0 + 192), *(v0 + 232), *(v0 + 56), *(v0 + 233), *(v0 + 208), *(v0 + 235) & 1, *(v0 + 224), *(v0 + 236) & 1, *(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  if (*(v0 + 232) == 1)
  {
    v47 = *(v0 + 224);
    v45 = *(v0 + 208);
    v1 = *(v0 + 176);
    v2 = *(v0 + 152);
    v49 = v1;
    v50 = *(v0 + 144);
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    v43 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v48 = *(v0 + 233);
    v41 = *(v0 + 64);
    v44 = *(v0 + 235) & 1;
    v46 = *(v0 + 236) & 1;
    v40 = sub_22FC3A89C(*(v0 + 192), *(v0 + 234), v45, v44, v47, v46, *(v0 + 80), v7, v6);
    v39 = v8;
    sub_22FC34900(v1);
    v42 = v7;
    v38 = v6[7](v7, v6);
    (*(v5 + 16))(v4, v41, v43);
    v9 = v6[17](v7, v6);
    v11 = v10;
    if (v39)
    {
      v12 = 0;
    }

    else
    {
      v12 = v40;
    }

    *v2 = v38;
    (*(v5 + 32))(v2 + v3[5], v4, v43);
    *(v2 + v3[6]) = v48;
    v13 = v2 + v3[7];
    *v13 = v45;
    v13[8] = v44;
    v14 = v2 + v3[8];
    *v14 = v47;
    v14[8] = v46;
    v15 = v2 + v3[9];
    *v15 = v9;
    v15[8] = v11 & 1;
    v16 = v2 + v3[10];
    *v16 = v12;
    v16[8] = v39 & 1;
    v17 = v6[5](v7, v6);
    v19 = v18;
    sub_22FC3B658(v2, v50, type metadata accessor for TaskRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *v49;
    sub_22FB25B48(v50, v17, v19, isUniquelyReferenced_nonNull_native);
    *v49 = v51;
    v21 = v6[21](v42, v6);
    if (v22 && (v23 = v21, v24 = v22, v25 = *(v0 + 233), v26 = , sub_22FC31CA0(v26, v23, v24), (v25 & 1) == 0))
    {
      v27 = *(v0 + 176);
      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      sub_22FC3B658(v28, v29, type metadata accessor for TaskRecord);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v27 + 8);
      sub_22FB25B48(v29, v17, v19, v30);

      sub_22FC3B328(v28, type metadata accessor for TaskRecord);
      *(v27 + 8) = v52;
    }

    else
    {
      sub_22FC3B328(*(v0 + 152), type metadata accessor for TaskRecord);
    }

    v31 = *(v0 + 168);
    v32 = *(v0 + 160);
    v33 = *(v0 + 104);
    v34 = *(v0 + 80);
    sub_22FC3B2C0(*(v0 + 176), v33, type metadata accessor for TaskRecords);
    (*(v31 + 56))(v33, 0, 1, v32);
    v35 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder____lazy_storage___taskRecords;
    swift_beginAccess();
    sub_22FC3B5F0(v33, v34 + v35, &qword_27DAD8D30, &qword_22FCDBA58);
    swift_endAccess();
    sub_22FC36058();
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 88));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_22FC389B0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = a7;
  *(v7 + 329) = a4;
  *(v7 + 168) = a3;
  *(v7 + 176) = a5;
  *(v7 + 328) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A0, &qword_22FCDD568);
  *(v7 + 200) = swift_task_alloc();
  v11 = type metadata accessor for Metadata(0);
  *(v7 + 208) = v11;
  *(v7 + 216) = *(v11 - 8);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = type metadata accessor for TaskRecords(0);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v12 = type metadata accessor for TaskRecord(0);
  *(v7 + 256) = v12;
  *(v7 + 264) = *(v12 - 8);
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 288) = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  (*(*(a6 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_22FC38BB8, a5, 0);
}

uint64_t sub_22FC38BB8()
{
  v49 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v3 + 40);
  *(v0 + 296) = v4;
  *(v0 + 304) = (v3 + 40) & 0xFFFFFFFFFFFFLL | 0x51E0000000000000;
  v5 = v4(v2);
  v7 = v6;
  sub_22FC34900(v1);
  v8 = *v1;
  if (!*(*v1 + 16))
  {

    goto LABEL_9;
  }

  v9 = sub_22FA2DB54(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_22FC3B328(*(v0 + 248), type metadata accessor for TaskRecords);
    goto LABEL_10;
  }

  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v14 = *(v0 + 256);
  v15 = *(v0 + 248);
  v16 = *(v0 + 329);
  sub_22FC3B658(*(v8 + 56) + *(*(v0 + 264) + 72) * v9, v13, type metadata accessor for TaskRecord);
  sub_22FC3B2C0(v13, v12, type metadata accessor for TaskRecord);
  sub_22FC3B328(v15, type metadata accessor for TaskRecords);
  v17 = 32;
  if (v16)
  {
    v17 = 28;
  }

  v18 = v12 + *(v14 + v17);
  v19 = *(v18 + 8);
  v20 = *v18;
  sub_22FC3B328(v12, type metadata accessor for TaskRecord);
  if ((v19 & 1) == 0 && v20 != -1.0)
  {
    v21 = 0;
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v43 = *(v0 + 8);

    return v43(*&v20, v21);
  }

LABEL_10:
  if (*(v0 + 328) != 1)
  {
LABEL_19:
    v20 = 0.0;
    v21 = 1;
    goto LABEL_20;
  }

  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(v0 + 208);
  v25 = *(v0 + 216);
  v26 = *(v0 + 200);
  sub_22FC34900(v22);
  sub_22FA4FAA4(&v22[*(v23 + 28)], v26, &qword_27DAD91A0, &qword_22FCDD568);
  sub_22FC3B328(v22, type metadata accessor for TaskRecords);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    sub_22FA2B420(*(v0 + 200), &qword_27DAD91A0, &qword_22FCDD568);
    sub_22FA2D328(v0 + 16, v0 + 56);
    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F14();
    if (os_log_type_enabled(v27, v28))
    {
      v30 = *(v0 + 184);
      v29 = *(v0 + 192);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v33 = (v4)(v30, v29);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      v36 = sub_22FA2F600(v33, v35, &v48);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_22FA28000, v27, v28, "Missing metadata to update feature availability for task %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23190A000](v32, -1, -1);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    goto LABEL_19;
  }

  v37 = *(v0 + 329);
  sub_22FC3B2C0(*(v0 + 200), *(v0 + 224), type metadata accessor for Metadata);
  v38 = *(v0 + 192);
  if (v37)
  {
    v46 = (*(v38 + 144) + **(v38 + 144));
    v39 = swift_task_alloc();
    *(v0 + 312) = v39;
    *v39 = v0;
    v39[1] = sub_22FC391B4;
    v40 = *(v0 + 192);
    v41 = *(v0 + 184);
    v42 = v46;
  }

  else
  {
    v47 = (*(v38 + 152) + **(v38 + 152));
    v45 = swift_task_alloc();
    *(v0 + 320) = v45;
    *v45 = v0;
    v45[1] = sub_22FC39598;
    v40 = *(v0 + 192);
    v41 = *(v0 + 184);
    v42 = v47;
  }

  return v42(v41, v40);
}

uint64_t sub_22FC391B4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_22FC392CC, v4, 0);
}

uint64_t sub_22FC392CC()
{
  v23 = v0;
  v1 = *(v0 + 144);
  if (v1 == 1)
  {
    sub_22FCC66D4();
    if (v2 > 0.0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0.0;
    }

    sub_22FA2D328(v0 + 16, v0 + 96);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v21 = *(v0 + 296);
      v7 = *(v0 + 184);
      v6 = *(v0 + 192);
      v8 = *(v0 + 329);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315650;
      if (v8)
      {
        v11 = 0x202945544628;
      }

      else
      {
        v11 = 0;
      }

      if (v8)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13 = sub_22FA2F600(v11, v12, &v22);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      v14 = v21(v7, v6);
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v17 = sub_22FA2F600(v14, v16, &v22);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2048;
      *(v9 + 24) = v3;
      _os_log_impl(&dword_22FA28000, v4, v5, "Update feature availability %sinterval for task %s: %f", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    sub_22FC3B328(*(v0 + 224), type metadata accessor for Metadata);
    v18 = round(v3);
  }

  else
  {
    sub_22FC3B328(*(v0 + 224), type metadata accessor for Metadata);
    v18 = 0.0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19(*&v18, v1 ^ 1u);
}

uint64_t sub_22FC39598(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 160) = a1;
  *(v3 + 152) = v1;
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_22FC396B0, v4, 0);
}

uint64_t sub_22FC396B0()
{
  v23 = v0;
  v1 = *(v0 + 160);
  if (v1 == 1)
  {
    sub_22FCC66D4();
    if (v2 > 0.0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0.0;
    }

    sub_22FA2D328(v0 + 16, v0 + 96);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v21 = *(v0 + 296);
      v7 = *(v0 + 184);
      v6 = *(v0 + 192);
      v8 = *(v0 + 329);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315650;
      if (v8)
      {
        v11 = 0x202945544628;
      }

      else
      {
        v11 = 0;
      }

      if (v8)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13 = sub_22FA2F600(v11, v12, &v22);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      v14 = v21(v7, v6);
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v17 = sub_22FA2F600(v14, v16, &v22);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2048;
      *(v9 + 24) = v3;
      _os_log_impl(&dword_22FA28000, v4, v5, "Update feature availability %sinterval for task %s: %f", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    sub_22FC3B328(*(v0 + 224), type metadata accessor for Metadata);
    v18 = round(v3);
  }

  else
  {
    sub_22FC3B328(*(v0 + 224), type metadata accessor for Metadata);
    v18 = 0.0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19(*&v18, v1 ^ 1u);
}

uint64_t sub_22FC3997C(uint64_t a1, int a2, void *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v151 = a6;
  v152 = a8;
  v149 = *&a5;
  v150 = *&a7;
  v159 = a4;
  v160 = a3;
  v158[0] = a2;
  v166 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91A8, &qword_22FCDD6B0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v161 = &v144 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v144 - v16;
  v18 = type metadata accessor for TaskRecord(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_22FCC6794();
  v167 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v23);
  v154 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v153 = &v144 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v144 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v156 = &v144 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v144 - v37;
  v171[3] = a10;
  v171[4] = a11;
  v163 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v171);
  v40 = *(*(a10 - 8) + 16);
  v157 = boxed_opaque_existential_1;
  v41 = v166;
  v166 = a10;
  v40(boxed_opaque_existential_1, v41, a10);
  v42 = *(a9 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_analytics);
  if (v42)
  {
    v155 = v42;
    v162 = v38;
    sub_22FCC6784();
    sub_22FC35168(v171, v17);
    v43 = (*(v19 + 48))(v17, 1, v18);
    v164 = a9;
    if (v43 == 1)
    {
      sub_22FA2B420(v17, &qword_27DAD84B8, &unk_22FCD64A0);
      sub_22FA2D328(v171, v169);
      v44 = sub_22FCC8664();
      v45 = sub_22FCC8EF4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v168 = v47;
        *v46 = 136446210;
        __swift_project_boxed_opaque_existential_1(v169, v170);
        v48 = v163;
        v49 = v166;
        v50 = (*(v163 + 40))(v166, v163);
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_0(v169);
        v53 = sub_22FA2F600(v50, v52, &v168);

        *(v46 + 4) = v53;
        _os_log_impl(&dword_22FA28000, v44, v45, "Task: %{public}s First Run. No previous run found", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23190A000](v47, -1, -1);
        MEMORY[0x23190A000](v46, -1, -1);

        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_0(v169);
    }

    else
    {
      sub_22FC3B2C0(v17, v22, type metadata accessor for TaskRecord);
      v62 = v167;
      v63 = v156;
      v64 = v165;
      (*(v167 + 32))(v156, &v22[*(v18 + 20)], v165);
      sub_22FCC66C4();
      v65 = sub_22FCC6744();
      v66 = *(v62 + 8);
      v66(v31, v64);
      if (v65 & 1) != 0 || (sub_22FCC6714())
      {
        v148 = v66;
        v67 = *(v167 + 16);
        v68 = v153;
        v67(v153, v63, v64);
        v69 = v154;
        v67(v154, v162, v64);
        v70 = sub_22FCC8664();
        v71 = sub_22FCC8F24();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v146 = v71;
          v73 = v72;
          v147 = swift_slowAlloc();
          v169[0] = v147;
          *v73 = 136446466;
          sub_22FC3B3DC(&qword_281482528, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v145 = v70;
          v74 = sub_22FCC96C4();
          v76 = v75;
          v77 = v148;
          v148(v68, v64);
          v78 = sub_22FA2F600(v74, v76, v169);

          *(v73 + 4) = v78;
          *(v73 + 12) = 2082;
          v79 = sub_22FCC96C4();
          v80 = v69;
          v82 = v81;
          v77(v80, v64);
          v83 = sub_22FA2F600(v79, v82, v169);

          *(v73 + 14) = v83;
          v84 = v145;
          _os_log_impl(&dword_22FA28000, v145, v146, "Unexpected task run dates - last: %{public}s, current: %{public}s", v73, 0x16u);
          v85 = v147;
          swift_arrayDestroy();
          MEMORY[0x23190A000](v85, -1, -1);
          MEMORY[0x23190A000](v73, -1, -1);

          v77(v63, v64);
        }

        else
        {

          v86 = v148;
          v148(v69, v64);
          v86(v68, v64);
          v86(v63, v64);
        }
      }

      else
      {
        sub_22FCC66D4();
        v66(v63, v64);
      }
    }

    v48 = v163;
    v49 = v166;
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8C98, &qword_22FCDB628);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCDD500;
    *(inited + 32) = sub_22FCC8A84();
    *(inited + 40) = v88;
    (*(v48 + 40))(v49, v48);
    v89 = sub_22FCC8A54();

    *(inited + 48) = v89;
    v90 = sub_22FCC8A84();
    v91 = LOBYTE(v158[0]);
    *(inited + 56) = v90;
    *(inited + 64) = v92;
    v169[0] = 0;
    v169[1] = 0xE000000000000000;
    v93 = 0xE700000000000000;
    v94 = 0x6E776F6E6B6E55;
    v95 = 0xE800000000000000;
    v96 = 0x74754F64656D6954;
    v97 = 0x656C6C65636E6143;
    v98 = 0xE900000000000064;
    if (v91 != 4)
    {
      v97 = 0x6F69747065637845;
      v98 = 0xE90000000000006ELL;
    }

    if (v91 != 3)
    {
      v96 = v97;
      v95 = v98;
    }

    v99 = 0x6564656563637553;
    v100 = 0xE900000000000064;
    if (v91 != 1)
    {
      v99 = 0x64656C696146;
      v100 = 0xE600000000000000;
    }

    if (v91)
    {
      v94 = v99;
      v93 = v100;
    }

    if (v91 <= 2)
    {
      v101 = v94;
    }

    else
    {
      v101 = v96;
    }

    if (v91 <= 2)
    {
      v102 = v93;
    }

    else
    {
      v102 = v95;
    }

    MEMORY[0x231907FA0](v101, v102);

    v103 = sub_22FCC8A54();

    *(inited + 72) = v103;
    *(inited + 80) = sub_22FCC8A84();
    *(inited + 88) = v104;
    *(inited + 96) = sub_22FCC6C64();
    *(inited + 104) = sub_22FCC8A84();
    *(inited + 112) = v105;
    *(inited + 120) = sub_22FCC6C64();
    *(inited + 128) = sub_22FCC8A84();
    *(inited + 136) = v106;
    *(inited + 144) = sub_22FCC8CB4();
    *(inited + 152) = sub_22FCC8A84();
    *(inited + 160) = v107;
    v108 = sub_22FCC84D4();
    v109 = OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_logger;
    v110 = sub_22FCC8684();
    v111 = *(v110 - 8);
    v112 = *(v111 + 16);
    v163 = v109;
    v113 = v164 + v109;
    v114 = v161;
    *v158 = v112;
    v112(v161, v113, v110);
    v157 = *(v111 + 56);
    (v157)(v114, 0, 1, v110);
    v166 = v108;
    sub_22FCC84C4();
    sub_22FA2B420(v114, &qword_27DAD91A8, &qword_22FCDD6B0);
    *(inited + 168) = sub_22FCC6C64();
    *(inited + 176) = sub_22FCC8A84();
    *(inited + 184) = v115;
    *(inited + 192) = sub_22FCC8CB4();
    v116 = sub_22FA4DA9C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8CA0, &qword_22FCDB630);
    swift_arrayDestroy();
    v117 = v160;
    if (v160)
    {
      v118 = sub_22FCC8A84();
      v120 = v119;
      v121 = v117;
      v122 = sub_22FCC6504();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169[0] = v116;
      sub_22FB25940(v122, v118, v120, isUniquelyReferenced_nonNull_native);

      v116 = v169[0];
    }

    v124 = v162;
    v125 = v164;
    v126 = *(v164 + OBJC_IVAR____TtC13PhotoAnalysis12TaskRecorder_photoLibrary);
    if (!v126)
    {
      goto LABEL_41;
    }

    v127 = v126;
    if (![v127 isSystemPhotoLibrary])
    {
      goto LABEL_40;
    }

    if ((v151 & 1) != 0 || v149 == -1.0)
    {
      if (v152)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v160 = sub_22FCC8A84();
      v135 = v134;
      v136 = v161;
      (*v158)(v161, v125 + v163, v110);
      (v157)(v136, 0, 1, v110);
      sub_22FCC84C4();
      sub_22FA2B420(v136, &qword_27DAD91A8, &qword_22FCDD6B0);
      v137 = sub_22FCC6C64();
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v169[0] = v116;
      v139 = v137;
      v124 = v162;
      sub_22FB25940(v139, v160, v135, v138);

      v116 = v169[0];
      if (v152)
      {
        goto LABEL_40;
      }
    }

    if (v150 != -1.0)
    {
      v162 = sub_22FCC8A84();
      v129 = v128;
      v130 = v125 + v163;
      v131 = v161;
      (*v158)(v161, v130, v110);
      (v157)(v131, 0, 1, v110);
      sub_22FCC84C4();
      sub_22FA2B420(v131, &qword_27DAD91A8, &qword_22FCDD6B0);
      v132 = sub_22FCC6C64();
      v133 = swift_isUniquelyReferenced_nonNull_native();
      v169[0] = v116;
      sub_22FB25940(v132, v162, v129, v133);

LABEL_41:
      sub_22FA3A77C(0, &qword_28147ADD0, 0x277D82BB8);
      v140 = @"com.apple.photos.photoanalysis.TaskHealth";
      v141 = sub_22FCC89C4();

      v142 = v155;
      [v155 sendEvent:v140 withPayload:v141];

      (*(v167 + 8))(v124, v165);
      return __swift_destroy_boxed_opaque_existential_0(v171);
    }

LABEL_40:

    goto LABEL_41;
  }

  sub_22FA2D328(v171, v169);
  v54 = sub_22FCC8664();
  v55 = sub_22FCC8EF4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v168 = v57;
    *v56 = 136446210;
    __swift_project_boxed_opaque_existential_1(v169, v170);
    v58 = (*(v163 + 40))(v166);
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_0(v169);
    v61 = sub_22FA2F600(v58, v60, &v168);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_22FA28000, v54, v55, "Skipping metrics logging for task %{public}s: No analytics instance available", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23190A000](v57, -1, -1);
    MEMORY[0x23190A000](v56, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v169);
  }

  return __swift_destroy_boxed_opaque_existential_0(v171);
}

unint64_t sub_22FC3A89C(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v78 = a7;
  LODWORD(v76) = a6;
  LODWORD(v75) = a4;
  v71 = *&a3;
  v81[5] = *MEMORY[0x277D85DE8];
  v12 = sub_22FCC6794();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v72 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TaskRecord(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v69 - v21;
  v23 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81[3] = a8;
  v81[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v81);
  (*(*(a8 - 8) + 16))();
  v27 = *(a9 + 136);
  v77 = a9;
  v28 = v27(a8, a9);
  v30 = 0;
  if ((v31 & 1) != 0 || a2 > 1u)
  {
    goto LABEL_31;
  }

  v29.n128_u64[0] = a5;
  v32 = 50;
  if (((*&a5 > 0.0) & ~v76) == 0)
  {
    v32 = 0;
  }

  v33 = !((*&a5 > 0.0) & ~v76);
  if (((*&a5 > 0.0) & ~v76) == 0 && (v75 & 1) == 0)
  {
    v29.n128_f64[0] = v71;
    if (v71 <= 0.0)
    {
      v32 = 0;
      v33 = 1;
    }

    else
    {
      v33 = 0;
      v32 = 30;
    }
  }

  v75 = v28;
  v76 = v32;
  v34 = *(v77 + 40);
  *&v71 = v77 + 40;
  v69 = v34;
  v35 = (v34)(a8, v29);
  v37 = v36;
  sub_22FC34900(v26);
  v38 = *v26;
  if (*(*v26 + 16))
  {
    v39 = sub_22FA2DB54(v35, v37);
    v41 = v40;

    if (v41)
    {
      sub_22FC3B658(*(v38 + 56) + *(v16 + 72) * v39, v22, type metadata accessor for TaskRecord);
      v42 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v42 = 1;
LABEL_15:
  (*(v16 + 56))(v22, v42, 1, v15);
  if ((*(v16 + 48))(v22, 1, v15))
  {
    sub_22FA2B420(v22, &qword_27DAD84B8, &unk_22FCD64A0);
    sub_22FC3B328(v26, type metadata accessor for TaskRecords);
  }

  else
  {
    v43 = v70;
    sub_22FC3B658(v22, v70, type metadata accessor for TaskRecord);
    sub_22FA2B420(v22, &qword_27DAD84B8, &unk_22FCD64A0);
    v44 = v43 + *(v15 + 40);
    v45 = *v44;
    v46 = *(v44 + 8);
    sub_22FC3B328(v43, type metadata accessor for TaskRecord);
    sub_22FC3B328(v26, type metadata accessor for TaskRecords);
    if ((v46 & 1) == 0)
    {
      if (v33 || v45 >= v76)
      {
        v30 = v45;
        goto LABEL_31;
      }

      goto LABEL_22;
    }
  }

  if (v33)
  {
    goto LABEL_26;
  }

LABEL_22:
  v47 = sub_22FCC8664();
  v48 = sub_22FCC8F34();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134218240;
    *(v49 + 4) = v76;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v75;
    _os_log_impl(&dword_22FA28000, v47, v48, "Reporting checkpoint %lu for feature code: %ld", v49, 0x16u);
    MEMORY[0x23190A000](v49, -1, -1);
  }

  v50 = objc_opt_self();
  v51 = v72;
  sub_22FCC6764();
  v52 = sub_22FCC66F4();
  (*(v73 + 8))(v51, v74);
  v80[0] = 0;
  LODWORD(v50) = [v50 reportFeatureCheckpoint:v76 forFeature:v75 atDate:v52 error:v80];

  if (v50)
  {
    v53 = v80[0];
LABEL_26:
    v30 = v76;
    goto LABEL_31;
  }

  v54 = v80[0];
  v55 = sub_22FCC6514();

  swift_willThrow();
  sub_22FA2D328(v81, v80);
  v56 = v55;
  v57 = sub_22FCC8664();
  v58 = sub_22FCC8F14();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v79 = v61;
    *v59 = 136315394;
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    v62 = v69(a8, v77);
    v64 = v63;
    __swift_destroy_boxed_opaque_existential_0(v80);
    v65 = sub_22FA2F600(v62, v64, &v79);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2112;
    v66 = v55;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 14) = v67;
    *v60 = v67;
    _os_log_impl(&dword_22FA28000, v57, v58, "Error reporting checkpoint for %s: %@", v59, 0x16u);
    sub_22FA2B420(v60, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v60, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x23190A000](v61, -1, -1);
    MEMORY[0x23190A000](v59, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  v30 = 0;
LABEL_31:
  __swift_destroy_boxed_opaque_existential_0(v81);
  return v30;
}

uint64_t sub_22FC3B044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TaskRecords(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v26[-1] - v12;
  v26[3] = a3;
  v26[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a3 - 8) + 16))();
  v14 = (*(a4 + 168))(a3, a4);
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  v17 = v14;
  if ((*(a4 + 56))(a3, a4) < 1)
  {
LABEL_7:
    sub_22FC34900(v9);
    v20 = *(v9 + 2);
    if (*(v20 + 16))
    {
      v21 = sub_22FA2DB54(v17, v16);
      v23 = v22;

      if (v23)
      {
        v19 = *(*(v20 + 56) + 8 * v21);

LABEL_12:
        sub_22FC3B328(v9, type metadata accessor for TaskRecords);
        goto LABEL_13;
      }
    }

    else
    {
    }

    v19 = 0;
    goto LABEL_12;
  }

  sub_22FC35168(v26, v13);
  v18 = type metadata accessor for TaskRecord(0);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) != 1)
  {
    sub_22FA2B420(v13, &qword_27DAD84B8, &unk_22FCD64A0);
    goto LABEL_7;
  }

  sub_22FA2B420(v13, &qword_27DAD84B8, &unk_22FCD64A0);
LABEL_5:
  v19 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v19;
}

uint64_t sub_22FC3B2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC3B328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FC3B388()
{
  result = qword_281481A00;
  if (!qword_281481A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281481A00);
  }

  return result;
}

uint64_t sub_22FC3B3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FC3B424()
{
  result = qword_281481800;
  if (!qword_281481800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281481800);
  }

  return result;
}

unint64_t sub_22FC3B478()
{
  result = qword_28147AF88;
  if (!qword_28147AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD91C8, &qword_22FCDD6D0);
    sub_22FC3B3DC(&qword_2814819E0, type metadata accessor for TaskRecord, &unk_22FCDD650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF88);
  }

  return result;
}

unint64_t sub_22FC3B534()
{
  result = qword_28147AFA0;
  if (!qword_28147AFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD91D0, &qword_22FCDD6D8);
    sub_22FC3B3DC(&qword_281482148, type metadata accessor for PhotoKitChangeToken, &protocol conformance descriptor for PhotoKitChangeToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AFA0);
  }

  return result;
}

uint64_t sub_22FC3B5F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FC3B658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FC3B6C0()
{
  result = qword_28147AF90;
  if (!qword_28147AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD91C8, &qword_22FCDD6D0);
    sub_22FC3B3DC(&qword_2814819E8, type metadata accessor for TaskRecord, &unk_22FCDD628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF90);
  }

  return result;
}

unint64_t sub_22FC3B77C()
{
  result = qword_28147AFA8;
  if (!qword_28147AFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD91D0, &qword_22FCDD6D8);
    sub_22FC3B3DC(&qword_281482150, type metadata accessor for PhotoKitChangeToken, &protocol conformance descriptor for PhotoKitChangeToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AFA8);
  }

  return result;
}

unint64_t sub_22FC3B838()
{
  result = qword_28147B3B0;
  if (!qword_28147B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147B3B0);
  }

  return result;
}

uint64_t sub_22FC3B88C(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91F0, &qword_22FCDD6F8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD91F8, &qword_22FCDD700);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_22FCC6464();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 60.0)
  {
    if (qword_281481670 != -1)
    {
      swift_once();
    }

    v15 = qword_281488058;
    v16 = sub_22FCC68D4();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = sub_22FCC6914();
    result = (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    if (*&a1 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (a1 > -9.22337204e18)
    {
      if (a1 < 9.22337204e18)
      {
        v19 = v15;
        sub_22FCC6454();
        v20 = sub_22FCC6444();
        (*(v11 + 8))(v14, v10);
        v21 = [v19 stringFromDateComponents_];

        if (v21)
        {
          v22 = sub_22FCC8A84();

          return v22;
        }

        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22FCD1800;
  v24 = MEMORY[0x277D83A80];
  *(v23 + 56) = MEMORY[0x277D839F8];
  *(v23 + 64) = v24;
  if (a1 >= 1.0)
  {
    *(v23 + 32) = a1;
  }

  else
  {
    *(v23 + 32) = a1 * 1000.0;
  }

  return sub_22FCC8AB4();
}

unint64_t sub_22FC3BCD8()
{
  result = qword_27DAD9200;
  if (!qword_27DAD9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9200);
  }

  return result;
}

unint64_t sub_22FC3BD30()
{
  result = qword_27DAD9208;
  if (!qword_27DAD9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9208);
  }

  return result;
}

unint64_t sub_22FC3BD88()
{
  result = qword_27DAD9210;
  if (!qword_27DAD9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9210);
  }

  return result;
}

unint64_t sub_22FC3BDE0()
{
  result = qword_28147B3A0;
  if (!qword_28147B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147B3A0);
  }

  return result;
}

unint64_t sub_22FC3BE38()
{
  result = qword_28147B3A8;
  if (!qword_28147B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147B3A8);
  }

  return result;
}

unint64_t sub_22FC3BE90()
{
  result = qword_2814817F0;
  if (!qword_2814817F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814817F0);
  }

  return result;
}

unint64_t sub_22FC3BEE8()
{
  result = qword_2814817F8;
  if (!qword_2814817F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814817F8);
  }

  return result;
}

unint64_t sub_22FC3BF40()
{
  result = qword_2814819F0;
  if (!qword_2814819F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814819F0);
  }

  return result;
}

unint64_t sub_22FC3BF98()
{
  result = qword_2814819F8;
  if (!qword_2814819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814819F8);
  }

  return result;
}

uint64_t sub_22FC3BFEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_22FCC9704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL || (sub_22FCC9704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022FCE8760 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746E49657466 && a2 == 0xEB000000006C6176 || (sub_22FCC9704() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022FCE8780 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4365727574616566 && a2 == 0xEB0000000065646FLL || (sub_22FCC9704() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FCE87A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22FCC9704();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22FC3C250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364726F636572 && a2 == 0xE700000000000000;
  if (v4 || (sub_22FCC9704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022FCE87C0 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022FCE87E0 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22FCC9704();

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

uint64_t sub_22FC3C3C0()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0, v1);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22FCC8F94();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v27 = *(v6 - 8);
  v7 = v27;
  v28 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for GraphNonIntensiveActivityTaskSource();
  v17 = sub_22FC3CD7C(&qword_28147C8F8, v16, type metadata accessor for GraphNonIntensiveActivityTaskSource, &unk_22FCDDA60);
  v18 = type metadata accessor for BackgroundSystemTask();
  v19 = swift_allocObject();
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *(v19 + 57) = 0u;
  v33[3] = v18;
  v33[4] = &off_2844A92C8;
  v33[0] = v19;
  sub_22FCC88E4();
  type metadata accessor for Activity(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v21 = v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v20 + 24) = 0xD00000000000002FLL;
  *(v20 + 32) = 0x800000022FCE8860;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = 2;
  sub_22FA2D328(v33, v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v26 = sub_22FA5191C();
  v22 = v10;
  v23 = v28;
  (*(v7 + 16))(v22, v14, v28);
  (*(v3 + 104))(v29, *MEMORY[0x277D85268], v30);
  v32 = MEMORY[0x277D84F90];
  sub_22FC3CD7C(&qword_28147AEA0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA519B0();
  sub_22FCC9264();
  v24 = sub_22FCC8FC4();
  (*(v27 + 8))(v14, v23);
  __swift_destroy_boxed_opaque_existential_0(v33);
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v24;
  return v20;
}

uint64_t sub_22FC3C884()
{
  v21 = v0;
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8, &unk_22FCD5EE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22FCD2680;
  v3 = [objc_allocWithZone(PHARevGeocodeSyndicationTask) init];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;

  v4 = sub_22FC3CBBC(v3, v1, &v18);

  v5 = type metadata accessor for LegacyTask();
  *(v2 + 56) = v5;
  v6 = sub_22FC3CD7C(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  v7 = objc_allocWithZone(PHACameraSmartSharingTask);
  v8 = [v7 init];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;

  v9 = sub_22FC3CBBC(v8, v1, &v18);

  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 72) = v9;
  v10 = [objc_allocWithZone(PHAAssetRevGeocodeEnrichmentTask) init];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;

  v11 = sub_22FC3CBBC(v10, v1, &v18);

  *(v2 + 136) = v5;
  *(v2 + 144) = v6;
  *(v2 + 112) = v11;
  v12 = [objc_allocWithZone(PHAPortraitDonationEnrichmentTask) init];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;

  v13 = sub_22FC3CBBC(v12, v1, &v18);

  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 152) = v13;
  v14 = [objc_allocWithZone(PHAMetricReportingTask) init];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;

  v15 = sub_22FC3CBBC(v14, v1, &v18);

  *(v2 + 216) = v5;
  *(v2 + 224) = v6;
  *(v2 + 192) = v15;
  v16 = *(v0 + 8);

  return v16(v2);
}

uint64_t sub_22FC3CB80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GraphNonIntensiveActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FC3CBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC67F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 + 112) + 112);
  sub_22FA2E6E4(a3, v22);
  v20 = type metadata accessor for MomentGraphWorker();
  v21 = sub_22FC3CD7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *&v19 = a2;
  type metadata accessor for LegacyTask();
  v12 = swift_allocObject();

  v13 = v11;
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  *(v12 + 72) = v14;
  *(v12 + 80) = v16;
  *(v12 + 88) = 1;
  *(v12 + 16) = a1;
  sub_22FA2D89C(&v19, v12 + 24);
  *(v12 + 64) = v13;
  v17 = v22[1];
  *(v12 + 96) = v22[0];
  *(v12 + 112) = v17;
  *(v12 + 128) = v23;
  sub_22FA518B4(a3);
  return v12;
}

uint64_t sub_22FC3CD7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FC3CDC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7970706168;
  v6 = 0x6E697466696C7075;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 1667854437;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6E656D69746E6573;
  v9 = 0xEB000000006C6174;
  if (a1 != 1)
  {
    v8 = 0x6C6C696863;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x796D61657264;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7970706168)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E697466696C7075)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1667854437)
      {
LABEL_34:
        v13 = sub_22FCC9704();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB000000006C6174;
      if (v10 != 0x6E656D69746E6573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6C6C696863)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x796D61657264)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_22FC3CFA4(unsigned __int8 a1)
{
  sub_22FCC9844();
  sub_22FCC8B14();

  return sub_22FCC9894();
}

uint64_t sub_22FC3D0A4(uint64_t a1, unsigned __int8 a2)
{
  sub_22FCC9844();
  sub_22FCC8B14();

  return sub_22FCC9894();
}

uint64_t *PromptLocalizer.__allocating_init(localizedStringProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_22FC3E86C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t static PromptLocalizer.FlexMusicCategory.randomElement.getter@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22FC22A50(6uLL);
  if (result > 5)
  {
    __break(1u);
  }

  else
  {
    *a1 = byte_2844A54E8[result + 32];
  }

  return result;
}

PhotoAnalysis::PromptLocalizer::FlexMusicCategory_optional __swiftcall PromptLocalizer.FlexMusicCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22FCC9554();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PromptLocalizer.FlexMusicCategory.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x796D61657264;
  v3 = 0x7970706168;
  v4 = 0x6E697466696C7075;
  if (v1 != 4)
  {
    v4 = 1667854437;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656D69746E6573;
  if (v1 != 1)
  {
    v5 = 0x6C6C696863;
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

double sub_22FC3D394(uint64_t a1)
{
  sub_22FCC8B14();

  return result;
}

void sub_22FC3D490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x796D61657264;
  v5 = 0xE500000000000000;
  v6 = 0x7970706168;
  v7 = 0xE900000000000067;
  v8 = 0x6E697466696C7075;
  if (v2 != 4)
  {
    v8 = 1667854437;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006C6174;
  v10 = 0x6E656D69746E6573;
  if (v2 != 1)
  {
    v10 = 0x6C6C696863;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22FC3D5AC()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD9218);
  __swift_project_value_buffer(v0, qword_27DAD9218);
  return sub_22FCC8674();
}

void *PromptLocalizer.init(localizedStringProvider:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_22FC3E7FC(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

void (*sub_22FC3D71C(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(char *, uint64_t)
{
  v66 = a7;
  v67 = a8;
  v63 = a5;
  v64 = a6;
  v77 = a3;
  v78 = a4;
  v79 = sub_22FCC8084();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v12);
  v80 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v56 - v16;
  if (qword_27DAD6F58 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v18 = sub_22FCC8684();
    v19 = __swift_project_value_buffer(v18, qword_27DAD9218);

    v59 = v19;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F04();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v83 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22FA2F600(a1, a2, &v83);
      _os_log_impl(&dword_22FA28000, v20, v21, "Getting localizable string for template: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23190A000](v23, -1, -1);
      MEMORY[0x23190A000](v22, -1, -1);
    }

    v24 = sub_22FCC8094();
    v25 = sub_22FCC8034();
    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (!v26)
    {
      break;
    }

    v56 = v24;
    v58 = a1;
    v57 = a2;
    v69 = a9;
    v70 = a10;
    v83 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v26, 0);
    v28 = 0;
    v27 = v83;
    v74 = v25 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v81 = v82 + 16;
    v73 = v82 + 88;
    v72 = *MEMORY[0x277D3C638];
    v68 = *MEMORY[0x277D3C628];
    v65 = *MEMORY[0x277D3C620];
    v60 = *MEMORY[0x277D3C630];
    v75 = (v82 + 8);
    v76 = v25;
    v71 = v26;
    while (v28 < *(v25 + 16))
    {
      v29 = v82;
      v30 = *(v82 + 16);
      v31 = v79;
      v30(v17, v74 + *(v82 + 72) * v28, v79);
      v32 = v80;
      a1 = v17;
      v30(v80, v17, v31);
      v33 = (*(v29 + 88))(v32, v31);
      v35 = v77;
      v34 = v78;
      if (v33 != v72)
      {
        v35 = v69;
        v34 = v70;
        if (v33 != v68)
        {
          v35 = v66;
          v34 = v67;
          if (v33 != v65)
          {
            v35 = v63;
            v34 = v64;
            if (v33 != v60)
            {
              type metadata accessor for PromptLocalizer.Error(0);
              sub_22FC3E9BC();
              swift_allocError();
              v30(v55, v17, v31);
              swift_willThrow();
              v39 = *v75;
              (*v75)(v80, v31);
              goto LABEL_19;
            }
          }
        }
      }

      if (!v34)
      {
        goto LABEL_18;
      }

      if (sub_22FCC8B24() <= 0)
      {

LABEL_18:
        type metadata accessor for PromptLocalizer.Error(0);
        sub_22FC3E9BC();
        swift_allocError();
        v30(v38, v17, v31);
        swift_willThrow();
        v39 = *v75;
LABEL_19:
        v39(v17, v31);

        goto LABEL_22;
      }

      (*v75)(v17, v31);
      v83 = v27;
      a2 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (a2 >= v36 >> 1)
      {
        sub_22FA86EA8((v36 > 1), a2 + 1, 1);
        v27 = v83;
      }

      ++v28;
      *(v27 + 16) = a2 + 1;
      v37 = v27 + 16 * a2;
      *(v37 + 32) = v35;
      *(v37 + 40) = v34;
      v25 = v76;
      if (v71 == v28)
      {
        a2 = v57;
        a1 = v58;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_20:
  v39 = sub_22FCC8024();
  v40 = a2;
  v41 = a1;
  v43 = v42;

  v44 = v61[5];
  v45 = v61[6];
  __swift_project_boxed_opaque_existential_1(v61 + 2, v44);
  v46 = v62;
  v47 = (*(v45 + 16))(v39, v43, v27, v44, v45);
  if (v46)
  {

LABEL_22:
  }

  else
  {
    v39 = v47;
    v49 = v48;
    v58 = v41;

    v50 = sub_22FCC8664();
    v51 = sub_22FCC8F04();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v83 = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_22FA2F600(v58, v40, &v83);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_22FA2F600(v39, v49, &v83);
      _os_log_impl(&dword_22FA28000, v50, v51, "Localized string: %s -> %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v53, -1, -1);
      MEMORY[0x23190A000](v52, -1, -1);
    }
  }

  return v39;
}

uint64_t static PromptLocalizer.getValueForParameterType(_:personName:placeName:cityName:timeReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v26 = a8;
  v27 = a7;
  v23 = a4;
  v24 = a5;
  v12 = sub_22FCC8084();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v13 + 16);
  v18(v17, a1, v12, v15);
  v19 = (*(v13 + 88))(v17, v12);
  if (v19 != *MEMORY[0x277D3C638])
  {
    if (v19 == *MEMORY[0x277D3C628])
    {
      a3 = a9;
      a2 = v26;
    }

    else
    {
      a2 = v25;
      a3 = v27;
      if (v19 != *MEMORY[0x277D3C620])
      {
        a2 = v23;
        a3 = v24;
        if (v19 != *MEMORY[0x277D3C630])
        {
          type metadata accessor for PromptLocalizer.Error(0);
          sub_22FC3E9BC();
          swift_allocError();
          (v18)(v22, a1, v12);
          swift_willThrow();
          (*(v13 + 8))(v17, v12);
          return a2;
        }
      }
    }
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (sub_22FCC8B24() <= 0)
  {

LABEL_9:
    type metadata accessor for PromptLocalizer.Error(0);
    sub_22FC3E9BC();
    swift_allocError();
    (v18)(v20, a1, v12);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_22FC3E098(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (a3)
  {
    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = a3;
    }

    else
    {
      v12 = 0;
    }

    if (!a5)
    {
      if (v10)
      {
        v22 = a3;
        v23 = v6;
        goto LABEL_34;
      }

LABEL_31:
      v29 = sub_22FC3E4E4(&v47);
      if (v6)
      {
        return v7;
      }

      v7 = v29;
      v20 = v30;
      v45 = a1;
      v31 = v47;
      goto LABEL_38;
    }

    v8 = v11;
  }

  else
  {
    if (!a5)
    {
      goto LABEL_31;
    }

    v12 = 0;
  }

  v13 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = a4;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v7 = a5;
  }

  else
  {
    v7 = 0;
  }

  if (!v12)
  {
    if (v7)
    {
      v45 = a1;
      v24 = v5[5];
      v25 = v5[6];
      __swift_project_boxed_opaque_existential_1(v5 + 2, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_22FCD1800;
      *(v26 + 32) = v14;
      *(v26 + 40) = v7;
      v27 = *(v25 + 16);

      v7 = v27(0xD00000000000001DLL, 0x800000022FCE8940, v26, v24, v25);
      v20 = v28;
      v21 = v6;
LABEL_29:

      if (v21)
      {
        return v7;
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    v45 = a1;
    v15 = v5[5];
    v16 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22FCD17F0;
    *(v17 + 32) = v14;
    *(v17 + 40) = v7;
    *(v17 + 48) = v8;
    *(v17 + 56) = v12;
    v18 = *(v16 + 16);

    v7 = v18(0xD000000000000032, 0x800000022FCE8900, v17, v15, v16);
    v20 = v19;
    v21 = v6;
    goto LABEL_29;
  }

  v23 = v6;
  v22 = v12;
LABEL_34:
  v32 = v5[5];
  v33 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22FCD1800;
  *(v34 + 32) = v8;
  *(v34 + 40) = v22;
  v35 = *(v33 + 16);

  v36 = v23;
  v7 = v35(0xD000000000000021, 0x800000022FCE88D0, v34, v32, v33);
  v20 = v37;

  if (v36)
  {
    return v7;
  }

  v45 = a1;
LABEL_37:
  v31 = 6;
LABEL_38:

  if (qword_27DAD6F58 != -1)
  {
    swift_once();
  }

  v38 = sub_22FCC8684();
  __swift_project_value_buffer(v38, qword_27DAD9218);

  v39 = sub_22FCC8664();
  v40 = sub_22FCC8F04();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v41 = 136315138;
    v43 = sub_22FA2F600(v7, v20, &v46);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_22FA28000, v39, v40, "Localized music string: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x23190A000](v42, -1, -1);
    MEMORY[0x23190A000](v41, -1, -1);
  }

  else
  {
  }

  *v45 = v31;
  return v7;
}

uint64_t sub_22FC3E4E4(_BYTE *a1)
{
  v5 = v2;
  v7 = sub_22FC22A50(6uLL);
  if (v7 > 5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = byte_2844A54E8[v7 + 32];
  v3 = *(&off_2788B15F8 + v8);
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = sub_22FC22A50(v9);
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 < *(v3 + 16))
      {
        v11 = v3 + 16 * v10;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);

        goto LABEL_7;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 0xE700000000000000;
  v12 = 0x4E574F4E4B4E55;
LABEL_7:

  v14 = v1[5];
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
  v5 = (*(v15 + 16))(v12, v13, MEMORY[0x277D84F90], v14, v15);
  v3 = v16;

  if (v2)
  {
    return v5;
  }

  v4 = v8;
  if (qword_27DAD6F58 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v17 = sub_22FCC8684();
  __swift_project_value_buffer(v17, qword_27DAD9218);

  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_22FA2F600(v5, v3, &v23);
    _os_log_impl(&dword_22FA28000, v18, v19, "Localized flex music string: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23190A000](v21, -1, -1);
    MEMORY[0x23190A000](v20, -1, -1);
  }

  *a1 = v4;
  return v5;
}

uint64_t PromptLocalizer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_22FC3E7FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t *sub_22FC3E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptLocalizer();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  return v10;
}

uint64_t type metadata accessor for PromptLocalizer.Error(uint64_t a1)
{
  result = qword_27DAD9250;
  if (!qword_27DAD9250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22FC3E9BC()
{
  result = qword_27DAD9230;
  if (!qword_27DAD9230)
  {
    type metadata accessor for PromptLocalizer.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9230);
  }

  return result;
}

unint64_t sub_22FC3EA18()
{
  result = qword_27DAD9238;
  if (!qword_27DAD9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9238);
  }

  return result;
}

unint64_t sub_22FC3EA70()
{
  result = qword_27DAD9240;
  if (!qword_27DAD9240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD9248, &qword_22FCDDB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9240);
  }

  return result;
}

uint64_t sub_22FC3EC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FCC8084();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FC3ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FCC8084();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_22FC3ED64(uint64_t a1)
{
  result = sub_22FCC8084();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_22FC3EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_22FA4FAA4(a3, v26 - v11, &unk_27DAD8710, &unk_22FCD1B40);
  v13 = sub_22FCC8D14();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22FA2B420(v12, &unk_27DAD8710, &unk_22FCD1B40);
  }

  else
  {
    sub_22FCC8D04();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22FCC8CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22FCC8B04() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710, &unk_22FCD1B40);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710, &unk_22FCD1B40);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22FC3F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_22FA4FAA4(a3, v26 - v11, &unk_27DAD8710, &unk_22FCD1B40);
  v13 = sub_22FCC8D14();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22FA2B420(v12, &unk_27DAD8710, &unk_22FCD1B40);
  }

  else
  {
    sub_22FCC8D04();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22FCC8CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22FCC8B04() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710, &unk_22FCD1B40);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710, &unk_22FCD1B40);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22FC3F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_22FA4FAA4(a3, v26 - v11, &unk_27DAD8710, &unk_22FCD1B40);
  v13 = sub_22FCC8D14();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22FA2B420(v12, &unk_27DAD8710, &unk_22FCD1B40);
  }

  else
  {
    sub_22FCC8D04();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22FCC8CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22FCC8B04() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9270, &qword_22FCDDF90);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_22FA2B420(a3, &unk_27DAD8710, &unk_22FCD1B40);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FA2B420(a3, &unk_27DAD8710, &unk_22FCD1B40);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9270, &qword_22FCDDF90);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22FC3F748(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22FCC65F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC3F814, v1, 0);
}

uint64_t sub_22FC3F814()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = objc_opt_self();
  v6 = [v5 systemPhotoLibraryURL];
  sub_22FCC65A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = xmmword_22FCD1800;
  v8 = *(v4 + 16);
  v8(v1, v2, v3);
  v9 = type metadata accessor for PhotoLibraryResource(0);
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_22FC4BF2C(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  v8(boxed_opaque_existential_1 + *(v9 + 20), v1, v3);
  v11 = sub_22FCC6564();
  LOBYTE(v5) = [v5 isSystemPhotoLibraryURL_];

  v12 = *(v4 + 8);
  v0[9] = v12;
  v0[10] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v3);
  *boxed_opaque_existential_1 = v5;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_22FC3FA28;
  v14 = v0[2];

  return sub_22FAFE728(v7, v14);
}

uint64_t sub_22FC3FA28(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_22FC3FC04;
  }

  else
  {
    v4[13] = a1;
    v6 = sub_22FC3FB80;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FC3FB80()
{
  (*(v0 + 72))(*(v0 + 56), *(v0 + 32));

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_22FC3FC04()
{
  (*(v0 + 72))(*(v0 + 56), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22FC3FC84()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 <= 1)
  {
    if (*(v0 + 32))
    {
      sub_22FCC9384();

      v10 = 0x20646F6874654DLL;
      MEMORY[0x231907FA0](v2, v1);
      v6 = 0xD000000000000025;
      v7 = 0x800000022FCE8CB0;
    }

    else
    {

      sub_22FCC9384();

      v10 = 0xD00000000000001CLL;
      if (v1)
      {
        v8 = v2;
      }

      else
      {
        v8 = 0xD000000000000013;
      }

      if (!v1)
      {
        v1 = 0x800000022FCE8D00;
      }

      MEMORY[0x231907FA0](v8, v1);

      v6 = 46;
      v7 = 0xE100000000000000;
    }
  }

  else if (v3 == 2)
  {
    sub_22FCC9384();

    v10 = 0xD000000000000013;
    v6 = v2;
    v7 = v1;
  }

  else if (v3 == 3)
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    sub_22FCC9384();

    v10 = v2;
    MEMORY[0x231907FA0](0xD000000000000018, 0x800000022FCE8C70);
    v6 = v5;
    v7 = v4;
  }

  else
  {
    sub_22FCC9384();

    v10 = 0xD000000000000018;
    MEMORY[0x231907FA0](v2, v1);
    v6 = 0x656E727574657220;
    v7 = 0xEF65736C61662064;
  }

  MEMORY[0x231907FA0](v6, v7);
  return v10;
}

uint64_t sub_22FC3FEE8(uint64_t a1)
{
  v2 = sub_22FC4C418();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FC3FF24(uint64_t a1)
{
  v2 = sub_22FC4C418();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22FC3FF64(uint64_t a1)
{
  v2 = sub_22FC4C4C4();

  return MEMORY[0x28219CB78](a1, v2);
}

uint64_t Executive.Environment.hashValue.getter()
{
  v1 = *v0;
  sub_22FCC9844();
  MEMORY[0x231908CB0](v1);
  return sub_22FCC9894();
}

uint64_t Executive.__allocating_init()()
{
  v0 = swift_allocObject();
  Executive.init()();
  return v0;
}

uint64_t *Executive.init()()
{
  v1 = v0;
  v2 = sub_22FCC8684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  swift_defaultActor_initialize();
  type metadata accessor for ResourcesDirector(0);
  swift_allocObject();
  *(v0 + 112) = sub_22FC15F64();
  type metadata accessor for TaskScheduler(0);
  swift_allocObject();
  *(v0 + 128) = sub_22FB2C790();
  *(v0 + 144) = 0;
  *(v0 + 152) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC13PhotoAnalysis9Executive_logger;
  sub_22FCC8674();
  sub_22FCC67E4();
  v26 = 0;
  type metadata accessor for WorkerFactory(0);
  swift_allocObject();

  v12 = sub_22FB2BE98(v11, &v26);

  *(v1 + 120) = v12;
  v13 = sub_22FCC9904();
  v15 = v14;
  v16 = *(v3 + 16);
  v16(v9, v1 + v10, v2);
  type metadata accessor for StateHolder(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v17[2] = v13;
  v17[3] = v15;
  v17[4] = 0;
  v17[5] = 0xE000000000000000;
  v16(v17 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v9, v2);
  v16(v25, v9, v2);
  sub_22FCC85E4();
  (*(v3 + 8))(v9, v2);
  *(v1 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder) = v17;
  v18 = [objc_opt_self() processInfo];
  v19 = [v18 processName];

  v20 = sub_22FCC8A84();
  v22 = v21;

  if (v20 == 0x616E616F746F6870 && v22 == 0xEE0064736973796CLL)
  {

    v23 = 1;
  }

  else
  {
    v23 = sub_22FCC9704();
  }

  *(v1 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_isPhotoAnalysisAgent) = v23 & 1;
  *(v1 + 136) = sub_22FAEF014(0);
  return v1;
}

uint64_t sub_22FC40414()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FB3CD0C;
  v3 = *(v0 + 16);

  return sub_22FAE6C2C(v1, v3);
}

uint64_t sub_22FC404D8()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC40574, v0, 0);
}

uint64_t sub_22FC40574()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FC40598, v1, 0);
}

uint64_t sub_22FC40598()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FC40660;
  v3 = *(v0 + 32);

  return sub_22FAE52E8(v1, v3);
}

uint64_t sub_22FC40660()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22FC4078C, v1, 0);
}

uint64_t sub_22FC4078C()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22FC407B0, v1, 0);
}

uint64_t sub_22FC407B0()
{
  v1 = *(*(v0 + 48) + 136);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_22FC4086C;
  v3 = *(v0 + 48);

  return sub_22FAE599C(v1, v3);
}

uint64_t sub_22FC4086C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22FC40998, v1, 0);
}

uint64_t sub_22FC40998()
{
  v1 = *(*(v0 + 16) + 120);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22FC409BC, v1, 0);
}

uint64_t sub_22FC409BC()
{
  v1 = *(*(v0 + 64) + 144);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_22FC40A68;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FC40A68()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22FC40B78, v1, 0);
}

uint64_t sub_22FC40B78(uint64_t a1)
{
  v2 = *(v1[2] + OBJC_IVAR____TtC13PhotoAnalysis9Executive_isPhotoAnalysisAgent);
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 != 1)
  {
    if (v5)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "This is *not* photoanalysisd";
      goto LABEL_11;
    }

LABEL_12:

    v14 = v1[1];

    return v14();
  }

  if (v5)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22FA28000, v3, v4, "This is photoanalysisd", v6, 2u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v8 = v1[2];
  v7 = v1[3];

  sub_22FC42E38();
  v9 = sub_22FCC8D14();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_22FC4BF2C(&qword_28147B240, type metadata accessor for Executive, &protocol conformance descriptor for Executive);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v8;
  swift_retain_n();
  sub_22FC3EE08(0, 0, v7, &unk_22FCDDFE0, v11);

  if (qword_281481B08 != -1)
  {
    swift_once();
  }

  if (byte_281488079)
  {
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F34();
    if (os_log_type_enabled(v3, v4))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Core Duet scheduling disabled by user default";
LABEL_11:
      _os_log_impl(&dword_22FA28000, v3, v4, v13, v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v1[10] = *(v1[2] + 136);

  return MEMORY[0x2822009F8](sub_22FC40E78, 0, 0);
}

uint64_t sub_22FC40E78()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder);

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_22FC40F68;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];

  return sub_22FAE6004(v1, v3, v4, v5);
}

uint64_t sub_22FC40F68()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_22FC410D4, v1, 0);
}

uint64_t sub_22FC410D4()
{
  *(*(v0 + 16) + 144) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC41160()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FC4C520;
  v3 = *(v0 + 16);

  return sub_22FAE8C18(v1, v3);
}

uint64_t sub_22FC41244()
{
  sub_22FC4BF2C(&qword_28147B240, type metadata accessor for Executive, &protocol conformance descriptor for Executive);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_22FC4134C;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FC4134C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22FC4145C, v1, 0);
}

uint64_t sub_22FC4145C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 152) = MEMORY[0x277D84F90];

  v2 = *(v1 + 120);
  *(v0 + 56) = v2;

  return MEMORY[0x2822009F8](sub_22FC414EC, v2, 0);
}

uint64_t sub_22FC414EC()
{
  v1 = *(*(v0 + 56) + 144);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22FC415A8;
  v3 = *(v0 + 56);

  return sub_22FAE769C(v1, v3);
}

uint64_t sub_22FC415A8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22FC416D4, v1, 0);
}

uint64_t sub_22FC416D4()
{
  v1 = *(*(v0 + 40) + 128);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22FC416F8, v1, 0);
}

uint64_t sub_22FC416F8()
{
  v1 = *(*(v0 + 72) + 136);

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_22FC417B4;
  v3 = *(v0 + 72);

  return sub_22FAE7C90(v1, v3);
}

uint64_t sub_22FC417B4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22FC418E0, v1, 0);
}

uint64_t sub_22FC418E0()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22FC41904, v1, 0);
}

uint64_t sub_22FC41904()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_22FC419CC;
  v3 = *(v0 + 88);

  return sub_22FAE8240(v1, v3);
}

uint64_t sub_22FC419CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FC41ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC41B94, a3, 0);
}

void sub_22FC41B94()
{
  v1 = *(v0 + 104);
  if (*(v1 + 144) == 1)
  {
    v2 = *(v0 + 128);
    v3 = sub_22FCC8D14();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;

    sub_22FB270AC(v2, &unk_22FCDDFD0, v4);
    sub_22FA2B420(v2, &unk_27DAD8710, &unk_22FCD1B40);
    v1 = *(v0 + 104);
  }

  swift_beginAccess();
  v5 = *(v1 + 152);
  if (v5 >> 62)
  {
    v25 = *(v1 + 152);
    v26 = sub_22FCC92C4();
    v5 = v25;
    v6 = v26;
    if (!v26)
    {
LABEL_20:

      v24 = *(v0 + 8);

      v24();
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  if (v6 >= 1)
  {
    v28 = **(v0 + 96);
    v27 = v5 & 0xC000000000000001;
    v7 = v5;

    v8 = v7;
    v9 = 0;
    v29 = v6;
    v30 = v7;
    while (1)
    {
      if (v27)
      {
        v12 = MEMORY[0x231908810](v9, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v9 + 32);
      }

      v13 = *(v0 + 112);
      v14 = *(v0 + 120);
      v15 = sub_22FCC8D14();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v14, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v12;
      sub_22FA4FAA4(v14, v13, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v13) = (*(v16 + 48))(v13, 1, v15);

      v19 = *(v0 + 112);
      if (v13 == 1)
      {
        sub_22FA2B420(*(v0 + 112), &unk_27DAD8710, &unk_22FCD1B40);
        if (!*v18)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_22FCC8D04();
        (*(v16 + 8))(v19, v15);
        if (!*v18)
        {
LABEL_16:
          v20 = 0;
          v22 = 0;
          goto LABEL_17;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_22FCC8CC4();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_17:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_22FCDDFB8;
      *(v23 + 24) = v17;

      if (v22 | v20)
      {
        v10 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v10 = 0;
      }

      ++v9;
      v11 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v10;
      *(v0 + 88) = v28;
      swift_task_create();

      sub_22FA2B420(v11, &unk_27DAD8710, &unk_22FCD1B40);
      v8 = v30;
      if (v29 == v9)
      {

        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22FC42020()
{
  v1 = *(v0[2] + 136);
  v0[3] = v1;
  v2 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivityManager_stateHolder);

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_22FC420F8;

  return sub_22FAE9680(v2, v1);
}

uint64_t sub_22FC420F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FC42228()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FC4C520;
  v3 = *(v0 + 16);

  return sub_22FAE383C(v1, v3);
}

uint64_t sub_22FC422F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FC42310, v1, 0);
}

uint64_t sub_22FC42310()
{
  v1 = *(v0 + 24);
  v2 = *(*(v1 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  *(v0 + 56) = v2;
  if (v2 == 2)
  {
    v3 = *(v0 + 16);
    type metadata accessor for ServiceProvider(0);
    swift_allocObject();
    v4 = v3;

    v5 = sub_22FAA11A8(v4, v1);
    *(v0 + 32) = v5;

    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_22FC42460;

    return sub_22FC4738C(v5);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_22FC42460()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_22FC4276C;
  }

  else
  {
    v4 = sub_22FC4258C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC4258C()
{
  v18 = v0;
  v1 = *(v0 + 16);

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    v10 = *(v5 + 176);
    v11 = *(v5 + 184);

    v12 = sub_22FA2F600(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    *(v7 + 14) = v6;
    *v8 = v6;
    v13 = v6;
    _os_log_impl(&dword_22FA28000, v2, v3, "Allocated serviceProvider %{public}s for connection %{public}@", v7, 0x16u);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v14 = *(v0 + 8);
  v15 = *(v0 + 56) == 2;

  return v14(v15);
}

uint64_t sub_22FC4276C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22FC427D4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21[-v6];
  v8 = sub_22FCC8A54();
  v9 = [a2 valueForEntitlement_];

  if (v9)
  {
    sub_22FCC9234();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v21[15] == 1)
    {
      type metadata accessor for Executive.SendableShouldAcceptConnection();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = dispatch_semaphore_create(0);
      v12 = sub_22FCC8D14();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v10;
      v13[5] = v2;
      v13[6] = a2;
      v13[7] = v11;

      v14 = a2;
      v15 = v11;
      sub_22FC3EE08(0, 0, v7, &unk_22FCDDCC8, v13);

      sub_22FCC90F4();

      v16 = *(v10 + 16);

      return v16;
    }
  }

  else
  {
    sub_22FA2B420(v24, &qword_27DAD7BB8, &qword_22FCD4010);
  }

  v18 = sub_22FCC8664();
  v19 = sub_22FCC8EF4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22FA28000, v18, v19, "Connection validation error", v20, 2u);
    MEMORY[0x23190A000](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_22FC42A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_22FC42B2C;

  return sub_22FC422F0(a6);
}

uint64_t sub_22FC42B2C(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_22FC42CC4;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_22FC42C58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FC42C58()
{
  *(*(v0 + 16) + 16) = *(v0 + 56);
  sub_22FCC9104();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC42CC4()
{
  v1 = *(v0 + 48);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed shouldAcceptConnection, error: %{public}@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FCC9104();
  v11 = *(v0 + 8);

  return v11();
}

void sub_22FC42E38()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  swift_weakInit();
  v10 = sub_22FC4BDA8;
  v11 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_22FC2A4C4;
  v9 = &block_descriptor_37;
  v1 = _Block_copy(&aBlock);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v1);
  _Block_release(v1);
  out_token = 0;
  sub_22FA5191C();
  v2 = sub_22FCC8FA4();
  v3 = swift_allocObject();
  swift_weakInit();
  v10 = sub_22FC4BDB8;
  v11 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_22FC442C0;
  v9 = &block_descriptor_43_0;
  v4 = _Block_copy(&aBlock);

  notify_register_dispatch("com.apple.language.changed", &out_token, v2, v4);
  _Block_release(v4);
}

uint64_t sub_22FC4300C(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_22FCC86A4();
    if (xpc_dictionary_get_string(a1, v9))
    {
      v10 = sub_22FCC8B64();
      v12 = v11;
      v13 = sub_22FCC8664();
      v14 = sub_22FCC8F34();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_22FA2F600(v10, v12, &v22);
        _os_log_impl(&dword_22FA28000, v13, v14, "Received notification: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x23190A000](v16, -1, -1);
        MEMORY[0x23190A000](v15, -1, -1);
      }

      if (v10 == sub_22FCC8A84() && v12 == v17)
      {
      }

      else
      {
        v19 = sub_22FCC9704();

        if ((v19 & 1) == 0)
        {
        }
      }

      v20 = sub_22FCC8D14();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v8;

      sub_22FB22A48(0, 0, v6, &unk_22FCDDF58, v21);
    }
  }

  return result;
}

uint64_t sub_22FC432CC()
{
  v1 = v0[26];
  v0[27] = *(v1 + 120);
  v0[22] = v1;
  v0[28] = type metadata accessor for Executive(0);
  v0[29] = sub_22FC4BF2C(qword_28147B250, type metadata accessor for Executive, &protocol conformance descriptor for Executive);

  sub_22FCC9324();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_22FC43400;

  return sub_22FAFBA28((v0 + 2));
}

uint64_t sub_22FC43400(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  sub_22FA3A7C4(v3 + 16);
  if (v1)
  {
    v4 = sub_22FC44094;
  }

  else
  {
    v4 = sub_22FC4351C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FC4351C()
{
  v1 = v0[31];
  if (v1 >> 62)
  {
    result = sub_22FCC92C4();
    v0[33] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[31];
        v0[36] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x231908810](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[37] = v4;
        v5 = swift_task_alloc();
        v0[38] = v5;
        *v5 = v0;
        v5[1] = sub_22FC43870;

        return sub_22FBBE2F4();
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[33] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v6 = v0[26];

  v0[24] = v6;

  sub_22FCC9324();
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_22FC436E4;

  return sub_22FC3F748((v0 + 12));
}

uint64_t sub_22FC436E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[35] = v1;

  sub_22FA3A7C4((v4 + 12));
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FC440AC, 0, 0);
  }

  else
  {
    v4[40] = a1;
    v6 = swift_task_alloc();
    v4[41] = v6;
    *v6 = v5;
    v6[1] = sub_22FC43D24;

    return sub_22FBB4C8C();
  }
}

uint64_t sub_22FC43870()
{

  return MEMORY[0x2822009F8](sub_22FC4396C, 0, 0);
}

uint64_t sub_22FC4396C()
{
  v0[23] = v0[26];

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_22FC43A5C;
  v2 = v0[37];
  v3 = v0[27];

  return sub_22FC4A358(v2, (v0 + 7), v3);
}

uint64_t sub_22FC43A5C()
{
  v1 = *v0;

  sub_22FA3A7C4(v1 + 56);

  return MEMORY[0x2822009F8](sub_22FC43B7C, 0, 0);
}

uint64_t sub_22FC43B7C()
{
  v1 = v0[36];
  v2 = v0[33];

  if (v1 + 1 == v2)
  {
    v3 = v0[26];

    v0[24] = v3;

    sub_22FCC9324();
    v4 = swift_task_alloc();
    v0[34] = v4;
    *v4 = v0;
    v4[1] = sub_22FC436E4;

    return sub_22FC3F748((v0 + 12));
  }

  else
  {
    v6 = v0[36] + 1;
    v0[36] = v6;
    v7 = v0[31];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x231908810]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v0[37] = v8;
    v9 = swift_task_alloc();
    v0[38] = v9;
    *v9 = v0;
    v9[1] = sub_22FC43870;

    return sub_22FBBE2F4();
  }
}

uint64_t sub_22FC43D24()
{

  return MEMORY[0x2822009F8](sub_22FC43E20, 0, 0);
}

uint64_t sub_22FC43E20()
{
  v0[25] = v0[26];

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_22FC43F10;
  v2 = v0[40];
  v3 = v0[27];

  return sub_22FC4AD48(v2, (v0 + 17), v3);
}

uint64_t sub_22FC43F10()
{
  v1 = *v0;

  sub_22FA3A7C4(v1 + 136);

  return MEMORY[0x2822009F8](sub_22FC44030, 0, 0);
}

uint64_t sub_22FC44030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC440C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FCC68A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22FCC6874();
    v8 = sub_22FCC6834();
    v10 = v9;
    (*(v3 + 8))(v6, v2);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      v15 = sub_22FA2F600(v8, v10, &v16);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_22FA28000, v11, v12, "Locale changed! New locale: %s, photoanalysisd is going to exit soon", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    else
    {
    }

    xpc_transaction_exit_clean();
  }

  return result;
}

uint64_t sub_22FC442C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22FC44334()
{
  v1 = v0[14];
  v0[15] = *(v1 + 120);
  v0[12] = v1;
  v0[16] = type metadata accessor for Executive(0);
  v0[17] = sub_22FC4BF2C(qword_28147B250, type metadata accessor for Executive, &protocol conformance descriptor for Executive);

  sub_22FCC9324();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_22FC44468;

  return sub_22FC3F748((v0 + 2));
}

uint64_t sub_22FC44468(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[14];
    sub_22FA3A7C4((v3 + 2));

    return MEMORY[0x2822009F8](sub_22FC44A3C, v5, 0);
  }

  else
  {
    sub_22FA3A7C4((v3 + 2));
    v6 = swift_task_alloc();
    v3[21] = v6;
    *v6 = v4;
    v6[1] = sub_22FC445FC;

    return sub_22FBB453C();
  }
}

uint64_t sub_22FC445FC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_22FC44BA4;
  }

  else
  {
    v4 = sub_22FC44728;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC44728()
{
  v0[13] = v0[14];

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_22FC44818;
  v2 = v0[19];
  v3 = v0[15];

  return sub_22FC4AD48(v2, (v0 + 7), v3);
}

uint64_t sub_22FC44818()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_22FA3A7C4(v1 + 56);

  return MEMORY[0x2822009F8](sub_22FC44954, v2, 0);
}

uint64_t sub_22FC44954(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8EF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Finished running startup tasks", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_22FC44A3C()
{
  v1 = *(v0 + 160);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22FA28000, v3, v4, "Error runing startup tasks: %@", v5, 0xCu);
    sub_22FA2B420(v6, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FC44BA4()
{

  v1 = *(v0 + 176);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22FA28000, v3, v4, "Error runing startup tasks: %@", v5, 0xCu);
    sub_22FA2B420(v6, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FC44D14()
{
  v1[57] = v0;
  v2 = sub_22FCC6794();
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  type metadata accessor for TaskRecords(0);
  v1[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v3 = type metadata accessor for TaskRecord(0);
  v1[66] = v3;
  v1[67] = *(v3 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC44F14, v0, 0);
}

void sub_22FC44F14()
{
  v1 = *(*(v0[57] + 136) + 16);
  v0[73] = v1;
  if (v1 >> 62)
  {
    v2 = sub_22FCC92C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[74] = v2;

  if (v2)
  {
    v0[75] = 0xC000000000000000;
    v0[76] = MEMORY[0x277D84F98];
    v3 = v0[73];
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x231908810](0);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    v0[77] = v4;
    v0[78] = 1;
    v5 = v0[57];
    v6 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v7 + 24);
    v0[5] = v6;
    v0[6] = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v8(v6, v7);
    v10 = type metadata accessor for ActivitySession(0);
    v13 = v5 + 120;
    v12 = *(v5 + 120);
    v11 = *(v13 + 8);
    v14 = *(v6 - 8);
    v15 = swift_task_alloc();
    (*(v14 + 16))(v15, boxed_opaque_existential_1, v6);

    v16 = sub_22FA62068(v15, v11, v12, v10, v6, v7);
    v0[79] = v16;

    v20 = (*(v7 + 32) + **(v7 + 32));
    v17 = swift_task_alloc();
    v0[80] = v17;
    *v17 = v0;
    v17[1] = sub_22FC452C4;

    v20(v16, v6, v7);
  }

  else
  {

    v18 = v0[1];
    v19 = MEMORY[0x277D84F98];

    v18(v19);
  }
}

uint64_t sub_22FC452C4(uint64_t a1)
{
  v3 = *v2;
  v3[81] = a1;
  v3[82] = v1;

  if (v1)
  {
    v4 = v3[57];

    v5 = sub_22FC47270;
    v6 = v4;
  }

  else
  {
    v6 = v3[57];
    v5 = sub_22FC453FC;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22FC453FC()
{
  v69 = v1;
  v2 = *(v1 + 648);
  v3 = *(v2 + 16);
  *(v1 + 664) = v3;
  if (v3)
  {
    v4 = MEMORY[0x277D84F98];
    *(v1 + 696) = MEMORY[0x277D84F98];
    *(v1 + 688) = 0;
    *(v1 + 680) = v4;
    *(v1 + 672) = v4;
    if (*(v2 + 16))
    {
      sub_22FA2D328(v2 + 32, v1 + 56);
      v5 = *(v1 + 80);
      v6 = *(v1 + 88);
      __swift_project_boxed_opaque_existential_1((v1 + 56), v5);
      (*(v6 + 32))(v5, v6);
      v7 = *(v1 + 120);
      v8 = *(v1 + 128);
      __swift_project_boxed_opaque_existential_1((v1 + 96), v7);
      v9 = (*(v8 + 56))(v7, v8);
      *(v1 + 704) = v9;
      v10 = *(v1 + 80);
      *(v1 + 712) = v10;
      v11 = v10;
      __swift_project_boxed_opaque_existential_1((v1 + 56), v10);
      v12 = *(v11 - 8);
      *(v1 + 728) = v12;
      *(v1 + 736) = swift_task_alloc();
      (*(v12 + 16))();
      v13 = sub_22FC45DD0;
      v14 = v9;
      v15 = 0;

      return MEMORY[0x2822009F8](v13, v14, v15);
    }

    __break(1u);
    goto LABEL_18;
  }

  v63 = *(v1 + 616);
  v64 = *(v1 + 608);
  v65 = *(v1 + 592);
  v66 = *(v1 + 624);

  v16 = MEMORY[0x277D84F98];
  v17 = -*(MEMORY[0x277D84F98] + 16) / 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FCD1800;
  v19 = MEMORY[0x277D83A80];
  *(v18 + 56) = MEMORY[0x277D839F8];
  *(v18 + 64) = v19;
  *(v18 + 32) = v17 * 100.0;
  *(v1 + 392) = sub_22FCC8AB4();
  *(v1 + 400) = v20;
  MEMORY[0x231907FA0](9504, 0xE200000000000000);
  v21 = *(v1 + 392);
  v22 = *(v1 + 400);
  *(v1 + 160) = MEMORY[0x277D837D0];
  *(v1 + 136) = v21;
  *(v1 + 144) = v22;
  sub_22FA32554((v1 + 136), (v1 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v16;
  v24 = v16;
  v25 = *(v1 + 192);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 168, v25);
  v27 = *(v25 - 8);
  v28 = swift_task_alloc();
  (*(v27 + 16))(v28, v26, v25);
  sub_22FC49C38(*v28, v28[1], 0xD000000000000010, 0x800000022FCE89C0, isUniquelyReferenced_nonNull_native, &v68);
  __swift_destroy_boxed_opaque_existential_0((v1 + 168));

  v29 = v68;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8108, &unk_22FCD4A20);
  *(v1 + 200) = v24;
  *(v1 + 224) = v30;
  sub_22FA32554((v1 + 200), (v1 + 232));
  LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
  v68 = v29;
  v31 = *(v1 + 256);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 232, v31);
  v33 = *(v31 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v31);
  sub_22FC49E1C(*v34, 0xD00000000000001ALL, 0x800000022FCE89E0, v27, &v68, &qword_27DAD8108, &unk_22FCD4A20);
  __swift_destroy_boxed_opaque_existential_0((v1 + 232));

  v35 = v68;
  *(v1 + 288) = v30;
  *(v1 + 264) = MEMORY[0x277D84F98];
  sub_22FA32554((v1 + 264), (v1 + 296));
  LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  v36 = *(v1 + 320);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 296, v36);
  v38 = *(v36 - 8);
  v39 = swift_task_alloc();
  (*(v38 + 16))(v39, v37, v36);
  sub_22FC49E1C(*v39, 0x206575647265764FLL, 0xED0000736B736174, v27, &v68, &qword_27DAD8108, &unk_22FCD4A20);
  __swift_destroy_boxed_opaque_existential_0((v1 + 296));

  v40 = v68;
  v41 = *(v63 + 24);
  v42 = *(v63 + 32);
  *(v1 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  *(v1 + 328) = v40;
  sub_22FA32554((v1 + 328), (v1 + 360));
  LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
  v68 = v64;
  v43 = *(v1 + 384);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 360, v43);
  v45 = *(v43 - 8);
  v46 = swift_task_alloc();
  (*(v45 + 16))(v46, v44, v43);
  sub_22FC49E1C(*v46, v41, v42, v40, &v68, &unk_27DAD7BC0, &unk_22FCD60B0);

  __swift_destroy_boxed_opaque_existential_0((v1 + 360));

  v47 = v68;
  v13 = __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  if (v66 != v65)
  {
    v0 = *(v1 + 624);
    *(v1 + 608) = v47;
    v14 = *(v1 + 584);
    if ((v14 & 0xC000000000000001) == 0)
    {
      if (v0 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

LABEL_13:
      *(v1 + 616) = v13;
      *(v1 + 624) = v0 + 1;
      if (!__OFADD__(v0, 1))
      {
        v50 = *(v1 + 456);
        v51 = *(v13 + 40);
        v52 = *(v13 + 48);
        v53 = *(v52 + 24);
        *(v1 + 40) = v51;
        *(v1 + 48) = v52;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
        v53(v51, v52);
        v55 = type metadata accessor for ActivitySession(0);
        v58 = v50 + 120;
        v57 = *(v50 + 120);
        v56 = *(v58 + 8);
        v59 = *(v51 - 8);
        v60 = swift_task_alloc();
        (*(v59 + 16))(v60, boxed_opaque_existential_1, v51);

        v61 = sub_22FA62068(v60, v56, v57, v55, v51, v52);
        *(v1 + 632) = v61;

        v67 = (*(v52 + 32) + **(v52 + 32));
        v62 = swift_task_alloc();
        *(v1 + 640) = v62;
        *v62 = v1;
        v62[1] = sub_22FC452C4;

        return v67(v61, v51, v52);
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return MEMORY[0x2822009F8](v13, v14, v15);
    }

LABEL_18:
    v13 = MEMORY[0x231908810](v0);
    goto LABEL_13;
  }

  v48 = *(v1 + 8);

  return v48(v47);
}

uint64_t sub_22FC45DD0()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[63];
  sub_22FC34900(v3);
  v4 = *v3;
  v5 = (*(v1 + 40))(v2, v1);
  if (*(v4 + 16))
  {
    v7 = sub_22FA2DB54(v5, v6);
    v9 = v8;

    if (v9)
    {
      sub_22FC4B5AC(*(v4 + 56) + *(v0[67] + 72) * v7, v0[64]);
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 1;
LABEL_6:
  v11 = v0[67];
  v12 = v0[66];
  v14 = v0[63];
  v13 = v0[64];
  v15 = *(v11 + 56);
  v15(v13, v10, 1, v12);
  sub_22FC4B54C(v14, type metadata accessor for TaskRecords);
  v16 = *(v11 + 48);
  if (v16(v13, 1, v12) == 1)
  {
    v17 = v0[66];
    v18 = v0[65];
    sub_22FA2B420(v0[64], &qword_27DAD84B8, &unk_22FCD64A0);
    v15(v18, 1, 1, v17);
LABEL_12:
    sub_22FA2B420(v0[65], &qword_27DAD84B8, &unk_22FCD64A0);
    v28 = 1;
    goto LABEL_14;
  }

  v19 = v0[90];
  v20 = v0[89];
  v21 = v0[68];
  sub_22FC4C2F4(v0[64], v21, type metadata accessor for TaskRecord);
  v22 = *v21;
  v23 = (*(v19 + 56))(v20, v19);
  v24 = v0[68];
  if (v22 == v23)
  {
    sub_22FC4C2F4(v24, v0[65], type metadata accessor for TaskRecord);
    v25 = 0;
  }

  else
  {
    sub_22FC4B54C(v24, type metadata accessor for TaskRecord);
    v25 = 1;
  }

  v26 = v0[66];
  v27 = v0[65];
  v15(v27, v25, 1, v26);
  if (v16(v27, 1, v26) == 1)
  {
    goto LABEL_12;
  }

  v29 = v0[72];
  v30 = v0[69];
  v31 = v0[66];
  v32 = v0[58];
  v33 = v0[59];
  sub_22FC4C2F4(v0[65], v30, type metadata accessor for TaskRecord);
  (*(v33 + 32))(v29, v30 + *(v31 + 20), v32);
  v28 = 0;
LABEL_14:
  v34 = v0[92];
  v35 = v0[91];
  v36 = v0[89];
  v37 = v0[57];
  (*(v0[59] + 56))(v0[72], v28, 1, v0[58]);
  (*(v35 + 8))(v34, v36);

  return MEMORY[0x2822009F8](sub_22FC46138, v37, 0);
}

uint64_t sub_22FC46138()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 80);
  *(v0 + 744) = v2;
  *(v0 + 760) = __swift_project_boxed_opaque_existential_1((v0 + 56), v2);

  return MEMORY[0x2822009F8](sub_22FC461B8, v1, 0);
}

uint64_t sub_22FC461B8()
{
  v1 = *(v0 + 456);
  *(v0 + 768) = sub_22FC36DC0(*(v0 + 760), *(v0 + 704), *(v0 + 744), *(v0 + 752)) & 1;

  return MEMORY[0x2822009F8](sub_22FC46238, v1, 0);
}

uint64_t sub_22FC46238()
{
  v146 = v0;
  if ((*(v0 + 768) & 1) == 0)
  {
    v10 = *(v0 + 696);
    v11 = *(v0 + 672);
    goto LABEL_20;
  }

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
  v7 = (*(v6 + 64))(v5, v6);
  sub_22FA4FAA4(v1, v2, &qword_27DAD8730, &qword_22FCD1B20);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22FA2B420(*(v0 + 568), &qword_27DAD8730, &qword_22FCD1B20);
    v8 = 0xEA00000000002E6ELL;
    v9 = 0x617220726576654ELL;
  }

  else
  {
    v12 = *(v0 + 600);
    (*(*(v0 + 472) + 32))(*(v0 + 496), *(v0 + 568), *(v0 + 464));
    if (v7 == v12)
    {
      (*(*(v0 + 472) + 8))(*(v0 + 496), *(v0 + 464));
      v8 = 0xEA00000000002E79;
      v9 = 0x61646F7420657544;
    }

    else
    {
      v13 = *(v0 + 488);
      v14 = *(v0 + 464);
      v15 = *(v0 + 472);
      v3 = *(v0 + 496);
      sub_22FCC66E4();
      *(v0 + 424) = 0x636E697320657544;
      *(v0 + 432) = 0xEA00000000002065;
      sub_22FCC6734();
      v17 = sub_22FC3B88C(fabs(v16));
      MEMORY[0x231907FA0](v17);

      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v9 = *(v0 + 424);
      v8 = *(v0 + 432);
      v18 = *(v15 + 8);
      v18(v13, v14);
      v18(v3, v14);
    }
  }

  v19 = *(v0 + 672);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v20);
  v22 = (*(v21 + 40))(v20, v21);
  v24 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 448) = v19;
  v26 = sub_22FA2DB54(v22, v24);
  v28 = *(v19 + 16);
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v3) = v27;
  if (*(*(v0 + 672) + 24) >= v31)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

LABEL_16:
    v35 = v26;
    sub_22FA70A10();
    v26 = v35;
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_17:
    v11 = *(v0 + 448);
    *(v11 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v36 = (*(v11 + 48) + 16 * v26);
    *v36 = v22;
    v36[1] = v24;
    v37 = (*(v11 + 56) + 16 * v26);
    *v37 = v9;
    v37[1] = v8;
    v38 = *(v11 + 16);
    v30 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v30)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      v111 = MEMORY[0x231908810](v24);
      goto LABEL_46;
    }

    *(v11 + 16) = v39;
    goto LABEL_19;
  }

  sub_22FA6C9E8(v31, isUniquelyReferenced_nonNull_native);
  v26 = sub_22FA2DB54(v22, v24);
  if ((v3 & 1) != (v32 & 1))
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v3 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v33 = v26;

  v11 = *(v0 + 448);
  v34 = (*(v11 + 56) + 16 * v33);
  *v34 = v9;
  v34[1] = v8;

LABEL_19:
  v10 = v11;
LABEL_20:
  v40 = *(v0 + 560);
  v41 = *(v0 + 464);
  v42 = *(v0 + 472);
  sub_22FA4FAA4(*(v0 + 576), v40, &qword_27DAD8730, &qword_22FCD1B20);
  v43 = (*(v42 + 48))(v40, 1, v41);
  v44 = *(v0 + 560);
  v141 = v11;
  if (v43 == 1)
  {
    sub_22FA2B420(v44, &qword_27DAD8730, &qword_22FCD1B20);
    v45 = 0xE500000000000000;
    v46 = 0x726576654ELL;
  }

  else
  {
    v48 = *(v0 + 472);
    v47 = *(v0 + 480);
    v49 = *(v0 + 464);
    (*(v48 + 32))(v47, v44, v49);
    sub_22FCC6734();
    v11 = sub_22FC3B88C(fabs(v50));
    v52 = v51;
    sub_22FC4BF2C(&qword_281482528, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    *(v0 + 408) = sub_22FCC96C4();
    *(v0 + 416) = v53;
    MEMORY[0x231907FA0](10272, 0xE200000000000000);
    MEMORY[0x231907FA0](v11, v52);

    MEMORY[0x231907FA0](0x296F676120, 0xE500000000000000);
    v46 = *(v0 + 408);
    v45 = *(v0 + 416);
    (*(v48 + 8))(v47, v49);
  }

  v54 = *(v0 + 680);
  v55 = *(v0 + 80);
  v56 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v55);
  v57 = (*(v56 + 40))(v55, v56);
  v24 = v58;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 440) = v54;
  v60 = sub_22FA2DB54(v57, v24);
  v62 = *(v54 + 16);
  v63 = (v61 & 1) == 0;
  v30 = __OFADD__(v62, v63);
  v64 = v62 + v63;
  if (v30)
  {
    __break(1u);
LABEL_51:
    v138 = v60;
    sub_22FA70A10();
    v60 = v138;
    goto LABEL_30;
  }

  LOBYTE(v11) = v61;
  if (*(*(v0 + 680) + 24) >= v64)
  {
    if (v59)
    {
      goto LABEL_30;
    }

    goto LABEL_51;
  }

  sub_22FA6C9E8(v64, v59);
  v60 = sub_22FA2DB54(v57, v24);
  if ((v11 & 1) != (v65 & 1))
  {
LABEL_26:

    return sub_22FCC9774();
  }

LABEL_30:
  v67 = v10;
  v68 = *(v0 + 576);
  if (v11)
  {
    v69 = v60;

    v70 = *(v0 + 440);
    v71 = (v70[7] + 16 * v69);
    *v71 = v46;
    v71[1] = v45;

    sub_22FA2B420(v68, &qword_27DAD8730, &qword_22FCD1B20);
  }

  else
  {
    v70 = *(v0 + 440);
    v70[(v60 >> 6) + 8] |= 1 << v60;
    v72 = (v70[6] + 16 * v60);
    *v72 = v57;
    v72[1] = v24;
    v73 = (v70[7] + 16 * v60);
    *v73 = v46;
    v73[1] = v45;

    sub_22FA2B420(v68, &qword_27DAD8730, &qword_22FCD1B20);
    v74 = v70[2];
    v30 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v30)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v70[2] = v75;
  }

  v76 = *(v0 + 664);
  v24 = *(v0 + 688) + 1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v24 != v76)
  {
    v114 = *(v0 + 688) + 1;
    *(v0 + 696) = v67;
    *(v0 + 688) = v114;
    *(v0 + 680) = v70;
    *(v0 + 672) = v141;
    v115 = *(v0 + 648);
    if (v114 < *(v115 + 16))
    {
      sub_22FA2D328(v115 + 40 * v114 + 32, v0 + 56);
      v116 = *(v0 + 80);
      v117 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v116);
      (*(v117 + 32))(v116, v117);
      v118 = *(v0 + 120);
      v119 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v118);
      v120 = (*(v119 + 56))(v118, v119);
      *(v0 + 704) = v120;
      v121 = *(v0 + 80);
      *(v0 + 712) = v121;
      v122 = v121;
      __swift_project_boxed_opaque_existential_1((v0 + 56), v121);
      v123 = *(v122 - 8);
      *(v0 + 728) = v123;
      *(v0 + 736) = swift_task_alloc();
      (*(v123 + 16))();
      v111 = sub_22FC45DD0;
      v124 = v120;
      v112 = 0;

      return MEMORY[0x2822009F8](v111, v124, v112);
    }

    goto LABEL_53;
  }

  v77 = *(*(v0 + 648) + 16);
  v139 = *(v0 + 616);
  v140 = *(v0 + 608);
  v142 = *(v0 + 592);
  v143 = *(v0 + 624);

  v78 = v67;
  v79 = (v77 - *(v67 + 16)) / v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_22FCD1800;
  v81 = MEMORY[0x277D83A80];
  *(v80 + 56) = MEMORY[0x277D839F8];
  *(v80 + 64) = v81;
  *(v80 + 32) = v79 * 100.0;
  *(v0 + 392) = sub_22FCC8AB4();
  *(v0 + 400) = v82;
  MEMORY[0x231907FA0](9504, 0xE200000000000000);
  v83 = *(v0 + 392);
  v84 = *(v0 + 400);
  *(v0 + 160) = MEMORY[0x277D837D0];
  *(v0 + 136) = v83;
  *(v0 + 144) = v84;
  sub_22FA32554((v0 + 136), (v0 + 168));
  v85 = MEMORY[0x277D84F98];
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v85;
  v87 = *(v0 + 192);
  v88 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 168, v87);
  v89 = *(v87 - 8);
  v90 = swift_task_alloc();
  (*(v89 + 16))(v90, v88, v87);
  sub_22FC49C38(*v90, v90[1], 0xD000000000000010, 0x800000022FCE89C0, v86, &v145);
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  v91 = v145;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8108, &unk_22FCD4A20);
  *(v0 + 224) = v92;
  *(v0 + 200) = v70;
  sub_22FA32554((v0 + 200), (v0 + 232));
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v91;
  v94 = *(v0 + 256);
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 232, v94);
  v96 = *(v94 - 8);
  v97 = swift_task_alloc();
  (*(v96 + 16))(v97, v95, v94);
  sub_22FC49E1C(*v97, 0xD00000000000001ALL, 0x800000022FCE89E0, v93, &v145, &qword_27DAD8108, &unk_22FCD4A20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));

  v98 = v145;
  *(v0 + 288) = v92;
  *(v0 + 264) = v78;
  sub_22FA32554((v0 + 264), (v0 + 296));
  LOBYTE(v92) = swift_isUniquelyReferenced_nonNull_native();
  v145 = v98;
  v99 = *(v0 + 320);
  v100 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v99);
  v101 = *(v99 - 8);
  v102 = swift_task_alloc();
  (*(v101 + 16))(v102, v100, v99);
  sub_22FC49E1C(*v102, 0x206575647265764FLL, 0xED0000736B736174, v92, &v145, &qword_27DAD8108, &unk_22FCD4A20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));

  v103 = v145;
  v104 = *(v139 + 24);
  v105 = *(v139 + 32);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  *(v0 + 328) = v103;
  sub_22FA32554((v0 + 328), (v0 + 360));
  LOBYTE(v103) = swift_isUniquelyReferenced_nonNull_native();
  v145 = v140;
  v106 = *(v0 + 384);
  v107 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 360, v106);
  v108 = *(v106 - 8);
  v109 = swift_task_alloc();
  (*(v108 + 16))(v109, v107, v106);
  sub_22FC49E1C(*v109, v104, v105, v103, &v145, &unk_27DAD7BC0, &unk_22FCD60B0);

  __swift_destroy_boxed_opaque_existential_0((v0 + 360));

  v110 = v145;
  v111 = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v143 == v142)
  {

    v113 = *(v0 + 8);

    return v113(v110);
  }

  v24 = *(v0 + 624);
  *(v0 + 608) = v110;
  v124 = *(v0 + 584);
  if ((v124 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (v24 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_57:
    __break(1u);
    return MEMORY[0x2822009F8](v111, v124, v112);
  }

LABEL_46:
  *(v0 + 616) = v111;
  *(v0 + 624) = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_57;
  }

  v125 = *(v0 + 456);
  v126 = *(v111 + 40);
  v127 = *(v111 + 48);
  v128 = *(v127 + 24);
  *(v0 + 40) = v126;
  *(v0 + 48) = v127;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v128(v126, v127);
  v130 = type metadata accessor for ActivitySession(0);
  v133 = v125 + 120;
  v132 = *(v125 + 120);
  v131 = *(v133 + 8);
  v134 = *(v126 - 8);
  v135 = swift_task_alloc();
  (*(v134 + 16))(v135, boxed_opaque_existential_1, v126);

  v136 = sub_22FA62068(v135, v131, v132, v130, v126, v127);
  *(v0 + 632) = v136;

  v144 = (*(v127 + 32) + **(v127 + 32));
  v137 = swift_task_alloc();
  *(v0 + 640) = v137;
  *v137 = v0;
  v137[1] = sub_22FC452C4;

  return v144(v136, v126, v127);
}

uint64_t sub_22FC47270()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC4738C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22FC473AC, v1, 0);
}

uint64_t sub_22FC473AC()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder);
  if (*(v2 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();

    MEMORY[0x231908070](v3);
    if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    v4 = v0[5];
    sub_22FCC8C84();
    swift_endAccess();

    return MEMORY[0x2822009F8](sub_22FC47534, v4, 0);
  }

  else
  {
    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22FC47534()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_22FC475EC;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FC475EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FC476E4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22FC47704, a1, 0);
}

uint64_t sub_22FC47704()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_22FC477CC;
  v3 = *(v0 + 64);

  return sub_22FAE383C(v1, v3);
}

uint64_t sub_22FC477CC()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22FC478F8, v1, 0);
}

uint64_t sub_22FC478F8()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_22FCC92C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = v0[8];
      v7 = MEMORY[0x231908810](v4, v2);
      swift_unknownObjectRelease();
      if (v7 == v6)
      {
LABEL_12:

        swift_beginAccess();
        sub_22FC15324(v4, v8);
        swift_endAccess();

        goto LABEL_14;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (*(v2 + 8 * v4 + 32) == v0[8])
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v9 = v0[1];

  return v9();
}

unint64_t sub_22FC47A84()
{
  v1 = v0[81];
  swift_beginAccess();
  result = *(v1 + 152);
  v0[82] = result;
  if (result >> 62)
  {
    v7 = result;
    v3 = sub_22FCC92C4();
    result = v7;
    v0[83] = v3;
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        v0[85] = MEMORY[0x277D84F90];
        v0[84] = 0;
        v4 = v0[82];

        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x231908810](0, v4);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v0[86] = v5;
        v6 = swift_task_alloc();
        v0[87] = v6;
        *v6 = v0;
        v6[1] = sub_22FC47C34;

        return sub_22FA929E0();
      }

      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[83] = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v0[89] = MEMORY[0x277D84F90];
  v8 = swift_task_alloc();
  v0[90] = v8;
  *v8 = v0;
  v8[1] = sub_22FC47F50;

  return sub_22FC44D14();
}

uint64_t sub_22FC47C34(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 704) = a1;

  return MEMORY[0x2822009F8](sub_22FC47D4C, v2, 0);
}

uint64_t sub_22FC47D4C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 680);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22FAC2528(0, v2[2] + 1, 1, *(v0 + 680));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22FAC2528((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 704);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);

  *(v0 + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  *(v0 + 560) = v5;
  v2[2] = v4 + 1;
  sub_22FA32554((v0 + 560), &v2[4 * v4 + 4]);
  if (v6 + 1 == v7)
  {

    *(v0 + 712) = v2;
    v8 = swift_task_alloc();
    *(v0 + 720) = v8;
    *v8 = v0;
    v8[1] = sub_22FC47F50;

    return sub_22FC44D14();
  }

  else
  {
    v10 = *(v0 + 672) + 1;
    *(v0 + 680) = v2;
    *(v0 + 672) = v10;
    v11 = *(v0 + 656);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x231908810]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    *(v0 + 688) = v12;
    v13 = swift_task_alloc();
    *(v0 + 696) = v13;
    *v13 = v0;
    v13[1] = sub_22FC47C34;

    return sub_22FA929E0();
  }
}

uint64_t sub_22FC47F50(uint64_t a1)
{
  v4 = *v2;
  v4[91] = v1;

  v5 = v4[81];
  if (v1)
  {
    v6 = sub_22FC48B28;
  }

  else
  {
    v4[92] = a1;
    v6 = sub_22FC4808C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FC4808C()
{
  v0[93] = v0[92];
  v1 = v0[81];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v0[94] = inited;
  *(inited + 16) = xmmword_22FCDDCA0;
  *(inited + 32) = 0x6574617453;
  *(inited + 40) = 0xE500000000000000;
  v3 = *(*(v1 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  if (v3 <= 1)
  {
    if (!*(*(v1 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
    {
      v4 = 0xEC000000676E697ALL;
      v6 = 0x696C616974696E49;
      goto LABEL_11;
    }

    v4 = 0xEB00000000705520;
    v5 = 1918989395;
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 0xE700000000000000;
      v6 = 0x676E696E6E7552;
      goto LABEL_11;
    }

    if (v3 != 3)
    {
      v4 = 0xE90000000000006ELL;
      v6 = 0x776F442074756853;
      goto LABEL_11;
    }

    v4 = 0xED00006E776F4420;
    v5 = 1953851475;
  }

  v6 = v5 | 0x676E697400000000;
LABEL_11:
  MEMORY[0x231907FA0](v6, v4);

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x800000022FCE8A00;
  if (qword_281481B08 != -1)
  {
    swift_once();
  }

  v8 = v0[81];
  v9 = MEMORY[0x277D839B0];
  *(inited + 96) = byte_281488079;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x800000022FCE8A20;
  v10 = *(v8 + 152);
  if (v10 >> 62)
  {
    v11 = sub_22FCC92C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v0[89];
  v13 = MEMORY[0x277D83B88];
  *(inited + 144) = v11;
  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000022FCE8A40;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0, qword_22FCD60C0);
  *(inited + 192) = v12;
  *(inited + 216) = v14;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x800000022FCE8A60;
  v15 = swift_task_alloc();
  v0[95] = v15;
  *v15 = v0;
  v15[1] = sub_22FC4837C;

  return sub_22FAED920();
}

uint64_t sub_22FC4837C(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 768) = a1;

  return MEMORY[0x2822009F8](sub_22FC48494, v2, 0);
}

uint64_t sub_22FC48494()
{
  v1 = v0[96];
  v2 = v0[94];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  v0[97] = v3;
  v2[30] = v1;
  v2[33] = v3;
  v2[34] = 0xD000000000000012;
  v2[35] = 0x800000022FCE8A80;
  v4 = swift_task_alloc();
  v0[98] = v4;
  *v4 = v0;
  v4[1] = sub_22FC48574;

  return sub_22FC1AF6C();
}

uint64_t sub_22FC48574(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 792) = a1;

  return MEMORY[0x2822009F8](sub_22FC4868C, v2, 0);
}

uint64_t sub_22FC4868C()
{
  v1 = v0[97];
  v2 = v0[94];
  *(v2 + 288) = v0[99];
  *(v2 + 312) = v1;
  strcpy((v2 + 320), "Worker Factory");
  *(v2 + 335) = -18;
  v3 = swift_task_alloc();
  v0[100] = v3;
  *v3 = v0;
  v3[1] = sub_22FC48758;

  return sub_22FB29940();
}

uint64_t sub_22FC48758(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 808) = a1;

  return MEMORY[0x2822009F8](sub_22FC48870, v2, 0);
}

uint64_t sub_22FC48870()
{
  v1 = v0[97];
  v2 = v0[94];
  *(v2 + 336) = v0[101];
  *(v2 + 360) = v1;
  strcpy((v2 + 368), "Task Scheduler");
  *(v2 + 383) = -18;
  v3 = swift_task_alloc();
  v0[102] = v3;
  *v3 = v0;
  v3[1] = sub_22FC4893C;

  return sub_22FB2E974();
}

uint64_t sub_22FC4893C(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 824) = a1;

  return MEMORY[0x2822009F8](sub_22FC48A54, v2, 0);
}

uint64_t sub_22FC48A54()
{
  v1 = v0[97];
  v2 = v0[94];
  v3 = v0[93];
  v2[48] = v0[103];
  v2[51] = v1;
  v2[52] = 0x7974697669746341;
  v2[57] = v1;
  v2[53] = 0xEF73757461745320;
  v2[54] = v3;
  v4 = sub_22FA4DAB0(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  swift_arrayDestroy();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22FC48B28()
{
  v1 = v0[91];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x726F727245;
  *(inited + 40) = 0xE500000000000000;
  swift_getErrorValue();
  v3 = sub_22FCC97D4();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA2B420(inited + 32, &unk_27DAD8750, &qword_22FCD42C0);

  v0[93] = v6;
  v7 = v0[81];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  v8 = swift_initStackObject();
  v0[94] = v8;
  *(v8 + 16) = xmmword_22FCDDCA0;
  *(v8 + 32) = 0x6574617453;
  *(v8 + 40) = 0xE500000000000000;
  v9 = *(*(v7 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  if (v9 <= 1)
  {
    if (!*(*(v7 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
    {
      v10 = 0xEC000000676E697ALL;
      v12 = 0x696C616974696E49;
      goto LABEL_11;
    }

    v10 = 0xEB00000000705520;
    v11 = 1918989395;
  }

  else
  {
    if (v9 == 2)
    {
      v10 = 0xE700000000000000;
      v12 = 0x676E696E6E7552;
      goto LABEL_11;
    }

    if (v9 != 3)
    {
      v10 = 0xE90000000000006ELL;
      v12 = 0x776F442074756853;
      goto LABEL_11;
    }

    v10 = 0xED00006E776F4420;
    v11 = 1953851475;
  }

  v12 = v11 | 0x676E697400000000;
LABEL_11:
  MEMORY[0x231907FA0](v12, v10);

  *(v8 + 48) = 0;
  *(v8 + 56) = 0xE000000000000000;
  *(v8 + 72) = v4;
  *(v8 + 80) = 0xD00000000000001CLL;
  *(v8 + 88) = 0x800000022FCE8A00;
  if (qword_281481B08 != -1)
  {
    swift_once();
  }

  v13 = v0[81];
  v14 = MEMORY[0x277D839B0];
  *(v8 + 96) = byte_281488079;
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD00000000000001BLL;
  *(v8 + 136) = 0x800000022FCE8A20;
  v15 = *(v13 + 152);
  if (v15 >> 62)
  {
    v16 = sub_22FCC92C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v0[89];
  v18 = MEMORY[0x277D83B88];
  *(v8 + 144) = v16;
  *(v8 + 168) = v18;
  *(v8 + 176) = 0xD000000000000011;
  *(v8 + 184) = 0x800000022FCE8A40;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0, qword_22FCD60C0);
  *(v8 + 192) = v17;
  *(v8 + 216) = v19;
  *(v8 + 224) = 0xD000000000000010;
  *(v8 + 232) = 0x800000022FCE8A60;
  v20 = swift_task_alloc();
  v0[95] = v20;
  *v20 = v0;
  v20[1] = sub_22FC4837C;

  return sub_22FAED920();
}

uint64_t sub_22FC48EC8(uint64_t a1)
{
  sub_22FCC67F4();
  sub_22FC4BF2C(&qword_281482518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22FCC8A14();
}

char *Executive.deinit()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis9Executive_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis9Executive_uuid;
  v4 = sub_22FCC67F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Executive.__deallocating_deinit()
{
  Executive.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FC4906C()
{
  sub_22FCC9844();
  sub_22FCC67F4();
  sub_22FC4BF2C(&qword_281482518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FCC8A14();
  return sub_22FCC9894();
}

uint64_t sub_22FC49114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FC47A64();
}

uint64_t sub_22FC491A4()
{
  sub_22FCC9844();
  sub_22FCC67F4();
  sub_22FC4BF2C(&qword_281482518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FCC8A14();
  return sub_22FCC9894();
}

uint64_t sub_22FC49244(uint64_t a1)
{
  sub_22FCC67F4();
  sub_22FC4BF2C(&qword_281482518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22FCC8A14();
}

uint64_t sub_22FC492CC(uint64_t a1)
{
  sub_22FCC9844();
  sub_22FCC67F4();
  sub_22FC4BF2C(&qword_281482518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FCC8A14();
  return sub_22FCC9894();
}

unint64_t sub_22FC49394(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22FC493EC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TemplatedPrompt(0);
  result = sub_22FC4C2F4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TemplatedPrompt);
  v11 = (a4[7] + 48 * a1);
  *(v11 + 25) = *(a3 + 25);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_22FC494B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22FCC7FF4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22FC49560(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_22FC495D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22FC49624(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 200 * result;
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v8;
  v9 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v9;
  *(v6 + 192) = *(a4 + 192);
  v10 = *(a4 + 176);
  *(v6 + 160) = *(a4 + 160);
  *(v6 + 176) = v10;
  v11 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v11;
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

_OWORD *sub_22FC496A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_22FA32554(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_22FC49710(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_22FC49758(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_22FC497A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_22FC497E8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22FC4982C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22FCC7514();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_22FC49908(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_22FC4C2F4(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_22FC499B4(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4 & 1;
  *(v8 + 1) = HIBYTE(a4) & 1;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_22FC49A14(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_22FC49B08;

  return v5(v2 + 16);
}

uint64_t sub_22FC49B08()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

_OWORD *sub_22FC49C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_22FA2DB54(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22FA32554(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22FA7086C();
    goto LABEL_7;
  }

  sub_22FA6C730(v16, a5 & 1);
  v22 = sub_22FA2DB54(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  v25 = MEMORY[0x28223BE20](v24, v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_22FC4A024(v13, a3, a4, *v27, v27[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_22FC49E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v34 = v14;
  *&v33 = a1;
  v15 = *a5;
  v17 = sub_22FA2DB54(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_22FA32554(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_22FA7086C();
    goto LABEL_7;
  }

  sub_22FA6C730(v20, a4 & 1);
  v26 = sub_22FA2DB54(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22FCC9774();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v14);
  v29 = MEMORY[0x28223BE20](v28, v28);
  v31 = (&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  sub_22FC4A0A8(v17, a2, a3, *v31, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

_OWORD *sub_22FC4A024(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_22FA32554(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_22FC4A0A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  *&v17 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_22FA32554(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_22FC4A150(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22FC4A244;

  return v5(v2 + 32);
}

uint64_t sub_22FC4A244()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22FC4A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x2822009F8](sub_22FC4A37C, a3, 0);
}

uint64_t sub_22FC4A37C()
{
  v46 = v0;
  v1 = *(v0[14] + 136);
  v0[17] = v1;
  v2 = sub_22FAF85A0(v1);
  v4 = v3;
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22FA2F600(v2, v4, &v45);
    _os_log_impl(&dword_22FA28000, v5, v6, "Attempting to unload worker %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v0[16];
  swift_beginAccess();
  v10 = *(v9 + 120);
  if (!*(v10 + 16))
  {
    goto LABEL_10;
  }

  v11 = sub_22FA2DB54(v2, v4);
  if ((v12 & 1) == 0)
  {

LABEL_10:

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      v32 = sub_22FA2F600(v2, v4, &v45);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_22FA28000, v28, v29, "Failed to unload worker %s: No requesters previously registered.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);

LABEL_21:
      v43 = v0[1];

      return v43();
    }

LABEL_20:

    goto LABEL_21;
  }

  v13 = v0[15];
  v14 = *(*(v10 + 56) + 8 * v11);

  v0[13] = v14;

  v15 = sub_22FAB5C34(v13, v14);

  v16 = v0[15];
  if ((v15 & 1) == 0)
  {
    sub_22FA728C0(v16, (v0 + 2));

    v33 = sub_22FCC8664();
    v34 = sub_22FCC8F24();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315394;
      v37 = sub_22FA2F600(v2, v4, &v45);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2080;
      v38 = sub_22FCC92F4();
      v40 = v39;
      sub_22FA3A7C4((v0 + 2));
      v41 = sub_22FA2F600(v38, v40, &v45);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_22FA28000, v33, v34, "Failed to unload worker %s: requester %s not previously registered", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v36, -1, -1);
      MEMORY[0x23190A000](v35, -1, -1);
    }

    else
    {

      sub_22FA3A7C4((v0 + 2));
    }

    goto LABEL_20;
  }

  sub_22FB2AE34(v16, (v0 + 2));
  sub_22FA2B420((v0 + 2), &qword_27DAD86E8, &qword_22FCD7598);
  v17 = v0[13];
  v0[21] = v17;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v9 + 120);
  *(v9 + 120) = 0x8000000000000000;
  sub_22FB25CB4(v17, v2, v4, isUniquelyReferenced_nonNull_native);

  *(v9 + 120) = v45;
  swift_endAccess();
  if (*(v17 + 16))
  {

    v19 = sub_22FCC8664();
    v20 = sub_22FCC8F34();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315650;
      v23 = sub_22FA2F600(v2, v4, &v45);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v17 + 16);
      *(v21 + 22) = 2080;

      v24 = sub_22FCC8E94();
      v26 = v25;

      v27 = sub_22FA2F600(v24, v26, &v45);

      *(v21 + 24) = v27;
      _os_log_impl(&dword_22FA28000, v19, v20, "Cannot unload worker %s: %ld requesters still using: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v22, -1, -1);
      MEMORY[0x23190A000](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v42 = *(v0[16] + 128);
  v0[22] = v42;

  return MEMORY[0x2822009F8](sub_22FC4A9F4, v42, 0);
}

uint64_t sub_22FC4A9F4()
{
  v1 = v0[16];
  sub_22FC163DC(v0[17], v0[18], v0[19]);

  return MEMORY[0x2822009F8](sub_22FC4AA64, v1, 0);
}

uint64_t sub_22FC4AA64()
{
  v24 = v0;
  v1 = v0[16];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (v3 = v0[18], v2 = v0[19], , sub_22FA2DB54(v3, v2), LOBYTE(v2) = v4, , (v2 & 1) != 0))
  {

    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F34();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[18];
      v7 = v0[19];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_22FA2F600(v8, v7, &v23);
      _os_log_impl(&dword_22FA28000, v5, v6, "Unloading worker for %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v12 = v0[18];
    v11 = v0[19];
    swift_beginAccess();
    sub_22FB040DC(v12, v11);
    swift_endAccess();
  }

  else
  {

    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[19];
    if (v15)
    {
      v17 = v0[18];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136446210;
      v20 = sub_22FA2F600(v17, v16, &v23);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v13, v14, "No cached worker for %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    else
    {
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FC4AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x2822009F8](sub_22FC4AD6C, a3, 0);
}

uint64_t sub_22FC4AD6C()
{
  v46 = v0;
  v1 = *(v0[14] + 136);
  v0[17] = v1;
  v2 = sub_22FAF8460(v1);
  v4 = v3;
  v0[18] = v2;
  v0[19] = v3;
  v0[20] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22FA2F600(v2, v4, &v45);
    _os_log_impl(&dword_22FA28000, v5, v6, "Attempting to unload worker %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v0[16];
  swift_beginAccess();
  v10 = *(v9 + 120);
  if (!*(v10 + 16))
  {
    goto LABEL_10;
  }

  v11 = sub_22FA2DB54(v2, v4);
  if ((v12 & 1) == 0)
  {

LABEL_10:

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      v32 = sub_22FA2F600(v2, v4, &v45);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_22FA28000, v28, v29, "Failed to unload worker %s: No requesters previously registered.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);

LABEL_21:
      v43 = v0[1];

      return v43();
    }

LABEL_20:

    goto LABEL_21;
  }

  v13 = v0[15];
  v14 = *(*(v10 + 56) + 8 * v11);

  v0[13] = v14;

  v15 = sub_22FAB5C34(v13, v14);

  v16 = v0[15];
  if ((v15 & 1) == 0)
  {
    sub_22FA728C0(v16, (v0 + 2));

    v33 = sub_22FCC8664();
    v34 = sub_22FCC8F24();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315394;
      v37 = sub_22FA2F600(v2, v4, &v45);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2080;
      v38 = sub_22FCC92F4();
      v40 = v39;
      sub_22FA3A7C4((v0 + 2));
      v41 = sub_22FA2F600(v38, v40, &v45);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_22FA28000, v33, v34, "Failed to unload worker %s: requester %s not previously registered", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v36, -1, -1);
      MEMORY[0x23190A000](v35, -1, -1);
    }

    else
    {

      sub_22FA3A7C4((v0 + 2));
    }

    goto LABEL_20;
  }

  sub_22FB2AE34(v16, (v0 + 2));
  sub_22FA2B420((v0 + 2), &qword_27DAD86E8, &qword_22FCD7598);
  v17 = v0[13];
  v0[21] = v17;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v9 + 120);
  *(v9 + 120) = 0x8000000000000000;
  sub_22FB25CB4(v17, v2, v4, isUniquelyReferenced_nonNull_native);

  *(v9 + 120) = v45;
  swift_endAccess();
  if (*(v17 + 16))
  {

    v19 = sub_22FCC8664();
    v20 = sub_22FCC8F34();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315650;
      v23 = sub_22FA2F600(v2, v4, &v45);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v17 + 16);
      *(v21 + 22) = 2080;

      v24 = sub_22FCC8E94();
      v26 = v25;

      v27 = sub_22FA2F600(v24, v26, &v45);

      *(v21 + 24) = v27;
      _os_log_impl(&dword_22FA28000, v19, v20, "Cannot unload worker %s: %ld requesters still using: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v22, -1, -1);
      MEMORY[0x23190A000](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v42 = *(v0[16] + 128);
  v0[22] = v42;

  return MEMORY[0x2822009F8](sub_22FC4B3E4, v42, 0);
}

uint64_t sub_22FC4B3E4()
{
  v1 = v0[16];
  sub_22FC163DC(v0[17], v0[18], v0[19]);

  return MEMORY[0x2822009F8](sub_22FC4C524, v1, 0);
}

uint64_t sub_22FC4B478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FC42A88(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22FC4B54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FC4B5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FC4B614()
{
  result = qword_27DAD9260;
  if (!qword_27DAD9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9260);
  }

  return result;
}

uint64_t sub_22FC4B668(uint64_t a1)
{
  result = sub_22FC4BF2C(&qword_27DAD9268, type metadata accessor for Executive, &protocol conformance descriptor for Executive);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Executive(uint64_t a1)
{
  result = qword_28147B230;
  if (!qword_28147B230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC4B75C(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    result = sub_22FCC67F4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of Executive.startup()()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22FA2C21C;

  return v4();
}

uint64_t dispatch thunk of Executive.shutdown()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22FA2C21C;

  return v4();
}

uint64_t dispatch thunk of Executive.activityStatus()()
{
  v4 = (*(*v0 + 304) + **(*v0 + 304));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22FAA2728;

  return v4();
}

uint64_t dispatch thunk of Executive.status()()
{
  v4 = (*(*v0 + 336) + **(*v0 + 336));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22FA4C64C;

  return v4();
}

uint64_t sub_22FC4BDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FC432AC(a1, v4, v5, v6);
}

uint64_t sub_22FC4BE74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FC4A150(a1, v4);
}

uint64_t sub_22FC4BF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FC4BF74(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C21C;

  return sub_22FC41ADC(a1, a2, v2);
}

uint64_t sub_22FC4C020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FC42208(a1, v4, v5, v6);
}

uint64_t sub_22FC4C0D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FC42000(a1, v4, v5, v6);
}

uint64_t sub_22FC4C188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FC44314(a1, v4, v5, v6);
}

uint64_t sub_22FC4C23C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FC49A14(a1, v4);
}

uint64_t sub_22FC4C2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC4C368(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FC4C3B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_22FC4C418()
{
  result = qword_27DAD9278;
  if (!qword_27DAD9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9278);
  }

  return result;
}

unint64_t sub_22FC4C470()
{
  result = qword_27DAD9280;
  if (!qword_27DAD9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9280);
  }

  return result;
}

unint64_t sub_22FC4C4C4()
{
  result = qword_27DAD9288;
  if (!qword_27DAD9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD9288);
  }

  return result;
}

void *sub_22FC4C52C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8990, &qword_22FCD8FC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for CreativePromptTemplate(0);
  MEMORY[0x28223BE20](v10, v11);
  v34 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v14);
  v32 = &v28 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(v15 + 72);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a3 + v29;
  v33 = (v15 + 48);
  v21 = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = a1;
  while (1)
  {
    a1(v20, v16);
    if (v3)
    {
      break;
    }

    if ((*v33)(v9, 1, v10) == 1)
    {
      sub_22FA2B420(v9, &qword_27DAD8990, &qword_22FCD8FC0);
    }

    else
    {
      v22 = v32;
      sub_22FB69DF8(v9, v32);
      sub_22FB69DF8(v22, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22FAC2300(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v26 = sub_22FAC2300((v23 > 1), v24 + 1, 1, v21);
        v25 = v19;
        v21 = v26;
      }

      else
      {
        v25 = v19;
      }

      v21[2] = v24 + 1;
      v19 = v25;
      sub_22FB69DF8(v34, v21 + v29 + v24 * v25);
      v10 = v30;
      a1 = v31;
    }

    v20 += v19;
    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_22FC4C7CC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231908810](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x231908070]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22FCC8C64();
        }

        sub_22FCC8C84();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22FC4C978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t sub_22FC4C9C8()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider____lazy_storage___personOrPetUUIDsWithFeedback;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider____lazy_storage___personOrPetUUIDsWithFeedback))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider____lazy_storage___personOrPetUUIDsWithFeedback);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD99F8]) initWithPhotoLibrary_];
    v7[4] = sub_22FB3E884;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_22FC4C978;
    v7[3] = &block_descriptor_38;
    v4 = _Block_copy(v7);
    v5 = [v3 personUUIDsWithUserFeedbackFilterBlock_];
    _Block_release(v4);

    v2 = sub_22FCC8E84();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22FC4CB14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC74C4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8068, &unk_22FCD4840);
  v3[8] = swift_task_alloc();
  v5 = sub_22FCC7514();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = *(type metadata accessor for CreativePromptValidationResult(0) - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_22FCC84E4();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC4CD38, 0, 0);
}

uint64_t sub_22FC4CD38(uint64_t a1)
{
  v1[19] = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Fetching contextual suggestions.", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = v1[4];
  v6 = v1[2];

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_22FCC8414();
  v7 = *(v5 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_triggerReader + 24);
  v8 = *(v5 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_triggerReader + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_triggerReader), v7);
  v12 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  v1[20] = v9;
  *v9 = v1;
  v9[1] = sub_22FC4CF38;
  v10 = v1[2];

  return v12(v10, v7, v8);
}

uint64_t sub_22FC4CF38(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22FC4D038, 0, 0);
}

uint64_t sub_22FC4D038()
{
  if (*(v0[21] + 16))
  {
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = sub_22FC4D258;
    v2 = v0[21];
    v3 = v0[2];

    return sub_22FC4E0A8(v2, v3);
  }

  else
  {

    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22FA28000, v5, v6, "No active contextual triggers.", v7, 2u);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0[2], *(v0[2] + 24));
    sub_22FCC83F4();
    (*(v9 + 8))(v8, v10);

    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22FC4D258(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {

    v4 = sub_22FC4DE68;
  }

  else
  {
    v4 = sub_22FC4D374;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FC4D374()
{
  if (*(v0[23] + 16))
  {
    v1 = v0[3];
    v2 = (v0[4] + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_validator);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v5 = [v1 childProgressReporterFromStart:0.1 toEnd:0.9];
    v0[25] = v5;
    v18 = (*(v4 + 16) + **(v4 + 16));
    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_22FC4D66C;
    v7 = v0[23];
    v8 = v0[2];

    return v18(v7, v8, v5, v3, v4);
  }

  else
  {

    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22FA28000, v10, v11, "No contextual templates found for triggers.", v12, 2u);
      MEMORY[0x23190A000](v12, -1, -1);
    }

    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0[2], *(v0[2] + 24));
    sub_22FCC83F4();
    (*(v14 + 8))(v13, v15);

    v16 = v0[1];
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_22FC4D66C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_22FC4DF78;
  }

  else
  {

    v4 = sub_22FC4D788;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FC4D788()
{
  v60 = v0;
  v1 = *(v0 + 216);
  v58 = *(v1 + 16);
  if (v58)
  {
    v2 = 0;
    v56 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 48);
    v55 = *MEMORY[0x277D3C128];
    v53 = (v4 + 8);
    v54 = (v4 + 104);
    v51 = (v3 + 48);
    v52 = (v3 + 56);
    v48 = v3;
    v50 = (v3 + 32);
    v5 = *(v0 + 224);
    v6 = MEMORY[0x277D84F90];
    v57 = *(v0 + 216);
    while (v2 < *(v1 + 16))
    {
      v7 = *(v0 + 120);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = *(v0 + 40);
      sub_22FC50A00(*(v0 + 216) + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v2, v7, type metadata accessor for CreativePromptValidationResult);
      (*v54)(v9, v55, v10);
      sub_22FB70628(v7, v9, v8);
      if (v5)
      {
        v12 = *(v0 + 112);
        v11 = *(v0 + 120);
        (*v53)(*(v0 + 56), *(v0 + 40));
        sub_22FC50A00(v11, v12, type metadata accessor for CreativePromptValidationResult);
        v13 = sub_22FCC8664();
        v14 = sub_22FCC8F14();
        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 112);
        if (v15)
        {
          v17 = swift_slowAlloc();
          v49 = v6;
          v18 = swift_slowAlloc();
          v59 = v18;
          *v17 = 136315138;
          v19 = CreativePromptValidationResult.description.getter();
          v21 = v20;
          sub_22FC50A68(v16, type metadata accessor for CreativePromptValidationResult);
          v22 = sub_22FA2F600(v19, v21, &v59);

          *(v17 + 4) = v22;
          _os_log_impl(&dword_22FA28000, v13, v14, "Failed to convert validation result to prompt suggestion %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          v23 = v18;
          v6 = v49;
          MEMORY[0x23190A000](v23, -1, -1);
          MEMORY[0x23190A000](v17, -1, -1);
        }

        else
        {

          sub_22FC50A68(v16, type metadata accessor for CreativePromptValidationResult);
        }

        v24 = 1;
      }

      else
      {
        (*v53)(*(v0 + 56), *(v0 + 40));
        v24 = 0;
      }

      v25 = *(v0 + 120);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      (*v52)(v27, v24, 1, v26);
      sub_22FC50A68(v25, type metadata accessor for CreativePromptValidationResult);
      if ((*v51)(v27, 1, v26) == 1)
      {
        sub_22FA2B420(*(v0 + 64), &qword_27DAD8068, &unk_22FCD4840);
        v1 = v57;
      }

      else
      {
        v29 = *(v0 + 88);
        v28 = *(v0 + 96);
        v30 = *(v0 + 72);
        v31 = *v50;
        (*v50)(v28, *(v0 + 64), v30);
        v31(v29, v28, v30);
        v1 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_22FAC21D4(0, v6[2] + 1, 1, v6);
        }

        v33 = v6[2];
        v32 = v6[3];
        if (v33 >= v32 >> 1)
        {
          v6 = sub_22FAC21D4((v32 > 1), v33 + 1, 1, v6);
        }

        v34 = *(v0 + 88);
        v35 = *(v0 + 72);
        v6[2] = v33 + 1;
        v31(v6 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v33, v34, v35);
      }

      v5 = 0;
      if (v58 == ++v2)
      {
        v36 = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = *(v0 + 224);
    v6 = MEMORY[0x277D84F90];
LABEL_20:

    v37 = sub_22FCC8664();
    v38 = sub_22FCC8F34();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v6[2];

      _os_log_impl(&dword_22FA28000, v37, v38, "Validated %ld contextual suggestions.", v39, 0xCu);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {
    }

    sub_22FCC9004();
    if (v36)
    {

      v41 = *(v0 + 136);
      v40 = *(v0 + 144);
      v42 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      sub_22FCC83F4();
      (*(v41 + 8))(v40, v42);

      v43 = *(v0 + 8);

      v43();
    }

    else
    {
      v44 = *(v0 + 136);
      v45 = *(v0 + 144);
      v46 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      sub_22FCC83F4();
      (*(v44 + 8))(v45, v46);

      v47 = *(v0 + 8);

      v47(v6);
    }
  }
}

uint64_t sub_22FC4DE68()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FC4DF78()
{

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FC4E0A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(type metadata accessor for CreativePromptTemplate(0) - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_22FCC68A4();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC4E1DC, 0, 0);
}

uint64_t sub_22FC4E1DC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = (v0[4] + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_templateCache);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_22FCC6874();
  v7 = sub_22FCC6834();
  v9 = v8;
  v0[12] = v8;
  v10 = *(v3 + 8);
  v0[13] = v10;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v14 = (*(v6 + 8) + **(v6 + 8));
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_22FC4E378;
  v12 = v0[3];

  return v14(v7, v9, v12, v5, v6);
}

uint64_t sub_22FC4E378(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_22FC4EA84;
  }

  else
  {

    v4 = sub_22FC4E494;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FC4E494()
{
  v54 = v0;
  v1 = *(v0 + 128);
  if (*(v1 + 16))
  {

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      _os_log_impl(&dword_22FA28000, v2, v3, "Cache contained %ld templates.", v4, 0xCu);
      MEMORY[0x23190A000](v4, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 128);
    v25 = *(v0 + 32);
    v26 = swift_task_alloc();
    v27 = *(v0 + 16);
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    v28 = sub_22FC4C52C(sub_22FC51980, v26, v24);

    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v28[2];

      _os_log_impl(&dword_22FA28000, v29, v30, "Matched %ld templates to triggers.", v31, 0xCu);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    else
    {
    }

    v32 = v28[2];
    if (v32)
    {
      v33 = 0;
      v34 = *(v0 + 40);
      v51 = v28;
      while (v33 < v28[2])
      {
        v36 = *(v0 + 48);
        v35 = *(v0 + 56);
        sub_22FC50A00(v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v35, type metadata accessor for CreativePromptTemplate);
        sub_22FC50A00(v35, v36, type metadata accessor for CreativePromptTemplate);
        v37 = sub_22FCC8664();
        v38 = sub_22FCC8F04();
        v39 = os_log_type_enabled(v37, v38);
        v40 = *(v0 + 48);
        if (v39)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v53[0] = v42;
          *v41 = 136315138;
          v43 = v34;
          v44 = CreativePromptTemplate.description.getter();
          v45 = v32;
          v47 = v46;
          sub_22FC50A68(v40, type metadata accessor for CreativePromptTemplate);
          v48 = v44;
          v34 = v43;
          v49 = sub_22FA2F600(v48, v47, v53);
          v32 = v45;

          *(v41 + 4) = v49;
          _os_log_impl(&dword_22FA28000, v37, v38, "Triggered Template: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v0 = v52;
          MEMORY[0x23190A000](v42, -1, -1);
          v28 = v51;
          MEMORY[0x23190A000](v41, -1, -1);
        }

        else
        {

          sub_22FC50A68(v40, type metadata accessor for CreativePromptTemplate);
        }

        ++v33;
        sub_22FC50A68(*(v0 + 56), type metadata accessor for CreativePromptTemplate);
        if (v32 == v33)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:

      v50 = *(v0 + 8);

      v50(v28);
    }
  }

  else
  {

    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53[0] = v11;
      *v10 = 136315138;
      sub_22FCC6874();
      v12 = sub_22FCC6834();
      v14 = v13;
      v7(v8, v9);
      v15 = sub_22FA2F600(v12, v14, v53);
      v0 = v52;

      *(v10 + 4) = v15;
      _os_log_impl(&dword_22FA28000, v5, v6, "No contextual templates found! Current locale identifier: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 64);
    sub_22FCC6874();
    v19 = sub_22FCC6834();
    v21 = v20;
    v16(v17, v18);
    sub_22FC509AC();
    swift_allocError();
    *v22 = v19;
    v22[1] = v21;
    swift_willThrow();

    v23 = *(v0 + 8);

    v23();
  }
}

uint64_t sub_22FC4EA84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC4EB14@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_22FC4EBAC(a1, a2, a3);
  if (v3)
  {

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CreativePromptTemplate(0);
  return (*(*(v6 - 8) + 56))(a3, v5, 1, v6);
}

void sub_22FC4EBAC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = type metadata accessor for CreativePromptTemplate(0);
  MEMORY[0x28223BE20](v8, v9);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + v10[12]);
  v14 = v13[1];
  if (!v14)
  {
    sub_22FC509AC();
    swift_allocError();
    v32 = xmmword_22FCD8610;
LABEL_22:
    *v31 = v32;
    swift_willThrow();
    return;
  }

  v103 = v12;
  v104 = v4;
  v105 = v3;
  v106 = a1;
  v101 = v10;
  v102 = a3;
  v15 = *v13;
  v16 = *(a2 + 16);
  v107 = v14;

  if (!v16)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v17 = 0;
  v18 = a2 + 32;
  v108 = a2 + 40;
  v19 = MEMORY[0x277D84F90];
  v115 = a2 + 32;
LABEL_5:
  while (2)
  {
    if (v17 >= v16)
    {
      __break(1u);
      goto LABEL_44;
    }

    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_44:
      __break(1u);
      return;
    }

    v21 = 16 * v17;
    v22 = *(v18 + 16 * v17++);
    v23 = *(v22 + 16);
    v24 = 32;
    do
    {
      if (!v23)
      {
        if (v20 == v16)
        {
          goto LABEL_18;
        }

        goto LABEL_5;
      }

      v25 = *(v22 + v24);
      v24 += 8;
      --v23;
    }

    while (v25 != v15);
    v26 = *(v108 + v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22FA87348(0, *(v19 + 16) + 1, 1);
      v19 = v113;
    }

    v29 = *(v19 + 16);
    v28 = *(v19 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_22FA87348((v28 > 1), v29 + 1, 1);
      v19 = v113;
    }

    *(v19 + 16) = v29 + 1;
    v30 = v19 + 16 * v29;
    *(v30 + 32) = v22;
    *(v30 + 40) = v26;
    v18 = v115;
    if (v20 != v16)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (!*(v19 + 16))
  {

    sub_22FC509AC();
    swift_allocError();
    v32 = xmmword_22FCD1D60;
    goto LABEL_22;
  }

  v33 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_logger;
  v34 = v106;
  v35 = v103;
  sub_22FC50A00(v106, v103, type metadata accessor for CreativePromptTemplate);

  v36 = v105;
  v37 = v19;
  v38 = sub_22FCC8664();
  v39 = sub_22FCC8F04();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v115 = v33;
    v42 = v41;
    v113 = v41;
    *v40 = 136315394;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C0, &qword_22FCD49D0);
    v44 = MEMORY[0x2319080B0](v19, v43);
    v46 = sub_22FA2F600(v44, v45, &v113);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    v47 = CreativePromptTemplate.description.getter();
    v49 = v48;
    sub_22FC50A68(v35, type metadata accessor for CreativePromptTemplate);
    v50 = sub_22FA2F600(v47, v49, &v113);
    v34 = v106;

    *(v40 + 14) = v50;
    _os_log_impl(&dword_22FA28000, v38, v39, "Matched trigger %s on template. Verifying features. %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v42, -1, -1);
    v51 = v40;
    v36 = v105;
    MEMORY[0x23190A000](v51, -1, -1);
  }

  else
  {

    sub_22FC50A68(v35, type metadata accessor for CreativePromptTemplate);
  }

  v52 = v107;
  v113 = 0;
  v114 = 0;

  sub_22FC515F4(v37, v52, v36, &v113);
  v54 = v53;

  v55 = *(v54 + 16);

  if (v55)
  {
    v56 = v34[2];
    v57 = v34[3];
    v104 = v56;
    v105 = v113;
    v115 = v114;
    v108 = v57;
    if (v114)
    {
      v111 = v56;
      v112 = v57;
      v109 = 64;
      v110 = 0xE100000000000000;
      sub_22FA7FD88();

      v58 = MEMORY[0x277D837D0];
      if (sub_22FCC9224())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_22FCD1800;
        *(v59 + 56) = v58;
        *(v59 + 64) = sub_22FA4EF4C();
        v60 = v115;
        *(v59 + 32) = v105;
        *(v59 + 40) = v60;

        v103 = sub_22FCC8AA4();
        v57 = v61;

        v62 = sub_22FCC8664();
        v63 = sub_22FCC8F04();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v111 = v100;
          *v64 = 136315138;
          v65 = sub_22FA2F600(v103, v57, &v111);

          *(v64 + 4) = v65;
          v66 = v63;
          v67 = v62;
          _os_log_impl(&dword_22FA28000, v62, v66, "Hydrating template with contact name: %s", v64, 0xCu);
          v68 = v100;
          __swift_destroy_boxed_opaque_existential_0(v100);
          MEMORY[0x23190A000](v68, -1, -1);
          v69 = v64;
          v34 = v106;
          MEMORY[0x23190A000](v69, -1, -1);
        }

        else
        {
        }

        v56 = v103;
      }
    }

    else
    {
    }

    v74 = v56;
    v111 = v56;
    v112 = v57;
    v109 = 64;
    v110 = 0xE100000000000000;
    sub_22FA7FD88();
    v75 = sub_22FCC9224();

    v76 = sub_22FCC8664();
    if (v75)
    {
      v77 = sub_22FCC8F14();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v111 = v79;
        *v78 = 136315138;
        v80 = sub_22FA2F600(v74, v57, &v111);

        *(v78 + 4) = v80;
        _os_log_impl(&dword_22FA28000, v76, v77, "Failed to hydrate prompt template %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x23190A000](v79, -1, -1);
        MEMORY[0x23190A000](v78, -1, -1);
      }

      else
      {
      }

      sub_22FC509AC();
      swift_allocError();
      *v98 = xmmword_22FCD3720;
      swift_willThrow();
    }

    else
    {
      v81 = sub_22FCC8F04();

      v82 = os_log_type_enabled(v76, v81);
      v103 = v74;
      if (v82)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v111 = v84;
        *v83 = 136315138;
        *(v83 + 4) = sub_22FA2F600(v74, v57, &v111);
        _os_log_impl(&dword_22FA28000, v76, v81, "Template is valid %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x23190A000](v84, -1, -1);
        v85 = v83;
        v34 = v106;
        MEMORY[0x23190A000](v85, -1, -1);
      }

      v87 = *v34;
      v86 = v34[1];
      v88 = v34[6];
      v90 = v101;
      v89 = v102;
      sub_22FB66C34(v34 + v101[8], v102 + v101[8]);
      v91 = *(v34 + v90[10]);
      v92 = *(v34 + v90[11]);
      *v89 = v87;
      v89[1] = v86;
      v93 = v103;
      v94 = v107;
      v95 = v108;
      v89[2] = v104;
      v89[3] = v95;
      v89[4] = v93;
      v89[5] = v57;
      v89[6] = v88;
      v96 = (v89 + v90[9]);
      *v96 = v105;
      v96[1] = v115;
      *(v89 + v90[10]) = v91;
      *(v89 + v90[11]) = v92;
      v97 = (v89 + v90[12]);
      *v97 = v15;
      v97[1] = v94;
    }
  }

  else
  {
    v70 = sub_22FCC8664();
    v71 = sub_22FCC8F04();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_22FA28000, v70, v71, "Template is has matching trigger but features not satisfied", v72, 2u);
      MEMORY[0x23190A000](v72, -1, -1);
    }

    sub_22FC509AC();
    swift_allocError();
    *v73 = xmmword_22FCD1D60;
    swift_willThrow();
  }
}

uint64_t sub_22FC4F544(uint64_t a1, unint64_t a2, char a3)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    v15 = 0;
    return v15 & 1;
  }

  v8 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_personCache;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
LABEL_9:
    v16 = objc_autoreleasePoolPush();
    sub_22FC4F674(v3, a1, a2, a3 & 1, &v18);
    objc_autoreleasePoolPop(v16);
    v15 = v18;
    return v15 & 1;
  }

  v10 = sub_22FA2DB54(a1, a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_9;
  }

  v12 = (*(v9 + 56) + 24 * v10);
  v13 = *v12;
  v14 = v12[1];

  v15 = v14 & (v13 ^ a3 ^ 1);
  return v15 & 1;
}

void sub_22FC4F674(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = [*(a1 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FCD17F0;
  *(v11 + 32) = sub_22FCC8A84();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_22FCC8A84();
  *(v11 + 56) = v13;
  v14 = MEMORY[0x277D837D0];
  v15 = sub_22FCC8C24();

  [v10 setFetchPropertySets_];

  sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FCD17F0;
  *(v16 + 56) = v14;
  v17 = sub_22FA4EF4C();
  *(v16 + 32) = 1701667182;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 96) = v14;
  *(v16 + 104) = v17;
  *(v16 + 64) = v17;
  *(v16 + 72) = a2;
  *(v16 + 80) = a3;

  v18 = sub_22FCC8EE4();
  [v10 setPredicate_];

  v19 = [objc_opt_self() fetchPersonsWithOptions_];
  if ([v19 count] != 1)
  {
    goto LABEL_41;
  }

  v20 = [v19 fetchedObjects];
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = v20;
  sub_22FA3A77C(0, &qword_27DAD7F20, 0x277CD9938);
  v22 = sub_22FCC8C44();

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  if (!sub_22FCC92C4())
  {
LABEL_40:

LABEL_41:
    v64 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_personCache;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(a1 + v64);
    *(a1 + v64) = 0x8000000000000000;
    sub_22FB26DAC(0, a2, a3, a2, a3, isUniquelyReferenced_nonNull_native);
    *(a1 + v64) = v85;
    swift_endAccess();

    v66 = sub_22FCC8664();
    v67 = sub_22FCC8F34();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = a5;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v84[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_22FA2F600(a2, a3, v84);
      _os_log_impl(&dword_22FA28000, v66, v67, "Checked person %s and is blocked for ambiguity", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x23190A000](v70, -1, -1);
      v71 = v69;
      a5 = v68;
      MEMORY[0x23190A000](v71, -1, -1);
    }

    goto LABEL_44;
  }

LABEL_5:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = a4;
    v24 = MEMORY[0x231908810](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v23 = a4;
    v24 = *(v22 + 32);
  }

  v25 = v24;

  if ([v25 type] == -1)
  {
LABEL_11:
    v32 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_personCache;
    swift_beginAccess();

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(a1 + v32);
    *(a1 + v32) = 0x8000000000000000;
    sub_22FB26DAC(0, a2, a3, a2, a3, v33);
    *(a1 + v32) = v85;
    swift_endAccess();

    v34 = v25;
    v35 = sub_22FCC8664();
    v36 = sub_22FCC8F34();

    if (os_log_type_enabled(v35, v36))
    {
      v80 = v36;
      v37 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84[0] = v83;
      *v37 = 136315394;
      *(v37 + 4) = sub_22FA2F600(a2, a3, v84);
      *(v37 + 12) = 2080;
      v38 = [v34 isMe];
      v39 = v38 == 0;
      if (v38)
      {
        v40 = 25965;
      }

      else
      {
        v40 = 0x656D20746F6ELL;
      }

      v41 = a5;
      if (v39)
      {
        v42 = 0xE600000000000000;
      }

      else
      {
        v42 = 0xE200000000000000;
      }

      v78 = v34;
      v43 = sub_22FA2F600(v40, v42, v84);
      a5 = v41;

      *(v37 + 14) = v43;
      _os_log_impl(&dword_22FA28000, v35, v80, "Checked person %s is %s and is blocked for negative feedback", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v83, -1, -1);
      MEMORY[0x23190A000](v37, -1, -1);

      goto LABEL_45;
    }

LABEL_44:
LABEL_45:

    *a5 = 0;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
LABEL_46:

    return;
  }

  v77 = v23;
  v82 = a5;
  v26 = sub_22FC4C9C8();
  v79 = v25;
  v27 = [v25 uuid];
  if (v27)
  {
    v28 = v27;
    v29 = sub_22FCC8A84();
    v31 = v30;

    LOBYTE(v28) = sub_22FAB5B3C(v29, v31, v26);

    a5 = v82;
    v25 = v79;
    if ((v28 & 1) == 0)
    {
      v44 = [v79 displayName];
      if (v44)
      {
        v45 = v44;
        v46 = sub_22FCC8A84();
        v48 = v47;
      }

      else
      {

        v48 = a3;
        v46 = a2;
      }

      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (!v49)
      {

        v46 = a2;
        v48 = a3;
      }

      v75 = v48;
      v76 = v46;

      v50 = v79;
      v51 = sub_22FCC8664();
      v52 = sub_22FCC8F34();

      if (os_log_type_enabled(v51, v52))
      {
        log = v51;
        v53 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v84[0] = v74;
        *v53 = 136315394;
        *(v53 + 4) = sub_22FA2F600(a2, a3, v84);
        *(v53 + 12) = 2080;
        v54 = [v50 isMe];
        v55 = v54 == 0;
        if (v54)
        {
          v56 = 25965;
        }

        else
        {
          v56 = 0x656D20746F6ELL;
        }

        v57 = v50;
        if (v55)
        {
          v58 = 0xE600000000000000;
        }

        else
        {
          v58 = 0xE200000000000000;
        }

        v72 = v52;
        v59 = sub_22FA2F600(v56, v58, v84);
        v50 = v57;

        *(v53 + 14) = v59;
        _os_log_impl(&dword_22FA28000, log, v72, "Checked person %s is %s and is not blocked", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v74, -1, -1);
        MEMORY[0x23190A000](v53, -1, -1);
      }

      else
      {
      }

      v81 = v50;

      v60 = [v50 isMe];
      v61 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_personCache;
      swift_beginAccess();

      v62 = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(a1 + v61);
      *(a1 + v61) = 0x8000000000000000;
      sub_22FB26DAC(v60 | 0x100, v76, v75, a2, a3, v62);

      *(a1 + v61) = v85;
      swift_endAccess();
      v63 = [v81 &selRef_allVIPShufflePosterDescriptorFromEligiblePersonLocalIdentifiers_];

      if (((v63 ^ v77) & 1) == 0)
      {
        *v82 = 1;
        *(v82 + 8) = v76;
        *(v82 + 16) = v75;
        return;
      }

      *v82 = 0;
      *(v82 + 8) = a2;
      *(v82 + 16) = a3;
      goto LABEL_46;
    }

    goto LABEL_11;
  }

LABEL_49:
  __break(1u);
}

uint64_t ContextualPromptProvider.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_templateCache));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_validator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_triggerReader));

  return v0;
}

uint64_t ContextualPromptProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_templateCache));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_validator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_triggerReader));

  return swift_deallocClassInstance();
}

uint64_t sub_22FC501C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA52F04;

  return sub_22FC4CB14(a1, a2);
}

id sub_22FC50270(void *a1)
{
  v1 = a1;
  PGFeature.debugDescription.getter();

  v2 = sub_22FCC8A54();

  return v2;
}

uint64_t PGFeature.debugDescription.getter()
{
  v1 = v0;
  swift_getObjectType();
  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000010, 0x800000022FCE8D50);
  v2 = [v0 name];
  v3 = sub_22FCC8A84();
  v5 = v4;

  MEMORY[0x231907FA0](v3, v5);

  MEMORY[0x231907FA0](0x203A65707974202CLL, 0xE800000000000000);
  v6 = [swift_getObjCClassFromMetadata() stringForFeatureType_];
  v7 = sub_22FCC8A84();
  v9 = v8;

  MEMORY[0x231907FA0](v7, v9);

  MEMORY[0x231907FA0](0xD000000000000011, 0x800000022FCE8D70);
  v10 = [v1 isNoneFeature];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x231907FA0](v12, v13);

  MEMORY[0x231907FA0](0xD000000000000012, 0x800000022FCE8D90);
  v14 = [v1 encodedFeature];
  sub_22FCC89D4();

  v15 = sub_22FCC89E4();
  v17 = v16;

  MEMORY[0x231907FA0](v15, v17);

  return 0;
}

unint64_t PHMemoryTriggerType.debugDescription.getter(uint64_t a1)
{
  sub_22FCC9384();

  v2 = [objc_opt_self() stringForTriggerType_];
  v3 = sub_22FCC8A84();
  v5 = v4;

  MEMORY[0x231907FA0](v3, v5);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t dispatch thunk of ContextualPromptProviding.fetchSuggestions(eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FAA3184;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for ContextualPromptProvider(uint64_t a1)
{
  result = qword_28147ED98;
  if (!qword_28147ED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC5078C(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t dispatch thunk of ContextualPromptProvider.fetchSuggestions(eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FAA2728;

  return v8(a1, a2);
}

unint64_t sub_22FC509AC()
{
  result = qword_27DAD92A0;
  if (!qword_27DAD92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD92A0);
  }

  return result;
}

uint64_t sub_22FC50A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FC50A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FC50AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = type metadata accessor for CreativePromptTemplateCache(0);
  v21 = &protocol witness table for CreativePromptTemplateCache;
  *&v19 = a2;
  v17 = type metadata accessor for CreativePromptValidator(0);
  v18 = &off_2844ABB58;
  *&v16 = a3;
  v14 = type metadata accessor for ContextualPromptTriggers(0);
  v15 = &protocol witness table for ContextualPromptTriggers;
  *&v13 = a4;
  type metadata accessor for ContextualPromptProvider(0);
  v8 = swift_allocObject();
  sub_22FCC8674();
  v9 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_personCache;
  *(v8 + v9) = sub_22FA4D588(MEMORY[0x277D84F90]);
  *(v8 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider____lazy_storage___personOrPetUUIDsWithFeedback) = 0;
  v10 = *(*(a1 + 120) + 112);
  *(v8 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_photoLibrary) = v10;
  *(v8 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_graphManager) = a1;
  sub_22FA2CF78(&v19, v8 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_templateCache);
  sub_22FA2CF78(&v16, v8 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_validator);
  sub_22FA2CF78(&v13, v8 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptProvider_triggerReader);
  v11 = v10;
  return v8;
}

uint64_t sub_22FC50C2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = [objc_opt_self() stringForFeatureType_];
  v10 = sub_22FCC8A84();
  v12 = v11;

  if (!*(a2 + 16))
  {

    goto LABEL_8;
  }

  v13 = sub_22FA2DB54(v10, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_8:

    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F04();

    if (!os_log_type_enabled(v21, v22))
    {
LABEL_11:

      return 0;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v56 = v24;
    *v23 = 136315138;
    v25 = sub_22FB66DAC(v7, v6, v8);
    v27 = sub_22FA2F600(v25, v26, &v56);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22FA28000, v21, v22, "Template has required trigger not matching active trigger: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23190A000](v24, -1, -1);
    v28 = v23;
LABEL_10:
    MEMORY[0x23190A000](v28, -1, -1);
    goto LABEL_11;
  }

  v16 = (*(a2 + 56) + 16 * v13);
  v18 = *v16;
  v17 = v16[1];
  if (v7 == 3)
  {
    if (sub_22FCC8AF4() == 25965 && v19 == 0xE200000000000000)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_22FCC9704();
    }

    v36 = sub_22FC4F544(v18, v17, v20 & 1);
    v39 = v38;
    if (v36)
    {
      v40 = v37;

      v41 = sub_22FCC8664();
      v42 = sub_22FCC8F04();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v56 = v44;
        *v43 = 136315394;
        v45 = sub_22FA2F600(v18, v17, &v56);
        v46 = v40;
        v47 = v45;

        *(v43 + 4) = v47;
        v40 = v46;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_22FA2F600(v46, v39, &v56);
        _os_log_impl(&dword_22FA28000, v41, v42, "Template has required person feature with verified associated name: %s will use display name %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v44, -1, -1);
        MEMORY[0x23190A000](v43, -1, -1);
      }

      else
      {
      }

      *a4 = v40;
      a4[1] = v39;

      return 1;
    }

    return 0;
  }

  v30 = sub_22FCC8AF4();
  v32 = v31;
  if (v30 != sub_22FCC8AF4() || v32 != v33)
  {
    v35 = sub_22FCC9704();

    if (v35)
    {
      goto LABEL_24;
    }

    v21 = sub_22FCC8664();
    v52 = sub_22FCC8F04();

    if (!os_log_type_enabled(v21, v52))
    {

      goto LABEL_11;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v53 = 136315394;
    v55 = sub_22FA2F600(v18, v17, &v56);

    *(v53 + 4) = v55;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_22FA2F600(v6, v8, &v56);
    _os_log_impl(&dword_22FA28000, v21, v52, "Template has required trigger feature name '%s' does not match template feature name '%s'", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v54, -1, -1);
    v28 = v53;
    goto LABEL_10;
  }

LABEL_24:

  v48 = sub_22FCC8664();
  v49 = sub_22FCC8F04();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_22FA2F600(v6, v8, &v56);
    _os_log_impl(&dword_22FA28000, v48, v49, "Template has required trigger feature name matches template feature name '%s'", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x23190A000](v51, -1, -1);
    MEMORY[0x23190A000](v50, -1, -1);
  }

  return 1;
}

uint64_t sub_22FC51228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = v5 - 1;
    for (i = (a1 + 48); ; i += 3)
    {
      v11 = *i;
      v16 = *(i - 1);
      v17 = v11;

      v12 = sub_22FC50C2C(&v16, a2, a3, a4);

      if (v4)
      {
        break;
      }

      v14 = v9-- != 0;
      if ((v12 & v14 & 1) == 0)
      {
        return v12 & 1;
      }
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12 & 1;
}

uint64_t sub_22FC512EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = a4;
  v34 = a2;
  v4 = *(a1 + 8);
  if (v4 >> 62)
  {
LABEL_26:
    v5 = sub_22FCC92C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v40 = v4 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F98];
      v38 = v4;
      v39 = v4 & 0xFFFFFFFFFFFFFF8;
      v37 = v5;
      while (1)
      {
        if (v40)
        {
          v9 = MEMORY[0x231908810](v6, v4);
        }

        else
        {
          if (v6 >= *(v39 + 16))
          {
            goto LABEL_23;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v41 = v6 + 1;
        v11 = [objc_opt_self() stringForFeatureType_];
        v12 = sub_22FCC8A84();
        v14 = v13;

        v42 = v10;
        v15 = [v10 name];
        v4 = sub_22FCC8A84();
        v17 = v16;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_22FA2DB54(v12, v14);
        v21 = v7[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_24;
        }

        v24 = v19;
        if (v7[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_22FA70A10();
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22FA6C9E8(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_22FA2DB54(v12, v14);
          if ((v24 & 1) != (v26 & 1))
          {
            result = sub_22FCC9774();
            __break(1u);
            return result;
          }

          v20 = v25;
          if (v24)
          {
LABEL_4:

            v8 = (v7[7] + 16 * v20);
            *v8 = v4;
            v8[1] = v17;

            goto LABEL_5;
          }
        }

        v7[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v7[6] + 16 * v20);
        *v27 = v12;
        v27[1] = v14;
        v28 = (v7[7] + 16 * v20);
        *v28 = v4;
        v28[1] = v17;

        v29 = v7[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        v7[2] = v31;
LABEL_5:
        ++v6;
        v4 = v38;
        if (v41 == v37)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_28:

  v32 = sub_22FC51228(v34, v7, a3, v35);
  swift_bridgeObjectRelease_n();

  return v32 & 1;
}

void sub_22FC515F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v9 < *(a1 + 16))
    {
      v16 = *(a1 + 16 * v9 + 32);
      v17 = v16;

      v11 = sub_22FC512EC(&v17, a2, a3, a4);
      if (v4)
      {

        goto LABEL_15;
      }

      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22FA87348(0, *(v10 + 16) + 1, 1);
          v10 = v18;
        }

        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22FA87348((v13 > 1), v14 + 1, 1);
          v10 = v18;
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 16 * v14 + 32) = v16;
      }

      else
      {
      }

      if (v6 == ++v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_22FC5178C(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringProvider();
  v3 = swift_allocObject();
  type metadata accessor for CreativePromptTemplateCache(0);
  v4 = swift_allocObject();
  v15 = v2;
  v16 = &protocol witness table for LocalizedStringProvider;
  *&v14 = v3;
  v5 = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;
  if (qword_28147DC70 != -1)
  {
    swift_once();
  }

  v6 = sub_22FCC8684();
  v7 = __swift_project_value_buffer(v6, qword_281487DA0);
  (*(*(v6 - 8) + 16))(v4 + v5, v7, v6);
  *(v4 + 16) = 1;
  sub_22FA2CF78(&v14, v4 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider);
  type metadata accessor for CreativePromptValidator(0);
  swift_allocObject();

  v9 = sub_22FB711B4(v8);
  type metadata accessor for ContextualPromptTriggers(0);
  v10 = swift_allocObject();

  sub_22FCC8674();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptTriggers_graphManager) = a1;
  v11 = *(*(a1 + 120) + 112);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptTriggers_photoLibrary) = v11;
  v12 = v11;
  return sub_22FC50AC8(a1, v4, v9, v10);
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis24ContextualPromptProviderC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22FC519B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FC51A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void sub_22FC582A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FC58908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FC5CAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id +[PHAUserFeedbackUpdater _blockableFeaturesForAssetCollection:](id a1, SEL a2, id a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 blockableFeatures];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

void sub_22FC5D6F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_22FC5D714(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 2)
  {
    v10 = objc_begin_catch(exc_buf);
    v11 = MEMORY[0x277CCA9B8];
    v12 = MEMORY[0x277CCACA8];
    v14 = [v10 reason];
    v13 = [v12 stringWithFormat:@"PVFaceCropUtils:faceCropDimensionsFromFaceCrop -- %@"];
    [v11 errorForPhotoVisionUnexpectedCondition:v13];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  if (!v9)
  {
    JUMPOUT(0x22FC5D624);
  }

  JUMPOUT(0x22FC5D61CLL);
}

uint64_t getImagePropertiesFromCGImageSource(CGImageSource *a1, int *a2, size_t *a3, size_t *a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    context = objc_autoreleasePoolPush();
    ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
    if (!ImageAtIndex)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not create image ref" userInfo:0];
      objc_exception_throw(v17);
    }

    v9 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
    v10 = 1;
    v11 = [(__CFDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
    v12 = v11;
    if (v11)
    {
      v10 = [v11 intValue];
    }

    if ((v10 - 9) < 0xFFFFFFF8)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    if (v13 > 4)
    {
      Height = CGImageGetHeight(ImageAtIndex);
      Width = CGImageGetWidth(ImageAtIndex);
    }

    else
    {
      Height = CGImageGetWidth(ImageAtIndex);
      Width = CGImageGetHeight(ImageAtIndex);
    }

    v16 = Width;

    CGImageRelease(ImageAtIndex);
    objc_autoreleasePoolPop(context);
    *a2 = v13;
    *a3 = Height;
    result = 1;
    *a4 = v16;
  }

  return result;
}

void sub_22FC5D984(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_22FC5DC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = MEMORY[0x277CCA9B8];
    v18 = MEMORY[0x277CCACA8];
    v22 = [v16 reason];
    v19 = [v18 stringWithFormat:@"PVFaceCropUtils:cropBoundsInOriginalImageFromFaceCrop -- %@"];
    v20 = [v17 errorForPhotoVisionUnexpectedCondition:v19];

    objc_end_catch();
    objc_autoreleasePoolPop(v15);
    if (v14)
    {
      if (v20)
      {
        v21 = v20;
        *v14 = v20;
      }
    }

    JUMPOUT(0x22FC5DC30);
  }

  _Unwind_Resume(exception_object);
}

void sub_22FC5DE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = MEMORY[0x277CCA9B8];
    v18 = MEMORY[0x277CCACA8];
    v22 = [v16 reason];
    v19 = [v18 stringWithFormat:@"PVFaceCropUtils:faceBoundsFromFaceCrop -- %@"];
    v20 = [v17 errorForPhotoVisionUnexpectedCondition:v19];

    objc_end_catch();
    objc_autoreleasePoolPop(v15);
    if (v14)
    {
      if (v20)
      {
        v21 = v20;
        *v14 = v20;
      }
    }

    JUMPOUT(0x22FC5DDE8);
  }

  _Unwind_Resume(exception_object);
}

void sub_22FC5E1C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_22FC5E414(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_22FC5EA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exception_object);
      v10 = MEMORY[0x277CCA9B8];
      v11 = MEMORY[0x277CCACA8];
      v13 = [v9 reason];
      v12 = [v11 stringWithFormat:@"PVFaceCropUtils:newFaceCropFromImageData - %@"];
      [v10 errorForPhotoVisionUnexpectedCondition:v12];
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x22FC5E804);
  }

  _Unwind_Resume(exception_object);
}

double makeRectWithAllIntegers(double a1)
{
  if (a1 > 0.0)
  {
    a1 = a1 + 0.5;
  }

  return a1;
}

CGImageSource *createOrientedCroppedAndScaledImageFromCGImageSource(CGImageSource *a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1;
  v62[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v11 = a4 * a6 + 0.5;
    v12 = a5 * a6 + 0.5;
    v13 = v12;
    v53 = a5 / v13;
    v54 = a4 / v11;
    v14 = fmin(v54, a5 / v13);
    if (v14 <= 0.125)
    {
      v15 = 8;
    }

    else if (v14 <= 0.25)
    {
      v15 = 4;
    }

    else if (v14 <= 0.5)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    context = objc_autoreleasePoolPush();
    v16 = CGImageSourceCopyPropertiesAtIndex(v6, 0, 0);
    v17 = [(__CFDictionary *)v16 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
    v18 = v17;
    v50 = v16;
    if (v17)
    {
      v19 = [v17 intValue];
    }

    else
    {
      v19 = 1;
    }

    v51 = v18;
    if (v19 - 9 < 0xFFFFFFF8)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v21 = *MEMORY[0x277CD3650];
    v61[0] = *MEMORY[0x277CD3618];
    v61[1] = v21;
    v62[0] = MEMORY[0x277CBEC28];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v15];
    v62[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, v23);
    v25 = ImageAtIndex;
    if (!ImageAtIndex)
    {
      v44 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create image for rendering" userInfo:0];
      objc_exception_throw(v44);
    }

    image = ImageAtIndex;
    Width = CGImageGetWidth(ImageAtIndex);
    v49 = v23;
    v52 = v11;
    Height = CGImageGetHeight(v25);
    v28 = v11;
    v29 = v12;
    v30 = (a2 / v15);
    v31 = (a3 / v15);
    v32 = (a4 / v15);
    v33 = (a5 / v15);
    memset(&v60, 0, sizeof(v60));
    makeOrientationTransform(v20, Width, Height, &v59);
    CGAffineTransformInvert(&v60, &v59);
    v59 = v60;
    v63.origin.x = v30;
    v63.origin.y = v31;
    v63.size.width = v32;
    v63.size.height = v33;
    v64 = CGRectApplyAffineTransform(v63, &v59);
    x = v64.origin.x;
    y = v64.origin.y;
    v36 = v64.size.width;
    v37 = v64.size.height;
    v38 = malloc_type_malloc(4 * v28 * v29, 0x100004077774924uLL);
    if (!v38)
    {
      v45 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create buffer for rendering" userInfo:{0, v23, v50, v51}];
      objc_exception_throw(v45);
    }

    v39 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (!v39)
    {
      v46 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create srgb colorspace" userInfo:{0, v23, v50, v51}];
      objc_exception_throw(v46);
    }

    v65.origin.y = Height - (y + v37);
    v65.origin.x = x;
    v65.size.width = v36;
    v65.size.height = v37;
    v40 = CGImageCreateWithImageInRect(image, v65);
    if (!v40)
    {
      v47 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create cropped and subsampled image" userInfo:{0, v23, v50, v51}];
      objc_exception_throw(v47);
    }

    v41 = CGBitmapContextCreate(v38, v28, v29, 8uLL, 4 * v28, v39, 0x2002u);
    if (!v41)
    {
      v48 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create bitmap context" userInfo:{0, v23, v50, v51}];
      objc_exception_throw(v48);
    }

    memset(&v59, 0, sizeof(v59));
    CGAffineTransformMakeScale(&v59, v54 * v15, v53 * v15);
    if (v32 != v52 || v33 != v13)
    {
      CGAffineTransformMakeScale(&transform, v52 / v32, v13 / v33);
      v59 = transform;
    }

    transform = v59;
    CGContextConcatCTM(v41, &transform);
    memset(&transform, 0, sizeof(transform));
    makeOrientationTransform(v20, v36, v37, &transform);
    v57 = transform;
    CGContextConcatCTM(v41, &v57);
    CGContextSetInterpolationQuality(v41, kCGInterpolationMedium);
    CGContextSetShouldAntialias(v41, 0);
    CGContextSetBlendMode(v41, kCGBlendModeCopy);
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = v36;
    v66.size.height = v37;
    CGContextDrawImage(v41, v66, v40);
    v42 = CGBitmapContextCreateImage(v41);

    free(v38);
    v6 = v42;
    CGColorSpaceRelease(v39);
    CGContextRelease(v41);
    CGImageRelease(v40);
    CGImageRelease(image);
    objc_autoreleasePoolPop(context);
  }

  return v6;
}

void sub_22FC5F1EC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
    }

    JUMPOUT(0x22FC5EFF0);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t makeOrientationTransform@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *a4 = *MEMORY[0x277CBF2C0];
  *(a4 + 16) = v5;
  *(a4 + 32) = *(v4 + 32);
  if (result <= 4)
  {
    if (result <= 2)
    {
      if (result != 1)
      {
        if (result == 2)
        {
          v6 = a2;
          *a4 = 0xBFF0000000000000;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0x3FF0000000000000;
LABEL_16:
          *(a4 + 32) = v6;
          *(a4 + 40) = 0;
          return result;
        }

        return result;
      }

      *a4 = 0x3FF0000000000000;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0x3FF0000000000000;
LABEL_22:
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      return result;
    }

    if (result != 3)
    {
      v7 = a3;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0x3FF0000000000000;
      *(a4 + 24) = xmmword_22FCDE510;
      goto LABEL_11;
    }

    v8 = a2;
    v9 = a3;
    *a4 = 0xBFF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
    goto LABEL_20;
  }

  if (result <= 6)
  {
    if (result != 5)
    {
      v7 = a2;
      *a4 = xmmword_22FCDE520;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0x3FF0000000000000;
LABEL_11:
      *(a4 + 40) = v7;
      return result;
    }

    v8 = a3;
    v9 = a2;
    *a4 = xmmword_22FCDE520;
    *(a4 + 16) = xmmword_22FCDE510;
LABEL_20:
    *(a4 + 32) = v8;
    *(a4 + 40) = v9;
    return result;
  }

  if (result == 7)
  {
    *a4 = xmmword_22FCDE500;
    *(a4 + 16) = 0x3FF0000000000000;
    *(a4 + 24) = 0;
    goto LABEL_22;
  }

  if (result == 8)
  {
    v6 = a3;
    *a4 = xmmword_22FCDE500;
    *(a4 + 16) = xmmword_22FCDE510;
    goto LABEL_16;
  }

  return result;
}

void sub_22FC5F7A0(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  if (!v2)
  {
    JUMPOUT(0x22FC5F6C8);
  }

  JUMPOUT(0x22FC5F6BCLL);
}

void sub_22FC5F988(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    if (v2)
    {
      CFRelease(v2);
    }

    objc_end_catch();
    JUMPOUT(0x22FC5F8B0);
  }

  _Unwind_Resume(exception_object);
}

double makeRectClippedAgainstImageBounds(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6)
{
  v7.size.width = a1;
  v7.size.height = a2;
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  *&result = CGRectIntersection(*&a3, v7);
  return result;
}

void sub_22FC603A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v14 - 80));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC63904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__578(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC63D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void AddDASBackloggedToCriteria(BOOL a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(xdict, [*MEMORY[0x277D06A70] UTF8String], a1);
  xpc_dictionary_set_value(v3, *MEMORY[0x277D86260], xdict);
}

id NSExecuteCatchingObjCException(void *a1)
{
  v1 = a1;
  v1[2]();

  return 0;
}

void sub_22FC65D58(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x22FC65D34);
}

void sub_22FC67C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__983(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC6B7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC6D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC6D304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FC6E168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FC6E4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FC6EEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22FC70040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22FC7304C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC77F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1857(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC7966C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v50 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC7A130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void ___reportCancellationOfRemainingFaceCropSourceDescriptors_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v3);
}

uint64_t __Block_byref_object_copy__2616(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC891B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22FC896C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FC8DCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GroupingIdentifierFromDate(void *a1)
{
  v1 = GroupingIdentifierFromDate_dateFormatterCreationToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&GroupingIdentifierFromDate_dateFormatterCreationToken, &__block_literal_global_3589);
  }

  v3 = [GroupingIdentifierFromDate_dateFormatterToStripTime stringFromDate:v2];

  return v3;
}

void __GroupingIdentifierFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = GroupingIdentifierFromDate_dateFormatterToStripTime;
  GroupingIdentifierFromDate_dateFormatterToStripTime = v0;

  [GroupingIdentifierFromDate_dateFormatterToStripTime setDateFormat:@"yyyyMMdd"];
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [GroupingIdentifierFromDate_dateFormatterToStripTime setLocale:v2];

  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [GroupingIdentifierFromDate_dateFormatterToStripTime setTimeZone:v3];
}

uint64_t __PXLog_genericSetupOSLog()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PXLoggraph_workerSetupOSLog()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PXLogvision_workerSetupOSLog()
{
  __PXLogvision_workerOSLog = os_log_create("com.apple.photoanalysisd.vision", "worker");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PXLoggraph_monitoringSetupOSLog()
{
  __PXLoggraph_monitoringOSLog = os_log_create("com.apple.photoanalysisd.graph", "monitoring");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PXLogjob_coordinatorSetupOSLog()
{
  __PXLogjob_coordinatorOSLog = os_log_create("com.apple.photoanalysisd.job", "coordinator");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PXLogjob_activitySetupOSLog()
{
  __PXLogjob_activityOSLog = os_log_create("com.apple.photoanalysisd.job", "activity");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PXLog_automationSetupOSLog()
{
  __PXLog_automationOSLog = os_log_create("com.apple.photoanalysisd", "automation");

  return MEMORY[0x2821F96F8]();
}

void sub_22FC8F9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3728(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FC96434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose((v22 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id musicPersistentStorageDirectoryURLForLibrary(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6 = 0;
  v2 = [v1 urlForApplicationDataFolderIdentifier:1 error:&v6];
  v3 = v6;
  if (!v2)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_4670);
    }

    v4 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_22FA28000, v4, OS_LOG_TYPE_ERROR, "Error: no persistentStorageDirectoryURL for music activity. photoLibrary = %@. Error: %@", buf, 0x16u);
    }
  }

  return v2;
}

uint64_t __musicPersistentStorageDirectoryURLForLibrary_block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

BOOL didExceedMusicTimeInterval(void *a1, uint64_t a2, double a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [PHAMusicJobReadWriteApplicationPreferences libraryScopedMusicWorkerPreferencesForLibrary:a2];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:v10];
  v13 = v12;

  if (v13 > a3)
  {
    if (__PXLoggraph_workerOnceToken != -1)
    {
      dispatch_once(&__PXLoggraph_workerOnceToken, &__block_literal_global_4);
    }

    v14 = __PXLoggraph_workerOSLog;
    if (os_log_type_enabled(__PXLoggraph_workerOSLog, OS_LOG_TYPE_INFO))
    {
      v16 = 138412802;
      v17 = v5;
      v18 = 2048;
      v19 = v13;
      v20 = 1024;
      v21 = 1;
      _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "Last %@ job generation %.0fs ago, job is due = %d", &v16, 0x1Cu);
    }
  }

  return v13 > a3;
}

uint64_t __didExceedMusicTimeInterval_block_invoke()
{
  __PXLoggraph_workerOSLog = os_log_create("com.apple.photoanalysisd.graph", "worker");

  return MEMORY[0x2821F96F8]();
}

void setLibraryScopedMusicWorkerPreferencesValue(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v16 = a2;
    v17 = a1;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = [v6 dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v15 = a2;
    v13 = MEMORY[0x277CBEA60];
    v7 = a3;
    v14 = a2;
    v10 = [v13 arrayWithObjects:&v15 count:1];
    v11 = 0;
    v12 = v10;
  }

  [PHAMusicJobReadWriteApplicationPreferences updateLibraryScopedMusicWorkerPreferencesWithEntriesFromDictionary:v11 keysToRemove:v12 photoLibrary:v7, v15, v16, v17, v18];
}

void sub_22FC992C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4899(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2788B1400, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22FC9CF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (*(v15 - 145) < 0)
  {
    operator delete(*(v15 - 168));
  }

  _Unwind_Resume(a1);
}

uint64_t PHAProcessIsPhotoAnalysisd()
{
  if (PHAProcessIsPhotoAnalysisd_onceToken != -1)
  {
    dispatch_once(&PHAProcessIsPhotoAnalysisd_onceToken, &__block_literal_global_5475);
  }

  v1 = PHAProcessIsPhotoAnalysisd_processName;

  return [v1 isEqualToString:@"photoanalysisd"];
}

void __PHAProcessIsPhotoAnalysisd_block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 processName];
  v1 = PHAProcessIsPhotoAnalysisd_processName;
  PHAProcessIsPhotoAnalysisd_processName = v0;
}

void sub_22FC9F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22FC9FC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6237(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FCA0318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FCA391C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6732(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22FCA5DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FCA6DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FCABAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22FCAF9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PVFaceGetCenterAndSizeForNormalizedRect(unint64_t a1, unint64_t a2, CGFloat *a3, CGFloat *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  *a3 = CGRectGetMidX(*&a6);
  v21.origin.x = a6;
  v21.origin.y = a7;
  v21.size.width = a8;
  v21.size.height = a9;
  *a4 = CGRectGetMidY(v21);
  v17 = 0.0;
  if (a1 && a2)
  {
    v18 = a8 * a1;
    if (v18 < a9 * a2)
    {
      v18 = a9 * a2;
    }

    if (a1 <= a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = a1;
    }

    v17 = v18 / v19;
  }

  *a5 = v17;
  return 1;
}

double PVFaceGetAbsoluteRectForImageSize(unint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  if (a1 <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  return -(v5 * a5 * 0.5 - a3 * a1);
}

void sub_22FCB74F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PHAFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id PHAMethodNotImplentedException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PHAFullMethodName(v3, a2);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:  must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

id PHAAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PHAFullMethodName(v3, a2);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:  method not implemented sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

void sub_22FCBEA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22FCC5C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}