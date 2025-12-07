char *sub_1A9896F48(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v77[1] = a4;
  v78 = a3;
  v94 = *MEMORY[0x1E69E9840];
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v81 = v77 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v82 = v77 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v77 - v17;
  v85[1] = "syncXPC";
  v85[2] = 7;
  v86 = 2;
  v87 = 2;
  v88.opaque[0] = 0;
  v88.opaque[1] = 0;
  LODWORD(v93[0]) = 2;
  SF_os_activity.init(_:dso:options:)(aBlock, &dword_1A9662000, "syncXPC", 2, v93);
  if (aBlock[0])
  {
    os_activity_scope_enter(aBlock[0], &v88);
    swift_unknownObjectRelease();
  }

  v77[0] = v12;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1A99764A0();
  __swift_project_value_buffer(v19, qword_1EB3AD0F0);

  v20 = sub_1A9976480();
  v21 = sub_1A9976F90();

  v22 = os_log_type_enabled(v20, v21);
  v84 = v8;
  v83 = v18;
  v80 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_1A97AF148(a1, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v20, v21, "syncXPC [%{public}s] START -- Client", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x1AC58D2C0](v24, -1, -1);
    MEMORY[0x1AC58D2C0](v23, -1, -1);
  }

  v25 = swift_allocObject();
  v25[2].isa = 0;
  p_isa = &v25[2].isa;
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_1A985537C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989D634;
    aBlock[3] = &block_descriptor_232;
    v27 = _Block_copy(aBlock);
    swift_retain_n();
    v28 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v27);
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v93, 0, sizeof(v93));
  }

  swift_beginAccess();
  v29 = *p_isa;
  if (*p_isa)
  {
    v91 = *p_isa;
    v30 = v29;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v32 = sub_1A99777A0();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = swift_allocError();
      *v38 = v29;
    }

    v37 = v84;
    swift_willThrow();

    sub_1A97B06FC(v93, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_18:

    goto LABEL_19;
  }

  v34 = v79;
  v35 = sub_1A97B67BC(v93, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 194);
  v33 = v34;
  if (v34)
  {
LABEL_15:
    sub_1A97B06FC(v93, &qword_1EB3B0BA0, &unk_1A99923D0);

    v37 = v84;
LABEL_19:
    v39 = v82;
    v40 = v83;
    (*(v9 + 16))(v82, v83, v37);

    v41 = v33;
    disableAirDropTLS();
    disableAirDropTLS();
    v42 = sub_1A9976480();
    v43 = sub_1A9976F70();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v39;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v78 = v46;
      v79 = swift_slowAlloc();
      *&v93[0] = v79;
      *v45 = 136446978;
      *(v45 + 4) = sub_1A97AF148(v80, a2, v93);
      *(v45 + 12) = 2114;
      v47 = sub_1A9975F10();
      *(v45 + 14) = v47;
      *v46 = v47;
      *(v45 + 22) = 1040;
      *(v45 + 24) = 3;
      *(v45 + 28) = 2048;
      v48 = v43;
      v49 = v81;
      sub_1A9976220();
      sub_1A99760D0();
      v51 = v50;
      v52 = *(v9 + 8);
      v52(v49, v84);
      v52(v44, v84);
      *(v45 + 30) = v51;
      _os_log_impl(&dword_1A9662000, v42, v48, "syncXPC [%{public}s] FAIL -- Client {error: %{public}@, duration: %.*f}", v45, 0x26u);
      v53 = v78;
      sub_1A97B06FC(v78, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v53, -1, -1);
      v54 = v79;
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      v37 = v84;
      MEMORY[0x1AC58D2C0](v54, -1, -1);
      v40 = v83;
      MEMORY[0x1AC58D2C0](v45, -1, -1);
    }

    else
    {

      v52 = *(v9 + 8);
      v52(v39, v37);
    }

    swift_willThrow();
    v52(v40, v37);
    os_activity_scope_leave(&v88);
    return v40;
  }

  v85[0] = v35;
  v36 = v35;
  (v78)(&v91, v85);
  v79 = v36;
  v56 = *p_isa;
  if (*p_isa)
  {
    v90 = *p_isa;
    v57 = v56;
    v58 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v59 = sub_1A99777A0();
    if (v59)
    {
      v33 = v59;
    }

    else
    {
      v33 = swift_allocError();
      *v75 = v56;
    }

    v37 = v84;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1A97B06FC(v93, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A98A7B88(v91, v92);
    goto LABEL_18;
  }

  v60 = v92;
  if (v92 == 255)
  {
    sub_1A97BCDE0();
    v33 = swift_allocError();
    *v76 = xmmword_1A999FA70;
    *(v76 + 16) = 0xD000000000000051;
    *(v76 + 24) = 0x80000001A99E51F0;
    *(v76 + 32) = 197;
    *(v76 + 80) = 0x2000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v40 = v91;
  v61 = v77[0];
  v62 = v84;
  (*(v9 + 16))(v77[0], v83, v84);

  LODWORD(v82) = v60;
  sub_1A98A7B64(v40, v60);
  disableAirDropTLS();
  disableAirDropTLS();
  v63 = sub_1A9976480();
  v64 = sub_1A9976F90();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v90 = v78;
    *v65 = 136446722;
    *(v65 + 4) = sub_1A97AF148(v80, a2, &v90);
    *(v65 + 12) = 1040;
    *(v65 + 14) = 3;
    *(v65 + 18) = 2048;
    v66 = v81;
    sub_1A9976220();
    LODWORD(v80) = v64;
    sub_1A99760D0();
    v68 = v67;
    v69 = *(v9 + 8);
    v70 = v66;
    v71 = v84;
    v69(v70, v84);
    v69(v61, v71);
    *(v65 + 20) = v68;
    _os_log_impl(&dword_1A9662000, v63, v80, "syncXPC [%{public}s] END -- Client {duration: %.*f}", v65, 0x1Cu);
    v72 = v78;
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    MEMORY[0x1AC58D2C0](v72, -1, -1);
    MEMORY[0x1AC58D2C0](v65, -1, -1);
    swift_unknownObjectRelease();

    sub_1A97B06FC(v93, &qword_1EB3B0BA0, &unk_1A99923D0);
    v73 = v83;
    v74 = v71;
  }

  else
  {

    v69 = *(v9 + 8);
    v69(v61, v62);
    swift_unknownObjectRelease();
    sub_1A97B06FC(v93, &qword_1EB3B0BA0, &unk_1A99923D0);
    v73 = v83;
    v74 = v62;
  }

  v69(v73, v74);
  sub_1A98A7B88(v40, v82);

  os_activity_scope_leave(&v88);
  return v40;
}

uint64_t sub_1A9897AC4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_1A99773D0();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = sub_1A99773E0();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9897BEC, v1, 0);
}

uint64_t sub_1A9897BEC()
{
  v1 = v0[22];
  v0[30] = *(v1 + 112);
  v2 = qword_1EB3EAF70;
  v0[31] = *(v1 + 120);
  v0[32] = v2;
  v3 = (v1 + v2);
  v4 = qword_1EB3EAF58;
  v5 = qword_1EB3EAF60;
  v0[33] = qword_1EB3EAF58;
  v0[34] = v5;
  v6 = *v3;
  v0[35] = *v3;
  v0[36] = v3[1];
  if (v6)
  {

    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[37] = v7;
    *v7 = v0;
    v7[1] = sub_1A9897DDC;
    v8 = v0 + 2;
  }

  else
  {
    v11 = (*(v1 + v4) + **(v1 + v4));
    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v9[1] = sub_1A989844C;
    v8 = v0 + 11;
  }

  return v11(v8);
}

