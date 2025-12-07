void sub_26C3F20BC(uint64_t a1)
{
  v75 = a1;
  v2 = sub_26C46BB54();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v63 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v68 = &v61[-v5];
  v6 = sub_26C46BCF4();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26C46BCD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497638, &unk_26C46D920);
  MEMORY[0x28223BE20](v11);
  v13 = &v61[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v64 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v61[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v61[-v22];
  v24 = *(v9 + 16);
  v65 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
  v66 = v24;
  v67 = v9 + 16;
  v24(&v61[-v22], (v1 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant), v8);
  v25 = v9;
  v26 = *(v9 + 56);
  v26(v23, 0, 1, v8);
  v77 = v1;
  v27 = *(v1 + 24);
  if (v27)
  {
    v28 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    sub_26C3DDD48(v27 + v28, v21, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    v26(v21, 1, 1, v8);
  }

  v29 = *(v11 + 48);
  sub_26C3DDD48(v23, v13, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DDD48(v21, &v13[v29], &qword_280497268, &qword_26C46CFE0);
  v30 = *(v25 + 48);
  if ((v30)(v13, 1, v8) == 1)
  {
    sub_26C3DE270(v21, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DE270(v23, &qword_280497268, &qword_26C46CFE0);
    if ((v30)(&v13[v29], 1, v8) == 1)
    {
      sub_26C3DE270(v13, &qword_280497268, &qword_26C46CFE0);
LABEL_18:
      v60 = v72;
      sub_26C46BCE4();
      sub_26C3ECC34(v60);
      v73[1](v60, v74);
      return;
    }

    goto LABEL_9;
  }

  v31 = v76;
  sub_26C3DDD48(v13, v76, &qword_280497268, &qword_26C46CFE0);
  if ((v30)(&v13[v29], 1, v8) == 1)
  {
    sub_26C3DE270(v21, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DE270(v23, &qword_280497268, &qword_26C46CFE0);
    (*(v25 + 8))(v31, v8);
LABEL_9:
    sub_26C3DE270(v13, &qword_280497638, &unk_26C46D920);
    v32 = v77;
    goto LABEL_10;
  }

  v58 = v71;
  (*(v25 + 32))(v71, &v13[v29], v8);
  sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
  v62 = sub_26C46C1C4();
  v59 = *(v25 + 8);
  v59(v58, v8);
  sub_26C3DE270(v21, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DE270(v23, &qword_280497268, &qword_26C46CFE0);
  v59(v76, v8);
  sub_26C3DE270(v13, &qword_280497268, &qword_26C46CFE0);
  v32 = v77;
  if (v62)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v32[OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options] == 1)
  {
    goto LABEL_18;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v33 = sub_26C46BFA4();
  __swift_project_value_buffer(v33, qword_280498530);

  v34 = sub_26C46BF84();
  v35 = sub_26C46C404();
  if (!os_log_type_enabled(v34, v35))
  {

    goto LABEL_20;
  }

  LODWORD(v75) = v35;
  v77 = v30;
  v36 = swift_slowAlloc();
  v74 = swift_slowAlloc();
  v78 = v74;
  *v36 = 136315394;
  v37 = v71;
  v66(v71, &v32[v65], v8);
  v38 = v68;
  sub_26C46BCC4();
  v39 = *(v25 + 8);
  v76 = (v25 + 8);
  v73 = v39;
  (v39)(v37, v8);
  v40 = sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v41 = v70;
  v72 = v40;
  v42 = sub_26C46C704();
  v44 = v43;
  v45 = *(v69 + 8);
  v45(v38, v41);
  v46 = sub_26C3E80A8(v42, v44, &v78);

  *(v36 + 4) = v46;
  *(v36 + 12) = 2080;
  v47 = *(v32 + 3);
  if (v47)
  {
    v48 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    v49 = v64;
    sub_26C3DDD48(v47 + v48, v64, &qword_280497268, &qword_26C46CFE0);
    v50 = (v77)(v49, 1, v8);

    if (v50 != 1)
    {
      v51 = v63;
      sub_26C46BCC4();
      (v73)(v49, v8);
      v52 = v70;
      v53 = sub_26C46C704();
      v55 = v54;
      v45(v51, v52);
      v56 = sub_26C3E80A8(v53, v55, &v78);

      *(v36 + 14) = v56;
      _os_log_impl(&dword_26C3D6000, v34, v75, "SyncedModelManager[%s] Not authority of root model so ignoring catchup request. Authority:%s", v36, 0x16u);
      v57 = v74;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v57, -1, -1);
      MEMORY[0x26D6A18D0](v36, -1, -1);
LABEL_20:

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26C3F2A38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C46BD44();
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ModelData(0);
  MEMORY[0x28223BE20](v64);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_26C46BCD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C46BB54();
  result = MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 24);
  if (v22)
  {
    v61 = result;
    v62 = a1;
    v58 = v21;
    v59 = v15;
    v57 = a2;
    v60 = v19;
    v23 = qword_280497148;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_26C46BFA4();
    v25 = __swift_project_value_buffer(v24, qword_280498530);

    v56 = v25;
    v26 = sub_26C46BF84();
    v27 = sub_26C46C404();

    v28 = os_log_type_enabled(v26, v27);
    v54 = v6;
    v55 = v14;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v53 = v22;
      v30 = v29;
      v51 = swift_slowAlloc();
      v52 = v13;
      *&v66[0] = v51;
      *v30 = 136315138;
      v31 = v59;
      v32 = v63;
      (*(v59 + 16))(v63, v3 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v14);
      v33 = v58;
      sub_26C46BCC4();
      (*(v31 + 8))(v32, v14);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = v61;
      v35 = sub_26C46C704();
      v36 = v7;
      v38 = v37;
      (*(v60 + 8))(v33, v34);
      v39 = sub_26C3E80A8(v35, v38, v66);
      v7 = v36;

      *(v30 + 4) = v39;
      _os_log_impl(&dword_26C3D6000, v26, v27, "SyncedModelManager[%s] Received catchup response", v30, 0xCu);
      v40 = v51;
      __swift_destroy_boxed_opaque_existential_1(v51);
      v13 = v52;
      MEMORY[0x26D6A18D0](v40, -1, -1);
      MEMORY[0x26D6A18D0](v30, -1, -1);
    }

    v41 = v62;
    if (sub_26C3EA940() && *(v41 + 24) == 1)
    {
      sub_26C415270(v57);
    }

    v42 = *v41;
    v43 = *(v41 + 8);
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    sub_26C3DDDB0(v42, v43);
    sub_26C46BD34();
    sub_26C3F6970(&qword_280497648, type metadata accessor for ModelData, &unk_26C46F0BC);
    sub_26C46BE54();
    sub_26C41643C(v13, v57);
    v44 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_precatchupMessageBuffer;
    swift_beginAccess();
    v45 = *(v3 + v44);
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = v13;
      *(v3 + v44) = MEMORY[0x277D84F90];
      v48 = *(v54 + 20);
      v49 = v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v50 = *(v7 + 72);
      do
      {
        sub_26C3F69B8(v49, v9, type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem);
        sub_26C3EED28(v9, &v9[v48]);
        sub_26C3F6910(v9, type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem);
        v49 += v50;
        --v46;
      }

      while (v46);

      return sub_26C3F6910(v47, type metadata accessor for ModelData);
    }

    else
    {
      sub_26C3F6910(v13, type metadata accessor for ModelData);
    }
  }

  return result;
}

uint64_t sub_26C3F3210(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BCD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C46BB54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v50 = a2;
    v17 = v9;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v18 = sub_26C46BFA4();
    __swift_project_value_buffer(v18, qword_280498530);

    v19 = sub_26C46BF84();
    v20 = sub_26C46C3E4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v49 = v12;
      v22 = v13;
      v23 = v21;
      v48 = swift_slowAlloc();
      v51[0] = v48;
      *v23 = 136315394;
      (*(v17 + 16))(v11, v4 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
      sub_26C46BCC4();
      (*(v17 + 8))(v11, v8);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = v49;
      v25 = sub_26C46C704();
      v27 = v26;
      (*(v22 + 8))(v15, v24);
      v28 = sub_26C3E80A8(v25, v27, v51);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v50;
      _os_log_impl(&dword_26C3D6000, v19, v20, "SyncedModelManager[%s] Received ownership request for unrecognized model type:%ld in sharing session", v23, 0x16u);
      v29 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x26D6A18D0](v29, -1, -1);
      MEMORY[0x26D6A18D0](v23, -1, -1);
    }

    return 0;
  }

  if (!a2)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v30 = sub_26C46BFA4();
    __swift_project_value_buffer(v30, qword_280498530);

    v31 = sub_26C46BF84();
    v32 = sub_26C46C3E4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v9;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v12;
      v36 = v13;
      v37 = v35;
      v51[0] = v35;
      *v34 = 136315138;
      (*(v33 + 16))(v11, v4 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v8);
      v38 = v32;
      sub_26C46BCC4();
      (*(v33 + 8))(v11, v8);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v39 = v49;
      v40 = sub_26C46C704();
      v42 = v41;
      (*(v36 + 8))(v15, v39);
      v43 = sub_26C3E80A8(v40, v42, v51);

      *(v34 + 4) = v43;
      _os_log_impl(&dword_26C3D6000, v31, v38, "SyncedModelManager[%s] Received ownership request for unregistered model in sharing session", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26D6A18D0](v37, -1, -1);
      MEMORY[0x26D6A18D0](v34, -1, -1);
    }

    return 0;
  }

  if (a2 == 1)
  {
  }

  swift_beginAccess();
  v44 = *(v4 + 32);
  if (*(v44 + 16) && (v45 = sub_26C42C210(a1), (v46 & 1) != 0))
  {
    v47 = *(*(v44 + 56) + 8 * v45);
  }

  else
  {
    v47 = 0;
  }

  swift_endAccess();
  return v47;
}

