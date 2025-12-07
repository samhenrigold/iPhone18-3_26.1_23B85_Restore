_TtC18FileProviderDaemon8FSTester *sub_1CF36F154(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v29 = sub_1CF9E6888();
    v30 = FPLocv();

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v31;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1CF9E8278();
    v15 = *v3;
    v16 = *result->tree;
    v17 = __OFADD__(*v3, v16);
    v18 = *v3 + v16;
    if (v17)
    {
      break;
    }

    v19 = v2[4];
    if (v19 >= v18)
    {
      goto LABEL_18;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v20 = v2[5];
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    v2[4] = v18;
    if ((v18 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v21 = result;
    v22 = swift_slowAlloc();
    v23 = v22;
    v2[5] = v22;
    if (v20)
    {
      if (v22 != v20 || v22 >= &v20[8 * v15])
      {
        memmove(v22, v20, 8 * v15);
      }

      sub_1CF9E7B18();
      result = v21;
LABEL_18:
      v23 = v2[5];
      if (!v23)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v21;
    if (!v23)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v25 = *result->tree;
    if (v25)
    {
      v26 = result + 1;
      v27 = *v3;
      while (1)
      {
        isa = v26->super.isa;
        v26 = (v26 + 8);
        *&v23[8 * v27] = isa;
        v27 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v27;
        if (!--v25)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF36F368(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v29 = sub_1CF9E6888();
    v30 = FPLocv();

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v31;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1CF9E8278();
    v15 = *v3;
    v16 = *result->tree;
    v17 = __OFADD__(*v3, v16);
    v18 = *v3 + v16;
    if (v17)
    {
      break;
    }

    v19 = v2[4];
    if (v19 >= v18)
    {
      goto LABEL_18;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v20 = v2[5];
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    v2[4] = v18;
    if ((v18 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v21 = result;
    v22 = swift_slowAlloc();
    v23 = v22;
    v2[5] = v22;
    if (v20)
    {
      if (v22 != v20 || v22 >= &v20[8 * v15])
      {
        memmove(v22, v20, 8 * v15);
      }

      sub_1CF9E7B18();
      result = v21;
LABEL_18:
      v23 = v2[5];
      if (!v23)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v21;
    if (!v23)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v25 = *result->tree;
    if (v25)
    {
      v26 = result + 1;
      v27 = *v3;
      while (1)
      {
        isa = v26->super.isa;
        v26 = (v26 + 8);
        *&v23[8 * v27] = isa;
        v27 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v27;
        if (!--v25)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF36F57C(uint64_t a1)
{
  sub_1CF9E7B38();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    sub_1CF9E7B28();
    v29 = sub_1CF9E6888();
    v30 = FPLocv();

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v31;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = sub_1CF9E8278();
    v15 = *v3;
    v16 = *result->tree;
    v17 = __OFADD__(*v3, v16);
    v18 = *v3 + v16;
    if (v17)
    {
      break;
    }

    v19 = v2[4];
    if (v19 >= v18)
    {
      goto LABEL_18;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v20 = v2[5];
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    v2[4] = v18;
    if ((v18 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v21 = result;
    v22 = swift_slowAlloc();
    v23 = v22;
    v2[5] = v22;
    if (v20)
    {
      if (v22 != v20 || v22 >= &v20[8 * v15])
      {
        memmove(v22, v20, 8 * v15);
      }

      sub_1CF9E7B18();
      result = v21;
LABEL_18:
      v23 = v2[5];
      if (!v23)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v21;
    if (!v23)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v25 = *result->tree;
    if (v25)
    {
      v26 = result + 1;
      v27 = *v3;
      while (1)
      {
        isa = v26->super.isa;
        v26 = (v26 + 8);
        *&v23[8 * v27] = isa;
        v27 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v27;
        if (!--v25)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1CF36F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = v6;
  *(v7 + 193) = a6;
  *(v7 + 192) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  v8 = sub_1CF9E6118();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  v9 = sub_1CF9E5A58();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  type metadata accessor for FPFeedbackUIManager();
  *(v7 + 136) = sub_1CF370AD0(&qword_1EC4BFAA0, v10, type metadata accessor for FPFeedbackUIManager, &unk_1CFA046A8);
  v12 = sub_1CF9E6EC8();
  *(v7 + 144) = v12;
  *(v7 + 152) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1CF36F96C, v12, v11);
}

uint64_t sub_1CF36F96C()
{
  v118 = v0;
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFA04600;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1CEFD51C4();
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = v4;
  *(v5 + 120) = v3;

  v12 = [v2 domain];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  *(v5 + 176) = v8;
  *(v5 + 184) = v9;
  *(v5 + 152) = v13;
  *(v5 + 160) = v15;
  v16 = [v2 code];
  v17 = MEMORY[0x1E69E6530];
  v18 = MEMORY[0x1E69E65A8];
  *(v5 + 216) = MEMORY[0x1E69E6530];
  *(v5 + 224) = v18;
  *(v5 + 192) = v16;
  v19 = sub_1CF9E5C98();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v19, v20, v21, v22, v23, v24, v25, v26);
  }

  v29 = *(v0 + 120);
  v28 = *(v0 + 128);
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  v32 = *(v0 + 193);
  v33 = *(v0 + 192);
  *(v5 + 256) = v17;
  *(v5 + 264) = v18;
  *(v5 + 232) = v27;
  *(v5 + 296) = v17;
  *(v5 + 304) = v18;
  *(v5 + 272) = v33;
  *(v5 + 336) = v17;
  *(v5 + 344) = v18;
  *(v5 + 312) = v32;
  v34 = sub_1CF9E68E8();
  v36 = v35;
  sub_1CF9E5A28();
  sub_1CF33F8C8(v28, v29);
  v37 = (*(v31 + 48))(v29, 1, v30);
  v45 = *(v0 + 120);
  if (v37 != 1)
  {
    v73 = *(v0 + 104);
    v72 = *(v0 + 112);
    v74 = *(v0 + 88);
    v75 = *(v0 + 96);
    v36, v38, v39, v40, v41, v42, v43, v44;
    (*(v75 + 32))(v72, v45, v74);
    v76 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v75 + 16))(v73, v72, v74);
    v77 = sub_1CF9E6108();
    v78 = sub_1CF9E7288();
    v79 = os_log_type_enabled(v77, v78);
    v81 = *(v0 + 96);
    v80 = *(v0 + 104);
    v82 = *(v0 + 80);
    v83 = *(v0 + 88);
    v85 = *(v0 + 56);
    v84 = *(v0 + 64);
    if (v79)
    {
      v116 = *(v0 + 56);
      v86 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v117 = v114;
      *v86 = 136315138;
      sub_1CF370AD0(&unk_1EDEAB3F0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v87 = sub_1CF9E7F98();
      v113 = v82;
      v89 = v88;
      v112 = v78;
      v90 = *(v81 + 8);
      v90(v80, v83);
      v91 = sub_1CEFD0DF0(v87, v89, &v117);
      v89, v92, v93, v94, v95, v96, v97, v98;
      *(v86 + 4) = v91;
      _os_log_impl(&dword_1CEFC7000, v77, v112, "FeedbackUIManager: Will spawn feedback UI with URL: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x1D386CDC0](v114, -1, -1);
      MEMORY[0x1D386CDC0](v86, -1, -1);

      (*(v84 + 8))(v113, v116);
    }

    else
    {

      v90 = *(v81 + 8);
      v90(v80, v83);
      (*(v84 + 8))(v82, v85);
    }

    *(v0 + 160) = v90;
    v108 = *(v0 + 136);
    v109 = *(v0 + 112);
    v110 = *(v0 + 48);
    v111 = swift_task_alloc();
    *(v0 + 168) = v111;
    *(v111 + 16) = v109;
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_1CF370034;
    v24 = sub_1CF370984;
    v23 = 0x80000001CFA43890;
    v26 = MEMORY[0x1E69E7CA8] + 8;
    v20 = v110;
    v21 = v108;
    v22 = 0xD000000000000054;
    v25 = v111;

    return MEMORY[0x1EEE6DE38](v19, v20, v21, v22, v23, v24, v25, v26);
  }

  sub_1CEFCCC44(*(v0 + 120), &unk_1EC4BE310, qword_1CF9FCBE0);
  v46 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v47 = sub_1CF9E6108();
  v48 = sub_1CF9E72A8();
  v36, v49, v50, v51, v52, v53, v54, v55;
  v56 = os_log_type_enabled(v47, v48);
  v57 = *(v0 + 128);
  v58 = *(v0 + 64);
  v59 = *(v0 + 72);
  v60 = *(v0 + 56);
  if (v56)
  {
    v115 = *(v0 + 128);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v117 = v62;
    *v61 = 136315138;
    v63 = sub_1CEFD0DF0(v34, v36, &v117);
    v36, v64, v65, v66, v67, v68, v69, v70;
    *(v61 + 4) = v63;
    _os_log_impl(&dword_1CEFC7000, v47, v48, "FeedbackUIManager: could not construct feedbackURL from string: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1D386CDC0](v62, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);

    (*(v58 + 8))(v59, v60);
    v71 = v115;
  }

  else
  {

    v36, v99, v100, v101, v102, v103, v104, v105;
    (*(v58 + 8))(v59, v60);
    v71 = v57;
  }

  sub_1CEFCCC44(v71, &unk_1EC4BE310, qword_1CF9FCBE0);

  v106 = *(v0 + 8);

  return v106();
}

uint64_t sub_1CF370034()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1CF37026C;
  }

  else
  {
    v5 = sub_1CF37018C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CF37018C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  sub_1CEFCCC44(v0[16], &unk_1EC4BE310, qword_1CF9FCBE0);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CF37026C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  sub_1CEFCCC44(v0[16], &unk_1EC4BE310, qword_1CF9FCBE0);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_1CF37035C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1CF9E5928();
    (*(v3 + 16))(v5, a1, v2);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, v5, v2);
    aBlock[4] = sub_1CF37098C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF37076C;
    aBlock[3] = &block_descriptor_17;
    v11 = _Block_copy(aBlock);

    [v7 openURL:v8 configuration:0 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF370550(uint64_t a1, void *a2)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    v8 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v9 = a2;
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E72A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "FeedbackUIManager: Opening the Feedback app failed: %@", v12, 0xCu);
      sub_1CEFCCC44(v13, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v13, -1, -1);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v17[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
    return sub_1CF9E6ED8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);
    return sub_1CF9E6EE8();
  }
}

void sub_1CF37076C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1CF9E6638();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1CF370818(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF37087C()
{
  if (qword_1EC4BCD20 != -1)
  {
    swift_once();
  }

  return sub_1CF9E7518();
}

unint64_t sub_1CF3708D4()
{
  result = qword_1EDEA3510;
  if (!qword_1EDEA3510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3510);
  }

  return result;
}

unint64_t sub_1CF370920()
{
  result = qword_1EDEA3770;
  if (!qword_1EDEA3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4DC0, &qword_1CFA046D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3770);
  }

  return result;
}

uint64_t sub_1CF37098C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAA8, &qword_1CFA046D8);

  return sub_1CF370550(a1, a2);
}

unint64_t sub_1CF370A18()
{
  result = qword_1EC4BFAC8;
  if (!qword_1EC4BFAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BFAC0, qword_1CFA046F0);
    sub_1CF370AD0(&qword_1EC4BD5A8, 255, type metadata accessor for CFString, &unk_1CF9F9A9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAC8);
  }

  return result;
}

uint64_t sub_1CF370AD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1CF370B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  (*(v9 + 16))(v11, a1, AssociatedTypeWitness, v13);
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();
  sub_1CF9E6FF8();
  return (*(v9 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_1CF370C98(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester **a5, char *a6, uint64_t a7)
{
  v83 = a6;
  v81 = a7;
  v66 = a5;
  v72 = a4;
  v82 = a3;
  v86 = a1;
  v7 = *a2;
  v8 = *(*a2 + 2648);
  v9 = *(*a2 + 2632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v64 - v12;
  v13 = *(v7 + 2656);
  v14 = *(v7 + 2640);
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v69 = *(v16 - 8);
  v70 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v64 - v19;
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v75 = v9;
  *&v23 = v9;
  v67 = v14;
  *(&v23 + 1) = v14;
  v76 = v8;
  *&v24 = v8;
  v68 = v13;
  *(&v24 + 1) = v13;
  v85[1] = v24;
  v85[0] = v23;
  v25 = type metadata accessor for ItemReconciliation(255, v85);
  v26 = sub_1CF9E75D8();
  v78 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v29 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v64 - v31;
  v33 = v84;
  result = sub_1CF68DDB0(v86, v82, v83, *(v81 + 8), v28);
  if (!v33)
  {
    v36 = v78;
    v35 = v79;
    v82 = v22;
    v83 = v32;
    v84 = 0;
    if ((*(v29 + 48))(v28, 1, v25) == 1)
    {
      (*(v36 + 8))(v28, v26);
LABEL_6:
      v42 = AssociatedTypeWitness;
      v43 = v80;
      v44 = v74;
      (*(v80 + 16))(v77, v86, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7068();
      sub_1CF9E6FF8();
      return (*(v43 + 8))(v44, v42);
    }

    v37 = v83;
    (*(v29 + 32))(v83, v28, v25);
    v38 = &v37[*(v25 + 52)];
    v39 = v69;
    v40 = v70;
    (*(v69 + 16))(v35, v38, v70);
    v41 = v71;
    if ((*(v71 + 48))(v35, 1, v15) == 1)
    {
      (*(v29 + 8))(v37, v25);
      (*(v39 + 8))(v35, v40);
      goto LABEL_6;
    }

    v78 = v29;
    v81 = v25;
    v45 = v82;
    (*(v41 + 32))(v82, v35, v15);
    v47 = type metadata accessor for ItemReconciliationHalf(0, v67, v68, v46);
    v48 = v80;
    v49 = v15;
    v50 = v41;
    v51 = v86;
    if (v38[*(v47 + 52)] != 2)
    {
      v52 = *v66;
      swift_getAssociatedConformanceWitness();

      v53 = sub_1CF9E7048();
      v52, v54, v55, v56, v57, v58, v59, v60;
      if (v53)
      {
        sub_1CF9E7068();
        v61 = v65;
        sub_1CF9E7008();
        (*(v69 + 8))(v61, v70);
      }

      else
      {
        v62 = AssociatedTypeWitness;
        (*(v48 + 16))(v77, v51, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        sub_1CF9E7068();
        v63 = v74;
        sub_1CF9E6FF8();
        (*(v48 + 8))(v63, v62);
      }

      v50 = v71;
    }

    (*(v50 + 8))(v45, v49);
    return (*(v78 + 8))(v83, v81);
  }

  return result;
}

void sub_1CF3713C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v45 = a1;
  v9 = *v5;
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1CF042F4C();
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = v9[332];
    v17 = v9[330];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = sub_1CF9E6DA8();
    if (sub_1CF9E6DF8())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v28 = sub_1CF981D64(v19, AssociatedTypeWitness, *(AssociatedConformanceWitness + 40));
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
    }

    v19, v20, v21, v22, v23, v24, v25, v26;
    v48 = v28;
    v29 = sub_1CF033B88();
    v30 = v5[5];
    v31 = MEMORY[0x1EEE9AC00](v29);
    *(&v44 - 8) = v9[329];
    *(&v44 - 7) = v17;
    v32 = v9[331];
    *(&v44 - 6) = a4;
    *(&v44 - 5) = v32;
    *(&v44 - 4) = v16;
    *(&v44 - 3) = a5;
    *(&v44 - 2) = &v48;
    v33 = *v30;
    if ((v34 & 0x40000) != 0)
    {
      v43 = v47;
      (*(v33 + 704))(a2, v46, sub_1CF373994, &v44 - 10, a4, a5, v31);
      if (v43)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v35 = v47;
      (*(v33 + 696))(v45, a2, v46, sub_1CF373954, v31);
      if (v35)
      {
LABEL_7:
        v48, v36, v37, v38, v39, v40, v41, v42;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF3716C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v311 = a6;
  v312 = a5;
  v270 = a3;
  v308 = a2;
  v304 = a1;
  v8 = *v6;
  v303 = sub_1CF9E5CF8();
  v282 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v302 = v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v8[329];
  v11 = v8[331];
  v283 = type metadata accessor for SnapshotItem(255, v10, v11, v12);
  v271 = sub_1CF9E75D8();
  v281 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v272 = v252 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v296 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v275 = v252 - v15;
  v16 = v8[330];
  v17 = v8[332];
  v317 = v16;
  v318 = v10;
  v301 = v10;
  v319 = v17;
  v320 = v11;
  v300 = v11;
  v18 = type metadata accessor for ItemReconciliation(255, &v317);
  v291 = sub_1CF9E75D8();
  v280 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v277 = v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v294 = v252 - v21;
  j = v18;
  v279 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v276 = v252 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v293 = v252 - v25;
  v306 = v17;
  v307 = v16;
  v26 = swift_getAssociatedTypeWitness();
  v297 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v274 = v252 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v273 = v252 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v286 = v252 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v305 = v252 - v33;
  v310 = v34;
  v284 = sub_1CF9E75D8();
  v278 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v36 = v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v287 = v252 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v298 = v252 - v40;
  v309 = AssociatedTypeWitness;
  v289 = sub_1CF9E75D8();
  v41 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v288 = v252 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v252 - v44;
  v46 = sub_1CF9E64A8();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = (v252 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1CF042F4C();
  *v49 = v50;
  (*(v47 + 104))(v49, *MEMORY[0x1E69E8020], v46);
  v51 = v50;
  LOBYTE(v50) = sub_1CF9E64D8();
  (*(v47 + 8))(v49, v46);
  if ((v50 & 1) == 0)
  {
    goto LABEL_121;
  }

  v285 = v41;
  v52 = v311;
  v53 = *(v311 + 8);
  v54 = v313;
  sub_1CF3713C0(v304, v308, a4, v312, v53);
  if (v54)
  {
    return;
  }

  v56 = v52;
  v295 = v53;
  v292 = v36;
  v313 = 0;
  v316 = v55;
  v57 = v309;
  v58 = sub_1CF9E6DA8();
  if (sub_1CF9E6DF8())
  {
    v66 = v300;
    v67 = v301;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v69 = sub_1CF981D64(v58, v57, *(AssociatedConformanceWitness + 40));
  }

  else
  {
    v69 = MEMORY[0x1E69E7CD0];
    v67 = v301;
    v66 = v300;
  }

  v58, v59, v60, v61, v62, v63, v64, v65;
  v315 = v69;
  v70 = sub_1CF478C28();
  MEMORY[0x1EEE9AC00](v70);
  v71 = v312;
  v252[-6] = v312;
  v252[-5] = v56;
  v252[-4] = v6;
  v252[-3] = a4;

  v72 = v313;
  sub_1CF354B6C(64, a4, sub_1CF373930, &v252[-8], v67, v307, v71, v66, v306, v295);
  v313 = v72;
  if (v72)
  {

    v80 = v315;
LABEL_8:
    v80, v73, v74, v75, v76, v77, v78, v79;
    v88 = v316;
    goto LABEL_9;
  }

  v308 = a4;

  v304 = v6;
  v257 = v315;
  if ((v315 & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7038();
    v90 = v321;
    v89 = v322;
    v91 = v323;
    v92 = v324;
    v93 = v325;
  }

  else
  {
    v94 = -1 << *(v315 + 32);
    v89 = v315 + 56;
    v91 = ~v94;
    v95 = -v94;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    else
    {
      v96 = -1;
    }

    v93 = v96 & *(v315 + 56);
    v92 = 0;
  }

  v97 = (v296 + 56);
  v266 = v91;
  v98 = (v91 + 64) >> 6;
  v267 = (v296 + 16);
  v269 = (v296 + 8);
  for (i = v90; ; v90 = i)
  {
    v290 = v92;
    if (v90 < 0)
    {
      break;
    }

    if (!v93)
    {
      v102 = v92;
      while (1)
      {
        v92 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          break;
        }

        if (v92 >= v98)
        {
          goto LABEL_30;
        }

        v99 = *(v89 + 8 * v92);
        ++v102;
        if (v99)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v99 = v93;
LABEL_27:
    v101 = (v99 - 1) & v99;
    v103 = *(v90 + 48) + *(v296 + 72) * (__clz(__rbit64(v99)) | (v92 << 6));
    v100 = v309;
    (*(v296 + 16))(v45, v103, v309);
LABEL_28:
    (*v97)(v45, 0, 1, v100);
    sub_1CF478C28();

    v104 = v313;
    sub_1CF348CFC(v45, 64, v308, v312, v311);
    v313 = v104;
    if (v104)
    {
      (*v269)(v45, v100);

      sub_1CEFCB59C(i);
      v80 = v257;
      goto LABEL_8;
    }

    (*v269)(v45, v100);

    v93 = v101;
  }

  if (sub_1CF9E7838())
  {
    v100 = v309;
    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v101 = v93;
    goto LABEL_28;
  }

LABEL_30:
  (*v97)(v45, 1, 1, v309);
  sub_1CEFCB59C(v90);
  v105 = v310;
  v106 = sub_1CF9E6DA8();
  if (sub_1CF9E6DF8())
  {
    v114 = swift_getAssociatedConformanceWitness();
    v115 = sub_1CF981D64(v106, v105, *(v114 + 40));
  }

  else
  {
    v115 = MEMORY[0x1E69E7CD0];
  }

  v116 = v298;
  v106, v107, v108, v109, v110, v111, v112, v113;
  v314 = v115;
  v117 = v316;
  if ((v316 & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7038();
    v118 = v326;
    v119 = v327;
    v120 = v328;
    v121 = v329;
    v122 = v330;
  }

  else
  {
    v123 = -1 << *(v316 + 32);
    v119 = v316 + 56;
    v124 = ~v123;
    v125 = -v123;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    else
    {
      v126 = -1;
    }

    v127 = v126 & *(v316 + 56);

    v122 = v127;
    v120 = v124;
    v121 = 0;
    v118 = v117;
  }

  v128 = v305;
  v129 = v294;
  v255 = v117;
  v254 = 0;
  v290 = (v297 + 56);
  v256 = v120;
  v130 = (v120 + 64) >> 6;
  v266 = (v297 + 16);
  i = (v297 + 32);
  v267 = (v279 + 48);
  v263 = (v279 + 32);
  v262 = (v285 + 2);
  v261 = (v296 + 48);
  v259 = (v285 + 1);
  v258 = (v297 + 48);
  v285 = (v297 + 8);
  v260 = (v279 + 8);
  v264 = (v280 + 8);
  ++v278;
  v253 = (v296 + 32);
  v252[1] = v283 - 8;
  ++v282;
  v252[0] = v281 + 8;
  v280 = v118;
  v279 = v130;
  v265 = v119;
  v131 = v122;
  while (1)
  {
    v281 = v121;
    if (v118 < 0)
    {
      break;
    }

    if (!v131)
    {
      v133 = v121;
      while (1)
      {
        v121 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          goto LABEL_119;
        }

        if (v121 >= v130)
        {
          goto LABEL_84;
        }

        v132 = *(v119 + 8 * v121);
        ++v133;
        if (v132)
        {
          goto LABEL_49;
        }
      }
    }

    v132 = v131;
LABEL_49:
    v296 = (v132 - 1) & v132;
    (*(v297 + 16))(v116, *(v118 + 48) + *(v297 + 72) * (__clz(__rbit64(v132)) | (v121 << 6)), v105);
LABEL_50:
    (*v290)(v116, 0, 1, v105);
    v134 = *i;
    (*i)(v128, v116, v105);
    v135 = v129;
    v136 = v313;
    sub_1CF68E230(v128, v308, v312, v295, v129);
    v313 = v136;
    if (v136)
    {
      sub_1CEFCB59C(v280);
      (*v285)(v305, v105);
      goto LABEL_116;
    }

    v137 = *v267;
    v138 = j;
    if ((*v267)(v129, 1, j) == 1)
    {
      v128 = v305;
      v105 = v310;
      (*v285)(v305, v310);
      (*v264)(v129, v291);
      v131 = v296;
      goto LABEL_53;
    }

    v139 = *v263;
    v140 = v293;
    (*v263)(v293, v135, v138);
    v141 = &v140[*(v138 + 52)];
    v142 = v288;
    v143 = v289;
    (*v262)(v288, v141, v289);
    v144 = (*v261)(v142, 1, v309);
    v116 = v298;
    if (v144 == 1)
    {
      (*v259)(v142, v143);
      v145 = v287;
      v146 = v313;
      (*(*v304[5] + 288))(v305, v308, v312, v295);
      v313 = v146;
      if (v146)
      {
        sub_1CEFCB59C(v280);
        goto LABEL_115;
      }

      v147 = v310;
      if ((*v258)(v145, 1, v310) == 1)
      {
        (*v260)(v293, j);
        v128 = v305;
        (*v285)(v305, v147);
        (*v278)(v145, v284);
        v131 = v296;
        v105 = v147;
        v129 = v294;
        goto LABEL_58;
      }

      v148 = v286;
      v134(v286, v145, v147);
      swift_getAssociatedConformanceWitness();
      v149 = v305;
      if (sub_1CF9E6868())
      {
        v150 = *v285;
        (*v285)(v148, v147);
        (*v260)(v293, j);
        v150(v149, v147);
        v131 = v296;
        v105 = v147;
        v128 = v149;
        v129 = v294;
LABEL_53:
        v116 = v298;
LABEL_58:
        v119 = v265;
      }

      else
      {
        v151 = v277;
        v152 = v313;
        sub_1CF68E230(v148, v308, v312, v295, v277);
        v313 = v152;
        if (v152)
        {
          sub_1CEFCB59C(v280);
          v249 = *v285;
          v250 = v310;
          (*v285)(v286, v310);
          (*v260)(v293, j);
          v249(v305, v250);
          goto LABEL_116;
        }

        v153 = j;
        v154 = v137(v151, 1, j);
        v128 = v305;
        v119 = v265;
        if (v154 == 1)
        {
          v155 = *v285;
          v156 = v310;
          (*v285)(v286, v310);
          (*v260)(v293, v153);
          v155(v128, v156);
          v105 = v156;
          (*v264)(v151, v291);
        }

        else
        {
          v157 = v276;
          v139(v276, v151, v153);
          v159 = type metadata accessor for ItemReconciliationHalf(0, v307, v306, v158);
          v160 = v286;
          if (v157[*(v159 + 52)] == 2)
          {
            v161 = *v260;
            (*v260)(v157, v153);
            v162 = *v285;
            v163 = v160;
            v164 = v310;
            (*v285)(v163, v310);
            v161(v293, v153);
            v105 = v164;
            v128 = v305;
            v162(v305, v105);
          }

          else
          {
            v165 = v286;
            v166 = v310;
            (*v266)(v274, v286, v310);
            sub_1CF9E7068();
            v167 = v273;
            sub_1CF9E6FF8();
            v168 = *v285;
            (*v285)(v167, v166);
            v169 = *v260;
            (*v260)(v157, v153);
            v168(v165, v166);
            v119 = v265;
            v169(v293, v153);
            v170 = v305;
            v168(v305, v166);
            v105 = v166;
            v128 = v170;
          }
        }

        v131 = v296;
        v129 = v294;
        v116 = v298;
      }

      v118 = v280;
LABEL_60:
      v130 = v279;
      continue;
    }

    v171 = v275;
    (*v253)(v275, v142, v309);
    v172 = v272;
    v173 = v313;
    (*(*v304[4] + 240))(v171, 1, v308, v312, v295);
    v313 = v173;
    if (v173)
    {
      goto LABEL_122;
    }

    v174 = v283;
    v175 = *(v283 - 8);
    v176 = (*(v175 + 48))(v172, 1, v283);
    v119 = v265;
    if (v176 == 1)
    {
      (*v252[0])(v172, v271);
LABEL_80:
      v128 = v305;
      v129 = v294;
      v118 = v280;
LABEL_81:
      (*v269)(v275, v309);
      (*v260)(v293, j);
      v105 = v310;
      (*v285)(v128, v310);
      v131 = v296;
      goto LABEL_60;
    }

    WitnessTable = swift_getWitnessTable();
    v178 = sub_1CF937C7C(v174, WitnessTable);
    (*(v175 + 8))(v172, v174);
    if ((v178 & 1) == 0)
    {
      goto LABEL_80;
    }

    v179 = v270 - 1;
    v118 = v280;
    if (v270 >= 1)
    {
      sub_1CF478C28();

      v180 = v302;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v182 = v181;
      (*v282)(v180, v303);
      v183 = v182 * 1000000000.0;
      if (COERCE__INT64(fabs(v182 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        return;
      }

      if (v183 <= -9.22337204e18)
      {
        goto LABEL_132;
      }

      if (v183 >= 9.22337204e18)
      {
        goto LABEL_133;
      }

      v184 = v313;
      sub_1CF347AC0(v275, 64, v183, v308, v312, v311);
      v313 = v184;
      if (v184)
      {
LABEL_130:

        v251 = v118;
        goto LABEL_123;
      }

      v270 = v179;
      v128 = v305;
      v129 = v294;
      goto LABEL_81;
    }

    (*v269)(v275, v309);
    (*v260)(v293, j);
    v128 = v305;
    v105 = v310;
    (*v285)(v305, v310);
    v185 = __OFADD__(v254++, 1);
    v129 = v294;
    v130 = v279;
    if (v185)
    {
      goto LABEL_134;
    }

    v131 = v296;
  }

  if (sub_1CF9E7838())
  {
    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v296 = v131;
    v129 = v294;
    goto LABEL_50;
  }

LABEL_84:
  v309 = *v290;
  v309(v116, 1, 1, v105);
  sub_1CEFCB59C(v118);
  v186 = v314;
  if ((v314 & 0xC000000000000001) != 0)
  {
    sub_1CF9E7808();
    v187 = v307;
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7038();
    v186 = v331;
    v118 = v332;
    v188 = v333;
    v189 = v334;
    v190 = v335;
    v191 = v301;
  }

  else
  {
    v189 = 0;
    v192 = -1 << *(v314 + 32);
    v118 = v314 + 56;
    v188 = ~v192;
    v193 = -v192;
    if (v193 < 64)
    {
      v194 = ~(-1 << v193);
    }

    else
    {
      v194 = -1;
    }

    v190 = v194 & *(v314 + 56);
    v191 = v301;
    v187 = v307;
  }

  v296 = v188;
  v195 = (v188 + 64) >> 6;
  for (j = v186; ; v186 = j)
  {
    v305 = v189;
    if ((v186 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1CF9E7838())
    {
LABEL_110:
      v309(v292, 1, 1, v310);
      sub_1CEFCB59C(v186);
      v255, v213, v214, v215, v216, v217, v218, v219;
      v257, v220, v221, v222, v223, v224, v225, v226;
      return;
    }

    v197 = v292;
    v198 = v310;
    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v298 = v190;
LABEL_102:
    v309(v197, 0, 1, v198);
    sub_1CF0537A0();
    v317 = v187;
    v318 = v191;
    v319 = v306;
    v320 = v300;
    type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy(0, &v317);
    v201 = v302;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v203 = v202;
    v204 = *v282;
    (*v282)(v201, v303);
    v205 = v203 * 1000000000.0;
    if (COERCE__INT64(fabs(v203 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v205 <= -9.22337204e18)
    {
      goto LABEL_125;
    }

    if (v205 >= 9.22337204e18)
    {
      goto LABEL_126;
    }

    v206 = v292;
    v207 = sub_1CF574884(v292, 0, v205, 0x4000000000);
    (*v285)(v206, v310);
    v208 = v302;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v210 = v209;
    v204(v208, v303);
    v211 = v210 * 1000000000.0;
    if (COERCE__INT64(fabs(v210 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_127;
    }

    if (v211 <= -9.22337204e18)
    {
      goto LABEL_128;
    }

    if (v211 >= 9.22337204e18)
    {
      goto LABEL_129;
    }

    v212 = v313;
    sub_1CF5215C0(v207, v211, v308, v312, v311);
    v313 = v212;
    if (v212)
    {

      sub_1CEFCB59C(j);
      v255, v234, v235, v236, v237, v238, v239, v240;
      v88 = v257;
      goto LABEL_9;
    }

    v191 = v301;
    v187 = v307;
  }

  if (v190)
  {
    v298 = v190;
    v196 = v190;
LABEL_101:
    v190 = (v196 - 1) & v196;
    v200 = *(v186 + 48) + *(v297 + 72) * (__clz(__rbit64(v196)) | (v189 << 6));
    v197 = v292;
    v198 = v310;
    (*(v297 + 16))(v292, v200, v310);
    goto LABEL_102;
  }

  v199 = v189;
  while (1)
  {
    v189 = v199 + 1;
    if (__OFADD__(v199, 1))
    {
      break;
    }

    if (v189 >= v195)
    {
      goto LABEL_110;
    }

    v196 = *(v118 + 8 * v189);
    ++v199;
    if (v196)
    {
      v298 = 0;
      goto LABEL_101;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  v251 = v280;
LABEL_123:
  sub_1CEFCB59C(v251);
  (*v269)(v275, v309);
LABEL_115:
  (*v260)(v293, j);
  (*v285)(v305, v310);
LABEL_116:
  v241 = v314;
  v255, v227, v228, v229, v230, v231, v232, v233;
  v257, v242, v243, v244, v245, v246, v247, v248;
  v88 = v241;
LABEL_9:
  v88, v81, v82, v83, v84, v85, v86, v87;
}

void sub_1CF373A18()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = 0x20u;
  v2 = &unk_1F4BEE000;
  v3 = &unk_1F4BEE000;
  do
  {
    v6 = byte_1F4BEB008[v1];
    if (qword_1CFA04890[byte_1F4BEE140] != qword_1CFA04890[v6] && qword_1CFA04890[byte_1F4BEE141] != qword_1CFA04890[v6] && qword_1CFA04890[byte_1F4BEE142] != qword_1CFA04890[v6] && qword_1CFA04890[v2[323]] != qword_1CFA04890[v6] && qword_1CFA04890[v3[324]] != qword_1CFA04890[v6])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680D70(0, *(v0 + 16) + 1, 1);
      }

      v5 = *(v0 + 16);
      v4 = *(v0 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_1CF680D70((v4 > 1), v5 + 1, 1);
      }

      *(v0 + 16) = v5 + 1;
      *(v0 + v5 + 32) = v6;
      v2 = &unk_1F4BEE000;
      v3 = &unk_1F4BEE000;
    }

    ++v1;
  }

  while (v1 != 121);
  qword_1EDEBB6A8 = v0;
}

id sub_1CF373B94(uint64_t a1)
{
  v1 = *(a1 + 96);

  v2 = sub_1CF9E6888();
  v1, v3, v4, v5, v6, v7, v8, v9;

  return v2;
}

unint64_t sub_1CF373BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  *(a2 + 24) = &type metadata for SQLItemJobID;
  result = sub_1CF03E084();
  *(a2 + 32) = result;
  *a2 = a1;
  *(a2 + 8) = v5;
  return result;
}

void sub_1CF373C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[9];
  if (v6)
  {
    v10 = *v4;
    v42 = v5;
    v11 = v4[10];

    v13 = v6(v12);
    sub_1CEFF7124(v6, v11);
    if (v13)
    {
      v14 = *(a1 + 96);
      if (*(a1 + 112))
      {
        if (*(a1 + 112) != 1)
        {
          goto LABEL_18;
        }

        v15 = *(*v13 + 304);
        v16 = a2;
        v17 = a3;
        v18 = *(a1 + 104);

        v15(v19);
        v20 = v14;
        v21 = v18;
        a3 = v17;
        a2 = v16;
        v22 = 1;
LABEL_17:
        sub_1CF03D7A8(v20, v21, v22);
LABEL_18:
        v29 = *(v10 + 96);
        v40 = *(v10 + 80);
        v41 = v29;
        type metadata accessor for Materialization.MaterializeItem(0, &v40);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v31 = v30;
          v32 = *(*v13 + 544);

          v33 = v31;
          v34 = v42;
          v32(v33, 1, a2, a3, a4);
          v42 = v34;
          if (v34)
          {
            goto LABEL_23;
          }
        }

        v35 = (*(*v13 + 184))(v30);
        if (!v35)
        {
LABEL_24:

          return;
        }

        (*(*v35 + 120))(v13, a1);
LABEL_23:

        goto LABEL_24;
      }

      v38 = *(a1 + 104);
      if ((v14 & 0x200000) != 0)
      {
        v23 = *(*v13 + 352);

        v23(v24);
        if ((v14 & 0x1000000) == 0)
        {
LABEL_16:
          v20 = v14;
          v21 = v38;
          v22 = 0;
          goto LABEL_17;
        }
      }

      else
      {

        if ((v14 & 0x1000000) == 0)
        {
          goto LABEL_16;
        }
      }

      v25 = *(v10 + 88);
      v27 = *(v10 + 96);
      v28 = *(v10 + 104);
      *&v40 = *(v10 + 80);
      v26 = v40;
      *(&v40 + 1) = v25;
      v36 = v28;
      v37 = v27;
      *&v41 = v27;
      *(&v41 + 1) = v28;
      type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy(0, &v40);
      if (swift_dynamicCastClass())
      {
        (*(*v13 + 584))();
      }

      *&v40 = v26;
      *(&v40 + 1) = v25;
      *&v41 = v37;
      *(&v41 + 1) = v36;
      type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop(0, &v40);
      if (swift_dynamicCastClass())
      {
        sub_1CF37D9D4();
      }

      *&v40 = v26;
      *(&v40 + 1) = v25;
      *&v41 = v37;
      *(&v41 + 1) = v36;
      type metadata accessor for Maintenance.UpdateIndexableItems(0, &v40);
      if (swift_dynamicCastClass())
      {
        sub_1CF37D9D4();
      }

      goto LABEL_16;
    }
  }
}

double sub_1CF373FB0(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = v2;
    v6 = *(v2 + 80);

    v8 = v3(v7);
    v9 = sub_1CEFF7124(v3, v6);
    if (v8)
    {
      if (*(a1 + 112) == 1)
      {
        v11 = *(v4 + 72);
        if (v11)
        {
          v12 = *(v4 + 80);

          v14 = v11(v13);
          v9 = sub_1CEFF7124(v11, v12);
          if (v14)
          {
            (*(*v14 + 304))(v9);
          }
        }
      }

      v15 = (*(*v8 + 184))(v9);
      if (v15)
      {
        (*(*v15 + 136))(v8, a1);
      }
    }
  }

  return result;
}

void sub_1CF374114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *(*v6 + 96);
  v61 = *(*v6 + 80);
  v62 = v11;
  v12 = type metadata accessor for PersistenceTrigger(0, &v61);
  v64 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - v14;
  v57 = a3;
  v58 = a4;
  v59 = v6;
  v60 = a1;
  v16 = *(a4 + 8);
  v17 = (*(v16 + 24))(sub_1CF381E10, v56, a3, v16, v13);
  if (!v5)
  {
    v18 = v17;
    v53 = v16;
    v54 = a4;
    v52 = v15;
    v55 = 0;
    v19 = [v17 next];
    if (v19)
    {
      v20 = [v18 longAtIndex_];
      v21 = [v18 isNullAtIndex_];
      v47 = v12;
      if (v21)
      {
        v51 = 4;
      }

      else
      {
        v51 = [v18 longAtIndex_];
      }

      v49 = [v18 &off_1E83C2C20];
      v48 = [v18 unsignedLongAtIndex_];
      v50 = v18;
      v27 = v6;
      v28 = *(v6 + 16);
      *(&v62 + 1) = &type metadata for SQLItemJobID;
      v63 = sub_1CF03E084();
      *&v61 = v20;
      BYTE8(v61) = v28;
      swift_beginAccess();
      sub_1CF03E0D8(&v61, a1 + 56);
      v29 = swift_endAccess();
      if (v51 == 2)
      {
        sub_1CF3749D0(a2, v6, a1, v20, a3, a3, v54, v54);

        return;
      }

      v18 = v50;
      v30 = v55;
      if (v51 < 2)
      {
        if (v49)
        {
          v31 = MEMORY[0x1EEE9AC00](v29);
          v32 = v54;
          *(&v46 - 6) = a3;
          *(&v46 - 5) = v32;
          *(&v46 - 4) = v6;
          *(&v46 - 3) = a1;
          *(&v46 - 2) = v20;
          (*(v32 + 32))(sub_1CF381E40, v31);
          if (!v30 && v48 == 0x8000 && *(a1 + 136) != 0x8000)
          {
            v38 = *(v6 + 72);
            if (v38)
            {
              v39 = *(v6 + 80);

              v41 = v38(v40);
              sub_1CEFF7124(v38, v39);
              if (v41)
              {
                v42 = v52;
                *v52 = a1;
                v43 = v47;
                swift_storeEnumTagMultiPayload();
                v44 = v18;
                v45 = *(*v41 + 312);

                v45(v42);

                (*(v64 + 8))(v42, v43);
                return;
              }
            }
          }
        }

        else
        {
          sub_1CF3749D0(a2, v6, a1, v20, a3, a3, v54, v54);
        }
      }

      else
      {
        v36 = MEMORY[0x1EEE9AC00](v29);
        v37 = v54;
        *(&v46 - 6) = a3;
        *(&v46 - 5) = v37;
        *(&v46 - 4) = v27;
        *(&v46 - 3) = a1;
        *(&v46 - 2) = v20;
        (*(v37 + 32))(sub_1CF381E28, v36);
        if (!v30)
        {
          if ((*(v37 + 24))(a3, v37))
          {
            sub_1CF373C34(a1, a2, a3, v53);
          }
        }
      }
    }

    else
    {
      v22 = MEMORY[0x1EEE9AC00](v19);
      v23 = a3;
      *(&v46 - 4) = a3;
      v25 = v54;
      v24 = v55;
      *(&v46 - 3) = v54;
      *(&v46 - 2) = v6;
      v26 = v6;
      *(&v46 - 1) = a1;
      (*(v25 + 32))(sub_1CF381E1C, v22);
      if (!v24)
      {
        v33 = (*(v25 + 16))(v23, v25);
        v34 = v18;
        v35 = *(v26 + 16);
        *(&v62 + 1) = &type metadata for SQLItemJobID;
        v63 = sub_1CF03E084();
        *&v61 = v33;
        BYTE8(v61) = v35;
        swift_beginAccess();
        sub_1CF03E0D8(&v61, a1 + 56);
        swift_endAccess();
        sub_1CF373C34(a1, a2, v23, v53);

        return;
      }
    }
  }
}

uint64_t sub_1CF37475C(uint64_t a1, uint64_t *a2)
{
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v30 = 0;
  v31 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000004ALL, 0x80000001CFA44EB0);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D2065707974);
  v4 = qword_1CFA04890[sub_1CF03D760()];
  v29[3] = MEMORY[0x1E69E6530];
  v29[0] = v4;
  v5 = sub_1CEFF8EA0(v29);
  v7 = v6;
  sub_1CEFCCC44(v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v7)
  {
    MEMORY[0x1D3868CC0](v5, v7);
    v7, v8, v9, v10, v11, v12, v13, v14;
    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    swift_getAssociatedTypeWitness();
    v15 = *(swift_getAssociatedConformanceWitness() + 8);
    v16 = *(v15 + 32);
    v17 = swift_checkMetadataState();
    v18 = v16(a1, v17, v15);
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    return v30;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3749D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a8;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  (*(a8 + 32))(sub_1CF380E04, v13, a6, a8);
  if (!v8)
  {
    if ((*(a8 + 24))(a6, a8))
    {
      sub_1CF373C34(a3, a1, a6, *(a8 + 8));
    }
  }
}

uint64_t sub_1CF374AA8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v56 = 0;
  v57 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA43FC0);
  v8 = a3[17];
  v9 = MEMORY[0x1E69E6810];
  v55 = MEMORY[0x1E69E6810];
  v54[0] = v8;
  v10 = sub_1CEFF8EA0(v54);
  v12 = v11;
  sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v12 && (MEMORY[0x1D3868CC0](v10, v12), v12, v13, v14, v15, v16, v17, v18, v19, MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA43FF0), v20 = a3[15], v55 = v9, v54[0] = v20, v21 = sub_1CEFF8EA0(v54), v23 = v22, sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0), v23) && (MEMORY[0x1D3868CC0](v21, v23), v23, v24, v25, v26, v27, v28, v29, v30, MEMORY[0x1D3868CC0](0xD00000000000004BLL, 0x80000001CFA44040), v31 = a3[16], v55 = MEMORY[0x1E69E6530], v54[0] = v31, v32 = sub_1CEFF8EA0(v54), v34 = v33, sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0), v34))
  {
    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v42 = [a1 bindLongParameter_];
    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;

    MEMORY[0x1D3868CC0](v43, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    return v56;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF374D60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v69 = 0;
  v70 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v8 = *(a3 + 96);
  v9 = *(a3 + 104);
  v10 = *(a3 + 112);
  sub_1CF03C530(v8, v9, *(a3 + 112));
  v11 = sub_1CF065BDC(v8, v9, v10, 0x696C756465686373, 0xEB000000005F676ELL);
  v13 = v12;
  sub_1CF03D7A8(v8, v9, v10);
  MEMORY[0x1D3868CC0](v11, v13);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44DF0);
  v21 = *(a3 + 136);
  v22 = MEMORY[0x1E69E6810];
  v68 = MEMORY[0x1E69E6810];
  v67[0] = v21;
  v23 = sub_1CEFF8EA0(v67);
  v25 = v24;
  sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v25 && (MEMORY[0x1D3868CC0](v23, v25), v25, v26, v27, v28, v29, v30, v31, v32, MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA44E10), v33 = *(a3 + 120), v68 = v22, v67[0] = v33, v34 = sub_1CEFF8EA0(v67), v36 = v35, sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0), v36) && (MEMORY[0x1D3868CC0](v34, v36), v36, v37, v38, v39, v40, v41, v42, v43, MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600), v44 = *(a3 + 128), v68 = MEMORY[0x1E69E6530], v67[0] = v44, v45 = sub_1CEFF8EA0(v67), v47 = v46, sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0), v47))
  {
    MEMORY[0x1D3868CC0](v45, v47);
    v47, v48, v49, v50, v51, v52, v53, v54;
    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    v55 = [a1 bindLongParameter_];
    v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v58 = v57;

    MEMORY[0x1D3868CC0](v56, v58);
    v58, v59, v60, v61, v62, v63, v64, v65;
    return v69;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3750B8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v56 = 0;
  v57 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA44D50);
  v8 = a3[17];
  v9 = MEMORY[0x1E69E6810];
  v55 = MEMORY[0x1E69E6810];
  v54[0] = v8;
  v10 = sub_1CEFF8EA0(v54);
  v12 = v11;
  sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v12 && (MEMORY[0x1D3868CC0](v10, v12), v12, v13, v14, v15, v16, v17, v18, v19, MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA44D70), v20 = a3[15], v55 = v9, v54[0] = v20, v21 = sub_1CEFF8EA0(v54), v23 = v22, sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0), v23) && (MEMORY[0x1D3868CC0](v21, v23), v23, v24, v25, v26, v27, v28, v29, v30, MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA44DB0), v31 = a3[16], v55 = MEMORY[0x1E69E6530], v54[0] = v31, v32 = sub_1CEFF8EA0(v54), v34 = v33, sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0), v34))
  {
    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v42 = [a1 bindLongParameter_];
    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;

    MEMORY[0x1D3868CC0](v43, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    return v56;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF375370(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v89 = 0;
  v90 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44E30);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0xD00000000000005DLL, 0x80000001CFA44E50);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(a1, v8, v6);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v19 = sub_1CF03D760();
  v20 = MEMORY[0x1E69E6530];
  v21 = qword_1CFA04890[v19];
  v88 = MEMORY[0x1E69E6530];
  v87[0] = v21;
  v22 = sub_1CEFF8EA0(v87);
  v24 = v23;
  sub_1CEFCCC44(v87, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v24 && (MEMORY[0x1D3868CC0](v22, v24), v24, v25, v26, v27, v28, v29, v30, v31, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v32 = *(a3 + 96), v33 = *(a3 + 104), v34 = *(a3 + 112), sub_1CF03C530(v32, v33, *(a3 + 112)), v35 = sub_1CF03D7E8(), v36 = sub_1CF03D9EC(v35, v32, v33, v34), v38 = v37, v35, v37, v39, v40, v41, v42, v43, v44, sub_1CF03D7A8(v32, v33, v34), MEMORY[0x1D3868CC0](v36, v38), v38, v45, v46, v47, v48, v49, v50, v51, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v52 = *(a3 + 136), v53 = MEMORY[0x1E69E6810], v88 = MEMORY[0x1E69E6810], v87[0] = v52, v54 = sub_1CEFF8EA0(v87), v56 = v55, sub_1CEFCCC44(v87, &unk_1EC4BEC50, &qword_1CF9FB4B0), v56) && (MEMORY[0x1D3868CC0](v54, v56), v56, v57, v58, v59, v60, v61, v62, v63, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v64 = *(a3 + 128), v88 = v20, v87[0] = v64, v65 = sub_1CEFF8EA0(v87), v67 = v66, sub_1CEFCCC44(v87, &unk_1EC4BEC50, &qword_1CF9FB4B0), v67) && (MEMORY[0x1D3868CC0](v65, v67), v67, v68, v69, v70, v71, v72, v73, v74, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v75 = *(a3 + 120), v88 = v53, v87[0] = v75, v76 = sub_1CEFF8EA0(v87), v78 = v77, sub_1CEFCCC44(v87, &unk_1EC4BEC50, &qword_1CF9FB4B0), v78))
  {
    MEMORY[0x1D3868CC0](v76, v78);
    v78, v79, v80, v81, v82, v83, v84, v85;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v89;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3757DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v26 = a3;
  v27 = a4;
  v28 = v6;
  v29 = a1;
  v11 = *(a4 + 8);
  v12 = (*(v11 + 24))(sub_1CF381DC8, v25);
  if (!v5)
  {
    v13 = v12;
    if ([v12 next])
    {
      v31 = [v13 longAtIndex_];
      v24 = [v13 unsignedLongAtIndex_];
      v14 = [v13 longAtIndex_];
      v15 = [v13 unsignedLongAtIndex_];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v6 + 64) == 1)
        {
          v16 = MEMORY[0x1EEE9AC00](v15);
          v17 = *(a4 + 32);
          v18 = sub_1CF381E04;
        }

        else
        {
          v16 = MEMORY[0x1EEE9AC00](v15);
          v17 = *(a4 + 32);
          v18 = sub_1CF381DEC;
        }

        v17(v18, v16);
      }

      else
      {
        v22 = v15;
        v23 = &v21;
        v19 = MEMORY[0x1EEE9AC00](v15);
        (*(a4 + 32))(sub_1CF381DD4, v19);
        v20 = sub_1CF089324(a1, v24, v22, v14);
        swift_beginAccess();
        sub_1CEFCCBDC((a1 + 7), v30, &unk_1EC4C1BE0, &unk_1CF9FD400);
        swift_beginAccess();
        sub_1CF03E0D8(v30, v20 + 56);
        swift_endAccess();
        sub_1CF373C34(v20, a2, a3, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1CF375B18(uint64_t a1, uint64_t *a2)
{
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v30 = 0;
  v31 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA44CF0);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x742045524548570ALL, 0xEE00203D20657079);
  v4 = qword_1CFA04890[sub_1CF03D760()];
  v29[3] = MEMORY[0x1E69E6530];
  v29[0] = v4;
  v5 = sub_1CEFF8EA0(v29);
  v7 = v6;
  sub_1CEFCCC44(v29, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v7)
  {
    MEMORY[0x1D3868CC0](v5, v7);
    v7, v8, v9, v10, v11, v12, v13, v14;
    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    swift_getAssociatedTypeWitness();
    v15 = *(swift_getAssociatedConformanceWitness() + 8);
    v16 = *(v15 + 32);
    v17 = swift_checkMetadataState();
    v18 = v16(a1, v17, v15);
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    return v30;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF375D8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v12 = sub_1CF065BDC(a3, a4, a5, 0x696C756465686373, 0xEB000000005F676ELL);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD0000000000000D9, 0x80000001CFA44BD0);
  v22 = sub_1CF9E7F98();
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA44CB0);
  v32 = [a1 bindLongParameter_];
  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  MEMORY[0x1D3868CC0](v33, v35);
  v35, v36, v37, v38, v39, v40, v41, v42;
  return 0;
}

uint64_t sub_1CF375F48(void *a1, uint64_t a2, uint64_t a3)
{
  BYTE5(v25[1]) = 0;
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  strcpy(v25, "DELETE FROM ");
  HIWORD(v25[1]) = -5120;
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44BB0);
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return v25[0];
}

uint64_t sub_1CF376034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v15 = *(a3 + 96);
  v16 = *(a3 + 104);
  v17 = *(a3 + 112);
  sub_1CF03C530(v15, v16, v17);
  v18 = sub_1CF065BDC(v15, v16, v17, 0x696C756465686373, 0xEB000000005F676ELL);
  v20 = v19;
  sub_1CF03D7A8(v15, v16, v17);
  MEMORY[0x1D3868CC0](v18, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v28 = [a1 bindLongParameter_];
  v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v30;

  MEMORY[0x1D3868CC0](v29, v31);
  v31, v32, v33, v34, v35, v36, v37, v38;
  return 0x20455441445055;
}

uint64_t sub_1CF3761C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a1;
  v5[2] = a3;
  v5[3] = a4;
  return (*(a4 + 32))(sub_1CF381DBC, v5);
}

uint64_t sub_1CF376228(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA44B50);
  if (*(a2 + 16))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);
  0xE200000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v12 + 32);
  v14 = swift_checkMetadataState();
  v15 = v13(a1, v14, v12);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  return 0;
}

