uint64_t sub_23A7AEC64(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_23A7A8E74(a1, &qword_27DFA98B0, &qword_23A7FD8E8);
    sub_23A7B24E4(type metadata accessor for PreviewApplication.PreviewSessionMap, type metadata accessor for PreviewApplication.PreviewSessionMap, sub_23A7B3F94, v7, a2);
    v12 = sub_23A7EDFE4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_23A7A8E74(v7, &qword_27DFA98B0, &qword_23A7FD8E8);
  }

  else
  {
    sub_23A7B7C34(a1, v10, type metadata accessor for PreviewApplication.PreviewSessionMap);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_23A7B37CC(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_23A7EDFE4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_23A7AEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v14;
  *(v8 + 184) = v13;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  sub_23A7EEA34();
  *(v8 + 208) = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  *(v8 + 216) = v10;
  *(v8 + 224) = v9;

  return MEMORY[0x2822009F8](sub_23A7AEF64, v10, v9);
}

uint64_t sub_23A7AEF64()
{
  if (qword_27DFA8D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFAC690;
  v0[29] = qword_27DFAC690;

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_23A7AF048;
  v3 = v0[19];

  return sub_23A7AD3A0(v1, v3);
}

uint64_t sub_23A7AF048(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v4 = v3[27];
    v5 = v3[28];
    v6 = sub_23A7AF408;
  }

  else
  {

    v4 = v3[27];
    v5 = v3[28];
    v6 = sub_23A7AF164;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23A7AF164()
{
  v1 = v0[31];
  type metadata accessor for PreviewApplication.RestorationItem(0);
  v2 = sub_23A7EE994();
  v0[33] = v2;
  v3 = sub_23A7EE814();
  v0[34] = v3;
  v4 = sub_23A7EDFB4();
  v0[35] = v4;
  v0[2] = v0;
  v0[3] = sub_23A7AF2D8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_40;
  v0[14] = v5;
  [v1 restoreWithItems:v2 targetAppBundleIdentifier:v3 sessionUUID:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7AF2D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_23A7AF5CC;
  }

  else
  {
    v5 = sub_23A7B82FC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23A7AF408()
{

  v1 = v0[32];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA97D8);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Error restoring scene: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];

  v11(MEMORY[0x277D84F90]);
  sub_23A7B4F80(v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_23A7AF5CC()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];

  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[36];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v5 = sub_23A7EE3B4();
  __swift_project_value_buffer(v5, qword_27DFA97D8);
  v6 = v4;
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v7, v8, "Error restoring scene: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  v13 = v0[25];
  v14 = v0[23];

  v14(MEMORY[0x277D84F90]);
  sub_23A7B4F80(v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_23A7AF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23A7B80AC(a3, v25 - v10);
  v12 = sub_23A7EEA64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23A7A8E74(v11, &qword_27DFA8FD0, &qword_23A7FDBC0);
  }

  else
  {
    sub_23A7EEA54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23A7EE9E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23A7EE8C4() + 32;
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

      sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

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

  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
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

void sub_23A7AFAF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v100 = a5;
  v101 = a8;
  v116 = a7;
  v110 = a6;
  v107 = a10;
  v108 = a2;
  v102 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA97F0, &qword_23A7FD878);
  MEMORY[0x28223BE20](v17 - 8);
  v104 = &v91 - v18;
  v103 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v105 = *(v103 - 8);
  v19 = MEMORY[0x28223BE20](v103);
  v113 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v91 - v21;
  v23 = sub_23A7EDFE4();
  v114 = *(v23 - 8);
  v115 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v111 = v25;
  v112 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v109 = &v91 - v26;
  v27 = [objc_opt_self() mainBundle];
  v28 = [v27 bundleIdentifier];

  if (v28)
  {
    v29 = sub_23A7EE844();
    v31 = v30;

    if (v29 == 0xD000000000000015 && 0x800000023A80BA90 == v31)
    {

      v32 = v22;
LABEL_6:
      v98 = a4;
      v99 = v16;
      if (qword_27DFA8D38 != -1)
      {
        swift_once();
      }

      v34 = sub_23A7EE3B4();
      __swift_project_value_buffer(v34, qword_27DFA97D8);

      v35 = v100;

      v36 = sub_23A7EE394();
      v37 = sub_23A7EEB44();

      v38 = os_log_type_enabled(v36, v37);
      v97 = a11;
      v96 = a1;
      v95 = a3;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v117[0] = v40;
        *v39 = 136315650;
        v41 = type metadata accessor for PreviewApplication.RestorationItem(0);
        v42 = MEMORY[0x23EE8BE10](a1, v41);
        v44 = sub_23A797A74(v42, v43, v117);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_23A797A74(v108, a3, v117);
        *(v39 + 22) = 2080;
        *(v39 + 24) = sub_23A797A74(v98, v35, v117);
        _os_log_impl(&dword_23A714000, v36, v37, "Restoring scene with items: %s target bundle ID: %s sceneID: %s", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23EE8D760](v40, -1, -1);
        v45 = v39;
        v32 = v22;
        MEMORY[0x23EE8D760](v45, -1, -1);
      }

      v46 = v114;
      v47 = v109;
      sub_23A7EDFD4();
      v48 = *(v46 + 16);
      v49 = v115;
      v48(v32, v47, v115);
      v50 = v112;
      v48(v112, v47, v49);
      v51 = *(v46 + 80);
      v92 = ~v51;
      v52 = (v51 + 32) & ~v51;
      v93 = v51;
      v53 = swift_allocObject();
      v54 = v46;
      v55 = v53;
      v56 = v116;
      *(v53 + 16) = v110;
      *(v53 + 24) = v56;
      v57 = *(v54 + 32);
      v101 = v54 + 32;
      v94 = v57;
      v57((v53 + v52), v50, v49);
      v58 = v103;
      v59 = (v32 + *(v103 + 20));
      *v59 = v98;
      v59[1] = v35;
      v60 = (v32 + *(v58 + 24));
      *v60 = v102;
      v60[1] = v55;
      v61 = qword_27DFA8D58;

      if (v61 != -1)
      {
        swift_once();
      }

      v48(v50, v47, v49);
      v62 = v104;
      sub_23A7B802C(v32, v104, type metadata accessor for PreviewApplication.RestorationSession);
      v63 = v105 + 56;
      (*(v105 + 56))(v62, 0, 1, v58);
      swift_beginAccess();
      sub_23A7AEA18(v62, v50);
      swift_endAccess();
      type metadata accessor for QLHostRemotePreviewModel(0);
      v64 = swift_allocObject();
      v65 = v32;
      v91 = v32;
      v66 = v64;
      sub_23A7EE0B4();
      v67 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
      v68 = sub_23A7EE154();
      (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
      v69 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
      v70 = sub_23A7EE124();
      (*(*(v70 - 8) + 56))(v66 + v69, 1, 1, v70);
      v71 = sub_23A7EEA64();
      (*(*(v71 - 8) + 56))(v99, 1, 1, v71);
      sub_23A7B802C(v65, v113, type metadata accessor for PreviewApplication.RestorationSession);
      v48(v50, v47, v49);
      sub_23A7EEA34();
      v72 = v96;

      v73 = v95;

      v74 = sub_23A7EEA24();
      v75 = (*(v63 + 24) + 40) & ~*(v63 + 24);
      v76 = (v106 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
      v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
      v79 = (v93 + v78 + 16) & v92;
      v80 = swift_allocObject();
      v81 = MEMORY[0x277D85700];
      v80[2] = v74;
      v80[3] = v81;
      v80[4] = v66;
      sub_23A7B7C34(v113, v80 + v75, type metadata accessor for PreviewApplication.RestorationSession);
      *(v80 + v76) = v72;
      v82 = (v80 + v77);
      *v82 = v108;
      v82[1] = v73;
      v83 = (v80 + v78);
      v84 = v116;
      *v83 = v110;
      v83[1] = v84;
      v85 = v80 + v79;
      v86 = v115;
      v94(v85, v112, v115);
      sub_23A7AF7B0(0, 0, v99, v97, v80);

      sub_23A7B7DC4(v91, type metadata accessor for PreviewApplication.RestorationSession);
      (*(v114 + 8))(v109, v86);
      return;
    }

    v33 = sub_23A7EEE04();

    v32 = v22;
    if (v33)
    {
      goto LABEL_6;
    }
  }

  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v87 = sub_23A7EE3B4();
  __swift_project_value_buffer(v87, qword_27DFA97D8);
  v116 = sub_23A7EE394();
  v88 = sub_23A7EEB34();
  if (os_log_type_enabled(v116, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_23A714000, v116, v88, "This API is only allowed to be used by the system preview application", v89, 2u);
    MEMORY[0x23EE8D760](v89, -1, -1);
  }

  v90 = v116;
}

uint64_t sub_23A7B0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v14;
  *(v8 + 184) = v13;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  sub_23A7EEA34();
  *(v8 + 208) = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  *(v8 + 216) = v10;
  *(v8 + 224) = v9;

  return MEMORY[0x2822009F8](sub_23A7B05E4, v10, v9);
}

uint64_t sub_23A7B05E4()
{
  if (qword_27DFA8D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFAC690;
  v0[29] = qword_27DFAC690;

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_23A7B06C8;
  v3 = v0[19];

  return sub_23A7AD3A0(v1, v3);
}

uint64_t sub_23A7B06C8(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v4 = v3[27];
    v5 = v3[28];
    v6 = sub_23A7B0B10;
  }

  else
  {

    v4 = v3[27];
    v5 = v3[28];
    v6 = sub_23A7B07E4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23A7B07E4()
{
  v1 = v0[31];
  type metadata accessor for PreviewApplication.RestorationItem(0);
  v2 = sub_23A7EE994();
  v0[33] = v2;
  v3 = sub_23A7EE814();
  v0[34] = v3;
  v4 = sub_23A7EDFB4();
  v0[35] = v4;
  v0[2] = v0;
  v0[3] = sub_23A7B0958;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_5;
  v0[14] = v5;
  [v1 restoreSandboxAccessWithItems:v2 targetAppBundleIdentifier:v3 sessionUUID:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7B0958()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_23A7B0CE8;
  }

  else
  {
    v5 = sub_23A7B0A88;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23A7B0A88()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A7B0B10()
{

  v1 = v0[32];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA97D8);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Error restoring scene: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[23];

  v12 = v1;
  v11(MEMORY[0x277D84F90], v1);

  sub_23A7B4F80(v10);
  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7B0CE8()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];

  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[36];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v5 = sub_23A7EE3B4();
  __swift_project_value_buffer(v5, qword_27DFA97D8);
  v6 = v4;
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v7, v8, "Error restoring scene: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  v13 = v0[25];
  v14 = v0[23];

  v15 = v4;
  v14(MEMORY[0x277D84F90], v4);

  sub_23A7B4F80(v13);
  v16 = v0[1];

  return v16();
}

uint64_t sub_23A7B0EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_23A7EEA34();
  v5[11] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7B8300, v7, v6);
}

uint64_t sub_23A7B1090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_23A7EEA34();
  v5[11] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7B1128, v7, v6);
}

void sub_23A7B1128()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  v3 = sub_23A7A3798(0, &qword_27DFA9890, 0x277D75940);
  sub_23A7B7D5C();
  v4 = sub_23A7EEAF4();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23A7EEC74();
    sub_23A7EEB04();
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 56);

    v6 = v10;
    v7 = 0;
  }

  v32 = v6;
  v13 = (v6 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v20 = v13;
        v21 = v4;
        v22 = v5;
        v23 = v3;
        v33 = v0[9];
        v34 = v0[10];
        v35 = v18;
        v24 = [v18 session];
        v25 = [v24 persistentIdentifier];

        v26 = sub_23A7EE844();
        v28 = v27;

        if (v26 == v33 && v28 == v34)
        {
          break;
        }

        v30 = sub_23A7EEE04();

        v5 = v22;
        v4 = v21;
        if (v30)
        {
          goto LABEL_25;
        }

        v7 = v16;
        v8 = v17;
        v3 = v23;
        v13 = v20;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = sub_23A7EEC94();
        if (v19)
        {
          v0[8] = v19;
          swift_dynamicCast();
          v18 = v0[7];
          v16 = v7;
          v17 = v8;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v4 = v21;
LABEL_25:
      sub_23A7A69C8(v4);

      objc_opt_self();
    }

    else
    {
LABEL_23:
      sub_23A7A69C8(v4);
    }

    v31 = v0[1];

    v31();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A7B1490(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  a4(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23A7B1AEC(uint64_t a1)
{
  v3 = *(sub_23A7EDFE4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  (*(v1 + 16))(a1);

  return sub_23A7B4F80(v1 + v4);
}

uint64_t sub_23A7B1B74(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewApplication.RestorationSession(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_23A7EDFE4();
  v14 = v1[3];
  v15 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = v1 + v6;
  v10 = *(v1 + v6);
  v11 = *(v9 + 1);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23A7A3828;

  return sub_23A7AEEB0(a1, v15, v14, v7, v1 + v4, v8, v10, v11);
}

uint64_t sub_23A7B1D24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A7B1E1C;

  return v6(a1);
}

uint64_t sub_23A7B1E1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = sub_23A7EDFE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A7B1FD8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_23A7EDFE4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  (*(v2 + 16))(a1, a2);

  return sub_23A7B4F80(v2 + v6);
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for PreviewApplication.RestorationSession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v12 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = *(v6 + 8);
  v8(v0 + v3, v5);

  if (*(v0 + v3 + v1[8]))
  {
  }

  v9 = v2 | v7;
  v10 = (v7 + ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7;

  v8(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v9 | 7);
}

uint64_t sub_23A7B2238(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewApplication.RestorationSession(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_23A7EDFE4();
  v14 = v1[3];
  v15 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = v1 + v6;
  v10 = *(v1 + v6);
  v11 = *(v9 + 1);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23A7A3828;

  return sub_23A7B0530(a1, v15, v14, v7, v1 + v4, v8, v10, v11);
}

uint64_t sub_23A7B2414(uint64_t a1)
{
  result = sub_23A7EEAB4();
  if (v2 <= 0x3F)
  {
    result = sub_23A7EEAA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A7B24E4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>, uint64_t a5@<X0>)
{
  v9 = v5;
  v11 = sub_23A7C0FD0(a5);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_23A7EDFE4();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = a1(0);
    v27 = *(v20 - 8);
    sub_23A7B7C34(v19 + *(v27 + 72) * v18, a4, a2);
    sub_23A7B3290(v18, v15, a2);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a4;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a1(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a4;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

void sub_23A7B2698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A7EDFE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98E0, &qword_23A7FD940);
  v44 = v4;
  v11 = sub_23A7EEDA4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_23A7B7C34(v27 + v28 * v24, v48, type metadata accessor for PreviewApplication.RestorationSession);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_23A7B802C(v29 + v28 * v24, v48, type metadata accessor for PreviewApplication.RestorationSession);
      }

      sub_23A7B7EE4(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_23A7EE7E4();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_23A7B7C34(v48, *(v12 + 56) + v28 * v20, type metadata accessor for PreviewApplication.RestorationSession);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_23A7B2B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A7EDFE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B8, &qword_23A7FD900);
  v44 = v4;
  v11 = sub_23A7EEDA4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_23A7B7C34(v27 + v28 * v24, v48, type metadata accessor for PreviewApplication.PreviewSessionMap);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_23A7B802C(v29 + v28 * v24, v48, type metadata accessor for PreviewApplication.PreviewSessionMap);
      }

      sub_23A7B7EE4(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_23A7EE7E4();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_23A7B7C34(v48, *(v12 + 56) + v28 * v20, type metadata accessor for PreviewApplication.PreviewSessionMap);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_23A7B2FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98C8, &qword_23A7FD918);
  v34 = v4;
  v6 = sub_23A7EEDA4();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_23A7A8AB8(v24, v35);
      }

      else
      {
        sub_23A79842C(v24, v35);
      }

      sub_23A7EEE84();
      sub_23A7EE8E4();
      v25 = sub_23A7EEEA4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_23A7A8AB8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
}

unint64_t sub_23A7B3290(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_23A7EEC64();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_23A7B7EE4(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_23A7EE7E4();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23A7B35E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A7C0FD0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for PreviewApplication.RestorationSession(0);
      return sub_23A7B828C(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for PreviewApplication.RestorationSession);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23A7B3C68();
    goto LABEL_7;
  }

  sub_23A7B2698(v17, a3 & 1);
  v24 = sub_23A7C0FD0(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_23A7EEE34();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_23A7B3B08(v14, v11, a1, v20, type metadata accessor for PreviewApplication.RestorationSession, type metadata accessor for PreviewApplication.RestorationSession);
}

uint64_t sub_23A7B37CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A7C0FD0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
      return sub_23A7B828C(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for PreviewApplication.PreviewSessionMap);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_23A7B3F94();
    goto LABEL_7;
  }

  sub_23A7B2B38(v17, a3 & 1);
  v24 = sub_23A7C0FD0(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_23A7EEE34();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_23A7B3B08(v14, v11, a1, v20, type metadata accessor for PreviewApplication.PreviewSessionMap, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

_OWORD *sub_23A7B39B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A7C1068(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23A7B42C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23A7B2FD8(v16, a4 & 1);
    v11 = sub_23A7C1068(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23A7EEE34();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23A7A8AB8(a1, v22);
  }

  else
  {
    sub_23A7B3BFC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_23A7B3B08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_23A7EDFE4();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_23A7B7C34(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_23A7B3BFC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23A7A8AB8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_23A7B3C68()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23A7EDFE4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98E0, &qword_23A7FD940);
  v5 = *v0;
  v6 = sub_23A7EED94();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_23A7B802C(*(v5 + 56) + v26, v35, type metadata accessor for PreviewApplication.RestorationSession);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_23A7B7C34(v25, *(v27 + 56) + v26, type metadata accessor for PreviewApplication.RestorationSession);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_23A7B3F94()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23A7EDFE4();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B8, &qword_23A7FD900);
  v5 = *v0;
  v6 = sub_23A7EED94();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_23A7B802C(*(v5 + 56) + v26, v35, type metadata accessor for PreviewApplication.PreviewSessionMap);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_23A7B7C34(v25, *(v27 + 56) + v26, type metadata accessor for PreviewApplication.PreviewSessionMap);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_23A7B42C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98C8, &qword_23A7FD918);
  v2 = *v0;
  v3 = sub_23A7EED94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23A79842C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23A7A8AB8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

id sub_23A7B4464(uint64_t *a1)
{
  v2 = sub_23A7EDF64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v72 = (&v71 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v71 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v71 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v71 - v18);
  v20 = type metadata accessor for PreviewItem.Source(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[1];
  v73 = *a1;
  v74 = v23;
  v75 = a1[2];
  v24 = type metadata accessor for PreviewItem(0);
  sub_23A7B802C(a1 + *(v24 + 24), v22, type metadata accessor for PreviewItem.Source);
  (*(v3 + 32))(v19, v22, v2);
  sub_23A7A3798(0, &qword_27DFA9888, 0x277CC6438);
  v76 = v3;
  v25 = *(v3 + 16);
  v25(v17, v19, v2);
  v26 = sub_23A7AE860(v17, 0);
  v40 = v26;
  if (v26)
  {
    if (qword_27DFA8D38 != -1)
    {
      swift_once();
    }

    v41 = sub_23A7EE3B4();
    __swift_project_value_buffer(v41, qword_27DFA97D8);
    v25(v14, v19, v2);
    v42 = sub_23A7EE394();
    v43 = sub_23A7EEB44();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v71 = v44;
      v72 = swift_slowAlloc();
      v77[0] = v72;
      *v44 = 136315138;
      sub_23A7B7EE4(&qword_27DFA98D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v45 = sub_23A7EEDD4();
      v47 = v46;
      v48 = *(v76 + 8);
      v48(v14, v2);
      v49 = sub_23A797A74(v45, v47, v77);

      v50 = v71;
      *(v71 + 4) = v49;
      v51 = v43;
      v37 = v48;
      v52 = v50;
      _os_log_impl(&dword_23A714000, v42, v51, "Readwrite sandbox wrapper created for PreviewItem %s", v50, 0xCu);
      v53 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x23EE8D760](v53, -1, -1);
      v54 = v52;
      goto LABEL_20;
    }

    v37 = *(v76 + 8);
    v37(v14, v2);
    goto LABEL_26;
  }

  v25(v11, v19, v2);
  v27 = sub_23A7AE860(v11, 1);
  v40 = v27;
  if (v27)
  {
    if (qword_27DFA8D38 != -1)
    {
      swift_once();
    }

    v56 = sub_23A7EE3B4();
    __swift_project_value_buffer(v56, qword_27DFA97D8);
    v57 = v72;
    v25(v72, v19, v2);
    v42 = sub_23A7EE394();
    v58 = sub_23A7EEB44();
    if (os_log_type_enabled(v42, v58))
    {
      v59 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77[0] = v71;
      *v59 = 136315138;
      sub_23A7B7EE4(&qword_27DFA98D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v60 = sub_23A7EEDD4();
      v61 = v57;
      v63 = v62;
      v37 = *(v76 + 8);
      v37(v61, v2);
      v64 = sub_23A797A74(v60, v63, v77);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_23A714000, v42, v58, "Readonly sandbox wrapper created for PreviewItem %s", v59, 0xCu);
      v65 = v71;
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x23EE8D760](v65, -1, -1);
      v54 = v59;
LABEL_20:
      MEMORY[0x23EE8D760](v54, -1, -1);

      if (!v74)
      {
LABEL_21:
        v55 = 0;
LABEL_28:
        v68 = objc_allocWithZone(MEMORY[0x277D43F58]);
        v67 = [v68 initWithURLSandboxWrapper:v40 previewTitle:v55 editingMode:v75];
        goto LABEL_29;
      }

LABEL_27:
      v55 = sub_23A7EE814();
      goto LABEL_28;
    }

    v37 = *(v76 + 8);
    v37(v57, v2);
LABEL_26:
    if (!v74)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v28 = sub_23A7EE3B4();
  __swift_project_value_buffer(v28, qword_27DFA97D8);
  v25(v6, v19, v2);
  v29 = sub_23A7EE394();
  v30 = sub_23A7EEB34();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v72 = v19;
    v33 = v32;
    v77[0] = v32;
    *v31 = 136315138;
    sub_23A7B7EE4(&qword_27DFA98D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v34 = sub_23A7EEDD4();
    v36 = v35;
    v37 = *(v76 + 8);
    v37(v6, v2);
    v38 = sub_23A797A74(v34, v36, v77);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_23A714000, v29, v30, "Couod not create sandbox wrapper created for PreviewItem %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v39 = v33;
    v19 = v72;
    MEMORY[0x23EE8D760](v39, -1, -1);
    MEMORY[0x23EE8D760](v31, -1, -1);
  }

  else
  {

    v37 = *(v76 + 8);
    v37(v6, v2);
  }

  v40 = sub_23A7EDF24();
  if (v74)
  {
    v55 = sub_23A7EE814();
  }

  else
  {
    v55 = 0;
  }

  v66 = objc_allocWithZone(MEMORY[0x277D43F58]);
  v67 = [v66 initWithURL:v40 previewTitle:v55 editingMode:v75];
LABEL_29:
  v69 = v67;

  v37(v19, v2);
  return v69;
}

uint64_t sub_23A7B4CD4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23A7EEC84())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE8C140](j, a1);
        v5 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      swift_unknownObjectRetain();
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

LABEL_11:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([v6 previewItemDataProvider])
        {
          swift_unknownObjectRelease();
          if (qword_27DFA8D38 != -1)
          {
            swift_once();
          }

          v18 = sub_23A7EE3B4();
          __swift_project_value_buffer(v18, qword_27DFA97D8);
          v14 = sub_23A7EE394();
          v15 = sub_23A7EEB34();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            v17 = "Invalid QLItem dataProvider found in preview items.";
LABEL_22:
            _os_log_impl(&dword_23A714000, v14, v15, v17, v16, 2u);
            MEMORY[0x23EE8D760](v16, -1, -1);
          }

LABEL_23:

          swift_unknownObjectRelease();
          return 0;
        }

        v8 = [v7 previewItemData];
        if (v8)
        {
          v9 = v8;
          v10 = sub_23A7EDF94();
          v12 = v11;

          sub_23A7A8BF8(v10, v12);
          if (qword_27DFA8D38 != -1)
          {
            swift_once();
          }

          v13 = sub_23A7EE3B4();
          __swift_project_value_buffer(v13, qword_27DFA97D8);
          v14 = sub_23A7EE394();
          v15 = sub_23A7EEB34();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            v17 = "Invalid QLItem data found in preview items.";
            goto LABEL_22;
          }

          goto LABEL_23;
        }
      }

      swift_unknownObjectRelease();
      if (v5 == i)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return 1;
}