uint64_t sub_1A9897DDC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A98980AC;
  }

  else
  {
    v4 = sub_1A9897F08;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A9897F08()
{
  v18 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 288);
  }

  else
  {

    v3 = sub_1A9976480();
    v4 = sub_1A9976F70();

    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    if (v5)
    {
      v9 = *(v0 + 240);
      v8 = *(v0 + 248);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1A97AF148(v9, v8, &v17);
      _os_log_impl(&dword_1A9662000, v3, v4, "XPCResilientAsyncSequence[%s] END. Inner sequence finished", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x1AC58D2C0](v11, -1, -1);
      MEMORY[0x1AC58D2C0](v10, -1, -1);
    }

    v1 = v7;
    v2 = v6;
  }

  sub_1A967C46C(v1, v2);
  v12 = *(v0 + 168);
  v13 = *(v0 + 32);
  v14 = *(v0 + 48);
  *v12 = *(v0 + 16);
  v12[1] = v13;
  v12[2] = v14;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A98980AC()
{
  v28 = v0;
  v1 = sub_1A9899810(*(v0 + 304));
  v2 = *(v0 + 304);

  v3 = v2;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F70();
  if (v1)
  {

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 304);
      v8 = *(v0 + 240);
      v7 = *(v0 + 248);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27[0] = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1A97AF148(v8, v7, v27);
      *(v9 + 12) = 2112;
      v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_1A9662000, v4, v5, "XPCResilientAsyncSequence[%s] RETRY. Recreating sequence {error: %@}", v9, 0x16u);
      sub_1A97B06FC(v10, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x1AC58D2C0](v11, -1, -1);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
    }

    sub_1A99778B0();
    *(v0 + 120) = xmmword_1A9996BB0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1A9898578, 0, 0);
  }

  else
  {

    if (os_log_type_enabled(v4, v5))
    {
      v14 = *(v0 + 304);
      v16 = *(v0 + 240);
      v15 = *(v0 + 248);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v17 = 136315394;
      v20 = sub_1A97AF148(v16, v15, v27);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      _os_log_impl(&dword_1A9662000, v4, v5, "XPCResilientAsyncSequence[%s] FAILED. Non retryable error {error: %@}", v17, 0x16u);
      sub_1A97B06FC(v18, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
      MEMORY[0x1AC58D2C0](v17, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 288);
    swift_willThrow();
    sub_1A967C46C(v23, v24);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1A989844C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A9899614;
  }

  else
  {
    v4 = sub_1A9899320;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A9898578()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = sub_1A98A8780(&qword_1EB3AB608, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A9977890();
  sub_1A98A8780(&unk_1EB3AB610, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A99773F0();
  v5 = *(v2 + 8);
  v0[41] = v5;
  v0[42] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_1A98986FC;
  v8 = v0[26];
  v7 = v0[27];

  return MEMORY[0x1EEE6DE58](v8, v0 + 8, v7, v4);
}

uint64_t sub_1A98986FC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    (*(v2 + 328))(*(v2 + 208), *(v2 + 184));
    v3 = sub_1A9898A84;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 328);
    v7 = *(v2 + 224);
    v6 = *(v2 + 232);
    v8 = *(v2 + 208);
    v9 = *(v2 + 216);
    v11 = v2 + 176;
    v10 = *(v2 + 176);
    v5(v8, *(v11 + 8));
    (*(v7 + 8))(v6, v9);
    v3 = sub_1A989885C;
    v4 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1A989885C()
{
  v1 = (v0[22] + v0[33]);
  v4 = (*v1 + **v1);
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_1A9898958;

  return v4(v0 + 17);
}

uint64_t sub_1A9898958()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1A98990D0;
  }

  else
  {
    v4 = sub_1A9898D50;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A9898A84()
{
  v1 = v0[22];
  (*(v0[28] + 8))(v0[29], v0[27]);

  return MEMORY[0x1EEE6DFA0](sub_1A9898B00, v1, 0);
}

uint64_t sub_1A9898B00()
{
  v23 = v0;
  v1 = v0[44];
  v2 = v0[38];

  v3 = v2;
  v4 = v1;
  v5 = sub_1A9976480();
  v6 = sub_1A9976F70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v9 = v0[30];
    v8 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315650;
    v13 = sub_1A97AF148(v9, v8, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    *(v10 + 22) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    v11[1] = v17;
    _os_log_impl(&dword_1A9662000, v5, v6, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[35];
  v18 = v0[36];
  swift_willThrow();

  sub_1A967C46C(v19, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1A9898D50()
{
  v30 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 136);

  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F90();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = v2;
    v6 = *(v0 + 304);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1A97AF148(v8, v7, &v29);
    *(v9 + 12) = 2112;
    v12 = v6;
    v2 = v27;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1A9662000, v4, v5, "XPCResilientAsyncSequence[%s] CONTINUE. Recreated sequence after error {error: %@}", v9, 0x16u);
    sub_1A97B06FC(v10, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    MEMORY[0x1AC58D2C0](v9, -1, -1);
  }

  v14 = *(v0 + 304);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = (*(v0 + 176) + *(v0 + 256));
  v2();

  sub_1A967C46C(v16, v15);
  v18 = *v17;
  v19 = v17[1];
  *v17 = *(v0 + 152);
  sub_1A967C46C(v18, v19);
  v20 = *(v0 + 176);
  v21 = (v20 + *(v0 + 256));
  v22 = *v21;
  *(v0 + 280) = *v21;
  *(v0 + 288) = v21[1];
  if (v22)
  {

    v28 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = sub_1A9897DDC;
    v24 = v0 + 16;
  }

  else
  {
    v28 = (*(v20 + *(v0 + 264)) + **(v20 + *(v0 + 264)));
    v25 = swift_task_alloc();
    *(v0 + 312) = v25;
    *v25 = v0;
    v25[1] = sub_1A989844C;
    v24 = v0 + 88;
  }

  return v28(v24);
}

uint64_t sub_1A98990D0()
{
  v23 = v0;
  v1 = v0[46];
  v2 = v0[38];

  v3 = v2;
  v4 = v1;
  v5 = sub_1A9976480();
  v6 = sub_1A9976F70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v9 = v0[30];
    v8 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315650;
    v13 = sub_1A97AF148(v9, v8, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    *(v10 + 22) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    v11[1] = v17;
    _os_log_impl(&dword_1A9662000, v5, v6, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[35];
  v18 = v0[36];
  swift_willThrow();

  sub_1A967C46C(v19, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1A9899320()
{
  v20 = v0;
  v1 = *(v0 + 88);

  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A97AF148(v5, v4, &v19);
    _os_log_impl(&dword_1A9662000, v2, v3, "XPCResilientAsyncSequence[%s] START. Created initial sequence.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  v8 = (*(v0 + 176) + *(v0 + 256));
  v1();

  v9 = *v8;
  v10 = v8[1];
  *v8 = *(v0 + 104);
  sub_1A967C46C(v9, v10);
  v11 = *(v0 + 176);
  v12 = (v11 + *(v0 + 256));
  v13 = *v12;
  *(v0 + 280) = *v12;
  *(v0 + 288) = v12[1];
  if (v13)
  {

    v18 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_1A9897DDC;
    v15 = v0 + 16;
  }

  else
  {
    v18 = (*(v11 + *(v0 + 264)) + **(v11 + *(v0 + 264)));
    v16 = swift_task_alloc();
    *(v0 + 312) = v16;
    *v16 = v0;
    v16[1] = sub_1A989844C;
    v15 = v0 + 88;
  }

  return v18(v15);
}

uint64_t sub_1A9899614()
{
  v17 = v0;
  v1 = v0[40];

  v2 = v1;
  v3 = sub_1A9976480();
  v4 = sub_1A9976F70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[40];
    v7 = v0[30];
    v6 = v0[31];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    v11 = sub_1A97AF148(v7, v6, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_1A9662000, v3, v4, "XPCResilientAsyncSequence[%s] FAILED. Failed to create initial sequence.  {error: %@}", v8, 0x16u);
    sub_1A97B06FC(v9, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A9899810(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2470, &qword_1A9996D58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35[-v5];
  v7 = sub_1A9975DF0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LODWORD(v14) = sub_1A9975DE0();
    v15 = a1;

    v16 = sub_1A9976480();
    v17 = sub_1A9976F90();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = v14;
      v14 = v18;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v14 = 136315650;
      *(v14 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v37);
      *(v14 + 12) = 1024;
      v21 = v36;
      *(v14 + 14) = v36 & 1;
      *(v14 + 18) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 20) = v23;
      *v19 = v23;
      _os_log_impl(&dword_1A9662000, v16, v17, "XPCResilientAsyncSequence[%s] Evaluated Cocoa Error {isXPCConnectionError: %{BOOL}d, error: %@}", v14, 0x1Cu);
      sub_1A97B06FC(v19, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1AC58D2C0](v20, -1, -1);
      MEMORY[0x1AC58D2C0](v14, -1, -1);

      (*(v8 + 8))(v10, v7);
      LOBYTE(v14) = v21;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13(v6, 1, 1, v7);
    sub_1A97B06FC(v6, &qword_1EB3B2470, &qword_1A9996D58);
    v24 = *(v1 + qword_1EB3EAF68);
    if (v24)
    {
      v25 = *(v1 + qword_1EB3EAF68 + 8);

      LOBYTE(v14) = v24(a1);
      v26 = a1;

      v27 = sub_1A9976480();
      v28 = sub_1A9976F90();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = v14;
        v14 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v14 = 136315650;
        *(v14 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v37);
        *(v14 + 12) = 1024;
        *(v14 + 14) = v29 & 1;
        *(v14 + 18) = 2112;
        v32 = a1;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 20) = v33;
        *v30 = v33;
        _os_log_impl(&dword_1A9662000, v27, v28, "XPCResilientAsyncSequence[%s] Evaluated shouldRetryBlock {shouldRetry: %{BOOL}d, error: %@}", v14, 0x1Cu);
        sub_1A97B06FC(v30, &unk_1EB3B2A50, &unk_1A9999420);
        MEMORY[0x1AC58D2C0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x1AC58D2C0](v31, -1, -1);
        MEMORY[0x1AC58D2C0](v14, -1, -1);
        sub_1A967C46C(v24, v25);

        LOBYTE(v14) = v29;
      }

      else
      {
        sub_1A967C46C(v24, v25);
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

char *sub_1A9899D4C()
{
  v2 = v1;
  v3 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.SharingName()) init];
  v4 = v3;
  if (*&v3[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v5 = *&v3[OBJC_IVAR___SFXPCInvocation_name];
    v6 = *&v3[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v6 = 0x80000001A99E5270;
    v5 = 0xD000000000000019;
  }

  v7 = swift_beginAccess();
  v8 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v18[2] = v5;
  v18[3] = v6;
  v18[5] = v0;
  v18[6] = v4;

  v9 = v8;
  v10 = v2;
  v11 = sub_1A9896380(v5, v6, sub_1A98A8654, v18);
  v13 = v12;
  v15 = v14;

  if (v10)
  {
  }

  else
  {

    if (v15)
    {
      v18[13] = v11;
      v16 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      swift_willThrowTypedImpl();

      sub_1A98A8690(v11, v13, 1);
    }

    else
    {
    }
  }

  return v11;
}

char *sub_1A9899F08()
{
  v2 = v1;
  v3 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.FetchUserDefaults()) init];
  v4 = v3;
  if (*&v3[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v5 = *&v3[OBJC_IVAR___SFXPCInvocation_name];
    v6 = *&v3[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v6 = 0x80000001A99E5270;
    v5 = 0xD000000000000019;
  }

  v7 = swift_beginAccess();
  v8 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v15[2] = v5;
  v15[3] = v6;
  v15[5] = v0;
  v15[6] = v4;

  v9 = v8;
  v10 = sub_1A9896F48(v5, v6, sub_1A98A7B1C, v15);
  v12 = v11;

  if (v2)
  {
  }

  else
  {

    if (v12)
    {
      v15[8] = v10;
      v13 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      swift_willThrowTypedImpl();

      sub_1A98A7B58(v10, 1);
    }

    else
    {
    }
  }

  return v10;
}

void *sub_1A989A0B0(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(a4 + 24);

  v13 = sub_1A988DE10(a2, a3, v12);
  if (!v6)
  {
    v17 = v15;
    v18 = v16;
    v27 = v13;
    v19 = v14;
    v29 = 0;
    v20 = swift_allocObject();
    *(v20 + 24) = 0;
    *(v20 + 16) = 0;
    *(v20 + 32) = -1;
    v26 = sub_1A9976060();
    aBlock[4] = sub_1A98A86E0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_344;
    v21 = a5;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v18;

    [a1 invoke:v21 parametersData:v26 parametersAsyncSequenceContainer:v23 parametersBlocksContainer:v24 sync:1 completion:v22];
    sub_1A97B43C4(v27, v19);

    _Block_release(v22);
    swift_beginAccess();
    a5 = *(v20 + 16);
    sub_1A98A86A0(a5, *(v20 + 24), *(v20 + 32));
  }

  return a5;
}

void *sub_1A989A2D4(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(a4 + 24);

  v13 = sub_1A988DE10(a2, a3, v12);
  if (!v6)
  {
    v17 = v15;
    v18 = v16;
    v27 = v13;
    v19 = v14;
    v29 = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = -1;
    v26 = sub_1A9976060();
    aBlock[4] = sub_1A98A7BA0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_238;
    v21 = a5;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v18;

    [a1 invoke:v21 parametersData:v26 parametersAsyncSequenceContainer:v23 parametersBlocksContainer:v24 sync:1 completion:v22];
    sub_1A97B43C4(v27, v19);

    _Block_release(v22);
    swift_beginAccess();
    a5 = *(v20 + 16);
    sub_1A98A7B64(a5, *(v20 + 24));
  }

  return a5;
}

void sub_1A989A4E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1A97C1554(a1, a2);
  v12 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_1A989B0A4(a5, a1, a2, a3, a4);
  v15 = v14;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  swift_beginAccess();
  v16 = *(a6 + 16);
  v17 = *(a6 + 24);
  *(a6 + 16) = v13;
  *(a6 + 24) = v15;
  v18 = *(a6 + 32);
  *(a6 + 32) = 0;
  sub_1A98A86C8(v16, v17, v18);
}

void sub_1A989A5DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1A97C1554(a1, a2);
  v12 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_1A989D194(a5, a1, a2, a3, a4, &qword_1EB3B4140, &qword_1A99A00F0, sub_1A98A7BA8);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  swift_beginAccess();
  v14 = *(a6 + 16);
  *(a6 + 16) = v13;
  v15 = *(a6 + 24);
  *(a6 + 24) = 0;
  sub_1A98A7B88(v14, v15);
}

uint64_t sub_1A989A714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v39 = a4;
  v40 = a6;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v37 = v12;
    v38 = v16;
    v36 = v19;
    v23 = v45;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v39)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v32[1] = a3;
    v32[2] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v35 = sub_1A9975E30();
    sub_1A9977450();
    v26 = v38;
    v33 = *(v38 + 48);
    v34 = v38 + 48;
    result = v33(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v26 + 32);
      (v38)(v21, v14, v15);
      v27 = v39;
      ObjectType = swift_getObjectType();
      v43[0] = v27;
      swift_unknownObjectRetain();
      v28 = sub_1A9975E20();
      sub_1A97DCC4C(v43, v21);
      v28(v42, 0);
      v29 = v37;
      sub_1A9977450();
      result = v33(v29, 1, v15);
      v30 = v36;
      if (result != 1)
      {
        (v38)(v36, v29, v15);
        ObjectType = swift_getObjectType();
        v43[0] = v23;
        swift_unknownObjectRetain();
        v31 = sub_1A9975E20();
        sub_1A97DCC4C(v43, v30);
        v31(v42, 0);
        sub_1A984AF04();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v51 = a8;
  v52 = a9;
  v60 = a7;
  v53 = a6;
  v54 = a4;
  v55 = a5;
  v56 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = sub_1A9977460();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v9)
  {
    v49 = v15;
    v50 = v19;
    v48 = v22;
    v26 = v55;
    v27 = v60;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v28 = xmmword_1A99997D0;
      *(v28 + 16) = 0xD000000000000051;
      *(v28 + 24) = 0x80000001A99E51F0;
      v29 = 164;
LABEL_11:
      *(v28 + 32) = v29;
      *(v28 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v54)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v28 = 0xD000000000000018;
      *(v28 + 8) = 0x80000001A99E52F0;
      *(v28 + 16) = 0xD000000000000051;
      *(v28 + 24) = 0x80000001A99E51F0;
      v29 = 165;
      goto LABEL_11;
    }

    if (!v55)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v28 = 0xD000000000000011;
      *(v28 + 8) = 0x80000001A99E5310;
      *(v28 + 16) = 0xD000000000000051;
      *(v28 + 24) = 0x80000001A99E51F0;
      v29 = 166;
      goto LABEL_11;
    }

    v44 = a3;
    v45 = 0;
    sub_1A9975E40();
    swift_allocObject();
    v47 = sub_1A9975E30();
    sub_1A9977450();
    v30 = v50;
    v31 = *(v50 + 48);
    v46 = v50 + 48;
    v32 = v31;
    result = v31(v17, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v33 = *(v30 + 32);
      v50 = v30 + 32;
      v43 = v33;
      v33(v24, v17, v18);
      v34 = v54;
      ObjectType = swift_getObjectType();
      v58[0] = v34;
      swift_unknownObjectRetain();
      v35 = sub_1A9975E20();
      sub_1A97DCC4C(v58, v24);
      v35(v57, 0);
      v36 = v49;
      sub_1A9977450();
      result = v32(v36, 1, v18);
      v37 = v51;
      v38 = v53;
      if (result != 1)
      {
        v39 = v27;
        v40 = v48;
        v43(v48, v36, v18);
        ObjectType = swift_getObjectType();
        v58[0] = v26;
        swift_unknownObjectRetain();
        v41 = sub_1A9975E20();
        sub_1A97DCC4C(v58, v40);
        v41(v57, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
        sub_1A97AF974(v37, v38, v39, &protocol conformance descriptor for SFXPCAsyncSequence<A>);
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989B0A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v42 = a4;
  v43 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - v12;
  v14 = sub_1A9977460();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v34 - v19;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v5)
  {
    v40 = v18;
    v41 = v15;
    v39 = v11;
    v22 = v48;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v23 = xmmword_1A99997D0;
      *(v23 + 16) = 0xD000000000000051;
      *(v23 + 24) = 0x80000001A99E51F0;
      v24 = 164;
LABEL_12:
      *(v23 + 32) = v24;
      *(v23 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v42)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v23 = 0xD000000000000018;
      *(v23 + 8) = 0x80000001A99E52F0;
      *(v23 + 16) = 0xD000000000000051;
      *(v23 + 24) = 0x80000001A99E51F0;
      v24 = 165;
      goto LABEL_12;
    }

    if (!v48)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v23 = 0xD000000000000011;
      *(v23 + 8) = 0x80000001A99E5310;
      *(v23 + 16) = 0xD000000000000051;
      *(v23 + 24) = 0x80000001A99E51F0;
      v24 = 166;
      goto LABEL_12;
    }

    v34[1] = a3;
    v35 = 0;
    sub_1A9975E40();
    swift_allocObject();
    v38 = sub_1A9975E30();
    sub_1A9977450();
    v25 = v41;
    v36 = *(v41 + 48);
    v37 = v41 + 48;
    result = v36(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v26 = v13;
      v27 = *(v25 + 32);
      v27(v20, v26, v14);
      v28 = v42;
      ObjectType = swift_getObjectType();
      v45[0] = v28;
      swift_unknownObjectRetain();
      v29 = sub_1A9975E20();
      sub_1A97DCC4C(v45, v20);
      v29(v44, 0);
      v30 = v39;
      sub_1A9977450();
      result = v36(v30, 1, v14);
      v31 = v40;
      if (result != 1)
      {
        v27(v40, v30, v14);
        ObjectType = swift_getObjectType();
        v45[0] = v22;
        swift_unknownObjectRetain();
        v32 = sub_1A9975E20();
        sub_1A97DCC4C(v45, v31);
        v32(v44, 0);
        v33 = v35;
        sub_1A9975E10();

        if (!v33)
        {
          return v47;
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v40 = a4;
  v41 = a6;
  v42 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v34 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v38 = v12;
    v39 = v16;
    v37 = v19;
    v23 = v46;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v40)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v46)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v34[0] = a3;
    v34[1] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v26 = sub_1A9975E30();
    sub_1A9977450();
    v27 = v39;
    v28 = v15;
    v35 = *(v39 + 48);
    v36 = v39 + 48;
    result = v35(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v39 = *(v27 + 32);
      (v39)(v21, v14, v15);
      v29 = v40;
      ObjectType = swift_getObjectType();
      v44[0] = v29;
      swift_unknownObjectRetain();
      v40 = v26;
      v30 = sub_1A9975E20();
      sub_1A97DCC4C(v44, v21);
      v30(v43, 0);
      v31 = v38;
      sub_1A9977450();
      result = v35(v31, 1, v15);
      v32 = v37;
      if (result != 1)
      {
        (v39)(v37, v31, v28);
        ObjectType = swift_getObjectType();
        v44[0] = v23;
        swift_unknownObjectRetain();
        v33 = sub_1A9975E20();
        sub_1A97DCC4C(v44, v32);
        v33(v43, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB0, &qword_1A9999580);
        sub_1A97AF974(&qword_1EB3B41C0, &qword_1EB3B2FB0, &qword_1A9999580, &protocol conformance descriptor for SFXPCProgressTask<A, B>);
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989BA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v39 = a4;
  v40 = a6;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v37 = v12;
    v38 = v16;
    v36 = v19;
    v23 = v45;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v39)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v32[1] = a3;
    v32[2] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v35 = sub_1A9975E30();
    sub_1A9977450();
    v26 = v38;
    v33 = *(v38 + 48);
    v34 = v38 + 48;
    result = v33(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v26 + 32);
      (v38)(v21, v14, v15);
      v27 = v39;
      ObjectType = swift_getObjectType();
      v43[0] = v27;
      swift_unknownObjectRetain();
      v28 = sub_1A9975E20();
      sub_1A97DCC4C(v43, v21);
      v28(v42, 0);
      v29 = v37;
      sub_1A9977450();
      result = v33(v29, 1, v15);
      v30 = v36;
      if (result != 1)
      {
        (v38)(v36, v29, v15);
        ObjectType = swift_getObjectType();
        v43[0] = v23;
        swift_unknownObjectRetain();
        v31 = sub_1A9975E20();
        sub_1A97DCC4C(v43, v30);
        v31(v42, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
        sub_1A98A7EA8();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v40 = a4;
  v41 = a6;
  v42 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v34 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v38 = v12;
    v39 = v16;
    v37 = v19;
    v23 = v46;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v40)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v46)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v34[0] = a3;
    v34[1] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v26 = sub_1A9975E30();
    sub_1A9977450();
    v27 = v39;
    v28 = v15;
    v35 = *(v39 + 48);
    v36 = v39 + 48;
    result = v35(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v39 = *(v27 + 32);
      (v39)(v21, v14, v15);
      v29 = v40;
      ObjectType = swift_getObjectType();
      v44[0] = v29;
      swift_unknownObjectRetain();
      v40 = v26;
      v30 = sub_1A9975E20();
      sub_1A97DCC4C(v44, v21);
      v30(v43, 0);
      v31 = v38;
      sub_1A9977450();
      result = v35(v31, 1, v15);
      v32 = v37;
      if (result != 1)
      {
        (v39)(v37, v31, v28);
        ObjectType = swift_getObjectType();
        v44[0] = v23;
        swift_unknownObjectRetain();
        v33 = sub_1A9975E20();
        sub_1A97DCC4C(v44, v32);
        v33(v43, 0);
        type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
        sub_1A98A8780(&qword_1EB3B4190, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.ServerInfo);
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989C390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v39 = a4;
  v40 = a6;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v37 = v12;
    v38 = v16;
    v36 = v19;
    v23 = v45;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v39)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v32[1] = a3;
    v32[2] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v35 = sub_1A9975E30();
    sub_1A9977450();
    v26 = v38;
    v33 = *(v38 + 48);
    v34 = v38 + 48;
    result = v33(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v26 + 32);
      (v38)(v21, v14, v15);
      v27 = v39;
      ObjectType = swift_getObjectType();
      v43[0] = v27;
      swift_unknownObjectRetain();
      v28 = sub_1A9975E20();
      sub_1A97DCC4C(v43, v21);
      v28(v42, 0);
      v29 = v37;
      sub_1A9977450();
      result = v33(v29, 1, v15);
      v30 = v36;
      if (result != 1)
      {
        (v38)(v36, v29, v15);
        ObjectType = swift_getObjectType();
        v43[0] = v23;
        swift_unknownObjectRetain();
        v31 = sub_1A9975E20();
        sub_1A97DCC4C(v43, v30);
        v31(v42, 0);
        sub_1A98A7E00();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v39 = a4;
  v40 = a6;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v37 = v12;
    v38 = v16;
    v36 = v19;
    v23 = v45;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v39)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v32[1] = a3;
    v32[2] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v35 = sub_1A9975E30();
    sub_1A9977450();
    v26 = v38;
    v33 = *(v38 + 48);
    v34 = v38 + 48;
    result = v33(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v26 + 32);
      (v38)(v21, v14, v15);
      v27 = v39;
      ObjectType = swift_getObjectType();
      v43[0] = v27;
      swift_unknownObjectRetain();
      v28 = sub_1A9975E20();
      sub_1A97DCC4C(v43, v21);
      v28(v42, 0);
      v29 = v37;
      sub_1A9977450();
      result = v33(v29, 1, v15);
      v30 = v36;
      if (result != 1)
      {
        (v38)(v36, v29, v15);
        ObjectType = swift_getObjectType();
        v43[0] = v23;
        swift_unknownObjectRetain();
        v31 = sub_1A9975E20();
        sub_1A97DCC4C(v43, v30);
        v31(v42, 0);
        sub_1A98A7DAC();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v39 = a4;
  v40 = a6;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v37 = v12;
    v38 = v16;
    v36 = v19;
    v23 = v45;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = xmmword_1A99997D0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 164;
LABEL_11:
      *(v24 + 32) = v25;
      *(v24 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v39)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x80000001A99E52F0;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 165;
      goto LABEL_11;
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = 0xD000000000000011;
      *(v24 + 8) = 0x80000001A99E5310;
      *(v24 + 16) = 0xD000000000000051;
      *(v24 + 24) = 0x80000001A99E51F0;
      v25 = 166;
      goto LABEL_11;
    }

    v32[1] = a3;
    v32[2] = 0;
    sub_1A9975E40();
    swift_allocObject();
    v35 = sub_1A9975E30();
    sub_1A9977450();
    v26 = v38;
    v33 = *(v38 + 48);
    v34 = v38 + 48;
    result = v33(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v26 + 32);
      (v38)(v21, v14, v15);
      v27 = v39;
      ObjectType = swift_getObjectType();
      v43[0] = v27;
      swift_unknownObjectRetain();
      v28 = sub_1A9975E20();
      sub_1A97DCC4C(v43, v21);
      v28(v42, 0);
      v29 = v37;
      sub_1A9977450();
      result = v33(v29, 1, v15);
      v30 = v36;
      if (result != 1)
      {
        (v38)(v36, v29, v15);
        ObjectType = swift_getObjectType();
        v43[0] = v23;
        swift_unknownObjectRetain();
        v31 = sub_1A9975E20();
        sub_1A97DCC4C(v43, v30);
        v31(v42, 0);
        sub_1A98A7D58();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989D194(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void))
{
  v44 = a8;
  v45 = a7;
  v48 = a2;
  v49 = a6;
  v46 = a4;
  v47 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = sub_1A9977460();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v8)
  {
    v42 = v14;
    v43 = v18;
    v41 = v21;
    v25 = v49;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_12:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v46)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_12;
    }

    if (!v47)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_12;
    }

    v28 = v47;
    v37 = a3;
    v38 = 0;
    sub_1A9975E40();
    swift_allocObject();
    v29 = sub_1A9975E30();
    sub_1A9977450();
    v30 = v43;
    v39 = *(v43 + 48);
    v40 = v43 + 48;
    result = v39(v16, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v30 + 32);
      (v43)(v23, v16, v17);
      v31 = v46;
      ObjectType = swift_getObjectType();
      v51[0] = v31;
      swift_unknownObjectRetain();
      v46 = v29;
      v32 = sub_1A9975E20();
      sub_1A97DCC4C(v51, v23);
      v32(v50, 0);
      v33 = v42;
      sub_1A9977450();
      result = v39(v33, 1, v17);
      if (result != 1)
      {
        v34 = v41;
        (v43)(v41, v33, v17);
        ObjectType = swift_getObjectType();
        v51[0] = v28;
        swift_unknownObjectRetain();
        v35 = sub_1A9975E20();
        sub_1A97DCC4C(v51, v34);
        v35(v50, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(v25, v45);
        v44();
        v36 = v38;
        sub_1A9975E10();

        if (!v36)
        {
          return v53;
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989D63C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ABC10);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ABC10);
  if (qword_1EB3AC840 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3AC848);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AskToAirDropSenderController.nearbyDeviceCount.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A989D814()
{
  v1 = sub_1A9976630();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A9976680();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A98A7A34;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = &block_descriptor_176;
  v8 = _Block_copy(aBlock);

  sub_1A9976640();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_1A989DB04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      sub_1A967C510(v4, v5);

      v4();
      sub_1A967C46C(v4, v5);
    }

    else
    {
    }
  }
}

id AskToAirDropSenderController.hasSeenPrivacyPrompt.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A99767E0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A99767E0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void AskToAirDropSenderController.hasSeenPrivacyPrompt.setter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_1A989DF08(unsigned __int8 *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1A989DFD0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:v1 forKey:v5];
  }
}

void (*AskToAirDropSenderController.hasSeenPrivacyPrompt.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1A989E19C;
}

void sub_1A989E19C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_1A99767E0();
    [v5 setBool:v1 forKey:v4];
  }
}

uint64_t sub_1A989E39C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A989E43C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

void sub_1A989E660(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1A989E7AC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A98A88F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A989E84C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A7A3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

id AskToAirDropSenderController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AskToAirDropSenderController.init()()
{
  *(v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_1A9977470();
  __break(1u);
}

id AskToAirDropSenderController.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98A6BE8(a1);

  return v4;
}

id AskToAirDropSenderController.init(queue:)(void *a1)
{
  v2 = sub_1A98A6BE8(a1);

  return v2;
}

void sub_1A989EB08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
    swift_beginAccess();
    v5 = *&v3[v4];
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *&v3[v4] = v7;
      sub_1A989D814();
    }
  }
}

void sub_1A989EB8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
    swift_beginAccess();
    v5 = *&v3[v4];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *&v3[v4] = v7;
      sub_1A989D814();
    }
  }
}