void sub_1CF3763A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v162 = a4;
  v163 = a3;
  v164 = a2;
  v6 = *v4;
  v159 = sub_1CF9E6118();
  v157 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v156 = (&v151 - v9);
  v10 = v6[10];
  v11 = v6[11];
  v12 = v6[12];
  v13 = v6[13];
  v165 = v10;
  v166 = v11;
  v167 = v12;
  v168 = v13;
  v14 = type metadata accessor for PersistenceTrigger(0, &v165);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v151 - v17);
  v19 = *(a1 + 112);
  v161 = a1;
  if (v19 > 2)
  {
LABEL_20:
    v69 = *(v4 + 72);
    if (v69)
    {
      v159 = v16;
      v160 = v4;
      v70 = *(v4 + 80);

      v72 = v69(v71);
      sub_1CEFF7124(v69, v70);
      if (v72)
      {
        v165 = v10;
        v166 = v11;
        v167 = v12;
        v168 = v13;
        type metadata accessor for Materialization.MaterializeItem(0, &v165);
        v73 = v161;
        v74 = swift_dynamicCastClass();
        if (v74)
        {
          v75 = v74;
          v76 = *(*v72 + 544);
          v12 = v162;
          v77 = *(v162 + 8);

          v78 = v75;
          v79 = v164;
          v80 = v171;
          v76(v78, 0, v164, v163, v77);
          v171 = v80;
          if (v80)
          {

LABEL_25:

            return;
          }
        }

        else
        {
          v12 = v162;
          v79 = v164;
        }

        *v18 = v73;
        swift_storeEnumTagMultiPayload();
        v145 = *(*v72 + 312);

        v145(v18);
        v146 = (*(v159 + 8))(v18, v14);
        v147 = (*(*v72 + 184))(v146);
        if (v147)
        {
          (*(*v147 + 128))(v72, v73);
        }
      }

      else
      {
        v73 = v161;
        v12 = v162;
        v79 = v164;
      }

      v94 = v160;
    }

    else
    {
      v73 = v161;
      v12 = v162;
      v79 = v164;
      v94 = v4;
    }

    v25 = v163;
    v148 = v171;
    sub_1CF3757DC(v73, v79, v163, v12);
    if (v148)
    {
      return;
    }

LABEL_67:
    if (sub_1CF03D760() == 23 || sub_1CF03D760() == 7)
    {
      v149 = v73 + *(*v73 + 576);
      v167 = v25;
      v168 = v12;
      v169 = v94;
      v170 = v149;
      (*(v12 + 32))(sub_1CF381DBC, &v165, v25, v12);
    }

    return;
  }

  v160 = v4;
  v20 = a1[12];
  v21 = a1[13];
  if (v19)
  {
    if (v19 != 1)
    {
      v97 = MEMORY[0x1EEE9AC00](v15);
      v12 = v162;
      v25 = v163;
      *(&v151 - 4) = v163;
      *(&v151 - 3) = v12;
      v94 = v160;
      v73 = v161;
      *(&v151 - 2) = v160;
      *(&v151 - 1) = v73;
      v98 = v171;
      (*(v12 + 32))(sub_1CF381D98, v97);
      if (v98)
      {
        return;
      }

      goto LABEL_67;
    }

    v22 = a1[12];
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

  v22 = a1[13];
  if (v21)
  {
LABEL_27:
    v81 = *(*v22 + 88);
    v82 = sub_1CF03C530(v20, v21, v19);
    v83 = v81(v82);
    v85 = v84;
    v87 = v86;
    v88 = v86;
    sub_1CF03D7A8(v20, v21, v19);
    if (v88 == 3 && v83 == 1 && v85 == 0)
    {
      v93 = MEMORY[0x1EEE9AC00](v89);
      v12 = v162;
      v25 = v163;
      *(&v151 - 4) = v163;
      *(&v151 - 3) = v12;
      v94 = v160;
      v73 = v161;
      *(&v151 - 2) = v160;
      *(&v151 - 1) = v73;
      v95 = *(v12 + 32);
      v96 = sub_1CF381DB0;
    }

    else
    {
      v92 = sub_1CF1DBCF0(v83, v85, v87);
      v93 = MEMORY[0x1EEE9AC00](v92);
      v12 = v162;
      v25 = v163;
      *(&v151 - 4) = v163;
      *(&v151 - 3) = v12;
      v94 = v160;
      v73 = v161;
      *(&v151 - 2) = v160;
      *(&v151 - 1) = v73;
      v95 = *(v12 + 32);
      v96 = sub_1CF381DA4;
    }

    v141 = v164;
    v142 = v171;
    v95(v96, v93);
    if (v142)
    {
      return;
    }

    if (!(*(v12 + 24))(v25, v12))
    {
      sub_1CF374114(v73, v141, v25, v12);
    }

    sub_1CF373FB0(v73, v143);
    goto LABEL_67;
  }

LABEL_5:
  v23 = v161;
  if (sub_1CF03D760() == 8)
  {
    v24 = v23 + *(*v23 + 576);
    v25 = v163;
    v26 = v171;
    v27 = sub_1CF3782E8(v24, &unk_1F4BEC440, v164, v163, *(v162 + 8));
    if (!v26)
    {
      v14 = v27;
      v152 = v24;
      v171 = 0;
      v165 = v10;
      v166 = v11;
      v167 = v12;
      v168 = v13;
      v28 = type metadata accessor for ItemJob(0, &v165);
      if (sub_1CF9E6DF8())
      {
        v37 = v156;
        ++v157;
        *&v36 = 136315138;
        v153 = v36;
        v11 = 4;
        v12 = v162;
        v10 = v164;
        v154 = v28;
        v155 = v14;
        while (1)
        {
          v18 = (v11 - 4);
          v4 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v4)
          {
            v13 = *(&v14->super.isa + v11);

            v38 = (v11 - 3);
            if (__OFADD__(v18, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            v13 = sub_1CF9E7998();
            v38 = (v11 - 3);
            if (__OFADD__(v18, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v158 = v38;
          v40 = *(v13 + 96);
          v39 = *(v13 + 104);
          *(v13 + 96) = 0;
          *(v13 + 104) = 0;
          v41 = *(v13 + 112);
          *(v13 + 112) = 4;

          sub_1CF03D7A8(v40, v39, v41);

          v42 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v43 = sub_1CF9E6108();
          v44 = sub_1CF9E7288();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v165 = v46;
            *v45 = v153;
            v47 = sub_1CF044BA4();
            v49 = v48;

            v50 = sub_1CEFD0DF0(v47, v49, &v165);
            v51 = v49;
            v10 = v164;
            v51, v52, v53, v54, v55, v56, v57, v58;
            *(v45 + 4) = v50;
            _os_log_impl(&dword_1CEFC7000, v43, v44, "✍️  Cancelling materialize job due to new eviction job: %s", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            v59 = v46;
            v12 = v162;
            MEMORY[0x1D386CDC0](v59, -1, -1);
            v60 = v45;
            v25 = v163;
            MEMORY[0x1D386CDC0](v60, -1, -1);
          }

          else
          {
          }

          (*v157)(v37, v159);
          v14 = v155;
          v61 = v171;
          sub_1CF3763A8(v13, v10, v25, v12);
          v171 = v61;
          if (v61)
          {
            break;
          }

          ++v11;
          if (v158 == sub_1CF9E6DF8())
          {
            goto LABEL_72;
          }
        }

        v150 = v14;
LABEL_80:
        v150, v62, v63, v64, v65, v66, v67, v68;
        goto LABEL_25;
      }

      v12 = v162;
      v10 = v164;
LABEL_72:
      v14, v29, v30, v31, v32, v33, v34, v35;
      v167 = v25;
      v168 = v12;
      v94 = v160;
      v169 = v160;
      v170 = v152;
      v144 = v171;
      (*(v12 + 32))(sub_1CF381DBC, &v165, v25, v12);
      if (!v144)
      {
LABEL_77:
        v73 = v161;
        sub_1CF374114(v161, v10, v25, v12);
        if (v144)
        {
          return;
        }

        goto LABEL_67;
      }
    }
  }

  else
  {
    v99 = sub_1CF03D760();
    v25 = v163;
    if (v99 != 7)
    {
      v144 = v171;
      v12 = v162;
      v10 = v164;
      v94 = v160;
      goto LABEL_77;
    }

    v94 = v160;
    v100 = v171;
    v101 = sub_1CF3782E8(v23 + *(*v23 + 576), &unk_1F4BEC468, v164, v163, *(v162 + 8));
    if (v100)
    {
      return;
    }

    v102 = v101;
    v171 = 0;
    v165 = v10;
    v166 = v11;
    v167 = v12;
    v168 = v13;
    v103 = type metadata accessor for ItemJob(0, &v165);
    v112 = v102;
    if (!sub_1CF9E6DF8())
    {
      v12 = v162;
      v10 = v164;
LABEL_76:
      v112, v104, v105, v106, v107, v108, v109, v110;
      v144 = v171;
      goto LABEL_77;
    }

    v113 = v158;
    v155 = (v157 + 1);
    *&v111 = 136315138;
    v153 = v111;
    v114 = 4;
    v12 = v162;
    v10 = v164;
    v156 = v102;
    v154 = v103;
    while (1)
    {
      v115 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v115)
      {
        v116 = *(&v112->super.isa + v114);
      }

      else
      {
        v116 = sub_1CF9E7998();
      }

      v157 = (v114 - 3);
      if (__OFADD__(v114 - 4, 1))
      {
        break;
      }

      v118 = *(v116 + 96);
      v117 = *(v116 + 104);
      *(v116 + 96) = 0;
      *(v116 + 104) = 0;
      v119 = *(v116 + 112);
      *(v116 + 112) = 4;

      sub_1CF03D7A8(v118, v117, v119);

      v120 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v121 = v113;
      v122 = sub_1CF9E6108();
      v123 = sub_1CF9E7288();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v165 = v125;
        *v124 = v153;
        v126 = sub_1CF044BA4();
        v128 = v127;

        v129 = sub_1CEFD0DF0(v126, v128, &v165);
        v130 = v128;
        v25 = v163;
        v130, v131, v132, v133, v134, v135, v136, v137;
        *(v124 + 4) = v129;
        _os_log_impl(&dword_1CEFC7000, v122, v123, "✍️  Cancelling eviction job due to new materialize job: %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v125);
        v138 = v125;
        v94 = v160;
        MEMORY[0x1D386CDC0](v138, -1, -1);
        v139 = v124;
        v10 = v164;
        MEMORY[0x1D386CDC0](v139, -1, -1);

        v113 = v158;
        (v155->super.isa)(v158, v159);
      }

      else
      {

        (v155->super.isa)(v121, v159);
        v113 = v121;
      }

      v140 = v171;
      sub_1CF3763A8(v116, v10, v25, v12);
      v171 = v140;
      if (v140)
      {
        v150 = v156;
        goto LABEL_80;
      }

      v112 = v156;
      ++v114;
      if (v157 == sub_1CF9E6DF8())
      {
        goto LABEL_76;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CF377100(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  swift_getAssociatedTypeWitness();
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = *(v19 + 32);
  v21 = swift_checkMetadataState();
  v22 = v20(a1, v21, v19);
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v32 = qword_1CFA04890[sub_1CF03D760()];
  v44[3] = MEMORY[0x1E69E6530];
  v44[0] = v32;
  v33 = sub_1CEFF8EA0(v44);
  v35 = v34;
  sub_1CEFCCC44(v44, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v35)
  {
    MEMORY[0x1D3868CC0](v33, v35);
    v35, v36, v37, v38, v39, v40, v41, v42;
    return v45;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3773F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v69 = 0;
  v70 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600);
  v19 = *(a3 + 128);
  v20 = MEMORY[0x1E69E6530];
  v68 = MEMORY[0x1E69E6530];
  v67[0] = v19;
  v21 = sub_1CEFF8EA0(v67);
  v23 = v22;
  sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v23 && (MEMORY[0x1D3868CC0](v21, v23), v23, v24, v25, v26, v27, v28, v29, v30, MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30), v31 = *(a3 + 136), v68 = MEMORY[0x1E69E6810], v67[0] = v31, v32 = sub_1CEFF8EA0(v67), v34 = v33, sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0), v34) && (MEMORY[0x1D3868CC0](v32, v34), v34, v35, v36, v37, v38, v39, v40, v41, MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410), swift_getAssociatedTypeWitness(), v42 = *(swift_getAssociatedConformanceWitness() + 8), v43 = *(v42 + 32), v44 = swift_checkMetadataState(), v45 = v43(a1, v44, v42), v47 = v46, MEMORY[0x1D3868CC0](v45), v47, v48, v49, v50, v51, v52, v53, v54, MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065), v55 = qword_1CFA04890[sub_1CF03D760()], v68 = v20, v67[0] = v55, v56 = sub_1CEFF8EA0(v67), v58 = v57, sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0), v58))
  {
    MEMORY[0x1D3868CC0](v56, v58);
    v58, v59, v60, v61, v62, v63, v64, v65;
    return v69;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3777E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v19 = *(a3 + 136);
  v56 = MEMORY[0x1E69E6810];
  v55[0] = v19;
  v20 = sub_1CEFF8EA0(v55);
  v22 = v21;
  sub_1CEFCCC44(v55, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v22 && (MEMORY[0x1D3868CC0](v20, v22), v22, v23, v24, v25, v26, v27, v28, v29, MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410), swift_getAssociatedTypeWitness(), v30 = *(swift_getAssociatedConformanceWitness() + 8), v31 = *(v30 + 32), v32 = swift_checkMetadataState(), v33 = v31(a1, v32, v30), v35 = v34, MEMORY[0x1D3868CC0](v33), v35, v36, v37, v38, v39, v40, v41, v42, MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065), v43 = qword_1CFA04890[sub_1CF03D760()], v56 = MEMORY[0x1E69E6530], v55[0] = v43, v44 = sub_1CEFF8EA0(v55), v46 = v45, sub_1CEFCCC44(v55, &unk_1EC4BEC50, &qword_1CF9FB4B0), v46))
  {
    MEMORY[0x1D3868CC0](v44, v46);
    v46, v47, v48, v49, v50, v51, v52, v53;
    return v57;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF377B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v49 = a6;
  v39[1] = a7;
  v43 = a5;
  v44 = a3;
  v41 = a4;
  v42 = a2;
  v45 = a1;
  v50 = a9;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v39 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v40 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEBBE40;
  (*(v10 + 56))(v18, 1, 1, v9);
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v22 = *(v10 + 48);
  if (v22(v15, 1, v9) == 1)
  {
    v23 = v21;
    sub_1CF9E6048();
    v24 = v12;
    if (v22(v15, 1, v9) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v24 = v12;
    (*(v10 + 32))(v12, v15, v9);
  }

  v25 = v40;
  (*(v10 + 16))(v40, v24, v9);
  *(v25 + *(v19 + 20)) = v21;
  v26 = v25 + *(v19 + 24);
  *v26 = "SQLDB: Fetch Jobs";
  *(v26 + 8) = 17;
  *(v26 + 16) = 2;
  v27 = v21;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v24, v9);
  v28 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = v48;
  v31 = v50;
  v39[-8] = v47;
  v39[-7] = v31;
  v32 = v41;
  v39[-6] = v30;
  v39[-5] = v32;
  v33 = v42;
  v39[-4] = v43;
  v39[-3] = v33;
  v39[-2] = v44;
  v34 = v46;
  v35 = (*(v31 + 24))(sub_1CF381D84, v29);
  if (!v34)
  {
    v36 = v35;
    if ([v35 next])
    {
      do
      {
        v37 = objc_autoreleasePoolPush();
        sub_1CF378174(v30, v36, v49);
        objc_autoreleasePoolPop(v37);
      }

      while (([v36 next] & 1) != 0);
    }
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF0593C8(v25);
}

uint64_t sub_1CF377FE8(uint64_t a1, void *a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t (*a5)(uint64_t))
{
  v10 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A6, 0x80000001CFA44A80);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (a4)
  {

    MEMORY[0x1D3868CC0](a2[3], a2[4]);
    MEMORY[0x1D3868CC0](a3, a4);
    v11 = 0x2044455845444E49;
    v10 = 0xEB00000000205942;
    a4, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1D3868CC0](v11, v10);
  v10, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v26 = a5(a1);
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  return 0;
}

double sub_1CF378174(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_1CF043954(a2, v6);
  if (!v3)
  {
    a3(v6[0], v6[1], v6[2], v6[3], v7);
  }

  return result;
}

uint64_t sub_1CF3781E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v13 = a2;
  v14 = a3;
  v9 = a4;
  v10 = a5;
  v11 = &v15;
  sub_1CF377B64(a1, sub_1CF381D3C, v12, 0, 0, sub_1CF381D44, v8, a4, a5);
  v6 = v15;
  if (v5)
  {
  }

  return v6;
}