uint64_t sub_26C3F3798(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v171 = (&v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v170 = &v163 - v8;
  MEMORY[0x28223BE20](v7);
  v169 = &v163 - v9;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497638, &unk_26C46D920);
  v10 = MEMORY[0x28223BE20](v193);
  v182 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v163 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v178 = &v163 - v15;
  MEMORY[0x28223BE20](v14);
  v196 = (&v163 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v172 = (&v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v188 = &v163 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v163 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v168 = &v163 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v167 = &v163 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v163 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v190 = &v163 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v166 = (&v163 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v179 = (&v163 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v177 = &v163 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v165 = &v163 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v163 = &v163 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v175 = (&v163 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v181 = &v163 - v47;
  MEMORY[0x28223BE20](v46);
  v180 = &v163 - v48;
  v174 = sub_26C46BB54();
  v189 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v50 = (&v163 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_26C46BCD4();
  v52 = *(v51 - 8);
  v53 = MEMORY[0x28223BE20](v51);
  v176 = &v163 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = (&v163 - v55);
  if (qword_280497148 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v57 = sub_26C46BFA4();
    __swift_project_value_buffer(v57, qword_280498530);
    isa = v52[2].isa;
    v197 = a1;
    v199 = isa;
    isa(v56, a1, v51);

    v59 = sub_26C46BF84();
    v60 = sub_26C46C404();

    LODWORD(v192) = v60;
    v194 = v59;
    v61 = os_log_type_enabled(v59, v60);
    v187 = v24;
    v183 = v31;
    v195 = v51;
    v198 = v52 + 2;
    v191 = v52;
    v185 = v2;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v164 = v62;
      v173 = swift_slowAlloc();
      v201 = v173;
      *v62 = 136315394;
      v63 = v176;
      v199(v176, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v51);
      sub_26C46BCC4();
      v64 = v51;
      v186 = v52[1].isa;
      v186(v63, v51);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v65 = v174;
      v66 = sub_26C46C704();
      v68 = v67;
      v69 = *(v189 + 8);
      v69(v50, v65);
      v70 = sub_26C3E80A8(v66, v68, &v201);

      v71 = v164;
      *(v164 + 1) = v70;
      *(v71 + 6) = 2080;
      sub_26C46BCC4();
      v72 = sub_26C46C704();
      v74 = v73;
      v69(v50, v65);
      v2 = v185;
      v186(v56, v64);
      v75 = sub_26C3E80A8(v72, v74, &v201);

      *(v71 + 14) = v75;
      v76 = v194;
      _os_log_impl(&dword_26C3D6000, v194, v192, "SyncedModelManager[%s] Removing participant: %s", v71, 0x16u);
      v77 = v173;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v77, -1, -1);
      MEMORY[0x26D6A18D0](v71, -1, -1);

      v78 = v191;
    }

    else
    {

      v186 = v52[1].isa;
      v186(v56, v51);
      v78 = v52;
    }

    v79 = v196;
    v80 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_remoteParticipants;
    v81 = swift_beginAccess();
    v82 = *(v2 + v80);
    MEMORY[0x28223BE20](v81);
    *(&v163 - 2) = v197;

    *(v2 + v80) = sub_26C3F5558(sub_26C3F6A88, (&v163 - 4), v82);

    v83 = *(v2 + v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
    v84 = (LOBYTE(v78[10].isa) + 32) & ~LOBYTE(v78[10].isa);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_26C46D760;
    v199((v85 + v84), v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v195);
    v200 = v83;

    sub_26C46A9EC(v85);

    sub_26C3F6AA8(&v200);

    v86 = v200;
    v87 = v180;
    if (*(v200 + 16))
    {
      v88 = v200 + v84;
      v52 = v195;
      v199(v180, v88, v195);
      v89 = 0;
    }

    else
    {
      v89 = 1;
      v52 = v195;
    }

    v90 = v78[7].isa;
    (v90)(v87, v89, 1, v52);
    v91 = *(v2 + 24);
    if (!v91)
    {
      break;
    }

    v164 = v86;
    v56 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    v92 = v181;
    v199(v181, v197, v52);
    v196 = v78 + 7;
    v192 = v90;
    (v90)(v92, 0, 1, v52);
    v93 = *(v193 + 48);
    sub_26C3DDD48(v56 + v91, v79, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DDD48(v92, v79 + v93, &qword_280497268, &qword_26C46CFE0);
    v94 = v78 + 6;
    v24 = v78[6].isa;
    v95 = (v24)(v79, 1, v52);
    v173 = v91;
    v194 = v94;
    if (v95 == 1)
    {

      sub_26C3DE270(v92, &qword_280497268, &qword_26C46CFE0);
      v96 = (v24)(v79 + v93, 1, v52);
      v97 = v178;
      v98 = v177;
      if (v96 != 1)
      {
        goto LABEL_15;
      }

      sub_26C3DE270(v79, &qword_280497268, &qword_26C46CFE0);
      v50 = v192;
LABEL_17:
      v105 = v165;
      sub_26C3DDD48(v87, v165, &qword_280497268, &qword_26C46CFE0);
      if ((v24)(v105, 1, v52) == 1)
      {
LABEL_59:
        __break(1u);

        __break(1u);
        return result;
      }

      v106 = v163;
      (v191[4].isa)(v163, v105, v52);
      (v50)(v106, 0, 1, v52);
      v107 = v173;
      swift_beginAccess();
      sub_26C3F6B50(v106, v56 + v107);
      v100 = swift_endAccess();
      goto LABEL_19;
    }

    v99 = v175;
    sub_26C3DDD48(v79, v175, &qword_280497268, &qword_26C46CFE0);
    if ((v24)(v79 + v93, 1, v52) == 1)
    {

      sub_26C3DE270(v181, &qword_280497268, &qword_26C46CFE0);
      v186(v99, v52);
      v97 = v178;
      v98 = v177;
LABEL_15:
      v100 = sub_26C3DE270(v79, &qword_280497638, &unk_26C46D920);
      v50 = v192;
      goto LABEL_19;
    }

    v101 = v79 + v93;
    v102 = v176;
    (v191[4].isa)(v176, v101, v195);
    sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);

    v103 = sub_26C46C1C4();
    v104 = v186;
    v186(v102, v195);
    sub_26C3DE270(v181, &qword_280497268, &qword_26C46CFE0);
    v104(v99, v195);
    v52 = v195;
    v100 = sub_26C3DE270(v79, &qword_280497268, &qword_26C46CFE0);
    v50 = v192;
    v97 = v178;
    v98 = v177;
    if (v103)
    {
      goto LABEL_17;
    }

LABEL_19:
    (*(*v173 + 752))(v100);
    v108 = v179;
    v199(v179, v197, v52);
    (v50)(v108, 0, 1, v52);
    v109 = *(v193 + 48);
    sub_26C3DDD48(v98, v97, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DDD48(v108, v97 + v109, &qword_280497268, &qword_26C46CFE0);
    v110 = v194;
    if ((v24)(v97, 1, v52) == 1)
    {
      v56 = v110;
      sub_26C3DE270(v108, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v98, &qword_280497268, &qword_26C46CFE0);
      if ((v24)(v97 + v109, 1, v52) != 1)
      {
        goto LABEL_24;
      }

      sub_26C3DE270(v97, &qword_280497268, &qword_26C46CFE0);
LABEL_26:
      v121 = v169;
      (*(v189 + 56))(v169, 1, 1, v174);
      v122 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      v123 = v173;
      swift_beginAccess();
      v124 = v170;
      sub_26C3DDD48(v123 + v122, v170, &qword_280497430, &unk_26C46D3D0);
      swift_beginAccess();
      sub_26C3E9EB8(v121, v123 + v122);
      swift_endAccess();
      v125 = v123 + v122;
      v56 = v171;
      sub_26C3DDD48(v125, v171, &qword_280497430, &unk_26C46D3D0);
      sub_26C418F90(v124, v56);
      sub_26C3DE270(v56, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v124, &qword_280497430, &unk_26C46D3D0);
      v114 = v121;
      v52 = v195;
      v112 = &qword_280497430;
      v113 = &unk_26C46D3D0;
      goto LABEL_27;
    }

    v111 = v166;
    sub_26C3DDD48(v97, v166, &qword_280497268, &qword_26C46CFE0);
    if ((v24)(v97 + v109, 1, v52) == 1)
    {
      sub_26C3DE270(v179, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v98, &qword_280497268, &qword_26C46CFE0);
      v186(v111, v52);
LABEL_24:
      v112 = &qword_280497638;
      v113 = &unk_26C46D920;
      v114 = v97;
LABEL_27:
      sub_26C3DE270(v114, v112, v113);
      goto LABEL_28;
    }

    v115 = v191 + 4;
    v116 = v97 + v109;
    v117 = v176;
    (v191[4].isa)(v176, v116, v52);
    sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
    v118 = sub_26C46C1C4();
    v56 = v115 - 3;
    v119 = v97;
    v120 = v186;
    v186(v117, v52);
    sub_26C3DE270(v179, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DE270(v98, &qword_280497268, &qword_26C46CFE0);
    v120(v111, v52);
    sub_26C3DE270(v119, &qword_280497268, &qword_26C46CFE0);
    if (v118)
    {
      goto LABEL_26;
    }

LABEL_28:
    v126 = v185;
    swift_beginAccess();
    v127 = *(v126 + 32);
    a1 = (v127 + 64);
    v128 = 1 << *(v127 + 32);
    v129 = -1;
    if (v128 < 64)
    {
      v129 = ~(-1 << v128);
    }

    v51 = v129 & *(v127 + 64);
    v31 = ((v128 + 63) >> 6);
    v175 = v191 + 4;
    v179 = v191 + 1;
    v166 = (v189 + 56);
    v185 = v127;

    v2 = 0;
    v50 = &qword_26C46CFE0;
    v191 = v24;
    v178 = a1;
    v177 = v31;
    while (v51)
    {
LABEL_39:
      v131 = *(*(v185 + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v51)))));
      v132 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
      swift_beginAccess();
      v133 = v190;
      v199(v190, v197, v52);
      (v192)(v133, 0, 1, v52);
      v134 = *(v193 + 48);
      v181 = v132;
      v135 = v184;
      sub_26C3DDD48(v131 + v132, v184, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DDD48(v133, v135 + v134, &qword_280497268, &qword_26C46CFE0);
      v136 = v191;
      v137 = (v191)(v135, 1, v52);
      v189 = v131;
      if (v137 == 1)
      {

        sub_26C3DE270(v190, &qword_280497268, &qword_26C46CFE0);
        v138 = (v136)(v135 + v134, 1, v52);
        v139 = v199;
        if (v138 != 1)
        {
          goto LABEL_44;
        }

        sub_26C3DE270(v135, &qword_280497268, &qword_26C46CFE0);
        v140 = v188;
LABEL_46:
        v146 = v168;
        sub_26C3DDD48(v180, v168, &qword_280497268, &qword_26C46CFE0);
        if ((v191)(v146, 1, v52) == 1)
        {
          __break(1u);
          goto LABEL_59;
        }

        v147 = v167;
        (v175->isa)(v167, v146, v52);
        (v192)(v147, 0, 1, v52);
        v148 = v181;
        swift_beginAccess();
        sub_26C3F6B50(v147, v131 + v148);
        v141 = swift_endAccess();
        v139 = v199;
        goto LABEL_48;
      }

      sub_26C3DDD48(v135, v183, &qword_280497268, &qword_26C46CFE0);
      if ((v136)(v135 + v134, 1, v52) == 1)
      {

        sub_26C3DE270(v190, &qword_280497268, &qword_26C46CFE0);
        v186(v183, v52);
        v139 = v199;
LABEL_44:
        v141 = sub_26C3DE270(v135, &qword_280497638, &unk_26C46D920);
        v140 = v188;
        goto LABEL_48;
      }

      v142 = v176;
      (v175->isa)(v176, v135 + v134, v52);
      sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);

      v143 = v183;
      LODWORD(v165) = sub_26C46C1C4();
      v144 = v142;
      v145 = v186;
      v186(v144, v195);
      sub_26C3DE270(v190, &qword_280497268, &qword_26C46CFE0);
      v52 = v195;
      v145(v143, v195);
      v131 = v189;
      v141 = sub_26C3DE270(v135, &qword_280497268, &qword_26C46CFE0);
      v140 = v188;
      v139 = v199;
      if (v165)
      {
        goto LABEL_46;
      }

LABEL_48:
      v51 &= v51 - 1;
      v149 = v187;
      (*(*v131 + 752))(v141);
      v139(v140, v197, v52);
      (v192)(v140, 0, 1, v52);
      v150 = *(v193 + 48);
      v151 = v182;
      sub_26C3DDD48(v149, v182, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DDD48(v140, v151 + v150, &qword_280497268, &qword_26C46CFE0);
      v24 = v194;
      v152 = v191;
      if ((v191)(v151, 1, v52) == 1)
      {
        sub_26C3DE270(v140, &qword_280497268, &qword_26C46CFE0);
        sub_26C3DE270(v149, &qword_280497268, &qword_26C46CFE0);
        v153 = (v152)(v151 + v150, 1, v52);
        v56 = v151;
        v31 = v177;
        if (v153 == 1)
        {
          v50 = &qword_26C46CFE0;
          sub_26C3DE270(v151, &qword_280497268, &qword_26C46CFE0);
          a1 = v178;
          goto LABEL_53;
        }

        goto LABEL_32;
      }

      v56 = v172;
      sub_26C3DDD48(v151, v172, &qword_280497268, &qword_26C46CFE0);
      if ((v152)(v151 + v150, 1, v52) == 1)
      {
        sub_26C3DE270(v188, &qword_280497268, &qword_26C46CFE0);
        sub_26C3DE270(v187, &qword_280497268, &qword_26C46CFE0);
        v186(v56, v52);
        v56 = v151;
        v31 = v177;
LABEL_32:
        sub_26C3DE270(v56, &qword_280497638, &unk_26C46D920);
        a1 = v178;
        v50 = &qword_26C46CFE0;
        goto LABEL_33;
      }

      v154 = v176;
      (v175->isa)(v176, v151 + v150, v52);
      sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
      v155 = sub_26C46C1C4();
      v24 = v186;
      v186(v154, v52);
      sub_26C3DE270(v188, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v187, &qword_280497268, &qword_26C46CFE0);
      (v24)(v56, v52);
      sub_26C3DE270(v151, &qword_280497268, &qword_26C46CFE0);
      a1 = v178;
      v31 = v177;
      if (v155)
      {
LABEL_53:
        v156 = v169;
        (*v166)(v169, 1, 1, v174);
        v157 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
        v158 = v189;
        swift_beginAccess();
        v159 = v170;
        v24 = &unk_26C46D3D0;
        sub_26C3DDD48(v158 + v157, v170, &qword_280497430, &unk_26C46D3D0);
        swift_beginAccess();
        sub_26C3E9EB8(v156, v158 + v157);
        swift_endAccess();
        v160 = v158 + v157;
        v56 = v171;
        sub_26C3DDD48(v160, v171, &qword_280497430, &unk_26C46D3D0);
        sub_26C418F90(v159, v56);

        sub_26C3DE270(v56, &qword_280497430, &unk_26C46D3D0);
        v161 = v159;
        v52 = v195;
        sub_26C3DE270(v161, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v156, &qword_280497430, &unk_26C46D3D0);
      }

      else
      {
LABEL_33:
      }
    }

    while (1)
    {
      v130 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v130 >= v31)
      {
        sub_26C3DE270(v180, &qword_280497268, &qword_26C46CFE0);
      }

      v51 = *&a1[8 * v130];
      ++v2;
      if (v51)
      {
        v2 = v130;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

  sub_26C3DE270(v87, &qword_280497268, &qword_26C46CFE0);
}

BOOL sub_26C3F54C4(uint64_t a1, uint64_t a2)
{
  sub_26C46BCD4();
  sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
  return (sub_26C46C1C4() & 1) == 0;
}

uint64_t sub_26C3F5558(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26C46BCD4();
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
          sub_26C42FC60(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26C42FC60((v25 > 1), v26 + 1, 1);
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

uint64_t sub_26C3F5828(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_26C46BB54();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26C46BCD4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40[-v12];
  MEMORY[0x28223BE20](v11);
  v53 = &v40[-v14];
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v15 = sub_26C46BFA4();
  __swift_project_value_buffer(v15, qword_280498530);
  v16 = *(v7 + 16);
  v50 = v7 + 16;
  v51 = v16;
  v16(v53, v52, v6);

  v17 = sub_26C46BF84();
  v18 = sub_26C46C404();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v19;
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v19 = 136315394;
    v51(v13, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v6);
    v43 = v17;
    sub_26C46BCC4();
    v46 = v10;
    v42 = *(v7 + 8);
    v42(v13, v6);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_26C46C704();
    v45 = v7;
    v41 = v18;
    v22 = v21;
    v47 = v2;
    v23 = *(v49 + 8);
    v23(v5, v3);
    v24 = sub_26C3E80A8(v20, v22, v54);
    v7 = v45;

    v25 = v48;
    *(v48 + 1) = v24;
    *(v25 + 6) = 2080;
    v26 = v53;
    sub_26C46BCC4();
    v27 = sub_26C46C704();
    v29 = v28;
    v23(v5, v3);
    v2 = v47;
    v42(v26, v6);
    v10 = v46;
    v30 = sub_26C3E80A8(v27, v29, v54);

    v31 = v48;
    *(v48 + 14) = v30;
    v32 = v43;
    _os_log_impl(&dword_26C3D6000, v43, v41, "SyncedModelManager[%s] Adding participant: %s", v31, 0x16u);
    v33 = v44;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v33, -1, -1);
    MEMORY[0x26D6A18D0](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v53, v6);
  }

  v51(v10, v52, v6);
  v34 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_remoteParticipants;
  swift_beginAccess();
  v35 = *(v2 + v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v34) = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_26C42BE10(0, v35[2] + 1, 1, v35);
    *(v2 + v34) = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_26C42BE10((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  (*(v7 + 32))(v35 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v38, v10, v6);
  *(v2 + v34) = v35;
  return swift_endAccess();
}

uint64_t sub_26C3F5D78(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C46BCD4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26C46BB54();
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SyncMessage(0);
  sub_26C3F6970(&qword_280497660, type metadata accessor for SyncMessage, &unk_26C47073C);
  v5 = sub_26C46BE64();
  v7 = v6;
  sub_26C3EB618(v5, v6, a2);

  return sub_26C3DDEA8(v5, v7);
}

uint64_t sub_26C3F61E8()
{

  v1 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
  v2 = sub_26C46BCD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_26C3DD730(*(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler), *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler + 8));

  return v0;
}

uint64_t sub_26C3F629C()
{
  sub_26C3F61E8();

  return swift_deallocClassInstance();
}

uint64_t sub_26C3F631C(uint64_t a1)
{
  result = sub_26C46BCD4();
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

uint64_t sub_26C3F640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SyncMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26C46BCD4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26C3F6510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SyncMessage(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26C46BCD4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26C3F662C(uint64_t a1)
{
  result = type metadata accessor for SyncMessage(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C46BCD4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C3F66C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C46BCF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26C3F6790(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26C46BCF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C3F685C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3F6894(uint64_t a1)
{
  result = sub_26C46BCF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C3F6910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C3F6970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C3F69B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C3F6A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C3F6AA8(uint64_t *a1)
{
  v2 = *(sub_26C46BCD4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26C3F86B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26C3F6BC0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26C3F6B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3F6BC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26C46C6F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26C46BCD4();
        v6 = sub_26C46C294();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26C46BCD4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26C3F70CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26C3F6CEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26C3F6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v60 = sub_26C46BB54();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v58 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = v10;
  MEMORY[0x28223BE20](v9);
  v57 = &v40[-v11];
  v12 = sub_26C46BCD4();
  v13 = MEMORY[0x28223BE20](v12);
  v50 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v40[-v16];
  result = MEMORY[0x28223BE20](v15);
  v55 = &v40[-v19];
  v42 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v52 = (v8 + 8);
    v53 = v22;
    v51 = (v21 - 8);
    v54 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v47 = -v23;
    v48 = (v21 + 16);
    v25 = a1 - a3;
    v49 = v20;
    v41 = v23;
    v26 = v20 + v23 * a3;
    v62 = v12;
    v27 = v55;
    do
    {
      v45 = v24;
      v46 = a3;
      v43 = v26;
      v44 = v25;
      do
      {
        v28 = v53;
        v53(v27, v26, v12);
        v29 = v56;
        v28(v56, v24, v62);
        v30 = v57;
        sub_26C46BCC4();
        v31 = v58;
        sub_26C46BCC4();
        v61 = memcmp(v30, v31, v59);
        v32 = *v52;
        v33 = v31;
        v34 = v60;
        (*v52)(v33, v60);
        v32(v30, v34);
        v35 = *v51;
        v36 = v29;
        v12 = v62;
        (*v51)(v36, v62);
        result = v35(v27, v12);
        if ((v61 & 0x80000000) == 0)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
        }

        v37 = *v48;
        v38 = v50;
        (*v48)(v50, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = v37(v24, v38, v12);
        v24 += v47;
        v26 += v47;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v46 + 1;
      v24 = v45 + v41;
      v25 = v44 - 1;
      v26 = v43 + v41;
    }

    while (v46 + 1 != v42);
  }

  return result;
}

uint64_t sub_26C3F70CC(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v130 = a1;
  v159 = *MEMORY[0x277D85DE8];
  v155 = sub_26C46BB54();
  v6 = *(v155 - 8);
  v7 = MEMORY[0x28223BE20](v155);
  v153 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v8;
  MEMORY[0x28223BE20](v7);
  v152 = &v127 - v9;
  v10 = sub_26C46BCD4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v144 = &v127 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v151 = &v127 - v17;
  result = MEMORY[0x28223BE20](v16);
  v156 = &v127 - v19;
  if (a3[1] >= 1)
  {
    v20 = a3[1];
    v128 = a4;
    v21 = 0;
    v148 = (v6 + 8);
    v149 = v11 + 16;
    v146 = (v11 + 32);
    v147 = (v11 + 8);
    v22 = MEMORY[0x277D84F90];
    v23 = a3;
    v132 = a3;
    v150 = v10;
    v139 = v11;
    while (1)
    {
      if (v21 + 1 >= v20)
      {
        v38 = (v21 + 1);
      }

      else
      {
        v140 = v20;
        v129 = v22;
        v24 = *v23;
        v25 = &(*v23)[*(v11 + 9) * (v21 + 1)];
        v145 = *(v11 + 9);
        v26 = v145;
        v27 = v24;
        v157 = v24;
        v28 = *(v11 + 2);
        v29 = v25;
        v28(v156);
        v131 = v21;
        v30 = v151;
        v142 = v28;
        (v28)(v151, &v27[v26 * v21], v10);
        v31 = v152;
        sub_26C46BCC4();
        v32 = v153;
        sub_26C46BCC4();
        LODWORD(v143) = memcmp(v31, v32, v154);
        v33 = *v148;
        v34 = v155;
        (*v148)(v32, v155);
        v138 = v33;
        (v33)(v31, v34);
        v35 = *(v139 + 1);
        a4 = v147;
        v35(v30, v10);
        v137 = v35;
        v35(v156, v10);
        v36 = (v131 + 2);
        v37 = &v157[v145 * (v131 + 2)];
        while (1)
        {
          v38 = v140;
          if (v140 == v36)
          {
            break;
          }

          v39 = v150;
          v40 = v142;
          (v142)(v156, v37, v150);
          v41 = v151;
          v40(v151, v29, v39);
          v42 = v152;
          sub_26C46BCC4();
          v43 = v153;
          sub_26C46BCC4();
          LODWORD(v157) = memcmp(v42, v43, v154);
          v44 = v43;
          v45 = v155;
          v46 = v138;
          (v138)(v44, v155);
          v46(v42, v45);
          v47 = v41;
          a4 = v147;
          v48 = v137;
          v137(v47, v39);
          v48(v156, v39);
          ++v36;
          v37 += v145;
          v29 += v145;
          if (((v157 ^ v143) & 0x80000000) != 0)
          {
            v38 = v36 - 1;
            break;
          }
        }

        v23 = v132;
        v11 = v139;
        v22 = v129;
        v10 = v150;
        v21 = v131;
        if ((v143 & 0x80000000) != 0)
        {
          if (v38 < v131)
          {
            goto LABEL_124;
          }

          if (v131 < v38)
          {
            v49 = v38;
            a4 = v145 * (v38 - 1);
            v50 = v38 * v145;
            v140 = v38;
            v51 = v131;
            v52 = v131 * v145;
            do
            {
              if (v51 != --v49)
              {
                v53 = *v23;
                if (!v53)
                {
                  goto LABEL_130;
                }

                v157 = *v146;
                (v157)(v134, &v53[v52], v10);
                if (v52 < a4 || &v53[v52] >= &v53[v50])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v52 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                (v157)(&v53[a4], v134, v10);
                v23 = v132;
              }

              ++v51;
              a4 -= v145;
              v50 -= v145;
              v52 += v145;
            }

            while (v51 < v49);
            v11 = v139;
            v38 = v140;
            v22 = v129;
            v21 = v131;
          }
        }
      }

      v54 = v23[1];
      if (v38 >= v54)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v38, v21))
      {
        goto LABEL_123;
      }

      if (&v38[-v21] >= v128)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v21, v128))
      {
        goto LABEL_125;
      }

      if (v21 + v128 >= v54)
      {
        v55 = v23[1];
      }

      else
      {
        v55 = (v21 + v128);
      }

      if (v55 < v21)
      {
LABEL_126:
        __break(1u);
LABEL_127:
        v22 = sub_26C3F84B4(v22);
LABEL_97:
        v158 = v22;
        v122 = *(v22 + 2);
        if (v122 >= 2)
        {
          while (*v23)
          {
            v123 = *&v22[16 * v122];
            v124 = *&v22[16 * v122 + 24];
            v125 = v141;
            sub_26C3F7CF8(&(*v23)[*(v11 + 9) * v123], &(*v23)[*(v11 + 9) * *&v22[16 * v122 + 16]], &(*v23)[*(v11 + 9) * v124], a4);
            v141 = v125;
            if (v125)
            {
            }

            if (v124 < v123)
            {
              goto LABEL_120;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_26C3F84B4(v22);
            }

            if (v122 - 2 >= *(v22 + 2))
            {
              goto LABEL_121;
            }

            v126 = &v22[16 * v122];
            *v126 = v123;
            *(v126 + 1) = v124;
            v158 = v22;
            sub_26C3F8428(v122 - 1);
            v22 = v158;
            v122 = *(v158 + 2);
            if (v122 <= 1)
            {
            }
          }

          goto LABEL_131;
        }
      }

      if (v38 == v55)
      {
LABEL_32:
        v56 = v38;
        if (v38 < v21)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v129 = v22;
        v104 = *v23;
        v105 = *(v11 + 9);
        v145 = *(v11 + 2);
        v106 = &v104[v105 * (v38 - 1)];
        v142 = -v105;
        v131 = v21;
        a4 = v21 - v38;
        v143 = v104;
        v133 = v105;
        v107 = &v104[v38 * v105];
        v135 = v55;
        do
        {
          v140 = v38;
          v136 = v107;
          v108 = v107;
          v137 = a4;
          v138 = v106;
          v109 = v106;
          do
          {
            v110 = v156;
            v111 = v145;
            (v145)(v156, v108, v10);
            v112 = v151;
            v111(v151, v109, v10);
            v113 = v152;
            sub_26C46BCC4();
            v114 = v153;
            sub_26C46BCC4();
            LODWORD(v157) = memcmp(v113, v114, v154);
            v115 = *v148;
            v116 = v114;
            v117 = v155;
            (*v148)(v116, v155);
            v118 = v113;
            v10 = v150;
            v115(v118, v117);
            v11 = *v147;
            (*v147)(v112, v10);
            v11(v110, v10);
            if ((v157 & 0x80000000) == 0)
            {
              break;
            }

            if (!v143)
            {
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
            }

            v119 = *v146;
            v120 = v144;
            (*v146)(v144, v108, v10);
            swift_arrayInitWithTakeFrontToBack();
            (v119)(v109, v120, v10);
            v109 += v142;
            v108 += v142;
          }

          while (!__CFADD__(a4++, 1));
          v38 = v140 + 1;
          v106 = &v138[v133];
          a4 = v137 - 1;
          v107 = &v136[v133];
          v56 = v135;
        }

        while (v140 + 1 != v135);
        v23 = v132;
        v22 = v129;
        v21 = v131;
        if (v135 < v131)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26C3F85AC(0, *(v22 + 2) + 1, 1, v22);
        v22 = result;
      }

      a4 = *(v22 + 2);
      v57 = *(v22 + 3);
      v58 = a4 + 1;
      if (a4 >= v57 >> 1)
      {
        result = sub_26C3F85AC((v57 > 1), a4 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 2) = v58;
      v59 = &v22[16 * a4];
      *(v59 + 4) = v21;
      *(v59 + 5) = v56;
      v60 = *v130;
      if (!*v130)
      {
        goto LABEL_132;
      }

      v135 = v56;
      if (a4)
      {
        v61 = v60;
        while (1)
        {
          v62 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v63 = *(v22 + 4);
            v64 = *(v22 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_53:
            if (v66)
            {
              goto LABEL_111;
            }

            v79 = &v22[16 * v58];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_114;
            }

            v85 = &v22[16 * v62 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_118;
            }

            if (v83 + v88 >= v65)
            {
              if (v65 < v88)
              {
                v62 = v58 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v89 = &v22[16 * v58];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_67:
          if (v84)
          {
            goto LABEL_113;
          }

          v92 = &v22[16 * v62];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_116;
          }

          if (v95 < v83)
          {
            goto LABEL_3;
          }

LABEL_74:
          a4 = v62 - 1;
          if (v62 - 1 >= v58)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*v23)
          {
            goto LABEL_129;
          }

          v100 = *&v22[16 * a4 + 32];
          v101 = *&v22[16 * v62 + 40];
          v102 = v141;
          sub_26C3F7CF8(&(*v23)[*(v139 + 9) * v100], &(*v23)[*(v139 + 9) * *&v22[16 * v62 + 32]], &(*v23)[*(v139 + 9) * v101], v61);
          v141 = v102;
          if (v102)
          {
          }

          if (v101 < v100)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_26C3F84B4(v22);
          }

          if (a4 >= *(v22 + 2))
          {
            goto LABEL_108;
          }

          v103 = &v22[16 * a4];
          *(v103 + 4) = v100;
          *(v103 + 5) = v101;
          v158 = v22;
          result = sub_26C3F8428(v62);
          v22 = v158;
          v58 = *(v158 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v67 = &v22[16 * v58 + 32];
        v68 = *(v67 - 64);
        v69 = *(v67 - 56);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_109;
        }

        v72 = *(v67 - 48);
        v71 = *(v67 - 40);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_110;
        }

        v74 = &v22[16 * v58];
        v76 = *v74;
        v75 = *(v74 + 1);
        v73 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v73)
        {
          goto LABEL_112;
        }

        v73 = __OFADD__(v65, v77);
        v78 = v65 + v77;
        if (v73)
        {
          goto LABEL_115;
        }

        if (v78 >= v70)
        {
          v96 = &v22[16 * v62 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v73 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v73)
          {
            goto LABEL_119;
          }

          if (v65 < v99)
          {
            v62 = v58 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v20 = v23[1];
      v21 = v135;
      v11 = v139;
      if (v135 >= v20)
      {
        goto LABEL_95;
      }
    }
  }

  v23 = a3;
  v22 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v130;
  if (*v130)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_97;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C3F7CF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v76 = a3;
  v79[1] = *MEMORY[0x277D85DE8];
  v71 = sub_26C46BB54();
  v7 = *(v71 - 8);
  v8 = MEMORY[0x28223BE20](v71);
  v69 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v9;
  MEMORY[0x28223BE20](v8);
  v68 = &v57 - v10;
  v75 = sub_26C46BCD4();
  v11 = *(v75 - 8);
  v12 = MEMORY[0x28223BE20](v75);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v57 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v16 == -1)
  {
LABEL_62:
    __break(1u);
  }

  v18 = (a2 - a1) / v16;
  v78 = a4;
  v79[0] = a1;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4;
    v38 = a4 + v20;
    if (v20 >= 1)
    {
      v39 = -v16;
      v62 = (v7 + 8);
      v63 = (v11 + 16);
      v60 = v37;
      v61 = (v11 + 8);
      v40 = v38;
      v74 = a1;
      v64 = v39;
      while (2)
      {
        while (1)
        {
          v58 = v38;
          v41 = a2;
          v42 = a2 + v39;
          v65 = v41;
          v66 = v42;
          while (1)
          {
            v43 = v76;
            if (v41 <= a1)
            {
              v79[0] = v41;
              v77 = v58;
              goto LABEL_59;
            }

            v59 = v38;
            v76 += v39;
            v44 = v40 + v39;
            v45 = *v63;
            v46 = v75;
            (*v63)();
            v47 = v67;
            (v45)(v67, v42, v46);
            v48 = v68;
            sub_26C46BCC4();
            v49 = v69;
            sub_26C46BCC4();
            v72 = memcmp(v48, v49, v70);
            v50 = *v62;
            v51 = v49;
            v52 = v71;
            (*v62)(v51, v71);
            v50(v48, v52);
            v53 = *v61;
            (*v61)(v47, v46);
            v53(v73, v46);
            if (v72 < 0)
            {
              break;
            }

            v38 = v44;
            v54 = v60;
            if (v43 < v40 || v76 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v66;
              v39 = v64;
            }

            else
            {
              v42 = v66;
              v39 = v64;
              if (v43 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v44;
            a1 = v74;
            v41 = v65;
            if (v44 <= v54)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v55 = v60;
          if (v43 < v65 || v76 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v74;
          v38 = v59;
          v39 = v64;
          if (v43 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v74;
        v38 = v59;
        v39 = v64;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v79[0] = a2;
    v77 = v38;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v19;
    v77 = a4 + v19;
    if (v19 >= 1 && a2 < v76)
    {
      v22 = *(v11 + 16);
      v62 = (v7 + 8);
      v63 = v22;
      v64 = v16;
      v65 = v11 + 16;
      v61 = (v11 + 8);
      do
      {
        v74 = a1;
        v23 = v73;
        v24 = v75;
        v25 = v63;
        (v63)(v73, a2, v75);
        v26 = v67;
        (v25)(v67, a4, v24);
        v27 = v68;
        sub_26C46BCC4();
        v28 = v69;
        sub_26C46BCC4();
        v72 = memcmp(v27, v28, v70);
        v29 = a2;
        v30 = *v62;
        v31 = v28;
        v32 = a4;
        v33 = v71;
        (*v62)(v31, v71);
        v30(v27, v33);
        v34 = *v61;
        (*v61)(v26, v24);
        v34(v23, v24);
        if (v72 < 0)
        {
          v35 = v64;
          a2 = v29 + v64;
          v36 = v74;
          a4 = v32;
          if (v74 < v29 || v74 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v74 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v64;
          a4 = v32 + v64;
          v36 = v74;
          if (v74 < v32 || v74 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v74 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 = v36 + v35;
        v79[0] = a1;
      }

      while (a4 < v66 && a2 < v76);
    }
  }

LABEL_59:
  sub_26C3F84C8(v79, &v78, &v77);
  return 1;
}

uint64_t sub_26C3F8428(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26C3F84B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26C3F84C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26C46BCD4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26C3F85AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497670, &unk_26C46D940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_26C3F86C4()
{
  result = qword_280497678;
  if (!qword_280497678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497678);
  }

  return result;
}

uint64_t sub_26C3F8720(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SyncedModelControllerFactory();
  v6[2] = a1;
  v6[3] = a2;
  v7 = v2;
  return sub_26C412E60(v2, sub_26C3F945C, v6);
}

uint64_t sub_26C3F8790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26C3D85A0();
  if (v5)
  {
    v8 = v5;
    v9 = v6;
    v10 = type metadata accessor for SyncedModelTester(0, a2, a3, v7);
    v11 = swift_unknownObjectRetain();
    v12 = sub_26C3DE09C(v11);
    swift_unknownObjectRelease();
    v18[3] = v10;
    v18[0] = v12;

    (v8)(v18);
    sub_26C3DD730(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v13 = v12[3];

    return v13;
  }

  else
  {
    type metadata accessor for SyncedModelController(0);
    v15 = swift_allocObject();
    v16 = swift_unknownObjectRetain();
    v17 = sub_26C43076C(v16, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

uint64_t SyncedModel.statusPublisher.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SyncedModelControllerFactory();
  v7[2] = a1;
  v7[3] = a2;
  v8 = v2;
  v5 = *(sub_26C412E60(v2, sub_26C3F945C, v7) + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);

  return v5;
}

uint64_t SyncedModel.requestOwnership(finishBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SyncedModelControllerFactory();
  v11[2] = a3;
  v11[3] = a4;
  v12 = v4;
  v9 = *sub_26C412E60(v4, sub_26C3F945C, v11);
  (*(v9 + 760))(a1, a2);
}

Swift::Void __swiftcall SyncedModel.releaseOwnership()()
{
  v3 = v1;
  v4 = v0;
  type metadata accessor for SyncedModelControllerFactory();
  v6[2] = v4;
  v6[3] = v3;
  v7 = v2;
  v5 = *sub_26C412E60(v2, sub_26C3F945C, v6);
  (*(v5 + 768))();
}

uint64_t SyncedModel.canBeChanged.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SyncedModelControllerFactory();
  v7[2] = a1;
  v7[3] = a2;
  v8 = v2;
  v5 = *sub_26C412E60(v2, sub_26C3F945C, v7);
  LOBYTE(a2) = (*(v5 + 744))();

  return a2 & 1;
}

uint64_t SyncedModel.owner.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SyncedModelControllerFactory();
  v7[2] = a1;
  v7[3] = a2;
  v8 = v2;
  v5 = *sub_26C412E60(v2, sub_26C3F945C, v7);
  (*(v5 + 752))();
}

uint64_t sub_26C3F8C4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  result = SyncedModel.ownershipRequestHandler.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_26C3F9428;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_26C3F8CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_26C3F93F0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_26C3DD720(v6, v7);
  return SyncedModel.ownershipRequestHandler.setter(v9, v8, v4, v5);
}

uint64_t SyncedModel.ownershipRequestHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SyncedModelControllerFactory();
  v13[2] = a3;
  v13[3] = a4;
  v14 = v4;
  v9 = (sub_26C412E60(v4, sub_26C3F945C, v13) + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  sub_26C3DD730(v10, v11);
}

void (*SyncedModel.ownershipRequestHandler.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = SyncedModel.ownershipRequestHandler.getter(a2, a3);
  v8[1] = v9;
  return sub_26C3F8EAC;
}

uint64_t sub_26C3F8F0C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  type metadata accessor for SyncedModelControllerFactory();
  v12[2] = a1;
  v12[3] = a2;
  v13 = v4;
  v9 = (sub_26C412E60(v4, sub_26C3F945C, v12) + *a3);
  v10 = *v9;
  a4(*v9, v9[1]);

  return v10;
}

uint64_t sub_26C3F8FBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  result = SyncedModel.ownershipChangedHandler.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_26C3F93C8;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_26C3F9038(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_26C3F93A0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_26C3DD720(v6, v7);
  return SyncedModel.ownershipChangedHandler.setter(v9, v8, v4, v5);
}

uint64_t SyncedModel.ownershipChangedHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SyncedModelControllerFactory();
  v13[2] = a3;
  v13[3] = a4;
  v14 = v4;
  v9 = (sub_26C412E60(v4, sub_26C3F945C, v13) + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  sub_26C3DD720(a1, a2);
  sub_26C3DD730(v10, v11);
  sub_26C423144();
  sub_26C3DD730(a1, a2);
}

void (*SyncedModel.ownershipChangedHandler.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = SyncedModel.ownershipChangedHandler.getter(a2, a3);
  v8[1] = v9;
  return sub_26C3F9240;
}

void sub_26C3F9280(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (*a1)[3];
  v10 = (*a1)[2];
  if (a2)
  {
    a4(**a1, v8);
    a3(v7, v8, v10, v9);
    a5(*v6, v6[1]);
  }

  else
  {
    (a3)(**a1, v8, v10, v9, a5);
  }

  free(v6);
}

__n128 sub_26C3F9348(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C3F9368()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C3F9428@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26C3F947C()
{
  type metadata accessor for SyncedModelManagerStore();
  v0 = swift_allocObject();
  v0[2] = 0;
  sub_26C46BBB4();
  swift_allocObject();
  v0[3] = sub_26C46BBA4();
  result = sub_26C3E9CB8(MEMORY[0x277D84F90]);
  v0[4] = result;
  qword_280498588 = v0;
  return result;
}

void sub_26C3F94E8(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = MEMORY[0x277CBF048];
  if (v2)
  {
    v4 = v2;
    v5 = a1;
    v6 = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(v6, v4, *v3);

    v7 = *(v1 + 16);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = a1;
  v7 = a1;
  if (a1)
  {
LABEL_3:
    v8 = v7;
    v9 = CFRunLoopGetCurrent();
    v10 = *v3;
    v11 = v8;
    CFRunLoopAddObserver(v9, v11, v10);
  }

LABEL_4:
}

void sub_26C3F95DC(uint64_t a1)
{
  v2 = v1;
  sub_26C46BB74();
  v4 = *(*(v1 + 32) + 16);
  if ((*(a1 + 16) != 0) == (v4 == 0))
  {
    if (v4)
    {
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v5 = sub_26C46BFA4();
      __swift_project_value_buffer(v5, qword_280498530);
      v6 = sub_26C46BF84();
      v7 = sub_26C46C404();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_26C3D6000, v6, v7, "Setting up CFRunLoopObserver", v8, 2u);
        MEMORY[0x26D6A18D0](v8, -1, -1);
      }

      v9 = *MEMORY[0x277CBECE8];
      v16[4] = sub_26C3FD420;
      v16[5] = v2;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = sub_26C3F9878;
      v16[3] = &block_descriptor_0;
      v10 = _Block_copy(v16);

      v11 = CFRunLoopObserverCreateWithHandler(v9, 0xFFFFFFFuLL, 1u, 0, v10);
      _Block_release(v10);
      sub_26C3F94E8(v11);
    }

    else
    {
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v12 = sub_26C46BFA4();
      __swift_project_value_buffer(v12, qword_280498530);
      v13 = sub_26C46BF84();
      v14 = sub_26C46C404();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_26C3D6000, v13, v14, "Tearing down CFRunLoopObserver since no more active SyncedModelManager", v15, 2u);
        MEMORY[0x26D6A18D0](v15, -1, -1);
      }

      sub_26C3F94E8(0);
    }
  }
}

void sub_26C3F9878(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_26C3F98F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26C3DC9F8(a3, a4, a5, a2, isUniquelyReferenced_nonNull_native);
  v12 = *(a1 + 32);
  *(a1 + 32) = v10;
  sub_26C3F95DC(v12);
}

uint64_t sub_26C3F99A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BB54();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  v11 = *(a1 + 32);

  sub_26C3D93C0(0, 0, 0, v6);
  v8 = *(a1 + 32);
  *(a1 + 32) = v11;
  sub_26C3F95DC(v8);
}

uint64_t sub_26C3F9AB8(uint64_t a1)
{
  v44 = sub_26C46BB54();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497708, &qword_26C46DA80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  v35 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v34 = (v12 + 63) >> 6;
  v36 = v2 + 32;
  v37 = v2 + 16;
  v39 = v2;
  v40 = v10;
  v41 = (v2 + 8);

  v16 = 0;
  v38 = v9;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v39;
      v22 = v40;
      v24 = v44;
      (*(v39 + 16))(v43, *(v40 + 48) + *(v39 + 72) * v21, v44);
      v25 = (*(v22 + 56) + 24 * v21);
      v26 = *v25;
      v27 = v25[1];
      v42 = v25[2];
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497710, &unk_26C46DA88);
      v29 = v7;
      v30 = &v7[*(v28 + 48)];
      (*(v23 + 32))(v29, v43, v24);
      *v30 = v26;
      *(v30 + 1) = v27;
      *(v30 + 2) = v42;
      v7 = v29;
      (*(*(v28 - 8) + 56))(v29, 0, 1, v28);

      v19 = v17;
      v9 = v38;
LABEL_13:
      sub_26C3FD4C0(v7, v9);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497710, &unk_26C46DA88);
      if ((*(*(v31 - 8) + 48))(v9, 1, v31) == 1)
      {
      }

      sub_26C3EB2B8();

      result = (*v41)(v9, v44);
      v16 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v34 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v34;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v34)
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497710, &unk_26C46DA88);
        (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v35 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C3F9EC4()
{

  return swift_deallocClassInstance();
}

uint64_t GroupSession.replaceRootSyncedModel(_:options:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v106 = a2;
  v107 = a1;
  v6 = *v4;
  v7 = sub_26C46BB54();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v6 + *MEMORY[0x277CCB220]);
  v10 = v9[1];
  v98 = *v9;
  v97 = v10;
  sub_26C46BC94();
  v11 = sub_26C46C054();
  v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v101 = &v86 - v12;
  v13 = sub_26C3E03F0();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_26C3FD54C(&qword_280497680, sub_26C3E03F0, MEMORY[0x277D85228]);
  v105 = v11;
  v116[0] = v11;
  v116[1] = v13;
  v112 = v13;
  v99 = WitnessTable;
  v116[2] = WitnessTable;
  v116[3] = v15;
  v111 = v15;
  v104 = sub_26C46BFB4();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v86 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497688, &qword_26C46D9C0);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497690, &qword_26C46D9C8);
  MEMORY[0x28223BE20](v18 - 8);
  v96 = &v86 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497698, &qword_26C46D9D0);
  v88 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v86 = &v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804976A0, &qword_26C46D9D8);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v87 = &v86 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804976A8, &unk_26C46D9E0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v86 - v25;
  v26 = sub_26C46BCD4();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v86 - v31;
  LODWORD(v113) = *a3;
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v33 = sub_26C46BFA4();
  __swift_project_value_buffer(v33, qword_280498530);
  v34 = sub_26C46BF84();
  v35 = sub_26C46C404();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v90 = v27;
    v37 = v30;
    v38 = v26;
    v39 = v23;
    v40 = v20;
    v41 = v22;
    v42 = v4;
    v43 = v36;
    *v36 = 0;
    _os_log_impl(&dword_26C3D6000, v34, v35, "replaceRootSyncedModel called", v36, 2u);
    v44 = v43;
    v4 = v42;
    v22 = v41;
    v20 = v40;
    v23 = v39;
    v26 = v38;
    v30 = v37;
    v27 = v90;
    MEMORY[0x26D6A18D0](v44, -1, -1);
  }

  sub_26C46BC34();
  if (sub_26C46BC54())
  {
    v45 = sub_26C46BC24();
  }

  else
  {
    v45 = 0;
  }

  (*(v27 + 16))(v30, v32, v26);
  v46 = sub_26C46C444();
  LOBYTE(v116[0]) = v113;
  type metadata accessor for SyncedModelManager(0);
  swift_allocObject();
  v47 = sub_26C3EAD84(v30, v45 & 1, v46, v116);
  (*(v27 + 8))(v32, v26);
  if (MEMORY[0x277D84F90] >> 62 && sub_26C46C5F4())
  {
    v48 = sub_26C3FCD9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v48 = MEMORY[0x277D84FA0];
  }

  v116[0] = v48;
  type metadata accessor for SyncedModelGroupSessionMessenger();

  v50 = sub_26C3DE85C(v49);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = (v47 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler);
  v113 = v4;
  v53 = *(v47 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler);
  v54 = *(v47 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler + 8);
  *v52 = sub_26C3FAF50;
  v52[1] = v51;

  sub_26C3DD730(v53, v54);

  type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage(0);
  sub_26C3FD54C(&qword_2804973E0, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage, &unk_26C46D254);
  sub_26C3FD54C(&qword_2804973E8, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage, &unk_26C46D22C);
  v55 = v86;
  sub_26C46BBF4();
  v56 = swift_allocObject();
  v90 = v50;
  swift_weakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_26C3FAF58;
  *(v57 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497410, &qword_26C46D298);
  sub_26C3FBC1C(&qword_2804976B0, &qword_280497698, &qword_26C46D9D0, MEMORY[0x277CCB188]);
  v58 = v87;
  sub_26C46C074();

  (*(v88 + 8))(v55, v20);
  sub_26C3FBC1C(&qword_2804976B8, &qword_2804976A0, &qword_26C46D9D8, MEMORY[0x277CBCB10]);
  v59 = sub_26C46C064();
  (*(v23 + 8))(v58, v22);
  v115 = v59;
  v60 = sub_26C46C444();
  v114 = v60;
  v61 = sub_26C46C434();
  v62 = *(v61 - 8);
  v87 = *(v62 + 56);
  v88 = v62 + 56;
  v63 = v96;
  (v87)(v96, 1, 1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804976C0, &qword_26C46D9F0);
  sub_26C3FBC1C(&qword_2804976C8, &qword_2804976C0, &qword_26C46D9F0, MEMORY[0x277CBCD90]);
  v64 = v89;
  sub_26C46C084();
  sub_26C3DE270(v63, &qword_280497690, &qword_26C46D9C8);

  v65 = swift_allocObject();
  *(v65 + 16) = sub_26C3FB2A8;
  *(v65 + 24) = v47;
  sub_26C3FBC1C(&qword_2804976D0, &qword_2804976A8, &unk_26C46D9E0, MEMORY[0x277CBCD60]);

  v66 = v92;
  sub_26C46C094();

  (*(v91 + 8))(v64, v66);
  sub_26C46BFC4();

  v67 = v93;
  sub_26C46BC64();
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  v70 = v97;
  v69[2] = v98;
  v69[3] = v70;
  v69[4] = v68;
  v69[5] = v47;
  sub_26C3FBC1C(&qword_2804976D8, &qword_280497688, &qword_26C46D9C0, MEMORY[0x277CBCEC8]);

  v71 = v95;
  sub_26C46C094();

  (*(v94 + 8))(v67, v71);
  sub_26C46BFC4();

  v72 = v101;
  sub_26C46BCB4();
  v73 = sub_26C46C444();
  v115 = v73;
  (v87)(v63, 1, 1, v61);
  v74 = v100;
  v75 = v105;
  v76 = v113;
  sub_26C46C084();
  sub_26C3DE270(v63, &qword_280497690, &qword_26C46D9C8);

  (*(v103 + 8))(v72, v75);
  v77 = swift_allocObject();
  v77[2] = v76;
  v77[3] = v47;
  v78 = v106;
  v77[4] = v107;
  v77[5] = v78;

  swift_unknownObjectRetain();
  v79 = v104;
  swift_getWitnessTable();
  sub_26C46C094();

  (*(v102 + 8))(v74, v79);
  sub_26C46BFC4();

  if (qword_280497150 != -1)
  {
    swift_once();
  }

  v80 = qword_280498588;

  v81 = v108;
  v82 = sub_26C46BC74();
  v83 = v116[0];
  MEMORY[0x28223BE20](v82);
  *(&v86 - 6) = v80;
  *(&v86 - 5) = v81;
  v84 = v90;
  *(&v86 - 4) = v47;
  *(&v86 - 3) = v84;
  *(&v86 - 2) = v83;
  sub_26C46BB64();

  return (*(v109 + 8))(v81, v110);
}

uint64_t sub_26C3FAE84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C3FAEBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26C3DE928(a1, a2, a3, sub_26C3FAFF4, 0);
  }

  return result;
}

uint64_t sub_26C3FAF60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C3FAF98(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497718, &qword_26C46DA98);
  return v3(a1, a1 + *(v4 + 48));
}

void sub_26C3FAFF4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v3 = sub_26C46BFA4();
    __swift_project_value_buffer(v3, qword_280498530);
    v4 = a1;
    v5 = sub_26C46BF84();
    v6 = sub_26C46C3E4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
      v10 = sub_26C46C1D4();
      v12 = sub_26C3E80A8(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_26C3D6000, v5, v6, "Send failed: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D6A18D0](v8, -1, -1);
      MEMORY[0x26D6A18D0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_26C3FB1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BCD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26C46BBC4();
  sub_26C3EDA30(a1, a2, v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26C3FB2B0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497410, &qword_26C46D298);
  return v3(v4, v5, &a1[*(v6 + 48)]);
}

uint64_t sub_26C3FB314(int64_t *a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v84 = sub_26C46BB54();
  v4 = *(v84 - 8);
  v5 = MEMORY[0x28223BE20](v84);
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v67 - v7;
  v8 = sub_26C46BCD4();
  v85 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v67 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v67 - v18;
  v19 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    if (qword_280497148 != -1)
    {
LABEL_32:
      swift_once();
    }

    v22 = sub_26C46BFA4();
    __swift_project_value_buffer(v22, qword_280498530);
    swift_retain_n();

    v23 = sub_26C46BF84();
    v24 = sub_26C46C404();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v88 = v80;
      *v25 = 134218754;
      v26 = sub_26C46BC44();
      v86 = v4;
      LODWORD(v79) = v24;
      v27 = *(v26 + 16);

      *(v25 + 4) = v27;

      *(v25 + 12) = 2048;
      *(v25 + 14) = *(v19 + 16);

      *(v25 + 22) = 2080;
      sub_26C3FD54C(&qword_2804976E8, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
      v28 = sub_26C46C304();
      v30 = sub_26C3E80A8(v28, v29, &v88);

      *(v25 + 24) = v30;
      *(v25 + 32) = 2080;
      sub_26C46BC44();

      v31 = sub_26C46C304();
      v33 = v32;

      v34 = sub_26C3E80A8(v31, v33, &v88);

      *(v25 + 34) = v34;
      v4 = v86;
      _os_log_impl(&dword_26C3D6000, v23, v79, "Active participants count changed from:%ld to:%ld. Latest participants:%s. Previous participants:%s", v25, 0x2Au);
      v35 = v80;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v35, -1, -1);
      MEMORY[0x26D6A18D0](v25, -1, -1);
    }

    else
    {
    }

    v88 = sub_26C46BC44();
    v68 = v19;
    sub_26C3FC398(v19);
    v36 = 0;
    v38 = v88 + 56;
    v37 = *(v88 + 56);
    v74 = v88;
    v39 = 1 << *(v88 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v37;
    v19 = (v39 + 63) >> 6;
    v77 = v85 + 32;
    v78 = v85 + 16;
    v86 = v85 + 8;
    v76 = (v4 + 8);
    v79 = v21;
    v80 = v8;
    v70 = v17;
    while (v41)
    {
LABEL_15:
      v43 = v73;
      v44 = v85;
      (*(v85 + 16))(v73, *(v74 + 48) + *(v85 + 72) * (__clz(__rbit64(v41)) | (v36 << 6)), v8);
      (*(v44 + 32))(v17, v43, v8);
      v45 = v8;
      v46 = v82;
      sub_26C46BCC4();
      v47 = v81;
      sub_26C46BC34();
      v48 = v83;
      sub_26C46BCC4();
      v75 = *(v44 + 8);
      v75(v47, v45);
      sub_26C3FD54C(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v49 = v84;
      LOBYTE(v44) = sub_26C46C1C4();
      v4 = v76;
      v50 = *v76;
      (*v76)(v48, v49);
      (v50)(v46, v49);
      v17 = v70;
      if ((v44 & 1) == 0)
      {
        sub_26C3F3798(v70);
      }

      v41 &= v41 - 1;
      v8 = v80;
      v75(v17, v80);
      v21 = v79;
    }

    while (1)
    {
      v42 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v42 >= v19)
      {
        break;
      }

      v41 = *(v38 + 8 * v42);
      ++v36;
      if (v41)
      {
        v36 = v42;
        goto LABEL_15;
      }
    }

    v87 = v68;

    v51 = sub_26C46BC44();
    sub_26C3FC398(v51);

    v52 = 0;
    v54 = (v87 + 56);
    v53 = *(v87 + 56);
    v74 = v87;
    v55 = 1 << *(v87 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & v53;
    v58 = (v55 + 63) >> 6;
    v4 = v69;
    v73 = (v87 + 56);
    while (v57)
    {
LABEL_26:
      v60 = v85;
      v61 = v71;
      (*(v85 + 16))(v71, *(v74 + 48) + *(v85 + 72) * (__clz(__rbit64(v57)) | (v52 << 6)), v8);
      (*(v60 + 32))(v4, v61, v8);
      v62 = v8;
      v63 = v82;
      sub_26C46BCC4();
      v64 = v81;
      sub_26C46BC34();
      v65 = v83;
      sub_26C46BCC4();
      v75 = *(v60 + 8);
      v75(v64, v62);
      sub_26C3FD54C(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v66 = v84;
      LOBYTE(v60) = sub_26C46C1C4();
      v19 = v76;
      v17 = *v76;
      (*v76)(v65, v66);
      (v17)(v63, v66);
      if ((v60 & 1) == 0)
      {
        sub_26C3F5828(v4);
      }

      v57 &= v57 - 1;
      v8 = v80;
      v75(v4, v80);
      v21 = v79;
      v54 = v73;
    }

    while (1)
    {
      v59 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_31;
      }

      if (v59 >= v58)
      {
        break;
      }

      v57 = *&v54[8 * v59];
      ++v52;
      if (v57)
      {
        v52 = v59;
        goto LABEL_26;
      }
    }
  }

  return result;
}

uint64_t sub_26C3FBBD0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C3FBC1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26C3FBC64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v69 = a4;
  v70 = a3;
  v7 = *a2;
  v8 = sub_26C46BB54();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v7 + *MEMORY[0x277CCB220]);
  v11 = *v10;
  v74 = v10[1];
  v75 = v11;
  v12 = sub_26C46BC94();
  v72 = sub_26C46C474();
  v64 = *(v72 - 8);
  v13 = MEMORY[0x28223BE20](v72);
  v15 = &v55 - v14;
  v16 = *(v12 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v67 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v73 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v23 = sub_26C46BFA4();
  __swift_project_value_buffer(v23, qword_280498530);
  v24 = v16;
  v25 = v16[2];
  v25(v22, a1, v12);

  v26 = sub_26C46BF84();
  v27 = sub_26C46C404();

  v63 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v29 = a1;
  v65 = v25;
  v66 = v16 + 2;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v76[0] = v58;
    *v30 = 136315394;
    v25(v15, v22, v12);
    v59 = v29;
    v55 = v16[7];
    v55(v15, 0, 1, v12);
    v31 = sub_26C3DE390(v15, v12);
    v56 = v26;
    v32 = v31;
    v71 = a2;
    v34 = v33;
    v57 = v16;
    v64 = *(v64 + 8);
    (v64)(v15, v72);
    v35 = v16[1];
    v35(v22, v12);
    v36 = sub_26C3E80A8(v32, v34, v76);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    sub_26C46BCA4();
    v55(v15, 0, 1, v12);
    v29 = v59;
    v37 = sub_26C3DE390(v15, v12);
    v39 = v38;
    (v64)(v15, v72);
    v40 = sub_26C3E80A8(v37, v39, v76);

    *(v30 + 14) = v40;
    v41 = v56;
    _os_log_impl(&dword_26C3D6000, v56, v63, "GroupSession state changed to:%s from:%s", v30, 0x16u);
    v42 = v58;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v42, -1, -1);
    MEMORY[0x26D6A18D0](v30, -1, -1);

    v43 = v57;
  }

  else
  {

    v35 = v16[1];
    v35(v22, v12);
    v43 = v24;
  }

  v44 = v73;
  (v43[13])(v73, *MEMORY[0x277CCB200], v12);
  v45 = sub_26C46BC84();
  v35(v44, v12);
  if (v45)
  {
    ObjectType = swift_getObjectType();
    v47 = sub_26C3F8720(ObjectType, v68);
    sub_26C3EB9EC(v47);
  }

  else
  {
    v49 = v67;
    v65(v67, v29, v12);
    v50 = (v43[11])(v49, v12);
    v51 = *MEMORY[0x277CCB1F8];
    result = (v35)(v49, v12);
    if (v50 == v51)
    {
      if (qword_280497150 != -1)
      {
        swift_once();
      }

      v52 = qword_280498588;

      v53 = v60;
      v54 = sub_26C46BC74();
      MEMORY[0x28223BE20](v54);
      *(&v55 - 2) = v52;
      *(&v55 - 1) = v53;
      sub_26C46BB64();

      return (*(v61 + 8))(v53, v62);
    }
  }

  return result;
}

uint64_t sub_26C3FC320()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C3FC398(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_26C46BCD4();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_26C3DE270(v5, &qword_280497268, &qword_26C46CFE0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_26C3FC5B4(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C3FC5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26C46BCD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_26C3FD54C(&qword_2804976E8, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
  v31 = a1;
  v10 = sub_26C46C1A4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_26C3FD54C(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
      v19 = sub_26C46C1C4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26C3FC85C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_26C3FCA94(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_26C3FC85C()
{
  v1 = v0;
  v2 = sub_26C46BCD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804976E0, &qword_26C46DA70);
  v6 = *v0;
  v7 = sub_26C46C4E4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_26C3FCA94(int64_t a1)
{
  v3 = sub_26C46BCD4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_26C46C4A4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_26C3FD54C(&qword_2804976E8, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
        v24 = sub_26C46C1A4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_26C3FCD9C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26C46C5F4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804976F0, &qword_26C46DA78);
      result = sub_26C46C4F4();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26C46C5F4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x26D6A0F50](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_26C46BFD4();
    sub_26C3FD54C(&qword_2804976F8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_26C46C1A4();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_26C3FD54C(&qword_280497700, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_26C46C1C4();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C3FD068(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26C3FD0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C3FD100(uint64_t a1)
{
  v2 = sub_26C46BCD4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804976E0, &qword_26C46DA70);
    v9 = sub_26C46C4F4();
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
      sub_26C3FD54C(&qword_2804976E8, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
      v16 = sub_26C46C1A4();
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
          sub_26C3FD54C(&qword_280497658, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
          v23 = sub_26C46C1C4();
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

void *sub_26C3FD420(uint64_t a1, uint64_t a2)
{
  if (a2 == 4)
  {
    return sub_26C46BB64();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C3FD4C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497708, &qword_26C46DA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3FD54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C3FD59C()
{
  sub_26C46BA94();
  swift_allocObject();
  v0 = sub_26C46BA84();
  result = sub_26C46BA64();
  qword_280498590 = v0;
  return result;
}

uint64_t sub_26C3FD5E8()
{
  sub_26C46BA54();
  swift_allocObject();
  result = sub_26C46BA44();
  qword_280498598 = result;
  return result;
}

uint64_t sub_26C3FD628(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = *(*v2 + 296);
  v5 = *(*v2 + 304);
  v23 = *(*v2 + 280);
  v28 = v23;
  v29 = v4;
  v30 = v5;
  type metadata accessor for SyncedSet.SyncedSetChangeInfo(255, &v28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v24 = TupleTypeMetadata2;
  v25 = v7;
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = (&v23 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = qword_280497748;
  swift_beginAccess();

  v14 = sub_26C46C314();

  v15 = sub_26C46C314();

  *(v2 + v13) = a1;

  v27 = v14;
  sub_26C46C374();
  swift_getWitnessTable();
  v16 = sub_26C46C2F4();
  v27 = v15;
  v17 = sub_26C46C2F4();
  v18 = sub_26C46BCD4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v12, v26, v18);
  (*(v19 + 56))(v12, 0, 1, v18);
  v20 = v24;
  v21 = *(v24 + 48);
  *v10 = v16;
  v10[1] = v17;
  sub_26C3E9F28(v12, v10 + v21, &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  return (*(v25 + 8))(v10, v20);
}

uint64_t sub_26C3FD988(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7628147 && a2 == 0xE300000000000000;
  if (v3 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEA00000000007365 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C46C764();

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

unint64_t sub_26C3FDAB0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_26C3FDAC0(char a1)
{
  if (!a1)
  {
    return 7628147;
  }

  if (a1 == 1)
  {
    return 0x6E6F7473626D6F74;
  }

  return 0x6D617473656D6974;
}

uint64_t sub_26C3FDB50(unsigned __int8 a1)
{
  sub_26C46C814();
  MEMORY[0x26D6A1230](a1);
  return sub_26C46C844();
}

uint64_t sub_26C3FDB98(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = v3;
  v10[1] = a2;
  v13[0] = v3;
  v13[1] = v11;
  type metadata accessor for SyncedSet.Element.CodingKeys(255, v13);
  swift_getWitnessTable();
  v4 = sub_26C46C6E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8B4();
  LOBYTE(v13[0]) = 0;
  v8 = v14;
  sub_26C46C6D4();
  if (!v8)
  {
    LOBYTE(v13[0]) = 1;
    type metadata accessor for LamportTimestamp(0);
    sub_26C40C388(&qword_280497448, type metadata accessor for LamportTimestamp, &unk_26C46DFB8);
    sub_26C46C6D4();
    LOBYTE(v13[0]) = 2;
    sub_26C46BB54();
    sub_26C40C388(&qword_2804973D0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_26C46C6B4();
    LOBYTE(v13[0]) = 3;
    sub_26C46C6B4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26C3FDE50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v36 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - v14;
  v40 = type metadata accessor for LamportTimestamp(0);
  v15 = MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v44 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  type metadata accessor for SyncedSet.Element.CodingKeys(255, &v47);
  swift_getWitnessTable();
  v45 = sub_26C46C694();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v19 = &v33 - v18;
  v43 = a2;
  v47 = a2;
  v48 = a3;
  v41 = a3;
  v49 = a4;
  v50 = a5;
  v20 = type metadata accessor for SyncedSet.Element(0, &v47);
  v34 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v19;
  v23 = v51;
  sub_26C46C894();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v39;
  v25 = v38;
  v51 = a1;
  LOBYTE(v47) = 0;
  v26 = v43;
  sub_26C46C684();
  (*(v25 + 32))(v22, v44, v26);
  LOBYTE(v47) = 1;
  sub_26C40C388(&qword_280497438, type metadata accessor for LamportTimestamp, &unk_26C46DFE0);
  sub_26C46C684();
  sub_26C40C2E8(v24, &v22[v20[13]], type metadata accessor for LamportTimestamp);
  sub_26C46BB54();
  LOBYTE(v47) = 2;
  sub_26C40C388(&qword_2804973B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v27 = v37;
  sub_26C46C664();
  v28 = v20[14];
  v44 = v22;
  sub_26C3E9F28(v27, &v22[v28], &qword_280497430, &unk_26C46D3D0);
  LOBYTE(v47) = 3;
  v29 = v36;
  sub_26C46C664();
  (*(v42 + 8))(v46, v45);
  v30 = v44;
  sub_26C3E9F28(v29, &v44[v20[15]], &qword_280497430, &unk_26C46D3D0);
  v31 = v34;
  (*(v34 + 16))(v35, v30, v20);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return (*(v31 + 8))(v30, v20);
}

uint64_t sub_26C3FE4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  v17 = type metadata accessor for SyncedSet.Element(0, v19);
  sub_26C40C2E8(a2, a9 + v17[13], type metadata accessor for LamportTimestamp);
  sub_26C3E9F28(a3, a9 + v17[14], &qword_280497430, &unk_26C46D3D0);
  return sub_26C3E9F28(a4, a9 + v17[15], &qword_280497430, &unk_26C46D3D0);
}

uint64_t sub_26C3FE5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C3FE63C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26C3FE6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C3FE718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_26C3FE788@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3FDAB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C3FE7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C3FD988(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_26C3FE7E4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3FDAB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C3FE80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C3FE860(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26C3FE8EC(uint64_t a1)
{
  sub_26C46C814();
  sub_26C3FDB28(v3, *v1);
  return sub_26C46C844();
}

uint64_t sub_26C3FE948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C3E16D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26C3FE97C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26C40B6EC();
  *a2 = result;
  return result;
}

uint64_t sub_26C3FE9B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C3FEA04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SyncedSet.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SyncedSet.init(from:)(a1);
  return v2;
}

int64x2_t **SyncedSet.init(from:)(void *a1)
{
  v99 = a1;
  v2 = *v1;
  v3 = type metadata accessor for LamportTimestamp(0);
  v77 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v96 = &v72 - v11;
  v12 = v2[17].i64[1];
  v81 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v95 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v94 = &v72 - v17;
  v18 = v2[19].i64[0];
  v86 = v2;
  v100 = v2[18];
  *&v19 = vdupq_laneq_s64(v100, 1).u64[0];
  v20.i64[0] = v12;
  *(&v19 + 1) = v18;
  *v110 = vzip1q_s64(v20, v100);
  *&v110[16] = v19;
  v79 = type metadata accessor for SyncedSet.Element(0, v110);
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v111 = &v72 - v21;
  *&v110[8] = v100;
  *v110 = v12;
  *&v110[24] = v18;
  v87 = type metadata accessor for SyncedSet.CodingKeys(255, v110);
  WitnessTable = swift_getWitnessTable();
  v83 = sub_26C46C694();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v23 = &v72 - v22;
  v24 = qword_280497720;
  v25 = v3;
  swift_getTupleTypeMetadata2();
  v26 = sub_26C46C284();
  v27 = sub_26C40AFD4(v26, v12, v3, v18);

  v90 = v24;
  *(v1 + v24) = v27;
  v28 = v23;
  v29 = qword_280497728;
  v30 = sub_26C46C284();
  v98 = v25;
  v31 = sub_26C40AFD4(v30, v12, v25, v18);

  *(v1 + v29) = v31;
  v92 = qword_280497730;
  *(v1 + qword_280497730) = 0;
  v93 = qword_280497738;
  *(v1 + qword_280497738) = 0;
  v32 = swift_conformsToProtocol2();
  if (v12)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = !v33;
  *(v1 + qword_280497740) = v34;
  v35 = qword_2804985A0;
  *&v110[8] = v100;
  *v110 = v12;
  *&v110[24] = v18;
  type metadata accessor for SyncedSet.SyncedSetChangeInfo(255, v110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata2();
  sub_26C46C014();
  v36 = sub_26C46C004();
  v85 = v35;
  v91 = v1;
  *(v1 + v35) = v36;
  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  v37 = v89;
  sub_26C46C894();
  if (v37)
  {
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v99);
    v40 = v91;
  }

  else
  {
    v38 = v81;
    v89 = v18;
    LOBYTE(v105) = 0;
    sub_26C46C654();
    v39 = 0;
    v72 = v28;
    v73 = v29;
    v42 = sub_26C46BB54();
    v109 = sub_26C46C114();
    v74 = v42;
    v108 = sub_26C46C114();
    v107 = sub_26C46C124();
    v43 = sub_26C46C114();
    v106 = v43;
    __swift_project_boxed_opaque_existential_1(v110, *&v110[24]);
    v44 = sub_26C46C734();
    if (v44)
    {
      v45 = v72;
    }

    else
    {
      v46 = (v38 + 2);
      WitnessTable = (v38 + 1);
      v87 = (v77 + 56);
      v81 = (v76 + 8);
      v47 = v97;
      v48 = v79;
      v49 = v111;
      v80 = v46;
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v110, *&v110[24]);
        swift_getWitnessTable();
        sub_26C46C724();
        if (v39)
        {

          (*(v82 + 8))(v72, v83);
          __swift_destroy_boxed_opaque_existential_1(v110);
          goto LABEL_9;
        }

        v51 = *v46;
        (*v46)(v47, v49, v12);
        sub_26C46C374();
        v52 = v94;
        sub_26C46C334();
        (*WitnessTable)(v52, v12);
        v51(v52, v111, v12);
        v53 = v96;
        sub_26C3E91AC(&v111[v48[13]], v96, type metadata accessor for LamportTimestamp);
        (*v87)(v53, 0, 1, v98);
        sub_26C46C174();
        v54 = v52;
        v49 = v111;
        sub_26C46C194();
        v51(v95, v49, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          v51(v54, v49, v12);
          v55 = &v49[v48[14]];
          v56 = v84;
          v79 = 0;
          sub_26C3DDD48(v55, v84, &qword_280497430, &unk_26C46D3D0);
          sub_26C46C174();
          sub_26C46C194();
          v51(v54, v49, v12);
          v39 = v79;
          sub_26C3DDD48(&v49[v48[15]], v56, &qword_280497430, &unk_26C46D3D0);
          v46 = v80;
          sub_26C46C194();
        }

        (*v81)(v49, v48);
        __swift_project_boxed_opaque_existential_1(v110, *&v110[24]);
        v50 = sub_26C46C734();
        v47 = v97;
      }

      while ((v50 & 1) == 0);
      v45 = v72;
      v43 = v106;
    }

    v40 = v91;
    v111 = qword_280497748;
    *(v91 + qword_280497748) = v107;
    v57 = v109;
    v58 = v92;
    swift_beginAccess();
    *(v40 + v58) = v57;

    v59 = v108;
    v60 = v93;
    swift_beginAccess();
    *(v40 + v60) = v59;

    v61 = v73;
    swift_beginAccess();
    *(v40 + v61) = v43;

    sub_26C46C174();
    v101[0] = 1;
    v62 = sub_26C40C388(&qword_280497438, type metadata accessor for LamportTimestamp, &unk_26C46DFE0);
    v102 = v100.i64[0];
    v103 = v62;
    swift_getWitnessTable();
    v63 = v83;
    v64 = v45;
    sub_26C46C684();
    v65 = v78;
    if (!v39)
    {
      v66 = v104;
      v67 = v90;
      swift_beginAccess();
      *(v40 + v67) = v66;

      LOBYTE(v104) = 2;
      v68 = v75;
      sub_26C46C684();
      v69 = v64;
      sub_26C3E91AC(v68, v65, type metadata accessor for LamportTimestamp);
      *(v40 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
      *(v40 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
      *(v40 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
      v70 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      v71 = sub_26C3E8EF0(MEMORY[0x277D84F90]);
      sub_26C40C454(v68, type metadata accessor for LamportTimestamp);
      (*(v82 + 8))(v69, v63);
      *(v40 + v70) = v71;
      sub_26C40C2E8(v65, v40 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

      __swift_destroy_boxed_opaque_existential_1(v110);
      __swift_destroy_boxed_opaque_existential_1(v99);

      return v40;
    }

    (*(v82 + 8))(v45, v63);
    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(v99);
    v40 = v91;
  }

  swift_deallocPartialClassInstance();
  return v40;
}

void *SyncedSet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v123 = type metadata accessor for LamportTimestamp(0);
  v128 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v94[0] = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v111 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v110 = v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v100 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = v94 - v13;
  v14 = v4[35];
  v15 = v4[36];
  v16 = v4[37];
  v17 = v4[38];
  v136 = v14;
  v137 = v15;
  v138 = v16;
  v139 = v17;
  v109 = type metadata accessor for SyncedSet.Element(0, &v136);
  v126 = *(v109 - 8);
  v18 = MEMORY[0x28223BE20](v109);
  v99 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v98 = v94 - v21;
  v102 = *(v14 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v127 = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v112 = v94 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v117 = v94 - v27;
  MEMORY[0x28223BE20](v26);
  v124 = v94 - v28;
  v29 = sub_26C46C474();
  MEMORY[0x28223BE20](v29 - 8);
  v121 = v94 - v30;
  v136 = v14;
  v137 = v15;
  v108 = v15;
  v120 = v16;
  v138 = v16;
  v139 = v17;
  v130 = v17;
  type metadata accessor for SyncedSet.CodingKeys(255, &v136);
  swift_getWitnessTable();
  v31 = sub_26C46C6E4();
  v96 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = v94 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8B4();
  v135[0] = 0;
  v97 = v31;
  v95 = v33;
  sub_26C46C6A4();
  v34 = qword_280497748;
  swift_beginAccess();
  v35 = *(v2 + v34);
  if ((v35 & 0xC000000000000001) != 0)
  {

    sub_26C46C4C4();
    result = sub_26C46C354();
    v35 = v140;
    v37 = v141;
    v39 = v142;
    v38 = v143;
    v40 = v144;
  }

  else
  {
    v41 = -1 << *(v35 + 32);
    v37 = v35 + 56;
    v39 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v40 = v43 & *(v35 + 56);

    v38 = 0;
  }

  v44 = v14;
  v116 = qword_280497728;
  v122 = (v102 + 56);
  v94[1] = v39;
  v45 = (v39 + 64) >> 6;
  v113 = (v102 + 16);
  v115 = (v102 + 32);
  v114 = (v128 + 48);
  v105 = (v126 + 8);
  v106 = (v102 + 8);
  v125 = v14;
  v46 = v101;
  v47 = v124;
  v48 = v127;
  v119 = v35;
  v118 = v37;
  v103 = v45;
  v104 = v2;
  while (1)
  {
    v107 = v40;
    v126 = v38;
    if ((v35 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_26C46C4D4())
    {
LABEL_27:
      (*v122)(v121, 1, 1, v44);
      sub_26C40B328(v119);
      v86 = qword_280497720;
      swift_beginAccess();
      v131 = *(v2 + v86);
      v145 = 1;
      sub_26C46C174();
      v87 = sub_26C40C388(&qword_280497448, type metadata accessor for LamportTimestamp, &unk_26C46DFB8);
      v132 = v120;
      v133 = v87;
      swift_getWitnessTable();
      v88 = v97;
      v89 = v95;
      v90 = v129;
      sub_26C46C6D4();
      if (!v90)
      {
        v91 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
        swift_beginAccess();
        v92 = v2 + v91;
        v93 = v94[0];
        sub_26C3E91AC(v92, v94[0], type metadata accessor for LamportTimestamp);
        v145 = 2;
        sub_26C46C6D4();
        sub_26C40C454(v93, type metadata accessor for LamportTimestamp);
      }

      (*(v96 + 8))(v89, v88);
      return __swift_destroy_boxed_opaque_existential_1(&v136);
    }

    v52 = v121;
    sub_26C46C754();
    swift_unknownObjectRelease();
    v53 = v40;
    v51 = v126;
    v128 = v53;
    v48 = v127;
    v54 = v113;
LABEL_20:
    (*v122)(v52, 0, 1, v44);
    (*v115)(v47, v52, v44);
    v57 = *v54;
    (*v54)(v117, v47, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v58 = v47;
      v59 = v134;
      v57(v112, v58, v44);
      swift_beginAccess();
      v60 = v123;
      sub_26C46C184();
      swift_endAccess();
      result = (*v114)(v46, 1, v60);
      if (result == 1)
      {
        goto LABEL_35;
      }

      v61 = v46;
      ObjectType = swift_getObjectType();
      v63 = sub_26C3F8720(ObjectType, v59);
      v64 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v65 = sub_26C46BB54();
      v66 = *(v65 - 8);
      v67 = v63 + v64;
      v68 = v110;
      (*(v66 + 16))(v110, v67, v65);

      (*(v66 + 56))(v68, 0, 1, v65);
      v69 = sub_26C3F8720(ObjectType, v59);
      v70 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      swift_beginAccess();
      v71 = v69 + v70;
      v72 = v111;
      sub_26C3DDD48(v71, v111, &qword_280497430, &unk_26C46D3D0);

      v73 = v98;
      v46 = v61;
      sub_26C3FE4BC(v112, v61, v68, v72, v125, v108, v120, v130, v98);
      __swift_mutable_project_boxed_opaque_existential_1(&v136, v139);
      v74 = v109;
      swift_getWitnessTable();
      v75 = v129;
      sub_26C46C744();
      if (v75)
      {
        swift_unknownObjectRelease();
        sub_26C40B328(v119);
        (*v105)(v73, v74);
LABEL_32:
        (*v106)(v124, v125);
        (*(v96 + 8))(v95, v97);
        return __swift_destroy_boxed_opaque_existential_1(&v136);
      }

      v129 = 0;
      swift_unknownObjectRelease();
      v49 = v73;
      v2 = v104;
    }

    else
    {
      v57(v48, v47, v44);
      swift_beginAccess();
      v76 = v100;
      v77 = v123;
      sub_26C46C184();
      swift_endAccess();
      result = (*v114)(v76, 1, v77);
      if (result == 1)
      {
        goto LABEL_34;
      }

      v78 = v48;
      v79 = sub_26C46BB54();
      v80 = *(*(v79 - 8) + 56);
      v81 = v110;
      v80(v110, 1, 1, v79);
      v82 = v111;
      v80(v111, 1, 1, v79);
      v83 = v81;
      v84 = v99;
      sub_26C3FE4BC(v78, v76, v83, v82, v44, v108, v120, v130, v99);
      __swift_mutable_project_boxed_opaque_existential_1(&v136, v139);
      v74 = v109;
      swift_getWitnessTable();
      v85 = v129;
      sub_26C46C744();
      if (v85)
      {
        sub_26C40B328(v119);
        (*v105)(v84, v74);
        goto LABEL_32;
      }

      v129 = 0;
      v49 = v84;
      v2 = v104;
      v46 = v101;
    }

    v47 = v124;
    v35 = v119;
    (*v105)(v49, v74);
    v44 = v125;
    result = (*v106)(v47, v125);
    v38 = v51;
    v40 = v128;
    v48 = v127;
    v37 = v118;
    v45 = v103;
  }

  if (v40)
  {
    v50 = v40;
    v51 = v38;
LABEL_19:
    v128 = (v50 - 1) & v50;
    v56 = *(v35 + 48) + *(v102 + 72) * (__clz(__rbit64(v50)) | (v51 << 6));
    v52 = v121;
    v54 = v113;
    (*(v102 + 16))(v121, v56, v44);
    goto LABEL_20;
  }

  v55 = v38;
  while (1)
  {
    v51 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v51 >= v45)
    {
      goto LABEL_27;
    }

    v50 = *(v37 + 8 * v51);
    ++v55;
    if (v50)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t SyncedSet.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SyncedSet.init(wrappedValue:)(a1);
  return v2;
}

void *SyncedSet.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = *v1;
  v4 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_280497720;
  v8 = *(v3 + 280);
  swift_getTupleTypeMetadata2();
  v9 = sub_26C46C284();
  v10 = *(v3 + 304);
  v11 = sub_26C40AFD4(v9, v8, v4, v10);

  *(v2 + v7) = v11;
  v12 = qword_280497728;
  v13 = sub_26C46C284();
  v14 = sub_26C40AFD4(v13, v8, v4, v10);

  *(v2 + v12) = v14;
  *(v2 + qword_280497730) = 0;
  *(v2 + qword_280497738) = 0;
  if (swift_conformsToProtocol2())
  {
    v15 = v8 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  *(v2 + qword_280497740) = v16;
  v17 = qword_2804985A0;
  v26 = v8;
  v27 = *(v3 + 288);
  v28 = v10;
  type metadata accessor for SyncedSet.SyncedSetChangeInfo(255, &v26);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata2();
  sub_26C46C014();
  *(v2 + v17) = sub_26C46C004();
  v18 = sub_26C46C284();
  if (sub_26C46C2B4())
  {
    v19 = sub_26C40B330(v18, v8, v10);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *(v2 + qword_280497748) = v19;
  *v6 = 0;
  sub_26C46BD14();
  v20 = *(v4 + 24);
  v21 = type metadata accessor for PBUUID(0);
  (*(*(v21 - 8) + 56))(&v6[v20], 1, 1, v21);
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
  v22 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
  *(v2 + v22) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
  sub_26C40C2E8(v6, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  sub_26C400E00(v25);

  return v2;
}

uint64_t sub_26C400E00(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v108 = type metadata accessor for LamportTimestamp(0);
  v94 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v93 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for SetChangedMessage(0);
  MEMORY[0x28223BE20](v92);
  v95 = (&v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v4 + 296);
  v8 = *(v4 + 304);
  v103 = *(v4 + 280);
  v113 = v103;
  v114 = v7;
  v115 = v8;
  v110 = v8;
  type metadata accessor for SyncedSet.SyncedSetChangeInfo(255, &v113);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = *(TupleTypeMetadata2 - 8);
  v102 = TupleTypeMetadata2;
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v100 = (&v91 - v11);
  MEMORY[0x28223BE20](v10);
  v99 = &v91 - v12;
  v13 = type metadata accessor for PBUUID(0);
  v106 = *(v13 - 1);
  v107 = v13;
  MEMORY[0x28223BE20](v13);
  v105 = (&v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v91 - v16;
  v18 = sub_26C46BB54();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v104 = &v91 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v91 - v25;
  v109 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
  v27 = *(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (v27)
  {
    v28 = *(*v27 + 744);

    LOBYTE(v28) = v28(v29);

    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v98 = v22;
  v31 = qword_280497748;
  swift_beginAccess();

  v32 = v2;
  v33 = v103;
  v96 = sub_26C46C314();

  v97 = v33;
  v34 = v32;
  *&v103 = sub_26C46C314();

  *(v32 + v31) = a1;

  v35 = *(v32 + v109);
  if (!v35)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    if (qword_280497190 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  v36 = *(v19 + 16);
  v36(v17, v35 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  (*(v19 + 32))(v26, v17, v18);
  v37 = v98;
  while (1)
  {
    v40 = v34 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    v17 = v104;
    v36(v104, v26, v18);
    v36(v37, v17, v18);
    v41 = v105;
    sub_26C40F280(v37, v105);
    v42 = *(v19 + 8);
    v19 += 8;
    v42(v17, v18);
    v42(v26, v18);
    v26 = *(v108 + 24);
    sub_26C3DE270(&v26[v40], &qword_280497458, &unk_26C46D3F0);
    sub_26C40C2E8(v41, &v26[v40], type metadata accessor for PBUUID);
    (*(v106 + 56))(&v26[v40], 0, 1, v107);
    if (*v40 != -1)
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_6:
    v38 = __swift_project_value_buffer(v18, qword_2804985C0);
    v36 = *(v19 + 16);
    v36(v26, v38, v18);
    v39 = (*(v19 + 48))(v17, 1, v18);
    v37 = v98;
    if (v39 != 1)
    {
      sub_26C3DE270(v17, &qword_280497430, &unk_26C46D3D0);
    }
  }

  ++*v40;
  swift_endAccess();
  v43 = v96;
  v112[0] = v96;
  v44 = sub_26C46C374();
  swift_getWitnessTable();
  sub_26C46C214();
  v45 = v103;
  v112[0] = v103;
  sub_26C46C214();
  v107 = 0;
  v112[0] = v43;

  v46 = sub_26C46C2F4();
  v112[0] = v45;

  v110 = v44;
  v47 = sub_26C46C2F4();
  v48 = sub_26C46BCD4();
  v49 = v99;
  (*(*(v48 - 8) + 56))(v99, 1, 1, v48);
  v50 = v102;
  v51 = *(v102 + 48);
  v52 = v100;
  *v100 = v46;
  v52[1] = v47;
  sub_26C3E9F28(v49, v52 + v51, &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  (*(v101 + 8))(v52, v50);
  v53 = *(v34 + v109);
  if (!v53 || (Strong = swift_weakLoadStrong()) == 0)
  {
LABEL_21:
  }

  v55 = Strong;

  if (sub_26C3EA940() && *(v55 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) != 1)
  {

    goto LABEL_21;
  }

  v106 = v55;
  v109 = v53;
  v56 = v93;
  sub_26C3E91AC(v40, v93, type metadata accessor for LamportTimestamp);
  v57 = *(v34 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID);
  v58 = v95;
  *v95 = 0;
  v59 = MEMORY[0x277D84F90];
  *(v58 + 1) = MEMORY[0x277D84F90];
  *(v58 + 2) = v59;
  v60 = v92;
  sub_26C46BD14();
  v61 = *(v60 + 32);
  v62 = *(v94 + 56);
  v63 = v108;
  v62(v58 + v61, 1, 1, v108);
  sub_26C3DE270(v58 + v61, &qword_280497468, &unk_26C46D400);
  sub_26C40C2E8(v56, v58 + v61, type metadata accessor for LamportTimestamp);
  v64 = v58 + v61;
  v65 = v58;
  v62(v64, 0, 1, v63);
  *v58 = v57;
  *(v58 + 1) = v59;
  *(v58 + 2) = v59;
  v112[0] = v43;
  v66 = type metadata accessor for ValueData(0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
  v68 = v110;
  WitnessTable = swift_getWitnessTable();
  v70 = v107;
  v71 = sub_26C40D428(sub_26C40C408, v34, v68, v66, v67, WitnessTable, MEMORY[0x277D84950], v111);
  if (v70)
  {
    v108 = WitnessTable;

    v72 = v111[0];
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v73 = sub_26C46BFA4();
    __swift_project_value_buffer(v73, qword_280498530);
    v74 = v72;
    v75 = sub_26C46BF84();
    v76 = sub_26C46C3E4();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v112[0] = v107;
      *v77 = 136315138;
      v111[0] = v72;
      v78 = v72;
      v79 = sub_26C46C1D4();
      v81 = v68;
      v82 = v67;
      v83 = v66;
      v84 = sub_26C3E80A8(v79, v80, v112);

      *(v77 + 4) = v84;
      v66 = v83;
      v67 = v82;
      v68 = v81;
      _os_log_impl(&dword_26C3D6000, v75, v76, "SyncedSet: failed to encode removed element data: %s", v77, 0xCu);
      v85 = v107;
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x26D6A18D0](v85, -1, -1);
      v65 = v95;
      MEMORY[0x26D6A18D0](v77, -1, -1);
    }

    else
    {
    }

    v87 = v103;
    WitnessTable = v108;
  }

  else
  {
    v86 = v71;

    *(v65 + 16) = v86;
    v87 = v103;
  }

  v112[0] = v87;
  v88 = sub_26C40D428(sub_26C40C818, v34, v68, v66, v67, WitnessTable, MEMORY[0x277D84950], v111);

  *(v65 + 8) = v88;
  v90 = v109;
  MEMORY[0x28223BE20](v89);
  *(&v91 - 2) = v90;
  *(&v91 - 1) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497478, &qword_26C46D410);
  sub_26C46BB64();

  return sub_26C40C454(v65, type metadata accessor for SetChangedMessage);
}

uint64_t SyncedSet.wrappedValue.getter()
{
  sub_26C40B6F4();
}

uint64_t SyncedSet.wrappedValue.setter(uint64_t a1)
{
  sub_26C40B738(a1);
}

void (*SyncedSet.wrappedValue.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_280497748;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_26C401E00;
}

void sub_26C401E00(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_26C400E00(v4);
  }

  else
  {
    sub_26C400E00(v3);
  }

  free(v2);
}

uint64_t sub_26C401E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
  swift_beginAccess();
  sub_26C3E91AC(a2 + v7, v6, type metadata accessor for LamportTimestamp);
  sub_26C401F6C(a1, v6);
  return sub_26C40C454(v6, type metadata accessor for LamportTimestamp);
}

uint64_t sub_26C401F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = *(v6 + 280);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = *(v12 + 16);
  v13(v18 - v14, a1, v11);
  sub_26C3E91AC(a2, v10, type metadata accessor for LamportTimestamp);
  v15 = type metadata accessor for LamportTimestamp(0);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  sub_26C46C174();
  sub_26C46C194();
  swift_endAccess();
  swift_beginAccess();
  sub_26C46C134();
  swift_endAccess();
  result = sub_26C3DE270(v10, &qword_280497468, &unk_26C46D400);
  if (*(v3 + qword_280497740) == 1)
  {
    v18[3] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    v13(boxed_opaque_existential_0, a1, v11);
    sub_26C3E13DC(v18);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t sub_26C402200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v17 - v11);
  v13 = sub_26C46BB54();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v14(v10, 1, 1, v13);
  v15 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
  swift_beginAccess();
  sub_26C3E91AC(a2 + v15, v6, type metadata accessor for LamportTimestamp);
  sub_26C402404(a1, v12, v10, v6);
  sub_26C40C454(v6, type metadata accessor for LamportTimestamp);
  sub_26C3DE270(v10, &qword_280497430, &unk_26C46D3D0);
  return sub_26C3DE270(v12, &qword_280497430, &unk_26C46D3D0);
}

uint64_t sub_26C402404(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v6 = *(*v4 + 280);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  swift_beginAccess();
  v13 = type metadata accessor for LamportTimestamp(255);
  sub_26C46C174();
  sub_26C46C134();
  swift_endAccess();
  sub_26C3DE270(v12, &qword_280497468, &unk_26C46D400);
  v14 = *(v7 + 16);
  v14(v9, a1, v6);
  sub_26C3E91AC(v20, v12, type metadata accessor for LamportTimestamp);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  swift_beginAccess();
  sub_26C46C194();
  result = swift_endAccess();
  if (*(v4 + qword_280497740) == 1)
  {
    v21[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    v14(boxed_opaque_existential_0, a1, v6);
    sub_26C3E0D08(v21, v18, v19);
    return sub_26C3DE270(v21, &qword_280497450, &qword_26C471080);
  }

  return result;
}

uint64_t sub_26C4026B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_26C4026B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v59 = a2;
  v58 = *v2;
  v63 = *(v58 + 280);
  v3 = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v55 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v55 - v25;
  MEMORY[0x28223BE20](v24);
  v29 = &v55 - v28;
  if (*(v2 + qword_280497740))
  {
    v30 = v27;
    v31 = *(v3 + 16);
    v31(v10, v60, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v32 = v62;
      v56 = v61;
      ObjectType = swift_getObjectType();
      v34 = sub_26C3F8720(ObjectType, v32);
      v35 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v36 = sub_26C46BB54();
      v37 = *(v36 - 8);
      (*(v37 + 16))(v23, v34 + v35, v36);

      v38 = *(v37 + 56);
      v38(v23, 0, 1, v36);
      v39 = v57;
      v40 = v63;
      v31(v57, v60, v63);
      v38(v30, 1, 1, v36);
      sub_26C40C88C(v23, v39, v30, v40, *(v58 + 296), v59);
      return swift_unknownObjectRelease();
    }

    v51 = sub_26C46BB54();
    v52 = *(*(v51 - 8) + 56);
    v52(v19, 1, 1, v51);
    v53 = v56;
    v54 = v63;
    v31(v56, v60, v63);
    v52(v16, 1, 1, v51);
    v45 = v59;
    v46 = *(v58 + 296);
    v47 = v19;
    v48 = v53;
    v49 = v16;
    v50 = v54;
  }

  else
  {
    v42 = sub_26C46BB54();
    v43 = *(*(v42 - 8) + 56);
    v43(v29, 1, 1, v42);
    v44 = v63;
    (*(v3 + 16))(v12, v60, v63);
    v43(v26, 1, 1, v42);
    v45 = v59;
    v46 = *(v58 + 296);
    v47 = v29;
    v48 = v12;
    v49 = v26;
    v50 = v44;
  }

  return sub_26C40C88C(v47, v48, v49, v50, v46, v45);
}

uint64_t sub_26C402BD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a1;
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v54 - v9;
  v10 = type metadata accessor for LamportTimestamp(0);
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v7[36];
  v14 = v7[37];
  v15 = v7[38];
  v64 = v7[35];
  *&v67 = v64;
  *(&v67 + 1) = v13;
  v60 = v13;
  v59 = v14;
  *&v68 = v14;
  *(&v68 + 1) = v15;
  v65 = v15;
  v16 = type metadata accessor for SyncedSet.MergeValues(0, &v67);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = sub_26C46BD44();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = type metadata accessor for SetCatchupData(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v4 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = *(Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options);

      if ((v24 & 1) == 0)
      {
        v55 = a2;
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v25 = sub_26C46BFA4();
        __swift_project_value_buffer(v25, qword_280498530);
        v26 = sub_26C46BF84();
        v27 = sub_26C46C404();
        v28 = os_log_type_enabled(v26, v27);
        v57 = a3;
        if (v28)
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_26C3D6000, v26, v27, "SyncedSet: clearing existing data due to catchup response and replaceFromLeader option", v29, 2u);
          MEMORY[0x26D6A18D0](v29, -1, -1);
        }

        v30 = v64;
        v31 = sub_26C46C284();
        v32 = sub_26C46C2B4();
        v56 = v12;
        if (v32)
        {
          v33 = v65;
          v34 = sub_26C40B330(v31, v30, v65);
        }

        else
        {
          v34 = MEMORY[0x277D84FA0];
          v33 = v65;
        }

        v35 = qword_280497748;
        swift_beginAccess();
        *(v4 + v35) = v34;

        swift_getTupleTypeMetadata2();
        v36 = sub_26C46C284();
        v37 = sub_26C40AFD4(v36, v30, v10, v33);
        v38 = v30;
        v39 = v37;

        v40 = qword_280497720;
        swift_beginAccess();
        *(v4 + v40) = v39;

        v41 = sub_26C46C284();
        v42 = sub_26C40AFD4(v41, v38, v10, v65);

        v43 = qword_280497728;
        swift_beginAccess();
        *(v4 + v43) = v42;

        a3 = v57;
        v12 = v56;
        a2 = v55;
      }
    }
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  sub_26C3DDDB0(v66, a2);
  sub_26C46BD34();
  sub_26C40C388(&qword_280497950, type metadata accessor for SetCatchupData, &unk_26C46F224);
  sub_26C46BE54();
  v44 = v61;
  sub_26C3DDD48(v22 + *(v20 + 36), v61, &qword_280497468, &unk_26C46D400);
  v45 = *(v58 + 48);
  if (v45(v44, 1, v10) == 1)
  {
    *v12 = 0;
    sub_26C46BD14();
    v46 = *(v10 + 24);
    v47 = type metadata accessor for PBUUID(0);
    (*(*(v47 - 8) + 56))(v12 + v46, 1, 1, v47);
    if (v45(v44, 1, v10) != 1)
    {
      sub_26C3DE270(v44, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C40C2E8(v44, v12, type metadata accessor for LamportTimestamp);
  }

  v48 = *v22;
  v49 = v22[1];
  v50 = v22[2];
  v51 = v22[3];
  sub_26C40C2E8(v12, v18, type metadata accessor for LamportTimestamp);
  *&v67 = v64;
  *(&v67 + 1) = v60;
  *&v68 = v59;
  *(&v68 + 1) = v65;
  v52 = type metadata accessor for SyncedSet.MergeValues(0, &v67);
  *&v18[v52[13]] = v48;
  *&v18[v52[14]] = v49;
  *&v18[v52[15]] = v50;
  *&v18[v52[16]] = v51;

  sub_26C403540(v18, a3);
  (*(v62 + 8))(v18, v63);
  return sub_26C40C454(v22, type metadata accessor for SetCatchupData);
}

int *sub_26C403488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_26C40C2E8(a1, a9, type metadata accessor for LamportTimestamp);
  v19[0] = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a10;
  result = type metadata accessor for SyncedSet.MergeValues(0, v19);
  *(a9 + result[13]) = a2;
  *(a9 + result[14]) = a3;
  *(a9 + result[15]) = a4;
  *(a9 + result[16]) = a5;
  return result;
}

uint64_t sub_26C403540(char *a1, uint64_t a2)
{
  v237 = a2;
  v293 = a1;
  v3 = *v2;
  v4 = *(*v2 + 280);
  v291 = *(*v2 + 288);
  v5 = *(v3 + 296);
  v6 = *(v3 + 304);
  v305 = v4;
  v306 = v291;
  v307 = v5;
  v308 = v6;
  type metadata accessor for SyncedSet.SyncedSetChangeInfo(255, &v305);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v235 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v234 = &v227 - v8;
  MEMORY[0x28223BE20](v7);
  v233 = &v227 - v9;
  v273 = type metadata accessor for PBUUID(0);
  v227 = *(v273 - 8);
  v10 = MEMORY[0x28223BE20](v273);
  v239 = (&v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v228 = (&v227 - v13);
  MEMORY[0x28223BE20](v12);
  v247 = (&v227 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v238 = &v227 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v244 = &v227 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v230 = &v227 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v241 = &v227 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v246 = &v227 - v25;
  MEMORY[0x28223BE20](v24);
  v260 = &v227 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v252 = (&v227 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v28);
  v243 = (&v227 - v31);
  MEMORY[0x28223BE20](v30);
  v282 = (&v227 - v32);
  v266 = sub_26C46C474();
  v284 = *(v266 - 1);
  v33 = MEMORY[0x28223BE20](v266);
  v251 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v261 = &v227 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v240 = &v227 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v259 = &v227 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v258 = &v227 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v279 = &v227 - v44;
  MEMORY[0x28223BE20](v43);
  v263 = (&v227 - v45);
  v295 = type metadata accessor for LamportTimestamp(0);
  v46 = *(v295 - 8);
  v47 = MEMORY[0x28223BE20](v295);
  v231 = (&v227 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x28223BE20](v47);
  v232 = &v227 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v229 = (&v227 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v255 = (&v227 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v267 = (&v227 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v256 = (&v227 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v269 = (&v227 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v299 = (&v227 - v62);
  v283 = *(v4 - 8);
  v63 = MEMORY[0x28223BE20](v61);
  v253 = &v227 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v285 = &v227 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v274 = &v227 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v250 = &v227 - v70;
  MEMORY[0x28223BE20](v69);
  v72 = (&v227 - v71);
  v272 = type metadata accessor for ValueData(0);
  v271 = *(v272 - 8);
  v73 = MEMORY[0x28223BE20](v272);
  v298 = &v227 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v76 = &v227 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497958, &qword_26C46DE20);
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v270 = (&v227 - v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280497960, &unk_26C46DE28);
  v81 = MEMORY[0x28223BE20](v80 - 8);
  v276 = &v227 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v81);
  v264 = &v227 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v278 = (&v227 - v86);
  MEMORY[0x28223BE20](v85);
  v277 = (&v227 - v87);
  v304 = sub_26C46C284();
  v303 = sub_26C46C284();
  v305 = v4;
  v306 = v291;
  v288 = v5;
  v307 = v5;
  v308 = v6;
  v294 = v6;
  v287 = type metadata accessor for SyncedSet.MergeValues(0, &v305);
  j = *&v293[v287[15]];
  v88 = *(j + 2);
  v89 = qword_280497748;
  v281 = qword_280497720;
  v268 = qword_280497728;
  v90 = v88;
  swift_beginAccess();
  v91 = 0;
  v290 = (v78 + 56);
  v289 = (v78 + 48);
  v292 = (v46 + 48);
  v296 = (v283 + 8);
  v280 = (v283 + 16);
  v286 = v46;
  v257 = (v46 + 56);
  v249 = (v284 + 16);
  v248 = (v283 + 48);
  v242 = (v283 + 32);
  v254 = (v284 + 8);
  v283 = v77;
  v284 = v89;
  v300 = v4;
  v262 = v76;
  for (i = v90; ; v90 = i)
  {
    if (v91 == v90)
    {
      v95 = 1;
      v91 = v90;
      v96 = v279;
      v97 = v278;
    }

    else
    {
      if ((v91 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      v96 = v279;
      if (v91 >= *(j + 2))
      {
        goto LABEL_77;
      }

      v98 = &j[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v91];
      v99 = *(v77 + 48);
      v100 = v270;
      *v270 = v91;
      sub_26C3E91AC(v98, v100 + v99, type metadata accessor for ValueData);
      v101 = v100;
      v97 = v278;
      sub_26C3E9F28(v101, v278, &qword_280497958, &qword_26C46DE20);
      v95 = 0;
      ++v91;
    }

    v102 = *v290;
    (*v290)(v97, v95, 1, v77);
    v103 = v97;
    v104 = v277;
    sub_26C3E9F28(v103, v277, qword_280497960, &unk_26C46DE28);
    v105 = *v289;
    if ((*v289)(v104, 1, v77) == 1)
    {
      v266 = v105;
      v131 = 0;
      v72 = v293;
      v132 = *&v293[v287[13]];
      v278 = (v227 + 48);
      v262 = v132;
      v133 = *(v132 + 2);
      v134 = v267;
      v135 = v285;
      v245 = v102;
      for (j = v133; ; v133 = j)
      {
        v142 = v276;
        if (v131 == v133)
        {
          v143 = 1;
          v144 = v133;
        }

        else
        {
          if ((v131 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          if (v131 >= *(v262 + 2))
          {
            goto LABEL_81;
          }

          v144 = (v131 + 1);
          v145 = &v262[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v131];
          v146 = *(v77 + 48);
          v147 = v270;
          *v270 = v131;
          sub_26C3E91AC(v145, v147 + v146, type metadata accessor for ValueData);
          sub_26C3E9F28(v147, v276, &qword_280497958, &qword_26C46DE20);
          v142 = v276;
          v143 = 0;
          v135 = v285;
        }

        v102(v142, v143, 1, v77);
        v148 = v142;
        v149 = v264;
        sub_26C3E9F28(v148, v264, qword_280497960, &unk_26C46DE28);
        if (v266(v149, 1, v77) == 1)
        {
          goto LABEL_70;
        }

        v150 = v149;
        v151 = v135;
        v152 = *v150;
        sub_26C40C2E8(v150 + *(v77 + 48), v298, type metadata accessor for ValueData);
        sub_26C40CC14(v300, v291, v151);
        if ((v152 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v153 = *(v72 + v287[14]);
        if (v152 >= *(v153 + 16))
        {
          goto LABEL_79;
        }

        v279 = v144;
        sub_26C3E91AC(v153 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v152, v134, type metadata accessor for LamportTimestamp);
        v154 = *(v272 + 24);
        v155 = v260;
        sub_26C3DDD48(v298 + v154, v260, &qword_280497458, &unk_26C46D3F0);
        v156 = 1;
        v157 = v273;
        v299 = *v278;
        v158 = v299(v155, 1, v273);
        sub_26C3DE270(v155, &qword_280497458, &unk_26C46D3F0);
        if (v158 != 1)
        {
          v159 = v246;
          sub_26C3DDD48(v298 + v154, v246, &qword_280497458, &unk_26C46D3F0);
          v160 = v299;
          if (v299(v159, 1, v157) == 1)
          {
            v161 = v247;
            *v247 = 0;
            v161[1] = 0;
            sub_26C46BD14();
            if (v160(v159, 1, v157) != 1)
            {
              sub_26C3DE270(v159, &qword_280497458, &unk_26C46D3F0);
            }
          }

          else
          {
            v161 = v247;
            sub_26C40C2E8(v159, v247, type metadata accessor for PBUUID);
          }

          sub_26C40F3CC();
          sub_26C40C454(v161, type metadata accessor for PBUUID);
          v156 = 0;
        }

        v162 = sub_26C46BB54();
        v163 = *(v162 - 8);
        v164 = *(v163 + 56);
        v277 = (v163 + 56);
        v164(v282, v156, 1, v162);
        swift_beginAccess();
        v165 = v259;
        v166 = v285;
        v167 = v295;
        sub_26C46C184();
        v168 = *v292;
        if ((*v292)(v165, 1, v167) == 1)
        {
          i = v164;
          sub_26C3DE270(v165, &qword_280497468, &unk_26C46D400);
          swift_endAccess();

          v169 = sub_26C46C364();

          if (v169)
          {
            swift_beginAccess();
            v170 = v240;
            v171 = v295;
            sub_26C46C184();
            if (v168(v170, 1, v171) != 1)
            {
              v194 = v229;
              sub_26C40C2E8(v170, v229, type metadata accessor for LamportTimestamp);
              swift_endAccess();
              v195 = v267;
              if (sub_26C41111C(v194, v267))
              {
                v196 = v285;
                v197 = v300;
                (*v280)(v274, v285, v300);
                v198 = v258;
                sub_26C3E91AC(v195, v258, type metadata accessor for LamportTimestamp);
                (*v257)(v198, 0, 1, v171);
                swift_beginAccess();
                sub_26C46C174();
                sub_26C46C194();
                swift_endAccess();
                sub_26C40C454(v194, type metadata accessor for LamportTimestamp);
                sub_26C3DE270(v282, &qword_280497430, &unk_26C46D3D0);
                v135 = v196;
                sub_26C40C454(v195, type metadata accessor for LamportTimestamp);
                (*v296)(v196, v197);
              }

              else
              {
                sub_26C40C454(v194, type metadata accessor for LamportTimestamp);
                sub_26C3DE270(v282, &qword_280497430, &unk_26C46D3D0);
                sub_26C40C454(v195, type metadata accessor for LamportTimestamp);
                v135 = v285;
                (*v296)(v285, v300);
              }

              v72 = v293;
              v134 = v195;
              v77 = v283;
              v102 = v245;
              goto LABEL_66;
            }

            sub_26C3DE270(v170, &qword_280497468, &unk_26C46D400);
            swift_endAccess();
            v166 = v285;
          }

          v269 = v162;
          v172 = *v280;
          v173 = v300;
          (*v280)(v253, v166, v300);
          swift_beginAccess();
          sub_26C46C374();
          v174 = v274;
          sub_26C46C334();
          swift_endAccess();
          v263 = *v296;
          v263(v174, v173);
          v172(v174, v166, v173);
          sub_26C46C2E4();
          sub_26C46C2C4();
          v175 = *(v272 + 28);
          v176 = v244;
          sub_26C3DDD48(v298 + v175, v244, &qword_280497458, &unk_26C46D3F0);
          v137 = 1;
          v177 = v299;
          LODWORD(v172) = v299(v176, 1, v273);
          sub_26C3DE270(v176, &qword_280497458, &unk_26C46D3F0);
          v102 = v245;
          v131 = v279;
          v178 = i;
          if (v172 != 1)
          {
            v179 = v238;
            sub_26C3DDD48(v298 + v175, v238, &qword_280497458, &unk_26C46D3F0);
            v180 = v273;
            if (v177(v179, 1, v273) == 1)
            {
              v136 = v239;
              *v239 = 0;
              v136[1] = 0;
              sub_26C46BD14();
              if (v177(v179, 1, v180) != 1)
              {
                sub_26C3DE270(v179, &qword_280497458, &unk_26C46D3F0);
              }
            }

            else
            {
              v136 = v239;
              sub_26C40C2E8(v179, v239, type metadata accessor for PBUUID);
            }

            sub_26C40F3CC();
            sub_26C40C454(v136, type metadata accessor for PBUUID);
            v137 = 0;
          }

          v138 = v252;
          v178(v252, v137, 1, v269);
          v139 = v285;
          v140 = v282;
          v134 = v267;
          sub_26C402404(v285, v282, v138, v267);
          v141 = v138;
          v135 = v139;
          sub_26C3DE270(v141, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v140, &qword_280497430, &unk_26C46D3D0);
          sub_26C40C454(v134, type metadata accessor for LamportTimestamp);
          v263(v139, v300);
          v72 = v293;
          v77 = v283;
        }

        else
        {
          v181 = v165;
          v182 = v255;
          sub_26C40C2E8(v181, v255, type metadata accessor for LamportTimestamp);
          swift_endAccess();
          v134 = v267;
          if ((sub_26C41111C(v182, v267) & 1) == 0)
          {
            sub_26C40C454(v182, type metadata accessor for LamportTimestamp);
            sub_26C3DE270(v282, &qword_280497430, &unk_26C46D3D0);
            sub_26C40C454(v134, type metadata accessor for LamportTimestamp);
            v135 = v285;
            (*v296)(v285, v300);
            v72 = v293;
            v77 = v283;
LABEL_66:
            v131 = v279;
            goto LABEL_30;
          }

          i = v164;
          v269 = v162;
          v183 = *v280;
          v184 = v285;
          v185 = v300;
          (*v280)(v253, v285, v300);
          swift_beginAccess();
          sub_26C46C374();
          v186 = v274;
          sub_26C46C334();
          swift_endAccess();
          v263 = *v296;
          v263(v186, v185);
          v183(v186, v184, v185);
          sub_26C46C2E4();
          sub_26C46C2C4();
          v187 = *(v272 + 28);
          v188 = v241;
          sub_26C3DDD48(v298 + v187, v241, &qword_280497458, &unk_26C46D3F0);
          v189 = 1;
          v190 = v299;
          LODWORD(v183) = v299(v188, 1, v273);
          sub_26C3DE270(v188, &qword_280497458, &unk_26C46D3F0);
          v131 = v279;
          if (v183 != 1)
          {
            v191 = v230;
            sub_26C3DDD48(v298 + v187, v230, &qword_280497458, &unk_26C46D3F0);
            v192 = v273;
            if (v190(v191, 1, v273) == 1)
            {
              v193 = v228;
              *v228 = 0;
              v193[1] = 0;
              sub_26C46BD14();
              if (v190(v191, 1, v192) != 1)
              {
                sub_26C3DE270(v191, &qword_280497458, &unk_26C46D3F0);
              }
            }

            else
            {
              v193 = v228;
              sub_26C40C2E8(v191, v228, type metadata accessor for PBUUID);
            }

            sub_26C40F3CC();
            sub_26C40C454(v193, type metadata accessor for PBUUID);
            v189 = 0;
          }

          v199 = v243;
          i(v243, v189, 1, v269);
          v200 = v285;
          v201 = v282;
          v134 = v267;
          sub_26C402404(v285, v282, v199, v267);
          sub_26C3DE270(v199, &qword_280497430, &unk_26C46D3D0);
          sub_26C40C454(v255, type metadata accessor for LamportTimestamp);
          sub_26C3DE270(v201, &qword_280497430, &unk_26C46D3D0);
          v135 = v200;
          sub_26C40C454(v134, type metadata accessor for LamportTimestamp);
          v263(v200, v300);
          v77 = v283;
          v72 = v293;
        }

LABEL_30:
        sub_26C40C454(v298, type metadata accessor for ValueData);
      }
    }

    v106 = v104;
    v107 = *v104;
    sub_26C40C2E8(v106 + *(v77 + 48), v76, type metadata accessor for ValueData);
    sub_26C40CC14(v300, v291, v72);
    if ((v107 & 0x8000000000000000) != 0)
    {
      break;
    }

    v108 = *&v293[v287[16]];
    if (v107 >= *(v108 + 16))
    {
      goto LABEL_75;
    }

    sub_26C3E91AC(v108 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v107, v299, type metadata accessor for LamportTimestamp);

    v109 = sub_26C46C364();

    if (v109)
    {
      swift_beginAccess();
      v110 = v263;
      v111 = v295;
      sub_26C46C184();
      swift_endAccess();
      result = (*v292)(v110, 1, v111);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v113 = v110;
      v114 = v269;
      sub_26C40C2E8(v113, v269, type metadata accessor for LamportTimestamp);
      v115 = v299;
      if (sub_26C41111C(v114, v299))
      {
        swift_beginAccess();
        v116 = v300;
        sub_26C46C374();
        v117 = v261;
        sub_26C46C344();
        swift_endAccess();
        v118 = v251;
        (*v249)(v251, v117, v266);
        v119 = *v248;
        if ((*v248)(v118, 1, v116) == 1)
        {
          v120 = v250;
          v121 = v300;
          (*v280)(v250, v72, v300);
          if (v119(v118, 1, v121) != 1)
          {
            (*v254)(v118, v266);
          }
        }

        else
        {
          v120 = v250;
          (*v242)(v250, v118, v300);
        }

        v127 = v299;
        sub_26C401F6C(v120, v299);
        v128 = *v296;
        v129 = v120;
        v130 = v300;
        (*v296)(v129, v300);
        (*v280)(v274, v72, v130);
        sub_26C46C2E4();
        sub_26C46C2C4();
        (*v254)(v261, v266);
        sub_26C40C454(v269, type metadata accessor for LamportTimestamp);
        sub_26C40C454(v127, type metadata accessor for LamportTimestamp);
        v128(v72, v130);
        v77 = v283;
        v76 = v262;
      }

      else
      {
        sub_26C40C454(v114, type metadata accessor for LamportTimestamp);
        sub_26C40C454(v115, type metadata accessor for LamportTimestamp);
        (*v296)(v72, v300);
      }
    }

    else
    {
      swift_beginAccess();
      v122 = v295;
      sub_26C46C184();
      if ((*v292)(v96, 1, v122) == 1)
      {
        sub_26C3DE270(v96, &qword_280497468, &unk_26C46D400);
        swift_endAccess();
        (*v280)(v274, v72, v300);
        v92 = v299;
        v93 = v258;
        sub_26C3E91AC(v299, v258, type metadata accessor for LamportTimestamp);
        (*v257)(v93, 0, 1, v122);
        swift_beginAccess();
        sub_26C46C174();
        sub_26C46C194();
        swift_endAccess();
        v94 = v92;
        v76 = v262;
      }

      else
      {
        v123 = v256;
        sub_26C40C2E8(v96, v256, type metadata accessor for LamportTimestamp);
        swift_endAccess();
        v124 = v299;
        if (sub_26C41111C(v123, v299))
        {
          (*v280)(v274, v72, v300);
          v125 = v124;
          v126 = v258;
          sub_26C3E91AC(v125, v258, type metadata accessor for LamportTimestamp);
          (*v257)(v126, 0, 1, v295);
          swift_beginAccess();
          sub_26C46C174();
          sub_26C46C194();
          swift_endAccess();
          sub_26C40C454(v256, type metadata accessor for LamportTimestamp);
          v94 = v299;
        }

        else
        {
          sub_26C40C454(v123, type metadata accessor for LamportTimestamp);
          v94 = v124;
        }
      }

      sub_26C40C454(v94, type metadata accessor for LamportTimestamp);
      (*v296)(v72, v300);
      v77 = v283;
    }

    sub_26C40C454(v76, type metadata accessor for ValueData);
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  swift_once();
  v202 = sub_26C46BFA4();
  __swift_project_value_buffer(v202, qword_280498530);
  v203 = 0;
  v204 = sub_26C46BF84();
  v205 = sub_26C46C3E4();

  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    v302 = v207;
    *v206 = 136315138;
    v301 = 0;
    v208 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    v209 = sub_26C46C1D4();
    v211 = sub_26C3E80A8(v209, v210, &v302);

    *(v206 + 4) = v211;
    _os_log_impl(&dword_26C3D6000, v204, v205, "SyncedSet: Failed to decode element when applying change message: %s", v206, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v207);
    MEMORY[0x26D6A18D0](v207, -1, -1);
    MEMORY[0x26D6A18D0](v206, -1, -1);
  }

  else
  {
  }

LABEL_70:
  v212 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
  v213 = v297;
  swift_beginAccess();
  v214 = v231;
  sub_26C3E91AC(v213 + v212, v231, type metadata accessor for LamportTimestamp);
  if (sub_26C41111C(v72, v214))
  {
    v215 = v214;
    v216 = v232;
    sub_26C40C2E8(v215, v232, type metadata accessor for LamportTimestamp);
  }

  else
  {
    sub_26C40C454(v214, type metadata accessor for LamportTimestamp);
    v216 = v232;
    sub_26C3E91AC(v72, v232, type metadata accessor for LamportTimestamp);
  }

  v217 = v237;
  v218 = TupleTypeMetadata2;
  v219 = v235;
  v220 = v234;
  swift_beginAccess();
  sub_26C3E9C0C(v216, v213 + v212);
  swift_endAccess();
  v222 = v303;
  v221 = v304;
  v223 = sub_26C46BCD4();
  v224 = *(v223 - 8);
  v225 = v233;
  (*(v224 + 16))(v233, v217, v223);
  (*(v224 + 56))(v225, 0, 1, v223);
  v226 = *(v218 + 48);
  *v220 = v221;
  v220[1] = v222;
  sub_26C3E9F28(v225, v220 + v226, &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  return (*(v219 + 8))(v220, v218);
}

uint64_t sub_26C405CCC()
{
  v236 = *v0;
  v1 = v236;
  v190 = type metadata accessor for SetCatchupData(0);
  MEMORY[0x28223BE20](v190);
  v191 = &v189 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LamportTimestamp(0);
  v245 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v240 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v230 = &v189 - v7;
  MEMORY[0x28223BE20](v6);
  v219 = &v189 - v8;
  v9 = *(v1 + 280);
  v217 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v229 = sub_26C46C474();
  v192 = *(v229 - 8);
  v11 = MEMORY[0x28223BE20](v229);
  v238 = &v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v239 = &v189 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v14 - 8);
  v242 = (&v189 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v226 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v225 = &v189 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v243 = &v189 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v206 = &v189 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v205 = &v189 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v199 = &v189 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v198 = &v189 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v197 = &v189 - v32;
  MEMORY[0x28223BE20](v31);
  v196 = &v189 - v33;
  v34 = type metadata accessor for ValueData(0);
  v234 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v241 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v211 = &v189 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v202 = &v189 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v201 = &v189 - v42;
  v232 = *(v9 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v224 = &v189 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v223 = &v189 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v247 = &v189 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v218 = &v189 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v204 = &v189 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v195 = &v189 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v194 = &v189 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v203 = &v189 - v58;
  MEMORY[0x28223BE20](v57);
  v227 = (&v189 - v59);
  v60 = sub_26C46C474();
  MEMORY[0x28223BE20](v60 - 8);
  v220 = &v189 - v61;
  v62 = qword_280497748;
  swift_beginAccess();
  v63 = *(v1 + 304);

  v64 = sub_26C46C324();

  v65 = MEMORY[0x277D84F90];
  v66 = sub_26C42BCBC(0, v64 & ~(v64 >> 63), 0, MEMORY[0x277D84F90]);

  v67 = sub_26C46C324();

  v231 = sub_26C42BC94(0, v67 & ~(v67 >> 63), 0, v65);
  v222 = v0;
  v68 = *(v0 + v62);
  v246 = v63;
  if ((v68 & 0xC000000000000001) != 0)
  {

    sub_26C46C4C4();
    sub_26C46C354();
    result = v252;
    v70 = v253;
    v71 = v254;
    v72 = v255;
    v73 = v256;
  }

  else
  {
    v74 = -1 << *(v68 + 32);
    v70 = v68 + 56;
    v71 = ~v74;
    v75 = -v74;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    else
    {
      v76 = -1;
    }

    v73 = v76 & *(v68 + 56);

    v72 = 0;
  }

  v77 = v9;
  v212 = qword_280497740;
  v210 = qword_280497728;
  j = (v232 + 56);
  v193 = v71;
  v78 = (v71 + 64) >> 6;
  v79 = (v232 + 16);
  v244 = (v232 + 32);
  v209 = (v245 + 48);
  v235 = (v232 + 8);
  v233 = v9;
  v80 = TupleTypeMetadata2;
  v81 = v66;
  v257 = (v232 + 16);
  v82 = v227;
  v216 = result;
  v215 = v70;
  for (i = v78; ; v78 = i)
  {
    v214 = v72;
    if (result < 0)
    {
      if (sub_26C46C4D4())
      {
        v84 = v220;
        sub_26C46C754();
        swift_unknownObjectRelease();
        v228 = v73;
        goto LABEL_18;
      }

      v213 = v81;
      v127 = v248;
LABEL_37:
      v248 = v127;
      (*j)(v220, 1, 1, v77);
      sub_26C40B328(v216);
      v128 = qword_280497720;
      v129 = v222;
      swift_beginAccess();

      v130 = sub_26C46C154();

      v131 = MEMORY[0x277D84F90];
      v242 = sub_26C42BC94(0, v130 & ~(v130 >> 63), 0, MEMORY[0x277D84F90]);
      v132 = *(v129 + v128);
      v133 = v233;
      v134 = (v132 + 64);
      v135 = 1 << v132[32];
      v136 = -1;
      if (v135 < 64)
      {
        v136 = ~(-1 << v135);
      }

      v137 = v136 & *(v132 + 8);
      v216 = (v135 + 63) >> 6;
      v228 = v80 - 8;
      v227 = (v192 + 32);
      v220 = v132;

      v138 = 0;
      v246 = v131;
      v139 = v230;
      v140 = v239;
      for (j = v134; ; v134 = j)
      {
        v141 = v238;
        if (!v137)
        {
          break;
        }

        v142 = v138;
LABEL_50:
        v145 = __clz(__rbit64(v137));
        v137 &= v137 - 1;
        v146 = v145 | (v142 << 6);
        v147 = v220;
        v148 = v232;
        v149 = v218;
        (*(v232 + 16))(v218, *(v220 + 6) + *(v232 + 72) * v146, v133);
        v150 = *(v147 + 7) + *(v245 + 72) * v146;
        v151 = v219;
        sub_26C3E91AC(v150, v219, type metadata accessor for LamportTimestamp);
        v152 = *(v80 + 48);
        v153 = *(v148 + 32);
        v141 = v238;
        v153(v238, v149, v133);
        sub_26C40C2E8(v151, &v141[v152], type metadata accessor for LamportTimestamp);
        v154 = 0;
        v140 = v239;
LABEL_51:
        v155 = *(v80 - 8);
        (*(v155 + 56))(v141, v154, 1, v80);
        (*v227)(v140, v141, v229);
        if ((*(v155 + 48))(v140, 1, v80) == 1)
        {

          v177 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
          v178 = v222;
          swift_beginAccess();
          v179 = v219;
          sub_26C3E91AC(v178 + v177, v219, type metadata accessor for LamportTimestamp);
          v180 = v191;
          v181 = MEMORY[0x277D84F90];
          *v191 = MEMORY[0x277D84F90];
          *(v180 + 1) = v181;
          *(v180 + 2) = v181;
          *(v180 + 3) = v181;
          v182 = v190;
          sub_26C46BD14();
          v183 = *(v182 + 36);
          v184 = *(v245 + 56);
          v185 = v217;
          v184(&v180[v183], 1, 1, v217);
          sub_26C3DE270(&v180[v183], &qword_280497468, &unk_26C46D400);
          sub_26C40C2E8(v179, &v180[v183], type metadata accessor for LamportTimestamp);
          v184(&v180[v183], 0, 1, v185);
          v186 = v231;
          *v180 = v213;
          *(v180 + 1) = v186;
          v187 = v242;
          *(v180 + 2) = v246;
          *(v180 + 3) = v187;
          sub_26C40C388(&qword_280497950, type metadata accessor for SetCatchupData, &unk_26C46F224);
          v188 = v248;
          v89 = sub_26C46BE64();
          sub_26C40C454(v180, type metadata accessor for SetCatchupData);
          v248 = v188;
          return v89;
        }

        v156 = *(v80 + 48);
        v157 = v247;
        (*v244)(v247, v140, v133);
        sub_26C40C2E8(&v140[v156], v139, type metadata accessor for LamportTimestamp);
        v158 = *v257;
        (*v257)(v223, v157, v133);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
        if (swift_dynamicCast())
        {
          v159 = v249;
          ObjectType = swift_getObjectType();
          v161 = sub_26C3F8720(ObjectType, v159);
          swift_unknownObjectRelease();
          v162 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
          swift_beginAccess();
          v89 = sub_26C46BB54();
          v163 = *(v89 - 8);
          v164 = v243;
          (*(v163 + 16))(v243, v161 + v162, v89);
          v165 = v164;

          (*(v163 + 56))(v164, 0, 1, v89);
          v133 = v233;
        }

        else
        {
          v89 = sub_26C46BB54();
          v165 = v243;
          (*(*(v89 - 8) + 56))(v243, 1, 1, v89);
        }

        v166 = v225;
        sub_26C3DDD48(v165, v225, &qword_280497430, &unk_26C46D3D0);
        v167 = v224;
        v158(v224, v247, v133);
        sub_26C46BB54();
        v168 = v226;
        (*(*(v89 - 8) + 56))(v226, 1, 1, v89);
        v169 = v248;
        sub_26C40C88C(v166, v167, v168, v133, *(v236 + 296), v241);
        v248 = v169;
        if (v169)
        {

          sub_26C3DE270(v243, &qword_280497430, &unk_26C46D3D0);
          sub_26C40C454(v230, type metadata accessor for LamportTimestamp);
          (*v235)(v247, v133);

          goto LABEL_66;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = v230;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v246 = sub_26C42BCBC(0, v246[2] + 1, 1, v246);
        }

        v80 = TupleTypeMetadata2;
        v140 = v239;
        v172 = v246[2];
        v171 = v246[3];
        if (v172 >= v171 >> 1)
        {
          v246 = sub_26C42BCBC((v171 > 1), v172 + 1, 1, v246);
        }

        v173 = v246;
        v246[2] = v172 + 1;
        sub_26C40C2E8(v241, v173 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v172, type metadata accessor for ValueData);
        sub_26C3E91AC(v139, v240, type metadata accessor for LamportTimestamp);
        v175 = v242[2];
        v174 = v242[3];
        if (v175 >= v174 >> 1)
        {
          v242 = sub_26C42BC94((v174 > 1), v175 + 1, 1, v242);
        }

        sub_26C3DE270(v243, &qword_280497430, &unk_26C46D3D0);
        sub_26C40C454(v139, type metadata accessor for LamportTimestamp);
        (*v235)(v247, v133);
        v176 = v242;
        v242[2] = v175 + 1;
        result = sub_26C40C2E8(v240, v176 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v175, type metadata accessor for LamportTimestamp);
      }

      if (v216 <= v138 + 1)
      {
        v143 = v138 + 1;
      }

      else
      {
        v143 = v216;
      }

      v144 = v143 - 1;
      while (1)
      {
        v142 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          break;
        }

        if (v142 >= v216)
        {
          v137 = 0;
          v154 = 1;
          v138 = v144;
          goto LABEL_51;
        }

        v137 = v134[v142];
        ++v138;
        if (v137)
        {
          v138 = v142;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      return result;
    }

    if (!v73)
    {
      v85 = v72;
      while (1)
      {
        v72 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_73;
        }

        if (v72 >= v78)
        {
          v213 = v81;
          v127 = v248;
          goto LABEL_37;
        }

        v83 = *(v70 + 8 * v72);
        ++v85;
        if (v83)
        {
          goto LABEL_17;
        }
      }
    }

    v83 = v73;
LABEL_17:
    v228 = (v83 - 1) & v83;
    v84 = v220;
    (*(v232 + 16))(v220, *(result + 48) + *(v232 + 72) * (__clz(__rbit64(v83)) | (v72 << 6)), v77);
LABEL_18:
    v207 = v73;
    (*j)(v84, 0, 1, v77);
    (*v244)(v82, v84, v77);
    if (*(v222 + v212) != 1)
    {
      v110 = v81;
      v89 = sub_26C46BB54();
      v111 = *(*(v89 - 8) + 56);
      v112 = v205;
      v111(v205, 1, 1, v89);
      v113 = v204;
      (*v79)(v204, v227, v77);
      v114 = v206;
      v111(v206, 1, 1, v89);
      v115 = v248;
      sub_26C40C88C(v112, v113, v114, v77, *(v236 + 296), v211);
      v248 = v115;
      if (v115)
      {
        goto LABEL_68;
      }

      v81 = v110;
      v106 = v110[2];
      v116 = v110[3];
      v107 = v106 + 1;
      if (v106 >= v116 >> 1)
      {
        v81 = sub_26C42BCBC((v116 > 1), v106 + 1, 1, v110);
      }

      v109 = v211;
      v108 = v217;
      v82 = v227;
      v80 = TupleTypeMetadata2;
      goto LABEL_32;
    }

    v86 = *v79;
    (*v79)(v203, v82, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    v87 = swift_dynamicCast();
    v213 = v81;
    if (v87)
    {
      break;
    }

    v89 = sub_26C46BB54();
    v117 = *(*(v89 - 8) + 56);
    v118 = v198;
    v117(v198, 1, 1, v89);
    v119 = v195;
    v86(v195, v82, v77);
    v120 = v199;
    v117(v199, 1, 1, v89);
    v121 = v248;
    sub_26C40C88C(v118, v119, v120, v77, *(v236 + 296), v202);
    v248 = v121;
    if (v121)
    {
LABEL_68:
      (*v235)(v227, v77);
      sub_26C40B328(v216);
      goto LABEL_66;
    }

    v81 = v213;
    v106 = v213[2];
    v122 = v213[3];
    v107 = v106 + 1;
    if (v106 >= v122 >> 1)
    {
      v81 = sub_26C42BCBC((v122 > 1), v106 + 1, 1, v213);
    }

    v109 = v202;
    v108 = v217;
    v80 = TupleTypeMetadata2;
    v82 = v227;
LABEL_32:
    v81[2] = v107;
    sub_26C40C2E8(v109, v81 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v106, type metadata accessor for ValueData);
    swift_beginAccess();
    v123 = v242;
    v77 = v233;
    sub_26C46C184();
    swift_endAccess();
    result = (*v209)(v123, 1, v108);
    if (result == 1)
    {
      goto LABEL_74;
    }

    v125 = v231[2];
    v124 = v231[3];
    v79 = v257;
    if (v125 >= v124 >> 1)
    {
      v231 = sub_26C42BC94((v124 > 1), v125 + 1, 1, v231);
    }

    (*v235)(v82, v77);
    v126 = v231;
    v231[2] = v125 + 1;
    sub_26C40C2E8(v242, v126 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v125, type metadata accessor for LamportTimestamp);
    v73 = v228;
    result = v216;
    v70 = v215;
  }

  v89 = v250;
  v88 = v251;
  v200 = v251;
  v90 = swift_getObjectType();
  v91 = sub_26C3F8720(v90, v88);
  v92 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  v93 = sub_26C46BB54();
  v94 = *(v93 - 8);
  v95 = v91 + v92;
  v96 = v196;
  (*(v94 + 16))(v196, v95, v93);

  v97 = v93;
  v82 = v227;
  (*(v94 + 56))(v96, 0, 1, v97);
  v98 = v194;
  v86(v194, v82, v233);
  v99 = v233;
  v100 = sub_26C3F8720(v90, v200);
  v101 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v102 = v100 + v101;
  v103 = v197;
  sub_26C3DDD48(v102, v197, &qword_280497430, &unk_26C46D3D0);

  v104 = v248;
  sub_26C40C88C(v96, v98, v103, v99, *(v236 + 296), v201);
  v248 = v104;
  if (!v104)
  {
    v81 = v213;
    v106 = v213[2];
    v105 = v213[3];
    v107 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      v81 = sub_26C42BCBC((v105 > 1), v106 + 1, 1, v213);
    }

    v108 = v217;
    v80 = TupleTypeMetadata2;
    swift_unknownObjectRelease();
    v109 = v201;
    goto LABEL_32;
  }

  sub_26C40B328(v216);
  swift_unknownObjectRelease();
  (*v235)(v82, v99);
LABEL_66:

  return v89;
}

char *sub_26C40797C()
{
  v134 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v133 = &v127 - v3;
  v4 = *(v134 + 280);
  v142 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v171 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v167 = &v127 - v7;
  v8 = type metadata accessor for LamportTimestamp(255);
  v159 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v157 = sub_26C46C474();
  v154 = *(v157 - 8);
  v10 = MEMORY[0x28223BE20](v157);
  v156 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v170 = &v127 - v12;
  v13 = type metadata accessor for PBUUID(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v132 = (&v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v136 = (&v127 - v18);
  MEMORY[0x28223BE20](v17);
  v160 = (&v127 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v131 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v152 = &v127 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v127 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v127 - v28;
  v169 = v8;
  v141 = *(v8 - 8);
  v30 = MEMORY[0x28223BE20](v27);
  v172 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v139 = &v127 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v127 - v34;
  v36 = sub_26C46BB54();
  v37 = MEMORY[0x28223BE20](v36);
  v130 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v151 = &v127 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v135 = &v127 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v163 = &v127 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v158 = &v127 - v46;
  MEMORY[0x28223BE20](v45);
  result = &v127 - v48;
  if (*&v0[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller])
  {
    v164 = v49;
    v51 = *(v49 + 2);
    v138 = &v127 - v48;
    v165 = v47;
    v161 = v51;
    v162 = v49 + 16;
    v51();
    v137 = v0;
    v52 = &v0[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp];
    swift_beginAccess();
    v147 = v52;
    sub_26C3E91AC(v52, v35, type metadata accessor for LamportTimestamp);
    v53 = *(v169 + 24);
    sub_26C3DDD48(&v35[v53], v29, &qword_280497458, &unk_26C46D3F0);
    v166 = v14;
    v54 = *(v14 + 48);
    v55 = v54(v29, 1, v13);
    v56 = v13;
    v57 = v35;
    v58 = v56;
    LODWORD(v52) = v55;
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
    v168 = v58;
    v150 = v14 + 48;
    v149 = v54;
    if (v52 == 1)
    {
      v59 = v57;
      if (qword_280497190 != -1)
      {
        swift_once();
      }

      v60 = v165;
      v61 = __swift_project_value_buffer(v165, qword_2804985C0);
      v62 = v158;
      v63 = v161;
      (v161)(v158, v61, v60);
      v64 = v159;
      v65 = v166;
      v66 = v137;
      v67 = v164;
    }

    else
    {
      v59 = v57;
      v68 = v155;
      sub_26C3DDD48(&v57[v53], v155, &qword_280497458, &unk_26C46D3F0);
      if (v54(v68, 1, v58) == 1)
      {
        v69 = v160;
        *v160 = 0;
        *(v69 + 1) = 0;
        sub_26C46BD14();
        v70 = v54(v68, 1, v58);
        v64 = v159;
        v63 = v161;
        v65 = v166;
        v62 = v158;
        v66 = v137;
        v67 = v164;
        if (v70 != 1)
        {
          sub_26C3DE270(v68, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C40C2E8(v68, v160, type metadata accessor for PBUUID);
        v64 = v159;
        v63 = v161;
        v65 = v166;
        v62 = v158;
        v66 = v137;
        v67 = v164;
      }

      v71 = v160;
      sub_26C40F3CC();
      sub_26C40C454(v71, type metadata accessor for PBUUID);
    }

    sub_26C40C454(v59, type metadata accessor for LamportTimestamp);
    if (qword_280497190 != -1)
    {
LABEL_42:
      swift_once();
    }

    v72 = v165;
    v73 = __swift_project_value_buffer(v165, qword_2804985C0);
    v74 = v163;
    v148 = v73;
    (v63)(v163);
    v75 = sub_26C46BB14();
    v76 = *(v67 + 1);
    v67 += 8;
    v76(v74, v72);
    v160 = v76;
    v76(v62, v72);
    if (v75)
    {
      v77 = v163;
      v78 = v165;
      v79 = v161;
      (v161)(v163, v138, v165);
      v80 = v147;
      swift_beginAccess();
      v81 = v135;
      (v79)(v135, v77, v78);
      v65 = v166;
      v82 = v136;
      sub_26C40F280(v81, v136);
      v160(v77, v78);
      v83 = *(v169 + 24);
      sub_26C3DE270(v80 + v83, &qword_280497458, &unk_26C46D3F0);
      sub_26C40C2E8(v82, v80 + v83, type metadata accessor for PBUUID);
      (*(v65 + 56))(v80 + v83, 0, 1, v168);
      swift_endAccess();
    }

    v164 = v67;
    v84 = qword_280497720;
    swift_beginAccess();
    v129 = v84;
    v85 = *&v66[v84];
    v86 = v85 + 64;
    v87 = 1 << *(v85 + 32);
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v63 = v88 & *(v85 + 64);
    v127 = (v87 + 63) >> 6;
    v155 = TupleTypeMetadata2 - 8;
    v158 = (v142 + 16);
    v166 = (v142 + 32);
    v154 += 4;
    v146 = (v142 + 8);
    v145 = (v65 + 56);
    v128 = (v141 + 56);
    v140 = v85;

    v62 = 0;
    v89 = v170;
    v65 = v172;
    v147 = v86;
    v153 = TupleTypeMetadata2;
    while (1)
    {
      if (!v63)
      {
        if (v127 <= (v62 + 1))
        {
          v91 = (v62 + 1);
        }

        else
        {
          v91 = v127;
        }

        v92 = (v91 - 1);
        while (1)
        {
          v90 = (v62 + 1);
          if (__OFADD__(v62, 1))
          {
            break;
          }

          if (v90 >= v127)
          {
            v63 = 0;
            v101 = 1;
            v62 = v92;
            v100 = v156;
            goto LABEL_29;
          }

          v63 = *(v86 + 8 * v90);
          ++v62;
          if (v63)
          {
            v62 = v90;
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v90 = v62;
LABEL_28:
      v93 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v94 = v93 | (v90 << 6);
      v95 = v140;
      v96 = v142;
      v97 = v167;
      (*(v142 + 16))(v167, *(v140 + 48) + *(v142 + 72) * v94, v64);
      v98 = v139;
      sub_26C3E91AC(*(v95 + 56) + *(v141 + 72) * v94, v139, type metadata accessor for LamportTimestamp);
      v99 = *(TupleTypeMetadata2 + 48);
      v100 = v156;
      (*(v96 + 32))(v156, v97, v64);
      sub_26C40C2E8(v98, &v100[v99], type metadata accessor for LamportTimestamp);
      v101 = 0;
      v89 = v170;
      v65 = v172;
LABEL_29:
      v102 = *(TupleTypeMetadata2 - 8);
      (*(v102 + 56))(v100, v101, 1, TupleTypeMetadata2);
      (*v154)(v89, v100, v157);
      if ((*(v102 + 48))(v89, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v103 = *(TupleTypeMetadata2 + 48);
      (*v166)(v171, v89, v64);
      sub_26C40C2E8(&v89[v103], v65, type metadata accessor for LamportTimestamp);
      v104 = *(v169 + 24);
      v105 = v152;
      v66 = &unk_26C46D3F0;
      sub_26C3DDD48(v65 + v104, v152, &qword_280497458, &unk_26C46D3F0);
      v106 = v168;
      v107 = v149;
      LODWORD(v103) = v149(v105, 1, v168);
      sub_26C3DE270(v105, &qword_280497458, &unk_26C46D3F0);
      if (v103 == 1)
      {
        v67 = v151;
        v108 = v148;
        v109 = v165;
        v110 = v161;
        (v161)(v151, v148, v165);
        v65 = v172;
      }

      else
      {
        v111 = v131;
        sub_26C3DDD48(&v172[v104], v131, &qword_280497458, &unk_26C46D3F0);
        if (v107(v111, 1, v106) == 1)
        {
          v112 = v132;
          *v132 = 0;
          v112[1] = 0;
          sub_26C46BD14();
          if (v107(v111, 1, v106) != 1)
          {
            sub_26C3DE270(v111, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v112 = v132;
          sub_26C40C2E8(v111, v132, type metadata accessor for PBUUID);
        }

        v67 = v151;
        sub_26C40F3CC();
        sub_26C40C454(v112, type metadata accessor for PBUUID);
        v65 = v172;
        v109 = v165;
        v110 = v161;
        v108 = v148;
      }

      v113 = v163;
      (v110)(v163, v108, v109);
      v114 = sub_26C46BB14();
      v115 = v160;
      v160(v113, v109);
      v115(v67, v109);
      v64 = v159;
      v89 = v170;
      if (v114)
      {
        (*v158)(v167, v171, v159);
        v116 = v169;
        v117 = v163;
        v66 = v165;
        v118 = v161;
        (v161)(v163, v138, v165);
        v144 = *v65;
        v119 = v133;
        *v133 = 0;
        sub_26C46BD14();
        v120 = *(v116 + 24);
        v143 = *v145;
        v143(&v119[v120], 1, 1, v168);
        v121 = v135;
        (v118)(v135, v117, v66);
        v122 = v130;
        (v118)(v130, v121, v66);
        v123 = v136;
        sub_26C40F280(v122, v136);
        v124 = v121;
        v67 = v164;
        v125 = v160;
        v160(v124, v66);
        v125(v117, v66);
        sub_26C3DE270(&v119[v120], &qword_280497458, &unk_26C46D3F0);
        sub_26C40C2E8(v123, &v119[v120], type metadata accessor for PBUUID);
        v64 = v159;
        v143(&v119[v120], 0, 1, v168);
        v126 = v169;
        *v119 = v144;
        (*v128)(v119, 0, 1, v126);
        swift_beginAccess();
        sub_26C46C174();
        v65 = v172;
        v89 = v170;
        sub_26C46C194();
        swift_endAccess();
      }

      sub_26C40C454(v65, type metadata accessor for LamportTimestamp);
      (*v146)(v171, v64);
      TupleTypeMetadata2 = v153;
      v86 = v147;
    }

    v160(v138, v165);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_26C408C1C()
{
  v1 = v0;
  v2 = *v0;
  v50 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v51 = (v39 - v8);
  v9 = *(v2 + 280);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  v12 = sub_26C46C474();
  result = MEMORY[0x28223BE20](v12 - 8);
  v15 = v39 - v14;
  if (*(v1 + qword_280497740) != 1)
  {
    return result;
  }

  v45 = v6;
  v16 = qword_280497748;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if ((v17 & 0xC000000000000001) != 0)
  {

    sub_26C46C4C4();
    result = sub_26C46C354();
    v17 = v53;
    v18 = v54;
    v19 = v55;
    v46 = v56;
    v20 = v57;
  }

  else
  {
    v21 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v17 + 56);

    v46 = 0;
  }

  v48 = qword_280497730;
  v47 = (v40 + 56);
  v39[1] = v19;
  v49 = qword_280497738;
  v24 = (v19 + 64) >> 6;
  v25 = (v40 + 16);
  v42 = (v40 + 32);
  v41 = (v40 + 8);
  v44 = v15;
  v43 = (v40 + 16);
  while (v17 < 0)
  {
    if (!sub_26C46C4D4())
    {
LABEL_27:
      (*v47)(v15, 1, 1, v9);
      sub_26C40B328(v17);
      v37 = v48;
      swift_beginAccess();
      *(v1 + v37) = 0;

      v38 = v49;
      swift_beginAccess();
      *(v1 + v38) = 0;
    }

    sub_26C46C754();
    swift_unknownObjectRelease();
LABEL_22:
    (*v47)(v15, 0, 1, v9);
    (*v42)(v11, v15, v9);
    v52[3] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
    (*v25)(boxed_opaque_existential_0, v11, v9);
    v32 = v48;
    swift_beginAccess();
    if (*(v1 + v32))
    {
      sub_26C46BB54();
      sub_26C46C184();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v33 = sub_26C46BB54();
      (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
    }

    v34 = v17;
    v35 = v49;
    swift_beginAccess();
    if (*(v1 + v35))
    {
      sub_26C46BB54();
      v26 = v45;
      sub_26C46C184();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v36 = sub_26C46BB54();
      v26 = v45;
      (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
    }

    v27 = v51;
    sub_26C3E0D08(v52, v51, v26);
    sub_26C3DE270(v26, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v27, &qword_280497430, &unk_26C46D3D0);
    (*v41)(v11, v9);
    result = sub_26C3DE270(v52, &qword_280497450, &qword_26C471080);
    v15 = v44;
    v17 = v34;
    v25 = v43;
  }

  if (v20)
  {
    v28 = v46;
LABEL_21:
    v30 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    (*(v40 + 16))(v15, *(v17 + 48) + *(v40 + 72) * (v30 | (v28 << 6)), v9);
    goto LABEL_22;
  }

  v29 = v46;
  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      goto LABEL_27;
    }

    v20 = *(v18 + 8 * v28);
    ++v29;
    if (v20)
    {
      v46 = v28;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C409268(uint64_t a1)
{
  v28 = a1;
  v2 = *(*v1 + 280);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v25 - v3;
  v4 = sub_26C46C474();
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  if (*(v1 + qword_280497740) != 1)
  {
    return result;
  }

  v8 = qword_280497748;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {

    sub_26C46C4C4();
    result = sub_26C46C354();
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    v13 = v36;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v12 = 0;
  }

  v17 = (v29 + 56);
  v25 = v11;
  v26 = v10;
  v18 = (v11 + 64) >> 6;
  v27 = v29 + 16;
  v19 = (v29 + 32);
  while (v9 < 0)
  {
    if (!sub_26C46C4D4())
    {
LABEL_22:
      (*v17)(v7, 1, 1, v2);
      return sub_26C40B328(v9);
    }

    sub_26C46C754();
    swift_unknownObjectRelease();
LABEL_20:
    (*v17)(v7, 0, 1, v2);
    (*v19)(v30, v7, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    result = swift_dynamicCast();
    if (result)
    {
      v23 = v31;
      ObjectType = swift_getObjectType();
      sub_26C3F8720(ObjectType, v23);
      sub_26C415270(v28);
      v10 = v26;
      swift_unknownObjectRelease();
    }
  }

  if (v13)
  {
    v20 = v12;
LABEL_19:
    v22 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v29 + 16))(v7, *(v9 + 48) + *(v29 + 72) * (v22 | (v20 << 6)), v2);
    goto LABEL_20;
  }

  v21 = v12;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      goto LABEL_22;
    }

    v13 = *(v10 + 8 * v20);
    ++v21;
    if (v13)
    {
      v12 = v20;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_26C40962C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26C46BB54();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 280);
  v7 = sub_26C46C474();
  result = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  if (*(v0 + qword_280497740) != 1)
  {
    return result;
  }

  v11 = qword_280497748;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {

    sub_26C46C4C4();
    result = sub_26C46C354();
    v12 = v58;
    v13 = v59;
    v14 = v60;
    v15 = v61;
    v16 = v62;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v18 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(v12 + 56);

    v14 = v18;
    v15 = 0;
  }

  v53 = v6 - 8;
  v40 = v14;
  v21 = (v14 + 64) >> 6;
  v44 = (v50 + 16);
  v43 = (v50 + 8);
  v52 = v21;
  v41 = v5;
  v47 = v10;
  v46 = v12;
  v45 = v13;
  while (v12 < 0)
  {
    if (!sub_26C46C4D4())
    {
LABEL_32:
      (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
      return sub_26C40B328(v12);
    }

    sub_26C46C754();
    swift_unknownObjectRelease();
    v23 = *(v6 - 8);
LABEL_23:
    (*(v23 + 56))(v10, 0, 1, v6);
    v57[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
    (*(v23 + 32))(boxed_opaque_existential_0, v10, v6);
    sub_26C3DE214(v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v51 = v15;
      v27 = v55;
      ObjectType = swift_getObjectType();
      v49 = v27;
      v28 = sub_26C3F8720(ObjectType, v27);
      v29 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*v44)(v5, v28 + v29, v3);
      v30 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      swift_beginAccess();
      v31 = sub_26C42C210(v5);
      if (v32)
      {
        v33 = v31;
        v42 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v1 + v30);
        v54 = v35;
        *(v1 + v30) = 0x8000000000000000;
        v36 = v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26C42EBCC();
          v35 = v54;
        }

        v37 = *(v50 + 8);
        v37(*(v35 + 48) + *(v50 + 72) * v33, v3);

        sub_26C42D490(v33, v35);
        v38 = v41;
        v37(v41, v3);
        *(v36 + v30) = v35;
        v1 = v36;
        v5 = v38;
      }

      else
      {
        (*v43)(v5, v3);
      }

      swift_endAccess();
      if (*(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) && swift_weakLoadStrong())
      {
        v39 = sub_26C3F8720(ObjectType, v49);
        sub_26C3EA514(v39);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v10 = v47;
      v12 = v46;
      v13 = v45;
      v15 = v51;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v57);
    v21 = v52;
  }

  if (v16)
  {
    v22 = v15;
LABEL_22:
    v25 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(v6 - 8);
    (*(v23 + 16))(v10, *(v12 + 48) + *(v23 + 72) * (v25 | (v22 << 6)), v6);
    goto LABEL_23;
  }

  v24 = v15;
  while (1)
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      goto LABEL_32;
    }

    v16 = *(v13 + 8 * v22);
    ++v24;
    if (v16)
    {
      v15 = v22;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C409CC8(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v95 = a1;
  v3 = *(*v2 + 280);
  v4 = *(*v2 + 296);
  v5 = *(*v2 + 304);
  v85 = *(*v2 + 288);
  v86 = v3;
  v96 = v3;
  v97 = v85;
  v83 = v5;
  v84 = v4;
  v98 = v4;
  v99 = v5;
  v6 = type metadata accessor for SyncedSet.MergeValues(0, &v96);
  v88 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v87 = &v73 - v7;
  v90 = type metadata accessor for PBUUID(0);
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v77 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v82 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v19 = type metadata accessor for LamportTimestamp(0);
  v94 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v81 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v73 - v24;
  v26 = sub_26C46BB54();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v78 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v28);
  v92 = &v73 - v31;
  v32 = *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (!v32)
  {
    __break(1u);
    return result;
  }

  v33 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v32 + v33, v25, &qword_280497430, &unk_26C46D3D0);
  v34 = (*(v27 + 48))(v25, 1, v26);
  v80 = v6;
  v79 = v19;
  if (v34 == 1)
  {
    v35 = sub_26C3DE270(v25, &qword_280497430, &unk_26C46D3D0);
LABEL_19:
    v54 = v95;
    v55 = *(v95 + 8);
    MEMORY[0x28223BE20](v35);
    *(&v73 - 2) = v54;
    v57 = sub_26C458410(sub_26C40C830, (&v73 - 4), 0, v56);
    v58 = *(v54 + 16);
    MEMORY[0x28223BE20](v57);
    *(&v73 - 2) = v54;
    v60 = sub_26C458410(sub_26C40C368, (&v73 - 4), 0, v59);
    v61 = v54 + *(type metadata accessor for SetChangedMessage(0) + 32);
    v62 = v82;
    sub_26C3DDD48(v61, v82, &qword_280497468, &unk_26C46D400);
    v63 = *(v94 + 48);
    v64 = v79;
    if (v63(v62, 1, v79) == 1)
    {
      v65 = v81;
      *v81 = 0;
      sub_26C46BD14();
      (*(v93 + 56))(&v65[*(v64 + 24)], 1, 1, v90);
      if (v63(v62, 1, v64) != 1)
      {
        sub_26C3DE270(v62, &qword_280497468, &unk_26C46D400);
      }
    }

    else
    {
      v65 = v81;
      sub_26C40C2E8(v62, v81, type metadata accessor for LamportTimestamp);
    }

    v66 = v65;
    v67 = v87;
    sub_26C40C2E8(v66, v87, type metadata accessor for LamportTimestamp);
    v96 = v86;
    v97 = v85;
    v98 = v84;
    v99 = v83;
    v68 = type metadata accessor for SyncedSet.MergeValues(0, &v96);
    *&v67[v68[13]] = v55;
    *&v67[v68[14]] = v57;
    *&v67[v68[15]] = v58;
    *&v67[v68[16]] = v60;

    sub_26C403540(v67, v89);
    return (*(v88 + 8))(v67, v80);
  }

  v75 = v27;
  (*(v27 + 32))(v92, v25, v26);
  v36 = type metadata accessor for SetChangedMessage(0);
  sub_26C3DDD48(v95 + *(v36 + 32), v18, &qword_280497468, &unk_26C46D400);
  v37 = *(v94 + 48);
  v38 = v37(v18, 1, v19);
  v74 = v26;
  if (v38 == 1)
  {
    v39 = v91;
    *v91 = 0;
    sub_26C46BD14();
    v40 = v90;
    (*(v93 + 56))(&v39[*(v19 + 24)], 1, 1, v90);
    if (v37(v18, 1, v19) != 1)
    {
      sub_26C3DE270(v18, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    v39 = v91;
    sub_26C40C2E8(v18, v91, type metadata accessor for LamportTimestamp);
    v40 = v90;
  }

  v41 = *(v19 + 24);
  sub_26C3DDD48(&v39[v41], v13, &qword_280497458, &unk_26C46D3F0);
  v42 = *(v93 + 48);
  v43 = v42(v13, 1, v40);
  sub_26C3DE270(v13, &qword_280497458, &unk_26C46D3F0);
  if (v43 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v44 = v74;
    v45 = __swift_project_value_buffer(v74, qword_2804985C0);
    v46 = v75;
    v47 = v78;
    (*(v75 + 16))(v78, v45, v44);
    v48 = v92;
  }

  else
  {
    v49 = v76;
    sub_26C3DDD48(&v39[v41], v76, &qword_280497458, &unk_26C46D3F0);
    if (v42(v49, 1, v40) == 1)
    {
      v50 = v77;
      *v77 = 0;
      v50[1] = 0;
      sub_26C46BD14();
      v51 = v42(v49, 1, v40);
      v48 = v92;
      v44 = v74;
      if (v51 != 1)
      {
        sub_26C3DE270(v49, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v50 = v77;
      sub_26C40C2E8(v49, v77, type metadata accessor for PBUUID);
      v48 = v92;
      v44 = v74;
    }

    v47 = v78;
    sub_26C40F3CC();
    sub_26C40C454(v50, type metadata accessor for PBUUID);
    v46 = v75;
  }

  sub_26C40C454(v91, type metadata accessor for LamportTimestamp);
  sub_26C40C388(&qword_2804975A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v52 = sub_26C46C1C4();
  v53 = *(v46 + 8);
  v53(v47, v44);
  if (v52)
  {
    v35 = (v53)(v48, v44);
    goto LABEL_19;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v69 = sub_26C46BFA4();
  __swift_project_value_buffer(v69, qword_280498530);
  v70 = sub_26C46BF84();
  v71 = sub_26C46C3D4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_26C3D6000, v70, v71, "SyncedSet: Cannot apply set change message. Not the current owner or unowned", v72, 2u);
    MEMORY[0x26D6A18D0](v72, -1, -1);
  }

  return (v53)(v48, v44);
}

uint64_t sub_26C40A87C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for SetChangedMessage(0);
  sub_26C3DDD48(a1 + *(v7 + 32), v6, &qword_280497468, &unk_26C46D400);
  v8 = type metadata accessor for LamportTimestamp(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_26C40C2E8(v6, a2, type metadata accessor for LamportTimestamp);
  }

  *a2 = 0;
  sub_26C46BD14();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for PBUUID(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_26C3DE270(v6, &qword_280497468, &unk_26C46D400);
  }

  return result;
}

uint64_t SyncedSet.SyncedSetChangeInfo.removedElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SyncedSet.SyncedSetChangeInfo.addedElements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncedSet.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26C46BFF4();
}

uint64_t sub_26C40ABAC()
{
}

uint64_t SyncedSet.deinit()
{
  sub_26C40C454(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);

  return v0;
}

uint64_t SyncedSet.__deallocating_deinit()
{
  SyncedSet.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26C40AD74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SyncedSet.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_26C40ADF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46C1A4();

  return sub_26C40AE4C(a1, v6, a2, a3);
}

unint64_t sub_26C40AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_26C46C1C4();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_26C40AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_26C46C2B4())
  {
    sub_26C46C634();
    v13 = sub_26C46C624();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_26C46C2B4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_26C46C2A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26C46C534();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26C40ADF0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26C40B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_26C46C2B4())
  {
    sub_26C46C504();
    v15 = sub_26C46C4F4();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_26C46C2B4();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_26C46C2A4();
    sub_26C46C274();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26C46C534();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_26C46C1A4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_26C46C1C4();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26C40B6F4()
{
  v1 = qword_280497748;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26C40B73C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26C40B6F4();
}

uint64_t sub_26C40B778(void *a1)
{

  sub_26C40B738(v1);
}

__n128 sub_26C40B7C8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_26C40B8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26C40B918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26C40B960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26C40B9AC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LamportTimestamp(319);
    if (v2 <= 0x3F)
    {
      sub_26C40C760(319, qword_280497510, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C40BA7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v37 = sub_26C46BD24();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_26C46BB54() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  if (v9)
  {
    v16 = -2;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 | 7;
  v21 = v16 + *(v8 + 64) - ((-17 - v15) | v15) - ((((-5 - v15) | v15) - ((v15 | 7) + *(v8 + 64))) | v15 | 7);
  v22 = (v15 | 7) + *(v6 + 64);
  if (a2 > v14)
  {
    v23 = ((v19 + v17 + (((v22 & ~v20) + v17 + v21) & ~v17)) & ~v17) + v19;
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v14 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 < 2)
      {
LABEL_37:
        if (v14)
        {
          goto LABEL_38;
        }

        return 0;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_37;
    }

LABEL_24:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v29 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v29 = *a1;
        }
      }

      else if (v28 == 1)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v27) + 1;
  }

LABEL_38:
  if (v7 == v14)
  {
    v30 = *(v6 + 48);
    v31 = a1;
    v32 = v7;
    v33 = v5;
  }

  else
  {
    v35 = (a1 + v22) & ~v20;
    if (v9 != v14)
    {
      v36 = (*(v12 + 48))((v35 + v17 + v21) & ~v17);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = *(v8 + 48);
    v31 = ((v15 + v35 + 4) & ~v15);
    v32 = v9;
    v33 = v37;
  }

  return v30(v31, v32, v33);
}

void sub_26C40BDE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 16);
  v6 = *(v47 - 8);
  v46 = v6;
  v7 = *(v6 + 84);
  v45 = sub_26C46BD24();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_26C46BB54() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v6 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = v17 | 7;
  v22 = -2;
  if (!v9)
  {
    v22 = -1;
  }

  v23 = v22 + *(v8 + 64) - ((-17 - v17) | v17) - ((((-5 - v17) | v17) - ((v17 | 7) + *(v8 + 64))) | v17 | 7);
  v24 = v21 + v18;
  v25 = (((v21 + v18) & ~v21) + v19 + v23) & ~v19;
  if (v14)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  v27 = ((v26 + v19 + v25) & ~v19) + v26;
  if (a3 <= v16)
  {
    goto LABEL_25;
  }

  if (v27 <= 3)
  {
    v28 = ((a3 - v16 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v28))
    {
      v11 = 4;
      if (v16 >= a2)
      {
        goto LABEL_35;
      }

LABEL_26:
      v30 = ~v16 + a2;
      if (v27 >= 4)
      {
        bzero(a1, v27);
        *a1 = v30;
        v31 = 1;
        if (v11 > 1)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_67:
              if (v11 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v11 > 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          if (v11)
          {
            a1[v27] = v31;
          }

          return;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }

LABEL_25:
    if (v16 >= a2)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v11 = 1;
  if (v16 < a2)
  {
    goto LABEL_26;
  }

LABEL_35:
  v33 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v27] = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v11)
  {
    goto LABEL_41;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v7 == v16)
  {
    v34 = v47;
    v35 = *(v46 + 56);
    v36 = a2;
    v37 = v7;
LABEL_46:

    v35(v33, v36, v37, v34);
    return;
  }

  v38 = &a1[v24] & ~v21;
  if (v9 == v16)
  {
    v35 = *(v8 + 56);
    v33 = ((v17 + v38 + 4) & ~v17);
    v36 = a2;
    v37 = v9;
    v34 = v45;
    goto LABEL_46;
  }

  v39 = v38 + v19 + v23;
  v40 = (v39 & ~v19);
  if (v15 >= a2)
  {
    v44 = *(v13 + 56);

    v44(v39 & ~v19, (a2 + 1));
  }

  else
  {
    if (v26 <= 3)
    {
      v41 = ~(-1 << (8 * v26));
    }

    else
    {
      v41 = -1;
    }

    if (v26)
    {
      v42 = v41 & (~v15 + a2);
      if (v26 <= 3)
      {
        v43 = v26;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v26);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}