uint64_t AskToAirDropSenderController.start(as:pin:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1A9976C00();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = a3;
  v11[6] = a4;
  v12 = v4;
  sub_1A97B40FC(a3, a4);
  sub_1A989FBEC(0, 0, v9, &unk_1A999FA90, v11);
}

uint64_t sub_1A989ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[27] = a4;
  v7 = sub_1A9976630();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v8 = sub_1A9976680();
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A989EE8C, 0, 0);
}

uint64_t sub_1A989EE8C()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  v0[36] = __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting to start advertising", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = v0[27];

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  v0[37] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A989EFBC, v6, 0);
}

uint64_t sub_1A989EFBC()
{
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_1A989F070;
  v2 = v0[28];
  v3 = v0[29];

  return sub_1A98398BC((v0 + 17), v2, v3);
}

uint64_t sub_1A989F070()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1A989F2C8;
  }

  else
  {
    v2 = sub_1A989F184;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A989F184()
{
  v1 = *(v0 + 136);
  *(v0 + 320) = *(v0 + 144);
  v1();
  *(v0 + 328) = *(v0 + 152);
  v2 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue;
  *(v0 + 344) = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  *(v0 + 352) = v2;
  swift_beginAccess();
  v5 = (*(v0 + 328) + **(v0 + 328));
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1A989F338;

  return v5(v0 + 168);
}

uint64_t sub_1A989F2C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A989F338()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1A989FAD8;
  }

  else
  {
    v2 = sub_1A989F44C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A989F44C(uint64_t a1)
{
  v35 = v1;
  v2 = v1[21];
  if (*(v1 + 176) == 1)
  {

    v3 = sub_1A9976480();
    v4 = sub_1A9976F90();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A9662000, v3, v4, "Advertising stopped", v5, 2u);
      MEMORY[0x1AC58D2C0](v5, -1, -1);
    }

    v6 = v1[35];
    v7 = v1[32];
    v29 = v1[34];
    v31 = v1[33];
    v27 = v1[31];
    v24 = v1[30];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v1[6] = sub_1A98A8880;
    v1[7] = v8;
    v1[2] = MEMORY[0x1E69E9820];
    v1[3] = 1107296256;
    v1[4] = sub_1A981D3F8;
    v1[5] = &block_descriptor_368;
    v9 = _Block_copy(v1 + 2);

    sub_1A9976640();
    v1[24] = MEMORY[0x1E69E7CC0];
    sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v6, v7, v9);

    _Block_release(v9);
    (*(v27 + 8))(v7, v24);
    (*(v29 + 8))(v6, v31);

    v10 = v1[1];

    return v10();
  }

  else
  {
    v12 = sub_1A9976480();
    v13 = sub_1A9976F90();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34 = v15;
      *v14 = 136315138;
      v1[26] = v2;
      v16 = sub_1A9976880();
      v18 = sub_1A97AF148(v16, v17, &v34);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1A9662000, v12, v13, "Received new state: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1AC58D2C0](v15, -1, -1);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
    }

    v30 = v1[34];
    v32 = v1[33];
    v19 = v1[31];
    v25 = v1[35];
    v26 = v1[32];
    v20 = v1[30];
    *(v1[27] + v1[43]) = v2;
    v28 = v19;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v1[12] = sub_1A98A8884;
    v1[13] = v21;
    v1[8] = MEMORY[0x1E69E9820];
    v1[9] = 1107296256;
    v1[10] = sub_1A981D3F8;
    v1[11] = &block_descriptor_374;
    v22 = _Block_copy(v1 + 8);

    sub_1A9976640();
    v1[25] = MEMORY[0x1E69E7CC0];
    sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v25, v26, v22);
    _Block_release(v22);
    (*(v28 + 8))(v26, v20);
    (*(v30 + 8))(v25, v32);

    v33 = (v1[41] + *v1[41]);
    v23 = swift_task_alloc();
    v1[45] = v23;
    *v23 = v1;
    v23[1] = sub_1A989F338;

    return v33(v1 + 21);
  }
}

uint64_t sub_1A989FAD8()
{
  *(v0 + 184) = *(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1A989FB6C, 0, 0);
}

uint64_t sub_1A989FB6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A989FBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A98614D8(a3, v22 - v9);
  v11 = sub_1A9976C00();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A97B06FC(v10, &qword_1EB3B29C0, &qword_1A9991A00);
  }

  else
  {
    sub_1A9976BF0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A9976B80();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A9976890() + 32;

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

      sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

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

  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t AskToAirDropSenderController.start(pin:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1A9976C00();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;
  sub_1A97B40FC(a1, a2);
  sub_1A989FBEC(0, 0, v7, &unk_1A999FA98, v9);
}

Swift::Void __swiftcall AskToAirDropSenderController.stop()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1A9976C00();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1A989FBEC(0, 0, v3, &unk_1A999FAA8, v5);
}

uint64_t sub_1A98A0318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1A9976630();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1A9976680();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98A0434, 0, 0);
}

uint64_t sub_1A98A0434()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting to stop advertising", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = *(v0 + 72);

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  *(v0 + 128) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A0560, v6, 0);
}

uint64_t sub_1A98A0560()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A0608;

  return sub_1A9839D6C();
}

uint64_t sub_1A98A0608()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1A98A09B4;
  }

  else
  {
    v4 = sub_1A98A0734;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98A0750()
{
  v1 = v0[15];
  v2 = v0[12];
  v9 = v0[14];
  v10 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1A98A8754;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A981D3F8;
  v0[5] = &block_descriptor_361;
  v4 = _Block_copy(v0 + 2);

  sub_1A9976640();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v1, v2, v4);
  _Block_release(v4);
  (*(v8 + 8))(v2, v7);
  (*(v9 + 8))(v1, v10);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98A09B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A98A0A24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      sub_1A967C510(v4, v5);

      v4(0);
      sub_1A967C46C(v4, v5);
    }

    else
    {
    }
  }
}

uint64_t AskToAirDropSenderController.fetchPrivacyPromptInformation(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1A9976C00();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_1A97B4F40(0, 0, v7, &unk_1A999FAB8, v9);
}

uint64_t sub_1A98A0CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_1A9976630();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = sub_1A9976680();
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98A0E1C, 0, 0);
}

uint64_t sub_1A98A0E1C()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  v0[26] = __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting sharing name", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = v0[17];

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  v0[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A0F4C, v6, 0);
}

uint64_t sub_1A98A0F4C()
{
  v1 = sub_1A9899D4C();
  v0[28] = 0;
  v0[29] = v1;
  v0[30] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A98A0FE0, 0, 0);
}

uint64_t sub_1A98A0FE0(uint64_t a1)
{
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Received sharing name", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v6 = v1[29];
  v5 = v1[30];
  v24 = v1[24];
  v25 = v1[23];
  v21 = v1[25];
  v22 = v1[22];
  v7 = v1[20];
  v23 = v1[21];
  v8 = v1[19];
  v20 = v1[18];

  SFString.localized.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A9996D60;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1A98A7F5C();
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = sub_1A99767F0();
  v12 = v11;

  v13 = SFString.localized.getter();
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = v20;
  v16[3] = v8;
  v16[4] = v10;
  v16[5] = v12;
  v16[6] = v13;
  v16[7] = v15;
  v1[12] = sub_1A98A8720;
  v1[13] = v16;
  v1[8] = MEMORY[0x1E69E9820];
  v1[9] = 1107296256;
  v1[10] = sub_1A981D3F8;
  v1[11] = &block_descriptor_356;
  v17 = _Block_copy(v1 + 8);

  sub_1A9976640();
  v1[16] = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v21, v22, v17);
  _Block_release(v17);
  (*(v23 + 8))(v22, v7);
  (*(v24 + 8))(v21, v25);

  v18 = v1[1];

  return v18();
}