uint64_t sub_1CF378280(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a2(a1);
  v4 = v3;
  v13 = v2;

  MEMORY[0x1D3868CC0](0x312054494D494C20, 0xE800000000000000);
  v4, v5, v6, v7, v8, v9, v10, v11;
  return v13;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3782E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 88);
  v12 = *(*v5 + 96);
  v13 = *(*v5 + 104);
  v39[0] = *(*v5 + 80);
  v10 = v39[0];
  v39[1] = v11;
  v39[2] = v12;
  v39[3] = v13;
  type metadata accessor for ItemJob(0, v39);
  v40 = sub_1CF9E6DA8();
  v31 = v10;
  v32 = v11;
  v33 = a4;
  v34 = v12;
  v35 = v13;
  v36 = a5;
  v37 = a1;
  v38 = a2;
  v26 = a4;
  v27 = a5;
  v28 = &v40;
  v29 = v5;
  sub_1CF377B64(a3, sub_1CF381CD8, v30, 0, 0, sub_1CF381D0C, v25, a4, a5);
  v21 = v40;
  if (v24)
  {
    v40, v14, v15, v16, v17, v18, v19, v20;
  }

  return v21;
}

uint64_t sub_1CF378438(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  strcpy(v88, "item_id = ");
  BYTE3(v88[1]) = 0;
  HIDWORD(v88[1]) = -369098752;
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = *(v16 + 32);
  v18 = swift_checkMetadataState();
  v19 = v17(a1, v18, v16);
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v29 = sub_1CF9E6C18();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v39, v40, v41, v42, v43, v44, v45;
  v47 = v88[0];
  v46 = v88[1];
  if (a3)
  {
    strcpy(v88, " AND type IN ");
    HIWORD(v88[1]) = -4864;
    *(swift_allocObject() + 16) = a1;

    v48 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
    v49 = sub_1CF9E6C18();
    v51 = v50;

    MEMORY[0x1D3868CC0](v49, v51);
    v51, v52, v53, v54, v55, v56, v57, v58;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    a3, v59, v60, v61, v62, v63, v64, v65;
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v66, v67, v68, v69, v70, v71, v72;

    MEMORY[0x1D3868CC0](v88[0], v88[1]);
    v46, v73, v74, v75, v76, v77, v78, v79;
    v88[1], v80, v81, v82, v83, v84, v85, v86;
  }

  return v47;
}