uint64_t sub_23A7B4F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA97F0, &qword_23A7FD878);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v12 = sub_23A7EE3B4();
  __swift_project_value_buffer(v12, qword_27DFA97D8);
  v30 = *(v6 + 16);
  v30(v11, a1, v5);
  v13 = sub_23A7EE394();
  v14 = sub_23A7EEB44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v27 = swift_slowAlloc();
    v31[0] = v27;
    *v16 = 136315138;
    sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_23A7EEDD4();
    v28 = v9;
    v18 = v4;
    v20 = v19;
    (*(v6 + 8))(v11, v5);
    v21 = sub_23A797A74(v17, v20, v31);
    v4 = v18;
    v9 = v28;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_23A714000, v13, v14, "Untracking restoration session: %s", v16, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23EE8D760](v22, -1, -1);
    v23 = v16;
    a1 = v29;
    MEMORY[0x23EE8D760](v23, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  if (qword_27DFA8D58 != -1)
  {
    swift_once();
  }

  v30(v9, a1, v5);
  v24 = type metadata accessor for PreviewApplication.RestorationSession(0);
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  swift_beginAccess();
  sub_23A7AEA18(v4, v9);
  return swift_endAccess();
}

uint64_t sub_23A7B5334(uint64_t a1)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = type metadata accessor for PreviewSession.Event(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v20 = sub_23A7C0FD0(v33);
  if ((v21 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v19 + 56) + *(v13 + 72) * v20, v16, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v16, v18, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7B802C(v11, v9, type metadata accessor for PreviewSession.Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v32 + 8))(v5, v3);
  sub_23A7B7DC4(v11, type metadata accessor for PreviewSession.Event);
  v22 = &v18[*(v12 + 24)];
  v23 = *(v22 + 1);
  if (v23)
  {
    v24 = *v22;
    v25 = sub_23A7EEA64();
    v26 = v31;
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    sub_23A7EEA34();

    v27 = sub_23A7EEA24();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v24;
    v28[5] = v23;
    sub_23A7AF7B0(0, 0, v26, &unk_23A7FD910, v28);
  }

  return sub_23A7B7DC4(v18, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B5798(uint64_t a1, void *a2)
{
  v31 = a2;
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_23A7EDFE4();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for PreviewSession.Event(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v30 - v13);
  v15 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v23 = sub_23A7C0FD0(v36);
  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v22 + 56) + *(v16 + 72) * v23, v19, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v19, v21, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  v25 = v31;
  *v14 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7B802C(v14, v12, type metadata accessor for PreviewSession.Event);
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v30 + 8))(v8, v6);
  sub_23A7B7DC4(v14, type metadata accessor for PreviewSession.Event);
  sub_23A7EEA94();
  v27 = v34;
  (*(v32 + 16))(v34, v36, v33);
  v28 = v35;
  (*(v16 + 56))(v35, 1, 1, v15);
  swift_beginAccess();
  sub_23A7AEC64(v28, v27);
  swift_endAccess();
  return sub_23A7B7DC4(v21, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B5C48(uint64_t a1)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v37 - v2;
  v3 = sub_23A7EDFE4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PreviewSession.Event(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v42 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v24 = sub_23A7C0FD0(v43);
  if ((v25 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v23 + 56) + *(v42 + 72) * v24, v20, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v20, v22, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7B802C(v16, v14, type metadata accessor for PreviewSession.Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v8 + 8))(v10, v7);
  sub_23A7B7DC4(v16, type metadata accessor for PreviewSession.Event);
  sub_23A7EEA94();
  v26 = &v22[*(v17 + 24)];
  v27 = *(v26 + 1);
  if (v27)
  {
    v28 = *v26;
    v29 = sub_23A7EEA64();
    v30 = v37;
    (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
    sub_23A7EEA34();

    v31 = sub_23A7EEA24();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v28;
    v32[5] = v27;
    sub_23A7AF7B0(0, 0, v30, &unk_23A7FD8F8, v32);
  }

  v34 = v40;
  (*(v38 + 16))(v40, v43, v39);
  v35 = v41;
  (*(v42 + 56))(v41, 1, 1, v17);
  swift_beginAccess();
  sub_23A7AEC64(v35, v34);
  swift_endAccess();
  return sub_23A7B7DC4(v22, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B61F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = type metadata accessor for PreviewSession.Event(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v19 = sub_23A7C0FD0(a1);
  if ((v20 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v18 + 56) + *(v12 + 72) * v19, v15, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v15, v17, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7B802C(v10, v8, type metadata accessor for PreviewSession.Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v22 + 8))(v4, v2);
  sub_23A7B7DC4(v10, type metadata accessor for PreviewSession.Event);
  sub_23A7EEA94();
  return sub_23A7B7DC4(v17, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B6550(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = sub_23A7EDF64();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for PreviewSession.Event(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v21 = sub_23A7C0FD0(a1);
  if ((v22 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v20 + 56) + *(v14 + 72) * v21, v17, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v17, v19, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  v23 = v37;
  v24 = v4;
  v31 = *(v37 + 16);
  v32 = v4;
  v25 = v40;
  v31(v12, v41, v40);
  v36 = v7;
  swift_storeEnumTagMultiPayload();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  v35 = type metadata accessor for PreviewSession.Event;
  sub_23A7B802C(v12, v10, type metadata accessor for PreviewSession.Event);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  v39 = *(v39 + 8);
  (v39)(v6, v24);
  v30 = type metadata accessor for PreviewSession.Event;
  sub_23A7B7DC4(v12, type metadata accessor for PreviewSession.Event);
  v26 = v38;
  v31(v38, v41, v25);
  v27 = type metadata accessor for PreviewItem(0);
  sub_23A7EDFD4();
  (*(v23 + 32))(&v12[*(v27 + 24)], v26, v25);
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 1;
  swift_storeEnumTagMultiPayload();
  sub_23A7B802C(v12, v10, v35);
  sub_23A7EEA84();
  (v39)(v6, v32);
  sub_23A7B7DC4(v12, v30);
  sub_23A7EEA94();
  return sub_23A7B7DC4(v19, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B6A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v13 = sub_23A7C0FD0(a1);
  if ((v14 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v12 + 56) + *(v6 + 72) * v13, v9, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v9, v11, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  v15 = &v11[*(v5 + 24)];
  v16 = *(v15 + 1);
  if (v16)
  {
    v17 = *v15;
    v18 = sub_23A7EEA64();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_23A7EEA34();

    v19 = sub_23A7EEA24();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v17;
    v20[5] = v16;
    sub_23A7AF7B0(0, 0, v4, &unk_23A7FD8D8, v20);
  }

  return sub_23A7B7DC4(v11, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

void sub_23A7B6CE8(unint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v60 = *(v62 - 8);
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v15 = sub_23A7EE3B4();
  v16 = __swift_project_value_buffer(v15, qword_27DFA97D8);
  v17 = *(v9 + 16);
  v66 = a2;
  v64 = v17;
  v17(v14, a2, v8);

  v65 = v16;
  v18 = sub_23A7EE394();
  v19 = sub_23A7EEB44();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v57 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v59 = v7;
    v23 = v22;
    v67[0] = v22;
    *v21 = 136315394;
    v24 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    v25 = MEMORY[0x23EE8BE10](a1, v24);
    v27 = sub_23A797A74(v25, v26, v67);
    v58 = a1;
    v28 = v27;

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v29 = sub_23A7EEDD4();
    v31 = v30;
    v63 = *(v9 + 8);
    v63(v14, v8);
    v32 = sub_23A797A74(v29, v31, v67);
    a1 = v58;

    *(v21 + 14) = v32;
    _os_log_impl(&dword_23A714000, v18, v19, "Did restore items: %s for session: %s", v21, 0x16u);
    swift_arrayDestroy();
    v33 = v23;
    v7 = v59;
    MEMORY[0x23EE8D760](v33, -1, -1);
    v34 = v21;
    v12 = v57;
    MEMORY[0x23EE8D760](v34, -1, -1);
  }

  else
  {

    v63 = *(v9 + 8);
    v63(v14, v8);
  }

  v35 = v66;
  if (qword_27DFA8D58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = qword_27DFAC698;
  if (!*(qword_27DFAC698 + 16) || (v37 = sub_23A7C0FD0(v35), (v38 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_15;
  }

  v39 = *(v36 + 56);
  v40 = v61;
  sub_23A7B802C(v39 + *(v60 + 72) * v37, v61, type metadata accessor for PreviewApplication.RestorationSession);
  sub_23A7B7C34(v40, v7, type metadata accessor for PreviewApplication.RestorationSession);
  swift_endAccess();
  v41 = &v7[*(v62 + 24)];
  v42 = *v41;
  if (!*v41)
  {
    sub_23A7B7DC4(v7, type metadata accessor for PreviewApplication.RestorationSession);
LABEL_15:
    v64(v12, v35, v8);
    v45 = sub_23A7EE394();
    v46 = sub_23A7EEB34();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67[0] = v48;
      *v47 = 136315138;
      sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v49 = sub_23A7EEDD4();
      v51 = v50;
      v63(v12, v8);
      v52 = sub_23A797A74(v49, v51, v67);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_23A714000, v45, v46, "Could not find restoration session with ID: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EE8D760](v48, -1, -1);
      MEMORY[0x23EE8D760](v47, -1, -1);
    }

    else
    {

      v63(v12, v8);
    }

    return;
  }

  v43 = *(v41 + 1);
  if (a1 >> 62)
  {

    sub_23A7B7C24(v42, v43);
    v55 = sub_23A7EED74();

    a1 = v55;
  }

  else
  {
    v44 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_23A7B7C24(v42, v43);
    sub_23A7EEE14();
    if (!swift_dynamicCastMetatype())
    {
      v53 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        v54 = (v44 + 32);
        while (*v54)
        {
          ++v54;
          if (!--v53)
          {
            goto LABEL_13;
          }
        }

        a1 = v44 | 1;
      }
    }
  }

LABEL_13:
  v42(a1, 0);
  sub_23A7A2DD4(v42, v43);

  sub_23A7B7DC4(v7, type metadata accessor for PreviewApplication.RestorationSession);
}

void sub_23A7B7410(uint64_t a1, uint64_t a2, char **a3)
{
  v61 = a2;
  v62 = a1;
  v66 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v64 = *(v66 - 8);
  v4 = MEMORY[0x28223BE20](v66);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - v6;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v58 - v13;
  if (qword_27DFA8D38 != -1)
  {
LABEL_39:
    swift_once();
  }

  v15 = sub_23A7EE3B4();
  v16 = __swift_project_value_buffer(v15, qword_27DFA97D8);
  v68 = *(v9 + 16);
  v68(v14, a3, v8);
  v69 = v16;
  v17 = sub_23A7EE394();
  v18 = sub_23A7EEB44();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v67 = v9;
    v63 = v7;
    v59 = a3;
    v22 = v21;
    v70[0] = v21;
    *v20 = 136315138;
    sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_23A7EEDD4();
    v25 = v24;
    v26 = *(v67 + 8);
    v26(v14, v8);
    v27 = sub_23A797A74(v23, v25, v70);

    *(v20 + 4) = v27;
    v28 = v18;
    v29 = v26;
    _os_log_impl(&dword_23A714000, v17, v28, "Did restore for session: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v30 = v22;
    a3 = v59;
    v7 = v63;
    MEMORY[0x23EE8D760](v30, -1, -1);
    v31 = v20;
    v12 = v60;
    MEMORY[0x23EE8D760](v31, -1, -1);
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v14, v8);
  }

  if (qword_27DFA8D58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = qword_27DFAC698;
  if (!*(qword_27DFAC698 + 16) || (v33 = sub_23A7C0FD0(a3), (v34 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_22;
  }

  v35 = v65;
  sub_23A7B802C(*(v32 + 56) + *(v64 + 72) * v33, v65, type metadata accessor for PreviewApplication.RestorationSession);
  sub_23A7B7C34(v35, v7, type metadata accessor for PreviewApplication.RestorationSession);
  swift_endAccess();
  v36 = &v7[*(v66 + 24)];
  if (!*v36)
  {
    sub_23A7B7DC4(v7, type metadata accessor for PreviewApplication.RestorationSession);
LABEL_22:
    v68(v12, a3, v8);
    v44 = sub_23A7EE394();
    v45 = sub_23A7EEB34();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70[0] = v47;
      *v46 = 136315138;
      sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = sub_23A7EEDD4();
      v50 = v49;
      v29(v12, v8);
      v51 = sub_23A797A74(v48, v50, v70);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_23A714000, v44, v45, "Could not find restoration session with ID: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23EE8D760](v47, -1, -1);
      MEMORY[0x23EE8D760](v46, -1, -1);
    }

    else
    {

      v29(v12, v8);
    }

    return;
  }

  v69 = *v36;
  v37 = *(v36 + 1);
  v38 = MEMORY[0x277D84F90];
  v70[0] = MEMORY[0x277D84F90];
  v39 = v62;
  v14 = *(v62 + 16);
  v68 = v37;

  if (v14)
  {
    v40 = 0;
    v41 = v39 + 40;
    v9 = 0x277CC6438uLL;
    v63 = v7;
    v66 = v39 + 40;
    do
    {
      v67 = v38;
      a3 = (v41 + 16 * v40);
      v8 = v40;
      while (1)
      {
        if (v8 >= v14)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v40 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_38;
        }

        v42 = *(a3 - 1);
        v7 = *a3;
        sub_23A7A3798(0, &qword_27DFA9880, 0x277CCAAC8);
        sub_23A7A3798(0, &qword_27DFA9888, 0x277CC6438);
        sub_23A7A8C88(v42, v7);
        v12 = sub_23A7EEB54();
        v43 = sub_23A7A8BF8(v42, v7);
        if (v12)
        {
          break;
        }

        ++v8;
        a3 += 2;
        if (v40 == v14)
        {
          v7 = v63;
          v38 = v67;
          goto LABEL_27;
        }
      }

      MEMORY[0x23EE8BDE0](v43);
      if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23A7EE9C4();
      }

      sub_23A7EE9D4();
      v38 = v70[0];
      v7 = v63;
      v41 = v66;
    }

    while (v40 != v14);
  }

LABEL_27:
  if (v38 >> 62)
  {

    v57 = sub_23A7EED74();
    swift_bridgeObjectRelease_n();
    v38 = v57;
  }

  else
  {
    v52 = v38 & 0xFFFFFFFFFFFFFF8;

    sub_23A7EEE14();
    if (swift_dynamicCastMetatype() || (v55 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_29:
    }

    else
    {
      v56 = (v52 + 32);
      while (*v56)
      {
        ++v56;
        if (!--v55)
        {
          goto LABEL_29;
        }
      }

      v38 = v52 | 1;
    }
  }

  v54 = v68;
  v53 = v69;
  v69(v38, v61);
  sub_23A7A2DD4(v53, v54);

  sub_23A7B7DC4(v7, type metadata accessor for PreviewApplication.RestorationSession);
}

uint64_t sub_23A7B7C24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A7B7C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7B7C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7B0EE0(a1, v4, v5, v7, v6);
}

unint64_t sub_23A7B7D5C()
{
  result = qword_27DFA9898;
  if (!qword_27DFA9898)
  {
    sub_23A7A3798(255, &qword_27DFA9890, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9898);
  }

  return result;
}

uint64_t sub_23A7B7DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A7B7E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3240;

  return sub_23A7B1090(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7B7EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A7B7F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7B0EE0(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7B802C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7B80AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7B811C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A7A3828;

  return sub_23A7B1D24(a1, v4);
}

uint64_t sub_23A7B81D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A7A3240;

  return sub_23A7B1D24(a1, v4);
}

uint64_t sub_23A7B828C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7B8354()
{
  v1 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_23A7B83EC(char a1)
{
  v3 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer);
  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setStartPoint_];
  return [v4 setEndPoint_];
}

uint64_t (*sub_23A7B8490(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23A7B8518;
}

void sub_23A7B8518(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer);
    if (*(v4 + v3[4]))
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (*(v4 + v3[4]))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    [v5 setStartPoint_];
    [v5 setEndPoint_];
  }

  free(v3);
}

id QLGradientView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QLGradientView.init()()
{
  v0[OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed] = 0;
  v1 = OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for QLGradientView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_23A7B87D0();

  return v2;
}

void sub_23A7B87D0()
{
  v1 = *&v0[OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23A7FD280;
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.5];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v2 + 56) = v5;
  *(v2 + 32) = v4;
  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  v8 = [v7 CGColor];

  *(v2 + 88) = v6;
  *(v2 + 64) = v8;
  v9 = sub_23A7EE994();

  [v1 setColors_];

  v10 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  v0[v10] = 0;
  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v11 = [v0 layer];
  [v11 insertSublayer:v1 atIndex:0];
}

id QLGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id QLGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A7B8BCC()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA98F8);
  __swift_project_value_buffer(v0, qword_27DFA98F8);
  return sub_23A7EE3A4();
}

uint64_t QLPreviewCollectionWrapper.hostProxy.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  sub_23A7EE724();
  return v1;
}

uint64_t sub_23A7B8C88(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  return sub_23A7EE734();
}

void (*QLPreviewCollectionWrapper.hostProxy.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  *(v3 + 32) = sub_23A7EE714();
  return sub_23A796D2C;
}

uint64_t QLPreviewCollectionWrapper.$hostProxy.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);

  return MEMORY[0x282133B70](v0);
}

uint64_t QLPreviewCollectionWrapper.init(hostProxy:)(uint64_t a1)
{
  type metadata accessor for QLAppExtensionSceneProxy(0);
  sub_23A7B970C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy, &protocol conformance descriptor for QLAppExtensionSceneProxy);

  return sub_23A7EE754();
}

uint64_t sub_23A7B8E80()
{
  v1 = v0;
  v2 = type metadata accessor for QLPreviewCollectionWrapper(0);
  v3 = MEMORY[0x28223BE20](v2);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v41 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v41 - v8;
  if (qword_27DFA8D40 != -1)
  {
    swift_once();
  }

  v10 = sub_23A7EE3B4();
  v11 = __swift_project_value_buffer(v10, qword_27DFA98F8);
  sub_23A7B9754(v1, v9);
  v43 = v11;
  v12 = sub_23A7EE394();
  v13 = sub_23A7EEB14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v15;
    *v14 = 136315138;
    sub_23A7B9754(v9, v7);
    v16 = sub_23A7EE8B4();
    v18 = v17;
    sub_23A7B97B8(v9);
    v19 = sub_23A797A74(v16, v18, &v45);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_23A714000, v12, v13, "Configuring %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EE8D760](v15, -1, -1);
    MEMORY[0x23EE8D760](v14, -1, -1);
  }

  else
  {

    sub_23A7B97B8(v9);
  }

  v20 = objc_opt_self();
  v21 = [v20 previewCollectionClassName];
  if (!v21)
  {
    sub_23A7EE844();
    v21 = sub_23A7EE814();
  }

  v41[0] = v7;
  v41[1] = v2;
  v22 = sub_23A7EE844();
  v42 = v23;
  v24 = [v20 previewCollectionWithClassName_];

  v47 = &unk_284DB55B0;
  v48 = &unk_284DB66A0;
  v25 = swift_dynamicCastObjCProtocolConditional();
  if (v25)
  {
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
    sub_23A7EE724();
    v27 = v45;
    KeyPath = swift_getKeyPath();
    v29 = v1;
    MEMORY[0x28223BE20](KeyPath);
    v45 = v27;
    sub_23A7B970C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy, &protocol conformance descriptor for QLAppExtensionSceneProxy);
    v30 = v24;
    sub_23A7EE004();

    v31 = v44;
    sub_23A7B9754(v29, v44);
    v32 = sub_23A7EE394();
    v33 = sub_23A7EEB14();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      sub_23A7B9754(v31, v41[0]);
      v36 = sub_23A7EE8B4();
      v38 = v37;
      sub_23A7B97B8(v31);
      v39 = sub_23A797A74(v36, v38, &v45);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_23A714000, v32, v33, "Configured %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23EE8D760](v35, -1, -1);
      MEMORY[0x23EE8D760](v34, -1, -1);
    }

    else
    {

      sub_23A7B97B8(v31);
    }

    return v26;
  }

  else
  {

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_23A7EECD4();

    v45 = 0xD00000000000002DLL;
    v46 = 0x800000023A80BC00;
    MEMORY[0x23EE8BD70](v22, v42);
    result = sub_23A7EED64();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for QLPreviewCollectionWrapper(uint64_t a1)
{
  result = qword_27DFA9920;
  if (!qword_27DFA9920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7B94A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7B970C(qword_27DFA9938, type metadata accessor for QLPreviewCollectionWrapper, &protocol conformance descriptor for QLPreviewCollectionWrapper);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23A7B9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7B970C(qword_27DFA9938, type metadata accessor for QLPreviewCollectionWrapper, &protocol conformance descriptor for QLPreviewCollectionWrapper);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23A7B95C8(uint64_t a1)
{
  sub_23A7B970C(qword_27DFA9938, type metadata accessor for QLPreviewCollectionWrapper, &protocol conformance descriptor for QLPreviewCollectionWrapper);
  sub_23A7EE5E4();
  __break(1u);
}

void sub_23A7B9648(uint64_t a1)
{
  sub_23A7B96B4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A7B96B4(uint64_t a1)
{
  if (!qword_27DFA9930)
  {
    type metadata accessor for QLAppExtensionSceneProxy(255);
    v1 = sub_23A7EE764();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFA9930);
    }
  }
}

uint64_t sub_23A7B970C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A7B9754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLPreviewCollectionWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7B97B8(uint64_t a1)
{
  v2 = type metadata accessor for QLPreviewCollectionWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7B9830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject(0, a2, a4, a5);
  v11 = sub_23A7B9D28(a1, v8, v9, v10);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v11;
  return result;
}

id sub_23A7B98F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_23A7B9964(uint64_t *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_23A7B9A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7B9A88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23A7B9AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A7B9B28(uint64_t a1)
{
  result = swift_checkMetadataState();
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

id sub_23A7B9C20(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  type metadata accessor for QLNonUIProxy();
  *&v1[v6] = swift_allocObject();
  v7 = *((*v4 & *v1) + 0x68);
  v8 = *((v5 & v3) + 0x50);
  (*(*(v8 - 8) + 16))(&v1[v7], a1, v8);
  v10 = type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject(0, v8, *((v5 & v3) + 0x58), v9);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_23A7B9D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23A7A8D38(a3, v22 - v9, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v11 = sub_23A7EEA64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23A7A8E74(v10, &qword_27DFA8FD0, &qword_23A7FDBC0);
  }

  else
  {
    sub_23A7EEA54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23A7EE9E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23A7EE8C4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23A7BA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23A7A8D38(a3, v22 - v9, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v11 = sub_23A7EEA64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23A7A8E74(v10, &qword_27DFA8FD0, &qword_23A7FDBC0);
  }

  else
  {
    sub_23A7EEA54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23A7EE9E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23A7EE8C4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C40, &unk_23A7FE010);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C40, &unk_23A7FE010);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23A7BA2FC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C50, &unk_23A7FE020);
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

uint64_t PreviewItem.init(url:displayName:editingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for PreviewItem(0);
  sub_23A7EDFD4();
  v11 = *(v10 + 24);
  v12 = sub_23A7EDF64();
  result = (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
  *a5 = a2;
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

unint64_t sub_23A7BA468()
{
  result = sub_23A7C81FC(MEMORY[0x277D84F90]);
  qword_27DFAC688 = result;
  return result;
}

uint64_t sub_23A7BA490()
{
  type metadata accessor for HostHandler();
  result = swift_allocObject();
  qword_27DFAC690 = result;
  return result;
}

unint64_t sub_23A7BA4C0()
{
  result = sub_23A7C7FE0(MEMORY[0x277D84F90]);
  qword_27DFAC698 = result;
  return result;
}

uint64_t PreviewApplication.RestorationItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PreviewApplicationRestorationItem_url;
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PreviewApplication.RestorationItem.__allocating_init(url:isReadonly:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___PreviewApplicationRestorationItem_url;
  v7 = sub_23A7EDF64();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id PreviewApplication.RestorationItem.init(url:isReadonly:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___PreviewApplicationRestorationItem_url;
  v6 = sub_23A7EDF64();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v2[OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PreviewApplication.RestorationItem(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

id PreviewApplication.RestorationItem.init(coder:)(void *a1)
{
  v3 = sub_23A7EDF64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A7EE814();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_23A7EEC44();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
    if (swift_dynamicCast())
    {
      v9 = v19;
      v10 = sub_23A7EE814();
      v11 = [a1 containsValueForKey_];

      if (v11)
      {
        sub_23A7EDF44();
        (*(v4 + 32))(&v1[OBJC_IVAR___PreviewApplicationRestorationItem_url], v6, v3);
        v12 = sub_23A7EE814();
        v13 = [a1 decodeBoolForKey_];

        v1[OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly] = v13;
        v14 = type metadata accessor for PreviewApplication.RestorationItem(0);
        v18.receiver = v1;
        v18.super_class = v14;
        v15 = objc_msgSendSuper2(&v18, sel_init);

        return v15;
      }
    }
  }

  else
  {

    sub_23A7A8E74(v22, &qword_27DFA9A40, &unk_23A7FDBA0);
  }

  type metadata accessor for PreviewApplication.RestorationItem(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_23A7BAA98(void *a1)
{
  v2 = v1;
  v4 = sub_23A7EDF24();
  v5 = sub_23A7EE814();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly);
  v7 = sub_23A7EE814();
  [a1 encodeBool:v6 forKey:v7];
}

id PreviewApplication.RestorationItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreviewApplication.RestorationItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewApplication.RestorationItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static PreviewApplication.open(urls:selectedURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v53 = type metadata accessor for PreviewItem(0);
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94D0, &unk_23A7FD340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_23A7EDF64();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v49 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v50 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - v21;
  v23 = a1;
  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  v51 = v12;
  if (v24)
  {
    v46 = v10;
    v47 = &v46 - v21;
    v48 = a2;
    v60 = v5;
    v62 = MEMORY[0x277D84F90];
    sub_23A7C14EC(0, v24, 0);
    v25 = v62;
    v26 = *(v12 + 16);
    v57 = v12 + 16;
    v58 = v26;
    v27 = v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);
    v55 = (v12 + 8);
    v56 = v28;
    v54 = (v12 + 32);
    v29 = v53;
    do
    {
      v30 = v61;
      v31 = v58;
      v58(v61, v27, v11);
      v32 = v59;
      v31(v59, v30, v11);
      sub_23A7EDFD4();
      (*v55)(v30, v11);
      v33 = v32;
      v34 = v11;
      (*v54)(&v7[*(v29 + 24)], v33, v11);
      *v7 = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = 1;
      v62 = v25;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_23A7C14EC((v35 > 1), v36 + 1, 1);
        v29 = v53;
        v25 = v62;
      }

      *(v25 + 16) = v36 + 1;
      sub_23A7C1B3C(v7, v25 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 9) * v36, type metadata accessor for PreviewItem);
      v27 += v56;
      --v24;
      v11 = v34;
    }

    while (v24);
    v37 = v52;
    v5 = v60;
    v22 = v47;
    a2 = v48;
    v10 = v46;
  }

  else
  {
    v37 = v52;
  }

  v38 = *(v5 + 7);
  v39 = v53;
  v38(v22, 1, 1, v53);
  sub_23A7A8D38(a2, v10, &unk_27DFA94D0, &unk_23A7FD340);
  v40 = v51;
  if ((*(v51 + 48))(v10, 1, v11) == 1)
  {
    sub_23A7A8E74(v10, &unk_27DFA94D0, &unk_23A7FD340);
  }

  else
  {
    v59 = *(v40 + 32);
    v60 = v38;
    v41 = v49;
    (v59)(v49, v10, v11);
    v42 = v61;
    (*(v40 + 16))(v61, v41, v11);
    v43 = v50;
    sub_23A7EDFD4();
    (*(v40 + 8))(v41, v11);
    sub_23A7A8E74(v22, &qword_27DFA9A48, &qword_23A7FDBB0);
    (v59)(&v43[*(v39 + 24)], v42, v11);
    *v43 = 0;
    *(v43 + 1) = 0;
    *(v43 + 2) = 1;
    v60(v43, 0, 1, v39);
    v44 = v43;
    v37 = v52;
    sub_23A7C150C(v44, v22);
  }

  static PreviewApplication.open(items:selectedItem:)(v25, v22, v37);

  return sub_23A7A8E74(v22, &qword_27DFA9A48, &qword_23A7FDBB0);
}

uint64_t static PreviewApplication.open(items:selectedItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = sub_23A7EDF64();
  v61 = *(v68 - 8);
  v7 = MEMORY[0x28223BE20](v68);
  v70 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v56 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v56 - v12;
  v67 = type metadata accessor for PreviewItem(0);
  v13 = *(v67 - 8);
  v14 = MEMORY[0x28223BE20](v67);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v56 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = (&v56 - v20);
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v58 = a3;
  v59 = v3;
  v62 = v13;
  if (v22)
  {
    v57 = a2;
    v60 = &v56 - v20;
    v71 = MEMORY[0x277D84F90];
    sub_23A7EED34();
    v24 = a1;
    v25 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v26 = *(v13 + 72);
    v27 = v22;
    do
    {
      sub_23A7C1A20(v25, v19, type metadata accessor for PreviewItem);
      sub_23A7B4464(v19);
      sub_23A7C20A4(v19, type metadata accessor for PreviewItem);
      sub_23A7EED14();
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
      v25 += v26;
      --v27;
    }

    while (v27);
    v23 = v71;
    a3 = v58;
    v21 = v60;
    a1 = v24;
    a2 = v57;
  }

  v28 = v63;
  sub_23A7A8D38(a2, v63, &qword_27DFA9A48, &qword_23A7FDBB0);
  v29 = v62;
  if ((v62[6])(v28, 1, v67) == 1)
  {
    sub_23A7A8E74(v28, &qword_27DFA9A48, &qword_23A7FDBB0);
    v30 = -1;
    goto LABEL_27;
  }

  sub_23A7C1B3C(v28, v21, type metadata accessor for PreviewItem);
  if (!v22)
  {
    v30 = -1;
    goto LABEL_26;
  }

  v57 = v23;
  v30 = 0;
  v31 = *(v67 + 24);
  v32 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v33 = v29[9];
  v62 = (v61 + 4);
  v63 = v31;
  v60 = v33;
  ++v61;
  v64 = v22;
  v34 = v65;
  v35 = v62;
  do
  {
    sub_23A7C1A20(v32, v16, type metadata accessor for PreviewItem);
    v39 = *(v66 + 48);
    sub_23A7C1A20(&v16[*(v67 + 24)], v34, type metadata accessor for PreviewItem.Source);
    sub_23A7C1A20(v21 + v63, v34 + v39, type metadata accessor for PreviewItem.Source);
    v40 = *v35;
    v41 = v16;
    v42 = v68;
    (*v35)(v69, v34, v68);
    v43 = v42;
    v16 = v41;
    v40(v70, v34 + v39, v43);
    if ((sub_23A7EDF34() & 1) == 0)
    {
LABEL_9:
      v36 = *v61;
      v37 = v68;
      (*v61)(v70, v68);
      v36(v69, v37);
      v38 = v64;
LABEL_10:
      sub_23A7C20A4(v41, type metadata accessor for PreviewItem);
      goto LABEL_11;
    }

    v44 = *(v41 + 1);
    v45 = v21[1];
    if (v44)
    {
      if (!v45)
      {
        goto LABEL_9;
      }

      if (*v41 == *v21 && v44 == v45)
      {
        v46 = *v61;
        v47 = v68;
        (*v61)(v70, v68);
        v46(v69, v47);
        v38 = v64;
      }

      else
      {
        v50 = sub_23A7EEE04();
        v51 = *v61;
        v52 = v68;
        (*v61)(v70, v68);
        v51(v69, v52);
        v38 = v64;
        if ((v50 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v48 = *v61;
      v49 = v68;
      (*v61)(v70, v68);
      v48(v69, v49);
      v38 = v64;
      if (v45)
      {
        goto LABEL_10;
      }
    }

    v53 = *(v41 + 2);
    v54 = v21[2];
    sub_23A7C20A4(v41, type metadata accessor for PreviewItem);
    if (v53 == v54)
    {
      goto LABEL_24;
    }

LABEL_11:
    ++v30;
    v32 += v60;
  }

  while (v38 != v30);
  v30 = -1;
LABEL_24:
  a3 = v58;
  v23 = v57;
LABEL_26:
  sub_23A7C20A4(v21, type metadata accessor for PreviewItem);
LABEL_27:
  static PreviewApplication.open(items:selectedItemIndex:)(v23, v30, 0, a3);
}

uint64_t static PreviewApplication.open(items:selectedItemIndex:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v40 = a2;
  v44 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A60, &qword_23A7FDBC8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PreviewSession(0);
  v12 = v11 - 8;
  v38 = *(v11 - 8);
  v13 = *(v38 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  type metadata accessor for QLHostRemotePreviewModel(0);
  v17 = swift_allocObject();
  sub_23A7EE0B4();
  v18 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  v19 = sub_23A7EE154();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  v21 = sub_23A7EE124();
  (*(*(v21 - 8) + 56))(v17 + v20, 1, 1, v21);
  v22 = *(v12 + 32);

  sub_23A7EDFD4();
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v7);
  type metadata accessor for PreviewSession.Event(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7EEA74();
  (*(v8 + 8))(v10, v7);
  *&v16[*(v12 + 28)] = v17;
  if (sub_23A7B4CD4(a1, v23))
  {
    v24 = sub_23A7EEA64();
    (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
    v25 = v39;
    sub_23A7C1A20(v16, v39, type metadata accessor for PreviewSession);
    sub_23A7EEA34();

    v26 = sub_23A7EEA24();
    v27 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v28 = (v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v26;
    v30[3] = v31;
    v30[4] = v17;
    sub_23A7C1B3C(v25, v30 + v27, type metadata accessor for PreviewSession);
    *(v30 + v28) = a1;
    v32 = v30 + v38;
    *v32 = v40;
    v32[8] = v41 & 1;
    v33 = v30 + v29;
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = 1;
    v33[26] = 0;
    *(v33 + 12) = 0;
    v34 = v43;
    *(v30 + ((v29 + 34) & 0xFFFFFFFFFFFFFFF8)) = v42;
    sub_23A7B9D94(0, 0, v34, &unk_23A7FDBF8, v30);
  }

  else
  {

    if (qword_27DFA8D50 != -1)
    {
      swift_once();
    }

    sub_23A7C1AE8();
    v35 = swift_allocError();

    sub_23A7B5798(&v16[v22], v35);
  }

  return sub_23A7C1B3C(v16, v44, type metadata accessor for PreviewSession);
}

uint64_t static PreviewApplication.open(items:selectedItem:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a2;
  v98 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v81 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A60, &qword_23A7FDBC8);
  v8 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v10 = &v81 - v9;
  v96 = type metadata accessor for PreviewSession(0);
  v87 = *(v96 - 8);
  v11 = MEMORY[0x28223BE20](v96);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  v15 = sub_23A7EDF64();
  v82 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v108 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v81 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  MEMORY[0x28223BE20](v104);
  v20 = &v81 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = &v81 - v22;
  v106 = type metadata accessor for PreviewItem(0);
  v23 = *(v106 - 8);
  v24 = MEMORY[0x28223BE20](v106);
  v26 = (&v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v81 - v28);
  MEMORY[0x28223BE20](v27);
  v109 = (&v81 - v30);
  v31 = a3[1];
  v86 = *a3;
  v94 = a3[2];
  v95 = v31;
  v85 = *(a3 + 26);
  v84 = *(a3 + 12);
  v32 = *(a1 + 16);
  v33 = MEMORY[0x277D84F90];
  v105 = v32;
  v100 = v14;
  v91 = v10;
  v92 = v8;
  v83 = a1;
  v102 = v23;
  if (v32)
  {
    v110 = MEMORY[0x277D84F90];
    v34 = v32;
    sub_23A7EED34();
    v35 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v36 = *(v23 + 72);
    do
    {
      sub_23A7C1A20(v35, v29, type metadata accessor for PreviewItem);
      sub_23A7B4464(v29);
      sub_23A7C20A4(v29, type metadata accessor for PreviewItem);
      sub_23A7EED14();
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
      v35 += v36;
      --v34;
    }

    while (v34);
    v33 = v110;
    v37 = v99;
    v14 = v100;
    v10 = v91;
    v8 = v92;
  }

  else
  {
    v37 = v99;
  }

  v38 = v93;
  sub_23A7A8D38(v103, v93, &qword_27DFA9A48, &qword_23A7FDBB0);
  v39 = v102;
  v40 = (*(v102 + 48))(v38, 1, v106);
  v101 = v33;
  if (v40 == 1)
  {
    sub_23A7A8E74(v38, &qword_27DFA9A48, &qword_23A7FDBB0);
    v41 = -1;
    goto LABEL_28;
  }

  sub_23A7C1B3C(v38, v109, type metadata accessor for PreviewItem);
  if (!v105)
  {
    v41 = -1;
    goto LABEL_27;
  }

  v41 = 0;
  v103 = *(v106 + 24);
  v42 = v83 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v102 = *(v39 + 72);
  v43 = (v82 + 32);
  v44 = (v82 + 8);
  do
  {
    sub_23A7C1A20(v42, v26, type metadata accessor for PreviewItem);
    v46 = *(v104 + 48);
    sub_23A7C1A20(v26 + *(v106 + 24), v20, type metadata accessor for PreviewItem.Source);
    sub_23A7C1A20(v109 + v103, &v20[v46], type metadata accessor for PreviewItem.Source);
    v47 = *v43;
    (*v43)(v107, v20, v15);
    v47(v108, &v20[v46], v15);
    if ((sub_23A7EDF34() & 1) == 0)
    {
LABEL_10:
      v45 = *v44;
      (*v44)(v108, v15);
      v45(v107, v15);
LABEL_11:
      sub_23A7C20A4(v26, type metadata accessor for PreviewItem);
      goto LABEL_12;
    }

    v48 = v26[1];
    v49 = v109[1];
    if (v48)
    {
      if (!v49)
      {
        goto LABEL_10;
      }

      if (*v26 == *v109 && v48 == v49)
      {
        v50 = *v44;
        (*v44)(v108, v15);
        v50(v107, v15);
      }

      else
      {
        v52 = sub_23A7EEE04();
        v53 = *v44;
        (*v44)(v108, v15);
        v53(v107, v15);
        if ((v52 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v51 = *v44;
      (*v44)(v108, v15);
      v51(v107, v15);
      if (v49)
      {
        goto LABEL_11;
      }
    }

    v54 = v26[2];
    v55 = v109[2];
    sub_23A7C20A4(v26, type metadata accessor for PreviewItem);
    if (v54 == v55)
    {
      goto LABEL_25;
    }

LABEL_12:
    ++v41;
    v42 += v102;
  }

  while (v105 != v41);
  v41 = -1;
LABEL_25:
  v37 = v99;
  v14 = v100;
  v10 = v91;
  v8 = v92;
LABEL_27:
  sub_23A7C20A4(v109, type metadata accessor for PreviewItem);
LABEL_28:
  v56 = v96;
  type metadata accessor for QLHostRemotePreviewModel(0);
  v57 = swift_allocObject();
  sub_23A7EE0B4();
  v58 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  v59 = sub_23A7EE154();
  (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  v61 = sub_23A7EE124();
  (*(*(v61 - 8) + 56))(v57 + v60, 1, 1, v61);
  v62 = *(v56 + 24);

  sub_23A7EDFD4();
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v37);
  type metadata accessor for PreviewSession.Event(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7EEA74();
  (*(v8 + 8))(v10, v37);
  *&v14[*(v56 + 20)] = v57;
  if (sub_23A7B4CD4(v101, v63))
  {
    LODWORD(v109) = v84 | (v85 << 16);
    v64 = sub_23A7EEA64();
    (*(*(v64 - 8) + 56))(v97, 1, 1, v64);
    v65 = v89;
    sub_23A7C1A20(v14, v89, type metadata accessor for PreviewSession);
    sub_23A7EEA34();
    v66 = v86;
    sub_23A7C1D44(v86, v95, v94);
    v67 = sub_23A7EEA24();
    v68 = (*(v87 + 80) + 40) & ~*(v87 + 80);
    v69 = (v88 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = ((v69 + 15) & 0xFFFFFFFFFFFFFFF8);
    v70 = (v69 + 31) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    v72 = MEMORY[0x277D85700];
    *(v71 + 16) = v67;
    *(v71 + 24) = v72;
    *(v71 + 32) = v57;
    v73 = v71 + v68;
    v14 = v100;
    sub_23A7C1B3C(v65, v73, type metadata accessor for PreviewSession);
    *(v71 + v69) = v101;
    v74 = &v108[v71];
    *v74 = v41;
    v74[8] = 0;
    v75 = (v71 + v70);
    v76 = v94;
    v77 = v95;
    *v75 = v66;
    *(v75 + 1) = v77;
    *(v75 + 2) = v76;
    LOWORD(v77) = v109;
    v75[26] = BYTE2(v109);
    *(v75 + 12) = v77;
    *(v71 + ((v70 + 34) & 0xFFFFFFFFFFFFFFF8)) = v90;
    sub_23A7B9D94(0, 0, v97, &unk_23A7FDC00, v71);
  }

  else
  {

    if (qword_27DFA8D50 != -1)
    {
      swift_once();
    }

    sub_23A7C1AE8();
    v78 = swift_allocError();

    sub_23A7B5798(&v14[v62], v78);
  }

  v79 = v98;

  return sub_23A7C1B3C(v14, v79, type metadata accessor for PreviewSession);
}

uint64_t static PreviewApplication.open(items:selectedItemIndex:configuration:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v47 = a2;
  v54 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A60, &qword_23A7FDBC8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = type metadata accessor for PreviewSession(0);
  v14 = v13 - 8;
  v45 = *(v13 - 8);
  v15 = *(v45 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = a4[1];
  v46 = *a4;
  v50 = a4[2];
  v51 = v19;
  v20 = *(a4 + 26);
  v43 = *(a4 + 12);
  v44 = v20;
  type metadata accessor for QLHostRemotePreviewModel(0);
  v21 = swift_allocObject();
  sub_23A7EE0B4();
  v22 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  v23 = sub_23A7EE154();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  v25 = sub_23A7EE124();
  (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
  v26 = *(v14 + 32);

  sub_23A7EDFD4();
  (*(v10 + 104))(v12, *MEMORY[0x277D85778], v9);
  type metadata accessor for PreviewSession.Event(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  sub_23A7EEA74();
  (*(v10 + 8))(v12, v9);
  *&v18[*(v14 + 28)] = v21;
  if (sub_23A7B4CD4(a1, v27))
  {
    v44 = v43 | (v44 << 16);
    v28 = sub_23A7EEA64();
    (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
    sub_23A7C1A20(v18, v52, type metadata accessor for PreviewSession);
    sub_23A7EEA34();

    v29 = v46;
    sub_23A7C1D44(v46, v51, v50);
    v30 = sub_23A7EEA24();
    v31 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    v34[2] = v30;
    v34[3] = v35;
    v34[4] = v21;
    sub_23A7C1B3C(v52, v34 + v31, type metadata accessor for PreviewSession);
    *(v34 + v32) = a1;
    v36 = v34 + v45;
    *v36 = v47;
    v36[8] = v48 & 1;
    v37 = v34 + v33;
    v38 = v50;
    v39 = v51;
    *v37 = v29;
    *(v37 + 1) = v39;
    *(v37 + 2) = v38;
    LOWORD(v39) = v44;
    v37[26] = BYTE2(v44);
    *(v37 + 12) = v39;
    *(v34 + ((v33 + 34) & 0xFFFFFFFFFFFFFFF8)) = v49;
    sub_23A7B9D94(0, 0, v53, &unk_23A7FDC08, v34);
  }

  else
  {

    if (qword_27DFA8D50 != -1)
    {
      swift_once();
    }

    sub_23A7C1AE8();
    v40 = swift_allocError();

    sub_23A7B5798(&v18[v26], v40);
  }

  return sub_23A7C1B3C(v18, v54, type metadata accessor for PreviewSession);
}

uint64_t sub_23A7BD0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 368) = v16;
  *(v8 + 216) = v15;
  *(v8 + 200) = v14;
  *(v8 + 376) = a8;
  *(v8 + 184) = a6;
  *(v8 + 192) = a7;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  *(v8 + 224) = type metadata accessor for PreviewSession(0);
  *(v8 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  *(v8 + 240) = swift_task_alloc();
  v9 = sub_23A7EDFE4();
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  sub_23A7EEA34();
  *(v8 + 272) = sub_23A7EEA24();
  v11 = sub_23A7EE9E4();
  *(v8 + 280) = v11;
  *(v8 + 288) = v10;

  return MEMORY[0x2822009F8](sub_23A7BD224, v11, v10);
}

uint64_t sub_23A7BD224()
{
  if (qword_27DFA8D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = qword_27DFAC690;
  *(v0 + 296) = qword_27DFAC690;
  v4 = *(v1 + 24);
  *(v0 + 372) = v4;

  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  *v5 = v0;
  v5[1] = sub_23A7BD324;

  return sub_23A7AD3A0(v3, v2 + v4);
}

uint64_t sub_23A7BD324(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v4 = v3[35];
    v5 = v3[36];
    v6 = sub_23A7BDB14;
  }

  else
  {

    v4 = v3[35];
    v5 = v3[36];
    v6 = sub_23A7BD440;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23A7BD440()
{
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    v2 = sub_23A7EEC84();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = sub_23A7EED34();
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v3);
    }

    v4 = *(v0 + 184);
    v5 = objc_opt_self();
    v6 = 0;
    v7 = v4 + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE8C140](v6, *(v0 + 184));
      }

      else
      {
        v8 = *(v7 + 8 * v6);
        swift_unknownObjectRetain();
      }

      ++v6;
      v9 = [v5 itemWithPreviewItem_];
      swift_unknownObjectRelease();
      sub_23A7EED14();
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
    }

    while (v2 != v6);
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 376);
  v12 = *(v0 + 192);
  v13 = sub_23A7EDFB4();
  *(v0 + 328) = v13;
  sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  v14 = sub_23A7EE994();
  *(v0 + 336) = v14;

  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];
  *(v0 + 344) = v16;

  if (v10 == 1)
  {
    sub_23A7C8418(MEMORY[0x277D84F90]);
  }

  else
  {

    sub_23A7BDD4C();
  }

  if (v11)
  {
    v17 = -1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *(v0 + 312);
  v19 = sub_23A7EE7C4();
  *(v0 + 352) = v19;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23A7BD7C8;
  v20 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A7BA2FC;
  *(v0 + 104) = &block_descriptor_105;
  *(v0 + 112) = v20;
  [v18 openWithSessionUUID:v13 items:v14 selectedIndex:v17 bundleID:v16 configuration:v19 completionHandler:v0 + 80];
  v3 = v0 + 16;

  return MEMORY[0x282200938](v3);
}

uint64_t sub_23A7BD7C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);
  if (v2)
  {
    v5 = sub_23A7BDC20;
  }

  else
  {
    v5 = sub_23A7BD8F8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23A7BD8F8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);

  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 232);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 176);
  (*(*(v0 + 256) + 16))(v6, v12 + *(v0 + 372), *(v0 + 248));
  sub_23A7C1A20(v12, v8, type metadata accessor for PreviewSession);
  if (v9 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (v9 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  sub_23A7C1B3C(v8, v7, type metadata accessor for PreviewSession);
  v15 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  *(v7 + *(v15 + 20)) = v5;
  v16 = (v7 + *(v15 + 24));
  *v16 = v13;
  v16[1] = v14;
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  swift_beginAccess();
  sub_23A7C1D44(v11, v10, v9);
  swift_unknownObjectRetain();
  sub_23A7AEC64(v7, v6);
  swift_endAccess();
  swift_unknownObjectRelease();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23A7BDB14()
{

  v1 = *(v0 + 372);
  v2 = *(v0 + 176);
  sub_23A7C1AE8();
  v3 = swift_allocError();

  sub_23A7B5798(v2 + v1, v3);

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7BDC20()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 328);

  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = *(v0 + 372);
  v6 = *(v0 + 176);
  sub_23A7C1AE8();
  v7 = swift_allocError();

  sub_23A7B5798(v6 + v5, v7);

  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_23A7BDD4C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9C70, &qword_23A7FE030);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_23A7FDB90;
  *(inited + 40) = 0x800000023A80BCF0;
  v9 = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 72) = v9;
  *(inited + 80) = 0x736F6C43776F6873;
  *(inited + 88) = 0xEF6E6F7474754265;
  *(inited + 96) = v2;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x800000023A80BD30;
  *(inited + 144) = v5;
  *(inited + 168) = v9;
  *(inited + 176) = 0x746E6F4374696465;
  *(inited + 184) = 0xEB00000000746E65;
  *(inited + 192) = v6;
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x800000023A80BD50;
  *(inited + 264) = v9;
  *(inited + 240) = v7;

  v10 = sub_23A7C8418(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9C78, &qword_23A7FE038);
  swift_arrayDestroy();
  if (v3)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = v4;
    *(&v14 + 1) = v3;
    sub_23A7A8AB8(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23A7B39B8(v13, 0xD000000000000015, 0x800000023A80BD10, isUniquelyReferenced_nonNull_native);
  }

  return v10;
}

uint64_t PreviewApplication.PreviewConfiguration.matchScenePlacementID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PreviewApplication.PreviewConfiguration.matchScenePlacementID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

QuickLook::PreviewApplication::PreviewConfiguration __swiftcall PreviewApplication.PreviewConfiguration.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 23) = 0;
  return result;
}

uint64_t PreviewItem.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PreviewItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewItem(0) + 28);
  v4 = sub_23A7EDFE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewItem.hash(into:)(uint64_t a1)
{
  type metadata accessor for PreviewItem(0);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_23A7EE7F4();
}

uint64_t PreviewItem.hashValue.getter()
{
  sub_23A7EEE84();
  type metadata accessor for PreviewItem(0);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23A7EE7F4();
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23A7EDFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23A7BE3D8()
{
  sub_23A7EEE84();
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23A7EE7F4();
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE474(uint64_t a1)
{
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_23A7EE7F4();
}

uint64_t sub_23A7BE4F4(uint64_t a1)
{
  sub_23A7EEE84();
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23A7EE7F4();
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE594()
{
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](0);
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE600(uint64_t a1)
{
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](0);
  return sub_23A7EEEA4();
}

uint64_t PreviewSession.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewSession.close()()
{
  v1[5] = v0;
  v2 = type metadata accessor for PreviewSession(0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v1[10] = swift_task_alloc();
  v4 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v1[11] = v4;
  v1[12] = *(v4 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BE82C, 0, 0);
}

uint64_t sub_23A7BE82C()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[5] + *(v0[6] + 24)), (v3 & 1) != 0))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v18 = v0[12];
    v17 = v0[7];
    v10 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v8 + 72) * v2, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v5, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_23A7C1A20(v4, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v10, v9, type metadata accessor for PreviewSession);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v18 + *(v17 + 80) + v12) & ~*(v17 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_23A7C1B3C(v6, v14 + v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v9, v14 + v13, type metadata accessor for PreviewSession);
    sub_23A7B9D94(0, 0, v7, &unk_23A7FDC20, v14);

    sub_23A7C20A4(v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23A7BEAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_23A7BEB14, 0, 0);
}

uint64_t sub_23A7BEB14()
{
  v1 = v0[18];
  v2 = *(v1 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  type metadata accessor for PreviewSession(0);
  v3 = sub_23A7EDFB4();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_23A7BEC60;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_100;
  v0[14] = v4;
  [v2 closeWithSessionUUID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7BEC60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_23A7C356C;
  }

  else
  {
    v2 = sub_23A7C3578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A7BEDA4()
{
  v1 = *v0;
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](v1);
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BEE18(uint64_t a1)
{
  v2 = *v1;
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](v2);
  return sub_23A7EEEA4();
}

unint64_t sub_23A7BEE5C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23A7C2104(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PreviewSession.perform(action:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for PreviewSession(0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v2[11] = swift_task_alloc();
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v2[12] = v5;
  v2[13] = *(v5 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BF0B8, 0, 0);
}

uint64_t sub_23A7BF0B8()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[6] + *(v0[7] + 24)), (v3 & 1) != 0))
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];
    v19 = v0[9];
    v20 = v0[13];
    v17 = v0[8];
    v18 = v7;
    v10 = v0[6];
    v21 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v8 + 72) * v2, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v5, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_23A7C1A20(v4, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v10, v9, type metadata accessor for PreviewSession);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v20 + *(v17 + 80) + v12) & ~*(v17 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_23A7C1B3C(v6, v14 + v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v9, v14 + v13, type metadata accessor for PreviewSession);
    *(v14 + ((v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
    sub_23A7B9D94(0, 0, v18, &unk_23A7FDC38, v14);

    sub_23A7C20A4(v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23A7BF39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2822009F8](sub_23A7BF3C0, 0, 0);
}

uint64_t sub_23A7BF3C0()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = *(v2 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  type metadata accessor for PreviewSession(0);
  v4 = sub_23A7EDFB4();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_23A7BF518;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_96;
  v0[14] = v5;
  [v3 performActionWithSessionUUID:v4 action:v1 itemIndex:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7BF518()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_23A7BF68C;
  }

  else
  {
    v2 = sub_23A7BF628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A7BF628()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7BF68C(__n128 a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t PreviewSession.update(items:selectedItem:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for PreviewSession(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0) - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v3[15] = swift_task_alloc();
  v7 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BF8E4, 0, 0);
}

uint64_t sub_23A7BF8E4()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[7] + *(v0[8] + 24)), (v3 & 1) != 0))
  {
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v23 = v0[17];
    v9 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[9];
    v22 = v0[13];
    v10 = v0[6];
    v18 = v0[7];
    v24 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v7 + 72) * v2, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v4, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_23A7A8D38(v10, v9, &qword_27DFA9A48, &qword_23A7FDBB0);
    sub_23A7C1A20(v5, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v18, v19, type metadata accessor for PreviewSession);
    v12 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v13 = (v22 + *(v7 + 80) + v12) & ~*(v7 + 80);
    v14 = (v23 + *(v21 + 80) + v13) & ~*(v21 + 80);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v24;
    sub_23A7C150C(v9, v15 + v12);
    sub_23A7C1B3C(v6, v15 + v13, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v19, v15 + v14, type metadata accessor for PreviewSession);

    sub_23A7B9D94(0, 0, v8, &unk_23A7FDC50, v15);

    sub_23A7C20A4(v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_23A7BFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_23A7EDF64();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  v7[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  v7[28] = swift_task_alloc();
  v9 = type metadata accessor for PreviewItem(0);
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BFDE0, 0, 0);
}

uint64_t sub_23A7BFDE0()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[30];
    sub_23A7EED34();
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = v2;
    do
    {
      v7 = v0[32];
      sub_23A7C1A20(v4, v7, type metadata accessor for PreviewItem);
      sub_23A7B4464(v7);
      sub_23A7C20A4(v7, type metadata accessor for PreviewItem);
      sub_23A7EED14();
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
      v4 += v5;
      --v6;
    }

    while (v6);
  }

  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];
  sub_23A7A8D38(v0[19], v10, &qword_27DFA9A48, &qword_23A7FDBB0);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_23A7A8E74(v0[28], &qword_27DFA9A48, &qword_23A7FDBB0);
    v11 = -1;
    goto LABEL_28;
  }

  sub_23A7C1B3C(v0[28], v0[33], type metadata accessor for PreviewItem);
  if (v2)
  {
    v12 = 0;
    v65 = v0[33];
    v13 = v0[30];
    v58 = v0[31];
    v63 = v0[26];
    v64 = v0[29];
    v14 = v0[23];
    v15 = v0[18] + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v61 = (v14 + 32);
    v62 = *(v64 + 24);
    v59 = *(v13 + 72);
    v60 = (v14 + 8);
    while (1)
    {
      v66 = v12;
      v19 = v0[31];
      v20 = v0[27];
      v22 = v0[24];
      v21 = v0[25];
      v23 = v0[22];
      sub_23A7C1A20(v15, v19, type metadata accessor for PreviewItem);
      v24 = *(v63 + 48);
      sub_23A7C1A20(v19 + *(v64 + 24), v20, type metadata accessor for PreviewItem.Source);
      sub_23A7C1A20(v65 + v62, v20 + v24, type metadata accessor for PreviewItem.Source);
      v25 = *v61;
      (*v61)(v21, v20, v23);
      v25(v22, v20 + v24, v23);
      if ((sub_23A7EDF34() & 1) == 0)
      {
        break;
      }

      v26 = *(v58 + 8);
      v27 = *(v65 + 8);
      if (v26)
      {
        if (!v27)
        {
          break;
        }

        v29 = v0[24];
        v28 = v0[25];
        v30 = v0[22];
        if (*v0[31] == *v0[33] && v26 == v27)
        {
          v37 = *v60;
          (*v60)(v0[24], v0[22]);
          v37(v28, v30);
          v11 = v66;
        }

        else
        {
          v32 = sub_23A7EEE04();
          v33 = *v60;
          (*v60)(v29, v30);
          v33(v28, v30);
          v11 = v66;
          if ((v32 & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v34 = v0[25];
        v35 = v0[22];
        v36 = *v60;
        (*v60)(v0[24], v35);
        v36(v34, v35);
        v11 = v66;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      v38 = *(v58 + 16);
      v39 = *(v65 + 16);
      sub_23A7C20A4(v0[31], type metadata accessor for PreviewItem);
      if (v38 == v39)
      {
        goto LABEL_27;
      }

LABEL_11:
      v12 = v11 + 1;
      v15 += v59;
      if (v2 == v12)
      {
        goto LABEL_26;
      }
    }

    v16 = v0[25];
    v17 = v0[22];
    v18 = *v60;
    (*v60)(v0[24], v17);
    v18(v16, v17);
    v11 = v66;
LABEL_10:
    sub_23A7C20A4(v0[31], type metadata accessor for PreviewItem);
    goto LABEL_11;
  }

LABEL_26:
  v11 = -1;
LABEL_27:
  sub_23A7C20A4(v0[33], type metadata accessor for PreviewItem);
LABEL_28:
  if (!v2)
  {
    v45 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_32;
    }

LABEL_41:
    v46 = sub_23A7EEC84();
    if (!v46)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v40 = v0[30];
  v41 = v0[18];
  v67 = MEMORY[0x277D84F90];
  sub_23A7EED34();
  v42 = v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v43 = *(v40 + 72);
  do
  {
    v44 = v0[32];
    sub_23A7C1A20(v42, v44, type metadata accessor for PreviewItem);
    sub_23A7B4464(v44);
    sub_23A7C20A4(v44, type metadata accessor for PreviewItem);
    sub_23A7EED14();
    sub_23A7EED44();
    sub_23A7EED54();
    sub_23A7EED24();
    v42 += v43;
    --v2;
  }

  while (v2);
  v45 = v67;
  if (v67 >> 62)
  {
    goto LABEL_41;
  }

LABEL_32:
  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
    goto LABEL_42;
  }

LABEL_33:
  v47 = sub_23A7EED34();
  if (v46 < 0)
  {
    __break(1u);
    return MEMORY[0x282200938](v47);
  }

  v48 = objc_opt_self();
  v49 = 0;
  do
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x23EE8C140](v49, v45);
    }

    else
    {
      v50 = *(v45 + 8 * v49 + 32);
      swift_unknownObjectRetain();
    }

    ++v49;
    v51 = [v48 itemWithPreviewItem_];
    swift_unknownObjectRelease();
    sub_23A7EED14();
    sub_23A7EED44();
    sub_23A7EED54();
    sub_23A7EED24();
  }

  while (v46 != v49);
LABEL_42:

  v52 = v0[20];
  v53 = *(v52 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  type metadata accessor for PreviewSession(0);
  v54 = sub_23A7EDFB4();
  v0[34] = v54;
  sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  v55 = sub_23A7EE994();
  v0[35] = v55;

  v0[2] = v0;
  v0[3] = sub_23A7C0590;
  v56 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_92;
  v0[14] = v56;
  [v53 updateContentsWithSessionUUID:v54 items:v55 selectedIndex:v11 completionHandler:v0 + 10];
  v47 = (v0 + 2);

  return MEMORY[0x282200938](v47);
}

uint64_t sub_23A7C0590()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_23A7C0768;
  }

  else
  {
    v2 = sub_23A7C06A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A7C06A0()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7C0768(__n128 a1)
{
  v2 = v1[35];
  v3 = v1[34];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t PreviewSession.bringToFront()()
{
  v1[5] = v0;
  v2 = type metadata accessor for PreviewSession(0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v1[10] = swift_task_alloc();
  v4 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v1[11] = v4;
  v1[12] = *(v4 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7C09B8, 0, 0);
}

uint64_t sub_23A7C09B8()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[5] + *(v0[6] + 24)), (v3 & 1) != 0))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v18 = v0[12];
    v17 = v0[7];
    v10 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v8 + 72) * v2, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v5, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_23A7C1A20(v4, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v10, v9, type metadata accessor for PreviewSession);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v18 + *(v17 + 80) + v12) & ~*(v17 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_23A7C1B3C(v6, v14 + v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v9, v14 + v13, type metadata accessor for PreviewSession);
    sub_23A7B9D94(0, 0, v7, &unk_23A7FDC68, v14);

    sub_23A7C20A4(v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23A7C0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_23A7C0CA0, 0, 0);
}

uint64_t sub_23A7C0CA0()
{
  v1 = v0[18];
  v2 = *(v1 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  type metadata accessor for PreviewSession(0);
  v3 = sub_23A7EDFB4();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_23A7C0DEC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_6;
  v0[14] = v4;
  [v2 bringToFrontWithSessionUUID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7C0DEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_23A7C0F60;
  }

  else
  {
    v2 = sub_23A7C0EFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A7C0EFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7C0F60(__n128 a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_23A7C0FD0(uint64_t a1)
{
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_23A7EE7E4();

  return sub_23A7C1170(a1, v2);
}

unint64_t sub_23A7C1068(uint64_t a1, uint64_t a2)
{
  sub_23A7EEE84();
  sub_23A7EE8E4();
  v4 = sub_23A7EEEA4();

  return sub_23A7C1330(a1, a2, v4);
}

unint64_t sub_23A7C10E0(uint64_t a1)
{
  sub_23A7EE844();
  sub_23A7EEE84();
  sub_23A7EE8E4();
  v2 = sub_23A7EEEA4();

  return sub_23A7C13E8(a1, v2);
}

unint64_t sub_23A7C1170(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23A7EDFE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23A7C28F8(&unk_27DFA9C60, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_23A7EE804();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23A7C1330(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23A7EEE04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A7C13E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23A7EE844();
      v8 = v7;
      if (v6 == sub_23A7EE844() && v8 == v9)
      {
        break;
      }

      v11 = sub_23A7EEE04();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_23A7C14EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A7C157C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23A7C150C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_23A7C157C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C80, &unk_23A7FE040);
  v10 = *(type metadata accessor for PreviewItem(0) - 8);
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
  v15 = *(type metadata accessor for PreviewItem(0) - 8);
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

BOOL _s9QuickLook11PreviewItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *(type metadata accessor for PreviewItem(0) + 24);
  v16 = *(v12 + 56);
  sub_23A7C1A20(a1 + v15, v14, type metadata accessor for PreviewItem.Source);
  sub_23A7C1A20(a2 + v15, &v14[v16], type metadata accessor for PreviewItem.Source);
  v17 = *(v5 + 32);
  v17(v10, v14, v4);
  v17(v8, &v14[v16], v4);
  if ((sub_23A7EDF34() & 1) == 0)
  {
    goto LABEL_7;
  }

  v18 = a1[1];
  v19 = a2[1];
  if (!v18)
  {
    v23 = *(v5 + 8);
    v23(v8, v4);
    v23(v10, v4);
    if (!v19)
    {
      return a1[2] == a2[2];
    }

    return 0;
  }

  if (!v19)
  {
LABEL_7:
    v21 = *(v5 + 8);
    v21(v8, v4);
    v21(v10, v4);
    return 0;
  }

  if (*a1 != *a2 || v18 != v19)
  {
    v24 = sub_23A7EEE04();
    v25 = *(v5 + 8);
    v25(v8, v4);
    v25(v10, v4);
    if (v24)
    {
      return a1[2] == a2[2];
    }

    return 0;
  }

  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v10, v4);
  return a1[2] == a2[2];
}

uint64_t sub_23A7C1A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A7C1AE8()
{
  result = qword_27DFA9A70;
  if (!qword_27DFA9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9A70);
  }

  return result;
}

uint64_t sub_23A7C1B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7C1BA4(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewSession(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = v8[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23A7A3828;

  return sub_23A7BD0A4(a1, v14, v13, v6, v1 + v4, v7, v9, v10);
}

uint64_t sub_23A7C1D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PreviewSession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v1[8];
  v10 = sub_23A7EDFE4();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  if (*(v0 + v4 + 16) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + 34) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23A7C1F54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23A7A3828;

  return sub_23A7BEAF4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23A7C20A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A7C2104(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23A7C2114(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_23A7A3828;

  return sub_23A7BF39C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_23A7C229C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PreviewSession(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_23A7A3828;

  return sub_23A7BFC28(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for PreviewSession(0) - 8);
  v6 = *(*v5 + 80);
  v18 = (v3 + v4 + v6) & ~v6;
  v19 = v2 | v6;
  v20 = *(*v5 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  v17 = *(*(v8 - 8) + 8);
  v17(v7, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  v9 = *(v16 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  v15 = *(*(v10 - 8) + 8);
  v15(v7 + v9, v10);

  v11 = v5[8];
  v12 = sub_23A7EDFE4();
  v13 = *(*(v12 - 8) + 8);
  v13(v7 + v11, v12);
  swift_unknownObjectRelease();

  v17(v0 + v18, v8);
  v15(v0 + v18 + *(v16 + 28), v10);

  v13(v0 + v18 + v5[8], v12);

  return MEMORY[0x2821FE8E8](v0, v18 + v20, v19 | 7);
}

uint64_t sub_23A7C2718(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23A7A3240;

  return sub_23A7C0C80(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23A7C28F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23A7C2944()
{
  result = qword_27DFA9AF8;
  if (!qword_27DFA9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9AF8);
  }

  return result;
}

uint64_t sub_23A7C29DC(uint64_t a1)
{
  result = sub_23A7EDF64();
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

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_23A7C2AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 27))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23A7C2B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_23A7C2BEC(uint64_t a1)
{
  sub_23A7C2CA0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for QLPreviewItemEditingMode(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PreviewItem.Source(319);
      if (v3 <= 0x3F)
      {
        sub_23A7EDFE4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23A7C2CA0()
{
  if (!qword_27DFA9B88)
  {
    v0 = sub_23A7EEC34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9B88);
    }
  }
}

void sub_23A7C2D58(uint64_t a1)
{
  if (!qword_27DFA9BA8)
  {
    v2 = type metadata accessor for PreviewSession.Event(255);
    v5 = type metadata accessor for DataProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27DFA9BA8);
    }
  }
}

uint64_t sub_23A7C2E00(uint64_t a1)
{
  result = sub_23A7C2E88();
  if (v2 <= 0x3F)
  {
    result = sub_23A7EDF64();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PreviewItem(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23A7C2E88()
{
  result = qword_27DFA9BC0;
  if (!qword_27DFA9BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DFA9BC0);
  }

  return result;
}

unint64_t sub_23A7C2EFC()
{
  result = qword_27DFA9BD0;
  if (!qword_27DFA9BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9BD0);
  }

  return result;
}

uint64_t sub_23A7C2FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23A7C3080()
{
  result = qword_27DFA9BF0;
  if (!qword_27DFA9BF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DFA9BF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewSession.Failure(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PreviewSession.Failure(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23A7C31C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A7C3230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7EDF64();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_23A7C32AC(uint64_t a1)
{
  result = sub_23A7EDF64();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_23A7C3398(uint64_t a1)
{
  sub_23A7EDFE4();
  if (v1 <= 0x3F)
  {
    sub_23A7C3424(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A7C3424(uint64_t a1)
{
  if (!qword_27DFA9C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9C28, qword_23A7FDF58);
    v1 = sub_23A7EEC34();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFA9C20);
    }
  }
}

unint64_t sub_23A7C348C()
{
  result = qword_27DFA9C30;
  if (!qword_27DFA9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9C30);
  }

  return result;
}

unint64_t sub_23A7C34E0()
{
  result = qword_27DFA9C38;
  if (!qword_27DFA9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9C38);
  }

  return result;
}

uint64_t type metadata accessor for QLWebLocationBarView(uint64_t a1)
{
  result = qword_27DFA9CF0;
  if (!qword_27DFA9CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7C35F0(uint64_t a1)
{
  result = sub_23A7EDF64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_23A7C3678@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for QLWebLocationBarView(0);
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = v5;
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_23A7EDF64();
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D00, &qword_23A7FE0B8);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v51 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D08, &qword_23A7FE0C0);
  MEMORY[0x28223BE20](v55);
  v11 = &v51 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D10, &qword_23A7FE0C8);
  MEMORY[0x28223BE20](v54);
  v13 = &v51 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D18, &qword_23A7FE0D0);
  MEMORY[0x28223BE20](v64);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D20, &qword_23A7FE0D8);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  v61 = &v51 - v17;
  v18 = sub_23A7EDF54();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    if (sub_23A7EE934())
    {
      v22 = sub_23A7EE8F4();
      v23 = sub_23A7C41A8(v22, v20, v21);
      v52 = v8;
      v53 = v6;
      v24 = a1;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = v26;
      a1 = v24;
      v8 = v52;
      v32 = v28;
      v2 = v1;
      v20 = MEMORY[0x23EE8BD30](v23, v31, v32, v30);
      v21 = v33;
      v6 = v53;
    }
  }

  else
  {
    v20 = sub_23A7EDF14();
    v21 = v34;
  }

  v67 = v20;
  v68 = v21;
  (*(v57 + 16))(v58, v2, v60);
  sub_23A7C3D0C();
  v35 = v56;
  sub_23A7EE644();
  v36 = sub_23A7EE6C4();
  KeyPath = swift_getKeyPath();
  (*(v59 + 32))(v11, v35, v8);
  v38 = &v11[*(v55 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  v39 = sub_23A7EE634();
  v40 = swift_getKeyPath();
  sub_23A7AA428(v11, v13, &qword_27DFA9D08, &qword_23A7FE0C0);
  v41 = &v13[*(v54 + 36)];
  *v41 = v40;
  v41[1] = v39;
  v42 = &v15[*(v64 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D30, &qword_23A7FE140) + 28);
  v44 = *MEMORY[0x277CE0B20];
  v45 = sub_23A7EE654();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = swift_getKeyPath();
  sub_23A7AA428(v13, v15, &qword_27DFA9D10, &qword_23A7FE0C8);
  sub_23A7ABC3C(v2, v6);
  v46 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v47 = swift_allocObject();
  sub_23A7C3E28(v6, v47 + v46);
  sub_23A7C3EEC();
  v48 = v61;
  sub_23A7EE6A4();

  sub_23A7C4140(v15);
  LOBYTE(v44) = sub_23A7EE624();
  (*(v62 + 32))(a1, v48, v63);
  v49 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D80, &qword_23A7FE188) + 36);
  *v49 = v44;
  result = 0.0;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  *(v49 + 40) = 1;
  return result;
}

id sub_23A7C3CB8(uint64_t a1)
{
  v1 = sub_23A7EDF24();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

  return v2;
}

unint64_t sub_23A7C3D0C()
{
  result = qword_27DFA9D28;
  if (!qword_27DFA9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D28);
  }

  return result;
}

uint64_t sub_23A7C3D60(uint64_t a1)
{
  v2 = sub_23A7EE654();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23A7EE4B4();
}

uint64_t sub_23A7C3E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLWebLocationBarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23A7C3E8C()
{
  v1 = *(type metadata accessor for QLWebLocationBarView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23A7C3CB8(v2);
}

unint64_t sub_23A7C3EEC()
{
  result = qword_27DFA9D38;
  if (!qword_27DFA9D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D18, &qword_23A7FE0D0);
    sub_23A7C3FA4();
    sub_23A7AA790(&qword_27DFA9D78, &qword_27DFA9D30, &qword_23A7FE140, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D38);
  }

  return result;
}

unint64_t sub_23A7C3FA4()
{
  result = qword_27DFA9D40;
  if (!qword_27DFA9D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D10, &qword_23A7FE0C8);
    sub_23A7C405C();
    sub_23A7AA790(&qword_27DFA9D68, &qword_27DFA9D70, &qword_23A7FE180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D40);
  }

  return result;
}

unint64_t sub_23A7C405C()
{
  result = qword_27DFA9D48;
  if (!qword_27DFA9D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D08, &qword_23A7FE0C0);
    sub_23A7AA790(&qword_27DFA9D50, &qword_27DFA9D00, &qword_23A7FE0B8, MEMORY[0x277CDE598]);
    sub_23A7AA790(&qword_27DFA9D58, &qword_27DFA9D60, &qword_23A7FE178, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D48);
  }

  return result;
}

uint64_t sub_23A7C4140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D18, &qword_23A7FE0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7C41A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_23A7EE904();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_23A7C4258()
{
  result = qword_27DFA9D88;
  if (!qword_27DFA9D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D80, &qword_23A7FE188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D18, &qword_23A7FE0D0);
    sub_23A7C3EEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D88);
  }

  return result;
}

uint64_t sub_23A7C4320()
{
  swift_getKeyPath();
  v3 = v0;
  sub_23A7C4B00();
  sub_23A7EE014();

  v1 = *(v0 + 16);
  sub_23A7A3D7C(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_23A7C43A4()
{
  sub_23A7A3DBC(v0[2], v0[3]);
  v1 = OBJC_IVAR____TtC9QuickLook45QLHostAccessoryViewControllerWrapperViewModel___observationRegistrar;
  v2 = sub_23A7EE054();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel(uint64_t a1)
{
  result = qword_27DFA9D98;
  if (!qword_27DFA9D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7C449C(uint64_t a1)
{
  result = sub_23A7EE054();
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

uint64_t sub_23A7C4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_23A7EE154();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = sub_23A7EEBB4();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7C4678, 0, 0);
}

uint64_t sub_23A7C4678()
{
  v1 = v0[23];
  v2 = v0[21];
  v11 = v0[20];
  v12 = v0[22];
  v3 = v0[18];
  v10 = v0[19];
  v4 = v0[17];
  v5 = v0[12];

  sub_23A7EEBA4();
  sub_23A7EEB94();
  v0[24] = sub_23A7EEBE4();
  (*(v3 + 16))(v10, v5, v4);
  (*(v2 + 16))(v12, v1, v11);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_23A7C47C4;
  v7 = v0[22];
  v8 = v0[19];

  return MEMORY[0x282116B10](v8, v7);
}

uint64_t sub_23A7C47C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_23A7A43AC;
  }

  else
  {
    v4 = sub_23A7C48D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A7C48D8()
{
  *(v0 + 16) = *(v0 + 208);
  v1 = *(v0 + 192);
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_284D5CEE0;
  type metadata accessor for QLAccessoryExtensionProxy();
  v16 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 56) = *v4;
  *(v0 + 80) = v1;
  *(v0 + 88) = &off_284D5CEE0;
  v5 = qword_27DFA8D28;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 136);
  v11 = *(v0 + 96);
  v12 = qword_27DFAC670;

  (*(v9 + 8))(v11, v10);
  (*(v7 + 8))(v6, v8);
  *(v16 + 16) = v12;
  *(v16 + 64) = 0;
  sub_23A7A44BC((v0 + 56), v16 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v13 = *(v0 + 8);
  v14 = *(v0 + 208);

  return v13(v14, v16);
}

unint64_t sub_23A7C4B00()
{
  result = qword_27DFA9F70;
  if (!qword_27DFA9F70)
  {
    type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9F70);
  }

  return result;
}

double sub_23A7C4B58(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v11(a2, a3, a4, a5, a6);

  return result;
}

uint64_t sub_23A7C4BDC(uint64_t a1)
{
  v2 = sub_23A7EE794();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23A7EE7B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7A3798(0, &qword_27DFA9020, 0x277D85C78);
  v10 = sub_23A7EEB64();
  sub_23A7C54BC(a1, v15);
  v11 = swift_allocObject();
  sub_23A7C54F4(v15, v11 + 16);
  aBlock[4] = sub_23A7C552C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  sub_23A7EE7A4();
  v15[0] = MEMORY[0x277D84F90];
  sub_23A7A8AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94E8, &unk_23A7FE270);
  sub_23A7A8B4C();
  sub_23A7EEC54();
  MEMORY[0x23EE8BFD0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_23A7C4E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (_UISolariumEnabled())
  {
    v4 = [v2 parentViewForAccessoryContainer];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 accessoryViewContainer];
      if (v6)
      {
        v25 = v6;
      }

      else
      {
        type metadata accessor for QLAccessoryContainerView();
        v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v25 setTranslatesAutoresizingMaskIntoConstraints_];
        [v25 setHidden_];
        [v5 addSubview_];
        v7 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_23A7FD2F0;
        v9 = [v25 leadingAnchor];
        v10 = [v5 leadingAnchor];
        v11 = [v9 constraintEqualToAnchor_];

        *(v8 + 32) = v11;
        v12 = [v25 trailingAnchor];
        v13 = [v5 trailingAnchor];
        v14 = [v12 constraintEqualToAnchor_];

        *(v8 + 40) = v14;
        v15 = [v25 topAnchor];
        v16 = [v5 topAnchor];
        v17 = [v15 constraintEqualToAnchor_];

        *(v8 + 48) = v17;
        v18 = [v25 bottomAnchor];
        v19 = [v5 bottomAnchor];
        v20 = [v18 constraintEqualToAnchor_];

        *(v8 + 56) = v20;
        sub_23A7A3798(0, &qword_27DFA95B0, 0x277CCAAD0);
        v21 = sub_23A7EE994();

        [v7 activateConstraints_];

        v22 = [v3 accessoryView];
        v23 = *&v25[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView];
        *&v25[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView] = v22;
        v24 = v22;
        sub_23A7A69D0(v23);

        [v3 setAccessoryViewContainer_];
        v5 = v25;
      }
    }
  }
}

double sub_23A7C52A0()
{
  v1 = [v0 accessoryViewContainer];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    type metadata accessor for QLAccessoryContainerView();
    v4 = swift_dynamicCastClass();
    if (v4 && (v5 = v4, [v0 accessoryViewVisible]))
    {
      v6 = *(v5 + OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView);
      if (v6)
      {
        [v6 frame];
        Height = CGRectGetHeight(v9);

        return Height + 20.0;
      }

      else
      {

        return 20.0;
      }
    }

    else
    {
    }
  }

  return v2;
}

void sub_23A7C5380(uint64_t a1)
{
  if (qword_27DFA8D60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27DFA9DA8;
  v3 = *(off_27DFA9DA8 + 2);
  sub_23A7C54BC(a1, v7);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_27DFA9DA8 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23A7C63BC(0, v3 + 1, 1, v2);
    off_27DFA9DA8 = v2;
  }

  v6 = v2[2];
  v5 = v2[3];
  if (v6 >= v5 >> 1)
  {
    v2 = sub_23A7C63BC((v5 > 1), v6 + 1, 1, v2);
  }

  v2[2] = v6 + 1;
  sub_23A7C54F4(v7, &v2[6 * v6 + 4]);
  off_27DFA9DA8 = v2;
  swift_endAccess();
  if (!v3)
  {
    sub_23A7C554C();
  }
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_23A7C554C()
{
  v29 = sub_23A7EDFE4();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v1 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23A7EE374();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23A7EDF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  if (qword_27DFA8D60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_27DFA9DA8 + 2))
  {
    sub_23A7C54BC(off_27DFA9DA8 + 32, v32);
    v27 = [objc_allocWithZone(MEMORY[0x277D41248]) init];
    [v27 setPrintPageRenderer_];
    v13 = objc_opt_self();
    sub_23A7EE334();
    v14 = sub_23A7EE324();
    v26 = v6;
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v16 = [v32[0] uuid];
    sub_23A7EDFC4();

    v17 = sub_23A7EDFB4();
    (*(v28 + 8))(v1, v29);
    v18 = [v13 _QLTemporaryFileURLWithType_uuid_];

    sub_23A7EDF44();
    v19 = sub_23A7EDF24();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_23A7C54BC(v32, v31);
    v21 = v26;
    (*(v7 + 16))(v10, v12, v26);
    v22 = (*(v7 + 80) + 64) & ~*(v7 + 80);
    v23 = swift_allocObject();
    sub_23A7C54F4(v31, v23 + 16);
    (*(v7 + 32))(v23 + v22, v10, v21);
    aBlock[4] = sub_23A7C64FC;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A7C6328;
    aBlock[3] = &block_descriptor_6_0;
    v24 = _Block_copy(aBlock);

    v25 = v27;
    [v27 savePDFToURL:v19 showProgress:0 hostingScene:Strong completionHandler:v24];
    _Block_release(v24);

    (*(v7 + 8))(v12, v21);
    sub_23A7A8CE4(v32);
  }
}

uint64_t sub_23A7C59F0()
{
  v0 = sub_23A7EE794();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23A7EE7B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7A3798(0, &qword_27DFA9020, 0x277D85C78);
  v8 = sub_23A7EEB64();
  aBlock[4] = sub_23A7C5C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_21;
  v9 = _Block_copy(aBlock);
  sub_23A7EE7A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A7A8AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94E8, &unk_23A7FE270);
  sub_23A7A8B4C();
  sub_23A7EEC54();
  MEMORY[0x23EE8BFD0](0, v7, v3, v9);
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_23A7C5C58()
{
  if (qword_27DFA8D60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_27DFA9DA8 + 2))
  {
    sub_23A7C6954(0, 1);
    swift_endAccess();
    sub_23A7C554C();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A7C5CF8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  MEMORY[0x28223BE20](v9);
  v11 = (aBlock - v10);
  v12 = sub_23A7EDF64();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  if ((a2 & 1) == 0 || a3)
  {
    v23 = *(a4 + 32);
    if (a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
    }

    *v11 = v24;
    swift_storeEnumTagMultiPayload();
    v25 = a3;
    v23(v11);
    sub_23A7C6588(v11);
    sub_23A7C59F0();
  }

  else
  {
    [*(a4 + 16) printableRect];
    v16 = v15;
    v18 = v17;
    v19 = *(a4 + 8);
    sub_23A7C54BC(a4, v27);
    (*(v13 + 16))(aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v12);
    v20 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v21 = swift_allocObject();
    sub_23A7C54F4(v27, v21 + 16);
    (*(v13 + 32))(v21 + v20, aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    aBlock[4] = sub_23A7C66D4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A7C62D4;
    aBlock[3] = &block_descriptor_12_0;
    v22 = _Block_copy(aBlock);

    [v19 numberOfPagesWithSize:v22 completionHandler:{v16, v18}];
    _Block_release(v22);
  }
}

void sub_23A7C5FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7EDF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *(a2 + 8);
  sub_23A7C54BC(a2, v14);
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_23A7C54F4(v14, v11 + 16);
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_23A7C6748;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7C4B58;
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);

  [v9 provideCurrentPageAndVisibleRectWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t sub_23A7C6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v19 = *(a2 + 32);
  v20 = sub_23A7EDF64();
  result = (*(*(v20 - 8) + 16))(v18, a3, v20);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = _s12GeneratedPDFVMa(0);
    *&v18[v22[5]] = a4;
    *&v18[v22[6]] = a1;
    v23 = &v18[v22[7]];
    *v23 = a5;
    v23[1] = a6;
    v23[2] = a7;
    v23[3] = a8;
    swift_storeEnumTagMultiPayload();
    v19(v18);
    sub_23A7C6588(v18);
    return sub_23A7C59F0();
  }

  return result;
}

double sub_23A7C62D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_23A7C6328(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

void *sub_23A7C63BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DB0, &qword_23A7FE280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23A7C64FC(uint64_t a1, char a2, void *a3)
{
  v7 = *(sub_23A7EDF64() - 8);
  v8 = v3 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  sub_23A7C5CF8(a1, a2, a3, v3 + 16, v8);
}

uint64_t sub_23A7C6588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = sub_23A7EDF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  MEMORY[0x23EE8D830](v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_23A7C66D4(uint64_t a1)
{
  v3 = *(sub_23A7EDF64() - 8);
  v4 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  sub_23A7C5FAC(a1, v1 + 16, v4);
}

uint64_t sub_23A7C6748(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *(sub_23A7EDF64() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23A7C6180(a1, v5 + 16, v5 + v12, v13, a2, a3, a4, a5);
}

uint64_t _s12GeneratedPDFVMa(uint64_t a1)
{
  result = qword_27DFA9DB8;
  if (!qword_27DFA9DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23A7C6864(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 48 * a3;
  v12 = v7 + 32 + 48 * a2;
  if (result < v12 || result >= v12 + 48 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_23A7C6954(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_23A7C63BC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_23A7C6864(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_23A7C6A3C(uint64_t a1)
{
  sub_23A7EDF64();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23A7C6AD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23A7C6B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_23A7C6C4C()
{
  v1 = v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v2 = *(v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *v1;
  if (v2)
  {
    sub_23A7C6D2C(v5, v4, v2);
    sub_23A7C6D44(v3, v4, 1);
    v6 = [v3 string];
    v7 = sub_23A7EE844();

    sub_23A7C6D54(v3, v4, v2);
    sub_23A7C6D54(v3, v4, v2);
    return v7;
  }

  else
  {
    sub_23A7C6D44(v5, v4, 0);
    return v3;
  }
}

id sub_23A7C6D2C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23A7C6D44(result, a2, a3 & 1);
  }

  return result;
}

id sub_23A7C6D44(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23A7C6D54(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_23A7C6D6C(result, a2, a3 & 1);
  }
}

void sub_23A7C6D6C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_23A7C6DC0()
{
  v1 = v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v2 = *(v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  if (v2)
  {
    sub_23A7C6D44(*v1, *(v1 + 8), 1);
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_23A7C6D44(v3, v4, 0);
    v6 = sub_23A7EE814();
    v7 = [v5 initWithString_];

    sub_23A7C6D54(v3, v4, v2);
    return v7;
  }

  return v3;
}

void sub_23A7C6E8C(void *result)
{
  v2 = &v1[OBJC_IVAR____TtC9QuickLook14QLTextDocument_content];
  v3 = v1[OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16];
  if (v3 != 255)
  {
    v4 = *v2;
    v5 = *(v2 + 1);
    if (v3)
    {
      *v2 = result;
      *(v2 + 1) = v5 & 1;
      v2[16] = 1;
      v6 = result;
    }

    else
    {
      sub_23A7C6D44(*v2, *(v2 + 1), 0);
      v8 = [result string];
      v9 = sub_23A7EE844();
      v11 = v10;

      v12 = *v2;
      v13 = *(v2 + 1);
      *v2 = v9;
      *(v2 + 1) = v11;
      v14 = v2[16];
      v2[16] = 0;
      sub_23A7C6D54(v12, v13, v14);
    }

    [v1 updateChangeCount_];

    sub_23A7C6D54(v4, v5, v3);
  }
}

void sub_23A7C6FFC(uint64_t a1@<X8>)
{
  v43[13] = *MEMORY[0x277D85DE8];
  v4 = sub_23A7EE8A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v10 = *(v1 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16);
  if (v10 == 255)
  {
    *(a1 + 24) = MEMORY[0x277CC9318];
    *a1 = xmmword_23A7FE300;
    return;
  }

  v12 = *v9;
  v11 = *(v9 + 8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DD0, &qword_23A7FE320);
    if (v11)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23A7FE310;
      v14 = *MEMORY[0x277D74090];
      *(inited + 32) = *MEMORY[0x277D74090];
      v15 = *MEMORY[0x277D74128];
      *(inited + 40) = *MEMORY[0x277D74128];
      sub_23A7C6D2C(v12, v11, v10);
      v16 = v14;
      v17 = v15;
      v18 = sub_23A7C8548(inited);
      swift_setDeallocating();
      sub_23A7C8640(inited + 32);
      v19 = [v12 length];
      sub_23A7C74E0(v18);

      type metadata accessor for DocumentAttributeKey(0);
      sub_23A7C8B38(&qword_27DFA8E30, type metadata accessor for DocumentAttributeKey, &unk_23A7FC9A8);
      v20 = sub_23A7EE7C4();

      v43[0] = 0;
      v21 = [v12 fileWrapperFromRange:0 documentAttributes:v19 error:{v20, v43}];

      v22 = v43[0];
      if (v21)
      {
        *(a1 + 24) = sub_23A7C86A8();
        v23 = v22;
        sub_23A7C6D54(v12, v11, v10);
        *a1 = v21;
        return;
      }

      v37 = v43[0];
    }

    else
    {
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_23A7FE310;
      v29 = *MEMORY[0x277D74090];
      *(v28 + 32) = *MEMORY[0x277D74090];
      v30 = *MEMORY[0x277D74130];
      *(v28 + 40) = *MEMORY[0x277D74130];
      sub_23A7C6D2C(v12, v11, v10);
      v31 = v29;
      v32 = v30;
      v33 = sub_23A7C8548(v28);
      swift_setDeallocating();
      sub_23A7C8640(v28 + 32);
      v34 = [v12 length];
      sub_23A7C74E0(v33);

      type metadata accessor for DocumentAttributeKey(0);
      sub_23A7C8B38(&qword_27DFA8E30, type metadata accessor for DocumentAttributeKey, &unk_23A7FC9A8);
      v35 = sub_23A7EE7C4();

      v43[0] = 0;
      v36 = [v12 dataFromRange:0 documentAttributes:v34 error:{v35, v43}];

      v37 = v43[0];
      if (v36)
      {
        v38 = sub_23A7EDF94();
        v40 = v39;

        *(a1 + 24) = MEMORY[0x277CC9318];
        sub_23A7C6D54(v12, v11, v10);
        *a1 = v38;
        *(a1 + 8) = v40;
        return;
      }
    }

    v41 = v37;
    sub_23A7EDEF4();

    swift_willThrow();
    sub_23A7C6D54(v12, v11, v10);
  }

  else
  {
    v42[1] = v2;
    v24 = v6;

    sub_23A7EE874();
    v25 = sub_23A7EE854();
    v27 = v26;
    (*(v5 + 8))(v8, v24);
    *(a1 + 24) = MEMORY[0x277CC9318];
    sub_23A7C6D54(v12, v11, v10);
    if (v27 >> 60 == 15)
    {
      *a1 = xmmword_23A7FE300;
    }

    else
    {
      *a1 = v25;
      *(a1 + 8) = v27;
    }
  }
}

_OWORD *sub_23A7C74E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DF8, &qword_23A7FE3E0);
    v1 = sub_23A7EEDB4();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for DocumentType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_23A7A8AB8((v27 + 8), v25);
    sub_23A7A8AB8(v25, v27);
    sub_23A7EE844();
    sub_23A7EEE84();
    sub_23A7EE8E4();
    v16 = sub_23A7EEEA4();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_23A7A8AB8(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23A7C7860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v7 = sub_23A7EE8A4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_23A7EE374();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A79842C(a1, v50);
  if (swift_dynamicCast())
  {
    v12 = v48;
    v46 = v3;
    v47 = v49;
    if (a3)
    {
      v45 = v4;
      sub_23A7EE344();
      v13 = sub_23A7EE314();
      v15 = v14;
      (*(v9 + 8))(v11, v8);
      if (v13 == v51 && v15 == a3)
      {

        v18 = v45;
      }

      else
      {
        v17 = sub_23A7EEE04();

        v18 = v45;
        if ((v17 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v38 = v47;
      sub_23A7A8C88(v12, v47);
      v39 = sub_23A7C86F4(MEMORY[0x277D84F90]);
      v40 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v41 = sub_23A7C881C(v12, v38, v39, 0);
      sub_23A7A8BF8(v12, v38);
      sub_23A7A8BF8(v12, v38);
      if (v18)
      {
        return;
      }

      v42 = v46 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
      v25 = *(v46 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content);
      v26 = *(v46 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 8);
      *v42 = v41;
      *(v42 + 8) = 0;
      v27 = *(v42 + 16);
      *(v42 + 16) = 1;
      goto LABEL_24;
    }

LABEL_8:
    sub_23A7EE874();
    v19 = v47;
    v20 = sub_23A7EE864();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    sub_23A7A8BF8(v12, v19);
    v24 = v46 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
    v25 = *(v46 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content);
    v26 = *(v46 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 8);
    *v24 = v22;
    *(v24 + 8) = v23;
    v27 = *(v24 + 16);
    *(v24 + 16) = 0;
    goto LABEL_24;
  }

  sub_23A79842C(a1, v50);
  sub_23A7C86A8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v28 = v48;
  v29 = [v48 serializedRepresentation];
  if (!v29)
  {

    return;
  }

  v30 = v3;
  v31 = v29;
  v32 = sub_23A7EDF94();
  v34 = v33;

  sub_23A7A8C88(v32, v34);
  v35 = sub_23A7C86F4(MEMORY[0x277D84F90]);
  v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v37 = sub_23A7C881C(v32, v34, v35, 0);
  sub_23A7A8BF8(v32, v34);
  if (v4)
  {
    sub_23A7A8BF8(v32, v34);

    return;
  }

  sub_23A7A8BF8(v32, v34);
  v43 = v30 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v25 = *(v30 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content);
  v26 = *(v30 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 8);
  *v43 = v37;
  *(v43 + 8) = 1;
  v27 = *(v43 + 16);
  *(v43 + 16) = 1;
LABEL_24:
  sub_23A7C6D54(v25, v26, v27);
}

id QLTextDocument.__allocating_init(fileURL:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23A7EDF24();
  v5 = [v3 initWithFileURL_];

  v6 = sub_23A7EDF64();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id QLTextDocument.init(fileURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9QuickLook14QLTextDocument_content];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = -1;
  v5 = sub_23A7EDF24();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for QLTextDocument();
  v6 = objc_msgSendSuper2(&v9, sel_initWithFileURL_, v5);

  v7 = sub_23A7EDF64();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id QLTextDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLTextDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23A7C7FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E10, &qword_23A7FE3F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98E0, &qword_23A7FD940);
    v7 = sub_23A7EEDB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A7A8D38(v9, v5, &qword_27DFA9E10, &qword_23A7FE3F8);
      result = sub_23A7C0FD0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23A7EDFE4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PreviewApplication.RestorationSession(0);
      result = sub_23A7C8B80(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PreviewApplication.RestorationSession);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_23A7C81FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E08, &qword_23A7FE3F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B8, &qword_23A7FD900);
    v7 = sub_23A7EEDB4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A7A8D38(v9, v5, &qword_27DFA9E08, &qword_23A7FE3F0);
      result = sub_23A7C0FD0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23A7EDFE4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
      result = sub_23A7C8B80(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PreviewApplication.PreviewSessionMap);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_23A7C8418(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98C8, &qword_23A7FD918);
    v3 = sub_23A7EEDB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A7A8D38(v4, &v13, &qword_27DFA9C78, &qword_23A7FE038);
      v5 = v13;
      v6 = v14;
      result = sub_23A7C1068(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23A7A8AB8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23A7C8548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E00, &qword_23A7FE3E8);
    v3 = sub_23A7EEDB4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23A7C3574();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_23A7C8640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DD8, &qword_23A7FE328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A7C86A8()
{
  result = qword_27DFA9DE0;
  if (!qword_27DFA9DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9DE0);
  }

  return result;
}

unint64_t sub_23A7C86F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DE8, &qword_23A7FE3D0);
    v3 = sub_23A7EEDB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A7A8D38(v4, &v11, &qword_27DFA9DF0, &qword_23A7FE3D8);
      v5 = v11;
      result = sub_23A7C3574();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A7A8AB8(&v12, (v3[7] + 32 * result));
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

id sub_23A7C881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = sub_23A7EDF84();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_23A7C8B38(&qword_27DFA8E80, type metadata accessor for DocumentReadingOptionKey, &unk_23A7FCB80);
  v8 = sub_23A7EE7C4();

  v13[0] = 0;
  v9 = [v5 initWithData:v7 options:v8 documentAttributes:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_23A7EDEF4();

    swift_willThrow();
  }

  return v9;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A7C8A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23A7C8AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23A7C8B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A7C8B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A7C8BFC()
{
  result = qword_27DFA9E18;
  if (!qword_27DFA9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E18);
  }

  return result;
}

void sub_23A7C8C50(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    sub_23A7A44D4();
    v7 = a1;
    sub_23A7EE014();

    v8 = *(a3 + 16);
    if (v8)
    {
      sub_23A7A3D7C(v8, *(a3 + 24));

      sub_23A7EEBF4();
      type metadata accessor for QLHostPlaceholderUIView();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v6 setPlaceholderView_];
    }

    else
    {
      sub_23A7EEBF4();
    }
  }

  else
  {
    sub_23A7EED64();
    __break(1u);
  }
}

id sub_23A7C8DE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLHostPrimaryViewControllerWrapper.HostCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for QLHostPrimaryViewControllerWrapper.HostCoordinator(uint64_t a1)
{
  result = qword_27DFA9E30;
  if (!qword_27DFA9E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7C8EBC(uint64_t a1)
{
  sub_23A7C8F5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A7C8F5C(uint64_t a1)
{
  if (!qword_27DFA9E40)
  {
    sub_23A7EE164();
    v1 = sub_23A7EEC34();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFA9E40);
    }
  }
}

void *sub_23A7C8FD0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for QLHostPrimaryViewControllerWrapper.HostCoordinator(0);
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtCV9QuickLook34QLHostPrimaryViewControllerWrapper15HostCoordinator_identity;
  v7 = sub_23A7EE164();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *&v5[OBJC_IVAR____TtCV9QuickLook34QLHostPrimaryViewControllerWrapper15HostCoordinator_parent] = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23A7C9098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7C9464();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23A7C90FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7C9464();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23A7C9160(uint64_t a1)
{
  sub_23A7C9464();
  sub_23A7EE5E4();
  __break(1u);
}

unint64_t sub_23A7C918C()
{
  result = qword_27DFA9E48;
  if (!qword_27DFA9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E48);
  }

  return result;
}

id sub_23A7C91E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result subviews];

    sub_23A7C9418();
    v4 = sub_23A7EE9A4();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23A7EEC84())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EE8C140](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [objc_opt_self() clearColor];
        [v8 setBackgroundColor_];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E60, &qword_23A7FE5D8);
    sub_23A7EE614();
    [v0 setDelegate_];

    result = [v0 view];
    if (result)
    {
      v11 = result;
      v12 = [objc_opt_self() clearColor];
      [v11 setBackgroundColor_];

      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}