uint64_t sub_1A98A1358()
{
  v26 = v0;
  v1 = v0[28];
  v2 = v1;
  v3 = sub_1A9976480();
  v4 = sub_1A9976F90();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v0[15] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v9 = sub_1A9976880();
    v11 = sub_1A97AF148(v9, v10, &v25);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1A9662000, v3, v4, "Failed to fetch sharing name: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  v22 = v0[28];
  v23 = v0[24];
  v12 = v0[22];
  v24 = v0[23];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[18];
  v16 = v0[19];
  v21 = v0[25];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v0[6] = sub_1A98A86E8;
  v0[7] = v17;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A981D3F8;
  v0[5] = &block_descriptor_350;
  v18 = _Block_copy(v0 + 2);

  sub_1A9976640();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v21, v12, v18);
  _Block_release(v18);

  (*(v13 + 8))(v12, v14);
  (*(v23 + 8))(v21, v24);

  v19 = v0[1];

  return v19();
}

void sub_1A98A1800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A99767E0();
  v7 = sub_1A99767E0();
  (*(a5 + 16))(a5, v6, v7);
}

uint64_t sub_1A98A18A0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98A18CC, v1, 0);
}

uint64_t sub_1A98A18CC()
{
  v1 = sub_1A9899D4C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A98A1AF0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A98A1B68, 0, 0);
}

uint64_t sub_1A98A1B68()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98A1B94, v1, 0);
}

uint64_t sub_1A98A1B94()
{
  sub_1A9899D4C();
  *(v0 + 40) = 0;

  v1 = sub_1A99767E0();

  v2 = *(v0 + 24);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A98A1C98()
{
  v1 = *(v0 + 40);

  v2 = sub_1A9975F10();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A98A1DD0()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A98A1E44(uint64_t a1)
{
  v2 = *v1;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v2);
  return sub_1A99779B0();
}

unint64_t sub_1A98A1E88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A98A6BD8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AskToAirDropReceiverController.isNearbyDeviceClose.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AskToAirDropReceiverController.hasPendingOrActiveConnections.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A98A20CC(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4, void *a5)
{
  v8 = *a4;
  swift_beginAccess();
  a1[v8] = a3;
  v9 = &a1[*a5];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 1);
    v13 = a1;
    v14 = sub_1A967C510(v11, v12);
    v11(v14);

    return sub_1A967C46C(v11, v12);
  }

  return result;
}

uint64_t sub_1A98A2174(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  *(v8 + v9) = v7;
  v10 = v8 + *a6;
  result = swift_beginAccess();
  v12 = *v10;
  if (*v10)
  {
    v13 = *(v10 + 8);

    v12(v14);
    return sub_1A967C46C(v12, v13);
  }

  return result;
}

uint64_t AskToAirDropReceiverController.isLegacyMode.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AskToAirDropReceiverController.connectionState.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A98A23F0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  *(v2 + v4) = a1;
  v5 = v2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_1A967C46C(v6, v7);
  }

  v9 = v2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(v13);
    return sub_1A967C46C(v11, v12);
  }

  return result;
}

uint64_t sub_1A98A25E8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A98A2688(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

uint64_t sub_1A98A28C4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A98A2964(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

uint64_t sub_1A98A2BA0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A98A2C40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

id sub_1A98A2D7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A981D3F8;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A98A2F50@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982A5E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A98A2FF0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A7AA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

uint64_t sub_1A98A3214(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_1A98A3284(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1A98A33D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1A98A3434@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A98A7A74;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4, v5);
}

uint64_t sub_1A98A34D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A7A3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3, v4);
  return sub_1A967C46C(v8, v9);
}

id AskToAirDropReceiverController.hasSeenPrivacyPrompt.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A99767E0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A99767E0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void AskToAirDropReceiverController.hasSeenPrivacyPrompt.setter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_1A98A3954(unsigned __int8 *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1A98A3A1C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:v1 forKey:v5];
  }
}

void (*AskToAirDropReceiverController.hasSeenPrivacyPrompt.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1A98A3BE8;
}

void sub_1A98A3BE8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_1A99767E0();
    [v5 setBool:v1 forKey:v4];
  }
}

id sub_1A98A3E10(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_1A99767E0();

  return v3;
}

uint64_t sub_1A98A3E94(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1A98A3EF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A9976820();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

void AskToAirDropReceiverController.init()()
{
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose) = 0;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections) = 0;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDevicesDisplayName);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames) = MEMORY[0x1E69E7CC0];
  v7 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  sub_1A9977470();
  __break(1u);
}

id AskToAirDropReceiverController.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98A717C(a1);

  return v4;
}

id AskToAirDropReceiverController.init(queue:)(void *a1)
{
  v2 = sub_1A98A717C(a1);

  return v2;
}

uint64_t sub_1A98A40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v4[17] = swift_getObjectType();
  v5 = sub_1A9976630();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_1A9976680();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_1A99764A0();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41E0, &qword_1A999FD98);
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98A42BC, 0, 0);
}

uint64_t sub_1A98A42BC()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[24], qword_1EB3ABC10);
  v1 = sub_1A9976480();
  v2 = sub_1A9976F90();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v1, v2, "Registering for state updates", v3, 2u);
    MEMORY[0x1AC58D2C0](v3, -1, -1);
  }

  v4 = v0[16];

  v5 = *(v4 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient);
  v0[29] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A98A43E4, v5, 0);
}

uint64_t sub_1A98A43E4()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v6 = v2[11];
  *(v0 + 296) = v6;
  v7 = *(v4 + 16);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(&v1[v6], v5, v3);
  v8 = swift_allocObject();
  *(v0 + 256) = v8;
  swift_weakInit();
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x80000001A99E62B0;
  v9 = &v1[v2[12]];
  *v9 = &unk_1A999FDA0;
  *(v9 + 1) = v8;
  v10 = &v1[v2[13]];
  *v10 = 0;
  *(v10 + 1) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1A98A4548, 0, 0);
}

uint64_t sub_1A98A4548()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  (*(v0 + 240))(v3, v2 + *(v0 + 296), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41E8, &qword_1A999FDA8);
  v6 = swift_allocObject();
  *(v0 + 264) = v6;
  swift_defaultActor_initialize();
  sub_1A97B06FC(v2, &qword_1EB3B41E0, &qword_1A999FD98);
  v7 = (v6 + qword_1EB3EAF70);
  *v7 = 0;
  v7[1] = 0;
  *(v6 + 112) = 0xD000000000000016;
  *(v6 + 120) = 0x80000001A99E62B0;
  (*(v4 + 32))(v6 + qword_1EB3EAF60, v3, v5);
  v8 = (v6 + qword_1EB3EAF58);
  *v8 = &unk_1A999FDA0;
  v8[1] = v1;
  v9 = (v6 + qword_1EB3EAF68);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + 272) = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_queue;
  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = sub_1A98A4714;

  return sub_1A9897AC4(v0 + 16);
}

uint64_t sub_1A98A4714()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1A98A4C10;
  }

  else
  {
    v2 = sub_1A98A4828;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98A4828()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v18 = *(v0 + 40);
    v19 = *(v0 + 32);
    v3 = *(v0 + 56);
    v11 = *(v0 + 184);
    v15 = *(v0 + 176);
    v16 = *(v0 + 168);
    v17 = *(v0 + 48);
    v14 = *(v0 + 152);
    v4 = *(v0 + 136);
    v12 = *(v0 + 160);
    v13 = *(v0 + 144);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v1 & 1;
    *(v6 + 25) = *(v0 + 300);
    *(v6 + 28) = *(v0 + 303);
    *(v6 + 32) = v2;
    *(v6 + 40) = v19;
    *(v6 + 48) = v18;
    *(v6 + 56) = v17;
    *(v6 + 64) = v3;
    *(v6 + 72) = v4;
    *(v0 + 96) = sub_1A98A8140;
    *(v0 + 104) = v6;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1A981D3F8;
    *(v0 + 88) = &block_descriptor_328;
    aBlock = _Block_copy((v0 + 64));

    sub_1A98A8150(v1, v2, v19, v18, v17, v3);
    sub_1A9976640();
    *(v0 + 120) = MEMORY[0x1E69E7CC0];
    sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v11, v12, aBlock);
    _Block_release(aBlock);
    sub_1A98A81A0(v1, v2, v19, v18, v17, v3);
    (*(v14 + 8))(v12, v13);
    (*(v15 + 8))(v11, v16);

    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_1A98A4714;

    return sub_1A9897AC4(v0 + 16);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A98A4C10()
{
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1A98A4CA4, 0, 0);
}

uint64_t sub_1A98A4CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98A4DBC()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting connect to all nearby devices", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient);
  *(v0 + 24) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A4EE8, v6, 0);
}

uint64_t sub_1A98A4EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A4F90;

  return sub_1A983A1D8();
}

uint64_t sub_1A98A4F90()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1A98A50D4;
  }

  else
  {
    v4 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98A5158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  *&v6[v10] = a1;
  v11 = &v6[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler];
  swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 1);

    v12(v14);
    sub_1A967C46C(v12, v13);
  }

  v15 = &v6[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler];
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 1);

    v16(v18);
    sub_1A967C46C(v16, v17);
  }

  v19 = sub_1A9976C00();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v6;
  v21 = v6;
  sub_1A989FBEC(0, 0, v9, a3, v20);
}

uint64_t sub_1A98A5334()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting disconnect to all nearby devices", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient);
  *(v0 + 24) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A5460, v6, 0);
}

uint64_t sub_1A98A5460()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A5508;

  return sub_1A983A538();
}

uint64_t sub_1A98A5508()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1A98A88EC;
  }

  else
  {
    v4 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98A56A4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(0, 0xE000000000000000);
  }

  v4 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9998170;
  v7 = *&v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames];
  v6 = *&v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames + 8];
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1A98A7F5C();
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v10 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName];
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;

  SFString.localized.getter();
  v13 = sub_1A9976830();
  v15 = v14;

  a2(v13, v15);
}

uint64_t sub_1A98A5864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = sub_1A9976630();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A9976680();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  sub_1A9976640();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v14, v11, v17);
  _Block_release(v17);
  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

uint64_t sub_1A98A5B74(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(0, 0xE000000000000000);
  }

  v4 = (Strong + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName);
  v5 = Strong;
  swift_beginAccess();
  v7 = *v4;
  v6 = v4[1];

  a2(v7, v6);
}

uint64_t sub_1A98A5C64(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1A98A5CF8(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EB3ABC08 != -1)
    {
      swift_once();
    }

    v5 = sub_1A99764A0();
    __swift_project_value_buffer(v5, qword_1EB3ABC10);
    sub_1A98A81F0(a2, v80);
    v6 = sub_1A9976480();
    v7 = sub_1A9976F90();
    sub_1A98A824C(a2);
    v76 = a2;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v79[0] = v9;
      *v8 = 136315138;
      v10 = *(a2 + 1);
      v80[0] = *a2;
      v80[1] = v10;
      v80[2] = *(a2 + 2);
      sub_1A98A81F0(a2, v77);
      v11 = sub_1A9976880();
      v13 = sub_1A97AF148(v11, v12, v79);

      *(v8 + 4) = v13;
      a2 = v76;
      _os_log_impl(&dword_1A9662000, v6, v7, "Received state update: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
      MEMORY[0x1AC58D2C0](v8, -1, -1);
    }

    v14 = *a2;
    v15 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose;
    swift_beginAccess();
    v4[v15] = v14;
    v16 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler];
    swift_beginAccess();
    v17 = *v16;
    if (*v16)
    {
      v18 = *(v16 + 1);

      v17(v19);
      sub_1A967C46C(v17, v18);
    }

    v20 = *(a2 + 1);
    v21 = v20[2];
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E6530];
      v24 = MEMORY[0x1E69E65A8];
      *(v22 + 16) = xmmword_1A9996D60;
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v21;
      LOBYTE(v79[0]) = 3;
      SFString.localized.getter();
      v21 = sub_1A9976830();
      v26 = v25;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDevicesDisplayName];
    swift_beginAccess();
    *v27 = v21;
    v27[1] = v26;

    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v21 & 0xFFFFFFFFFFFFLL;
    }

    v29 = v28 != 0;
    v30 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections;
    swift_beginAccess();
    v4[v30] = v29;
    v31 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler];
    swift_beginAccess();
    v32 = *v31;
    if (*v31)
    {
      v33 = *(v31 + 1);

      v32(v34);
      sub_1A967C46C(v32, v33);
    }

    v35 = *(a2 + 3);
    v36 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
    swift_beginAccess();
    *&v4[v36] = v35;
    v37 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler];
    swift_beginAccess();
    v38 = *v37;
    if (*v37)
    {
      v39 = *(v37 + 1);

      v38(v40);
      sub_1A967C46C(v38, v39);
    }

    v41 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler];
    swift_beginAccess();
    v42 = *v41;
    if (*v41)
    {
      v43 = *(v41 + 1);

      v42(v44);
      sub_1A967C46C(v42, v43);
    }

    v75 = v41;
    v45 = sub_1A98A82A0(v20);
    v46 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames];
    *v46 = v45;
    v46[1] = v47;

    v48 = *(a2 + 2);
    v49 = *(v48 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v74 = v4;
      v78[0] = MEMORY[0x1E69E7CC0];
      sub_1A97BD628(0, v49, 0);
      v50 = v78[0];
      v51 = (v48 + 40);
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1A9996D60;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = sub_1A98A7F5C();
        *(v54 + 32) = v52;
        *(v54 + 40) = v53;
        v55 = qword_1EB3B0B28;
        swift_bridgeObjectRetain_n();
        if (v55 != -1)
        {
          swift_once();
        }

        v56 = qword_1EB3B38C0;
        if (qword_1EB3B38C0)
        {
          v57 = sub_1A99767E0();
          v58 = sub_1A99767E0();
          v59 = sub_1A99767E0();
          v60 = [v56 localizedStringForKey:v57 value:v58 table:v59];

          sub_1A9976820();
        }

        v61 = sub_1A9976830();
        v63 = v62;

        v78[0] = v50;
        v65 = *(v50 + 16);
        v64 = *(v50 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1A97BD628((v64 > 1), v65 + 1, 1);
          v50 = v78[0];
        }

        *(v50 + 16) = v65 + 1;
        v66 = v50 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
        v51 += 2;
        --v49;
      }

      while (v49);
      v4 = v74;
    }

    v67 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
    swift_beginAccess();
    *&v4[v67] = v50;

    v69 = *(v76 + 4);
    v68 = *(v76 + 5);
    v70 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName];
    swift_beginAccess();
    *v70 = v69;
    v70[1] = v68;

    v71 = *v75;
    if (*v75)
    {
      v72 = *(v75 + 1);

      v71(v73);
      sub_1A967C46C(v71, v72);
    }
  }
}

uint64_t AskToAirDropReceiverController.ConnectionState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x657463656E6E6F43;
    }

    if (a1 == 3)
    {
      return 0x656E6E6F63736944;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701602377;
    }

    if (a1 == 1)
    {
      return 0x697463656E6E6F43;
    }
  }

  result = sub_1A9977840();
  __break(1u);
  return result;
}

uint64_t sub_1A98A65A4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 1701602377;
    }

    if (v2 == 1)
    {
      return 0x697463656E6E6F43;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x657463656E6E6F43;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_1A9977840();
    __break(1u);
    return result;
  }

  return 0x656E6E6F63736944;
}

uint64_t sub_1A98A666C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A97B2988;

  return v6();
}

uint64_t sub_1A98A6754(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A97B2638;

  return v7();
}

uint64_t sub_1A98A683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A98614D8(a3, v23 - v10);
  v12 = sub_1A9976C00();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A97B06FC(v11, &qword_1EB3B29C0, &qword_1A9991A00);
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

  sub_1A9976BF0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A9976B80();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A9976890() + 32;
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

    sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

    return v21;
  }

LABEL_8:
  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
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

uint64_t sub_1A98A6B28@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1A98A6BA0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1A98A6BD8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