uint64_t sub_1CF3787C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  v14 = a1;

  v11 = *(v10 + 560);
  v13[0] = *(v10 + 544);
  v13[1] = v11;
  type metadata accessor for ItemJob(255, v13);
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  if ((a5 & 1) == 0)
  {
    *&v13[0] = sub_1CF089324(a1, a4, a2, a3);
    sub_1CF9E6E18();
  }

  return 0;
}

uint64_t sub_1CF3788AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v27;
  if (a3)
  {
    v6 = MEMORY[0x1EEE9AC00](a1);
    v21 = v7;
    v22 = v8;
    v23 = v3;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v12 = (*(v8 + 24))(sub_1CF381CB4, v20, v7, v8, v6);
  }

  else
  {
    v13 = MEMORY[0x1EEE9AC00](a1);
    v21 = v14;
    v22 = v15;
    v23 = v3;
    v24 = v16;
    v25 = v17;
    v12 = (*(v15 + 24))(sub_1CF381CC8, v20, v14, v15, v13);
  }

  if (!v4)
  {
    v18 = v12;
    LOBYTE(v5) = [v12 next];
  }

  return v5 & 1;
}

uint64_t sub_1CF3789BC(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1CF9E7948();
  v63 = 0;
  v64 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v20 = qword_1CFA04890[a4];
  v62 = MEMORY[0x1E69E6530];
  v59 = v20;
  v21 = sub_1CEFF8EA0(&v59);
  v23 = v22;
  sub_1CEFCCC44(&v59, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v23)
  {
    MEMORY[0x1D3868CC0](v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44980);
    v59 = &unk_1F4BED2B0;
    v60 = sub_1CF067ADC;
    v61 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v31 = sub_1CF9E6C18();
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v41, v42, v43, v44, v45, v46, v47;
    MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA449A0);
    v59 = 0x7FFFFFFFFFFFFFFFLL;
    v48 = sub_1CF9E7F98();
    v50 = v49;
    MEMORY[0x1D3868CC0](v48);
    v50, v51, v52, v53, v54, v55, v56, v57;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v63;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF378D60(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, void *a5)
{
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1CF9E7948();
  v76 = 0;
  v77 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 32);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, v11, v9);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v22 = qword_1CFA04890[a4];
  v75 = MEMORY[0x1E69E6530];
  v72 = v22;
  v23 = sub_1CEFF8EA0(&v72);
  v25 = v24;
  sub_1CEFCCC44(&v72, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v25 && (MEMORY[0x1D3868CC0](v23, v25), v25, v26, v27, v28, v29, v30, v31, v32, MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA449D0), v72 = &unk_1F4BED2B0, v73 = sub_1CF067ADC, v74 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230), sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]), sub_1CEFE4E68(), v33 = sub_1CF9E6C18(), v35 = v34, MEMORY[0x1D3868CC0](v33), v35, v36, v37, v38, v39, v40, v41, v42, MEMORY[0x1D3868CC0](41, 0xE100000000000000), MEMORY[0x1D3868CC0](40, 0xE100000000000000), 0xE100000000000000, v43, v44, v45, v46, v47, v48, v49, MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA449F0), v50 = MEMORY[0x1E69E6810], v75 = MEMORY[0x1E69E6810], v72 = a5, v51 = sub_1CEFF8EA0(&v72), v53 = v52, sub_1CEFCCC44(&v72, &unk_1EC4BEC50, &qword_1CF9FB4B0), v53) && (MEMORY[0x1D3868CC0](v51, v53), v53, v54, v55, v56, v57, v58, v59, v60, MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA44A10), v75 = v50, v72 = a5, v61 = sub_1CEFF8EA0(&v72), v63 = v62, sub_1CEFCCC44(&v72, &unk_1EC4BEC50, &qword_1CF9FB4B0), v63))
  {
    MEMORY[0x1D3868CC0](v61, v63);
    v63, v64, v65, v66, v67, v68, v69, v70;
    MEMORY[0x1D3868CC0](0x2930203D212029, 0xE700000000000000);
    return v76;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3791A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a2;
  v83 = a4;
  v81 = a3;
  v8 = *v6;
  v9 = v6[9];
  if (!v9 || (v10 = v6, v14 = v6[10], v15 = , v16 = v9(v15), sub_1CEFF7124(v9, v14), !v16))
  {
    v31 = *(v8 + 96);
    v84 = *(v8 + 80);
    v85 = v31;
    type metadata accessor for SchedulableJob(0, &v84);
    sub_1CF9E6DA8();
    return;
  }

  v80 = v16;
  v17 = *(v8 + 96);
  v84 = *(v8 + 80);
  v85 = v17;
  v77 = type metadata accessor for SchedulableJob(0, &v84);
  v86 = sub_1CF9E6DA8();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = a1 + 32;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = v20 + 40 * v19;
      v23 = v19;
      while (1)
      {
        if (v23 >= v18)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        v19 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_37;
        }

        sub_1CF379720(v22, v10, &v84);
        if ((BYTE8(v84) & 1) == 0)
        {
          break;
        }

        ++v23;
        v22 += 40;
        if (v19 == v18)
        {
          goto LABEL_19;
        }
      }

      v79 = v20;
      v78 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1CF1F6A58(0, *v21->tree + 1, 1, v21, v24, v25, v26, v27);
      }

      v29 = *v21->tree;
      v28 = *v21->tester;
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1CF1F6A58((v28 > 1), v29 + 1, 1, v21, v24, v25, v26, v27);
      }

      v30 = v78;
      v20 = v79;
      *v21->tree = v29 + 1;
      *(&v21[1].super.isa + v29) = v30;
    }

    while (v19 != v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v32 = sub_1CF03E990(v21);
  v21, v33, v34, v35, v36, v37, v38, v39;
  if (*(v10 + 16))
  {
    MEMORY[0x1EEE9AC00](v40);
    v74[2] = a5;
    v74[3] = a6;
    v75 = v80;
    v40 = sub_1CF3781E8(v83, sub_1CF381CA8, v74, a5, a6);
    if (v7)
    {
LABEL_28:
      v32, v41, v42, v43, v44, v45, v46, v47;

LABEL_31:
      v86, v53, v54, v55, v56, v57, v58, v59;
      return;
    }

    v48 = v40;
    if (v40)
    {
      swift_beginAccess();
      sub_1CEFCCBDC(v48 + 56, &v84, &unk_1EC4C1BE0, &unk_1CF9FD400);
      if (*(&v85 + 1))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
        if ((swift_dynamicCast() & 1) != 0 && (sub_1CF052620() & 1) == 0)
        {
          *&v84 = sub_1CF052628(v48);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
        }

        else
        {
        }
      }

      else
      {

        v40 = sub_1CEFCCC44(&v84, &unk_1EC4C1BE0, &unk_1CF9FD400);
      }
    }
  }

  if (v82 >= 1)
  {
    MEMORY[0x1EEE9AC00](v40);
    v75 = v32;
    v76 = v49;
    MEMORY[0x1EEE9AC00](v50);
    v72 = a5;
    v73 = a6;
    v74[0] = &v86;
    v40 = sub_1CF377B64(v83, sub_1CF381C7C, v52, 0xD000000000000020, v51 | 0x8000000000000000, sub_1CF381C84, v71, a5, a6);
    if (v7)
    {
      goto LABEL_28;
    }
  }

  if (v81 < 1)
  {
    v32, v41, v42, v43, v44, v45, v46, v47;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v40);
    v75 = v32;
    v76 = v60;
    MEMORY[0x1EEE9AC00](v61);
    v72 = a5;
    v73 = a6;
    v74[0] = &v86;
    sub_1CF377B64(v83, sub_1CF381C74, v63, 0xD000000000000020, v62 | 0x8000000000000000, sub_1CF382070, v71, a5, a6);
    v32, v64, v65, v66, v67, v68, v69, v70;

    if (v7)
    {
      goto LABEL_31;
    }
  }
}

uint64_t sub_1CF379720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CF1A91AC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  result = swift_dynamicCast();
  if ((result & 1) != 0 && v7 == *(a2 + 16))
  {
    *a3 = v6;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  return result;
}

uint64_t sub_1CF3797C4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v39 - v5;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
  sub_1CF046AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
  v10 = v9;
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v8, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
  v40 = 27;
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
  v40 = 1;
  v28 = sub_1CF9E7F98();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  return v41;
}

uint64_t sub_1CF379A30(void *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  v6 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v17 = sub_1CF9E6C18();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  if (*a2->tree)
  {
    sub_1CF9E7948();
    0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;
    *(swift_allocObject() + 16) = a1;
    v41 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAD0, &unk_1CFA04810);
    sub_1CEFCCCEC(&qword_1EDEA3390, &qword_1EC4BFAD0, &unk_1CFA04810, MEMORY[0x1E69E6CC8]);
    v42 = sub_1CF9E6C18();
    v44 = v43;

    a2, v45, v46, v47, v48, v49, v50, v51;
    MEMORY[0x1D3868CC0](v42, v44);
    v44, v52, v53, v54, v55, v56, v57, v58;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v59, v60, v61, v62, v63, v64, v65;
    v66 = 0xD000000000000012;
    v6 = 0x80000001CFA44920;
  }

  else
  {
    v66 = 0;
  }

  MEMORY[0x1D3868CC0](v66, v6);
  v6, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA44940);
  v74 = [a1 bindLongParameter_];
  v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v77 = v76;

  MEMORY[0x1D3868CC0](v75, v77);
  v77, v78, v79, v80, v81, v82, v83, v84;
  return 0;
}

uint64_t sub_1CF379DD8(void *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
  if (qword_1EDEA4778 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDEBB6A8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v17 = sub_1CF9E6C18();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v16, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v41 = 0xE000000000000000;
  if (*a2->tree)
  {
    sub_1CF9E7948();
    0xE000000000000000, v42, v43, v44, v45, v46, v47, v48;
    *(swift_allocObject() + 16) = a1;
    v49 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAD0, &unk_1CFA04810);
    sub_1CEFCCCEC(&qword_1EDEA3390, &qword_1EC4BFAD0, &unk_1CFA04810, MEMORY[0x1E69E6CC8]);
    v50 = sub_1CF9E6C18();
    v52 = v51;

    a2, v53, v54, v55, v56, v57, v58, v59;
    MEMORY[0x1D3868CC0](v50, v52);
    v52, v60, v61, v62, v63, v64, v65, v66;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v67, v68, v69, v70, v71, v72, v73;
    v74 = 0xD000000000000012;
    v41 = 0x80000001CFA44920;
  }

  else
  {
    v74 = 0;
  }

  MEMORY[0x1D3868CC0](v74, v41);
  v41, v75, v76, v77, v78, v79, v80, v81;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA44940);
  v82 = [a1 bindLongParameter_];
  v83 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v85 = v84;

  MEMORY[0x1D3868CC0](v83, v85);
  v85, v86, v87, v88, v89, v90, v91, v92;
  return 0;
}

uint64_t sub_1CF37A1C4(uint64_t a1)
{
  v2 = *(*a1 + 560);
  v4[0] = *(*a1 + 544);
  v4[1] = v2;
  type metadata accessor for SchedulableJob(0, v4);
  *&v4[0] = sub_1CF052628(a1);
  sub_1CF9E6E58();

  sub_1CF9E6E18();
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF37A274(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6->super.isa + 6);
  v14 = a1;
  v56[0] = *(v6->super.isa + 5);
  v56[1] = v13;
  type metadata accessor for ItemJob(0, v56);
  v15 = sub_1CF9E6DA8();
  v57 = v15;
  v54 = 0;
  v55 = 1;
  if (v14 == 89)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    *&v56[0] = 0x6570797420444E41;
    *(&v56[0] + 1) = 0xEB00000000203D20;
    v53[15] = qword_1CFA04890[a1];
    v17 = sub_1CF9E7F98();
    v19 = v18;
    MEMORY[0x1D3868CC0](v17);
    v19, v20, v21, v22, v23, v24, v25, v26;
    v16 = *(&v56[0] + 1);
  }

  MEMORY[0x1EEE9AC00](v15);
  v53[8] = a2;
  v53[9] = v27;
  v53[10] = v16;
  v53[11] = a3;
  v53[12] = 100;
  MEMORY[0x1EEE9AC00](v28);
  v53[2] = a5;
  v53[3] = a6;
  v53[4] = &v57;
  v53[5] = &v54;
  v29 = v53[14];
  sub_1CF377B64(a4, sub_1CF381C00, v30, 0, 0, sub_1CF381C10, v53, a5, a6);
  v16, v31, v32, v33, v34, v35, v36, v37;
  if (v29)
  {
    v57, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v6 = v57;

    sub_1CF9E6DF8();
    v6, v45, v46, v47, v48, v49, v50, v51;
  }

  return v6;
}

uint64_t sub_1CF37A4C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v67 = 0;
  v68 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v11 = MEMORY[0x1E69E6530];
  v12 = sub_1CF9E7F98();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA448C0);
  v66 = v11;
  v65[0] = a2;
  v22 = sub_1CEFF8EA0(v65);
  v24 = v23;
  sub_1CEFCCC44(v65, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v24 && (MEMORY[0x1D3868CC0](v22, v24), v24, v25, v26, v27, v28, v29, v30, v31, MEMORY[0x1D3868CC0](2112800, 0xE300000000000000), v66 = v11, v65[0] = a2, v32 = sub_1CEFF8EA0(v65), v34 = v33, sub_1CEFCCC44(v65, &unk_1EC4BEC50, &qword_1CF9FB4B0), v34))
  {
    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x1D3868CC0](10, 0xE100000000000000);
    MEMORY[0x1D3868CC0](a3, a4);
    MEMORY[0x1D3868CC0](0x776F7220444E410ALL, 0xED0000203E204449);
    v42 = [a1 bindLongParameter_];
    v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v45 = v44;

    MEMORY[0x1D3868CC0](v43, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA448A0);
    v65[0] = a6;
    v53 = sub_1CF9E7F98();
    v55 = v54;
    MEMORY[0x1D3868CC0](v53);
    v55, v56, v57, v58, v59, v60, v61, v62;
    return v67;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37A790(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;

  v10 = *(v9 + 560);
  v15 = *(v9 + 544);
  v16 = v10;
  type metadata accessor for ItemJob(255, &v15);
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  swift_beginAccess();
  sub_1CEFCCBDC((a1 + 7), &v15, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!*(&v16 + 1))
  {
    sub_1CEFCCC44(&v15, &unk_1EC4C1BE0, &unk_1CF9FD400);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v12 = 0;
    v11 = 1;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = v14;
LABEL_6:
  *a7 = v12;
  *(a7 + 8) = v11;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF37A8D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v37 = sub_1CF9E6DA8();
  v35 = 0;
  v36 = 1;
  v32[16] = a1;
  v33 = a2;
  v34 = 100;
  v28 = a4;
  v29 = a5;
  v30 = &v37;
  v31 = &v35;
  sub_1CF377B64(a3, sub_1CF381BC8, v32, 0, 0, sub_1CF381BD4, v27, a4, a5);
  if (v6)
  {
    v37, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v5 = v37;

    sub_1CF9E6DF8();
    v5, v19, v20, v21, v22, v23, v24, v25;
  }

  return v5;
}

uint64_t sub_1CF37AA48(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  v49 = 0x203D2065707974;
  v50 = 0xE700000000000000;
  v15 = qword_1CFA04890[a2];
  v48[3] = MEMORY[0x1E69E6530];
  v48[0] = v15;
  v16 = sub_1CEFF8EA0(v48);
  v18 = v17;
  sub_1CEFCCC44(v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v18)
  {
    MEMORY[0x1D3868CC0](v16, v18);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x776F7220444E410ALL, 0xED0000203E204449);
    v26 = [a1 bindLongParameter_];
    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;

    MEMORY[0x1D3868CC0](v27, v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA448A0);
    v48[0] = a4;
    v37 = sub_1CF9E7F98();
    v39 = v38;
    MEMORY[0x1D3868CC0](v37);
    v39, v40, v41, v42, v43, v44, v45, v46;
    return v49;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37AC44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 + 7;
  v10 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v13 + 16))(v19 - v14 + 24, a1 + *(v10 + 576), AssociatedTypeWitness, v12);
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  swift_beginAccess();
  sub_1CEFCCBDC(v9, v19, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v20)
  {
    sub_1CEFCCC44(v19, &unk_1EC4C1BE0, &unk_1CF9FD400);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v16 = 0;
    v15 = 1;
    goto LABEL_6;
  }

  v15 = 0;
  v16 = v18;
LABEL_6:
  *a7 = v16;
  *(a7 + 8) = v15;
  return 0;
}