id sub_1A98A6BE8(void *a1)
{
  v2 = v1;
  v34 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount] = 0;
  v8 = &v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue] = a1;
  v10 = objc_opt_self();
  v11 = a1;
  v12 = [v10 processInfo];
  v13 = [v12 processName];

  v14 = sub_1A9976820();
  v16 = v15;

  *v7 = v14;
  v7[1] = v16;
  v7[2] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SFAirDropClient(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient] = SFAirDropClient.init(identifier:)(v7);
  v33.receiver = v2;
  v33.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v33, sel_init);
  out_token = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_1A98A8770;
  v31 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1A966A1C8;
  v29 = &block_descriptor_383;
  v19 = _Block_copy(&aBlock);
  v20 = v17;
  v21 = v11;
  v22 = v20;

  notify_register_dispatch("IncreaseNearbyCount", &out_token, v21, v19);
  _Block_release(v19);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = sub_1A98A8778;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1A966A1C8;
  v29 = &block_descriptor_387;
  v24 = _Block_copy(&aBlock);

  notify_register_dispatch("DecreaseNearbyCount", &out_token, v21, v24);

  _Block_release(v24);
  return v22;
}

uint64_t sub_1A98A6F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A989ED6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A98A7000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A0318(a1, v4, v5, v6);
}

uint64_t sub_1A98A70B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A98A0CFC(a1, v4, v5, v6, v7, v8);
}

id sub_1A98A717C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose] = 0;
  v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections] = 0;
  v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode] = 0;
  v11 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDevicesDisplayName];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState] = 0;
  v12 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler];
  *v16 = 0;
  v16[1] = 0;
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames] = MEMORY[0x1E69E7CC0];
  v17 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_queue] = a1;
  v19 = objc_opt_self();
  v20 = a1;
  v21 = [v19 processInfo];
  v22 = [v21 processName];

  v23 = sub_1A9976820();
  v25 = v24;

  *v10 = v23;
  v10[1] = v25;
  v10[2] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SFAirDropClient(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient] = SFAirDropClient.init(identifier:)(v10);
  v31.receiver = v2;
  v31.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  v27 = sub_1A9976C00();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v26;
  v29 = v26;
  sub_1A989FBEC(0, 0, v7, &unk_1A999FD90, v28);

  return v29;
}

uint64_t sub_1A98A7494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A4D9C(a1, v4, v5, v6);
}

uint64_t sub_1A98A7548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A5314(a1, v4, v5, v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A98A7670()
{
  result = qword_1EB3B4130;
  if (!qword_1EB3B4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4130);
  }

  return result;
}

uint64_t keypath_get_46Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

void sub_1A98A77CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1A99767E0();
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_1A98A7838()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A97B2988;

  return sub_1A98A1AF0(v2, v3);
}

uint64_t sub_1A98A78E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2988;

  return sub_1A97BD438(a1, v4);
}

uint64_t objectdestroy_12Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  sub_1A97B43C4(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1A98A7A3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1A98A7AC8()
{
  result = qword_1EB3AC990[0];
  if (!qword_1EB3AC990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3AC990);
  }

  return result;
}

void *sub_1A98A7B1C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A989A2D4(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), *(v2 + 48));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
  }

  return result;
}

void sub_1A98A7B58(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1A98A7B64(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1A98A7B7C(result, a2 & 1);
  }

  return result;
}

id sub_1A98A7B7C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A98A7B88(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1A98A7B58(a1, a2 & 1);
  }
}

unint64_t sub_1A98A7BA8()
{
  result = qword_1EB3B4148;
  if (!qword_1EB3B4148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4140, &qword_1A99A00F0);
    sub_1A98A7C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4148);
  }

  return result;
}

unint64_t sub_1A98A7C2C()
{
  result = qword_1EB3B4150;
  if (!qword_1EB3B4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4150);
  }

  return result;
}

unint64_t sub_1A98A7C80()
{
  result = qword_1EB3B4158;
  if (!qword_1EB3B4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4158);
  }

  return result;
}

unint64_t sub_1A98A7CD4()
{
  result = qword_1EB3B4160;
  if (!qword_1EB3B4160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2F18, &qword_1A999FD00);
    sub_1A98A7D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4160);
  }

  return result;
}

unint64_t sub_1A98A7D58()
{
  result = qword_1EB3B4168;
  if (!qword_1EB3B4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4168);
  }

  return result;
}

unint64_t sub_1A98A7DAC()
{
  result = qword_1EB3B4170;
  if (!qword_1EB3B4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4170);
  }

  return result;
}

unint64_t sub_1A98A7E00()
{
  result = qword_1EB3AC388;
  if (!qword_1EB3AC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC388);
  }

  return result;
}

unint64_t sub_1A98A7E54()
{
  result = qword_1EB3B4178;
  if (!qword_1EB3B4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4178);
  }

  return result;
}

unint64_t sub_1A98A7EA8()
{
  result = qword_1EB3B41A0;
  if (!qword_1EB3B41A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B29B0, &qword_1A9990640);
    sub_1A98A8780(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B41A0);
  }

  return result;
}

unint64_t sub_1A98A7F5C()
{
  result = qword_1EB3B41D8;
  if (!qword_1EB3B41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B41D8);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A98A7FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A40FC(a1, v4, v5, v6);
}

uint64_t sub_1A98A80A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2638;

  return sub_1A98B1B5C(a1, v1);
}

void sub_1A98A8150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_1A98A81A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1A98A82A0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A9996D60;
    v4 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1A98A7F5C();
    *(v3 + 64) = v30;
    v5 = a1[5];
    *(v3 + 32) = a1[4];
    *(v3 + 40) = v5;
    v6 = qword_1EB3B0B28;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB3B38C0;
    if (qword_1EB3B38C0)
    {
      v8 = sub_1A99767E0();
      v9 = sub_1A99767E0();
      v10 = sub_1A99767E0();
      v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

      v4 = MEMORY[0x1E69E6158];
      sub_1A9976820();
    }

    v12 = sub_1A9976830();
    v14 = v13;

    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_1A9996D60;
    if (v1 == 1)
    {
      *(v15 + 56) = v4;
      *(v15 + 64) = v30;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      SFString.localized.getter();
    }

    else
    {
      *(v15 + 56) = v4;
      *(v15 + 64) = v30;
      v17 = a1[7];
      *(v16 + 32) = a1[6];
      *(v16 + 40) = v17;

      if (v7)
      {
        v18 = sub_1A99767E0();
        v19 = sub_1A99767E0();
        v20 = sub_1A99767E0();
        v21 = [v7 localizedStringForKey:v18 value:v19 table:v20];

        sub_1A9976820();
      }

      v22 = sub_1A9976830();
      v24 = v23;

      v25 = v1 - 2;
      v26 = swift_allocObject();
      if (v25)
      {
        *(v26 + 16) = xmmword_1A9998180;
        *(v26 + 56) = v4;
        *(v26 + 64) = v30;
        *(v26 + 32) = v12;
        *(v26 + 40) = v14;
        *(v26 + 96) = v4;
        *(v26 + 104) = v30;
        v27 = MEMORY[0x1E69E6530];
        v28 = MEMORY[0x1E69E65A8];
        *(v26 + 72) = v22;
        *(v26 + 80) = v24;
        *(v26 + 136) = v27;
        *(v26 + 144) = v28;
        *(v26 + 112) = v25;
      }

      else
      {
        *(v26 + 16) = xmmword_1A9998170;
        *(v26 + 56) = v4;
        *(v26 + 64) = v30;
        *(v26 + 32) = v12;
        *(v26 + 40) = v14;
        *(v26 + 96) = v4;
        *(v26 + 104) = v30;
        *(v26 + 72) = v22;
        *(v26 + 80) = v24;
      }

      SFString.localized.getter();
    }

    v1 = sub_1A9976830();
  }

  return v1;
}

void *sub_1A98A8654@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A989A0B0(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), *(v2 + 48));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1A98A8690(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1A98A86A0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1A98A86B8(result, a2, a3 & 1);
  }

  return result;
}

id sub_1A98A86B8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A98A86C8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1A98A8690(a1, a2, a3 & 1);
  }
}

uint64_t sub_1A98A8780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A98A87C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A98A88FC()
{
  v0 = swift_allocObject();
  sub_1A98A8934();
  return v0;
}

uint64_t sub_1A98A8934()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v2 = sub_1A9976BB0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = *(*v0 + 96);
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + *(*v0 + 104)) = 0;
  v4 = (v0 + *(*v0 + 112));
  *v4 = 0;
  v4[1] = 0;
  return v0;
}

uint64_t CancellableCheckedContinuation.setContinuation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v8 = 0;
  v5 = *&v2[*(v4 + 96)];
  [v5 lock];
  sub_1A98A8B9C(v2, &v8, a1);
  [v5 unlock];
  v6 = v8;
  if (v8)
  {
    sub_1A9976BC0();
    sub_1A97FC63C();
    swift_allocError();
    sub_1A99766C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9976BB0();
    sub_1A9976B90();
  }

  return v6 ^ 1u;
}

uint64_t sub_1A98A8B9C(char *a1, _BYTE *a2, uint64_t a3)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v7 = sub_1A9976BB0();
  v8 = sub_1A99770A0();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  if (a1[*(v6 + 104)] == 1)
  {
    *a2 = 1;
  }

  else
  {
    v13 = *(v7 - 8);
    (*(v13 + 16))(v12, a3, v7);
    (*(v13 + 56))(v12, 0, 1, v7);
    v14 = *(*a1 + 88);
    swift_beginAccess();
    (*(v9 + 40))(&a1[v14], v12, v8);
    return swift_endAccess();
  }

  return result;
}

id CancellableCheckedContinuation.onCancel(_:)(uint64_t (*a1)(id), uint64_t a2)
{
  v3 = v2;
  v8 = 0;
  v6 = *(v3 + *(*v3 + 96));
  [v6 lock];
  sub_1A98A8E64(v3, &v8, a1, a2);
  result = [v6 unlock];
  if (v8)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_1A98A8E64(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + *(*result + 104)) == 1)
  {
    *a2 = 1;
  }

  else
  {
    v4 = (result + *(*result + 112));
    v5 = *v4;
    v6 = v4[1];
    *v4 = a3;
    v4[1] = a4;
    sub_1A967C46C(v5, v6);
  }

  return result;
}

uint64_t sub_1A98A8F00(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v22 = a3;
  v23 = a2;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v6 = sub_1A9976BB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = sub_1A99770A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  (*(v7 + 56))(&v22 - v15, 1, 1, v6);
  v25 = 0;
  v26 = 0;
  v17 = *(v4 + *(*v4 + 96));
  [v17 lock];
  v24 = v5;
  sub_1A98A9230(v4, v5, v16, &v25);
  [v17 unlock];
  (*(v11 + 16))(v14, v16, v10);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v7 + 32))(v9, v14, v6);
    v23(v9);
    (*(v7 + 8))(v9, v6);
  }

  v18 = v25;
  if (v24)
  {
    v19 = v26;
    if (v25)
    {
      v20 = v25;
      v25();
      v18 = v20;
    }
  }

  else
  {
    v19 = v26;
  }

  sub_1A967C46C(v18, v19);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1A98A9230(uint64_t *a1, char a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v23 = sub_1A9976BB0();
  v9 = sub_1A99770A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  *(a1 + *(v8 + 104)) = (*(a1 + *(v8 + 104)) | a2) & 1;
  v13 = *(*a1 + 88);
  swift_beginAccess();
  (*(v10 + 16))(v12, a1 + v13, v9);
  v22 = *(v10 + 40);
  v22(a3, v12, v9);
  v14 = (a1 + *(*a1 + 112));
  v15 = *v14;
  v16 = v14[1];
  v17 = *a4;
  v18 = a4[1];
  *a4 = *v14;
  a4[1] = v16;
  sub_1A967C510(v15, v16);
  sub_1A967C46C(v17, v18);
  (*(*(v23 - 8) + 56))(v12, 1, 1);
  swift_beginAccess();
  v22(a1 + v13, v12, v9);
  swift_endAccess();
  v19 = *v14;
  v20 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  return sub_1A967C46C(v19, v20);
}

uint64_t _s7Sharing30CancellableCheckedContinuationCAAytRszlE6resumeyyF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4278, &qword_1A999FE70);
  v25 = *(v1 - 8);
  v2 = v25;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = *(v2 + 56);
  v12(&v24 - v10, 1, 1, v1);
  v27 = *(v0 + *(*v0 + 96));
  [v27 lock];
  *(v0 + *(*v0 + 104)) = *(v0 + *(*v0 + 104));
  v13 = *(*v0 + 88);
  swift_beginAccess();
  sub_1A98AA324(v11);
  sub_1A98AA38C(v0 + v13, v11);
  v14 = (v0 + *(*v0 + 112));
  v15 = *v14;
  v16 = v14[1];
  v12(v9, 1, 1, v1);
  v17 = v15;
  v19 = v25;
  v18 = v26;
  swift_beginAccess();
  sub_1A967C510(v17, v16);
  sub_1A98AA3FC(v9, v0 + v13);
  swift_endAccess();
  v20 = *v14;
  v21 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  sub_1A967C46C(v20, v21);
  [v27 unlock];
  sub_1A98AA38C(v11, v18);
  if ((*(v19 + 48))(v18, 1, v1) == 1)
  {
    sub_1A98AA324(v18);
  }

  else
  {
    v22 = v24;
    (*(v19 + 32))(v24, v18, v1);
    sub_1A9976BA0();
    (*(v19 + 8))(v22, v1);
  }

  sub_1A967C46C(v17, v16);
  return sub_1A98AA324(v11);
}

uint64_t CancellableCheckedContinuation.resume(returning:)(uint64_t a1)
{
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  return sub_1A98A8F00(0, sub_1A98A98EC, v3);
}

uint64_t sub_1A98A9804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976BA0();
}

uint64_t CancellableCheckedContinuation.resume(throwing:)(uint64_t a1)
{
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  return sub_1A98A8F00(0, sub_1A98A99B8, v3);
}

uint64_t sub_1A98A9948(int a1, id a2, uint64_t a3)
{
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976B90();
}

uint64_t CancellableCheckedContinuation.isCancelled.getter()
{
  v1 = *(v0 + *(*v0 + 96));
  [v1 lock];
  v2 = *(v0 + *(*v0 + 104));
  [v1 unlock];
  return v2;
}

uint64_t sub_1A98A9A84(uint64_t a1, uint64_t a2)
{
  sub_1A9976BC0();
  sub_1A97FC63C();
  swift_allocError();
  sub_1A99766C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976B90();
}

uint64_t CancellableCheckedContinuation.deinit()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  v2 = sub_1A99770A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A967C46C(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  return v0;
}

uint64_t CancellableCheckedContinuation.__deallocating_deinit()
{
  CancellableCheckedContinuation.deinit();

  return swift_deallocClassInstance();
}

uint64_t withCancellableCheckedContinuation<A>(function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98A9CA0, 0, 0);
}

uint64_t sub_1A98A9CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  type metadata accessor for CancellableCheckedContinuation(0, *(v4 + 56), a3, a4);
  v7 = swift_allocObject();
  *(v4 + 64) = v7;
  v13 = *(v4 + 40);
  sub_1A98A8934();
  v8 = swift_task_alloc();
  *(v4 + 72) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  *(v8 + 40) = v13;
  v9 = swift_task_alloc();
  *(v4 + 80) = v9;
  *v9 = v4;
  v9[1] = sub_1A98A9DD4;
  v10 = *(v4 + 56);
  v11 = *(v4 + 16);

  return MEMORY[0x1EEE6DE18](v11, &unk_1A999FDF8, v8, sub_1A98A9A30, v7, 0, 0, v10);
}