uint64_t sub_1CF37AE34()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA44310);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44350);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA44370);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xED00002054494D49);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF37AFCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v11 = *v7;
  if (a4)
  {
    v12 = 100;
  }

  else
  {
    v12 = a3;
  }

  v26 = a6;
  v27 = a7;
  v28 = v7;
  v29 = a2;
  v30 = a1;
  v31 = v12;
  v13 = (*(a7 + 24))(sub_1CF381B90, v25, a6, a7);
  if (!v8)
  {
    v14 = v13;
    v32 = 0;
    v33 = 1;
    MEMORY[0x1EEE9AC00](v13);
    v15 = *(v11 + 96);
    v19[1] = *(v11 + 80);
    v20 = a6;
    v21 = v15;
    v22 = v9;
    v23 = &v32;
    v24 = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = sub_1CF4C1FE4(sub_1CF3820A0, v19, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return v9;
}

uint64_t sub_1CF37B188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v93 = 0;
  v94 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA447D0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA44800);
  if (*(a2 + 16))
  {
    v10 = 20550;
  }

  else
  {
    v10 = 21318;
  }

  MEMORY[0x1D3868CC0](v10, 0xE200000000000000);
  0xE200000000000000, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA44820);
  v18 = MEMORY[0x1E69E6530];
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA446C0);
  v29 = sub_1CF9E7F98();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v39 = sub_1CF9E7F98();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v49 = sub_1CF9E7F98();
  v51 = v50;
  MEMORY[0x1D3868CC0](v49);
  v51, v52, v53, v54, v55, v56, v57, v58;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA446F0);
  v92[3] = v18;
  v92[0] = a3;
  v59 = sub_1CEFF8EA0(v92);
  v61 = v60;
  sub_1CEFCCC44(v92, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v61)
  {
    MEMORY[0x1D3868CC0](v59, v61);
    v61, v62, v63, v64, v65, v66, v67, v68;
    MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA44870);
    v69 = [a1 bindLongParameter_];
    v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v72 = v71;

    MEMORY[0x1D3868CC0](v70, v72);
    v72, v73, v74, v75, v76, v77, v78, v79;
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44740);
    v80 = [a1 bindLongParameter_];
    v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v83 = v82;

    MEMORY[0x1D3868CC0](v81, v83);
    v83, v84, v85, v86, v87, v88, v89, v90;
    return v93;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF37B514(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v11 = *v7;
  v25 = a6;
  v26 = a7;
  v27 = v7;
  v28 = a1;
  v29 = a2;
  v30 = a3 & 1;
  v31 = a4;
  v12 = v11;
  v13 = (*(a7 + 24))(sub_1CF381B34, v24, a6, a7);
  if (!v8)
  {
    v14 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v15 = *(v12 + 96);
    v19[1] = *(v12 + 80);
    v20 = a6;
    v21 = v15;
    v22 = v9;
    v23 = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = sub_1CF4C1FE4(sub_1CF381B50, v19, AssociatedTypeWitness);
  }

  return v9;
}

uint64_t sub_1CF37B670(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1CF9E7948();
  v73 = 0;
  v74 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA40300);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44760);
  v11 = qword_1CFA04890[a3];
  v72 = MEMORY[0x1E69E6530];
  v70 = v11;
  v12 = sub_1CEFF8EA0(&v70);
  v14 = v13;
  sub_1CEFCCC44(&v70, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v14)
  {
    MEMORY[0x1D3868CC0](v12, v14);
    v14, v15, v16, v17, v18, v19, v20, v21;
    MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA44780);
    v70 = 0;
    v22 = sub_1CF9E7F98();
    v24 = v23;
    MEMORY[0x1D3868CC0](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    MEMORY[0x1D3868CC0](2105354, 0xE300000000000000);
    v32 = 0xE000000000000000;
    if (a5)
    {
      v33 = 0;
    }

    else
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1CF9E7948();
      v71, v34, v35, v36, v37, v38, v39, v40;
      v70 = 0xD000000000000022;
      v71 = 0x80000001CFA447A0;
      v41 = sub_1CF1D5A14();
      v43 = v42;
      MEMORY[0x1D3868CC0](v41);
      v43, v44, v45, v46, v47, v48, v49, v50;
      v33 = v70;
      v32 = v71;
    }

    MEMORY[0x1D3868CC0](v33, v32);
    v32, v51, v52, v53, v54, v55, v56, v57;
    MEMORY[0x1D3868CC0](0x54494D494C20200ALL, 0xE900000000000020);
    v58 = [a1 bindLongParameter_];
    v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v61 = v60;

    MEMORY[0x1D3868CC0](v59, v61);
    v61, v62, v63, v64, v65, v66, v67, v68;
    return v73;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF37B928(_TtC18FileProviderDaemon8FSTester *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, _TtC18FileProviderDaemon8FSTester *a8)
{
  v10 = *v8;
  v11 = 100;
  if ((a5 & 1) == 0)
  {
    v11 = a4;
  }

  v50 = v11;
  v12 = v8[9];
  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v8;
  v15 = v10;
  v42 = result;
  v43 = a2;
  v44 = a6;
  v45 = v9;
  v18 = v8[10];

  result = v12(v19);
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1CEFF7124(v12, v18);

  v21 = v15[10];
  v20 = v15[11];
  v23 = v15[12];
  v22 = v15[13];
  v46 = v21;
  v47 = v20;
  v40 = v20;
  v41 = v22;
  v48 = v23;
  v49 = v22;
  type metadata accessor for SQLSnapshot(0, &v46);
  v24 = swift_dynamicCastClassUnconditional();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v32 = a7;
  v33 = a8;
  v34 = v13;
  v35 = a3;
  v36 = v42;
  v37 = v26;
  v38 = v43;
  v39 = v50;
  v27 = (*a8->tester)(sub_1CF381AE8, v25);
  if (v45)
  {
  }

  else
  {
    v28 = v27;
    v46 = 0;
    LOBYTE(v47) = 1;
    MEMORY[0x1EEE9AC00](v27);
    v32 = v21;
    v33 = v40;
    v34 = a7;
    v35 = v23;
    v36 = v41;
    v37 = a8;
    v38 = &v46;
    v39 = v29;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    a8 = sub_1CF4C1FE4(sub_1CF381B1C, &v31, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return a8;
}

uint64_t sub_1CF37BBC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v100 = 0;
  v101 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000006ALL, 0x80000001CFA44630);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA446A0);
  v10 = MEMORY[0x1E69E6530];
  v11 = sub_1CF9E7F98();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA446C0);
  v21 = sub_1CF9E7F98();
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B140);
  v31 = sub_1CF9E7F98();
  v33 = v32;
  MEMORY[0x1D3868CC0](v31);
  v33, v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA446F0);
  v99[3] = v10;
  v99[0] = a3;
  v41 = sub_1CEFF8EA0(v99);
  v43 = v42;
  sub_1CEFCCC44(v99, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v43)
  {
    MEMORY[0x1D3868CC0](v41, v43);
    v43, v44, v45, v46, v47, v48, v49, v50;
    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
    swift_getAssociatedTypeWitness();
    v51 = *(swift_getAssociatedConformanceWitness() + 8);
    v52 = *(v51 + 32);
    v53 = swift_checkMetadataState();
    v54 = v52(a1, v53, v51);
    v56 = v55;
    MEMORY[0x1D3868CC0](v54);
    v56, v57, v58, v59, v60, v61, v62, v63;
    MEMORY[0x1D3868CC0](0x28204E4920, 0xE500000000000000);
    v64 = sub_1CF4A9188(0x6574692E73626F6ALL, 0xEC00000064695F6DLL, 49, 0xE100000000000000);
    v66 = v65;
    MEMORY[0x1D3868CC0](v64);
    v66, v67, v68, v69, v70, v71, v72, v73;
    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA44720);
    v74 = [a1 bindLongParameter_];
    v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v77 = v76;

    MEMORY[0x1D3868CC0](v75, v77);
    v77, v78, v79, v80, v81, v82, v83, v84;
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44740);
    v85 = [a1 bindLongParameter_];
    v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v88 = v87;

    MEMORY[0x1D3868CC0](v86, v88);
    v88, v89, v90, v91, v92, v93, v94, v95;
    return v100;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37C004(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = [a2 integerAtIndex_];
  *(a1 + 8) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  return (*(v9 + 16))(a2, 0, AssociatedTypeWitness, v9);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF37C0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v22[0] = *(*v3 + 80);
  v22[1] = v8;
  type metadata accessor for TestingOperation(0, v22);
  v23 = sub_1CF9E6DA8();
  v19 = a2;
  v20 = a3;
  v21 = &v23;
  sub_1CF377B64(a1, sub_1CF37C1E4, 0, 0, 0, sub_1CF381AB8, v18, a2, a3);
  v16 = v23;
  if (v4)
  {
    v23, v9, v10, v11, v12, v13, v14, v15;
  }

  return v16;
}

uint64_t sub_1CF37C1E4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA44600);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF37C2E0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = a8;
  v22[1] = a6;
  v10 = *a1;
  v12 = *(*a1 + 552);
  v13 = *(*a1 + 560);
  v14 = *(*a1 + 568);
  v23 = *(*a1 + 544);
  v11 = v23;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v15 = type metadata accessor for TestingOperation(0, &v23);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  type metadata accessor for Ingestion.FetchItemMetadata(0, &v23);
  if (!swift_dynamicCastClass())
  {
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v23);
    if (!swift_dynamicCastClass())
    {
      MEMORY[0x1EEE9AC00](0);
      v21 = v22[0];
      v22[-4] = a7;
      v22[-3] = v21;
      v22[-2] = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF381ADC, &v22[-6], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 802);
    }
  }

  v18 = *(v10 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v17, &a1[v18], AssociatedTypeWitness);
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  type metadata accessor for DirectionalTestingOperation(0, &v23);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return 0;
}

uint64_t sub_1CF37C5CC(void *a1)
{
  v2 = *a1;
  *&v5[0] = 0;
  *(&v5[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v7 = v5[0];
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA445E0);
  v6 = a1;
  v3 = *(v2 + 560);
  v5[0] = *(v2 + 544);
  v5[1] = v3;
  type metadata accessor for ItemJob(0, v5);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  return v7;
}

void sub_1CF37C6E0(uint64_t a1, void *a2)
{
  v2 = a2[9];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a2[10];

  v6 = v2(v5);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_1CEFF7124(v2, v4);
  v9 = (*(*v7 + 152))(v8);

  if (v9 < 0)
  {
    sub_1CF9E7948();
    0xE000000000000000, v32, v33, v34, v35, v36, v37, v38;
    v83 = 0xD000000000000023;
    v84 = 0x80000001CFA445B0;
    v39 = sub_1CF9E7F98();
    v41 = v40;
    MEMORY[0x1D3868CC0](v39);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v30 = 41;
    v31 = 0xE100000000000000;
  }

  else
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA444F0);
    v10 = sub_1CF9E7F98();
    v12 = v11;
    MEMORY[0x1D3868CC0](v10);
    v12, v13, v14, v15, v16, v17, v18, v19;
    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA44510);
    v20 = sub_1CF9E7F98();
    v22 = v21;
    MEMORY[0x1D3868CC0](v20);
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = 0x290A30203D2029;
    v31 = 0xE700000000000000;
  }

  MEMORY[0x1D3868CC0](v30, v31);
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v49 = sub_1CF9E6C18();
  v51 = v50;
  MEMORY[0x1D3868CC0](v49);
  v51, v52, v53, v54, v55, v56, v57, v58;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v59, v60, v61, v62, v63, v64, v65;
  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xED000020444E4120);
  MEMORY[0x1D3868CC0](v83, v84);
  v84, v66, v67, v68, v69, v70, v71, v72;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA44580);
  v73 = sub_1CF9E7F98();
  v75 = v74;
  MEMORY[0x1D3868CC0](v73);
  v75, v76, v77, v78, v79, v80, v81, v82;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
}

uint64_t sub_1CF37CAF0(uint64_t a1, uint64_t a2, char a3)
{
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA44450);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v28[0] = 2;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA44490);
  v16 = qword_1CFA04890[a3];
  v28[3] = v5;
  v28[0] = v16;
  v17 = sub_1CEFF8EA0(v28);
  v19 = v18;
  sub_1CEFCCC44(v28, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v19)
  {
    MEMORY[0x1D3868CC0](v17, v19);
    v19, v20, v21, v22, v23, v24, v25, v26;
    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return v29;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t *sub_1CF37CCC0(id a1, uint64_t a2, char a3)
{
  v5 = &v24;
  if ((a3 & 1) != 0 || a2 > 100)
  {
LABEL_9:
    v13 = MEMORY[0x1EEE9AC00](a1);
    v20 = v14;
    v21 = v15;
    v22 = v3;
    v23 = v16;
    v17 = (*(v15 + 24))(sub_1CF381A78, v13);
    if (v4)
    {
      return v5;
    }

    v3 = v17;
    if (([v17 next] & 1) == 0)
    {

      return 0;
    }

    v5 = [v3 longAtIndex_];
  }

  else
  {
    v6 = MEMORY[0x1EEE9AC00](a1);
    v19[2] = v7;
    v19[3] = v8;
    v20 = v3;
    LOBYTE(v21) = v9;
    v22 = v10;
    v11 = (*(v8 + 24))(sub_1CF381A88, v19, v7, v8, v6);
    if (v4)
    {
      return v5;
    }

    v3 = v11;
    v5 = 0;
    while (1)
    {
      a1 = [v3 next];
      if (!a1)
      {
        break;
      }

      v12 = __OFADD__(v5, 1);
      v5 = (v5 + 1);
      if (v12)
      {
        __break(1u);
        goto LABEL_9;
      }
    }
  }

  return v5;
}

uint64_t sub_1CF37CE4C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v43 = 0;
  v44 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA444B0);
  v42[0] = 2;
  v8 = MEMORY[0x1E69E6530];
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x7420444E4120200ALL, 0xEE00203D20657079);
  v19 = qword_1CFA04890[a3];
  v42[3] = v8;
  v42[0] = v19;
  v20 = sub_1CEFF8EA0(v42);
  v22 = v21;
  sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v22)
  {
    MEMORY[0x1D3868CC0](v20, v22);
    v22, v23, v24, v25, v26, v27, v28, v29;
    MEMORY[0x1D3868CC0](0x54494D494C20200ALL, 0xE900000000000020);
    v30 = [a1 bindLongParameter_];
    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;

    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    return v43;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37D078(uint64_t a1, uint64_t a2, char a3)
{
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA444D0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA444B0);
  v28[0] = 2;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x7420444E4120200ALL, 0xEE00203D20657079);
  v16 = qword_1CFA04890[a3];
  v28[3] = v5;
  v28[0] = v16;
  v17 = sub_1CEFF8EA0(v28);
  v19 = v18;
  sub_1CEFCCC44(v28, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v19)
  {
    MEMORY[0x1D3868CC0](v17, v19);
    v19, v20, v21, v22, v23, v24, v25, v26;
    return v29;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF37D264(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v11 = a1;
  v7 = (*(a4 + 24))(a5, v10);
  if (!v6)
  {
    v8 = v7;
    v5 = [v7 next];
  }

  return v5 & 1;
}

uint64_t sub_1CF37D2E8(uint64_t a1, uint64_t a2, char a3)
{
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1CF9E7948();
  v40 = 0;
  v41 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA44450);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA44470);
  v38 = 40;
  v39 = 0xE100000000000000;
  v34 = &unk_1F4BED2B0;
  v35 = sub_1CF067ADC;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v5 = sub_1CF9E6C18();
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA44490);
  v22 = qword_1CFA04890[a3];
  v37 = MEMORY[0x1E69E6530];
  v34 = v22;
  v23 = sub_1CEFF8EA0(&v34);
  v25 = v24;
  sub_1CEFCCC44(&v34, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v25)
  {
    MEMORY[0x1D3868CC0](v23, v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return v40;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void *sub_1CF37D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v32 = *v3;
  v6 = v32[12];
  v7 = v32[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v31 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = v33;
  v14 = v34;
  v33 = a2;
  v15 = sub_1CF3782E8(v11, &unk_1F4BEE148, v13, a2, a3);
  if (v14)
  {
    (*(v9 + 8))(v11, AssociatedTypeWitness);
  }

  else
  {
    v16 = v15;
    v17 = (*(v9 + 8))(v11, AssociatedTypeWitness);
    v35[5] = v16;
    MEMORY[0x1EEE9AC00](v17);
    v19 = v32;
    v18 = v33;
    v20 = v32[11];
    *(&v31 - 6) = v7;
    *(&v31 - 5) = v20;
    *(&v31 - 4) = v18;
    *(&v31 - 3) = v6;
    v21 = v19[13];
    *(&v31 - 2) = v21;
    *(&v31 - 1) = a3;
    v35[0] = v7;
    v35[1] = v20;
    v35[2] = v6;
    v35[3] = v21;
    type metadata accessor for ItemJob(255, v35);
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v22 = sub_1CF9E7A08();
    v3 = sub_1CF9E6DF8();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  return v3;
}

uint64_t sub_1CF37D830(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  v9[0] = *(*a2 + 80);
  v9[1] = v3;
  v4 = type metadata accessor for PersistenceTrigger(0, v9);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  *(v9 - v6) = &unk_1F4BEE170;
  swift_storeEnumTagMultiPayload();
  (*(*a2 + 312))(v7);
  return (*(v5 + 8))(v7, v4);
}

double sub_1CF37D984(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF381E70();

  return result;
}

void sub_1CF37D9D4()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    *(v0 + 104) = 1;
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDEBB818;

    [v1 addWatcher_];
  }
}

id sub_1CF37DA54()
{
  if (*(v0 + 104) == 1)
  {
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBB818 removeWatcher_];
    *(v0 + 104) = 0;
  }

  return result;
}

void *sub_1CF37DAC0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;

  sub_1CEFF7124(*(v8 + 72), *(v8 + 80));
  *(v8 + 96), v16, v17, v18, v19, v20, v21, v22;
  return v8;
}

uint64_t sub_1CF37DB00(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF37DAC0(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF37DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 88))(a3);
  v9[2] = a3;
  v9[3] = a4;
  v10 = v4;
  v11 = a1;
  return (*(a4 + 32))(sub_1CF3817F4, v9, a3, a4);
}

uint64_t sub_1CF37DBF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44090);
  swift_getAssociatedTypeWitness();
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = *(v19 + 32);
  v21 = swift_checkMetadataState();
  v22 = v20(a1, v21, v19);
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v32 = qword_1CFA04890[sub_1CF03D760()];
  v44[3] = MEMORY[0x1E69E6530];
  v44[0] = v32;
  v33 = sub_1CEFF8EA0(v44);
  v35 = v34;
  sub_1CEFCCC44(v44, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v35)
  {
    MEMORY[0x1D3868CC0](v33, v35);
    v35, v36, v37, v38, v39, v40, v41, v42;
    return v45;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF37DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v64 = a3;
  v65 = a4;
  v63 = a2;
  v71 = a1;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = v7[11];
  v10 = v7[12];
  v11 = v7[13];
  v72 = v8;
  v73 = v9;
  v69 = v9;
  v74 = v10;
  v75 = v11;
  v67 = v11;
  v12 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(0, &v72);
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v58 - v16;
  v68 = v10;
  v70 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v58 - v18;
  v20 = *(v6 + 72);
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v19;
  v22 = *(v6 + 80);

  if (!v20(v23))
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_1CEFF7124(v20, v22);

  sub_1CF046AB4();

  v72 = v70;
  v73 = v69;
  v74 = v68;
  v75 = v67;
  v24 = type metadata accessor for PersistenceTrigger(0, &v72);
  v27 = sub_1CF046AF8(v21, v24, v25, v26);
  (*(v17 + 8))(v21, AssociatedTypeWitness);
  if (sub_1CF9E6DF8())
  {
    v35 = 0;
    v61 = v6;
    AssociatedTypeWitness = (v66 + 16);
    v36 = (v66 + 32);
    v60 = (v66 + 8);
    do
    {
      v37 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v37)
      {
        (*(v66 + 16))(v76, v27 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v35, v12);
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v55 = sub_1CF9E7998();
        if (v59 != 8)
        {
          __break(1u);
          goto LABEL_17;
        }

        v72 = v55;
        (*AssociatedTypeWitness)(v76, &v72, v12);
        swift_unknownObjectRelease();
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      v39 = (*v36)(v14, v76, v12);
      MEMORY[0x1EEE9AC00](v39);
      v40 = v69;
      *(&v58 - 8) = v70;
      *(&v58 - 7) = v40;
      v41 = v65;
      v42 = v67;
      v43 = v68;
      *(&v58 - 6) = v64;
      *(&v58 - 5) = v43;
      *(&v58 - 4) = v42;
      *(&v58 - 3) = v41;
      MEMORY[0x1EEE9AC00](v44);
      *(&v58 - 6) = v45;
      *(&v58 - 5) = v46;
      *(&v58 - 4) = v71;
      *(&v58 - 3) = v14;
      v56 = v61;
      v57 = v63;
      sub_1CF377B64(v63, sub_1CF381800, v47, 0, 0, sub_1CF381814, (&v58 - 8), v45, *(v46 + 8));
      if (v5)
      {
        v27, v48, v49, v50, v51, v52, v53, v54;
        (*v60)(v14, v12);
        return;
      }

      (*v60)(v14, v12);
      ++v35;
    }

    while (v38 != sub_1CF9E6DF8());
  }

  v27, v28, v29, v30, v31, v32, v33, v34;
}