uint64_t sub_1A98A9DD4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A98A9F54;
  }

  else
  {

    v2 = sub_1A98A9EF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98A9EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98A9F54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98A9FD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1A98AA028, 0, 0);
}

uint64_t sub_1A98AA028()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = sub_1A987A88C;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, v6, v7, sub_1A98AA2DC, v3, v5);
}

uint64_t sub_1A98AA110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A98A9FD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A98AA1D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  result = sub_1A99770A0();
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

uint64_t sub_1A98AA2DC(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v2 + 24);
  result = CancellableCheckedContinuation.setContinuation(_:)(a1);
  if (result)
  {
    return v4(v3);
  }

  return result;
}

uint64_t sub_1A98AA324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A98AA38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98AA3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98AA46C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A9976020();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for SFSecurityScopedURL(0);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v36 - v15;
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1A97BDBC0(0, v16, 0);
    v47 = v48;
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v20 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v41 = (v18 - 8);
    v42 = v19;
    v36 = *(v18 + 56);
    v37 = v4;
    v39 = v8;
    v40 = v18;
    v38 = v10;
    while (1)
    {
      v21 = v42;
      v42(v10, v20, v4);
      v21(v8, v10, v4);
      v21(v14, v8, v4);
      sub_1A97F0064(v8);
      v23 = v14;
      v25 = v24;
      v26 = v8;
      if (v2)
      {
        break;
      }

      v27 = v22;
      v46 = 0;
      v28 = *v41;
      (*v41)(v26, v4);
      v28(v10, v4);
      v29 = (v23 + *(v45 + 20));
      *v29 = v25;
      v29[1] = v27;
      v30 = v43;
      sub_1A98B70C4(v23, v43, type metadata accessor for SFSecurityScopedURL);
      v31 = v47;
      v48 = v47;
      v33 = *(v47 + 16);
      v32 = *(v47 + 24);
      v14 = v23;
      if (v33 >= v32 >> 1)
      {
        sub_1A97BDBC0((v32 > 1), v33 + 1, 1);
        v31 = v48;
      }

      *(v31 + 16) = v33 + 1;
      v34 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = v31;
      sub_1A98B70C4(v30, v31 + v34 + *(v44 + 72) * v33, type metadata accessor for SFSecurityScopedURL);
      v4 = v37;
      v20 += v36;
      --v16;
      v2 = v46;
      v8 = v39;
      v10 = v38;
      if (!v16)
      {
        return v47;
      }
    }

    v35 = *v41;
    (*v41)(v8, v4);
    v35(v10, v4);
    v35(v23, v4);
  }

  return result;
}

uint64_t sub_1A98AA844()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3AC978);
  v1 = __swift_project_value_buffer(v0, qword_1EB3AC978);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SFAirDropClient.init(identifier:)(uint64_t a1)
{
  v22 = a1;
  ObjectType = swift_getObjectType();
  v21 = sub_1A9976FB0();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A9976FA0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A9976680();
  MEMORY[0x1EEE9AC00](v6 - 8);
  swift_defaultActor_initialize();
  v20 = OBJC_IVAR____TtC7Sharing15SFAirDropClient_queue;
  v7 = sub_1A97F1CA0();
  v19[1] = "";
  v19[2] = v7;
  sub_1A9976660();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A98B7180(&qword_1EB3AC8E0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A97AF974(&qword_1EB3AC910, &unk_1EB3B26D8, &unk_1A9997EB0, MEMORY[0x1E69E6328]);
  sub_1A99771F0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v21);
  v8 = v1;
  v9 = v22;
  v10 = sub_1A9976FE0();
  *(v1 + v20) = v10;
  sub_1A98B6D20(v9, v1 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, type metadata accessor for SFAirDropClient.Identifier);
  v11 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v12 = v10;
  v13 = sub_1A99767E0();
  v14 = [v11 initWithMachServiceName:v13 options:0];

  type metadata accessor for SFXPCConnection();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  v16 = v14;
  [v16 sf:v12 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v16 setRemoteObjectInterface_];

  v8[14] = v15;
  swift_beginAccess();
  [*(v15 + 16) activate];
  v24.receiver = v8;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  sub_1A98B6CC0(v9, type metadata accessor for SFAirDropClient.Identifier);
  return v17;
}

uint64_t SFAirDropClient.deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];

  sub_1A98B6CC0(v0 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, type metadata accessor for SFAirDropClient.Identifier);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SFAirDropClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];

  sub_1A98B6CC0(v0 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, type metadata accessor for SFAirDropClient.Identifier);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 152) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 80) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 88) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 96) = swift_task_alloc();
  v10 = sub_1A99762C0();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AAFD4, v8, 0);
}

{
  *(v9 + 144) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 80) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 88) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 96) = swift_task_alloc();
  v10 = sub_1A99762C0();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AC6F8, v8, 0);
}

uint64_t sub_1A98AAFD4()
{
  v36 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 24);
  NWEndpoint.endpointUUID()();
  sub_1A99762B0();
  v6 = *(v3 + 16);
  v6(v4, v1, v2);
  v7 = sub_1A98AA46C(v5);
  v8 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 128);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v33 = *(v0 + 64);
  v11 = *(v0 + 48);
  v32 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = v7;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v7, *(v0 + 152), v34);
  v14 = v34[0];
  v29 = v34[1];
  v28 = v35;
  v15 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v12, v11);
  v17 = v16;
  sub_1A98B6D20(v8, v9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v6(v9 + v10[7], v31, v30);
  v18 = v9 + v10[11];
  *v18 = xmmword_1A999DA90;
  v19 = (v9 + v10[12]);
  v20 = (v9 + v10[13]);
  v21 = v9 + v10[5];
  *v21 = v14;
  *(v21 + 8) = v29;
  *(v21 + 16) = v28;
  *(v9 + v10[6]) = v13;
  v22 = v10[8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v23 - 8) + 56))(v9 + v22, 1, 1, v23);
  *(v9 + v10[9]) = 0;
  *(v9 + v10[10]) = xmmword_1A999DA90;
  sub_1A97D8688(*v18, *(v18 + 8));
  *v18 = v15;
  *(v18 + 8) = v17;
  *v19 = 0;
  v19[1] = 0;
  *v20 = v32;
  v20[1] = v33;

  v24 = swift_task_alloc();
  *(v0 + 136) = v24;
  *v24 = v0;
  v24[1] = sub_1A98AB300;
  v25 = *(v0 + 88);
  v26 = *(v0 + 16);

  return sub_1A983A758(v26, v25);
}

uint64_t sub_1A98AB300()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1A98AB530;
  }

  else
  {
    v4 = sub_1A98AB42C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98AB42C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_1A98B6CC0(v5, type metadata accessor for SFAirDropSend.Request);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98AB530()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = *(v2 + 8);
  v5(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);
  v5(v0[16], v0[13]);

  v6 = v0[1];

  return v6();
}

void NWEndpoint.endpointUUID()()
{
  swift_slowAlloc();
  if (sub_1A99765E0())
  {
    nw_endpoint_get_service_identifier();
    swift_unknownObjectRelease();
    sub_1A99762A0();
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x1AC58D2C0);
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 80) = v14;
  *(v9 + 88) = v8;
  *(v9 + 160) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v13;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 96) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 104) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 112) = swift_task_alloc();
  v10 = sub_1A99762C0();
  *(v9 + 120) = v10;
  *(v9 + 128) = *(v10 - 8);
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AB818, v8, 0);
}

{
  *(v9 + 80) = v14;
  *(v9 + 88) = v8;
  *(v9 + 168) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v13;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 96) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 104) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 112) = swift_task_alloc();
  v10 = sub_1A99762C0();
  *(v9 + 120) = v10;
  *(v9 + 128) = *(v10 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ABF58, v8, 0);
}

uint64_t sub_1A98AB818(uint64_t a1)
{
  v42 = v1;
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  v6 = *(v1 + 24);
  sub_1A99762B0();
  v7 = *(v3 + 16);
  v7(v5, v2, v4);
  v8 = sub_1A98AA46C(v6);
  v9 = *(v1 + 112);
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v35 = *(v1 + 120);
  v36 = *(v1 + 72);
  v39 = *(v1 + 64);
  v37 = *(v1 + 80);
  v38 = *(v1 + 56);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v14 = *(v1 + 32);
  v15 = v8;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v8, *(v1 + 160), v40);
  v33 = v40[1];
  v34 = v40[0];
  v32 = v41;
  v16 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v13, v12);
  v18 = v17;
  sub_1A98B6D20(v9, v11, type metadata accessor for SFAirDrop.TransferIdentifier);
  v7(v11 + v10[7], v14, v35);
  v19 = v11 + v10[11];
  *v19 = xmmword_1A999DA90;
  v20 = (v11 + v10[12]);
  v21 = (v11 + v10[13]);
  v22 = v11 + v10[5];
  *v22 = v34;
  *(v22 + 8) = v33;
  *(v22 + 16) = v32;
  *(v11 + v10[6]) = v15;
  v23 = v10[8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v24 - 8) + 56))(v11 + v23, 1, 1, v24);
  *(v11 + v10[9]) = 0;
  v25 = (v11 + v10[10]);
  *v25 = v36;
  v25[1] = v37;
  v26 = *v19;
  v27 = *(v19 + 8);
  sub_1A97C1554(v36, v37);
  sub_1A97D8688(v26, v27);
  *v19 = v16;
  *(v19 + 8) = v18;
  *v20 = 0;
  v20[1] = 0;
  *v21 = v38;
  v21[1] = v39;

  v28 = swift_task_alloc();
  *(v1 + 144) = v28;
  *v28 = v1;
  v28[1] = sub_1A98ABB30;
  v29 = *(v1 + 104);
  v30 = *(v1 + 16);

  return sub_1A983A758(v30, v29);
}

uint64_t sub_1A98ABB30()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_1A98ABD3C;
  }

  else
  {
    v4 = sub_1A98ABC5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98ABC5C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98ABD3C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98ABF58()
{
  v41 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 24);
  NWEndpoint.endpointUUID()();
  sub_1A99762B0();
  v6 = *(v3 + 16);
  v6(v4, v1, v2);
  v7 = sub_1A98AA46C(v5);
  v8 = *(v0 + 112);
  v33 = *(v0 + 120);
  v34 = *(v0 + 144);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v35 = *(v0 + 72);
  v36 = *(v0 + 80);
  v38 = *(v0 + 64);
  v11 = *(v0 + 48);
  v37 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = v7;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v7, *(v0 + 168), v39);
  v14 = v39[0];
  v32 = v39[1];
  v31 = v40;
  v15 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v12, v11);
  v17 = v16;
  sub_1A98B6D20(v8, v10, type metadata accessor for SFAirDrop.TransferIdentifier);
  v6(v10 + v9[7], v34, v33);
  v18 = v10 + v9[11];
  *v18 = xmmword_1A999DA90;
  v19 = (v10 + v9[12]);
  v20 = (v10 + v9[13]);
  v21 = v10 + v9[5];
  *v21 = v14;
  *(v21 + 8) = v32;
  *(v21 + 16) = v31;
  *(v10 + v9[6]) = v13;
  v22 = v9[8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v23 - 8) + 56))(v10 + v22, 1, 1, v23);
  *(v10 + v9[9]) = 0;
  v24 = (v10 + v9[10]);
  *v24 = v35;
  v24[1] = v36;
  v25 = *v18;
  v26 = *(v18 + 8);
  sub_1A97C1554(v35, v36);
  sub_1A97D8688(v25, v26);
  *v18 = v15;
  *(v18 + 8) = v17;
  *v19 = 0;
  v19[1] = 0;
  *v20 = v37;
  v20[1] = v38;

  v27 = swift_task_alloc();
  *(v0 + 152) = v27;
  *v27 = v0;
  v27[1] = sub_1A98AC298;
  v28 = *(v0 + 104);
  v29 = *(v0 + 16);

  return sub_1A983A758(v29, v28);
}

uint64_t sub_1A98AC298()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_1A98AC4C8;
  }

  else
  {
    v4 = sub_1A98AC3C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98AC3C4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_1A98B6CC0(v5, type metadata accessor for SFAirDropSend.Request);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98AC4C8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = *(v2 + 8);
  v5(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);
  v5(v0[18], v0[15]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A98AC6F8(uint64_t a1)
{
  v37 = v1;
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = *(v1 + 24);
  sub_1A99762B0();
  v7 = *(v3 + 16);
  v7(v5, v2, v4);
  v8 = sub_1A98AA46C(v6);
  v9 = *(v1 + 96);
  v32 = *(v1 + 104);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v34 = *(v1 + 64);
  v12 = *(v1 + 48);
  v33 = *(v1 + 56);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  v15 = v8;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v8, *(v1 + 144), v35);
  v30 = v35[1];
  v31 = v35[0];
  v29 = v36;
  v16 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v13, v12);
  v18 = v17;
  sub_1A98B6D20(v9, v10, type metadata accessor for SFAirDrop.TransferIdentifier);
  v7(v10 + v11[7], v14, v32);
  v19 = v10 + v11[11];
  *v19 = xmmword_1A999DA90;
  v20 = (v10 + v11[12]);
  v21 = (v10 + v11[13]);
  v22 = v10 + v11[5];
  *v22 = v31;
  *(v22 + 8) = v30;
  *(v22 + 16) = v29;
  *(v10 + v11[6]) = v15;
  v23 = v11[8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v24 - 8) + 56))(v10 + v23, 1, 1, v24);
  *(v10 + v11[9]) = 0;
  *(v10 + v11[10]) = xmmword_1A999DA90;
  sub_1A97D8688(*v19, *(v19 + 8));
  *v19 = v16;
  *(v19 + 8) = v18;
  *v20 = 0;
  v20[1] = 0;
  *v21 = v33;
  v21[1] = v34;

  v25 = swift_task_alloc();
  *(v1 + 128) = v25;
  *v25 = v1;
  v25[1] = sub_1A98AC9FC;
  v26 = *(v1 + 88);
  v27 = *(v1 + 16);

  return sub_1A983A758(v27, v26);
}

uint64_t sub_1A98AC9FC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1A98ACC08;
  }

  else
  {
    v4 = sub_1A98ACB28;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98ACB28()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98ACC08()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);

  v5 = v0[1];

  return v5();
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 88) = v13;
  *(v9 + 96) = v8;
  *(v9 + 72) = v12;
  *(v9 + 144) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  *(v9 + 104) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 112) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ACDC4, v8, 0);
}

uint64_t sub_1A98ACDC4()
{
  v39 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);
  v5(v1, v2, v4);
  v6 = sub_1A98AA46C(v3);
  v7 = *(v0 + 112);
  v29 = *(v0 + 120);
  v8 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 88);
  v36 = *(v0 + 64);
  v35 = *(v0 + 56);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = v6;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v6, *(v0 + 144), v37);
  v31 = v37[1];
  v32 = v37[0];
  v30 = v38;
  v13 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v10, v9);
  v15 = v14;
  sub_1A98B6D20(v29, v7, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5(v7 + v8[7], v11, v4);
  v16 = v7 + v8[11];
  *v16 = xmmword_1A999DA90;
  v17 = (v7 + v8[12]);
  v18 = (v7 + v8[13]);
  v19 = v7 + v8[5];
  *v19 = v32;
  *(v19 + 8) = v31;
  *(v19 + 16) = v30;
  *(v7 + v8[6]) = v12;
  v20 = v8[8];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v21 - 8) + 56))(v7 + v20, 1, 1, v21);
  *(v7 + v8[9]) = 0;
  v22 = (v7 + v8[10]);
  *v22 = v33;
  v22[1] = v34;
  v23 = *v16;
  v24 = *(v16 + 8);
  sub_1A97C1554(v33, v34);
  sub_1A97D8688(v23, v24);
  *v16 = v13;
  *(v16 + 8) = v15;
  *v17 = 0;
  v17[1] = 0;
  *v18 = v35;
  v18[1] = v36;

  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_1A98AD0D0;
  v26 = *(v0 + 112);
  v27 = *(v0 + 16);

  return sub_1A983A758(v27, v26);
}