uint64_t sub_1CF37E3D0(void *a1, char *a2, uint64_t a3, char *(*a4)@<X0>(char *result@<X0>, void *a2@<X8>), uint64_t a5, uint64_t a6, uint64_t (*a7)(int a1))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v137 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v137 = &v137 - v19;
  v138 = a3;
  v139 = a4;
  v140 = a6;
  v20 = a2;
  v22 = v21;
  v141 = a7;
  v23 = type metadata accessor for PersistenceTrigger.AffectedItemJobs(0, &v138);
  (*(v15 + 16))(v17, &v20[*(v23 + 56)], v14);
  if ((*(v22 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v138 = 0;
    v139 = 0xE000000000000000;
    sub_1CF9E7948();
    v145 = v138;
    v146 = v139;
    MEMORY[0x1D3868CC0](0x204E492065707974, 0xE800000000000000);
    v24 = *(v20 + 1);
    v143 = 40;
    v144 = 0xE100000000000000;
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    v138 = v24;
    v139 = sub_1CF086B60;
    v140 = 0;
    v141 = sub_1CF086BF0;
    v142 = v25;

    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v27 = sub_1CF9E6C18();
    v29 = v28;

    MEMORY[0x1D3868CC0](v27, v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v24, v37, v38, v39, v40, v41, v42, v43;
    v44 = v144;
    MEMORY[0x1D3868CC0](v143, v144);
    v44, v45, v46, v47, v48, v49, v50, v51;
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
    v52 = [v26 bindLongParameter_];
    v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;

    MEMORY[0x1D3868CC0](v53, v55);
    v55, v56, v57, v58, v59, v60, v61, v62;
    MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA44160);
    v63 = *v20;
    v141 = MEMORY[0x1E69E6530];
    v138 = v63;
    v64 = sub_1CEFF8EA0(&v138);
    v66 = v65;
    sub_1CEFCCC44(&v138, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v66)
    {
      MEMORY[0x1D3868CC0](v64, v66);
      v66, v67, v68, v69, v70, v71, v72, v73;
      MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
      return v145;
    }
  }

  else
  {
    (*(v22 + 32))(v137, v17, AssociatedTypeWitness);
    v138 = 0;
    v139 = 0xE000000000000000;
    sub_1CF9E7948();
    v145 = v138;
    v146 = v139;
    MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v76 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
    v78 = v77;
    MEMORY[0x1D3868CC0](v76);
    v78, v79, v80, v81, v82, v83, v84, v85;
    MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
    v86 = *(v20 + 1);
    v143 = 40;
    v144 = 0xE100000000000000;
    v87 = swift_allocObject();
    *(v87 + 16) = a1;
    v138 = v86;
    v139 = sub_1CF086B60;
    v140 = 0;
    v141 = sub_1CF24FA9C;
    v142 = v87;
    v88 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v89 = sub_1CF9E6C18();
    v91 = v90;

    MEMORY[0x1D3868CC0](v89, v91);
    v91, v92, v93, v94, v95, v96, v97, v98;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v86, v99, v100, v101, v102, v103, v104, v105;
    v106 = v144;
    MEMORY[0x1D3868CC0](v143, v144);
    v106, v107, v108, v109, v110, v111, v112, v113;
    MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA441C0);
    v114 = [v88 bindLongParameter_];
    v115 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v117 = v116;

    MEMORY[0x1D3868CC0](v115, v117);
    v117, v118, v119, v120, v121, v122, v123, v124;
    MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
    v125 = *v20;
    v141 = MEMORY[0x1E69E6530];
    v138 = v125;
    v126 = sub_1CEFF8EA0(&v138);
    v128 = v127;
    sub_1CEFCCC44(&v138, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v128)
    {
      MEMORY[0x1D3868CC0](v126, v128);
      v128, v129, v130, v131, v132, v133, v134, v135;
      MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
      v74 = v145;
      (*(v22 + 8))(v137, AssociatedTypeWitness);
      return v74;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF37EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(*a1 + 544);
  v16 = *(*a1 + 560);
  v17 = *(*a1 + 568);
  v55 = *(*a1 + 552);
  v56 = v15;
  v58 = v15;
  v59 = v55;
  v54 = v16;
  v60 = v16;
  v61 = v17;
  v18 = type metadata accessor for PersistenceTrigger(255, &v58);
  v57 = sub_1CF9E75D8();
  v20 = MEMORY[0x1EEE9AC00](v57);
  v22 = &v50 - v21;
  if (*(a1 + 112))
  {
LABEL_15:
    sub_1CF511A20("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 987);
  }

  v53 = v19;
  v23 = *(v18 - 8);
  (*(v23 + 16))(v22, a6, v18, v20);
  (*(v23 + 56))(v22, 0, 1, v18);
  v24 = a8;
  v25 = *(a8 + 72);
  if (!v25)
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = *a7;
  v51 = v24;
  v52 = v26;
  v27 = *(v24 + 80);

  v29 = v25(v28);
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  sub_1CEFF7124(v25, v27);
  v58 = v56;
  v59 = v55;
  v60 = v54;
  v61 = v17;
  type metadata accessor for JobRegistry(0, &v58);
  v55 = a10;
  v56 = a11;
  v31 = *(a11 + 8);
  v32 = v64;
  sub_1CF66DE54(a1, v22, v52, v30, a9, a10, v31);
  if (v32)
  {
    (*(v53 + 8))(v22, v57);
LABEL_6:

    return 0;
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  (*(v53 + 8))(v22, v57);

  v39 = *(a1 + 96);
  v40 = *(a1 + 104);
  *(a1 + 96) = v36;
  *(a1 + 104) = v37;
  v41 = *(a1 + 112);
  *(a1 + 112) = v38;
  sub_1CF03D7A8(v39, v40, v41);
  v42 = v55;
  (*(v31 + 88))(v55, v31);
  v60 = v42;
  v61 = v56;
  v43 = v51;
  v62 = v51;
  v63 = a1;
  (*(v56 + 32))(sub_1CF3817F4, &v58, v42);
  if (*(a1 + 112) == 1)
  {
    v44 = *(v43 + 72);
    if (v44)
    {
      v45 = *(v43 + 80);

      v47 = v44(v46);
      v48 = sub_1CEFF7124(v44, v45);
      if (v47)
      {
        (*(*v47 + 304))(v48);
        goto LABEL_6;
      }
    }
  }

  return 0;
}

void sub_1CF37EF5C(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 8);
  sub_1CF331038(a1, a2, v8);
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v9);
    v13 = a2;
    v14 = a3;
    v15 = v3;
    v16 = a1;
    v10 = sub_1CF377B64(a1, sub_1CF37F0CC, 0, 0, 0, sub_1CF381884, &v12, a2, v8);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v13 = a2;
    v14 = a3;
    v15 = v3;
    (*(a3 + 32))(sub_1CF3818B4, v11);
    if (sub_1CF37D558(a1, a2, v8))
    {
      sub_1CF37D9D4();
    }
  }
}

unint64_t sub_1CF37F0CC()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0xD000000000000013;
}

uint64_t sub_1CF37F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v56 = a6;
  v13 = sub_1CF9E5CF8();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7288();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = a8;
    v24 = v23;
    v58 = v23;
    *v22 = 136315138;
    v25 = sub_1CF044BA4();
    v50 = v13;
    v26 = a7;
    v28 = v27;

    v29 = sub_1CEFD0DF0(v25, v28, &v58);
    v30 = v28;
    a7 = v26;
    v13 = v50;
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v22 + 4) = v29;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "recovering running job %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v38 = v24;
    a8 = v51;
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  else
  {
  }

  (*(v53 + 8))(v17, v54);
  sub_1CF2F462C();
  v39 = swift_allocError();
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = -1;
  v42 = *(a1 + 96);
  v41 = *(a1 + 104);
  *(a1 + 96) = v39;
  *(a1 + 104) = 0;
  v43 = *(a1 + 112);
  *(a1 + 112) = 3;
  sub_1CF03D7A8(v42, v41, v43);
  v44 = v55;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v46 = v45;
  result = (*(v57 + 8))(v44, v13);
  v48 = v46 * 1000000000.0;
  if (COERCE__INT64(fabs(v46 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v48 < 9.22337204e18)
  {
    sub_1CF333918(a1, v48, a7, a8, a9);
    return 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF37F4E0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442B0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  return 0;
}

uint64_t sub_1CF37F624(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 72);
  if (v5)
  {
    v8 = *(v3 + 80);

    v10 = v5(v9);
    v11 = sub_1CEFF7124(v5, v8);
    if (v10)
    {
      v12 = MEMORY[0x1EEE9AC00](v11);
      v13 = a1;
      v14 = (*(a3 + 24))(sub_1CF381A3C, v12);
      if (v4)
      {
      }

      else
      {
        v15 = v14;
        v13 = [v14 next];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1CF37F75C(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v48 - v6;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1CF9E7948();
  v54 = v49;
  v55 = v50;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  sub_1CF046AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
  v11 = v10;
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEF203D2065707974);
  v49 = 20;
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA44430);
  v52 = 40;
  v53 = 0xE100000000000000;
  v49 = &unk_1F4BED2B0;
  v50 = sub_1CF067ADC;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v29 = sub_1CF9E6C18();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v39 = v53;
  MEMORY[0x1D3868CC0](v52, v53);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return v54;
}

uint64_t sub_1CF37FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a2;
  v10 = a3;
  v6 = (*(v10 + 24))(a4, v9, a2, v10);
  if (!v5)
  {
    v7 = v6;
    v4 = [v6 next];
  }

  return v4 & 1;
}

uint64_t sub_1CF37FB78(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA443A0);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA443C0);
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA443C0);
  v33 = sub_1CF9E7F98();
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA443E0);
  v43 = sub_1CF9E7F98();
  v45 = v44;
  MEMORY[0x1D3868CC0](v43);
  v45, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0x4C200A30203D2120, 0xEE00312054494D49);
  return 0;
}

uint64_t sub_1CF37FD9C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA450;
  v3 = v0[7];
  v4 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v4;
  *(v2 + 56) = type metadata accessor for SQLThrottler(0, v6);
  *(v2 + 64) = &off_1F4BFC1A8;
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_1CF37FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF380D98, v22, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF380DA4, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF380DB0, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF380DBC, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = v5(sub_1CF380DC8, v13);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v16 = v5(sub_1CF380DD4, v15);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v5(sub_1CF380DE0, v17);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v20 = v5(sub_1CF380DEC, v19);
    v21 = MEMORY[0x1EEE9AC00](v20);
    return v5(sub_1CF380DF8, v21);
  }

  return result;
}

uint64_t sub_1CF3801BC(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA43DC0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD000000000000193, 0x80000001CFA43DF0);
  v15 = sub_1CF9E7F98();
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA43F90);
  return 0;
}

uint64_t sub_1CF380380(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  strcpy(v13, "CREATE INDEX ");
  HIWORD(v13[1]) = -4864;
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x4E4F206D6574695FLL, 0xE900000000000020);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x64695F6D65746928, 0xE900000000000029);
  return v13[0];
}

unint64_t sub_1CF380460(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x4E4F20657079745FLL, 0xE900000000000020);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x64695F6D65746928, 0xEF2965707974202CLL);
  return 0xD000000000000014;
}

uint64_t sub_1CF380538(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  strcpy(v13, "CREATE INDEX ");
  HIWORD(v13[1]) = -4864;
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x4F2065746174735FLL, 0xEA0000000000204ELL);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA43DA0);
  return v13[0];
}

uint64_t sub_1CF380610(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA43D60);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA43D80);
  return 0;
}

uint64_t sub_1CF3806F0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA43D20);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA43D40);
  return 0;
}

uint64_t sub_1CF3807D0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA43CA0);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA43CD0);
  return 0;
}

uint64_t sub_1CF3808B0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA43C20);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA43C50);
  return 0;
}

uint64_t sub_1CF380990(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA43BC0);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA43BF0);
  return 0;
}

uint64_t sub_1CF380A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v11 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF380D80, v8, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    return v5(sub_1CF380D8C, v7);
  }

  return result;
}

uint64_t sub_1CF380B54(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA43B40);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA43B80);
  return 0;
}

uint64_t sub_1CF380C34(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA43A90);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA43AF0);
  return 0;
}

void sub_1CF380E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[9];
  if (v5)
  {
    v6 = v4;
    v7 = *v4;
    v47 = a2;
    v48 = a4;
    v49 = result;
    v50 = a3;
    v8 = v4[10];

    v10 = v5(v9);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1CEFF7124(v5, v8);
      v13 = (*(*v11 + 216))(v12);
      sub_1CF527D90(v13, v14, v15, v16);

      v46 = v56;
      v54 = v56;
      v55 = v57;
      type metadata accessor for JobLockRule(255, *(v7 + 80), *(v7 + 96), v17);
      swift_getWitnessTable();
      sub_1CF9E66B8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
      swift_getWitnessTable();
      sub_1CF9E7AC8();
      swift_getWitnessTable();
      sub_1CEFCCCEC(&qword_1EDEA3798, &unk_1EC4C1BB0, &unk_1CFA04800, MEMORY[0x1E69E6328]);
      sub_1CF9E7AA8();
      swift_getWitnessTable();
      v18 = sub_1CF9E7978();
      WitnessTable = swift_getWitnessTable();
      v52 = swift_getWitnessTable();
      v53 = sub_1CEFCCCEC(&qword_1EDEA3790, &unk_1EC4C1BB0, &unk_1CFA04800, MEMORY[0x1E69E6340]);
      v51 = swift_getWitnessTable();
      v19 = swift_getWitnessTable();
      v21 = sub_1CF054A5C(sub_1CF38120C, 0, v18, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

      v56, v22, v23, v24, v25, v26, v27, v28;
      v29 = sub_1CF8E44FC(v21);
      v21, v30, v31, v32, v33, v34, v35, v36;
      MEMORY[0x1EEE9AC00](v37);
      v45[2] = v50;
      v45[3] = v48;
      v45[4] = v29;
      v45[5] = v11;
      v45[6] = v47;
      v45[7] = v6;
      sub_1CF377B64(v49, sub_1CF381274, 0, 0, 0, sub_1CF38184C, v45, v50, v48);

      v29, v38, v39, v40, v41, v42, v43, v44;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CF38120C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1CF381290(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v99 = a5;
  v94 = a4;
  v95 = a3;
  v93 = a2;
  v12 = a1;
  v13 = a1 + 7;
  v14 = *a1;
  swift_beginAccess();
  sub_1CEFCCBDC(v13, &v103, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v15 = v106;
  v100 = v12;
  if (v106)
  {
    v98 = a6;
    v16 = v107;
    v17 = __swift_project_boxed_opaque_existential_1(&v103, v106);
    v18 = *(v15 - 8);
    v19 = MEMORY[0x1EEE9AC00](v17);
    v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    sub_1CEFCCC44(&v103, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v22 = (*(v16 + 16))(v15, v16);
    v24 = v23;
    (*(v18 + 8))(v21, v15);
    v12 = v100;
    LOBYTE(v21) = sub_1CEFDB148(v22, v24, v98);
    v24, v25, v26, v27, v28, v29, v30, v31;
    if (v21)
    {
      v97 = 0;
      v96 = 5;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1CEFCCC44(&v103, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  v96 = 0;
  v97 = 2;
LABEL_6:
  v98 = a9;
  v32 = (*(*a7 + 384))(v12);
  if (v32 < 0)
  {

    v55 = a8[3];
    v90 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v55);
    v101 = 0;
    v102 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
    v108 = v12;
    v56 = v14[68];
    v35 = v14[70];
    v36 = v14[71];
    v91 = v14[69];
    v92 = v56;
    v103 = v56;
    v104 = v91;
    v105 = v35;
    v106 = v36;
    type metadata accessor for ItemJob(0, &v103);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v57 = sub_1CF9E7988();
    v59 = v58;
    MEMORY[0x1D3868CC0](v57);
    v59, v60, v61, v62, v63, v64, v65, v66;
    v47 = v102;
    sub_1CF4FB2BC(v101, v102, v55, v90);
  }

  else
  {
    v33 = a8[3];
    v90 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v33);
    v101 = 0;
    v102 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
    v108 = v32;
    v34 = v14[68];
    v35 = v14[70];
    v36 = v14[71];
    v91 = v14[69];
    v92 = v34;
    v103 = v34;
    v104 = v91;
    v105 = v35;
    v106 = v36;
    type metadata accessor for Job(0, &v103);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v37 = sub_1CF9E7988();
    v39 = v38;
    MEMORY[0x1D3868CC0](v37);
    v39, v40, v41, v42, v43, v44, v45, v46;
    v47 = v102;
    sub_1CF4FB2BC(v101, v102, v33, v90);
  }

  v47, v48, v49, v50, v51, v52, v53, v54;
  if ((v99 & 1) == 0)
  {
    v67 = a8[3];
    v68 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v67);
    v101 = 0;
    v102 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
    v108 = sub_1CF089324(v100, v94, v93, v95);
    v103 = v92;
    v104 = v91;
    v105 = v35;
    v106 = v36;
    type metadata accessor for ItemJob(0, &v103);
    swift_getWitnessTable();
    sub_1CF9E7FE8();

    v69 = v102;
    sub_1CF4FB2BC(v101, v102, v67, v68);
    v69, v70, v71, v72, v73, v74, v75, v76;
  }

  v77 = v98;
  if (*(v98 + 104) == 1)
  {
    v78 = a8[3];
    v79 = a8[4];
    __swift_project_boxed_opaque_existential_1(a8, v78);
    v103 = 8224;
    v104 = 0xE200000000000000;
    MEMORY[0x1D3868CC0](*(v77 + 88), *(v77 + 96));
    MEMORY[0x1D3868CC0](0x6C75646568637320, 0xEA00000000006465);
    v80 = v104;
    sub_1CF4FB2BC(v103, v104, v78, v79);
    v80, v81, v82, v83, v84, v85, v86, v87;
  }

  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3818C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, uint64_t a7)
{
  v21 = 100;
  v14 = (*(a7 + 24))(sub_1CF381A28, v20, a4, a7);
  if (!v7)
  {
    v15 = v14;
    MEMORY[0x1EEE9AC00](v14);
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a6;
    v19[7] = a7;
    v19[8] = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    a5 = sub_1CF4C1FE4(sub_1CF382088, v19, AssociatedTypeWitness);
    sub_1CF9E6DF8();
  }

  return a5;
}

uint64_t sub_1CF381D44(uint64_t a1)
{
  **(v1 + 32) = a1;

  return 1;
}

void sub_1CF381E70()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);

    v4 = v1(v3);
    sub_1CEFF7124(v1, v2);
    if (v4)
    {

      sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF381F40, v4);
    }
  }
}

uint64_t getEnumTagSinglePayload for SQLItemJobID(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLItemJobID(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1CF381FF4(uint64_t a1)
{
  result = sub_1CF38201C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF38201C()
{
  result = qword_1EDEA8560;
  if (!qword_1EDEA8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8560);
  }

  return result;
}

uint64_t sub_1CF38219C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  v6[0] = *(a1 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for Job(0, v6);
  sub_1CF382924();
  return sub_1CF382100(v4, a2);
}

uint64_t sub_1CF382258(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *), uint64_t a4)
{
  v6 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v6;
  a3(255, v8);
  swift_getWitnessTable();
  return sub_1CF382100(a1, a2);
}

unint64_t sub_1CF382300(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v2;
  v3 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  return v5;
}

uint64_t sub_1CF3823CC(uint64_t a1)
{
  v2 = sub_1CF382DFC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF382408(uint64_t a1)
{
  v2 = sub_1CF382DFC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void *sub_1CF382454()
{
  result = sub_1CF4E0980(MEMORY[0x1E69E7CC0]);
  off_1EDEAE210 = result;
  return result;
}

void *sub_1CF38247C()
{
  result = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
  off_1EDEADD38 = result;
  return result;
}

uint64_t Optional<A>.init(sqliteValue:)@<X0>(sqlite3_value *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  if (sqlite3_value_type(a1) == 5)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  result = (*(a3 + 24))(a1, a2, a3);
  if (!v4)
  {
    (*(*(a2 - 8) + 56))(v12, 0, 1, a2);
    return (*(v10 + 32))(a4, v12, v9);
  }

  return result;
}

uint64_t sub_1CF382814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for SQLCodableAccessorWrapper(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

unint64_t sub_1CF3828D0()
{
  result = qword_1EC4BFAD8;
  if (!qword_1EC4BFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAD8);
  }

  return result;
}

unint64_t sub_1CF382924()
{
  result = qword_1EDEA8768;
  if (!qword_1EDEA8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8768);
  }

  return result;
}

uint64_t sub_1CF382978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF3829C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1CF382D40();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF382A4C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1CF382B88(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1CF382D40()
{
  result = qword_1EDEAB4E0;
  if (!qword_1EDEAB4E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDEAB4E0);
  }

  return result;
}

unint64_t sub_1CF382D98()
{
  result = qword_1EC4BFAE0;
  if (!qword_1EC4BFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAE0);
  }

  return result;
}

unint64_t sub_1CF382DFC()
{
  result = qword_1EC4BFAE8;
  if (!qword_1EC4BFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAE8);
  }

  return result;
}