uint64_t sub_1A98AD0D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1A98AD2A4;
  }

  else
  {
    v4 = sub_1A98AD1FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98AD1FC()
{
  v1 = v0[14];
  sub_1A98B6CC0(v0[15], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A98AD2A4()
{
  v1 = v0[14];
  sub_1A98B6CC0(v0[15], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);

  v2 = v0[1];

  return v2();
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 72) = v12;
  *(v9 + 80) = v8;
  *(v9 + 128) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  *(v9 + 88) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 96) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AD424, v8, 0);
}

uint64_t sub_1A98AD424()
{
  v34 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);
  v5(v1, v2, v4);
  v6 = sub_1A98AA46C(v3);
  v7 = *(v0 + 96);
  v29 = *(v0 + 104);
  v8 = *(v0 + 88);
  v31 = *(v0 + 64);
  v30 = *(v0 + 56);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = v6;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v6, *(v0 + 128), v32);
  v27 = v32[1];
  v28 = v32[0];
  v26 = v33;
  v13 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v10, v9);
  v15 = v14;
  sub_1A98B6D20(v29, v7, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5(v7 + v8[7], v11, v4);
  v16 = v7 + v8[11];
  *v16 = xmmword_1A999DA90;
  v17 = (v7 + v8[12]);
  v18 = (v7 + v8[13]);
  v19 = v7 + v8[5];
  *v19 = v28;
  *(v19 + 8) = v27;
  *(v19 + 16) = v26;
  *(v7 + v8[6]) = v12;
  v20 = v8[8];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v21 - 8) + 56))(v7 + v20, 1, 1, v21);
  *(v7 + v8[9]) = 0;
  *(v7 + v8[10]) = xmmword_1A999DA90;
  sub_1A97D8688(*v16, *(v16 + 8));
  *v16 = v13;
  *(v16 + 8) = v15;
  *v17 = 0;
  v17[1] = 0;
  *v18 = v30;
  v18[1] = v31;

  v22 = swift_task_alloc();
  *(v0 + 112) = v22;
  *v22 = v0;
  v22[1] = sub_1A98AD71C;
  v23 = *(v0 + 96);
  v24 = *(v0 + 16);

  return sub_1A983A758(v24, v23);
}

uint64_t sub_1A98AD71C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1A98AD8F0;
  }

  else
  {
    v4 = sub_1A98AD848;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98AD848()
{
  v1 = v0[12];
  sub_1A98B6CC0(v0[13], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A98AD8F0()
{
  v1 = v0[12];
  sub_1A98B6CC0(v0[13], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);

  v2 = v0[1];

  return v2();
}

uint64_t SFAirDropClient.send(_:to:requestSource:onlyExchange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1A99762C0();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ADA60, v6, 0);
}

{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A97B2988;

  return SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(a1, a2, a3, a4, a5, a6, 0, 0xF000000000000000);
}

uint64_t sub_1A98ADA60()
{
  NWEndpoint.endpointUUID()();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1A98ADB18;
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 104);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(v6, v7, v2, v5, v3, v4, 0, 0xF000000000000000);
}

uint64_t sub_1A98ADB18()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  v5[12] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[7];

    return MEMORY[0x1EEE6DFA0](sub_1A98ADCC0, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1A98ADCC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 352) = a8;
  *(v9 + 360) = v8;
  *(v9 + 153) = a6;
  *(v9 + 336) = a5;
  *(v9 + 344) = a7;
  *(v9 + 320) = a3;
  *(v9 + 328) = a4;
  *(v9 + 304) = a1;
  *(v9 + 312) = a2;
  v10 = sub_1A9976420();
  *(v9 + 368) = v10;
  *(v9 + 376) = *(v10 - 8);
  *(v9 + 384) = swift_task_alloc();
  v11 = sub_1A99762C0();
  *(v9 + 392) = v11;
  *(v9 + 400) = *(v11 - 8);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = type metadata accessor for SFAirDropSend.Request(0);
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  *(v9 + 440) = v12;
  *(v9 + 448) = *(v12 - 8);
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ADF38, v8, 0);
}

{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 120) = a6;
  *(v9 + 48) = a5;
  *(v9 + 56) = a7;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1A99762C0();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AEA3C, v8, 0);
}

uint64_t sub_1A98ADF38(uint64_t a1)
{
  v2 = *(v1 + 464);
  v3 = *(v1 + 312);
  sub_1A99762B0();
  v4 = static SFAirDropSend.convertItemPromises(_:)(v2, v3);
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_25:
    if (*(v1 + 153) == 1)
    {
      v84 = 2;
      v81 = 0xE300000000000000;
      v33 = 6710134;
    }

    else
    {
      v81 = 0;
      v84 = 3;
      v33 = 1;
    }

    goto LABEL_32;
  }

  v6 = (*(v1 + 312) + 32);
  v77 = (*(v1 + 376) + 8);
  v7 = v5 - 1;
  while (1)
  {
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[4];
    *(v1 + 64) = v6[3];
    *(v1 + 80) = v10;
    *(v1 + 32) = v8;
    *(v1 + 48) = v9;
    v11 = v6[5];
    v12 = v6[6];
    v13 = v6[7];
    *(v1 + 137) = *(v6 + 121);
    *(v1 + 112) = v12;
    *(v1 + 128) = v13;
    *(v1 + 96) = v11;
    *(v1 + 16) = *v6;
    v14 = *(v1 + 64);
    if (v14)
    {
      v15 = *(v1 + 56);
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = *(v1 + 64);
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    sub_1A980C124(v1 + 16, v1 + 160);

    v17 = sub_1A99767E0();
    v18 = [v17 pathExtension];

    v19 = sub_1A9976820();
    v21 = v20;

    if (qword_1EB3B0B70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v1 + 368), qword_1EB3EAFB8);
    if (v15 == sub_1A99763D0() && v16 == v22)
    {
      break;
    }

    v23 = sub_1A99777E0();

    if (v23)
    {
      goto LABEL_29;
    }

    v80 = v19;
    v83 = v21;
    v24 = v7;
    v25 = *(v1 + 384);
    v26 = *(v1 + 368);
    sub_1A99763F0();
    v27 = sub_1A99763D0();
    v29 = v28;
    (*v77)(v25, v26);
    if (v15 == v27 && v16 == v29)
    {

      v30 = v24;
    }

    else
    {
      v31 = sub_1A99777E0();

      v30 = v24;
      if ((v31 & 1) == 0)
      {

        sub_1A980C15C(v1 + 16);
        if (!v24)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    if (v80 == 0x6170726565706B70 && v83 == 0xED0000746E656D79)
    {
      goto LABEL_30;
    }

    v32 = sub_1A99777E0();

    sub_1A980C15C(v1 + 16);
    if (v32)
    {
      goto LABEL_31;
    }

    if (!v30)
    {
      goto LABEL_25;
    }

LABEL_24:
    v7 = v30 - 1;
    v6 += 9;
  }

LABEL_29:

LABEL_30:

  sub_1A980C15C(v1 + 16);
LABEL_31:
  v81 = 0;
  v84 = 3;
  v33 = 2;
LABEL_32:
  v73 = v33;
  v35 = *(v1 + 456);
  v34 = *(v1 + 464);
  v71 = *(v1 + 472);
  v72 = *(v1 + 448);
  v37 = *(v1 + 416);
  v36 = *(v1 + 424);
  v38 = *(v1 + 400);
  v70 = *(v1 + 408);
  v39 = *(v1 + 392);
  v76 = *(v1 + 440);
  v78 = *(v1 + 352);
  v74 = *(v1 + 344);
  v40 = *(v1 + 320);
  sub_1A98B6D20(*(v1 + 480), v71, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6D88(v34, v35);
  v41 = *(v38 + 16);
  v41(v70, v40, v39);
  v69 = v36 + v37[11];
  *v69 = xmmword_1A999DA90;
  sub_1A98B6D20(v71, v36, type metadata accessor for SFAirDrop.TransferIdentifier);
  v42 = v36 + v37[5];
  *v42 = v73;
  *(v42 + 8) = v81;
  *(v42 + 16) = v84;
  *(v36 + v37[6]) = 0;
  v41(v36 + v37[7], v70, v39);
  v43 = v37[8];
  sub_1A98B6D88(v35, v36 + v43);
  (*(v72 + 56))(v36 + v43, 0, 1, v76);
  *(v36 + v37[9]) = v4;
  v44 = (v36 + v37[10]);
  *v44 = v74;
  v44[1] = v78;
  v45 = *(v4 + 16);

  result = sub_1A97C1554(v74, v78);
  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v49 = 120 * v47 + 136;
  while (v45 != v47)
  {
    if (v47 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v50 = v49 + 120;
    ++v47;
    v51 = *(v4 + v49);
    v49 += 120;
    if (v51 >> 60 != 15)
    {
      v52 = *(v4 + v50 - 128);
      sub_1A97B40FC(v52, v51);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A97AED8C(0, *(v48 + 16) + 1, 1, v48);
        v48 = result;
      }

      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        result = sub_1A97AED8C((v53 > 1), v54 + 1, 1, v48);
        v48 = result;
      }

      *(v48 + 16) = v54 + 1;
      v55 = v48 + 16 * v54;
      *(v55 + 32) = v52;
      *(v55 + 40) = v51;
      goto LABEL_33;
    }
  }

  if (*(v48 + 16))
  {
    v82 = *(v48 + 40);
    v85 = *(v48 + 32);
    sub_1A97B40FC(v85, v82);
  }

  else
  {
    v82 = 0xF000000000000000;
    v85 = 0;
  }

  v56 = *(v1 + 472);
  v57 = *(v1 + 456);
  v58 = *(v1 + 424);
  v60 = *(v1 + 408);
  v59 = *(v1 + 416);
  v62 = *(v1 + 392);
  v61 = *(v1 + 400);
  v79 = *(v1 + 432);
  v63 = *(v1 + 336);
  v75 = *(v1 + 328);

  v64 = (v58 + *(v59 + 48));
  v65 = (v58 + *(v59 + 52));
  (*(v61 + 8))(v60, v62);
  sub_1A98B6DF8(v57);
  sub_1A98B6CC0(v56, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A97D8688(*v69, *(v69 + 8));
  *v69 = v85;
  *(v69 + 8) = v82;
  *v64 = 0;
  v64[1] = 0;
  *v65 = v75;
  v65[1] = v63;
  sub_1A98B70C4(v58, v79, type metadata accessor for SFAirDropSend.Request);

  v66 = swift_task_alloc();
  *(v1 + 488) = v66;
  *v66 = v1;
  v66[1] = sub_1A98AE630;
  v67 = *(v1 + 432);
  v68 = *(v1 + 304);

  return sub_1A983A758(v68, v67);
}

uint64_t sub_1A98AE630()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_1A98AE864;
  }

  else
  {
    v4 = sub_1A98AE75C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98AE75C()
{
  v1 = v0[60];
  v2 = v0[58];
  sub_1A98B6CC0(v0[54], type metadata accessor for SFAirDropSend.Request);
  sub_1A98B6DF8(v2);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDrop.TransferIdentifier);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A98AE864()
{
  v1 = v0[60];
  v2 = v0[58];
  sub_1A98B6CC0(v0[54], type metadata accessor for SFAirDropSend.Request);
  sub_1A98B6DF8(v2);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDrop.TransferIdentifier);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A98AEA3C()
{
  NWEndpoint.endpointUUID()();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1A98AEAF0;
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 120);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(v8, v9, v2, v7, v4, v6, v5, v3);
}

uint64_t sub_1A98AEAF0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  v5[14] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[9];

    return MEMORY[0x1EEE6DFA0](sub_1A98AEC98, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1A98AEC98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropClient.cancelTransfer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AEDFC, v1, 0);
}

uint64_t sub_1A98AEDFC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A5508;
  v2 = *(v0 + 16);

  return sub_1A983ABFC(sub_1A983ABFC, v2);
}

uint64_t SFAirDropClient.registerTransfersMonitor()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AEEC8, v1, 0);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AFB78, v1, 0);
}

uint64_t sub_1A98AEEC8()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4288, &qword_1A999FEF0);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  v6 = *(v1 + 112);
  *v2 = 0xD000000000000018;
  *(v2 + 1) = 0x80000001A99E6360;
  v7 = &v2[v5[12]];
  *v7 = &unk_1A999FF00;
  *(v7 + 1) = v6;
  v8 = &v2[v5[13]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1A98AF030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return sub_1A983AF44(a1);
}

uint64_t SFAirDropClient.registerTransfersMonitorAndBecomePresenter()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AF104, v1, 0);
}

uint64_t sub_1A98AF104()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4288, &qword_1A999FEF0);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  v6 = *(v1 + 112);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *v2 = 0xD000000000000018;
  *(v2 + 1) = 0x80000001A99E6360;
  v8 = &v2[v5[12]];
  *v8 = &unk_1A999FF18;
  *(v8 + 1) = v7;
  v9 = &v2[v5[13]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1A98AF290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AF32C, a2, 0);
}

uint64_t sub_1A98AF32C()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_1A98B6D20(v0[3] + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, v1, type metadata accessor for SFAirDropClient.Identifier);
  v3 = (v1 + *(v2 + 20));
  v4 = *(MEMORY[0x1E695F058] + 16);
  *v3 = *MEMORY[0x1E695F058];
  v3[1] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A98AF424;
  v6 = v0[6];

  return sub_1A983B17C(sub_1A983B17C, v6);
}

uint64_t sub_1A98AF424()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 64) = v0;

  sub_1A98B6CC0(v3, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1A98AF744;
  }

  else
  {
    v5 = sub_1A98AF580;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A98AF580()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1A98AF62C;
  v2 = *(v0 + 16);

  return sub_1A983AF44(v2);
}

uint64_t sub_1A98AF62C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A98AF744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropClient.becomeTransferPresenter()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AF83C, v0, 0);
}

uint64_t sub_1A98AF83C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1A98B6D20(v0[2] + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, v1, type metadata accessor for SFAirDropClient.Identifier);
  v3 = (v1 + *(v2 + 20));
  v4 = *(MEMORY[0x1E695F058] + 16);
  *v3 = *MEMORY[0x1E695F058];
  v3[1] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1A98AF934;
  v6 = v0[4];

  return sub_1A983B17C(sub_1A983B17C, v6);
}

uint64_t sub_1A98AF934()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 48) = v0;

  sub_1A98B6CC0(v3, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v4 = *(v2 + 16);
  if (v0)
  {
    v5 = sub_1A98AFAF4;
  }

  else
  {
    v5 = sub_1A98AFA90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A98AFA90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98AFAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98AFB78()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B9CC4;
  v2 = *(v0 + 16);

  return sub_1A983AF44(v2);
}

uint64_t SFAirDropClient.becomeTransferPresenter(animationRect:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 56) = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AFCC4, v4, 0);
}

uint64_t sub_1A98AFCC4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  sub_1A98B6D20(*(v0 + 48) + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, v1, type metadata accessor for SFAirDropClient.Identifier);
  v3 = (v1 + *(v2 + 20));
  *v3 = v8;
  v3[1] = v7;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1A98AFDBC;
  v5 = *(v0 + 64);

  return sub_1A983B17C(sub_1A983B17C, v5);
}