void sub_1CF382E50(uint64_t a1)
{
  sub_1CF194384(319);
  if (v1 <= 0x3F)
  {
    sub_1CF9E5A58();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1CF382FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v124 = a7;
  v125 = a8;
  v130 = a6;
  v119 = a5;
  v9 = a4;
  v10 = a3;
  v129 = a2;
  v120 = *v8;
  v105 = sub_1CF9E63D8();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v126 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v102 - v16;
  v17 = sub_1CF9E6068();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v114 = (&v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v26 = type metadata accessor for Signpost(0);
  v112 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v102 - v29;
  v108 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v132 = &v102 - v32;
  v128 = fpfs_adopt_log();
  v123 = v9;
  v131 = v8;
  sub_1CF3C77C8(v9, &aBlock);
  v127 = v135;
  v117 = v136;
  v116 = v137;
  v115 = v138;
  v111 = v139;
  v109 = v140;
  v33 = v141;

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDEBBE40;
  (*(v18 + 56))(v25, 1, 1, v17);
  aBlock = 0x657220636E797361;
  v135 = 0xEB00000000206461;
  v121 = a1;
  v122 = v10;
  v35 = sub_1CF9E7988();
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  v107 = aBlock;
  v106 = v135;
  v110 = v25;
  sub_1CEFCCBDC(v25, v22, &unk_1EC4BED20, &unk_1CFA00700);
  v45 = *(v18 + 48);
  if (v45(v22, 1, v17) == 1)
  {
    v46 = v34;
    v47 = v114;
    sub_1CF9E6048();
    v48 = v47;
    if (v45(v22, 1, v17) != 1)
    {
      sub_1CEFCCC44(v22, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v48 = v114;
    (*(v18 + 32))(v114, v22, v17);
  }

  v49 = v132;
  (*(v18 + 16))(v132, v48, v17);
  *(v49 + *(v26 + 20)) = v34;
  v50 = v49 + *(v26 + 24);
  v51 = v111;
  v52 = v109;
  *v50 = v111;
  *(v50 + 8) = v52;
  *(v50 + 16) = v33;
  v53 = v34;
  v54 = v48;
  v55 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CF9FA450;
  *(v56 + 56) = MEMORY[0x1E69E6158];
  *(v56 + 64) = sub_1CEFD51C4();
  v57 = v106;
  *(v56 + 32) = v107;
  *(v56 + 40) = v57;
  sub_1CF9E6028(v55, &dword_1CEFC7000, v53, v51, v52, v33, v49, "%s", 2);
  v56, v58, v59, v60, v61, v62, v63, v64;
  (*(v18 + 8))(v54, v17);
  sub_1CEFCCC44(v110, &unk_1EC4BED20, &unk_1CFA00700);
  v65 = v113;
  sub_1CEFDA214(v49, v113, type metadata accessor for Signpost);
  v66 = *(v112 + 80);
  v67 = (v66 + 16) & ~v66;
  v68 = v108;
  v69 = (v108 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v112 = type metadata accessor for Signpost;
  sub_1CEFD9F8C(v65, v70 + v67, type metadata accessor for Signpost);
  v71 = (v70 + v69);
  v72 = v130;
  *v71 = v119;
  v71[1] = v72;
  v119 = v131[21];
  v73 = sub_1CF9E6448();
  v114 = *(v73 - 8);
  v114[7](v133, 1, 1, v73);
  v74 = v118;
  sub_1CEFDA214(v49, v118, type metadata accessor for Signpost);
  v75 = (v66 + 48) & ~v66;
  v113 = (v75 + v68 + 55) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + v68 + 71) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v120;
  *(v77 + 16) = *(v120 + 2632);
  *(v77 + 24) = *(v78 + 2640);
  *(v77 + 40) = *(v78 + 2656);
  sub_1CEFD9F8C(v74, v77 + v75, v112);
  v79 = v77 + ((v75 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
  v80 = v116;
  *v79 = v117;
  *(v79 + 8) = v80;
  *(v79 + 16) = v115;
  v81 = v77 + ((v75 + v68 + 31) & 0xFFFFFFFFFFFFFFF8);
  v82 = v129;
  *v81 = v121;
  *(v81 + 8) = v82;
  LOBYTE(v82) = v123;
  *(v81 + 16) = v122;
  v83 = v77 + v113;
  *v83 = v131;
  *(v83 + 8) = v82;
  v84 = (v77 + v76);
  v85 = v125;
  *v84 = v124;
  v84[1] = v85;
  v86 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v86 = sub_1CF484E94;
  v86[1] = v70;
  v87 = swift_allocObject();
  v87[2] = sub_1CF484E94;
  v87[3] = v70;
  v88 = v119;
  v87[4] = v119;
  v129 = v70;
  v89 = v114;
  swift_retain_n();

  v90 = fpfs_current_log();
  v91 = *(v88 + 16);
  v92 = v126;
  sub_1CEFCCBDC(v133, v126, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v89[6])(v92, 1, v73) == 1)
  {
    sub_1CEFCCC44(v92, &unk_1EC4BE370, qword_1CFA01B30);
    v93 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v94 = v103;
    sub_1CF9E6438();
    (v89[1])(v92, v73);
    v93 = sub_1CF9E63C8();
    (*(v104 + 8))(v94, v105);
  }

  v95 = swift_allocObject();
  v95[2] = v90;
  v95[3] = sub_1CF484F60;
  v95[4] = v77;
  v138 = sub_1CF2BA17C;
  v139 = v95;
  aBlock = MEMORY[0x1E69E9820];
  v135 = 1107296256;
  v136 = sub_1CEFCA444;
  v137 = &block_descriptor_1544;
  v96 = _Block_copy(&aBlock);
  v97 = v90;

  v138 = sub_1CF2BA180;
  v139 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v135 = 1107296256;
  v136 = sub_1CEFCA444;
  v137 = &block_descriptor_1547;
  v98 = _Block_copy(&aBlock);

  v99 = v127;
  fp_task_tracker_async_and_qos(v91, v127, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v93, v96, v98);
  _Block_release(v98);
  _Block_release(v96);

  sub_1CEFCCC44(v133, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5278(v132, type metadata accessor for Signpost);
  v100 = v128;
  v101 = fpfs_adopt_log();
}

BOOL sub_1CF383B74()
{
  if (*(v0 + 8) == 255)
  {
    return 0;
  }

  return *(v0 + 248) && (*(v0 + 192) & 0xF000000000000000) != 0xB000000000000000 && *(v0 + 344) == 0;
}

void sub_1CF383BB4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3)
{
  v4 = a2;
  sub_1CF066180(a1, a2, v57);
  v6 = *(a1 + 36);
  v72[0] = 1 << *(a1 + 32);
  v72[1] = v6;
  v73 = 0;
  v74 = 0;
  v75 = 1;
  sub_1CF0663E4(v57, v72, a1, v4, a3, sub_1CF7BA998);
  v8 = v7;
  sub_1CEFCCC44(v57, &qword_1EC4C06A8, &qword_1CFA05AB8);
  if (v8)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v8 & ~(v8 >> 63), 0);
    v52 = v76;
    sub_1CF066180(a1, v4, v58);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = v62;
      v11 = v61;
      v51 = a1;
      v49 = a1 + 64;
      v12 = v58;
      v13 = v60;
      v14 = v59;
      while (1)
      {
        v15 = *v12;
        v68[0] = *v12;
        v68[1] = v14;
        v69 = v13 & 1;
        v70 = v11;
        v71 = v10 & 1;
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 < 0 || v15 >= 1 << *(v51 + 32))
        {
          goto LABEL_18;
        }

        if (((*(v49 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }

        if (*(v51 + 36) != v14)
        {
          goto LABEL_20;
        }

        v54 = *(*(v51 + 56) + 16 * v15);
        v50 = v54;

        v17 = v4;

        v4(&v53, &v54);
        *(&v50 + 1), v18, v19, v20, v21, v22, v23, v24;
        v50, v25, v26, v27, v28, v29, v30, v31;
        if (v10)
        {
          goto LABEL_24;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        v32 = v53;
        if (v11 >= *v53->tree)
        {
          goto LABEL_22;
        }

        sub_1CF1A91AC(&v53[1] + 40 * v11, &v54);
        v32, v33, v34, v35, v36, v37, v38, v39;
        v40 = v55;
        v41 = v56;
        __swift_project_boxed_opaque_existential_1(&v54, v55);
        v42 = (*(v41 + 16))(v40, v41);
        v44 = v43;
        __swift_destroy_boxed_opaque_existential_1(&v54);
        v45 = v52;
        v76 = v52;
        v47 = *(v52 + 16);
        v46 = *(v52 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1CEFE95CC((v46 > 1), v47 + 1, 1);
          v45 = v76;
        }

        *(v45 + 16) = v47 + 1;
        v52 = v45;
        v48 = v45 + 16 * v47;
        *(v48 + 32) = v42;
        *(v48 + 40) = v44;
        v12 = v63;
        v4 = v17;
        sub_1CF477D58(v68, v51, v17, a3, &qword_1EC4C06B0, &qword_1CFA05AC0, sub_1CF4841FC, sub_1CF477F5C, v63);
        v14 = v64;
        v13 = v65;
        v11 = v66;
        ++v9;
        v10 = v67;
        if (v16 == v8)
        {
          sub_1CEFCCC44(v63, &qword_1EC4C06A8, &qword_1CFA05AB8);
          return;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1CF383F1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3)
{
  v4 = a2;
  sub_1CF066180(a1, a2, v57);
  v6 = *(a1 + 36);
  v72[0] = 1 << *(a1 + 32);
  v72[1] = v6;
  v73 = 0;
  v74 = 0;
  v75 = 1;
  sub_1CF0663E4(v57, v72, a1, v4, a3, sub_1CF7BA998);
  v8 = v7;
  sub_1CEFCCC44(v57, &qword_1EC4C0690, &qword_1CFA05AA0);
  if (v8)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v8 & ~(v8 >> 63), 0);
    v52 = v76;
    sub_1CF066180(a1, v4, v58);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = v62;
      v11 = v61;
      v51 = a1;
      v49 = a1 + 64;
      v12 = v58;
      v13 = v60;
      v14 = v59;
      while (1)
      {
        v15 = *v12;
        v68[0] = *v12;
        v68[1] = v14;
        v69 = v13 & 1;
        v70 = v11;
        v71 = v10 & 1;
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 < 0 || v15 >= 1 << *(v51 + 32))
        {
          goto LABEL_18;
        }

        if (((*(v49 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }

        if (*(v51 + 36) != v14)
        {
          goto LABEL_20;
        }

        v54 = *(*(v51 + 56) + 16 * v15);
        v50 = v54;

        v17 = v4;

        v4(&v53, &v54);
        *(&v50 + 1), v18, v19, v20, v21, v22, v23, v24;
        v50, v25, v26, v27, v28, v29, v30, v31;
        if (v10)
        {
          goto LABEL_24;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        v32 = v53;
        if (v11 >= *v53->tree)
        {
          goto LABEL_22;
        }

        sub_1CF1A91AC(&v53[1] + 40 * v11, &v54);
        v32, v33, v34, v35, v36, v37, v38, v39;
        v40 = v55;
        v41 = v56;
        __swift_project_boxed_opaque_existential_1(&v54, v55);
        v42 = (*(v41 + 16))(v40, v41);
        v44 = v43;
        __swift_destroy_boxed_opaque_existential_1(&v54);
        v45 = v52;
        v76 = v52;
        v47 = *(v52 + 16);
        v46 = *(v52 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1CEFE95CC((v46 > 1), v47 + 1, 1);
          v45 = v76;
        }

        *(v45 + 16) = v47 + 1;
        v52 = v45;
        v48 = v45 + 16 * v47;
        *(v48 + 32) = v42;
        *(v48 + 40) = v44;
        v12 = v63;
        v4 = v17;
        sub_1CF477D58(v68, v51, v17, a3, &qword_1EC4C0698, &qword_1CFA05AA8, sub_1CF48414C, sub_1CF477FFC, v63);
        v14 = v64;
        v13 = v65;
        v11 = v66;
        ++v9;
        v10 = v67;
        if (v16 == v8)
        {
          sub_1CEFCCC44(v63, &qword_1EC4C0690, &qword_1CFA05AA0);
          return;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }
}

BOOL sub_1CF384284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 4;
    v6 = sub_1CF9E6148();
  }

  while (v6 != sub_1CF9E6148());
  return v4 != 0;
}

BOOL sub_1CF3842EC(unsigned __int8 a1, uint64_t a2)
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

BOOL sub_1CF38431C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1CF9E5A58();
    ++v2;
    sub_1CF042F54(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  }

  while ((sub_1CF9E6868() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1CF384428(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v3 = a3;
  v6 = *a3->tree;

  if (v6)
  {
    v24 = v3;
    v14 = &v3[1]._anon_8[2];
    do
    {
      v15 = *(v14 - 10);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      sub_1CF48034C(v15, v16, *(v14 - 1));
      sub_1CF48034C(v15, v16, v17);
      sub_1CF48034C(a1, a2, BYTE1(a2) & 1);
      v19 = sub_1CF7BC9E4(v15, v16 | (v17 << 8), a1, a2 | (((a2 >> 8) & 1) << 8));
      sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
      sub_1CF1E53F8(v15, v16, v17);
      if (v19)
      {
        v20 = qword_1CFA05BE8[v18];
        v21 = qword_1CFA05BE8[SBYTE2(a2)];
        sub_1CF1E53F8(v15, v16, v17);
        if (v20 == v21)
        {
          v22 = 1;
          goto LABEL_9;
        }
      }

      else
      {
        sub_1CF1E53F8(v15, v16, v17);
      }

      v14 += 16;
      --v6;
    }

    while (v6);
    v22 = 0;
LABEL_9:
    v3 = v24;
  }

  else
  {
    v22 = 0;
  }

  v3, v7, v8, v9, v10, v11, v12, v13;
  return v22;
}

uint64_t sub_1CF384598(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v3 = a3;
  v6 = *a3->tree;

  if (v6)
  {
    v24 = v3;
    v14 = &v3[1]._anon_8[2];
    do
    {
      v15 = *(v14 - 10);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      sub_1CEFD0988(v15, v16, *(v14 - 1));
      sub_1CEFD0988(v15, v16, v17);
      sub_1CEFD0988(a1, a2, BYTE1(a2) & 1);
      v19 = sub_1CF7BC790(v15, v16 | (v17 << 8), a1, a2 | (((a2 >> 8) & 1) << 8));
      sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
      sub_1CEFD0994(v15, v16, v17);
      if (v19)
      {
        v20 = qword_1CFA05BE8[v18];
        v21 = qword_1CFA05BE8[SBYTE2(a2)];
        sub_1CEFD0994(v15, v16, v17);
        if (v20 == v21)
        {
          v22 = 1;
          goto LABEL_9;
        }
      }

      else
      {
        sub_1CEFD0994(v15, v16, v17);
      }

      v14 += 16;
      --v6;
    }

    while (v6);
    v22 = 0;
LABEL_9:
    v3 = v24;
  }

  else
  {
    v22 = 0;
  }

  v3, v7, v8, v9, v10, v11, v12, v13;
  return v22;
}

uint64_t sub_1CF384708(uint64_t a1, unint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v3 = a3;
  v48[3] = *MEMORY[0x1E69E9840];
  v6 = *a3->tree;

  if (!v6)
  {
    v38 = 0;
    goto LABEL_66;
  }

  if (a1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2 == 0xC000000000000000;
  }

  v15 = !v14;
  v16 = a2 >> 62;
  v17 = __OFSUB__(HIDWORD(a1), a1);
  v44 = v17;
  v45 = v15;
  v42 = a2;
  v43 = HIDWORD(a1) - a1;
  v46 = BYTE6(a2);
  v40 = v3;
  v41 = a1;
  anon_8 = v3[1]._anon_8;
  do
  {
    v20 = *(anon_8 - 1);
    v19 = *anon_8;
    v21 = *anon_8 >> 62;
    if (v21 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v15) & 1) == 0)
      {
LABEL_62:
        v38 = 1;
        goto LABEL_65;
      }

LABEL_36:
      v25 = 0;
      if (v16 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_36;
      }

      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v28)
      {
        goto LABEL_69;
      }

      if (v16 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_70;
      }

      v25 = v25;
      if (v16 <= 1)
      {
LABEL_33:
        v29 = v46;
        if (v16)
        {
          v29 = v43;
          if (v44)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v25 = BYTE6(v19);
      if (v16 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v16 != 2)
    {
      if (!v25)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v28 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v28)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

LABEL_39:
    if (v25 != v29)
    {
      goto LABEL_13;
    }

    if (v25 < 1)
    {
      goto LABEL_62;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        v48[0] = *(anon_8 - 1);
        LOWORD(v48[1]) = v19;
        BYTE2(v48[1]) = BYTE2(v19);
        BYTE3(v48[1]) = BYTE3(v19);
        BYTE4(v48[1]) = BYTE4(v19);
        BYTE5(v48[1]) = BYTE5(v19);
        sub_1CEFE42D4(v20, v19);
        sub_1CF363A5C(v48, a1, a2, &v47);
        sub_1CEFE4714(v20, v19);
        if (v47)
        {
          goto LABEL_62;
        }

LABEL_60:
        v15 = v45;
        goto LABEL_13;
      }

      if (v20 >> 32 < v20)
      {
        goto LABEL_71;
      }

      sub_1CEFE42D4(*(anon_8 - 1), *anon_8);
      v34 = sub_1CF9E5498();
      if (v34)
      {
        v36 = sub_1CF9E54C8();
        if (__OFSUB__(v20, v36))
        {
          goto LABEL_74;
        }

        v34 += v20 - v36;
      }

LABEL_59:
      sub_1CF9E54B8();
      v37 = v34;
      a1 = v41;
      a2 = v42;
      sub_1CF363A5C(v37, v41, v42, v48);
      sub_1CEFE4714(v20, v19);
      if (v48[0])
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (v21 == 2)
    {
      v32 = *(v20 + 16);
      v33 = *(v20 + 24);
      sub_1CEFE42D4(*(anon_8 - 1), *anon_8);
      v34 = sub_1CF9E5498();
      if (v34)
      {
        v35 = sub_1CF9E54C8();
        if (__OFSUB__(v32, v35))
        {
          goto LABEL_73;
        }

        v34 += v32 - v35;
      }

      if (__OFSUB__(v33, v32))
      {
        goto LABEL_72;
      }

      goto LABEL_59;
    }

    memset(v48, 0, 14);
    sub_1CEFE42D4(v20, v19);
    sub_1CF363A5C(v48, a1, a2, &v47);
    sub_1CEFE4714(v20, v19);
    if (v47)
    {
      goto LABEL_62;
    }

LABEL_13:
    anon_8 += 2;
    --v6;
  }

  while (v6);
  v38 = 0;
LABEL_65:
  v3 = v40;
LABEL_66:
  v3, v7, v8, v9, v10, v11, v12, v13;
  return v38;
}

uint64_t sub_1CF384AD0(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = (a5 + 56);
    do
    {
      if (*(v6 - 3) == a1 && *(v6 - 4) == a2)
      {
        if (*v6)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && *(v6 - 1) == a3)
        {
          return 1;
        }
      }

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  return 0;
}

unint64_t sub_1CF384B2C(uint64_t a1, char a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, _TtC18FileProviderDaemon8FSTester *a5)
{
  v7 = *a5->tree;

  if (!v7)
  {
LABEL_47:
    a5, v8, v9, v10, v11, v12, v13, v14;
    return 0;
  }

  v15 = a2 == 2;
  v16 = a1 == 1 && a2 == 2;
  v125 = v16;
  if (a1)
  {
    v15 = 0;
  }

  v123 = v15;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v17 = (a4 >> 56) & 0xF;
  }

  else
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v127 = v17;
  v126 = 4 * v17;
  tester = a5[1].tester;
  while (1)
  {
    v41 = *(tester - 3);
    v43 = *(tester - 1);
    v42 = *tester;
    if (*(tester - 16))
    {
      if (*(tester - 16) == 1)
      {
        if (a2 != 1 || v41 != a1)
        {
          goto LABEL_12;
        }
      }

      else if (v41)
      {
        if (!v125)
        {
          goto LABEL_12;
        }
      }

      else if (!v123)
      {
        goto LABEL_12;
      }
    }

    else if (a2 || v41 != a1)
    {
      goto LABEL_12;
    }

    if ((v42 & 0x2000000000000000) != 0)
    {
      v44 = (v42 >> 56) & 0xF;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44)
    {
      goto LABEL_36;
    }

    if (sub_1CF9E6B38() == 12565487 && v45 == 0xA300000000000000)
    {
      break;
    }

    v52 = v45;
    v53 = sub_1CF9E8048();
    v52, v54, v55, v56, v57, v58, v59, v60;
    if (v53)
    {
      goto LABEL_33;
    }

LABEL_36:

    v66 = v42;
    if (!v127)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (sub_1CF9E6B38() == 12565487 && v73 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v74, v75, v76, v77, v78, v79;
    }

    else
    {
      v80 = v73;
      v81 = sub_1CF9E8048();
      v80, v82, v83, v84, v85, v86, v87, v88;
      if ((v81 & 1) == 0)
      {
LABEL_44:

        v94 = a4;
        if (v43 == a3)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      }
    }

    result = sub_1CF9E69E8();
    if (v126 < result >> 14)
    {
      goto LABEL_51;
    }

    v89 = sub_1CF9E6B58();
    v91 = v90;
    v92 = MEMORY[0x1D3868C10](v89);
    v94 = v93;
    v91, v93, v95, v96, v97, v98, v99, v100;
    if (v43 == v92)
    {
LABEL_45:
      if (v66 == v94)
      {
        a5, v101, v102, v103, v104, v105, v106, v107;
        v42, v108, v109, v110, v111, v112, v113, v114;
        v94, v115, v116, v117, v118, v119, v120, v121;
        v122 = v66;
LABEL_49:
        v122, v8, v9, v10, v11, v12, v13, v14;
        return 1;
      }
    }

LABEL_11:
    v19 = sub_1CF9E8048();
    v42, v20, v21, v22, v23, v24, v25, v26;
    v94, v27, v28, v29, v30, v31, v32, v33;
    v66, v34, v35, v36, v37, v38, v39, v40;
    if (v19)
    {
      v122 = a5;
      goto LABEL_49;
    }

LABEL_12:
    tester += 4;
    if (!--v7)
    {
      goto LABEL_47;
    }
  }

  0xA300000000000000, 0xA300000000000000, v46, v47, v48, v49, v50, v51;
LABEL_33:
  result = sub_1CF9E69E8();
  if (4 * v44 >= result >> 14)
  {
    v62 = sub_1CF9E6B58();
    v64 = v63;
    v43 = MEMORY[0x1D3868C10](v62);
    v66 = v65;
    v64, v65, v67, v68, v69, v70, v71, v72;
    if (!v127)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1CF384EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1CF7BF2C0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CF7D2684();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
    v19 = *(v12 - 8);
    sub_1CEFE55D0(v11 + *(v19 + 72) * v8, a3, &qword_1EC4BE1C8, &qword_1CFA058F0);
    sub_1CF1D02FC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1CF3850A0()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
LABEL_16:
    MEMORY[0x1EEE9AC00](v1);
    v19 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v18, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = qword_1EDEA4990;
  swift_beginAccess();
  v3 = *&v0[v2];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*&v0[v2] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v11;
LABEL_9:
      v14 = *(*(v1 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        goto LABEL_15;
      }

      v9 &= v9 - 1;
      v11 = v13;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v16 = objc_sync_exit(v0);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v19 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v18, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v12;
}

void sub_1CF38525C()
{
  v1 = sub_1CF9E6448();
  v30 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E73D8();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v11 = qword_1EDEBB760;
  }

  v12 = *(v0 + v11);
  swift_beginAccess();
  if (*(v0 + 80) == 1 && (*(v0 + 96) & 1) == 0)
  {
    v13 = *(v0 + 88);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      __break(1u);
    }

    else
    {
      v15 = v0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v17 = v16;
      (*(v8 + 8))(v10, v7);
      v18 = v17 * 1000000000.0;
      if (COERCE__INT64(fabs(v17 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v18 > -9.22337204e18)
        {
          if (v18 < 9.22337204e18)
          {
            if (v14 <= v18)
            {
              return;
            }

            v28 = v14;
            v19 = v18;
            sub_1CF3857C8();
            v20 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
            v27[1] = *(v0 + qword_1EDEA4968);
            v27[2] = v20;
            v31 = MEMORY[0x1E69E7CC0];
            sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
            sub_1CF9E77B8();
            v21 = sub_1CF9E73E8();
            (*(v29 + 8))(v6, v4);
            *(v15 + qword_1EDEBB6C0) = v21;
            swift_unknownObjectRelease();
            ObjectType = swift_getObjectType();
            v23 = swift_allocObject();
            swift_weakInit();
            swift_unknownObjectRetain();

            sub_1CF042F9C();
            sub_1CEFD5828(0, v3, sub_1CF481034, v23, ObjectType);

            (*(v30 + 8))(v3, v1);

            v24 = v28 - v19;
            if (!__OFSUB__(v28, v19))
            {
              v25 = dispatch_time(0x8000000000000000, 0);
              v26 = dispatch_time(v25, v24);
              sub_1CF4FBB4C(v26);
              sub_1CF9E7428();
              swift_unknownObjectRelease();
              return;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

double sub_1CF385728(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CF3857C8();
    v4 = *(v3 + qword_1EDEBB6D0);
    if (v4)
    {
      v5 = *(v3 + qword_1EDEBB6D0 + 8);

      v4(1);
      sub_1CEFF7124(v4, v5);
    }
  }

  return result;
}

uint64_t sub_1CF3857C8()
{
  v1 = qword_1EDEBB6C0;
  if (*(v0 + qword_1EDEBB6C0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

void sub_1CF385874()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF386068(0);
  if (v7)
  {
    swift_beginAccess();
    return;
  }

  v8 = v6;
  v9 = sub_1CF3850A0();
  swift_beginAccess();
  v10 = v8 - v9;
  v11 = __OFSUB__(v8, v9);
  if ((*(v1 + 80) & 1) == 0)
  {
    if (!v11)
    {
      if (*(v1 + qword_1EDEBB6E0) >= v10)
      {
        return;
      }

      *(v1 + 80) = 1;
      *(v1 + 72) = 1;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v16 = v15;
      (*(v3 + 8))(v5, v2);
      v17 = v16 * 1000000000.0;
      if (COERCE__INT64(fabs(v16 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v17 > -9.22337204e18)
        {
          if (v17 < 9.22337204e18)
          {
            *(v1 + 88) = v17;
            *(v1 + 96) = 0;
            *(v1 + 72) = 1;
            sub_1CF7F20A0();
            sub_1CF38525C();
            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 < *(v1 + qword_1EDEBB6E8))
  {
    *(v1 + 80) = 0;
    *(v1 + 72) = 1;
    sub_1CF7F20A0();
    v12 = v1 + qword_1EDEBB6D0;
    v13 = *(v1 + qword_1EDEBB6D0);
    if (v13)
    {
      v14 = *(v12 + 8);

      v13(0);
      sub_1CEFF7124(v13, v14);
    }
  }
}

id sub_1CF385AD8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001CFA2E990;
  v4 = *(v1 + qword_1EDEA4970 + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v1 + qword_1EDEA4970);
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CFA2E9B0;
  v6 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 1;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000015;
  v7 = 5457241;
  if (a1)
  {
    v7 = 20302;
  }

  v8 = 0xE300000000000000;
  if (a1)
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 168) = v5;
  *(inited + 136) = 0x80000001CFA2EA30;
  *(inited + 144) = v7;
  *(inited + 152) = v8;

  v9 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v10 = sub_1CF9E6618();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = CacheDeleteCopyPurgeableSpaceWithInfo();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1CF9E6628();
  }

  else
  {
  }

  return 0;
}

id sub_1CF385DE4()
{
  v1 = v0;
  v2 = sub_1CF9E6498();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  if ((*(v0 + qword_1EDEBB708 + 8) & 1) == 0)
  {
    return *(v0 + qword_1EDEBB708);
  }

  v12 = qword_1EDEA4988;
  swift_beginAccess();
  (*(v3 + 16))(v11, v0 + v12, v2);
  sub_1CF9E6488();
  sub_1CF9E6478();
  v13 = sub_1CF9E6468();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  v15 = sub_1CF385AD8((v13 & 1) == 0);
  if (v16)
  {
    v14(v11, v2);
    return 0;
  }

  else
  {
    v18 = v15;
    sub_1CF9E6478();
    v14(v11, v2);
    swift_beginAccess();
    (*(v3 + 40))(v1 + v12, v8, v2);
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1CF386068(char a1)
{
  v2 = v1;
  v4 = sub_1CF9E6498();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = v2 + qword_1EDEBB708;
  if (*(v2 + qword_1EDEBB708 + 8) == 1)
  {
    v15 = qword_1EDEA4980;
    swift_beginAccess();
    v16 = *(v5 + 16);
    v26 = v15;
    v16(v13, v2 + v15, v4);
    sub_1CF9E6488();
    sub_1CF9E6478();
    v17 = sub_1CF9E6468();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    if (a1 & 1) == 0 || (v17)
    {
      v19 = [*(v2 + 120) freeSize];
      if (v19)
      {
        v20 = v19;
        v21 = (v2 + qword_1EDEBB740);
        if (*(v2 + qword_1EDEBB740 + 8) == 1)
        {
          if (*(v2 + 152))
          {
            v18(v13, v4);

LABEL_14:
            v14 = v2 + 128;
            return *v14;
          }

          v21 = (v2 + 144);
        }

        v22 = *v21;
        *(v2 + 128) = [v19 longLongValue];
        *(v2 + 136) = 0;
        if (v22 < [v20 longLongValue])
        {
          *(v2 + 128) = v22;
          *(v2 + 136) = 0;
        }

        sub_1CF9E6478();

        v18(v13, v4);
        v23 = v26;
        swift_beginAccess();
        (*(v5 + 40))(v2 + v23, v10, v4);
        swift_endAccess();
        goto LABEL_14;
      }
    }

    v18(v13, v4);
    goto LABEL_14;
  }

  return *v14;
}

uint64_t sub_1CF386354(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_sync_enter(v1);
  if (v8)
  {
LABEL_41:
    MEMORY[0x1EEE9AC00](v8);
    *(&v36 - 2) = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v36 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v9 = *(v1 + 13);
  v10 = v1[112];
  v11 = objc_sync_exit(v1);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11);
    v35 = &v36 - 4;
    *(&v36 - 2) = v1;
    goto LABEL_43;
  }

  v8 = sub_1CF3850A0();
  v12 = v8 + a1;
  if (__OFADD__(v8, a1))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = sub_1CF385DE4();
  if (v14)
  {
    return 0;
  }

  v15 = v8 - v12;
  if (__OFSUB__(v8, v12))
  {
    goto LABEL_32;
  }

  v16 = qword_1EDEBB6E8;
  if (v15 >= *&v1[qword_1EDEBB6E8] || v13 == 0)
  {
    return 0;
  }

  v18 = v8;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  v8 = (*(v5 + 8))(v7, v4);
  v21 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v22 = v21;
  if (v9 >= v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = v10;
  }

  if (v23)
  {
    goto LABEL_21;
  }

  v24 = __OFSUB__(v22, v9);
  v25 = v22 - v9;
  if (v24)
  {
    goto LABEL_36;
  }

  v26 = *&v1[qword_1EDEBB768];
  v24 = __OFSUB__(v26, v25);
  v27 = v26 - v25;
  if (v24)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v27 >= 1)
  {
    return 0;
  }

LABEL_21:
  v8 = objc_sync_enter(v1);
  if (v8)
  {
    goto LABEL_41;
  }

  sub_1CF385874();
  v30 = v29;
  v8 = objc_sync_exit(v2);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v35 = &v36 - 4;
    *(&v36 - 2) = v2;
LABEL_43:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v35, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

  v31 = *&v2[v16];
  v24 = __OFADD__(v31, a1);
  v32 = v31 + a1;
  if (v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!__OFSUB__(v32, v18))
  {
    return 1;
  }

  __break(1u);
LABEL_28:
  v33 = *&v2[qword_1EDEBB6E0];
  v24 = __OFADD__(v33, a1);
  v34 = v33 + a1;
  if (v24)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFSUB__(v34, v18))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  return 1;
}

void sub_1CF386704(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E5CF8();
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1CF386354(a2) & 1) == 0 || (*(a1 + qword_1EDEBB6F0))
  {
    a3(0);
    return;
  }

  v16 = v15;
  v50 = qword_1EDEBB6F0;
  v51 = a3;
  v52 = a4;
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "💾 calling CD to purge: %lld", v20, 0xCu);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v21 = *(a1 + qword_1EDEBB6F8);
  if (v21)
  {
    v22 = *(a1 + qword_1EDEBB6F8 + 8);

    v23 = v21(v16);
    v24 = *(a1 + qword_1EDEBB700);
    if (v24)
    {
      v25 = *(a1 + qword_1EDEBB700 + 8);

      v24(v16);
      sub_1CEFF7124(v24, v25);
    }

    v26 = v51;
    if ((v23 & 1) == 0)
    {
      goto LABEL_15;
    }

    v27 = objc_sync_enter(a1);
    if (v27)
    {
LABEL_20:
      MEMORY[0x1EEE9AC00](v27);
      *(&v49 - 2) = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v49 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v29 = v28;
    v27 = (*(v53 + 8))(v10, v8);
    v30 = v29 * 1000000000.0;
    if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v30 > -9.22337204e18)
    {
      if (v30 < 9.22337204e18)
      {
        v31 = v30;
        swift_beginAccess();
        *(a1 + 104) = v31;
        *(a1 + 112) = 0;
        *(a1 + 72) = 1;
        sub_1CF7F20A0();
        v32 = objc_sync_exit(a1);
        if (v32)
        {
          MEMORY[0x1EEE9AC00](v32);
          *(&v49 - 2) = a1;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v49 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

LABEL_15:
        sub_1CF385874();
        v26(v23 & 1);
        sub_1CEFF7124(v21, v22);
        return;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001CFA2E990;
  v34 = *(a1 + qword_1EDEA4970 + 8);
  v35 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(a1 + qword_1EDEA4970);
  *(inited + 56) = v34;
  *(inited + 72) = v35;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CFA2E9B0;
  v36 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 1;
  *(inited + 120) = v36;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = MEMORY[0x1E69E7360];
  *(inited + 136) = 0x80000001CFA2E9D0;
  *(inited + 144) = v16;

  v37 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  *(a1 + v50) = 1;
  v38 = sub_1CF9E6618();
  v37, v39, v40, v41, v42, v43, v44, v45;
  v46 = swift_allocObject();
  v47 = v51;
  v46[2] = a1;
  v46[3] = v47;
  v46[4] = v52;
  aBlock[4] = sub_1CF481028;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF02C158;
  aBlock[3] = &block_descriptor_850;
  v48 = _Block_copy(aBlock);

  CacheDeletePurgeSpaceWithInfo();
  _Block_release(v48);
}

uint64_t sub_1CF386D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v83 = a2;
  v4 = sub_1CF9E63A8();
  v82 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (aBlock[0] = 0, sub_1CF9E6628(), (v27 = aBlock[0]) == 0))
  {
    v51 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "💾 No results returned by CacheDeletePurgeSpaceWithInfo", v54, 2u);
      MEMORY[0x1D386CDC0](v54, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_11;
  }

  if (*(aBlock[0] + 16))
  {
    v28 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EA10);
    if (v20)
    {
      sub_1CEFD1104(*v27[1].tester + 32 * v28, aBlock);
      if (swift_dynamicCast())
      {
        v27, v20, v21, v22, v23, v24, v25, v26;
        v30 = v86;
        v29 = v87;
        v31 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v32 = sub_1CF9E6108();
        v33 = sub_1CF9E72A8();
        v29, v34, v35, v36, v37, v38, v39, v40;
        if (os_log_type_enabled(v32, v33))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315138;
          v43 = sub_1CEFD0DF0(v30, v29, aBlock);
          v29, v44, v45, v46, v47, v48, v49, v50;
          *(v41 + 4) = v43;
          _os_log_impl(&dword_1CEFC7000, v32, v33, "💾 CD failed while purging with: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1D386CDC0](v42, -1, -1);
          MEMORY[0x1D386CDC0](v41, -1, -1);
        }

        else
        {

          v29, v73, v74, v75, v76, v77, v78, v79;
        }

        (*(v11 + 8))(v16, v10);
LABEL_11:
        v55 = 0;
        goto LABEL_21;
      }
    }
  }

  if (!*v27->tree || (v56 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA2E9D0), (v20 & 1) == 0))
  {
    v27, v20, v21, v22, v23, v24, v25, v26;
    goto LABEL_17;
  }

  sub_1CEFD1104(*v27[1].tester + 32 * v56, aBlock);
  v27, v57, v58, v59, v60, v61, v62, v63;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v64 = 0;
    goto LABEL_18;
  }

  v64 = v86;
LABEL_18:
  v65 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E7298();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 134217984;
    *(v68 + 4) = v64;
    _os_log_impl(&dword_1CEFC7000, v66, v67, "💾 CD was able to purge: %lld bytes", v68, 0xCu);
    MEMORY[0x1D386CDC0](v68, -1, -1);
  }

  (*(v11 + 8))(v19, v10);
  v69 = v83;
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = v64;
  aBlock[4] = sub_1CF48103C;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_863;
  v71 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v86 = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v9, v6, v71);
  _Block_release(v71);
  (*(v82 + 8))(v6, v4);
  (*(v80 + 8))(v9, v81);

  v55 = 1;
LABEL_21:
  sub_1CF385874();
  return v85(v55);
}

uint64_t sub_1CF3874C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_sync_enter(a1);
  if (v8)
  {
LABEL_12:
    MEMORY[0x1EEE9AC00](v8);
    *(&v17 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v17 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v10 = v9;
  v8 = (*(v5 + 8))(v7, v4);
  v11 = v10 * 1000000000.0;
  if (COERCE__INT64(fabs(v10 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  swift_beginAccess();
  *(a1 + 104) = v12;
  *(a1 + 112) = 0;
  *(a1 + 72) = 1;
  sub_1CF7F20A0();
  result = objc_sync_exit(a1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v17 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v17 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  *(a1 + qword_1EDEBB6F0) = 0;
  v14 = a1 + qword_1EDEBB700;
  v15 = *(a1 + qword_1EDEBB700);
  if (v15)
  {
    v16 = *(v14 + 8);

    v15(a2);
    return sub_1CEFF7124(v15, v16);
  }

  return result;
}

uint64_t sub_1CF38773C()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 96))
  {
    return 0;
  }

  v5 = *(v0 + 88);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v7 = v6;
  result = (*(v2 + 8))(v4, v1);
  v9 = v7 * 1000000000.0;
  if (COERCE__INT64(fabs(v7 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  if (v5 >= v9)
  {
    return 0;
  }

  v11 = __OFSUB__(v10, v5);
  v12 = v10 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v13 = qword_1EDEBB760;
  }

  v14 = *(v0 + v13);
  v11 = __OFSUB__(v14, v12);
  v15 = v14 - v12;
  if (!v11)
  {
    return v15 >= 1;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CF3878F8()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF387A54(v0);
  v3 = v2;
  v4 = objc_sync_exit(v0);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v3;
}

void sub_1CF387A54(uint64_t a1)
{
  sub_1CF9E7948();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  swift_beginAccess();
  if (*(a1 + 80))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(a1 + 80))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  if ((*(a1 + 112) & 1) == 0)
  {
    sub_1CF9E7948();
    0xE000000000000000, v18, v19, v20, v21, v22, v23, v24;
    sub_1CF064F48();
    v25 = sub_1CF9E7F98();
    v27 = v26;
    MEMORY[0x1D3868CC0](v25);
    v27, v28, v29, v30, v31, v32, v33, v34;
    MEMORY[0x1D3868CC0](0x7275507473616C20, 0xEF3A657461446567);
    0xEF3A657461446567, v35, v36, v37, v38, v39, v40, v41;
  }

  if (*(a1 + 96))
  {
    goto LABEL_14;
  }

  v42 = qword_1EDEBB758;
  if (*(a1 + qword_1EDEBB758 + 8))
  {
    v42 = qword_1EDEBB760;
  }

  if (!__OFADD__(*(a1 + 88), *(a1 + v42)))
  {
    sub_1CF9E7948();
    0xE000000000000000, v43, v44, v45, v46, v47, v48, v49;
    sub_1CF064F48();
    v50 = sub_1CF9E7F98();
    v52 = v51;
    MEMORY[0x1D3868CC0](v50);
    v52, v53, v54, v55, v56, v57, v58, v59;
    MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA2E960);
    0x80000001CFA2E960, v60, v61, v62, v63, v64, v65, v66;
LABEL_14:
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    return;
  }

  __break(1u);
}

uint64_t (*sub_1CF387C98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CF387CEC;
}

uint64_t sub_1CF387CEC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 72) = 1;
  }

  return result;
}

uint64_t sub_1CF387D24(uint64_t a1)
{
  if (qword_1EDEAE1F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_1EDEAE1F8);
  swift_endAccess();
  if (qword_1EDEAB998 != -1)
  {
    swift_once();
  }

  v2 = sub_1CF042F54(&qword_1EDEAE400, type metadata accessor for Continuation, "XK\t");
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Continuation();
  v5 = v3(v4, v2);
  v7 = v6;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = off_1EDEAB9A0;
  off_1EDEAB9A0 = 0x8000000000000000;
  sub_1CF1D17EC(a1, v5, v7, isUniquelyReferenced_nonNull_native);
  v7, v9, v10, v11, v12, v13, v14, v15;
  off_1EDEAB9A0 = v17;
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(&dword_1EDEAE1F8);
  return swift_endAccess();
}

uint64_t sub_1CF387EDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF70, &qword_1CF9FB468);
  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF60, &qword_1CF9FB450);
  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF58, &qword_1CF9FB448);
  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0260, &unk_1CF9FCB00);
  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF48, &qword_1CF9FB428);
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0270, &unk_1CFA05770);
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0240, &qword_1CFA05750);
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0280, &unk_1CF9FB400);
  if (swift_dynamicCastMetatype())
  {
    return 18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF38, &qword_1CF9FB3F8);
  if (swift_dynamicCastMetatype())
  {
    return 19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
  if (swift_dynamicCastMetatype())
  {
    return 20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF30, &qword_1CF9FB3E8);
  if (swift_dynamicCastMetatype())
  {
    return 21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF28, &qword_1CF9FB3E0);
  if (swift_dynamicCastMetatype())
  {
    return 22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
  if (swift_dynamicCastMetatype())
  {
    return 23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02A0, &unk_1CF9FB3D0);
  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF10, &qword_1CF9FB3C0);
  if (swift_dynamicCastMetatype())
  {
    return 26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02B0, &unk_1CFA05780);
  if (swift_dynamicCastMetatype())
  {
    return 27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF08, &unk_1CF9FB3B0);
  if (swift_dynamicCastMetatype())
  {
    return 28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02C0, &unk_1CFA05790);
  if (swift_dynamicCastMetatype())
  {
    return 29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF00, &unk_1CF9FB3A0);
  if (swift_dynamicCastMetatype())
  {
    return 30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02D0, &unk_1CFA057A0);
  if (swift_dynamicCastMetatype())
  {
    return 31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
  if (swift_dynamicCastMetatype())
  {
    return 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF0, &qword_1CF9FB388);
  if (swift_dynamicCastMetatype())
  {
    return 33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02E0, &unk_1CFA057B0);
  if (swift_dynamicCastMetatype())
  {
    return 63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
  if (swift_dynamicCastMetatype())
  {
    return 64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02F0, &qword_1CF9FB380);
  if (swift_dynamicCastMetatype())
  {
    return 34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE8, &qword_1CF9FB378);
  if (swift_dynamicCastMetatype())
  {
    return 35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0300, &qword_1CF9FB370);
  if (swift_dynamicCastMetatype())
  {
    return 36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
  if (swift_dynamicCastMetatype())
  {
    return 37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0310, &unk_1CF9FB360);
  if (swift_dynamicCastMetatype())
  {
    return 38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDED8, &qword_1CF9FB358);
  if (swift_dynamicCastMetatype())
  {
    return 39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0320, &qword_1CF9FB350);
  if (swift_dynamicCastMetatype())
  {
    return 40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDED0, &qword_1CF9FB348);
  if (swift_dynamicCastMetatype())
  {
    return 41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0330, &qword_1CF9FB340);
  if (swift_dynamicCastMetatype())
  {
    return 42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEC8, &qword_1CF9FB338);
  if (swift_dynamicCastMetatype())
  {
    return 43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0340, &qword_1CF9FB330);
  if (swift_dynamicCastMetatype())
  {
    return 44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEC0, &qword_1CF9FB328);
  if (swift_dynamicCastMetatype())
  {
    return 45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
  if (swift_dynamicCastMetatype())
  {
    return 46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEB8, &qword_1CF9FB318);
  if (swift_dynamicCastMetatype())
  {
    return 47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0360, &qword_1CF9FB310);
  if (swift_dynamicCastMetatype())
  {
    return 48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEB0, &qword_1CF9FB308);
  if (swift_dynamicCastMetatype())
  {
    return 49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0370, &qword_1CF9FB300);
  if (swift_dynamicCastMetatype())
  {
    return 50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA8, &qword_1CF9FB2F8);
  if (swift_dynamicCastMetatype())
  {
    return 51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0380, &qword_1CF9FB2F0);
  if (swift_dynamicCastMetatype())
  {
    return 52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA0, &qword_1CF9FB2E8);
  if (swift_dynamicCastMetatype())
  {
    return 53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0390, &qword_1CF9FB2E0);
  if (swift_dynamicCastMetatype())
  {
    return 54;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE98, &qword_1CF9FB2D8);
  if (swift_dynamicCastMetatype())
  {
    return 55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03A0, &qword_1CF9FB2D0);
  if (swift_dynamicCastMetatype())
  {
    return 56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
  if (swift_dynamicCastMetatype())
  {
    return 57;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE90, &unk_1CF9FB2C0);
  if (swift_dynamicCastMetatype())
  {
    return 58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03B0, &unk_1CFA057C0);
  if (swift_dynamicCastMetatype())
  {
    return 59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE88, &unk_1CF9FB2B0);
  if (swift_dynamicCastMetatype())
  {
    return 62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03C0, &unk_1CFA057D0);
  if (swift_dynamicCastMetatype())
  {
    return 60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE80, &unk_1CF9FB2A0);
  if (swift_dynamicCastMetatype())
  {
    return 61;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03D0, &unk_1CFA057E0);
  if (swift_dynamicCastMetatype())
  {
    return 65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
  if (swift_dynamicCastMetatype())
  {
    return 66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE68, &qword_1CF9FB278);
  if (swift_dynamicCastMetatype())
  {
    return 67;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
  if (swift_dynamicCastMetatype())
  {
    return 68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE60, &qword_1CF9FB268);
  if (swift_dynamicCastMetatype())
  {
    return 69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03F0, &qword_1CF9FB260);
  if (swift_dynamicCastMetatype())
  {
    return 70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE58, &qword_1CF9FB258);
  if (swift_dynamicCastMetatype())
  {
    return 71;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0400, &qword_1CF9FB250);
  if (swift_dynamicCastMetatype())
  {
    return 72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE50, &qword_1CF9FB248);
  if (swift_dynamicCastMetatype())
  {
    return 73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0410, &qword_1CF9FB240);
  if (swift_dynamicCastMetatype())
  {
    return 74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCA0, &unk_1CFA053F0);
  if (swift_dynamicCastMetatype())
  {
    return 75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE48, &unk_1CF9FB230);
  if (swift_dynamicCastMetatype())
  {
    return 76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0420, &unk_1CFA057F0);
  if (swift_dynamicCastMetatype())
  {
    return 77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE40, &unk_1CF9FB220);
  if (swift_dynamicCastMetatype())
  {
    return 78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0430, &unk_1CFA05800);
  if (swift_dynamicCastMetatype())
  {
    return 79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE38, &unk_1CF9FB210);
  if (swift_dynamicCastMetatype())
  {
    return 80;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0440, &unk_1CFA05810);
  if (swift_dynamicCastMetatype())
  {
    return 81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE30, &unk_1CF9FB200);
  if (swift_dynamicCastMetatype())
  {
    return 82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE28, &qword_1CF9FB1F8);
  if (swift_dynamicCastMetatype())
  {
    return 83;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0450, &qword_1CF9FB1F0);
  if (swift_dynamicCastMetatype())
  {
    return 84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE20, &qword_1CF9FB1E8);
  if (swift_dynamicCastMetatype())
  {
    return 85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0460, &qword_1CF9FB1E0);
  if (swift_dynamicCastMetatype())
  {
    return 86;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE18, &qword_1CF9FB1D8);
  if (swift_dynamicCastMetatype())
  {
    return 87;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0470, &qword_1CF9FB1D0);
  if (swift_dynamicCastMetatype())
  {
    return 88;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}