uint64_t sub_1A98AFDBC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 80) = v0;

  sub_1A98B6CC0(v3, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1A98AFF7C;
  }

  else
  {
    v5 = sub_1A98AFF18;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A98AFF18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98AFF7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98B0000()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B00A8;

  return sub_1A983B4C4();
}

uint64_t sub_1A98B00A8()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1A98B01D4;
  }

  else
  {
    v4 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t SFAirDropClient.startNearbySharingDiscovery(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B020C, v1, 0);
}

uint64_t sub_1A98B020C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B02B8;
  v2 = *(v0 + 16);

  return sub_1A983B6E4(sub_1A983B6E4, v2);
}

uint64_t sub_1A98B02B8()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1A98A50D4;
  }

  else
  {
    v4 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t SFAirDropClient.stopNearbySharingDiscovery(applicationLabel:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0408, v2, 0);
}

uint64_t sub_1A98B0408()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A98B04B4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1A983BC8C(sub_1A983BC8C, v2, v3);
}

uint64_t sub_1A98B04B4()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1A9859C2C;
  }

  else
  {
    v4 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t SFAirDropClient.takeNearbySharingAssertion(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0604, v2, 0);
}

uint64_t sub_1A98B0604()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A98B06B4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1A983C114(v2, v3);
}

uint64_t sub_1A98B06B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SFAirDropClient.releaseNearbySharingAssertion(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B07C8, v1, 0);
}

uint64_t sub_1A98B07C8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A5508;
  v2 = *(v0 + 16);

  return sub_1A983C6D8(sub_1A983C6D8, v2);
}

uint64_t SFAirDropClient.nearbySharingInteractions()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0894, v1, 0);
}

uint64_t sub_1A98B0894()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4290, &qword_1A999FF68);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  *v2 = 0xD000000000000019;
  *(v2 + 1) = 0x80000001A99E6380;
  v6 = &v2[v5[12]];
  *v6 = &unk_1A999FF78;
  *(v6 + 1) = v1;
  v7 = &v2[v5[13]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1A98B09FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0A1C, 0, 0);
}

uint64_t sub_1A98B0A1C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A97E0474;
  v2 = *(v0 + 16);

  return sub_1A983CA24(v2);
}

uint64_t SFAirDropClient.updateSimulatedNearbySharingInteraction(update:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0AEC, v1, 0);
}

uint64_t sub_1A98B0AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A5508;
  v2 = *(v0 + 16);

  return sub_1A983CEB4(sub_1A983CEB4, v2);
}

uint64_t SFAirDropClient.boopAtADistance(begin:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0BBC, v2, 0);
}

uint64_t sub_1A98B0BBC()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A98B9CC8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1A983D1FC(v2, v3);
}

uint64_t SFAirDropClient.boopAtADistance(update:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98B0D04, v2, 0);
}

uint64_t sub_1A98B0D04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  sub_1A98B6D20(v0[2], v1, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  sub_1A98B6D20(v3, v1 + *(v2 + 20), type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A98B0E04;

  return (sub_1A983D554)();
}

uint64_t sub_1A98B0E04()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1A98B0FB4;
  }

  else
  {
    v4 = sub_1A98B0F30;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98B0F30()
{
  sub_1A98B6CC0(*(v0 + 48), type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98B0FB4()
{
  sub_1A98B6CC0(*(v0 + 48), type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.init(transaction:tap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A98B70C4(a1, a3, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v5 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  return sub_1A98B70C4(a2, a3 + *(v5 + 20), type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
}

uint64_t SFAirDropClient.boopAtADistance(end:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B10C4, v1, 0);
}

uint64_t sub_1A98B10C4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A5508;
  v2 = *(v0 + 16);

  return sub_1A983D89C(sub_1A983D89C, v2);
}

uint64_t SFAirDropClient.endNearbySharingInteraction(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1190, v1, 0);
}

uint64_t sub_1A98B1190()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98A5508;
  v2 = *(v0 + 16);

  return sub_1A983DBE4(sub_1A983DBE4, v2);
}

uint64_t sub_1A98B1258()
{
  sub_1A97BCDE0();
  swift_allocError();
  *v1 = 0xD000000000000021;
  v1[1] = 0x80000001A99E63A0;
  v1[2] = 0xD00000000000004DLL;
  v1[3] = 0x80000001A99E63D0;
  v1[4] = 197;
  v1[10] = 0x4000000000000000;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t SFAirDropClient.showIntervention(workflow:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1350, v2, 0);
}

uint64_t sub_1A98B1350()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B9CC4;
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  return sub_1A983DF30(v2, v3);
}

uint64_t SFAirDropClient.showItemDestinationAlert(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1424, v1, 0);
}

uint64_t sub_1A98B1424()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B14D4;
  v2 = *(v0 + 16);

  return sub_1A983E320(v2);
}

uint64_t sub_1A98B14D4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t SFAirDropClient.fetchEndpointMetadata(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1608, v2, 0);
}

uint64_t sub_1A98B1608()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A98B9CC8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1A983E8E8(v2, v3);
}

uint64_t SFAirDropClient.discoverability()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B16D8, v1, 0);
}

uint64_t sub_1A98B16D8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B9CC4;
  v2 = *(v0 + 16);

  return sub_1A983EEB4(v2);
}

uint64_t sub_1A98B17A8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B1850;

  return sub_1A983F2B8();
}

uint64_t sub_1A98B1850(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t SFAirDropClient.change(discoverabilityMode:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1978, v1, 0);
}

uint64_t sub_1A98B1978()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A98B1A24;
  v2 = *(v0 + 40);

  return sub_1A983F750(sub_1A983F750, v2);
}

uint64_t sub_1A98B1A24()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1A98B9ED8;
  }

  else
  {
    v4 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A98B1B5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1B7C, 0, 0);
}

uint64_t sub_1A98B1B7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A98B1CF4;
    v3 = v0[5];

    return sub_1A983F97C(v3);
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v5 = 0xD000000000000023;
    v5[1] = 0x80000001A99E6C30;
    v5[2] = 0xD00000000000004DLL;
    v5[3] = 0x80000001A99E63D0;
    v5[4] = 234;
    v5[10] = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A98B1CF4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1A98B1E6C;
  }

  else
  {
    v2 = sub_1A98B1E08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98B1E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98B1E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall SFAirDropClient.invalidate()()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];
}

void SFAirDropClient.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SFAirDropClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A98B20BC()
{
  if (*v0)
  {
    return 0x6F6974616D696E61;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A98B2108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E5060 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xED0000746365526ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A99777E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A98B21F8(uint64_t a1)
{
  v2 = sub_1A98B712C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B2234(uint64_t a1)
{
  v2 = sub_1A98B712C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.BecomeTransferPresenter.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4298, &qword_1A999FFE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B712C();
  sub_1A9977AA0();
  LOBYTE(v13) = 0;
  type metadata accessor for SFAirDropClient.Identifier(0);
  sub_1A98B7180(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    type metadata accessor for CGRect(0);
    sub_1A98B7180(&qword_1EB3B42A8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDropInvocations.BecomeTransferPresenter.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42B0, &qword_1A999FFE8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B712C();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v19;
  v13 = v11;
  LOBYTE(v22) = 0;
  sub_1A98B7180(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  v14 = v20;
  sub_1A99775F0();
  sub_1A98B70C4(v21, v13, type metadata accessor for SFAirDropClient.Identifier);
  type metadata accessor for CGRect(0);
  v24 = 1;
  sub_1A98B7180(&qword_1EB3B42B8, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1A99775F0();
  (*(v12 + 8))(v8, v14);
  v15 = (v13 + *(v9 + 20));
  v16 = v23;
  *v15 = v22;
  v15[1] = v16;
  sub_1A98B6D20(v13, v18, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A98B6CC0(v13, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
}

id SFAirDropInvocations.StopNearbySharingDiscovery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.StopNearbySharingDiscovery.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.StopNearbySharingDiscovery.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

uint64_t sub_1A98B29E0()
{
  if (*v0)
  {
    return 7364980;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_1A98B2A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7364980 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98B2AFC(uint64_t a1)
{
  v2 = sub_1A98B71C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B2B38(uint64_t a1)
{
  v2 = sub_1A98B71C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42C0, &qword_1A999FFF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B71C8();
  sub_1A9977AA0();
  v8[15] = 0;
  type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  sub_1A98B7180(&qword_1EB3B4180, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.Transaction);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
    v8[14] = 1;
    type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
    sub_1A98B7180(&qword_1EB3B42D0, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.TapEvent);
    sub_1A99776E0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42D8, &qword_1A999FFF8);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B71C8();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = a1;
  v12 = v21;
  v13 = v11;
  v26 = 0;
  sub_1A98B7180(&qword_1EB3B42E0, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.Transaction);
  v14 = v23;
  v15 = v24;
  sub_1A99775F0();
  sub_1A98B70C4(v14, v13, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v25 = 1;
  sub_1A98B7180(&qword_1EB3B42E8, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.TapEvent);
  sub_1A99775F0();
  (*(v12 + 8))(v8, v15);
  sub_1A98B70C4(v5, v13 + *(v9 + 20), type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  sub_1A98B6D20(v13, v19, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return sub_1A98B6CC0(v13, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
}

unint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.description.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1A98B3284(uint64_t a1)
{
  v2 = sub_1A98B72C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B32C0(uint64_t a1)
{
  v2 = sub_1A98B72C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98B32FC()
{
  v1 = 0x4579616C50726163;
  if (*v0 != 1)
  {
    v1 = 0x4D64696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A98B3370@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98B94D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98B3398(uint64_t a1)
{
  v2 = sub_1A98B721C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B33D4(uint64_t a1)
{
  v2 = sub_1A98B721C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98B3410(uint64_t a1)
{
  v2 = sub_1A98B7270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B344C(uint64_t a1)
{
  v2 = sub_1A98B7270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98B3488(uint64_t a1)
{
  v2 = sub_1A98B7318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B34C4(uint64_t a1)
{
  v2 = sub_1A98B7318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42F0, &qword_1A99A0000);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42F8, &qword_1A99A0008);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4300, &qword_1A99A0010);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4308, &qword_1A99A0018);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B721C();
  sub_1A9977AA0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A98B72C4();
      v9 = v21;
      sub_1A9977640();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A98B7270();
      v9 = v24;
      sub_1A9977640();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A98B7318();
    sub_1A9977640();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4330, &qword_1A99A0020);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4338, &qword_1A99A0028);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4340, &qword_1A99A0030);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4348, &unk_1A99A0038);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A98B721C();
  v15 = v36;
  sub_1A9977A70();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1A9977620();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1A97B297C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1A9977300();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v24 = &type metadata for SFAirDropInvocations.ChangeDiscoverability.Failure;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1A98B72C4();
          sub_1A9977530();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1A98B7270();
          v26 = v17;
          sub_1A9977530();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1A98B7318();
        sub_1A9977530();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

unint64_t sub_1A98B3E80()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

Sharing::SFAirDropInvocations::ChangeDiscoverability::Parameters::DiscoverabilityMode_optional __swiftcall SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.rawValue.getter()
{
  v1 = 0x73746361746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

uint64_t sub_1A98B3F90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73746361746E6F63;
  v4 = 0xEC000000796C6E4FLL;
  if (v2 != 1)
  {
    v3 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x73746361746E6F63;
  v8 = 0xEC000000796C6E4FLL;
  if (*a2 != 1)
  {
    v7 = 0x656E6F7972657665;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A99777E0();
  }

  return v11 & 1;
}

uint64_t sub_1A98B409C()
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A98B4140(uint64_t a1)
{
  sub_1A99768D0();
}

uint64_t sub_1A98B41D0(uint64_t a1)
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

void sub_1A98B427C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEC000000796C6E4FLL;
  v5 = 0x73746361746E6F63;
  if (v2 != 1)
  {
    v5 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A98B43B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E6B90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A99777E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A98B4448(uint64_t a1)
{
  v2 = sub_1A98B736C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B4484(uint64_t a1)
{
  v2 = sub_1A98B736C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4350, &qword_1A99A0048);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B736C();
  sub_1A9977AA0();
  v10 = v7;
  sub_1A98B73C0();
  sub_1A99776E0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Parameters.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4368, &qword_1A99A0050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B736C();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A98A7D58();
    sub_1A99775F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.applicationLabel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.publicKeyData.getter()
{
  v1 = *(v0 + 16);
  sub_1A97B40FC(v1, *(v0 + 24));
  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.init(applicationLabel:publicKeyData:bonjourUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0) + 24);
  v9 = sub_1A99762C0();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t sub_1A98B48C0()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0x5572756F6A6E6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A98B4934@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98B9604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98B495C(uint64_t a1)
{
  v2 = sub_1A98B7434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B4998(uint64_t a1)
{
  v2 = sub_1A98B7434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4370, &qword_1A99A0058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7434();
  sub_1A9977AA0();
  LOBYTE(v12) = 0;
  sub_1A9977690();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 1;
    sub_1A97B40FC(v12, v9);
    sub_1A97B4370();
    sub_1A99776E0();
    sub_1A97B43C4(v12, v13);
    type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
    LOBYTE(v12) = 2;
    sub_1A99762C0();
    sub_1A98B7180(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1A99762C0();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4380, &qword_1A99A0060);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = v18 - v6;
  v8 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7434();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = a1;
  v19 = v8;
  v13 = v22;
  v12 = v23;
  v14 = v5;
  LOBYTE(v25) = 0;
  v15 = v24;
  *v10 = sub_1A99775A0();
  *(v10 + 1) = v16;
  v18[1] = v16;
  v26 = 1;
  sub_1A97B446C();
  sub_1A99775F0();
  *(v10 + 1) = v25;
  LOBYTE(v25) = 2;
  sub_1A98B7180(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v18[0] = v14;
  sub_1A99775F0();
  (*(v13 + 8))(v7, v15);
  (*(v20 + 32))(&v10[*(v19 + 24)], v18[0], v12);
  sub_1A98B6D20(v10, v21, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return sub_1A98B6CC0(v10, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.connectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) + 20);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.init(identifier:connectionDate:isInitiator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v10 = *(v9 + 20);
  v11 = sub_1A9976230();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_1A98B51B0()
{
  v1 = 0x697463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x616974696E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1A98B5224@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98B9734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98B524C(uint64_t a1)
{
  v2 = sub_1A98B7488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B5288(uint64_t a1)
{
  v2 = sub_1A98B7488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4388, &qword_1A99A0068);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7488();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A99762C0();
  sub_1A98B7180(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
    v8[14] = 1;
    sub_1A9976230();
    sub_1A98B7180(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    v8[13] = 2;
    sub_1A99776A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A9976230();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A99762C0();
  v25 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4398, &qword_1A99A0070);
  v26 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7488();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v11;
  v23 = a1;
  v14 = v13;
  v15 = v28;
  v17 = v26;
  v16 = v27;
  v34 = 0;
  sub_1A98B7180(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1A99775F0();
  (*(v25 + 32))(v14, v29, v31);
  v33 = 1;
  sub_1A98B7180(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1A99775F0();
  (*(v15 + 32))(v14 + *(v22 + 20), v7, v16);
  v32 = 2;
  v18 = sub_1A99775B0();
  v19 = v23;
  v20 = v18;
  (*(v17 + 8))(v10, v30);
  *(v14 + *(v22 + 24)) = v20 & 1;
  sub_1A98B6D20(v14, v24, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return sub_1A98B6CC0(v14, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
}