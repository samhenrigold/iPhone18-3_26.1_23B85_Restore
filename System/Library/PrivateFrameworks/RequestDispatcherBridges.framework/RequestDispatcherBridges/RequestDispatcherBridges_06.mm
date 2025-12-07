id sub_2236BE6E0(void *a1)
{
  result = sub_2236DEA18(a1, sub_2236C209C, 0);
  if (!v1)
  {
    v3 = sub_223729D38();
    sub_2236D06B8(v3, v4);
  }

  return result;
}

uint64_t sub_2236BE95C(uint64_t a1, uint64_t a2)
{
  *(a2 + qword_28132B890) = sub_2237296A8() & 1;
  v3 = *(a2 + qword_28132B868);
  v4 = *(a2 + qword_28132B868 + 8);

  sub_2236D3640(v3, v4);
}

uint64_t sub_2236BED24(void *a1)
{
  v2 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUX: received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v2 + qword_28132AAF0);
  *(v2 + qword_28132AAF0) = v5;
  v12 = v5;

  result = AFIsInternalInstall();
  if (result)
  {
    return sub_22372AA38();
  }

  return result;
}

void sub_2236BEEA4(void *a1)
{
  v2 = v1;
  v4 = sub_22372A298();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v56 - v15;
  v17 = sub_22372A548();
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v60 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v20 = sub_22372AC98();
  __swift_project_value_buffer(v20, qword_28132B680);
  v21 = a1;
  v22 = sub_22372AC88();
  v23 = sub_22372B268();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_223620000, v22, v23, "#user-session: received message: %@", v24, 0xCu);
    sub_223626478(v25, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v25, -1, -1);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + qword_28132AB18), *(v2 + qword_28132AB18 + 24));
  if ((sub_22372A808() & 1) == 0)
  {
    v64 = sub_22372AC88();
    v37 = sub_22372B278();
    if (!os_log_type_enabled(v64, v37))
    {
      goto LABEL_20;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. Feature flag is off.";
LABEL_16:
    _os_log_impl(&dword_223620000, v64, v37, v39, v38, 2u);
    MEMORY[0x223DE8A80](v38, -1, -1);
    goto LABEL_20;
  }

  v27 = *(v2 + qword_28132AB08);
  v28 = v64;
  if (!v27)
  {
    v64 = sub_22372AC88();
    v37 = sub_22372B278();
    if (!os_log_type_enabled(v64, v37))
    {
      goto LABEL_20;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. session context doesn't exist yet.";
    goto LABEL_16;
  }

  v29 = *(v2 + qword_28132AAF0);
  if (v29)
  {

    v30 = v29;
    sub_2237293D8();
    v59 = v30;
    sub_22372A288();
    isa = v28[1].isa;
    isa(v8, v63);
    v33 = v61;
    v32 = v62;
    if ((*(v61 + 48))(v16, 1, v62) == 1)
    {
      sub_223626478(v16, &unk_27D08E990, &qword_22372FCF0);
      v34 = sub_22372AC88();
      v35 = sub_22372B278();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_223620000, v34, v35, "#user-session: cannot handle ActiveUserSessionDetectedMessage. No shared user id found.", v36, 2u);
        MEMORY[0x223DE8A80](v36, -1, -1);
      }
    }

    else
    {
      v58 = isa;
      v43 = v60;
      (*(v33 + 32))(v60, v16, v32);
      v44 = v33;
      sub_2237293D8();
      v45 = v32;
      v46 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
      swift_beginAccess();
      (v64[5].isa)(v27 + v46, v8, v63);
      (*(v44 + 16))(v13, v43, v45);
      (*(v44 + 56))(v13, 0, 1, v45);
      sub_22372A278();
      swift_endAccess();

      v47 = sub_22372AC88();
      v48 = sub_22372B268();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65[0] = v57;
        *v49 = 136315138;
        v50 = v63;
        (v64[2].isa)(v8, v27 + v46, v63);
        sub_223623398(&unk_27D08F670, MEMORY[0x277D5D0E0], MEMORY[0x277D5D0E8]);
        v51 = sub_22372B6B8();
        v53 = v52;
        v58(v8, v50);
        v54 = sub_223623274(v51, v53, v65);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_223620000, v47, v48, "#user-session: final user session state: %s.", v49, 0xCu);
        v55 = v57;
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x223DE8A80](v55, -1, -1);
        MEMORY[0x223DE8A80](v49, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v60, v62);
    }

    return;
  }

  v64 = sub_22372AC88();
  v40 = sub_22372B278();
  if (os_log_type_enabled(v64, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_223620000, v64, v40, "#user-session: cannot handle ActiveUserSessionDetectedMessage. muxcontext hasn't arrived", v41, 2u);
    MEMORY[0x223DE8A80](v41, -1, -1);
  }

LABEL_20:
  v42 = v64;
}

uint64_t sub_2236BF688(uint64_t a1)
{
  v2 = v1;
  v38 = sub_223727408();
  v4 = *(v38 - 1);
  v6 = MEMORY[0x28223BE20](v38, v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v37 - v10;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  __swift_project_value_buffer(v12, qword_28132B680);
  v13 = sub_22372AC88();
  v14 = sub_22372B268();
  v15 = os_log_type_enabled(v13, v14);
  v37[1] = v2;
  v37[2] = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_223623274(0xD000000000000023, 0x8000000223736BB0, v39);
    _os_log_impl(&dword_223620000, v13, v14, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x223DE8A80](v17, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  sub_2237273F8();
  v18 = sub_2237273B8();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v11, v38);

  v22 = sub_22372AC88();
  v23 = sub_22372B288();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_223623274(v18, v20, v39);
    _os_log_impl(&dword_223620000, v22, v23, "ASRReadyForNewTurnMessage: Minted new requestId %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x223DE8A80](v25, -1, -1);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  v26 = sub_223729D98();
  v28 = v27;
  sub_223729D58();
  v29 = v37[0];
  sub_223626650(v18, v20, v26, v28, v8, 1, v18, v20);
  if (v29)
  {
    v21(v8, v38);
  }

  else
  {
    v21(v8, v38);

    type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;

      v38 = sub_22372A658();
      v34 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v34;
      *v34 = 0x8000000000000000;
      sub_22368DDC0(v32, v18, v20, isUniquelyReferenced_nonNull_native);

      *v34 = v40;
      (v38)(v39, 0);
      sub_223728968();

      sub_22372A6B8();
    }

    else
    {

      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v36 = v18;
      v36[1] = v20;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t sub_2236BFB84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v26 - v13;
  v15 = sub_223727408();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_223729C68();
  sub_2237273F8();
  sub_2237273B8();
  (*(v16 + 8))(v19, v15);
  sub_223729C28();
  sub_2237273F8();
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_223729C78();
  v20 = *MEMORY[0x277D5CDE8];
  v21 = sub_223729DE8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v10, v20, v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  sub_223729C48();
  v23 = a4;
  sub_223729C58();
  v24 = a5;
  return sub_223729C38();
}

void sub_2236BFE18(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = a1;
  v8 = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45[0] = v43;
    *v10 = 136315138;
    v11 = [v7 debugDescription];
    v12 = a2;
    v13 = sub_22372AFE8();
    v15 = v14;

    v16 = v13;
    a2 = v12;
    v17 = sub_223623274(v16, v15, v45);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_223620000, v8, v9, "Received SARDRunPOMMESRequest: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x223DE8A80](v43, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  v18 = &off_2784E0000;
  if (sub_22372A688())
  {
    type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    if (swift_dynamicCastClass())
    {
      v19 = sub_22372A768();
      v21 = v20;
      v22 = [v7 &selRef_setUserId_ + 1];
      if (v22)
      {
        v23 = v22;
        v42 = a2;
        v24 = sub_22372AFE8();
        v26 = v25;

        if (v19 == v24 && v21 == v26)
        {

LABEL_13:
          sub_223630584(0, &qword_281328D30, 0x277D476A0);
          sub_22372A6A8();

          return;
        }

        v27 = sub_22372B6E8();

        a2 = v42;
        v18 = &off_2784E0000;
        if (v27)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v18 = &off_2784E0000;
      }
    }
  }

  v28 = sub_22372AC88();
  v29 = sub_22372B268();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_223620000, v28, v29, "RCB has no active request processor with matching requestId, will post RunPommesRequestMessage to be handled by PommesBridge.", v30, 2u);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

  v31 = [v7 v18[81]];
  if (v31 || (v31 = [a2 requestID]) != 0)
  {
    v32 = v31;
    sub_22372AFE8();

    MEMORY[0x28223BE20](v33, v34);
    v35 = objc_allocWithZone(sub_223728518());
    v36 = sub_2237284A8();

    if (v36)
    {
      sub_22372A958();
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      sub_223729D88();

      __swift_destroy_boxed_opaque_existential_1Tm(v45);
    }

    else
    {
      v37 = sub_22372AC88();
      v38 = sub_22372B278();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_223620000, v37, v38, "Could not build RunPommesRequestMessage. Missing fields?", v39, 2u);
        MEMORY[0x223DE8A80](v39, -1, -1);
      }
    }
  }

  else
  {
    v44 = sub_22372AC88();
    v40 = sub_22372B278();
    if (os_log_type_enabled(v44, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_223620000, v44, v40, "Could not find a refId in the RunPOMMESRequest command, dropping.", v41, 2u);
      MEMORY[0x223DE8A80](v41, -1, -1);
    }
  }
}

uint64_t sub_2236C0400(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v26 - v13;
  v15 = sub_223727408();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2237284F8();
  sub_2237273F8();
  sub_2237273B8();
  (*(v16 + 8))(v19, v15);
  sub_2237284B8();
  sub_2237273F8();
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_223728508();
  v20 = *MEMORY[0x277D5CDE8];
  v21 = sub_223729DE8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v10, v20, v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  sub_2237284D8();
  v23 = a4;
  sub_2237284E8();
  v24 = a5;
  return sub_2237284C8();
}

uint64_t sub_2236C0694(void *a1)
{
  v2 = v1;
  v4 = sub_223727408();
  v63 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  __swift_project_value_buffer(v7, qword_28132B680);
  v8 = sub_22372AC88();
  v9 = sub_22372B268();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_223623274(0xD000000000000024, 0x8000000223736B60, &v66);
    _os_log_impl(&dword_223620000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  v12 = sub_223729D38();
  v14 = sub_2236C179C(v12, v13);

  if (v14)
  {
    v60 = v4;
    v61 = v2;
    v15 = a1;

    v16 = sub_22372AC88();
    v17 = sub_22372B268();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      HIDWORD(v58) = v17;
      v19 = v18;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v19 = 136315650;
      v20 = v15;
      v21 = [v20 description];
      v22 = v63;
      v23 = v21;
      v24 = sub_22372AFE8();
      v26 = v25;

      v27 = sub_223623274(v24, v26, &v66);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2080;
      v65 = v14;
      type metadata accessor for RequestControllerBridgeRequestProcessor(0);

      v28 = sub_22372B038();
      v30 = sub_223623274(v28, v29, &v66);

      *(v19 + 14) = v30;
      *(v19 + 22) = 2080;
      v31 = v62;
      sub_223729D58();
      sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = v60;
      v33 = sub_22372B6B8();
      v35 = v34;
      (*(v22 + 8))(v31, v32);
      v36 = sub_223623274(v33, v35, &v66);

      *(v19 + 24) = v36;
      _os_log_impl(&dword_223620000, v16, BYTE4(v58), "Handling TRPCandidateRequestMessage %s with requestControllerBridgeRequestProcessor %s for sessionId: %s", v19, 0x20u);
      v37 = v59;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v37, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    sub_223728CE8();

    sub_22372A6B8();
  }

  else
  {
    v39 = a1;
    v40 = sub_22372AC88();
    v41 = sub_22372B278();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = v64;
      *v42 = 136315394;
      v43 = sub_223729D38();
      v45 = sub_223623274(v43, v44, &v66);
      v46 = v63;
      v47 = v45;

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = v62;
      sub_223729D58();
      sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v49 = sub_22372B6B8();
      v51 = v50;
      (*(v46 + 8))(v48, v4);
      v52 = sub_223623274(v49, v51, &v66);

      *(v42 + 14) = v52;
      _os_log_impl(&dword_223620000, v40, v41, "Did not find a RequestControllerBridgeRequestProcessor requestId: %s for sessionId: %s", v42, 0x16u);
      v53 = v64;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v53, -1, -1);
      MEMORY[0x223DE8A80](v42, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    v54 = swift_allocError();
    v56 = v55;
    *v55 = sub_223729D38();
    v56[1] = v57;
    swift_storeEnumTagMultiPayload();
    v64 = v54;
    return swift_willThrow();
  }
}

uint64_t sub_2236C0D1C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_223727408();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_28132B680);
  v9 = sub_22372AC88();
  v10 = sub_22372B268();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33 = v2;
    v12 = v3;
    v13 = v11;
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_223623274(0xD00000000000001ELL, 0x8000000223736B40, &v34);
    _os_log_impl(&dword_223620000, v9, v10, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    v15 = v13;
    v3 = v12;
    v2 = v33;
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  sub_223729D58();
  v16 = *(v2 + qword_28132AB08);
  if (!v16)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    (*(v4 + 16))(v23, v7, v3);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v4 + 8))(v7, v3);
  }

  v17 = v3;
  v18 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;

  if ((sub_2237273D8() & 1) == 0)
  {
    v33 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    v32 = swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v27 = *(v4 + 16);
    v28 = v16 + v18;
    v3 = v17;
    v27(v25, v28, v17);
    v27(v25 + v26, v7, v17);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 8))(v7, v17);
  v19 = sub_223729D38();
  v21 = sub_2236C18BC(v19, v20);

  if (v21)
  {
    type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    sub_223728188();

    sub_22372A6B8();
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    v30 = v29;
    *v29 = sub_223729D38();
    v30[1] = v31;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

id sub_2236C1210(void *a1)
{
  result = sub_223642C1C(a1, sub_2236C2030, 0);
  if (!v1)
  {
    v3 = sub_223729D38();
    sub_2236E3E0C(v3, v4);
  }

  return result;
}

uint64_t sub_2236C1284(void *a1)
{
  v2 = sub_223727408();
  v28 = *(v2 - 8);
  v29 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24[-v8];
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v10 = sub_22372AC98();
  __swift_project_value_buffer(v10, qword_28132B680);
  v11 = a1;
  v12 = sub_22372AC88();
  v13 = sub_22372B268();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v14 = 136315138;
    v25 = v13;
    sub_223729D58();
    sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = v29;
    v16 = sub_22372B6B8();
    v27 = v6;
    v18 = v17;
    (*(v28 + 8))(v9, v15);
    v19 = sub_223623274(v16, v18, &v30);
    v6 = v27;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_223620000, v12, v25, "Received SiriDismissedMessage for sessionId: %s", v14, 0xCu);
    v20 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v14, -1, -1);
  }

  sub_223729D58();
  v21 = sub_223729D98();
  sub_22362B4E0(v6, v21, v22, 13);
  (*(v28 + 8))(v6, v29);
}

uint64_t sub_2236C1570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[0] = a5;
  v22[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v22 - v14;
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_223728158();

  sub_223728138();
  v19 = sub_223727408();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, a4, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  sub_223728178();

  sub_223728168();
  return sub_223728148();
}

uint64_t sub_2236C179C(uint64_t a1, uint64_t a2)
{
  if (sub_22372A688())
  {
    if (sub_22372A768() == a1 && v4 == a2)
    {

      goto LABEL_6;
    }

    v5 = sub_22372B6E8();

    if (v5)
    {
LABEL_6:
      type metadata accessor for RequestControllerBridgeRequestProcessor(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (!*(sub_22372A668() + 16) || (sub_2236261A0(a1, a2), (v7 & 1) == 0))
  {

    return 0;
  }

  type metadata accessor for RequestControllerBridgeRequestProcessor(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

LABEL_7:

  return 0;
}

uint64_t sub_2236C18BC(uint64_t a1, unint64_t a2)
{
  if (sub_22372A688())
  {
    if (sub_22372A768() == a1 && v4 == a2)
    {
    }

    else
    {
      v5 = sub_22372B6E8();

      if ((v5 & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v8 = sub_22372AC98();
      __swift_project_value_buffer(v8, qword_28132B680);

      v9 = sub_22372AC88();
      v10 = sub_22372B268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_223623274(a1, a2, v22);
        _os_log_impl(&dword_223620000, v9, v10, "Deinitializing RequestControllerBridgeRequestProcessor with requestId: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x223DE8A80](v12, -1, -1);
        MEMORY[0x223DE8A80](v11, -1, -1);
      }

      sub_22372A698();
      return v7;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (*(sub_22372A668() + 16) && (sub_2236261A0(a1, a2), (v13 & 1) != 0))
  {

    type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v7 = v14;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v15 = sub_22372AC98();
      __swift_project_value_buffer(v15, qword_28132B680);

      v16 = sub_22372AC88();
      v17 = sub_22372B268();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_223623274(a1, a2, v22);
        _os_log_impl(&dword_223620000, v16, v17, "Deinitializing RequestControllerBridgeRequestProcessor with requestId: %s.  ", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x223DE8A80](v19, -1, -1);
        MEMORY[0x223DE8A80](v18, -1, -1);
      }

      v20 = sub_22372A658();
      sub_223713EE0(0, a1, a2);
      v20(v22, 0);
      return v7;
    }
  }

  else
  {
  }

  return 0;
}

void sub_2236C1C8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AAF8));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AB18));

  v1 = *(v0 + qword_28132AAF0);
}

uint64_t RequestControllerBridge.deinit()
{
  v0 = sub_22372A6F8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AAF8));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AB18));

  return v0;
}

uint64_t RequestControllerBridge.__deallocating_deinit()
{
  v0 = sub_22372A6F8();
  v1 = qword_28132AAF8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v1));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AB18));

  v3 = *(v0 + qword_28132AAF0);

  return swift_deallocClassInstance();
}

void *sub_2236C1E80(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319B8;
}

void *sub_2236C1EEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731998;
}

void *sub_2236C1F58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731980;
}

void *sub_2236C1FC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319A0;
}

void *sub_2236C2030(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731978;
}

void *sub_2236C209C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319C0;
}

void *sub_2236C2108(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731990;
}

uint64_t sub_2236C2194(uint64_t a1, uint64_t a2)
{
  v119 = a1;
  v3 = sub_223727408();
  v4 = *(v3 - 8);
  v117 = v3;
  v118 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v108 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v107 = &v104 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v106 = &v104 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v109 = &v104 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v110 = &v104 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v111 = &v104 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v105 = &v104 - v24;
  v25 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v115 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v114 = &v104 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v113 = &v104 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v116 = &v104 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = (&v104 - v40);
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = (&v104 - v44);
  v47 = MEMORY[0x28223BE20](v43, v46);
  v112 = &v104 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v52 = (&v104 - v51);
  v54 = MEMORY[0x28223BE20](v50, v53);
  v56 = (&v104 - v55);
  MEMORY[0x28223BE20](v54, v57);
  v59 = (&v104 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F660, &unk_223731960);
  v62 = MEMORY[0x28223BE20](v60 - 8, v61);
  v64 = &v104 - v63;
  v65 = (&v104 + *(v62 + 56) - v63);
  sub_2236C3520(v119, &v104 - v63, type metadata accessor for RequestControllerBridgeInternalErrors);
  sub_2236C3520(a2, v65, type metadata accessor for RequestControllerBridgeInternalErrors);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      v76 = v118;
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload == 10)
        {
          if (swift_getEnumCaseMultiPayload() != 10)
          {
LABEL_52:
            sub_223626478(v64, &unk_27D08F660, &unk_223731960);
LABEL_53:
            v87 = 0;
            return v87 & 1;
          }
        }

        else if (swift_getEnumCaseMultiPayload() != 11)
        {
          goto LABEL_52;
        }

LABEL_58:
        sub_2236C3588(v64, type metadata accessor for RequestControllerBridgeInternalErrors);
        v87 = 1;
        return v87 & 1;
      }

      v88 = v115;
      sub_2236C3520(v64, v115, type metadata accessor for RequestControllerBridgeInternalErrors);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (*(v76 + 8))(v88, v117);
        goto LABEL_52;
      }

      v89 = *(v76 + 32);
      v90 = v108;
      goto LABEL_33;
    }

    v69 = v118;
    v70 = v65;
    if (EnumCaseMultiPayload == 6)
    {
      v77 = v116;
      sub_2236C3520(v64, v116, type metadata accessor for RequestControllerBridgeInternalErrors);
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v98 = *(v69 + 8);
        v99 = v77 + v78;
        v100 = v117;
        v98(v99, v117);
        v98(v77, v100);
        goto LABEL_52;
      }

      v79 = *(v69 + 32);
      v80 = v111;
      v81 = v117;
      v79(v111, v70, v117);
      v82 = v110;
      v79(v110, (v77 + v78), v81);
      v83 = (v70 + v78);
      v84 = v109;
      v79(v109, v83, v81);
      v85 = sub_2237273D8();
      v86 = *(v69 + 8);
      v86(v77, v81);
      if ((v85 & 1) == 0)
      {
        v86(v84, v81);
        v86(v82, v81);
        v86(v80, v81);
        goto LABEL_60;
      }

      v87 = sub_2237273D8();
      v86(v84, v81);
      v86(v82, v81);
      v86(v80, v81);
      goto LABEL_39;
    }

    v71 = v117;
    if (EnumCaseMultiPayload == 7)
    {
      v72 = v113;
      sub_2236C3520(v64, v113, type metadata accessor for RequestControllerBridgeInternalErrors);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v73 = v106;
        (*(v69 + 32))(v106, v65, v71);
LABEL_38:
        v87 = sub_2237273D8();
        v95 = *(v69 + 8);
        v95(v73, v71);
        v95(v72, v71);
        goto LABEL_39;
      }
    }

    else
    {
      v72 = v114;
      sub_2236C3520(v64, v114, type metadata accessor for RequestControllerBridgeInternalErrors);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v73 = v107;
        (*(v69 + 32))(v107, v65, v71);
        goto LABEL_38;
      }
    }

    (*(v69 + 8))(v72, v71);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_2236C3520(v64, v45, type metadata accessor for RequestControllerBridgeInternalErrors);
        v75 = *v45;
        v74 = v45[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          if (v75 == *v65 && v74 == v65[1])
          {
            goto LABEL_43;
          }

LABEL_54:
          v101 = sub_22372B6E8();

          if (v101)
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        }
      }

      else
      {
        sub_2236C3520(v64, v41, type metadata accessor for RequestControllerBridgeInternalErrors);
        v97 = *v41;
        v96 = v41[1];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          if (v97 == *v65 && v96 == v65[1])
          {
            goto LABEL_43;
          }

          v102 = sub_22372B6E8();

          if (v102)
          {
            goto LABEL_58;
          }

LABEL_60:
          sub_2236C3588(v64, type metadata accessor for RequestControllerBridgeInternalErrors);
          goto LABEL_53;
        }
      }

      goto LABEL_44;
    }

    v88 = v112;
    sub_2236C3520(v64, v112, type metadata accessor for RequestControllerBridgeInternalErrors);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v118 + 8))(v88, v117);
      goto LABEL_52;
    }

    v76 = v118;
    v89 = *(v118 + 32);
    v90 = v105;
LABEL_33:
    v91 = v117;
    v89(v90, v65, v117);
    v87 = sub_2237273D8();
    v92 = *(v76 + 8);
    v92(v90, v91);
    v92(v88, v91);
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2236C3520(v64, v59, type metadata accessor for RequestControllerBridgeInternalErrors);
    v68 = *v59;
    v67 = v59[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_23;
    }

LABEL_44:

    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2236C3520(v64, v56, type metadata accessor for RequestControllerBridgeInternalErrors);
    v68 = *v56;
    v67 = v56[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_44;
    }

LABEL_23:
    if (v68 == *v65 && v67 == v65[1])
    {
LABEL_43:

      goto LABEL_58;
    }

    goto LABEL_54;
  }

  sub_2236C3520(v64, v52, type metadata accessor for RequestControllerBridgeInternalErrors);
  v93 = *v52;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_52;
  }

  v94 = *v65;
  sub_223630584(0, &qword_281328D10, 0x277D82BB8);
  v87 = sub_22372B368();

LABEL_39:
  sub_2236C3588(v64, type metadata accessor for RequestControllerBridgeInternalErrors);
  return v87 & 1;
}

uint64_t sub_2236C2C48(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_223729FB8();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223728E18();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F658, &qword_223731958);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_2236C3520(v33, &v31 - v22, type metadata accessor for IntelligenceFlowPrescribedTool);
  sub_2236C3520(v34, &v23[v24], type metadata accessor for IntelligenceFlowPrescribedTool);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2236C3520(v23, v15, type metadata accessor for IntelligenceFlowPrescribedTool);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v31;
      v25 = v32;
      (*(v31 + 32))(v5, &v23[v24], v32);
      v27 = sub_223729F98();
      v28 = *(v26 + 8);
      v28(v5, v25);
      v28(v15, v25);
LABEL_9:
      sub_2236C3588(v23, type metadata accessor for IntelligenceFlowPrescribedTool);
      return v27 & 1;
    }

    (*(v31 + 8))(v15, v32);
  }

  else
  {
    sub_2236C3520(v23, v18, type metadata accessor for IntelligenceFlowPrescribedTool);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v23[v24], v6);
      v27 = sub_223728E08();
      v29 = *(v7 + 8);
      v29(v10, v6);
      v29(v18, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v18, v6);
  }

  sub_223626478(v23, &qword_27D08F658, &qword_223731958);
  v27 = 0;
  return v27 & 1;
}

void sub_2236C30F0(uint64_t a1)
{
  sub_223727408();
  if (v1 <= 0x3F)
  {
    sub_22372A548();
    if (v2 <= 0x3F)
    {
      sub_22372A298();
      if (v3 <= 0x3F)
      {
        sub_22369BEEC(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_2236C3278(uint64_t a1)
{
  result = sub_223728E18();
  if (v2 <= 0x3F)
  {
    result = sub_223729FB8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2236C32EC(uint64_t a1)
{
  sub_2236C340C();
  if (v1 <= 0x3F)
  {
    sub_2236C34D4(319, &qword_28132B568, MEMORY[0x277D5CDB0]);
    if (v2 <= 0x3F)
    {
      sub_2236C34D4(319, &unk_28132B620, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        sub_2236C343C();
        if (v4 <= 0x3F)
        {
          sub_2236C346C(319);
          if (v5 <= 0x3F)
          {
            sub_2236C34D4(319, &qword_28132B648, MEMORY[0x277CC95F0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2236C340C()
{
  result = qword_281328E00;
  if (!qword_281328E00)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_281328E00);
  }

  return result;
}

uint64_t sub_2236C343C()
{
  result = qword_281328E08;
  if (!qword_281328E08)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_281328E08);
  }

  return result;
}

void sub_2236C346C(uint64_t a1)
{
  if (!qword_28132B630)
  {
    sub_223727408();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28132B630);
    }
  }
}

void sub_2236C34D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2236C3520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236C3588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2236C35E8()
{
  result = qword_281329548;
  if (!qword_281329548)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for CaptureOutputFeatureFlag, v0, v1);
    atomic_store(result, &qword_281329548);
  }

  return result;
}

uint64_t sub_2236C3668(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223643468(a1, v5, v4);
}

uint64_t sub_2236C3758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223624EA4;

  return sub_2236CA8A8(a1, v5, v4);
}

uint64_t sub_2236C3810(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_22363FFD8(result, a2);
  }

  return result;
}

uint64_t sub_2236C3874(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D1A00(a1, v5, v4);
}

uint64_t sub_2236C3A28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CA774(a1, v5, v4);
}

uint64_t sub_2236C3B1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CB9FC(a1, v5, v4);
}

uint64_t sub_2236C3BF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CA640(a1, v5, v4);
}

uint64_t sub_2236C3D30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D0584(a1, v5, v4);
}

void sub_2236C3F44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_2236C3FBC()
{
  type metadata accessor for RequestControllerBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  v1 = objc_opt_self();
  v0[2] = [v1 sharedStream];
  sub_22372A8A8();
  swift_allocObject();
  v0[3] = sub_22372A898();
  result = [v1 sharedAnalytics];
  v0[4] = result;
  qword_28132B928 = v0;
  return result;
}

void sub_2236C4060(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D59860]) init];
  if (!v7)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_28132B680);

    v21 = sub_22372AC88();
    v12 = sub_22372B278();

    if (os_log_type_enabled(v21, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_223623274(a1, a2, &v22);
      _os_log_impl(&dword_223620000, v21, v12, "MUX: Instrumentation: Failed to create ORCHSchemaORCHResultCandidateReceived message for : %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x223DE8A80](v14, -1, -1);
      MEMORY[0x223DE8A80](v13, -1, -1);
LABEL_12:

      return;
    }

LABEL_14:
    v10 = v21;
    goto LABEL_15;
  }

  v21 = v7;
  v8 = sub_22372A888();
  [v21 setTrpId:v8];

  v9 = sub_22372A868();
  if (!v9)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);

    v16 = sub_22372AC88();
    v17 = sub_22372B278();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_223623274(a1, a2, &v22);
      _os_log_impl(&dword_223620000, v16, v17, "MUX: Instrumentation: Failed to create wrapper event message for end request for : %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v20 = v9;
  [v9 setTrpCandidateReceived:v21];
  [*(v4 + 16) emitMessage_];

  v10 = v20;
LABEL_15:
}

void sub_2236C4390(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D59600]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D59608]) init];
  v15 = v8;
  if (v8)
  {
    [v8 setRequestType:sub_2236C60E4(a3 & 1, a4)];
    v8 = v15;
  }

  [v7 setStarted:v8];
  v9 = sub_22372A868();
  if (v9)
  {
    v10 = v9;
    [v9 setCandidateRequestContext:v7];
    [*(v4 + 16) emitMessage_];
    v11 = v7;
    v7 = v15;
    v15 = v10;
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    v11 = sub_22372AC88();
    v13 = sub_22372B278();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223620000, v11, v13, "Could not build wrapper when logging CandidateRequestContext", v14, 2u);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }
}

void sub_2236C456C(uint64_t a1, uint64_t a2)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D59600]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D595F8]) init];
  [v10 setCancelled:v3];
  v4 = sub_22372A868();
  if (v4)
  {
    v5 = v4;
    [v4 setCandidateRequestContext:v10];
    [*(v2 + 16) emitMessage_];
    v6 = v10;
    v10 = v5;
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    v6 = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, v6, v8, "Could not build wrapper when logging CandidateRequestContext", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

void sub_2236C470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_22372A868();
  if (v6)
  {
    v7 = v6;
    v8 = sub_22372A888();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277D59868]) init];
      v11 = v10;
      oslog = v10;
      if (v10)
      {
        [v10 setTrpId:v9];
        v11 = oslog;
      }

      [v7 setTrpFinalized_];
      [*(v5 + 16) emitMessage_];
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v15 = sub_22372AC98();
      __swift_project_value_buffer(v15, qword_28132B680);
      oslog = sub_22372AC88();
      v16 = sub_22372B278();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_223620000, oslog, v16, "The trpId is not a valid UUID, stop logging TRPFinalizedEvent", v17, 2u);
        MEMORY[0x223DE8A80](v17, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    oslog = sub_22372AC88();
    v13 = sub_22372B278();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223620000, oslog, v13, "Could not build wrapper when logging TRPFinalizedEvent", v14, 2u);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }
}

void sub_2236C495C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v40 - v10;
  v12 = sub_223727408();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237273A8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_223660FAC(v11);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v17 = sub_22372AC98();
    __swift_project_value_buffer(v17, qword_28132B680);

    v18 = sub_22372AC88();
    v19 = sub_22372B278();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_223623274(a2, a3, aBlock);
      _os_log_impl(&dword_223620000, v18, v19, "Unable to apply log redaction due to invalid requestId %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_28132B680);

    v23 = sub_22372AC88();
    v24 = sub_22372B268();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = a2;
      v43 = v26;
      aBlock[0] = v26;
      *v25 = 136315394;
      v27 = sub_22372B328();
      v29 = sub_223623274(v27, v28, aBlock);
      v41 = v23;
      v30 = v16;
      v31 = a1;
      v32 = v29;

      *(v25 + 4) = v32;
      a1 = v31;
      v16 = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_223623274(v42, a3, aBlock);
      v33 = v41;
      _os_log_impl(&dword_223620000, v41, v24, "Apply redaction tag with sensitive state %s for requestId %s", v25, 0x16u);
      v34 = v43;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v34, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    else
    {
    }

    v35 = objc_allocWithZone(MEMORY[0x277D552D0]);
    v36 = sub_2237273C8();
    v37 = [v35 initWithConditionType:a1 requestId:v36 joined:1];

    v38 = *(v4 + 32);
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2236C3F44;
    aBlock[3] = &block_descriptor_3;
    v39 = _Block_copy(aBlock);
    [v38 createTag:v37 completion:v39];
    _Block_release(v39);

    (*(v13 + 8))(v16, v12);
  }
}

void sub_2236C4E3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_22372A868();
  if (v8)
  {
    v9 = v8;
    oslog = [objc_allocWithZone(MEMORY[0x277D597C8]) init];
    [oslog setMitigationSource:a1];
    [v9 setRequestMitigated_];
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v10 = sub_22372AC98();
    __swift_project_value_buffer(v10, qword_28132B680);

    v11 = sub_22372AC88();
    v12 = sub_22372B268();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_223623274(a2, a3, &v19);
      _os_log_impl(&dword_223620000, v11, v12, "Sending SELF RequestMitigated event for requestId %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x223DE8A80](v14, -1, -1);
      MEMORY[0x223DE8A80](v13, -1, -1);
    }

    [*(v4 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);
    oslog = sub_22372AC88();
    v16 = sub_22372B278();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223620000, oslog, v16, "Could not build wrapper when logging requestMitigatedEvent", v17, 2u);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }
  }
}

void sub_2236C50D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_22372A868();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59880]) init];
    v10 = v9;
    if (v9)
    {
      [v9 setExists_];
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D59870]) init];
    [v17 setStartedOrChanged:v10];
    if (a4)
    {
      v11 = sub_22372A888();
      if (v11)
      {
        v12 = v11;
        if (v17)
        {
          v13 = v17;
          [v13 setTrpId:v12];
        }
      }
    }

    [v8 setUiActivationContext_];
    [*(v5 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_28132B680);
    v17 = sub_22372AC88();
    v15 = sub_22372B278();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_223620000, v17, v15, "Could not build wrapper when logging logUIActivationStarted", v16, 2u);
      MEMORY[0x223DE8A80](v16, -1, -1);
    }
  }
}

void sub_2236C52C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22372A868();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D59878]) init];
    v7 = v6;
    if (v6)
    {
      [v6 setExists_];
    }

    oslog = [objc_allocWithZone(MEMORY[0x277D59870]) init];
    [oslog setEnded:v7];
    [v5 setUiActivationContext_];
    [*(v3 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_28132B680);
    oslog = sub_22372AC88();
    v9 = sub_22372B278();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_223620000, oslog, v9, "Could not build wrapper when logging logUIActivationEnded", v10, 2u);
      MEMORY[0x223DE8A80](v10, -1, -1);
    }
  }
}

void sub_2236C5458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  v9 = v8;
  v13 = sub_22372A868();
  if (!v13)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_28132B680);
    v26 = sub_22372AC88();
    v21 = sub_22372B278();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_223620000, v26, v21, "Could not build wrapper when logging logRewrittenUtteranceTier1", v22, 2u);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }

    goto LABEL_20;
  }

  v14 = v13;
  v15 = sub_22372A888();
  if (!v15)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);
    v26 = sub_22372AC88();
    v24 = sub_22372B278();
    if (os_log_type_enabled(v26, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_223620000, v26, v24, "The subRequestId is not a valid UUID, will not emit for logRewrittenUtteranceTier1", v25, 2u);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    goto LABEL_20;
  }

  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D59570]) init];
  v18 = v17;
  v26 = v17;
  if (v17)
  {
    [v17 setSubRequestId:v16];
    v19 = v26;
    if (a6)
    {
      a6 = sub_22372AFD8();
    }

    [v26 setUtteranceText:a6];

    v18 = v26;
    if ((a8 & 1) == 0)
    {
      if (a7 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a7 <= 0x7FFFFFFF)
      {
        [v26 setUtteranceIndex:a7];
        v18 = v26;
        goto LABEL_19;
      }

      __break(1u);
      return;
    }
  }

LABEL_19:
  [v14 setRouterRewrittenUtterance_];
  [*(v9 + 16) emitMessage_];

LABEL_20:
}

void sub_2236C574C(uint64_t a1)
{
  v2 = sub_223729D38();
  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D59858]) init];
  if (!v5)
  {
    if (qword_281328E58 == -1)
    {
LABEL_18:
      v24 = sub_22372AC98();
      __swift_project_value_buffer(v24, qword_28132B680);

      oslog = sub_22372AC88();
      v25 = sub_22372B278();

      if (os_log_type_enabled(oslog, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v40 = v27;
        *v26 = 136315138;
        v28 = sub_223623274(v2, v4, &v40);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_223620000, oslog, v25, "MUX: Instrumentation: Failed to create ORCHSchemaORCHTRPCandidateCreated message for : %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x223DE8A80](v27, -1, -1);
        MEMORY[0x223DE8A80](v26, -1, -1);
        v29 = oslog;
LABEL_24:

        return;
      }

      v23 = oslog;
      goto LABEL_27;
    }

LABEL_31:
    swift_once();
    goto LABEL_18;
  }

  v38 = v5;
  v6 = sub_22372A868();
  if (v6)
  {
    v37 = v6;
    v36 = v1;

    sub_223728CF8();
    v7 = sub_2237298C8();
    v4 = v7;
    v40 = MEMORY[0x277D84F90];
    v8 = v7 + 64;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v15 = *(*(v4 + 56) + 8 * (v14 | (v13 << 6)));

        v16 = v15;
        sub_223728CF8();
        v2 = v17;
        v18 = sub_22372A888();

        if (v18)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_8;
        }
      }

      MEMORY[0x223DE7B50](v19);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22372B148();
      }

      sub_22372B158();
    }

    while (v11);
LABEL_8:
    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v12)
      {

        v21 = sub_22372A888();

        [v38 setRootTrpId:v21];

        sub_2236C6080();
        v22 = sub_22372B118();

        [v38 setUserTrpIds:v22];

        [v37 setTrpCandidateCreated:v38];
        [*(v36 + 16) emitMessage_];

        v23 = v37;
        goto LABEL_27;
      }

      v11 = *(v8 + 8 * v20);
      ++v13;
      if (v11)
      {
        v13 = v20;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  __swift_project_value_buffer(v30, qword_28132B680);

  v31 = sub_22372AC88();
  v32 = sub_22372B278();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v33 = 136315138;
    v35 = sub_223623274(v2, v4, &v40);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_223620000, v31, v32, "MUX: Instrumentation: Failed to create wrapper event message for end request for : %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DE8A80](v34, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);

    v29 = v38;
    goto LABEL_24;
  }

  v23 = v38;
LABEL_27:
}

uint64_t sub_2236C5C88()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2236C5CF4(uint64_t a1)
{
  v2 = sub_2237287C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route;
  swift_beginAccess();
  sub_2236C5FC0(a1 + v11, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite))
    {
      return 12;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    v14 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
    swift_beginAccess();
    (*(v3 + 16))(v6, a1 + v14, v2);
    v15 = (*(v3 + 88))(v6, v2);
    if (v15 == *MEMORY[0x277D5CB88])
    {
      v16 = sub_2236F0954();
      (*(v3 + 8))(v6, v2);
      sub_2236C6024(v10);
      if (v16)
      {
        return 9;
      }

      else
      {
        return 8;
      }
    }

    else if (v15 == *MEMORY[0x277D5CBA0])
    {
      v17 = sub_2236F0954();
      sub_2236C6024(v10);
      if (v17)
      {
        return 6;
      }

      else
      {
        return 4;
      }
    }

    else if (v15 == *MEMORY[0x277D5CB98])
    {
      v18 = sub_2236F0954();
      sub_2236C6024(v10);
      if (v18)
      {
        return 11;
      }

      else
      {
        return 10;
      }
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      sub_2236C6024(v10);
      return 0;
    }
  }
}

uint64_t sub_2236C5FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.RequestRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236C6024(uint64_t a1)
{
  v2 = type metadata accessor for RequestInfo.RequestRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2236C6080()
{
  result = qword_27D08F688;
  if (!qword_27D08F688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D08F688);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236C60E4(char a1, uint64_t a2)
{
  v4 = sub_22372A1D8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - v11;
  if (a1)
  {
    return 2;
  }

  v14 = *(v5 + 16);
  v14(&v28 - v11, a2, v4);
  v15 = (*(v5 + 88))(v12, v4);
  if (v15 == *MEMORY[0x277D5D080])
  {
    return 5;
  }

  if (v15 == *MEMORY[0x277D5D088])
  {
    return 4;
  }

  if (v15 == *MEMORY[0x277D5D098])
  {
    return 3;
  }

  if (v15 == *MEMORY[0x277D5D090])
  {
    return 6;
  }

  if (v15 == *MEMORY[0x277D5D0A0])
  {
    return 1;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_28132B680);
  v14(v9, a2, v4);
  v17 = sub_22372AC88();
  v18 = sub_22372B278();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v19;
    v30 = swift_slowAlloc();
    v31 = v30;
    *v19 = 136315138;
    v20 = sub_22372A1C8();
    v22 = v21;
    v23 = *(v5 + 8);
    v23(v9, v4);
    v24 = sub_223623274(v20, v22, &v31);

    v25 = v29;
    *(v29 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_223620000, v17, v18, "AudioRecordType = %s, returning unknown RequestType", v25, 0xCu);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223DE8A80](v27, -1, -1);
    MEMORY[0x223DE8A80](v26, -1, -1);
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v9, v4);
  }

  v23(v12, v4);
  return 0;
}

uint64_t RemoteIntelligenceFlowErrorMessage.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t RemoteIntelligenceFlowErrorMessage.CodingKeys.hashValue.getter()
{
  sub_22372B7A8();
  MEMORY[0x223DE8200](0);
  return sub_22372B7C8();
}

uint64_t sub_2236C6598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2236C6628(uint64_t a1)
{
  v2 = sub_2236C6C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236C6664(uint64_t a1)
{
  v2 = sub_2236C6C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceFlowErrorMessage.__allocating_init(build:)(void (*a1)(char *))
{
  v2 = type metadata accessor for RemoteIntelligenceFlowErrorMessage.Builder(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = sub_223727408();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  a1(v5);
  sub_22364FCB0(v5, v6 + qword_27D097238);
  v8 = sub_223727518();
  sub_2236C68BC(v5);
  return v8;
}

uint64_t RemoteIntelligenceFlowErrorMessage.init(build:)(void (*a1)(char *))
{
  v3 = type metadata accessor for RemoteIntelligenceFlowErrorMessage.Builder(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223727408();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a1(v6);
  sub_22364FCB0(v6, v1 + qword_27D097238);
  v8 = sub_223727518();
  sub_2236C68BC(v6);
  return v8;
}

uint64_t sub_2236C68BC(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceFlowErrorMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RemoteIntelligenceFlowErrorMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v15[-v5 - 8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F690, &qword_223731A48);
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v8);
  v10 = &v15[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236C6C00();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for RemoteIntelligenceFlowErrorMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    sub_2236C6E50(&qword_27D08F6A0, &qword_27D08ED50, MEMORY[0x277CC9618], MEMORY[0x277D84F58]);
    v12 = v14;
    sub_22372B648();
    sub_223671888(v6, v16 + qword_27D097238);
    sub_223623934(a1, v15);
    v7 = sub_223727508();
    (*(v11 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_2236C6C00()
{
  result = qword_27D08F698;
  if (!qword_27D08F698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteIntelligenceFlowErrorMessage.CodingKeys, &type metadata for RemoteIntelligenceFlowErrorMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F698);
  }

  return result;
}

uint64_t sub_2236C6C74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F6A8, &qword_223731A50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236C6C00();
  sub_22372B7E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  sub_2236C6E50(&qword_27D08ED68, &unk_28132B610, MEMORY[0x277CC95F8], MEMORY[0x277D84F40]);
  sub_22372B6A8();
  if (!v1)
  {
    sub_223727528();
    v8 = sub_223727538();
    v8(a1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2236C6E50(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D08E530, &unk_22372CB10);
    v10 = sub_2236C6ED8(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236C6ED8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_223727408();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RemoteIntelligenceFlowErrorMessage.deinit()
{
  v0 = sub_223727548();
  sub_223660FAC(v0 + qword_27D097238);
  return v0;
}

uint64_t RemoteIntelligenceFlowErrorMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  sub_223660FAC(v0 + qword_27D097238);

  return swift_deallocClassInstance();
}

unint64_t sub_2236C7040()
{
  result = qword_27D08F6B0;
  if (!qword_27D08F6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteIntelligenceFlowErrorMessage.CodingKeys, &type metadata for RemoteIntelligenceFlowErrorMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F6B0);
  }

  return result;
}

unint64_t sub_2236C7098()
{
  result = qword_27D08F6B8;
  if (!qword_27D08F6B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteIntelligenceFlowErrorMessage.CodingKeys, &type metadata for RemoteIntelligenceFlowErrorMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F6B8);
  }

  return result;
}

unint64_t sub_2236C70F0()
{
  result = qword_27D08F6C0;
  if (!qword_27D08F6C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteIntelligenceFlowErrorMessage.CodingKeys, &type metadata for RemoteIntelligenceFlowErrorMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F6C0);
  }

  return result;
}

void sub_2236C7144(uint64_t a1)
{
  sub_22369BEEC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_2236C7250(uint64_t a1)
{
  sub_22369BEEC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2236C72CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6946505254626372;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (!a1)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 != 7)
    {
      v1 = 0xD00000000000001ELL;
    }

    if (a1 == 6)
    {
      v2 = 0xD00000000000001CLL;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2236C7408()
{
  v0 = sub_22372A608();
  __swift_allocate_value_buffer(v0, qword_28132BA28);
  __swift_project_value_buffer(v0, qword_28132BA28);
  return sub_22372A5D8();
}

void sub_2236C746C(uint64_t a1)
{
  sub_2236E8BBC(319, &qword_28132B4E0, MEMORY[0x277D5D298]);
  if (v1 <= 0x3F)
  {
    sub_2236E8BBC(319, &qword_28132B550, MEMORY[0x277D5CEA0]);
    if (v2 <= 0x3F)
    {
      sub_2236E8BBC(319, &qword_28132B530, MEMORY[0x277D5CF58]);
      if (v3 <= 0x3F)
      {
        sub_2236E8BBC(319, &qword_28132B508, MEMORY[0x277D5D0C0]);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_2236C76B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_223634890(a3, v23 - v10, &qword_27D08F640, &unk_22372D770);
  v12 = sub_22372B1A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_223626478(v11, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22372B168();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_22372B058() + 32;
      type metadata accessor for SessionClientBox(0);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v21;
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

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  type metadata accessor for SessionClientBox(0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2236C7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_223634890(a3, v23 - v10, &qword_27D08F640, &unk_22372D770);
  v12 = sub_22372B1A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_223626478(v11, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22372B168();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22372B058() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v21;
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

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2236C7C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t sub_2236C7C88(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v7 == 1)
      {
        sub_223630584(0, &qword_281328D10, 0x277D82BB8);
        return sub_22372B368() & 1;
      }

      return 0;
    }

    if (v4 | v3)
    {
      return v7 == 2 && v6 == 1 && v5 == 0;
    }

    else
    {
      return v7 == 2 && (v5 | v6) == 0;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }

    if (v4 == v6 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22372B6E8();
    }
  }
}

uint64_t sub_2236C7D74(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22372A768();
  v5 = v4;
  v6 = qword_28132B848;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16) && (, sub_2236261A0(v3, v5), v8 = v7, , (v8 & 1) != 0))
  {
    swift_unknownObjectRetain();

    type metadata accessor for RootRequestController(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_28132B680);
    v21 = sub_22372AC88();
    v22 = sub_22372B278();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_223620000, v21, v22, "Could not cast root RequestController to RootRequestController", v23, 2u);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);

    v13 = sub_22372AC88();
    v14 = sub_22372B278();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_22372A768();
      v19 = sub_223623274(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_223620000, v13, v14, "Could not find a RequestController with rootRequestId: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x223DE8A80](v16, -1, -1);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_2236C8058(uint64_t a1, uint64_t a2)
{
  v3 = qword_28132B870;
  swift_beginAccess();
  if (*(a2 + v3) >> 62)
  {
    sub_22372B558();
  }

  sub_22372A3E8();
  return sub_22372A3F8();
}

id sub_2236C80FC(uint64_t a1)
{
  v36 = a1;
  v34 = sub_22372A9B8();
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_223727408();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v30 - v13;
  v15 = *MEMORY[0x277D5CF40];
  v16 = sub_223729F08();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  v18 = qword_28132B888;
  swift_beginAccess();
  v19 = v36;
  sub_2236719F4(v14, v1 + v18, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v20 = v37;
  result = sub_2236DC48C(v19, sub_2236C86B4, 0);
  if (!v20)
  {
    v22 = v31;
    v37 = 0;
    sub_223728058();
    v23 = sub_223729EE8();
    (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
    v24 = qword_28132B858;
    swift_beginAccess();
    sub_2236719F4(v10, v1 + v24, &unk_27D08F6F0, &qword_223732CD0);
    swift_endAccess();
    if (qword_281328E80 != -1)
    {
      swift_once();
    }

    v25 = sub_22372A648();
    __swift_project_value_buffer(v25, qword_28132B6C8);
    sub_223729D98();
    sub_223729D58();
    sub_223729D38();
    v26 = v22;
    v27 = *(v22 + 104);
    v28 = v32;
    v29 = v34;
    v27(v32, *MEMORY[0x277D600B8], v34);
    sub_22372A618();

    (*(v26 + 8))(v28, v29);
    return (*(v33 + 8))(v6, v35);
  }

  return result;
}

uint64_t sub_2236C8580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236C86B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237320A0;
}

void sub_2236C8720(uint64_t a1)
{
  v98 = a1;
  v2 = sub_22372A9B8();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v90 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_223727408();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v5);
  v97 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v95 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223729F08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v96 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v94 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v86 - v19;
  v21 = *MEMORY[0x277D5CF40];
  v22 = *(v11 + 104);
  v22(&v86 - v19, *MEMORY[0x277D5CF40], v10);
  (*(v11 + 56))(v20, 0, 1, v10);
  v23 = qword_28132B888;
  swift_beginAccess();
  v24 = v1 + v23;
  v25 = v98;
  sub_2236719F4(v20, v24, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v26 = v1;
  v27 = v99;
  sub_2236DCCE4(v25, sub_2236C941C, 0);
  if (v27)
  {
    return;
  }

  v86 = v22;
  v87 = v21;
  v99 = v10;
  v28 = v95;
  v88 = 0;
  v29 = v25;
  v30 = sub_223729D38();
  v32 = v31;
  if (v30 == sub_22372A708() && v32 == v33)
  {

    v34 = v29;
    v35 = v28;
    v36 = v99;
  }

  else
  {
    v37 = sub_22372B6E8();

    v34 = v29;
    v35 = v28;
    v36 = v99;
    if ((v37 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v38 = v94;
  sub_223729168();
  v39 = sub_223729EE8();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  v40 = qword_28132B858;
  swift_beginAccess();
  sub_2236719F4(v38, v26 + v40, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
  *(v26 + qword_28132B878) = sub_223729178();

  *(v26 + qword_28132B8B0) = sub_223729158() & 1;
LABEL_7:
  v41 = v11;
  v42 = v96;
  if (*(v26 + qword_28132A1F8) == 1)
  {
    v43 = sub_223729D38();
    v45 = v44;
    v86(v42, v87, v36);
    sub_223676D90(v43, v45, v42);

    (*(v41 + 8))(v42, v36);
  }

  if (*(v26 + qword_28132B8C0))
  {
    v46 = *(v26 + qword_28132B8C0);
  }

  else
  {
    v47 = type metadata accessor for RequestInfo.UserQuery(0);
    v48 = *(v47 + 28);
    v49 = sub_223728858();
    (*(*(v49 - 8) + 56))(&v35[v48], 1, 1, v49);
    v50 = *(v47 + 32);
    v51 = sub_2237287E8();
    (*(*(v51 - 8) + 56))(&v35[v50], 1, 1, v51);
    *(v35 + 1) = 0u;
    *(v35 + 2) = 0u;
    *v35 = 0u;
    (*(*(v47 - 8) + 56))(v35, 0, 1, v47);
    v46 = sub_22362D128(v35);
    sub_22363B214(v35, type metadata accessor for RequestInfo.UserInput);
  }

  v52 = sub_223729148();
  if (v52)
  {
    v53 = v52;
    v54 = qword_28132B870;
    swift_beginAccess();
    v56 = *(v26 + v54);
    if (v56 >> 62)
    {
      v57 = sub_22372B558();
      if (v57 >= 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57 >= 2)
      {
LABEL_15:
        v58 = objc_allocWithZone(sub_22372A408());
        v57 = sub_22372A3D8();
        v59 = v57;
        goto LABEL_23;
      }
    }

    v59 = 0;
LABEL_23:
    MEMORY[0x28223BE20](v57, v55);
    *(&v86 - 2) = v53;
    *(&v86 - 1) = v59;
    v68 = objc_allocWithZone(sub_22372A328());
    v69 = sub_22372A2E8();

    v70 = *(v26 + qword_28132B8A0);
    *(v26 + qword_28132B8A0) = v69;

    MEMORY[0x28223BE20](v71, v72);
    *(&v86 - 4) = v46;
    *(&v86 - 3) = v34;
    *(&v86 - 2) = v26;
    v73 = objc_allocWithZone(sub_2237292E8());
    v74 = sub_223729238();
    if (v74)
    {
      v75 = v74;
      sub_22363B540(v74, 1, v26, MEMORY[0x277D5CC90]);
      v76 = v88;
      sub_2236D3118();
      if (v76)
      {
      }

      else
      {
        v81 = *(v26 + qword_28132B868);
        v82 = *(v26 + qword_28132B868 + 8);

        sub_2236D3640(v81, v82);
        v88 = 0;

        if (qword_281328E80 != -1)
        {
          swift_once();
        }

        v83 = sub_22372A648();
        v99 = __swift_project_value_buffer(v83, qword_28132B6C8);
        v98 = sub_223729D98();
        sub_223729D58();
        sub_223729D38();
        v84 = v92;
        v85 = v90;
        (*(v92 + 104))(v90, *MEMORY[0x277D600B8], v93);
        sub_22372A618();

        (*(v84 + 8))(v85, v93);
        (*(v89 + 8))(v97, v91);
      }
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v77 = sub_22372AC98();
      __swift_project_value_buffer(v77, qword_28132B680);
      v78 = sub_22372AC88();
      v79 = sub_22372B278();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_223620000, v78, v79, "Could not construct StartChildSpeechRequestMessage. Missing fields?", v80, 2u);
        MEMORY[0x223DE8A80](v80, -1, -1);
      }
    }

    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v60 = sub_22372AC98();
  __swift_project_value_buffer(v60, qword_28132B680);
  v61 = v34;
  v62 = sub_22372AC88();
  v63 = sub_22372B278();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&dword_223620000, v62, v63, "Message %@ didn't contain requestContextData", v64, 0xCu);
    sub_223626478(v65, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v65, -1, -1);
    MEMORY[0x223DE8A80](v64, -1, -1);
  }

  sub_2236EA17C();
  swift_allocError();
  *v67 = xmmword_22372CE90;
  *(v67 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_2236C92E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236C941C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732080;
}

uint64_t sub_2236C9488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v28 - v16;

  sub_2237292C8();
  sub_223729D38();
  sub_223729248();
  v18 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId;
  v19 = sub_223727408();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, a2 + v18, v19);
  v21 = *(v20 + 56);
  v21(v17, 0, 1, v19);
  sub_223729298();
  sub_223729D58();
  v21(v17, 0, 1, v19);
  sub_2237292D8();
  sub_223729D98();
  sub_223729268();
  sub_223729168();
  v22 = sub_223729EE8();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_223729278();
  sub_223729178();
  sub_2237292B8();
  v23 = *(a4 + qword_28132B8A0);
  sub_223729288();
  sub_223729158();
  sub_223729258();
  v24 = *MEMORY[0x277D5CDE8];
  v25 = sub_223729DE8();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v9, v24, v25);
  (*(v26 + 56))(v9, 0, 1, v25);
  return sub_2237292A8();
}

void sub_2236C97DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v72 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F700, &qword_223731D88);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v71 - v16;
  v18 = *MEMORY[0x277D5CF28];
  v19 = sub_223729F08();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  v21 = v19;
  v22 = a1;
  (*(v20 + 56))(v17, 0, 1, v21);
  v23 = qword_28132B888;
  swift_beginAccess();
  sub_2236719F4(v17, v1 + v23, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  sub_223728DC8();
  v24 = sub_22372A218();
  (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
  v25 = qword_28132B898;
  swift_beginAccess();
  sub_2236719F4(v13, v2 + v25, &unk_27D08F700, &qword_223731D88);
  swift_endAccess();
  *(v2 + qword_28132B890) = 0;
  v26 = v74;
  sub_2236DD110(a1, sub_2236CA1F8, 0);
  if (v26)
  {
    return;
  }

  v27 = v72;
  v28 = v73;
  v29 = sub_223729D38();
  v31 = v30;
  if (v29 == sub_22372A708() && v31 == v32)
  {

    v33 = v27;
  }

  else
  {
    v34 = sub_22372B6E8();

    v33 = v27;
    if ((v34 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_223728DE8();
  v35 = sub_223729EE8();
  (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  v36 = qword_28132B858;
  swift_beginAccess();
  sub_2236719F4(v33, v2 + v36, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
LABEL_7:
  v37 = type metadata accessor for RequestInfo.UserQuery(0);
  v38 = *(v37 + 28);
  v39 = sub_223728858();
  (*(*(v39 - 8) + 56))(&v28[v38], 1, 1, v39);
  v40 = *(v37 + 32);
  v41 = sub_2237287E8();
  (*(*(v41 - 8) + 56))(&v28[v40], 1, 1, v41);
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *v28 = 0u;
  (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
  v42 = sub_22362D128(v28);
  sub_22363B214(v28, type metadata accessor for RequestInfo.UserInput);
  v43 = sub_223728DD8();
  if (v43)
  {
    v44 = v43;
    v45 = qword_28132B870;
    swift_beginAccess();
    v47 = *(v2 + v45);
    if (v47 >> 62)
    {
      v48 = sub_22372B558();
      if (v48 >= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48 >= 2)
      {
LABEL_10:
        v49 = objc_allocWithZone(sub_22372A408());
        v48 = sub_22372A3D8();
        v50 = v48;
        goto LABEL_18;
      }
    }

    v50 = 0;
LABEL_18:
    MEMORY[0x28223BE20](v48, v46);
    *(&v71 - 2) = v44;
    *(&v71 - 1) = v50;
    v59 = objc_allocWithZone(sub_22372A328());
    v60 = sub_22372A2E8();

    v61 = *(v2 + qword_28132B8A0);
    *(v2 + qword_28132B8A0) = v60;

    MEMORY[0x28223BE20](v62, v63);
    *(&v71 - 4) = v42;
    *(&v71 - 3) = v22;
    *(&v71 - 2) = v2;
    v64 = objc_allocWithZone(sub_223728F88());
    v65 = sub_223728ED8();
    if (v65)
    {
      v66 = v65;
      sub_22363B540(v65, 1, v2, MEMORY[0x277D5CC60]);
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v67 = sub_22372AC98();
      __swift_project_value_buffer(v67, qword_28132B680);
      v68 = sub_22372AC88();
      v69 = sub_22372B278();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_223620000, v68, v69, "Could not construct StartChildTextRequestMessage. Missing fields?", v70, 2u);
        MEMORY[0x223DE8A80](v70, -1, -1);
      }
    }

    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v51 = sub_22372AC98();
  __swift_project_value_buffer(v51, qword_28132B680);
  v52 = v22;
  v53 = sub_22372AC88();
  v54 = sub_22372B278();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    *(v55 + 4) = v52;
    *v56 = v52;
    v57 = v52;
    _os_log_impl(&dword_223620000, v53, v54, "Message %@ didn't contain requestContextData", v55, 0xCu);
    sub_223626478(v56, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v56, -1, -1);
    MEMORY[0x223DE8A80](v55, -1, -1);
  }

  sub_2236EA17C();
  swift_allocError();
  *v58 = xmmword_22372CE90;
  *(v58 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_2236CA0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CA1F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732060;
}

uint64_t sub_2236CA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F700, &qword_223731D88);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v32 - v19;

  sub_223728F68();
  sub_223729D38();
  sub_223728EE8();
  v21 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId;
  v22 = sub_223727408();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v20, a2 + v21, v22);
  v24 = *(v23 + 56);
  v24(v20, 0, 1, v22);
  sub_223728F48();
  sub_223728DC8();
  v25 = sub_22372A218();
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  sub_223728EF8();
  sub_223729D58();
  v24(v20, 0, 1, v22);
  sub_223728F78();
  sub_223729D98();
  sub_223728F08();
  sub_223728DE8();
  v26 = sub_223729EE8();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  sub_223728F18();
  v27 = *(v33 + qword_28132B8A0);
  sub_223728F38();
  v28 = *MEMORY[0x277D5CDE8];
  v29 = sub_223729DE8();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v8, v28, v29);
  (*(v30 + 56))(v8, 0, 1, v29);
  return sub_223728F58();
}

uint64_t sub_2236CA640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

uint64_t sub_2236CA774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

uint64_t sub_2236CA8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

id sub_2236CA9DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v40 - v6);
  v8 = sub_223728CF8();
  v10 = v9;
  *v7 = sub_223729A08();
  v7[1] = v11;
  v12 = *MEMORY[0x277D5CD90];
  v13 = sub_223729D78();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  swift_beginAccess();
  sub_2237141EC(v7, v8, v10);
  swift_endAccess();
  v15 = sub_223728CF8();
  v16 = v15;
  v18 = v17;
  v19 = *(v2 + qword_28132B8C0);
  if (!v19)
  {
    goto LABEL_8;
  }

  v41 = v15;
  v20 = qword_281328E58;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_22372AC98();
  __swift_project_value_buffer(v21, qword_28132B680);
  v22 = sub_22372AC88();
  v23 = sub_22372B268();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_223620000, v22, v23, "Forwarding TRPCandidateForPlannerMessage to other bridges for eager processing as TRPCandidateRequestMessage", v24, 2u);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  MEMORY[0x28223BE20](v25, v26);
  *(&v40 - 6) = v2;
  *(&v40 - 5) = v19;
  v27 = v41;
  *(&v40 - 4) = a1;
  *(&v40 - 3) = v27;
  *(&v40 - 2) = v18;
  v28 = objc_allocWithZone(sub_223729078());
  v29 = sub_223728FC8();
  if (v29)
  {
    v30 = v29;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v16 = v41;
LABEL_8:
    v31 = sub_223728CF8();
    v33 = v32;
    v34 = qword_28132B840;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v2 + v34);
    *(v2 + v34) = 0x8000000000000000;
    sub_22368E320(v16, v18, v31, v33, isUniquelyReferenced_nonNull_native);

    *(v2 + v34) = v43;
    swift_endAccess();
    return sub_2236DF69C(a1, sub_2236CB214, 0);
  }

  v37 = sub_22372AC88();
  v38 = sub_22372B278();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_223620000, v37, v38, "Failed to build TRPCandidateRequestMessage from TRPCandidateForPlannerMessage. Missing Fields?", v39, 2u);
    MEMORY[0x223DE8A80](v39, -1, -1);
  }
}

uint64_t sub_2236CAE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v24 - v16;
  sub_22372A728();
  sub_223728FE8();

  sub_223729048();
  sub_22372A778();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_223729058();
  v19 = *MEMORY[0x277D5CDE8];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v13, v19, v20);
  (*(v21 + 56))(v13, 0, 1, v20);
  sub_223729028();
  sub_223728CF8();
  sub_223728FF8();
  sub_223728D08();
  v22 = sub_22372A548();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
  sub_223729038();
  sub_223729A08();
  sub_223729068();

  return sub_223729018();
}

uint64_t sub_2236CB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CB214(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732020;
}

void sub_2236CB280(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (v36 - v6);
  v8 = sub_223728CF8();
  v10 = v9;
  v11 = sub_223729198();
  v12 = qword_28132B838;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v1 + v12);
  *(v1 + v12) = 0x8000000000000000;
  sub_22368E158(v11, v8, v10, isUniquelyReferenced_nonNull_native);

  *(v1 + v12) = v39;
  swift_endAccess();
  v14 = sub_223729198();
  if (*(v14 + 16))
  {
    sub_223634890(v14 + 32, &v37, &qword_27D08F7B0, &qword_22372DD30);

    v15 = v37;
    v16 = [v37 speechPackage];

    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    if (v16)
    {
      v17 = sub_223728CF8();
      v19 = v18;
      *v7 = v16;
      v20 = *MEMORY[0x277D5CD98];
      v21 = sub_223729D78();
      v22 = *(v21 - 8);
      (*(v22 + 104))(v7, v20, v21);
      (*(v22 + 56))(v7, 0, 1, v21);
      swift_beginAccess();
      v23 = v16;
      sub_2237141EC(v7, v17, v19);
      swift_endAccess();

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v24 = sub_22372AC98();
  __swift_project_value_buffer(v24, qword_28132B680);
  v25 = a1;
  v26 = sub_22372AC88();
  v27 = sub_22372B278();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    v30 = sub_223728CF8();
    v32 = sub_223623274(v30, v31, &v37);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_223620000, v26, v27, "Could not find speechPackage for trpId = %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x223DE8A80](v29, -1, -1);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

LABEL_10:
  v33 = v36[1];
  sub_2236DEE44(a1, sub_2236CB784, 0);
  if (!v33)
  {
    v34 = *(v2 + qword_28132B828);
    *(v2 + qword_28132B828) = a1;
    v35 = a1;

    sub_2236D3118();
  }
}

uint64_t sub_2236CB650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CB784(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732000;
}

uint64_t sub_2236CB7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - v14;

  sub_2237284F8();
  sub_22372A728();
  sub_2237284B8();
  sub_22372A778();
  v16 = sub_223727408();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_223728508();
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_2237284D8();
  v20 = a5;
  sub_2237284E8();
  v21 = a6;
  return sub_2237284C8();
}

uint64_t sub_2236CB9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

id sub_2236CBB30(char *a1)
{
  v2 = v1;
  v4 = sub_223729F08();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v70 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  MEMORY[0x28223BE20](v72, v7);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v71 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v15 = *&v1[qword_28132B8C0];
  v73 = &v68 - v16;
  if (v15)
  {
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);

    if (v18 == sub_223729D38() && v17 == v19)
    {
    }

    else
    {
      v21 = sub_22372B6E8();

      if ((v21 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v68 = v9;
    v69 = v4;
    v75 = a1;
    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_28132B680);
    v23 = sub_22372AC88();
    v24 = sub_22372B268();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_223620000, v23, v24, "Posting NLTRPCandidateMessage at root level", v25, 2u);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v26 = sub_22372A768();
    v28 = MEMORY[0x28223BE20](v26, v27);
    *(&v68 - 4) = v75;
    *(&v68 - 3) = v28;
    *(&v68 - 2) = v29;
    v30 = objc_allocWithZone(sub_223728388());
    v31 = sub_2237282E8();

    if (!v31)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v45 = 0xD000000000000015;
      v45[1] = 0x8000000223737600;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v76);
    }

    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    a1 = v75;
    v9 = v68;
    v4 = v69;
  }

LABEL_15:
  v32 = *&v2[qword_28132B8B8];
  if (!v32)
  {
    return sub_2236DD968(a1, sub_2236CC818, 0);
  }

  v34 = *(v32 + 16);
  v33 = *(v32 + 24);

  if (v34 == sub_223729D38() && v33 == v35)
  {
  }

  else
  {
    v37 = sub_22372B6E8();

    if ((v37 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v69 = v32;
  v75 = a1;
  v38 = v9;
  v39 = qword_28132B888;
  swift_beginAccess();
  v41 = v73;
  v40 = v74;
  (*(v74 + 104))(v73, *MEMORY[0x277D5CF40], v4);
  (*(v40 + 56))(v41, 0, 1, v4);
  v42 = *(v72 + 48);
  sub_223634890(&v2[v39], v38, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v41, v38 + v42, &qword_27D08E9D0, &qword_22372D1E0);
  v43 = *(v40 + 48);
  if (v43(v38, 1, v4) != 1)
  {
    v44 = v71;
    sub_223634890(v38, v71, &qword_27D08E9D0, &qword_22372D1E0);
    if (v43(v38 + v42, 1, v4) != 1)
    {
      v47 = v74;
      v48 = v70;
      (*(v74 + 32))(v70, v38 + v42, v4);
      sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
      v49 = sub_22372AFC8();
      v50 = *(v47 + 8);
      v50(v48, v4);
      sub_223626478(v73, &qword_27D08E9D0, &qword_22372D1E0);
      v50(v44, v4);
      sub_223626478(v38, &qword_27D08E9D0, &qword_22372D1E0);
      a1 = v75;
      if ((v49 & 1) == 0)
      {
LABEL_39:

        return sub_2236DD968(a1, sub_2236CC818, 0);
      }

      goto LABEL_32;
    }

    sub_223626478(v73, &qword_27D08E9D0, &qword_22372D1E0);
    (*(v74 + 8))(v44, v4);
LABEL_30:
    a1 = v75;
    sub_223626478(v38, &qword_27D08F740, &unk_223731DC0);
    return sub_2236DD968(a1, sub_2236CC818, 0);
  }

  sub_223626478(v41, &qword_27D08E9D0, &qword_22372D1E0);
  if (v43(v38 + v42, 1, v4) != 1)
  {

    goto LABEL_30;
  }

  sub_223626478(v38, &qword_27D08E9D0, &qword_22372D1E0);
  a1 = v75;
LABEL_32:
  v51 = *&v2[qword_28132B860];
  if (v51)
  {
    v52 = qword_281328E58;
    v53 = v51;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = sub_22372AC98();
    __swift_project_value_buffer(v54, qword_28132B680);
    v55 = sub_22372AC88();
    v56 = sub_22372B268();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_223620000, v55, v56, "Posting TTResponseMessage for fallback child request", v57, 2u);
      MEMORY[0x223DE8A80](v57, -1, -1);
    }

    sub_22372A758();
    v75 = v2;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v58 = sub_223729D38();
    v59 = v78;
    v61 = sub_2236CC538(v58, v60);
    v78 = v59;
    if (v59)
    {

      return __swift_destroy_boxed_opaque_existential_1Tm(v76);
    }

    v66 = a1;
    v67 = v61;

    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    a1 = v66;
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v62 = sub_22372AC98();
    __swift_project_value_buffer(v62, qword_28132B680);
    v63 = sub_22372AC88();
    v64 = sub_22372B278();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_223620000, v63, v64, "Could not find a root TTResponseMessage for this speech request, this is an error.", v65, 2u);
      MEMORY[0x223DE8A80](v65, -1, -1);
    }
  }

  return sub_2236DD968(a1, sub_2236CC818, 0);
}

uint64_t sub_2236CC538(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(sub_223728028());
  result = sub_223727F78();
  if (!result)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v4 = sub_22372AC98();
    __swift_project_value_buffer(v4, qword_28132B680);
    v5 = sub_22372AC88();
    v6 = sub_22372B278();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223620000, v5, v6, "Could not construct TTResponseMessage", v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v8 = 0xD000000000000011;
    v8[1] = 0x8000000223737440;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2236CC6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CC818(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731FD8;
}

id sub_2236CC884(void *a1)
{
  v2 = sub_223729D38();
  v4 = v3;
  if (v2 == sub_22372A708() && v4 == v5)
  {

    v6 = sub_2236CCDCC;
  }

  else
  {
    v7 = sub_22372B6E8();

    if (v7)
    {
      v6 = sub_2236CCDCC;
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v8 = sub_22372AC98();
      __swift_project_value_buffer(v8, qword_28132B680);
      v9 = sub_22372AC88();
      v10 = sub_22372B268();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_223620000, v9, v10, "Replaying ExecutionFinalizedMessage at root level", v11, 2u);
        MEMORY[0x223DE8A80](v11, -1, -1);
      }

      v12 = sub_22372A768();
      MEMORY[0x28223BE20](v12, v13);
      v14 = objc_allocWithZone(sub_223728B38());
      v15 = sub_223728A98();

      if (v15)
      {
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      else
      {
        type metadata accessor for RequestControllerBridgeInternalErrors(0);
        sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
        v16 = swift_allocError();
        *v17 = 0xD000000000000019;
        v17[1] = 0x8000000223735150;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v18 = v16;
        v19 = sub_22372AC88();
        v20 = sub_22372B278();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27[0] = v26;
          *v21 = 136315138;
          swift_getErrorValue();
          v22 = sub_22372B738();
          v24 = sub_223623274(v22, v23, v27);

          *(v21 + 4) = v24;
          _os_log_impl(&dword_223620000, v19, v20, "Error while constructing root level ExecutionFinalizedMessage: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x223DE8A80](v26, -1, -1);
          MEMORY[0x223DE8A80](v21, -1, -1);
        }

        else
        {
        }
      }

      v6 = sub_2236CCE38;
    }
  }

  return sub_2236DE1C0(a1, v6, 0);
}

uint64_t sub_2236CCC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CCDCC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F98;
}

void *sub_2236CCE38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731FB8;
}

uint64_t sub_2236CCEA4(void *a1)
{
  v3 = qword_28132A208;
  v4 = *(*(v1 + qword_28132A208) + 72);
  if (!v4)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B278();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, v63);
      _os_log_impl(&dword_223620000, v19, v20, "%s Reason: latestVoiceIdScoreCard is nil", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    goto LABEL_24;
  }

  v6 = v4;
  if ([v6 hasSufficientAudioProcessed] != 2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);
    v24 = sub_22372AC88();
    v25 = sub_22372B278();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v63[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, v63);
      _os_log_impl(&dword_223620000, v24, v25, "%s Reason: haven't received scorecard with sufficient audio processed", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    goto LABEL_17;
  }

  v7 = *(v1 + v3);

  v8 = sub_223729BF8();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v7 + 64);
  if (!*(v11 + 16) || (, v12 = sub_2236261A0(v8, v10), v14 = v13, , (v14 & 1) == 0))
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v28 = sub_22372AC98();
    __swift_project_value_buffer(v28, qword_28132B680);
    v29 = a1;
    v30 = sub_22372AC88();
    v31 = sub_22372B278();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v64);
      *(v32 + 12) = 2080;
      v34 = sub_223729BF8();
      v36 = sub_223623274(v34, v35, &v64);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_223620000, v30, v31, "%s Reason: Couldn't retrieve the selectedCandidateContext for topLevelCandidateId %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v33, -1, -1);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    goto LABEL_23;
  }

  v15 = *(*(v11 + 56) + 8 * v12);

  if (!*(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v38 = sub_22372AC98();
    __swift_project_value_buffer(v38, qword_28132B680);

    v39 = sub_22372AC88();
    v40 = sub_22372B278();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v64 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v64);
      *(v41 + 12) = 2080;
      v43 = *(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v44 = *(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v45 = sub_223623274(v43, v44, &v64);

      *(v41 + 14) = v45;
      _os_log_impl(&dword_223620000, v39, v40, "%s nlUserParses not available for candidateId: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v42, -1, -1);
      MEMORY[0x223DE8A80](v41, -1, -1);
    }

    goto LABEL_24;
  }

  v16 = sub_223679638(v15);
  if (v2)
  {

    return v17 & 1;
  }

  if (!v16)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_28132B680);
    v24 = sub_22372AC88();
    v47 = sub_22372B278();
    if (os_log_type_enabled(v24, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v64 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v64);
      _os_log_impl(&dword_223620000, v24, v47, "%s Reason: postNLSelectedContext is nil", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223DE8A80](v49, -1, -1);
      MEMORY[0x223DE8A80](v48, -1, -1);
    }

LABEL_17:

LABEL_23:
LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  if (*(v16 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
  {

LABEL_41:
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v51 = sub_22372AC98();
    __swift_project_value_buffer(v51, qword_28132B680);
    v52 = sub_22372AC88();
    v53 = sub_22372B268();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_223620000, v52, v53, "MUX: Will process stoppedListeningForSpeechContinuationForPlannerMessage. Passed all checks", v54, 2u);
      MEMORY[0x223DE8A80](v54, -1, -1);
    }

    v17 = 1;
    return v17 & 1;
  }

  v50 = sub_22372B6E8();

  if (v50)
  {
    goto LABEL_41;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v55 = sub_22372AC98();
  __swift_project_value_buffer(v55, qword_28132B680);

  v56 = sub_22372AC88();
  v57 = sub_22372B278();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v64);
    *(v58 + 12) = 2080;
    v60 = sub_22372B038();
    v62 = sub_223623274(v60, v61, &v64);

    *(v58 + 14) = v62;
    _os_log_impl(&dword_223620000, v56, v57, "%s Reason: Selected User has changed. NL has been retriggered. Candidate State = %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v59, -1, -1);
    MEMORY[0x223DE8A80](v58, -1, -1);
  }

  else
  {
  }

  v17 = 0;
  return v17 & 1;
}

void sub_2236CD958(void *a1)
{
  v2 = v1;
  v4 = sub_22372A9B8();
  v95 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v93 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_223727408();
  v7 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = qword_28132A208;
  if (*(*(v1 + qword_28132A208) + 96))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_28132B680);
    v12 = sub_22372AC88();
    v13 = sub_22372B268();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223620000, v12, v13, "MUX: Processing cached StoppedListeningForSpeechContinuationForPlanner", v14, 2u);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }
  }

  else
  {
    v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);
    v16 = a1;
    v17 = sub_22372AC88();
    v18 = sub_22372B268();

    v19 = os_log_type_enabled(v17, v18);
    v91 = a1;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = v7;
      v22 = v4;
      v23 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v16;
      *v23 = v16;
      v24 = v16;
      _os_log_impl(&dword_223620000, v17, v18, "Received StoppedListeningForSpeechContinuationForPlannerMessage %@", v20, 0xCu);
      sub_223626478(v23, &unk_27D08F250, &unk_22372D1D0);
      v25 = v23;
      v4 = v22;
      v7 = v21;
      a1 = v91;
      MEMORY[0x223DE8A80](v25, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    v26 = v16;
    v27 = sub_22372AC88();
    v28 = sub_22372B288();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v7;
      v31 = v4;
      v32 = swift_slowAlloc();
      v98[0] = v32;
      *v29 = 136446210;
      v33 = sub_223729BF8();
      v35 = sub_223623274(v33, v34, v98);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_223620000, v27, v28, "Received StoppedListeningForSpeechContinuationForPlannerMessage for lastTRPId: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v36 = v32;
      v4 = v31;
      v7 = v30;
      a1 = v91;
      MEMORY[0x223DE8A80](v36, -1, -1);
      MEMORY[0x223DE8A80](v29, -1, -1);
    }

    v10 = v92;
  }

  v37 = sub_223729BF8();
  v38 = (v2 + qword_28132B868);
  *v38 = v37;
  v38[1] = v39;

  if (*(v2 + qword_28132A1F8) != 1)
  {
    v62 = a1;
LABEL_22:
    v63 = v97;
    sub_2236DBC34(v62, sub_2236CE548, 0);
    v97 = v63;
    if (v63)
    {
    }

    else
    {
      v96 = v7;
      if (qword_281328E80 != -1)
      {
        swift_once();
      }

      v64 = sub_22372A648();
      v92 = __swift_project_value_buffer(v64, qword_28132B6C8);
      sub_223729D98();
      sub_223729D58();
      sub_223729D38();
      v65 = v95;
      v66 = v93;
      (*(v95 + 104))(v93, *MEMORY[0x277D600B0], v4);
      sub_22372A618();

      (*(v65 + 8))(v66, v4);
      (*(v96 + 8))(v10, v94);
    }

    return;
  }

  v40 = v97;
  v41 = sub_2236CCEA4(a1);
  v97 = v40;
  if (v40)
  {
    return;
  }

  v42 = *(v2 + v96);
  if (v41)
  {
    v92 = v10;

    v43 = sub_223729BF8();
    v45 = v44;
    swift_beginAccess();
    v46 = *(v42 + 64);
    if (*(v46 + 16))
    {
      v90 = v4;

      v47 = sub_2236261A0(v43, v45);
      v49 = v48;

      if (v49)
      {
        v50 = *(*(v46 + 56) + 8 * v47);

        v51 = v96;
        v52 = *(v2 + v96);
        v53 = *(v52 + 96);
        *(v52 + 96) = 0;

        v54 = *(v2 + v51);

        *(v54 + 32) = sub_223729BF8();
        *(v54 + 40) = v55;

        v56 = v50 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
        v57 = *(v50 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
        *v38 = *(v50 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v38[1] = v57;

        v59 = *(v56 + 8);
        MEMORY[0x28223BE20](v58, v60);
        *(&v89 - 4) = a1;
        *(&v89 - 3) = v61;
        *(&v89 - 2) = v59;
        objc_allocWithZone(sub_223729C08());

        v62 = sub_223729B88();

        if (!v62)
        {
          type metadata accessor for RequestControllerBridgeInternalErrors(0);
          sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
          v87 = swift_allocError();
          *v88 = 0xD000000000000036;
          v88[1] = 0x80000002237374F0;
          swift_storeEnumTagMultiPayload();
          v97 = v87;
          swift_willThrow();

          return;
        }

        v4 = v90;
        v10 = v92;
        goto LABEL_22;
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v78 = sub_22372AC98();
    __swift_project_value_buffer(v78, qword_28132B680);
    v79 = a1;
    v80 = sub_22372AC88();
    v81 = sub_22372B278();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v99 = v83;
      *v82 = 136315138;
      v84 = sub_223729BF8();
      v86 = sub_223623274(v84, v85, &v99);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_223620000, v80, v81, "MUX: Get endpoint signal but could not retrieve the selectedCandidateContext for topLevelCandidateId %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x223DE8A80](v83, -1, -1);
      MEMORY[0x223DE8A80](v82, -1, -1);
    }
  }

  else if (*(v42 + 96))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v67 = sub_22372AC98();
    __swift_project_value_buffer(v67, qword_28132B680);
    v68 = sub_22372AC88();
    v69 = sub_22372B268();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_223620000, v68, v69, "MUX: StoppedListeningForSpeechContinuationForPlannerMessage is already cached.", v70, 2u);
      MEMORY[0x223DE8A80](v70, -1, -1);
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v71 = sub_22372AC98();
    __swift_project_value_buffer(v71, qword_28132B680);
    v72 = sub_22372AC88();
    v73 = sub_22372B268();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_223620000, v72, v73, "MUX: Caching StoppedListeningForSpeechContinuationForPlannerMessage.", v74, 2u);
      MEMORY[0x223DE8A80](v74, -1, -1);
    }

    v75 = *(v2 + v96);
    v76 = *(v75 + 96);
    *(v75 + 96) = a1;
    v77 = a1;
  }
}

uint64_t sub_2236CE414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CE548(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F88;
}

uint64_t sub_2236CE5B4(void *a1)
{
  v2 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = sub_223729AC8();
    v12 = sub_223623274(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223620000, v6, v7, "Received StoppedListeningForTextContinuationForPlannerMessage for lastTRPId: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v13 = sub_223729AC8();
  v14 = (v2 + qword_28132B868);
  *v14 = v13;
  v14[1] = v15;

  if (*(v2 + qword_28132A1F8) == 1)
  {
    v17 = *(v2 + qword_28132A208);

    *(v17 + 32) = sub_223729AC8();
    *(v17 + 40) = v18;
  }

  return result;
}

id sub_2236CE788(void *a1)
{
  v2 = v1;
  v4 = sub_22372A9B8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223727408();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  __swift_project_value_buffer(v12, qword_28132B680);
  v13 = a1;
  v14 = sub_22372AC88();
  v15 = sub_22372B288();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v7;
    v28 = v11;
    v18 = v17;
    v33 = v17;
    *v16 = 136446210;
    v19 = sub_223729B58();
    v21 = sub_223623274(v19, v20, &v33);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_223620000, v14, v15, "Received StoppedListeningForSpeechContinuationMessage for lastTRPId: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v22 = v18;
    v2 = v1;
    v7 = v27;
    v11 = v28;
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  result = sub_2236DDD94(v13, sub_2236CEC6C, 0);
  if (!v2)
  {
    v28 = 0;
    if (qword_281328E80 != -1)
    {
      swift_once();
    }

    v24 = sub_22372A648();
    __swift_project_value_buffer(v24, qword_28132B6C8);
    sub_223729D98();
    sub_223729D58();
    sub_223729D38();
    v26 = v31;
    v25 = v32;
    (*(v31 + 104))(v7, *MEMORY[0x277D600B0], v32);
    sub_22372A618();

    (*(v26 + 8))(v7, v25);
    return (*(v29 + 8))(v11, v30);
  }

  return result;
}

uint64_t sub_2236CEB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CEC6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F68;
}

id sub_2236CECD8(void *a1)
{
  v81 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v75 = &v74 - v5;
  v6 = sub_223729F08();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v8);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  MEMORY[0x28223BE20](v80, v10);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v74 - v18;
  if (qword_281328E58 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v20 = sub_22372AC98();
    v79 = __swift_project_value_buffer(v20, qword_28132B680);
    v21 = sub_22372AC88();
    v22 = sub_22372B268();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v83[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737420, v83);
      _os_log_impl(&dword_223620000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x223DE8A80](v24, -1, -1);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    v25 = sub_223729D38();
    v27 = v26;
    if (v25 == sub_22372A708() && v27 == v28)
    {
    }

    else
    {
      v29 = sub_22372B6E8();

      if ((v29 & 1) == 0)
      {
        return sub_2236DF270(v81, sub_2236CF8CC, 0);
      }
    }

    v30 = qword_28132B888;
    swift_beginAccess();
    (*(v7 + 104))(v19, *MEMORY[0x277D5CF40], v6);
    (*(v7 + 56))(v19, 0, 1, v6);
    v31 = v2;
    v32 = *(v80 + 48);
    v80 = v31;
    sub_223634890(v31 + v30, v12, &qword_27D08E9D0, &qword_22372D1E0);
    sub_223634890(v19, &v12[v32], &qword_27D08E9D0, &qword_22372D1E0);
    v33 = *(v7 + 48);
    if (v33(v12, 1, v6) == 1)
    {
      sub_223626478(v19, &qword_27D08E9D0, &qword_22372D1E0);
      if (v33(&v12[v32], 1, v6) != 1)
      {
        goto LABEL_13;
      }

      sub_223626478(v12, &qword_27D08E9D0, &qword_22372D1E0);
    }

    else
    {
      v34 = v78;
      sub_223634890(v12, v78, &qword_27D08E9D0, &qword_22372D1E0);
      if (v33(&v12[v32], 1, v6) == 1)
      {
        sub_223626478(v19, &qword_27D08E9D0, &qword_22372D1E0);
        (*(v7 + 8))(v34, v6);
LABEL_13:
        sub_223626478(v12, &qword_27D08F740, &unk_223731DC0);
        return sub_2236DF270(v81, sub_2236CF8CC, 0);
      }

      v35 = v77;
      (*(v7 + 32))(v77, &v12[v32], v6);
      sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
      v36 = sub_22372AFC8();
      v37 = *(v7 + 8);
      v7 += 8;
      v37(v35, v6);
      sub_223626478(v19, &qword_27D08E9D0, &qword_22372D1E0);
      v37(v34, v6);
      sub_223626478(v12, &qword_27D08E9D0, &qword_22372D1E0);
      if ((v36 & 1) == 0)
      {
        return sub_2236DF270(v81, sub_2236CF8CC, 0);
      }
    }

    v38 = sub_22372AC88();
    v39 = sub_22372B268();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_223620000, v38, v39, "Posting TTResponseMessage for all child requests", v40, 2u);
      MEMORY[0x223DE8A80](v40, -1, -1);
    }

    v41 = sub_223642834();
    v78 = *(v41 + 16);
    if (!v78)
    {
      break;
    }

    v19 = 0;
    v2 = (v41 + 40);
    *&v42 = 136315138;
    v76 = v42;
    v77 = v41;
    while (v19 < *(v41 + 16))
    {
      v7 = *(v2 - 1);
      v12 = *v2;

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v83, v83[3]);
      v43 = v82;
      v44 = sub_2236CC538(v7, v12);
      if (v43)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
      }

      v6 = v44;
      v82 = 0;
      sub_223729D88();

      __swift_destroy_boxed_opaque_existential_1Tm(v83);

      v45 = sub_22372AC88();
      v46 = sub_22372B268();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v83[0] = v48;
        *v47 = v76;
        *(v47 + 4) = sub_223623274(v7, v12, v83);
        _os_log_impl(&dword_223620000, v45, v46, "Posted TTResponseMessage for child requestId: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x223DE8A80](v48, -1, -1);
        MEMORY[0x223DE8A80](v47, -1, -1);
      }

      ++v19;
      v2 += 2;
      v41 = v77;
      if (v78 == v19)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_24:

  v50 = v80;
  v49 = v81;
  v51 = *(v80 + qword_28132B860);
  *(v80 + qword_28132B860) = v81;
  v52 = v49;

  v53 = v75;
  sub_223727F58();
  v54 = sub_22372A358();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    sub_223626478(v53, &unk_27D08E980, &qword_22372D178);
  }

  else
  {
    v56 = sub_22372A348();
    v58 = v57;
    (*(v55 + 8))(v53, v54);
    v59 = sub_223728CF8();
    v61 = v60;
    v62 = qword_28132B840;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v50 + v62);
    *(v50 + v62) = 0x8000000000000000;
    v78 = v56;
    sub_22368E320(v56, v58, v59, v61, isUniquelyReferenced_nonNull_native);

    *(v50 + v62) = v84;
    swift_endAccess();
    v64 = v52;

    v65 = sub_22372AC88();
    v66 = sub_22372B268();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v67 = 136315394;
      v69 = sub_223623274(v78, v58, v83);

      *(v67 + 4) = v69;
      *(v67 + 12) = 2080;
      v70 = sub_223728CF8();
      v72 = sub_223623274(v70, v71, v83);

      *(v67 + 14) = v72;
      _os_log_impl(&dword_223620000, v65, v66, "selectedTCUId: %s for trpId: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v68, -1, -1);
      MEMORY[0x223DE8A80](v67, -1, -1);
    }

    else
    {
    }
  }

  return sub_2236DF270(v81, sub_2236CF8CC, 0);
}

uint64_t sub_2236CF798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CF8CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F48;
}

uint64_t sub_2236CF938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223624EA4;

  return sub_2236839E4();
}

uint64_t sub_2236CF9C8(void *a1)
{
  v2 = v1;
  v4 = sub_223729D38();
  v6 = v5;
  if (v4 == sub_22372A708() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_22372B6E8();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_2236DC8B8(a1, sub_2236CFF3C, 0);
  if (!v1)
  {
    if (qword_281328E58 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v10 = sub_22372AC98();
      __swift_project_value_buffer(v10, qword_28132B680);
      v11 = sub_22372AC88();
      v12 = sub_22372B268();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_223620000, v11, v12, "Posting CancelRequestMessage for all child requests", v13, 2u);
        MEMORY[0x223DE8A80](v13, -1, -1);
      }

      v29 = v2;

      v14 = sub_223642834();
      v2 = v14;
      v27 = *(v14 + 16);
      if (!v27)
      {
        break;
      }

      v15 = 0;
      v16 = v14 + 40;
      v26 = v14;
      while (v15 < *(v2 + 16))
      {

        v17 = sub_223728128();
        MEMORY[0x28223BE20](v17, v18);
        v19 = objc_allocWithZone(sub_223728188());
        v20 = sub_223728118();
        if (!v20)
        {

          type metadata accessor for RequestControllerBridgeInternalErrors(0);
          sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
          swift_allocError();
          *v25 = 0xD000000000000014;
          v25[1] = 0x8000000223736AD0;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        v21 = v20;
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v28, v28[3]);
        sub_223729D88();
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v22 = v29;
        sub_2236DC8B8(v21, sub_2236CFFA8, 0);
        v29 = v22;
        if (v22)
        {
        }

        ++v15;

        v16 += 16;
        v2 = v26;
        if (v27 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_15:

    v23 = sub_223729D38();
    sub_2236E3E0C(v23, v24);
  }

  return result;
}

uint64_t sub_2236CFD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236CFED0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731E00;
}

void *sub_2236CFF3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731ED0;
}

void *sub_2236CFFA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731EC0;
}

void sub_2236D0014(void *a1)
{
  v4 = sub_2237287C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v33 - v11;
  sub_2236DE5EC(a1, sub_2236D0518, 0);
  if (!v2)
  {
    v13 = v5;
    v34 = 0;
    v14 = sub_223729D38();
    v16 = v15;
    if (v14 == sub_22372A708() && v16 == v17)
    {
    }

    else
    {
      v18 = sub_22372B6E8();

      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    v19 = sub_223728848();
    v21 = v20;
    sub_2237287D8();
    (*(v13 + 56))(v12, 0, 1, v4);
    swift_beginAccess();
    sub_223713FD8(v12, v19, v21);
    swift_endAccess();
    v22 = *(v1 + qword_28132B8C0);
    if (v22)
    {

      sub_2237287D8();
      v23 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
      swift_beginAccess();
      (*(v13 + 40))(v22 + v23, v8, v4);
      swift_endAccess();
      v24 = sub_223728848();
      v25 = v34;
      sub_2236E5DC8(v22, v24, v26);
      if (!v25)
      {

        v27 = sub_223728848();
        sub_2236D3640(v27, v28);
        v34 = 0;
      }
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v29 = sub_22372AC98();
      __swift_project_value_buffer(v29, qword_28132B680);
      v30 = sub_22372AC88();
      v31 = sub_22372B278();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_223620000, v30, v31, "BUG: We should have started an eager child request at this point", v32, 2u);
        MEMORY[0x223DE8A80](v32, -1, -1);
      }
    }
  }
}

uint64_t sub_2236D03E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236D0518(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731EB0;
}

uint64_t sub_2236D0584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void sub_2236D06B8(unint64_t a1, unint64_t a2)
{
  v5 = sub_223729F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v87 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v84 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v88 = (&v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v84 - v22;
  v90 = v2;
  if (sub_22372A768() == a1 && v24 == a2)
  {

    goto LABEL_5;
  }

  v86 = v23;
  v25 = a1;
  v26 = sub_22372B6E8();

  if (v26)
  {
LABEL_5:
    v27 = qword_28132B888;
    v28 = v90;
    swift_beginAccess();
    (*(v6 + 104))(v19, *MEMORY[0x277D5CF30], v5);
    (*(v6 + 56))(v19, 0, 1, v5);
    v29 = *(v9 + 48);
    sub_223634890(v28 + v27, v12, &qword_27D08E9D0, &qword_22372D1E0);
    sub_223634890(v19, &v12[v29], &qword_27D08E9D0, &qword_22372D1E0);
    v30 = *(v6 + 48);
    if (v30(v12, 1, v5) == 1)
    {
      sub_223626478(v19, &qword_27D08E9D0, &qword_22372D1E0);
      if (v30(&v12[v29], 1, v5) == 1)
      {
        sub_223626478(v12, &qword_27D08E9D0, &qword_22372D1E0);
        v31 = 1;
LABEL_15:
        v46 = v31 & 1;
LABEL_16:
        sub_2236D1330(v46);
        return;
      }
    }

    else
    {
      v32 = v88;
      sub_223634890(v12, v88, &qword_27D08E9D0, &qword_22372D1E0);
      if (v30(&v12[v29], 1, v5) != 1)
      {
        v44 = v87;
        (*(v6 + 32))(v87, &v12[v29], v5);
        sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
        v31 = sub_22372AFC8();
        v45 = *(v6 + 8);
        v45(v44, v5);
        sub_223626478(v19, &qword_27D08E9D0, &qword_22372D1E0);
        v45(v32, v5);
        sub_223626478(v12, &qword_27D08E9D0, &qword_22372D1E0);
        goto LABEL_15;
      }

      sub_223626478(v19, &qword_27D08E9D0, &qword_22372D1E0);
      (*(v6 + 8))(v32, v5);
    }

    sub_223626478(v12, &qword_27D08F740, &unk_223731DC0);
    v31 = 0;
    goto LABEL_15;
  }

  v88 = v25;
  v33 = a2;
  v34 = v90;
  v35 = sub_2236E6F88(v25, a2);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *(v34 + qword_28132A1E8);
  v43 = __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
  if (!*(*v43 + 24) || *(*v43 + 24) != 1)
  {
    v47 = sub_22372B6E8();

    if (v47)
    {
      goto LABEL_18;
    }

    v52 = sub_223727408();
    v53 = v86;
    (*(*(v52 - 8) + 56))(v86, 1, 1, v52);
    v54 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId;
    swift_beginAccess();
    sub_2236719F4(v53, v42 + v54, &unk_27D08E530, &unk_22372CB10);
    swift_endAccess();
    v55 = qword_28132B870;
    swift_beginAccess();
    v56 = *(v34 + v55);
    v85 = v37;
    v86 = v35;
    if (v56 >> 62)
    {
      v57 = sub_22372B558();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v87 = v39;

    if (v57)
    {
      v58 = 0;
      while (1)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x223DE7ED0](v58, v56);
          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_65;
          }

          v59 = *(v56 + 8 * v58 + 32);

          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_38;
          }
        }

        v61 = v59[2].isa == v88 && v59[3].isa == v33;
        if (v61 || (sub_22372B6E8() & 1) != 0)
        {
          break;
        }

        ++v58;
        if (v60 == v57)
        {
          goto LABEL_39;
        }
      }

      v67 = v89;
      sub_2236E672C(v59 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId);
      v66 = v67;
      if (!v67)
      {

        goto LABEL_50;
      }

      v68 = v87;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v69 = sub_22372AC98();
      __swift_project_value_buffer(v69, qword_28132B680);
      v70 = sub_22372AC88();
      v71 = sub_22372B278();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_223620000, v70, v71, "Couldn't post OrchestrationTaskCompletedMessage", v72, 2u);
        MEMORY[0x223DE8A80](v72, -1, -1);
      }

      v66 = 0;
    }

    else
    {
LABEL_39:

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v62 = sub_22372AC98();
      __swift_project_value_buffer(v62, qword_28132B680);

      v59 = sub_22372AC88();
      v63 = sub_22372B278();

      if (os_log_type_enabled(v59, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v91 = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_223623274(v88, v33, &v91);
        _os_log_impl(&dword_223620000, v59, v63, "Couldn't find child request with requestId: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x223DE8A80](v65, -1, -1);
        MEMORY[0x223DE8A80](v64, -1, -1);
      }

      v66 = v89;
LABEL_50:
      v68 = v87;
    }

    v73 = v41 >> 1;
    if (v68 == v73)
    {
LABEL_63:
      swift_unknownObjectRelease();
      v46 = v68 == v73;
      goto LABEL_16;
    }

    if (v68 < v73)
    {
      v89 = v66;
      v59 = *(v85 + 8 * v68);
      v74 = qword_281328E58;

      if (v74 == -1)
      {
LABEL_56:
        v75 = sub_22372AC98();
        __swift_project_value_buffer(v75, qword_28132B680);

        v76 = sub_22372AC88();
        v77 = sub_22372B268();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v91 = v79;
          *v78 = 136315138;
          *(v78 + 4) = sub_223623274(v88, v33, &v91);
          _os_log_impl(&dword_223620000, v76, v77, "Child request %s completed, executing next child request", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          MEMORY[0x223DE8A80](v79, -1, -1);
          MEMORY[0x223DE8A80](v78, -1, -1);
        }

        v80 = v89;
        sub_2236DA034(v59);
        v68 = v87;
        if (v80)
        {
          swift_unknownObjectRelease();

          v81 = sub_22372AC88();
          v82 = sub_22372B268();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 67109120;
            _os_log_impl(&dword_223620000, v81, v82, "shouldEndRootRequest=%{BOOL}d", v83, 8u);
            MEMORY[0x223DE8A80](v83, -1, -1);
          }

          return;
        }

        goto LABEL_63;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_56;
  }

LABEL_18:
  sub_2236EA99C(v35, v37, v39, v41, v34);
  swift_unknownObjectRelease();
  if (qword_281328E58 != -1)
  {
LABEL_65:
    swift_once();
  }

  v48 = sub_22372AC98();
  __swift_project_value_buffer(v48, qword_28132B680);
  v49 = sub_22372AC88();
  v50 = sub_22372B268();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    *(v51 + 4) = 1;
    _os_log_impl(&dword_223620000, v49, v50, "shouldEndRootRequest=%{BOOL}d", v51, 8u);
    MEMORY[0x223DE8A80](v51, -1, -1);
  }

  sub_2236E8534(0, 0);
}

void sub_2236D1330(char a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = sub_22372AC88();
  v4 = sub_22372B268();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_223620000, v3, v4, "shouldEndRootRequest=%{BOOL}d", v5, 8u);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  if (a1)
  {
    sub_2236E8534(0, 0);
  }
}

id sub_2236D143C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v23 - v10;
  v12 = sub_2236C7D74(v9);
  if (v12)
  {
    v13 = v12;
    v14 = sub_22372B1A8();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a1;
    v16 = a1;
    sub_2236C7970(0, 0, v11, &unk_223731E60, v15);

    v17 = *MEMORY[0x277D5CF40];
    v18 = sub_223729F08();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v6, v17, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    v20 = qword_28132B888;
    swift_beginAccess();
    sub_2236719F4(v6, v1 + v20, &qword_27D08E9D0, &qword_22372D1E0);
    return swift_endAccess();
  }

  else
  {
    sub_2236EA17C();
    swift_allocError();
    *v22 = a1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    swift_willThrow();
    return a1;
  }
}

uint64_t sub_2236D16AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2236242EC;

  return sub_2236F6A58(a5);
}

uint64_t sub_2236D1748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = *MEMORY[0x277D5CDE8];
  v13 = sub_223729DE8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_223729588();
  sub_22372A728();
  sub_223729578();
  sub_22372A778();
  v15 = sub_223727408();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  sub_2237295A8();

  sub_223729598();
  v16 = __swift_project_boxed_opaque_existential_1((*(a2 + qword_28132A1E8) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(*(a2 + qword_28132A1E8) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
  if (!*(*v16 + 24) || *(*v16 + 24) != 1)
  {
    sub_22372B6E8();
  }

  sub_223729558();
  sub_22372A768();
  return sub_223729568();
}

uint64_t sub_2236D1A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

id sub_2236D1B34(void (*a1)(char *, char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v75 - v10;
  v12 = sub_22372A098();
  v83 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v75 - v22;
  result = sub_2236E074C(a1, sub_2236D2418, 0);
  if (!v2)
  {
    v25 = v1;
    v80 = v16;
    v82 = 0;
    sub_223729A28();
    v26 = v83;
    if ((*(v83 + 48))(v11, 1, v12) == 1)
    {
      return sub_223626478(v11, &unk_27D08E9C0, &qword_223731E30);
    }

    else
    {
      v86 = a1;
      (*(v26 + 32))(v23, v11, v12);
      v27 = qword_28132B870;
      v28 = v25;
      swift_beginAccess();
      v77 = v27;
      v78 = v12;
      v29 = *(v25 + v27);
      v81 = v23;
      v79 = v28;
      v75 = v20;
      v76 = v8;
      if (v29 >> 62)
      {
LABEL_38:
        v84 = v29 & 0xFFFFFFFFFFFFFF8;
        v30 = sub_22372B558();
      }

      else
      {
        v84 = v29 & 0xFFFFFFFFFFFFFF8;
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = 4;
      while (v31 - v30 != 4)
      {
        v32 = v31 - 4;
        if ((v29 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x223DE7ED0](v31 - 4, v29);
        }

        else
        {
          if (v32 >= *(v84 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v33 = *(v29 + 8 * v31);
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 == sub_223729D38() && v34 == v36)
        {

LABEL_25:
          v50 = v77;

          v51 = *(v79 + v50);
          v45 = v83;
          v52 = v81;
          if ((v51 & 0xC000000000000001) != 0)
          {

            v53 = MEMORY[0x223DE7ED0](v31 - 4, v51);

            goto LABEL_28;
          }

          if (v32 < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v53 = *(v51 + 8 * v31);

LABEL_28:
            v54 = qword_281328E58;

            v44 = v78;
            if (v54 != -1)
            {
              swift_once();
            }

            v55 = sub_22372AC98();
            __swift_project_value_buffer(v55, qword_28132B680);
            v56 = *(v45 + 16);
            v57 = v75;
            v56(v75, v52, v44);
            v58 = v86;
            v59 = sub_22372AC88();
            v60 = sub_22372B268();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v86 = v56;
              v62 = v61;
              v84 = swift_slowAlloc();
              v85[0] = v84;
              *v62 = 136315394;
              LODWORD(v77) = v60;
              v63 = sub_223729D38();
              v64 = v59;
              v66 = sub_223623274(v63, v65, v85);

              *(v62 + 4) = v66;
              *(v62 + 12) = 2080;
              v86(v80, v57, v44);
              v67 = sub_22372B038();
              v69 = v68;
              (*(v45 + 8))(v57, v44);
              v70 = sub_223623274(v67, v69, v85);

              *(v62 + 14) = v70;
              _os_log_impl(&dword_223620000, v64, v77, "Updating ongoingExecutionSource for requestInfo with requestId: %s to %s", v62, 0x16u);
              v71 = v84;
              swift_arrayDestroy();
              MEMORY[0x223DE8A80](v71, -1, -1);
              v72 = v62;
              v56 = v86;
              MEMORY[0x223DE8A80](v72, -1, -1);
            }

            else
            {

              (*(v45 + 8))(v57, v44);
            }

            v73 = v76;
            v46 = v81;
            v56(v76, v81, v44);
            (*(v45 + 56))(v73, 0, 1, v44);
            v74 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
            swift_beginAccess();
            sub_2236719F4(v73, v53 + v74, &unk_27D08E9C0, &qword_223731E30);
            swift_endAccess();
            sub_223630E28(v53);

            return (*(v45 + 8))(v46, v44);
          }

          __break(1u);
          goto LABEL_41;
        }

        v38 = sub_22372B6E8();

        if (v38)
        {
          goto LABEL_25;
        }

        ++v31;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_37;
        }
      }

      if (qword_281328E58 == -1)
      {
        goto LABEL_21;
      }

LABEL_41:
      swift_once();
LABEL_21:
      v39 = sub_22372AC98();
      __swift_project_value_buffer(v39, qword_28132B680);
      v40 = v86;
      v41 = sub_22372AC88();
      v42 = sub_22372B278();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v78;
      v45 = v83;
      v46 = v81;
      if (v43)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v40;
        *v48 = v40;
        v49 = v40;
        _os_log_impl(&dword_223620000, v41, v42, "Could not find requestInfo matching message: %@", v47, 0xCu);
        sub_223626478(v48, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v48, -1, -1);
        MEMORY[0x223DE8A80](v47, -1, -1);
      }

      return (*(v45 + 8))(v46, v44);
    }
  }

  return result;
}

uint64_t sub_2236D22E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

void *sub_2236D2418(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731E50;
}

void sub_2236D2484(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v104 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v93 - v7;
  v9 = sub_2237287C8();
  v110 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v112 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v109 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v103 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_223727408();
  v106 = *(v108 - 8);
  v19 = MEMORY[0x28223BE20](v108, v18);
  v107 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v93 - v22;
  v24 = sub_223729D78();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v93 - v31;
  v33 = sub_22372A548();
  v35 = MEMORY[0x28223BE20](v33, v34);
  v37 = MEMORY[0x28223BE20](v35, v36);
  v41 = &v93 - v40;
  v42 = *(v4 + qword_28132B8C0);
  if (!v42)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v52 = sub_22372AC98();
    __swift_project_value_buffer(v52, qword_28132B680);
    v53 = sub_22372AC88();
    v54 = sub_22372B278();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v111[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_223623274(0xD000000000000029, 0x80000002237372A0, v111);
      _os_log_impl(&dword_223620000, v53, v54, "%s: BUG: We did not start an eager child request at this point", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x223DE8A80](v56, -1, -1);
      MEMORY[0x223DE8A80](v55, -1, -1);
    }

    goto LABEL_15;
  }

  v105 = v9;
  v43 = *(v4 + qword_28132B868 + 8);
  if (!v43)
  {
    v57 = qword_281328E58;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = sub_22372AC98();
    __swift_project_value_buffer(v58, qword_28132B680);
    v53 = sub_22372AC88();
    v59 = sub_22372B278();
    if (os_log_type_enabled(v53, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v111[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_223623274(0xD000000000000029, 0x80000002237372A0, v111);
      _os_log_impl(&dword_223620000, v53, v59, "%s: BUG: We did not select a TRP at this point", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x223DE8A80](v61, -1, -1);
      MEMORY[0x223DE8A80](v60, -1, -1);
    }

LABEL_15:

    return;
  }

  v97 = v39;
  v99 = v38;
  v100 = v37;
  v101 = v8;
  v95 = v3;
  v44 = *(v4 + qword_28132B868);
  v102 = v42;

  v98 = v41;
  sub_2236D7D60(v44, v43, v41);
  v45 = qword_28132B850;
  swift_beginAccess();
  v46 = *(v4 + v45);
  v47 = *(v46 + 16);
  v96 = v4;
  if (v47)
  {

    v48 = sub_2236261A0(v44, v43);
    v50 = v49;

    if (v50)
    {
      (*(v25 + 16))(v32, *(v46 + 56) + *(v25 + 72) * v48, v24);
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v4 = v96;
  }

  else
  {
    v51 = 1;
  }

  (*(v25 + 56))(v32, v51, 1, v24);
  if ((*(v25 + 48))(v32, 1, v24))
  {
    sub_223626478(v32, &qword_27D08F770, &qword_223731DE0);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    (*(v25 + 16))(v28, v32, v24);
    sub_223626478(v32, &qword_27D08F770, &qword_223731DE0);
    v62 = sub_2236EF704();
    v63 = v64;
    (*(v25 + 8))(v28, v24);
  }

  *(v4 + qword_28132B890) = 0;
  sub_2237273F8();
  v94 = sub_2237273B8();
  v93 = v65;
  v66 = v106;
  v67 = v23;
  v68 = v108;
  (*(v106 + 8))(v67, v108);
  (*(v66 + 16))(v107, v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v68);
  v69 = sub_223727E98();
  v71 = v70;
  v72 = type metadata accessor for RequestInfo.UserQuery(0);
  v73 = *(v72 + 28);
  v74 = sub_223728858();
  v75 = v103;
  (*(*(v74 - 8) + 56))(&v103[v73], 1, 1, v74);
  v76 = *(v72 + 32);
  v77 = sub_2237287E8();
  (*(*(v77 - 8) + 56))(&v75[v76], 1, 1, v77);
  *v75 = v62;
  *(v75 + 1) = v63;
  *(v75 + 2) = v69;
  *(v75 + 3) = v71;
  *(v75 + 4) = v62;
  *(v75 + 5) = v63;
  (*(*(v72 - 8) + 56))(v75, 0, 1, v72);
  (*(v99 + 16))(v97, v98, v100);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v78 - 8) + 56))(v109, 1, 1, v78);
  (*(v110 + 104))(v112, *MEMORY[0x277D5CB80], v105);

  sub_223727EA8();
  type metadata accessor for RequestInfo(0);
  v79 = swift_allocObject();
  v80 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  v81 = MEMORY[0x277D84F90];
  *(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
  v82 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  *(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v81;
  v83 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  v84 = sub_22372A098();
  v85 = *(*(v84 - 8) + 56);
  v85(v79 + v83, 1, 1, v84);
  v85(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v84);
  v86 = v100;
  v87 = v93;
  *(v79 + 16) = v94;
  *(v79 + 24) = v87;
  (*(v106 + 32))(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v107, v108);
  v88 = v75;
  v89 = v99;
  sub_223639818(v88, v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  (*(v89 + 32))(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v97, v86);
  swift_beginAccess();
  *(v79 + v80) = v81;
  swift_beginAccess();
  *(v79 + v82) = v81;
  sub_223639818(v109, v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  (*(v110 + 32))(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v112, v105);
  v90 = v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
  *v90 = 0;
  *(v90 + 8) = 1;
  v91 = v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
  *v91 = 0;
  *(v91 + 8) = 1;
  *(v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 1;
  sub_2236EA450(v101, v79 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_22372FCE0;
  *(v92 + 32) = v79;

  sub_2236D9818(v92);
  (*(v89 + 8))(v98, v86);
}

void sub_2236D3118()
{
  if (*(v0 + qword_28132B8C0))
  {
    v1 = v0;
    v2 = qword_28132B828;
    v3 = *(v0 + qword_28132B828);
    if (v3)
    {
      v4 = qword_281328E58;

      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_22372AC98();
      __swift_project_value_buffer(v6, qword_28132B680);
      v7 = sub_22372AC88();
      v8 = sub_22372B268();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_223620000, v7, v8, "Forwarding TRPCandidateForPlannerMessage to other bridges for eager processing as TRPCandidateRequestMessage", v9, 2u);
        MEMORY[0x223DE8A80](v9, -1, -1);
      }

      MEMORY[0x28223BE20](v10, v11);
      v12 = objc_allocWithZone(sub_223728CE8());
      v13 = sub_223728C68();
      if (v13)
      {
        v14 = v13;
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      else
      {
        v15 = sub_22372AC88();
        v16 = sub_22372B278();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_223620000, v15, v16, "Failed to build TRPCandidateRequestMessage from TRPCandidateForPlannerMessage. Missing Fields?", v17, 2u);
          MEMORY[0x223DE8A80](v17, -1, -1);
        }
      }

      v18 = *(v1 + v2);
      *(v1 + v2) = 0;
    }
  }
}

uint64_t sub_2236D338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v21 - v13;
  sub_22372A728();
  sub_223728C78();

  sub_223728CC8();
  sub_22372A778();
  v15 = sub_223727408();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_223728CD8();
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  sub_223728CA8();
  sub_223729198();
  sub_223728C98();
  sub_223728CF8();
  sub_223728C88();
  sub_223728D08();
  v19 = sub_22372A548();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  return sub_223728CB8();
}

void sub_2236D3640(uint64_t a1, uint64_t a2)
{
  v438 = a1;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F780, &unk_223731E10);
  v5 = MEMORY[0x28223BE20](v429, v4);
  v430 = &v388 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v428 = &v388 - v8;
  v409 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v9 = *(v409 - 8);
  MEMORY[0x28223BE20](v409, v10);
  v416 = &v388 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = sub_223729F78();
  v411 = *(v412 - 8);
  MEMORY[0x28223BE20](v412, v12);
  v410 = &v388 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_223729F48();
  v407 = *(v408 - 8);
  MEMORY[0x28223BE20](v408, v14);
  v406 = &v388 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v415 = sub_223729F88();
  v414 = *(v415 - 8);
  MEMORY[0x28223BE20](v415, v16);
  v413 = &v388 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = sub_223729FB8();
  v419 = *(v417 - 8);
  MEMORY[0x28223BE20](v417, v18);
  v418 = &v388 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v425 = &v388 - v22;
  v23 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v388 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v421 = &v388 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v427 = sub_2237287A8();
  v426 = *(v427 - 1);
  MEMORY[0x28223BE20](v427, v30);
  v431 = &v388 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_22372A548();
  v432 = *(v433 - 8);
  v33 = MEMORY[0x28223BE20](v433, v32);
  v424 = &v388 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v436 = &v388 - v36;
  v37 = sub_223727408();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v388 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v423 = &v388 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v420 = &v388 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v388 - v50;
  v52 = sub_223729D78();
  v434 = *(v52 - 8);
  v435 = v52;
  MEMORY[0x28223BE20](v52, v53);
  v422 = &v388 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v58 = &v388 - v57;
  v59 = sub_2237287C8();
  v61 = MEMORY[0x28223BE20](v59, v60);
  v63 = MEMORY[0x28223BE20](v61, v62);
  v65 = MEMORY[0x28223BE20](v63, &v388 - v64);
  v67 = MEMORY[0x28223BE20](v65, v66);
  v69 = MEMORY[0x28223BE20](v67, v68);
  v71 = MEMORY[0x28223BE20](v69, v70);
  v73 = (&v388 - v72);
  v75 = MEMORY[0x28223BE20](v71, v74);
  v83 = &v388 - v79;
  if (*(v2 + qword_28132A188) != 1)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v102 = sub_22372AC98();
    __swift_project_value_buffer(v102, qword_28132B680);
    v98 = sub_22372AC88();
    v99 = sub_22372B268();
    if (!os_log_type_enabled(v98, v99))
    {
      goto LABEL_23;
    }

    v100 = swift_slowAlloc();
    *v100 = 0;
    v101 = "Not executing yet because request is still in candidate mode";
LABEL_16:
    _os_log_impl(&dword_223620000, v98, v99, v101, v100, 2u);
    MEMORY[0x223DE8A80](v100, -1, -1);
    goto LABEL_23;
  }

  v405 = v38;
  v84 = v37;
  v437 = v2;
  v85 = a2;
  if (!a2 || (v86 = *(v2 + qword_28132B868 + 8)) == 0 || ((v87 = *(v2 + qword_28132B868), v87 != v438) || v86 != a2) && (v403 = v75, v398 = v26, v401 = v81, v400 = v82, v402 = v73, v397 = v76, v396 = v77, v88 = v86, v399 = v78, v404 = v42, v89 = v51, v90 = &v388 - v79, v91 = v87, v92 = v9, v93 = v80, v94 = sub_22372B6E8(), v78 = v399, v77 = v396, v76 = v397, v73 = v402, v82 = v400, v86 = v88, v81 = v401, v26 = v398, v80 = v93, v9 = v92, v87 = v91, v83 = v90, v51 = v89, v42 = v404, v95 = v94, v75 = v403, v2 = v437, (v95 & 1) == 0))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v103 = sub_22372AC98();
    __swift_project_value_buffer(v103, qword_28132B680);
    v104 = v85;

    v105 = v437;

    v98 = sub_22372AC88();
    v106 = sub_22372B268();

    if (!os_log_type_enabled(v98, v106))
    {
      goto LABEL_23;
    }

    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v442 = v108;
    *v107 = 136315394;
    v443 = v438;
    v444 = v104;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
    v109 = sub_22372B038();
    v111 = sub_223623274(v109, v110, &v442);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2080;
    v112 = *(v105 + qword_28132B868 + 8);
    v443 = *(v105 + qword_28132B868);
    v444 = v112;

    v113 = sub_22372B038();
    v115 = sub_223623274(v113, v114, &v442);

    *(v107 + 14) = v115;
    _os_log_impl(&dword_223620000, v98, v106, "Not executing trpId: %s because it's different from selectedTrpId: %s", v107, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v108, -1, -1);
    v116 = v107;
    goto LABEL_22;
  }

  v96 = *(v2 + qword_28132B890);
  if (v96 == 2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v97 = sub_22372AC98();
    __swift_project_value_buffer(v97, qword_28132B680);
    v98 = sub_22372AC88();
    v99 = sub_22372B268();
    if (!os_log_type_enabled(v98, v99))
    {
      goto LABEL_23;
    }

    v100 = swift_slowAlloc();
    *v100 = 0;
    v101 = "Not commiting request yet: MitigationDecision not received yet";
    goto LABEL_16;
  }

  if (v96)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v117 = sub_22372AC98();
    __swift_project_value_buffer(v117, qword_28132B680);
    v98 = sub_22372AC88();
    v99 = sub_22372B268();
    if (!os_log_type_enabled(v98, v99))
    {
      goto LABEL_23;
    }

    v100 = swift_slowAlloc();
    *v100 = 0;
    v101 = "Not commiting request: Request should be mitigated";
    goto LABEL_16;
  }

  v399 = v78;
  v118 = v77;
  v119 = v76;
  v402 = v73;
  v400 = v82;
  v394 = v9;
  v395 = v83;
  v401 = v81;
  v404 = v42;
  v396 = v80;
  v403 = v75;
  v120 = v2;
  v121 = qword_28132B830;
  v397 = v87;
  v122 = v86;
  swift_beginAccess();
  v123 = *(v120 + v121);
  v124 = *(v123 + 16);
  v438 = v122;
  v125 = v397;

  if (!v124)
  {
LABEL_35:
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v138 = sub_22372AC98();
    __swift_project_value_buffer(v138, qword_28132B680);
    v139 = v438;

    v98 = sub_22372AC88();
    v140 = sub_22372B268();

    if (!os_log_type_enabled(v98, v140))
    {

      goto LABEL_23;
    }

    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v442 = v142;
    *v141 = 136315138;
    v143 = sub_223623274(v125, v139, &v442);

    *(v141 + 4) = v143;
    _os_log_impl(&dword_223620000, v98, v140, "Not committing request yet: request routing decision has not yet arrived for trpCandidateId %s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    MEMORY[0x223DE8A80](v142, -1, -1);
    v116 = v141;
LABEL_22:
    MEMORY[0x223DE8A80](v116, -1, -1);
LABEL_23:

    return;
  }

  v126 = sub_2236261A0(v125, v438);
  if ((v127 & 1) == 0)
  {

    goto LABEL_35;
  }

  v128 = *(v396 + 16);
  v129 = *(v123 + 56) + *(v396 + 72) * v126;
  v130 = v395;
  v391 = v396 + 16;
  v390 = v128;
  (v128)(v395, v129, v403);

  v131 = qword_28132B850;
  v132 = v437;
  swift_beginAccess();
  v133 = *(v132 + v131);
  v134 = *(v133 + 16);
  v392 = v84;
  if (v134)
  {

    v135 = sub_2236261A0(v397, v438);
    if (v136)
    {
      v434[2](v58, *(v133 + 56) + v434[9] * v135, v435);
      v137 = 0;
    }

    else
    {
      v137 = 1;
    }

    v144 = v51;
  }

  else
  {
    v137 = 1;
    v144 = v51;
  }

  v145 = v434;
  v146 = v137;
  v147 = v435;
  (v434[7])(v58, v146, 1, v435);
  v148 = (v145[6])(v58, 1, v147);
  v149 = v437;
  v398 = v26;
  if (v148)
  {
    sub_223626478(v58, &qword_27D08F770, &qword_223731DE0);
    v389 = 0;
    v393 = 0;
  }

  else
  {
    v150 = v422;
    v145[2](v422, v58, v147);
    sub_223626478(v58, &qword_27D08F770, &qword_223731DE0);
    v151 = sub_2236EF704();
    v149 = v437;
    v389 = v151;
    v393 = v152;
    (v145[1])(v150, v147);
  }

  v153 = *(v149 + qword_28132B8C0);
  if (v153)
  {
    v154 = *(v405 + 16);
    v388 = v144;
    v434 = v154;
    v435 = v405 + 16;
    (v154)(v144, &v153[OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId], v392);

    sub_2236D7D60(v397, v438, v436);
    v155 = v130;
    v156 = v402;
    v157 = v155;
    v158 = v403;
    v390(v402);
    v159 = v396;
    v160 = (*(v396 + 88))(v156, v158);
    if (v160 == *MEMORY[0x277D5CB90])
    {
      (*(v159 + 96))(v156, v403);
      (*(v426 + 32))(v431, v156, v427);
      v161 = sub_223728798();
      if (!v162)
      {

        v163 = v157;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v207 = sub_22372AC98();
        __swift_project_value_buffer(v207, qword_28132B680);
        v208 = v390;
        (v390)(v119, v157, v403);
        v209 = v438;

        v210 = sub_22372AC88();
        v211 = sub_22372B268();

        if (os_log_type_enabled(v210, v211))
        {
          v212 = swift_slowAlloc();
          v429 = v210;
          v213 = v212;
          v430 = swift_slowAlloc();
          v441 = v430;
          *v213 = 136315394;
          LODWORD(v428) = v211;
          v214 = v403;
          v208(v401, v119, v403);
          v215 = v153;
          v216 = sub_22372B038();
          v217 = v157;
          v219 = v218;
          v220 = *(v396 + 8);
          v220(v119, v214);
          v221 = v216;
          v153 = v215;
          v222 = sub_223623274(v221, v219, &v441);
          v163 = v217;

          *(v213 + 4) = v222;
          *(v213 + 12) = 2080;
          v223 = sub_223623274(v397, v209, &v441);

          *(v213 + 14) = v223;
          v190 = v392;
          v224 = v429;
          _os_log_impl(&dword_223620000, v429, v428, "Received NLRoutingDecisionMessage with no rewrite decision: %s for trpCandidateId=%s. Reusing eager child request.", v213, 0x16u);
          v225 = v430;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v225, -1, -1);
          MEMORY[0x223DE8A80](v213, -1, -1);

          v226 = v439;
          v197 = v437;
          v227 = v431;
        }

        else
        {

          v220 = *(v396 + 8);
          v220(v119, v403);
          v226 = v439;
          v197 = v437;
          v227 = v431;
          v190 = v392;
        }

        sub_2236D7F74(v436);
        v195 = v226;
        v274 = v405;
        if (!v226)
        {
          (*(v426 + 8))(v227, v427);
          goto LABEL_134;
        }

        (*(v426 + 8))(v227, v427);
        (*(v274 + 8))(v388, v190);
        v220(v163, v403);
        goto LABEL_148;
      }

      v429 = v162;
      v430 = v161;
      v163 = v157;
      if (qword_281328E58 != -1)
      {
        goto LABEL_155;
      }

      while (1)
      {
        v422 = v153;
        v164 = sub_22372AC98();
        __swift_project_value_buffer(v164, qword_28132B680);
        v165 = v390;
        (v390)(v118, v163, v403);
        v166 = v438;

        v167 = sub_22372AC88();
        v168 = sub_22372B268();

        v169 = os_log_type_enabled(v167, v168);
        v170 = v392;
        if (v169)
        {
          v171 = swift_slowAlloc();
          v428 = swift_slowAlloc();
          v441 = v428;
          *v171 = 136315394;
          LODWORD(v419) = v168;
          v172 = v163;
          v173 = v403;
          v165(v401, v118, v403);
          v174 = sub_22372B038();
          v176 = v175;
          v177 = v173;
          v163 = v172;
          v178 = v388;
          (*(v396 + 8))(v118, v177);
          v179 = sub_223623274(v174, v176, &v441);

          *(v171 + 4) = v179;
          *(v171 + 12) = 2080;
          v180 = sub_223623274(v397, v166, &v441);

          *(v171 + 14) = v180;
          v181 = v405;
          _os_log_impl(&dword_223620000, v167, v419, "Received NLRoutingDecisionMessage with rewrite: %s for trpCandidateId=%s. Creating 1 new child request.", v171, 0x16u);
          v182 = v428;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v182, -1, -1);
          v183 = v171;
          v170 = v392;
          MEMORY[0x223DE8A80](v183, -1, -1);

          v184 = v434;
          v185 = v420;
        }

        else
        {

          (*(v396 + 8))(v118, v403);
          v184 = v434;
          v185 = v420;
          v181 = v405;
          v178 = v388;
        }

        sub_2237273F8();
        v438 = sub_2237273B8();
        v428 = v228;
        v229 = *(v181 + 8);
        v420 = (v181 + 8);
        v419 = v229;
        v229(v185, v170);
        (v184)(v423, v178, v170);
        v230 = sub_223728788();
        v232 = v231;
        v233 = type metadata accessor for RequestInfo.UserQuery(0);
        v234 = v421;
        sub_223728778();
        v235 = *(v233 + 32);
        v236 = sub_2237287E8();
        (*(*(v236 - 8) + 56))(&v234[v235], 1, 1, v236);
        v237 = v393;
        *v234 = v389;
        *(v234 + 1) = v237;
        v238 = v429;
        *(v234 + 2) = v430;
        *(v234 + 3) = v238;
        *(v234 + 4) = v230;
        *(v234 + 5) = v232;
        (*(*(v233 - 8) + 56))(v234, 0, 1, v233);
        (*(v432 + 16))(v424, v436, v433);
        v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
        (*(*(v239 - 8) + 56))(v398, 1, 1, v239);
        (v390)(v401, v163, v403);
        v240 = sub_223729D68();
        (*(*(v240 - 8) + 56))(v425, 1, 1, v240);
        type metadata accessor for RequestInfo(0);
        v241 = swift_allocObject();
        v242 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
        v243 = MEMORY[0x277D84F90];
        *(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
        v244 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
        *(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v243;
        v245 = v170;
        v246 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
        v247 = sub_22372A098();
        v248 = *(*(v247 - 8) + 56);
        v249 = v241 + v246;
        v190 = v245;
        v248(v249, 1, 1, v247);
        v248(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v247);
        v250 = v405;
        v251 = v428;
        *(v241 + 16) = v438;
        *(v241 + 24) = v251;
        (*(v250 + 32))(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v423, v245);
        sub_223639818(v234, v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
        (*(v432 + 32))(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v424, v433);
        swift_beginAccess();
        v252 = MEMORY[0x277D84F90];
        *(v241 + v242) = MEMORY[0x277D84F90];
        swift_beginAccess();
        *(v241 + v244) = v252;
        sub_223639818(v398, v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
        v253 = v396;
        (*(v396 + 32))(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v401, v403);
        v254 = v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
        *v254 = 0;
        *(v254 + 8) = 1;
        v255 = v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
        *v255 = 0;
        *(v255 + 8) = 1;
        *(v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
        sub_2236EA450(v425, v241 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
        v256 = swift_allocObject();
        *(v256 + 16) = xmmword_22372FCE0;
        *(v256 + 32) = v241;

        v197 = v437;
        v257 = v439;
        sub_2236D9818(v256);
        v195 = v257;
        if (v257)
        {

          (*(v426 + 8))(v431, v427);
          v419(v388, v190);
          (*(v253 + 8))(v395, v403);
          goto LABEL_148;
        }

        (*(v426 + 8))(v431, v427);

LABEL_79:
        v163 = v395;
        v153 = v422;
LABEL_134:
        v376 = qword_28132B870;
        swift_beginAccess();
        v377 = *(v197 + v376);
        v118 = v190;
        if (v377 >> 62)
        {
          v387 = v377;
          v378 = sub_22372B558();
          v377 = v387;
        }

        else
        {
          v378 = *((v377 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v379 = MEMORY[0x277D84F90];
        if (!v378)
        {
          break;
        }

        v422 = v153;
        v439 = v195;
        v445 = MEMORY[0x277D84F90];
        v380 = v377;

        sub_2236F1BB8(0, v378 & ~(v378 >> 63), 0);
        if ((v378 & 0x8000000000000000) == 0)
        {
          v381 = 0;
          v379 = v445;
          v382 = v380;
          v438 = v380 & 0xC000000000000001;
          v383 = v378;
          do
          {
            if (v438)
            {
              v384 = MEMORY[0x223DE7ED0](v381, v382);
              (v434)(v404, v384 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v118);
              swift_unknownObjectRelease();
            }

            else
            {
              (v434)(v404, *(v382 + 8 * v381 + 32) + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v118);
            }

            v445 = v379;
            v386 = *(v379 + 16);
            v385 = *(v379 + 24);
            if (v386 >= v385 >> 1)
            {
              sub_2236F1BB8((v385 > 1), v386 + 1, 1);
              v379 = v445;
            }

            ++v381;
            *(v379 + 16) = v386 + 1;
            (*(v405 + 32))(v379 + ((*(v405 + 80) + 32) & ~*(v405 + 80)) + *(v405 + 72) * v386, v404, v118);
            v382 = v380;
          }

          while (v383 != v381);

          v163 = v395;
          break;
        }

        __break(1u);
LABEL_155:
        swift_once();
      }

      sub_2236E4A34(v379);

      (*(v405 + 8))(v388, v118);
LABEL_147:
      (*(v396 + 8))(v163, v403);
LABEL_148:
      (*(v432 + 8))(v436, v433);
      return;
    }

    if (v160 == *MEMORY[0x277D5CB78])
    {

      (*(v396 + 8))(v402, v403);
      v163 = v157;
      v190 = v392;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v191 = sub_22372AC98();
      __swift_project_value_buffer(v191, qword_28132B680);
      v192 = sub_22372AC88();
      v193 = sub_22372B278();
      v194 = os_log_type_enabled(v192, v193);
      v195 = v439;
      if (v194)
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&dword_223620000, v192, v193, "Unexpected routing decision. Ignoring!", v196, 2u);
        MEMORY[0x223DE8A80](v196, -1, -1);
      }

      v197 = v437;
      goto LABEL_134;
    }

    v190 = v392;
    if (v160 == *MEMORY[0x277D5CB70])
    {

      v198 = v402;
      (*(v396 + 96))(v402, v403);
      v199 = *v198;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v200 = sub_22372AC98();
      __swift_project_value_buffer(v200, qword_28132B680);

      v201 = sub_22372AC88();
      v202 = sub_22372B268();
      v203 = os_log_type_enabled(v201, v202);
      v422 = v153;
      if (v203)
      {
        v204 = v190;
        v205 = swift_slowAlloc();
        *v205 = 134217984;
        *(v205 + 4) = *(v199 + 16);

        _os_log_impl(&dword_223620000, v201, v202, "Received NLRoutingDecisionMessage with queryRewrite. Creating %ld new child request", v205, 0xCu);
        v206 = v205;
        v190 = v204;
        MEMORY[0x223DE8A80](v206, -1, -1);
      }

      else
      {
      }

      v130 = *(v199 + 16);
      if (!v130)
      {

        v288 = MEMORY[0x277D84F90];
        v197 = v437;
LABEL_103:
        v299 = v439;
        sub_2236D9818(v288);
        v195 = v299;
        v163 = v395;
        v153 = v422;
        if (!v299)
        {

          goto LABEL_134;
        }

        (*(v405 + 8))(v388, v190);
        goto LABEL_147;
      }

      v441 = MEMORY[0x277D84F90];

      sub_22372B4F8();
      v275 = *(v199 + 16);
      v276 = sub_223728838();
      v277 = 0;
      v278 = *(v276 - 8);
      v438 = v199 + ((*(v278 + 80) + 32) & ~*(v278 + 80));
      v431 = (v278 + 16);
      v427 = (v278 + 32);
      if (v275 >= v130)
      {
        v279 = v130;
      }

      else
      {
        v279 = v275;
      }

      while (v279 != v277)
      {
        if (v277 >= *(v199 + 16))
        {
          goto LABEL_151;
        }

        v280 = v429;
        isa_low = SLODWORD(v429[6].isa);
        v282 = v428;
        (*(v278 + 16))(&v428[isa_low], v438 + *(v278 + 72) * v277, v276);
        v283 = v430;
        *v430 = v277;
        v284 = SLODWORD(v280[6].isa);
        v285 = &v282[isa_low];
        v286 = v283;
        (*(v278 + 32))(&v283[v284], v285, v276);
        v287 = v439;
        sub_2236D6E50(v277, v286 + v284, v389, v393, v436, v199);
        v439 = v287;
        if (v287)
        {

          swift_bridgeObjectRelease_n();

          sub_223626478(v286, &qword_27D08F780, &unk_223731E10);
          (*(v405 + 8))(v388, v392);
          (*(v396 + 8))(v395, v403);

          goto LABEL_148;
        }

        ++v277;
        sub_223626478(v286, &qword_27D08F780, &unk_223731E10);
        sub_22372B4D8();
        sub_22372B508();
        sub_22372B518();
        sub_22372B4E8();
        if (v130 == v277)
        {
          swift_bridgeObjectRelease_n();

          v288 = v441;
          v197 = v437;
          v190 = v392;
          goto LABEL_103;
        }
      }

      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v163 = v157;
    v258 = v402;
    if (v160 != *MEMORY[0x277D5CB88])
    {
      if (v160 != *MEMORY[0x277D5CB80] && v160 != *MEMORY[0x277D5CBA0] && v160 != *MEMORY[0x277D5CB98])
      {
        v289 = v153;

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v290 = v190;
        v291 = sub_22372AC98();
        __swift_project_value_buffer(v291, qword_28132B680);

        v292 = sub_22372AC88();
        v293 = sub_22372B278();

        if (os_log_type_enabled(v292, v293))
        {
          v294 = swift_slowAlloc();
          v295 = swift_slowAlloc();
          v441 = v295;
          *v294 = 136315138;
          v440 = v437;
          type metadata accessor for RequestControllerBridgeRequestProcessor(0);

          v296 = sub_22372B038();
          v298 = sub_223623274(v296, v297, &v441);

          *(v294 + 4) = v298;
          _os_log_impl(&dword_223620000, v292, v293, "Unknown routing decision: %s. Ignoring!", v294, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v295);
          MEMORY[0x223DE8A80](v295, -1, -1);
          MEMORY[0x223DE8A80](v294, -1, -1);
        }

        (*(v396 + 8))(v402, v403);
        v195 = v439;
        v197 = v437;
        v190 = v290;
        v153 = v289;
        goto LABEL_134;
      }

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v422 = v153;
      v300 = sub_22372AC98();
      __swift_project_value_buffer(v300, qword_28132B680);
      v301 = v399;
      v302 = v390;
      (v390)(v399, v157, v403);
      v303 = v438;

      v304 = sub_22372AC88();
      v305 = sub_22372B268();

      LODWORD(v431) = v305;
      if (os_log_type_enabled(v304, v305))
      {
        v306 = swift_slowAlloc();
        v430 = swift_slowAlloc();
        v441 = v430;
        *v306 = 136315394;
        v307 = v403;
        v302(v401, v301, v403);
        v308 = sub_22372B038();
        v310 = v309;
        v311 = v307;
        v312 = *(v396 + 8);
        v312(v301, v311);
        v313 = sub_223623274(v308, v310, &v441);
        v163 = v157;

        *(v306 + 4) = v313;
        *(v306 + 12) = 2080;
        v314 = sub_223623274(v397, v303, &v441);

        *(v306 + 14) = v314;
        _os_log_impl(&dword_223620000, v304, v431, "Received NLRoutingDecisionMessage with no rewrite decision: %s for trpCandidateId=%s. Reusing eager child request.", v306, 0x16u);
        v315 = v430;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v315, -1, -1);
        MEMORY[0x223DE8A80](v306, -1, -1);
      }

      else
      {

        v312 = *(v396 + 8);
        v312(v301, v403);
      }

      v355 = v439;
      sub_2236D7F74(v436);
      v195 = v355;
      v190 = v392;
      v153 = v422;
      if (!v355)
      {
        v197 = v437;
        goto LABEL_134;
      }

      (*(v405 + 8))(v388, v190);
      v312(v163, v403);
      goto LABEL_148;
    }

    (*(v396 + 96))(v402, v403);
    v259 = v258;
    v260 = v417;
    (*(v419 + 4))(v418, v259, v417);
    v261 = v413;
    sub_223729FA8();
    v262 = v414;
    v263 = v415;
    v264 = (*(v414 + 88))(v261, v415);
    v265 = v264 == *MEMORY[0x277D5CF78];
    v422 = v153;
    if (v265)
    {
      (*(v262 + 96))(v261, v263);
      v266 = v411;
      v267 = v410;
      v268 = v412;
      (*(v411 + 32))(v410, v261, v412);
      v269 = sub_223729F68();
      v271 = v270;
      v272 = sub_223729F58();
    }

    else
    {
      if (v264 != *MEMORY[0x277D5CF70])
      {

        (*(v262 + 8))(v261, v263);
LABEL_125:
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v356 = sub_22372AC98();
        __swift_project_value_buffer(v356, qword_28132B680);
        v357 = v400;
        v358 = v163;
        v359 = v390;
        (v390)(v400, v358, v403);
        v360 = v438;

        v361 = sub_22372AC88();
        v362 = sub_22372B268();

        if (os_log_type_enabled(v361, v362))
        {
          v363 = swift_slowAlloc();
          v431 = swift_slowAlloc();
          v441 = v431;
          *v363 = 136315394;
          v364 = v403;
          v359(v401, v357, v403);
          v365 = sub_22372B038();
          v367 = v366;
          v368 = *(v396 + 8);
          v368(v357, v364);
          v369 = sub_223623274(v365, v367, &v441);

          *(v363 + 4) = v369;
          *(v363 + 12) = 2080;
          v370 = sub_223623274(v397, v360, &v441);

          *(v363 + 14) = v370;
          _os_log_impl(&dword_223620000, v361, v362, "Received NLRoutingDecisionMessage with no rewrite decision: %s for trpCandidateId=%s. Reusing eager child request.", v363, 0x16u);
          v371 = v431;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v371, -1, -1);
          MEMORY[0x223DE8A80](v363, -1, -1);
        }

        else
        {

          v368 = *(v396 + 8);
          v368(v357, v403);
        }

        v372 = v439;
        sub_2236D7F74(v436);
        v195 = v372;
        v190 = v392;
        v153 = v422;
        v373 = v417;
        v374 = v419;
        v375 = v418;
        if (!v372)
        {
          (*(v419 + 1))(v418, v417);
          v197 = v437;
          v163 = v395;
          goto LABEL_134;
        }

        (*(v374 + 1))(v375, v373);
        (*(v405 + 8))(v388, v190);
        v368(v395, v403);
        goto LABEL_148;
      }

      (*(v262 + 96))(v261, v263);
      v266 = v407;
      v267 = v406;
      v268 = v408;
      (*(v407 + 32))(v406, v261, v408);
      v269 = sub_223729F38();
      v271 = v316;
      v272 = sub_223729F28();
    }

    v431 = v272;
    v317 = v273;
    (*(v266 + 8))(v267, v268);
    v318 = v416;
    if (v271)
    {

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v438 = v269;
      v319 = sub_22372AC98();
      __swift_project_value_buffer(v319, qword_28132B680);
      v320 = sub_22372AC88();
      v321 = sub_22372B268();
      if (os_log_type_enabled(v320, v321))
      {
        v322 = swift_slowAlloc();
        *v322 = 0;
        _os_log_impl(&dword_223620000, v320, v321, "Received NLRoutingDecisionMessage with Ajax. Creating 1 new child request", v322, 2u);
        MEMORY[0x223DE8A80](v322, -1, -1);
      }

      (*(v419 + 2))(v318, v418, v260);
      v323 = v409;
      swift_storeEnumTagMultiPayload();
      v324 = v420;
      sub_2237273F8();
      v430 = sub_2237273B8();
      v429 = v325;
      v326 = *(v405 + 8);
      v327 = v324;
      v328 = v392;
      v428 = (v405 + 8);
      v427 = v326;
      v326(v327, v392);
      (v434)(v423, v388, v328);
      v329 = type metadata accessor for RequestInfo.UserQuery(0);
      v330 = *(v329 + 28);
      v331 = sub_223728858();
      v332 = v318;
      v333 = v421;
      (*(*(v331 - 8) + 56))(&v421[v330], 1, 1, v331);
      v334 = *(v329 + 32);
      v335 = sub_2237287E8();
      (*(*(v335 - 8) + 56))(&v333[v334], 1, 1, v335);
      v336 = v393;
      *v333 = v389;
      *(v333 + 1) = v336;
      *(v333 + 2) = v438;
      *(v333 + 3) = v271;
      *(v333 + 4) = v431;
      *(v333 + 5) = v317;
      (*(*(v329 - 8) + 56))(v333, 0, 1, v329);
      (*(v432 + 16))(v424, v436, v433);
      v337 = v398;
      sub_2236397B0(v332, v398, type metadata accessor for IntelligenceFlowPrescribedTool);
      (*(v394 + 56))(v337, 0, 1, v323);
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
      (*(*(v338 - 8) + 56))(v337, 0, 1, v338);
      (v390)(v401, v163, v403);
      v339 = sub_223729D68();
      (*(*(v339 - 8) + 56))(v425, 1, 1, v339);
      type metadata accessor for RequestInfo(0);
      v340 = swift_allocObject();
      v341 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
      v342 = MEMORY[0x277D84F90];
      *(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
      v343 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
      *(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v342;
      v344 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
      v345 = sub_22372A098();
      v346 = *(*(v345 - 8) + 56);
      v346(v340 + v344, 1, 1, v345);
      v346(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v345);
      v347 = v392;
      v348 = v429;
      *(v340 + 16) = v430;
      *(v340 + 24) = v348;
      (*(v405 + 32))(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v423, v347);
      sub_223639818(v333, v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
      (*(v432 + 32))(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v424, v433);
      swift_beginAccess();
      v349 = MEMORY[0x277D84F90];
      *(v340 + v341) = MEMORY[0x277D84F90];
      swift_beginAccess();
      *(v340 + v343) = v349;
      sub_223639818(v337, v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
      v350 = v396;
      (*(v396 + 32))(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v401, v403);
      v351 = v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
      *v351 = 0;
      *(v351 + 8) = 1;
      v352 = v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
      *v352 = 0;
      *(v352 + 8) = 1;
      *(v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
      sub_2236EA450(v425, v340 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
      v353 = swift_allocObject();
      *(v353 + 16) = xmmword_22372FCE0;
      *(v353 + 32) = v340;

      v354 = v439;
      sub_2236D9818(v353);
      v195 = v354;
      if (!v354)
      {

        sub_22363B214(v416, type metadata accessor for IntelligenceFlowPrescribedTool);
        (*(v419 + 1))(v418, v417);
        v197 = v437;
        v190 = v347;
        goto LABEL_79;
      }

      sub_22363B214(v416, type metadata accessor for IntelligenceFlowPrescribedTool);
      (*(v419 + 1))(v418, v417);
      v427(v388, v347);
      (*(v350 + 8))(v395, v403);
      goto LABEL_148;
    }

    goto LABEL_125;
  }

  if (qword_281328E58 != -1)
  {
LABEL_152:
    swift_once();
  }

  v186 = sub_22372AC98();
  __swift_project_value_buffer(v186, qword_28132B680);
  v187 = sub_22372AC88();
  v188 = sub_22372B278();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    *v189 = 0;
    _os_log_impl(&dword_223620000, v187, v188, "BUG: We did not start an eager child request at this point", v189, 2u);
    MEMORY[0x223DE8A80](v189, -1, -1);
  }

  (*(v396 + 8))(v130, v403);
}

uint64_t sub_2236D6E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v112 = a6;
  v111 = a5;
  v124 = a4;
  v110 = a3;
  v116 = a2;
  v115 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v127 = &v103 - v8;
  v126 = sub_22372A548();
  v114 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v9);
  v125 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v113 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_223727408();
  v123 = *(v117 - 8);
  v15 = MEMORY[0x28223BE20](v117, v14);
  v122 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v109 = &v103 - v18;
  v106 = sub_223728878();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v19);
  v103 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_223728898();
  v21 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v22);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_223728828();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_223728838();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2237287C8();
  v119 = *(v129 - 8);
  v36 = MEMORY[0x28223BE20](v129, v35);
  v121 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v118 = &v103 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = &v103 - v42;
  v44 = type metadata accessor for RequestInfo.RequestRoute(0);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v120 = &v103 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v128 = &v103 - v49;
  (*(v31 + 16))(v34, v116, v30);
  v50 = (*(v31 + 88))(v34, v30);
  if (v50 == *MEMORY[0x277D5CBC0])
  {
    (*(v31 + 96))(v34, v30);
    (*(v26 + 32))(v29, v34, v25);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
    (*(*(v51 - 8) + 56))(v128, 1, 1, v51);
    v107 = sub_223728818();
    v53 = v52;
    v106 = sub_223728808();
    v55 = v54;
    v56 = v43;
    sub_2237287F8();
    (*(v26 + 8))(v29, v25);
    v57 = v53;
    v58 = MEMORY[0x277D5CB80];
  }

  else
  {
    v59 = v128;
    if (v50 == *MEMORY[0x277D5CBD0])
    {
      (*(v31 + 96))(v34, v30);
      v60 = v108;
      (*(v21 + 32))(v24, v34, v108);
      v61 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
      (*(*(v61 - 8) + 56))(v59, 1, 1, v61);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
      (*(*(v62 - 8) + 56))(v59, 0, 1, v62);
      v107 = sub_223728888();
      v57 = v63;
      (*(v21 + 8))(v24, v60);
      v64 = sub_2237287E8();
      v56 = v43;
      (*(*(v64 - 8) + 56))(v43, 1, 1, v64);
      v106 = 0;
      v55 = 0;
      v58 = MEMORY[0x277D5CBA0];
    }

    else
    {
      if (v50 != *MEMORY[0x277D5CBC8])
      {
        type metadata accessor for RequestControllerBridgeInternalErrors(0);
        sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v102 = *(v31 + 8);
        v88 = v31 + 8;
        v102(v34, v30);
        return v88;
      }

      (*(v31 + 96))(v34, v30);
      v65 = v104;
      v66 = v103;
      v67 = v106;
      (*(v104 + 32))(v103, v34, v106);
      v68 = *MEMORY[0x277D5CC50];
      v69 = sub_223728E18();
      (*(*(v69 - 8) + 104))(v59, v68, v69);
      v70 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v70 - 8) + 56))(v59, 0, 1, v70);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
      (*(*(v71 - 8) + 56))(v59, 0, 1, v71);
      v107 = sub_223728868();
      v57 = v72;
      (*(v65 + 8))(v66, v67);
      v73 = sub_2237287E8();
      (*(*(v73 - 8) + 56))(v43, 1, 1, v73);
      v106 = 0;
      v55 = 0;
      v58 = MEMORY[0x277D5CB98];
      v56 = v43;
    }
  }

  v105 = v56;
  v74 = v118;
  v75 = v119;
  (*(v119 + 104))(v118, *v58, v129);
  v76 = v109;
  sub_2237273F8();
  v116 = sub_2237273B8();
  v108 = v77;
  (*(v123 + 8))(v76, v117);
  sub_2237273F8();
  v78 = type metadata accessor for RequestInfo.UserQuery(0);
  v79 = *(v78 + 28);
  v80 = sub_223728858();
  v81 = v113;
  (*(*(v80 - 8) + 56))(v113 + v79, 1, 1, v80);
  sub_223634890(v56, v81 + *(v78 + 32), &qword_27D08F730, &unk_223731DB0);
  v82 = v124;
  *v81 = v110;
  v81[1] = v82;
  v81[2] = v107;
  v81[3] = v57;
  v81[4] = v106;
  v81[5] = v55;
  (*(*(v78 - 8) + 56))(v81, 0, 1, v78);
  v83 = v114;
  (*(v114 + 16))(v125, v111, v126);
  v84 = v128;
  sub_2236397B0(v128, v120, type metadata accessor for RequestInfo.RequestRoute);
  v85 = v75;
  v86 = v129;
  (*(v75 + 16))(v121, v74, v129);
  v112 = *(v112 + 16);
  v87 = sub_223729D68();
  (*(*(v87 - 8) + 56))(v127, 1, 1, v87);
  type metadata accessor for RequestInfo(0);
  v88 = swift_allocObject();
  v89 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  v90 = MEMORY[0x277D84F90];
  *(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
  v91 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  v92 = *(v85 + 8);

  v92(v118, v86);
  sub_223626478(v105, &qword_27D08F730, &unk_223731DB0);
  sub_22363B214(v84, type metadata accessor for RequestInfo.RequestRoute);
  *(v88 + v91) = v90;
  v93 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  v94 = sub_22372A098();
  v95 = *(*(v94 - 8) + 56);
  v95(v88 + v93, 1, 1, v94);
  v95(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v94);
  v96 = v117;
  v97 = v108;
  *(v88 + 16) = v116;
  *(v88 + 24) = v97;
  (*(v123 + 32))(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v122, v96);
  sub_223639818(v81, v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  (*(v83 + 32))(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v125, v126);
  swift_beginAccess();
  v98 = MEMORY[0x277D84F90];
  *(v88 + v89) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v88 + v91) = v98;
  sub_223639818(v120, v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  (*(v119 + 32))(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v121, v129);
  v99 = v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
  *v99 = v115;
  *(v99 + 8) = 0;
  v100 = v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
  *v100 = v112;
  *(v100 + 8) = 0;
  *(v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
  sub_2236EA450(v127, v88 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
  return v88;
}

uint64_t sub_2236D7D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + qword_28132A1E8);
  v12 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId;
  v13 = sub_22372A548();
  v14 = *(v13 - 8);
  result = (*(v14 + 16))(a3, v11 + v12, v13);
  if (*(v3 + qword_28132A1F8) == 1)
  {
    v16 = *(v3 + qword_28132A208);
    result = swift_beginAccess();
    v17 = *(v16 + 48);
    if (*(v17 + 16))
    {

      v18 = sub_2236261A0(a1, a2);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        (*(v14 + 8))(a3, v13);
        v21 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        sub_2236397B0(v20 + v21, v10, type metadata accessor for MUXUserAttributes);

        return (*(v14 + 32))(a3, v10, v13);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_2236D7F74(uint64_t a1)
{
  v3 = v1;
  v117 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v5 = MEMORY[0x28223BE20](v110, v4);
  v109 = v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v111 = v105 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = v105 - v11;
  v13 = sub_22372A3C8();
  v113 = *(v13 - 8);
  v114 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v112 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2237287C8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v3 + qword_28132B8C0);
  if (!v29)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v77 = sub_22372AC98();
    __swift_project_value_buffer(v77, qword_28132B680);
    v78 = sub_22372AC88();
    v79 = sub_22372B278();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_223620000, v78, v79, "Cannot commit eager child request: no eager child request is active", v80, 2u);
      MEMORY[0x223DE8A80](v80, -1, -1);
    }

    goto LABEL_36;
  }

  v108 = v12;
  v30 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  (*(v21 + 16))(v24, v29 + v30, v20);

  sub_2236EF8D8(v24, v28);
  v31 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route;
  swift_beginAccess();
  sub_2236EA3D0(v28, v29 + v31, type metadata accessor for RequestInfo.RequestRoute);
  swift_endAccess();
  v32 = *(v3 + qword_28132B868 + 8);
  if (!v32)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v81 = sub_22372AC98();
    __swift_project_value_buffer(v81, qword_28132B680);
    v78 = sub_22372AC88();
    v82 = sub_22372B278();
    if (!os_log_type_enabled(v78, v82))
    {
      goto LABEL_35;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "Cannot commit eager child request: no selectedTrpId";
    goto LABEL_34;
  }

  v106 = *(v3 + qword_28132B868);
  v107 = v32;

  v33 = sub_2236D9380();
  v35 = v34;
  v36 = v2;
  if (!v34)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v37 = sub_22372AC98();
    __swift_project_value_buffer(v37, qword_28132B680);
    v38 = sub_22372AC88();
    v39 = sub_22372B278();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_223620000, v38, v39, "Could not find final utterance, RequestSummary for this request will not have the utterance.", v40, 2u);
      v41 = v40;
      v36 = v2;
      MEMORY[0x223DE8A80](v41, -1, -1);
    }
  }

  v42 = type metadata accessor for RequestInfo.UserQuery(0);
  v43 = *(v42 + 28);
  v44 = sub_223728858();
  (*(*(v44 - 8) + 56))(&v19[v43], 1, 1, v44);
  v45 = *(v42 + 32);
  v46 = sub_2237287E8();
  (*(*(v46 - 8) + 56))(&v19[v45], 1, 1, v46);
  *v19 = v33;
  *(v19 + 1) = v35;
  *(v19 + 2) = v33;
  *(v19 + 3) = v35;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  (*(*(v42 - 8) + 56))(v19, 0, 1, v42);
  v47 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();

  sub_2236EA3D0(v19, v29 + v47, type metadata accessor for RequestInfo.UserInput);
  swift_endAccess();
  sub_223630E28(v29);
  v48 = *(v29 + 16);
  v49 = *(v29 + 24);
  v50 = qword_28132B848;
  swift_beginAccess();
  if (!*(*(v3 + v50) + 16))
  {
LABEL_30:

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v85 = sub_22372AC98();
    __swift_project_value_buffer(v85, qword_28132B680);
    v78 = sub_22372AC88();
    v82 = sub_22372B278();
    if (!os_log_type_enabled(v78, v82))
    {
      goto LABEL_35;
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = "Cannot commit eager child request: no request controller is found for the active eager child request";
LABEL_34:
    _os_log_impl(&dword_223620000, v78, v82, v84, v83, 2u);
    MEMORY[0x223DE8A80](v83, -1, -1);
LABEL_35:

LABEL_36:

    return;
  }

  sub_2236261A0(v48, v49);
  v51 = v107;
  if ((v52 & 1) == 0)
  {

    goto LABEL_30;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v53 = sub_22372AC98();
  v54 = __swift_project_value_buffer(v53, qword_28132B680);

  v105[0] = v54;
  v55 = sub_22372AC88();
  v56 = sub_22372B268();

  v57 = os_log_type_enabled(v55, v56);
  v105[1] = v36;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v115[0] = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_223623274(v106, v51, v115);
    _os_log_impl(&dword_223620000, v55, v56, "Committing eager child request with selectedTrpId %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x223DE8A80](v59, -1, -1);
    MEMORY[0x223DE8A80](v58, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v3 + qword_28132A1A0), *(v3 + qword_28132A1A0 + 24));
  v60 = sub_22372A548();
  v116 = v60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
  (*(*(v60 - 8) + 16))(boxed_opaque_existential_1, v117, v60);
  v62 = v112;
  v63 = v113;
  v64 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x277D5D1C0], v114);
  sub_22372A4B8();
  (*(v63 + 8))(v62, v64);
  sub_223626478(v115, &unk_27D08F750, &qword_22372C960);
  v65 = qword_28132B888;
  swift_beginAccess();
  v66 = v108;
  sub_223634890(v3 + v65, v108, &qword_27D08E9D0, &qword_22372D1E0);
  v67 = sub_223729F08();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v66, 1, v67) != 1)
  {
    v86 = v111;
    sub_223634890(v66, v111, &qword_27D08E9D0, &qword_22372D1E0);
    v87 = (*(v68 + 88))(v86, v67);
    if (v87 == *MEMORY[0x277D5CF40])
    {
      MEMORY[0x28223BE20](v87, v88);
      v89 = v106;
      v105[-4] = v3;
      v105[-3] = v89;
      v105[-2] = v51;
      v105[-1] = v29;
      v90 = objc_allocWithZone(sub_223729B68());
      v91 = sub_223729AE8();

      if (!v91)
      {

        v92 = sub_22372AC88();
        v93 = sub_22372B278();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v115[0] = v95;
          *v94 = 136315138;
          v96 = *(v29 + 16);
          v97 = *(v29 + 24);

          v98 = sub_223623274(v96, v97, v115);

          *(v94 + 4) = v98;
          v99 = "Could not create StoppedListeningForSpeechContinuationMessage for requestId: %s. Missing fields?";
LABEL_47:
          _os_log_impl(&dword_223620000, v92, v93, v99, v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          MEMORY[0x223DE8A80](v95, -1, -1);
          MEMORY[0x223DE8A80](v94, -1, -1);
          goto LABEL_48;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v87 != *MEMORY[0x277D5CF28])
      {

        (*(v68 + 8))(v86, v67);
        goto LABEL_17;
      }

      MEMORY[0x28223BE20](v87, v88);
      v100 = v106;
      v105[-4] = v3;
      v105[-3] = v100;
      v105[-2] = v51;
      v105[-1] = v29;
      v101 = objc_allocWithZone(sub_223729AB8());
      v91 = sub_223729A58();

      if (!v91)
      {

        v92 = sub_22372AC88();
        v93 = sub_22372B278();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v115[0] = v95;
          *v94 = 136315138;
          v102 = *(v29 + 16);
          v103 = *(v29 + 24);

          v104 = sub_223623274(v102, v103, v115);

          *(v94 + 4) = v104;
          v99 = "Could not create StoppedListeningForTextContinuationMessage for requestId: %s. Missing fields?";
          goto LABEL_47;
        }

LABEL_48:

        sub_223626478(v108, &qword_27D08E9D0, &qword_22372D1E0);
        return;
      }
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v115, v116);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    sub_223626478(v108, &qword_27D08E9D0, &qword_22372D1E0);
    return;
  }

LABEL_17:

  v69 = sub_22372AC88();
  v70 = sub_22372B278();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v115[0] = v72;
    *v71 = 136315138;
    sub_223634890(v3 + v65, v109, &qword_27D08E9D0, &qword_22372D1E0);
    v73 = sub_22372B038();
    v75 = sub_223623274(v73, v74, v115);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_223620000, v69, v70, "Unknown request type %s, do not know how to fall back on eager", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x223DE8A80](v72, -1, -1);
    v76 = v71;
    v66 = v108;
    MEMORY[0x223DE8A80](v76, -1, -1);
  }

  sub_223626478(v66, &qword_27D08E9D0, &qword_22372D1E0);
}

uint64_t sub_2236D8E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F778, &qword_223731E08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v25 - v15;
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  sub_223729B18();
  sub_22372A728();
  sub_223729AF8();
  v20 = *MEMORY[0x277D5D280];
  v21 = sub_22372A4D8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v12, v20, v21);
  (*(v22 + 56))(v12, 0, 1, v21);
  sub_223729B08();

  sub_223729B28();

  sub_223729B38();
  sub_22372A778();
  v23 = sub_223727408();
  (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
  return sub_223729B48();
}

uint64_t sub_2236D9170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223729A78();
  sub_22372A728();
  sub_223729A68();

  sub_223729A88();

  sub_223729A98();
  sub_22372A778();
  v16 = sub_223727408();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  return sub_223729AA8();
}

id sub_2236D9380()
{
  v1 = sub_223729D78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = *(v0 + qword_28132B868 + 8);
  if (!v10)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B278();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223620000, v17, v18, "Could not find selectedTRPId, cannot get final utterance", v19, 2u);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    return 0;
  }

  v11 = *(v0 + qword_28132B868);
  v12 = qword_28132B850;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_2236261A0(v11, v10);
    if (v15)
    {
      (*(v2 + 16))(v9, *(v13 + 56) + *(v2 + 72) * v14, v1);

      (*(v2 + 56))(v9, 0, 1, v1);
    }

    else
    {

      (*(v2 + 56))(v9, 1, 1, v1);
    }
  }

  else
  {
    (*(v2 + 56))(v9, 1, 1, v1);
  }

  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_223626478(v9, &qword_27D08F770, &qword_223731DE0);
LABEL_14:
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_28132B680);

    v21 = sub_22372AC88();
    v22 = sub_22372B278();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      v25 = sub_223623274(v11, v10, &v30);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_223620000, v21, v22, "Could not find utterance for selectedTRP = %s, this is an error.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x223DE8A80](v24, -1, -1);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  (*(v2 + 16))(v5, v9, v1);
  sub_223626478(v9, &qword_27D08F770, &qword_223731DE0);
  v27 = sub_2236EF704();
  v29 = v28;
  (*(v2 + 8))(v5, v1);
  if (!v29)
  {
    goto LABEL_14;
  }

  return v27;
}

void sub_2236D9818(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  v47[6] = __swift_project_value_buffer(v6, qword_28132B680);
  v7 = sub_22372AC88();
  v8 = sub_22372B268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223620000, v7, v8, "Removing eager child request from childRequests, as NLRouter has rewritten this request.", v9, 2u);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v10 = qword_28132B870;
  swift_beginAccess();
  sub_2236D9F5C();
  swift_endAccess();

  v13 = *(v4 + qword_28132B8C0);
  if (v13)
  {
    MEMORY[0x28223BE20](v11, v12);
    v14 = objc_allocWithZone(sub_223728188());

    v15 = sub_223728118();
    if (!v15)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v17 = 0xD000000000000014;
      v17[1] = 0x8000000223736AD0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_35;
    }

    v16 = v15;
    sub_2236DC8B8(v15, sub_2236CFED0, 0);
    if (v2)
    {

      return;
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    sub_2236E672C(v13 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId);
  }

  v18 = sub_22372AC88();
  LOBYTE(v19) = sub_22372B268();
  v20 = a1 >> 62;
  v45 = v4;
  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_16;
  }

  v21 = swift_slowAlloc();
  *v21 = 134217984;
  if (v20)
  {
    goto LABEL_43;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v21 + 4) = v22;

    _os_log_impl(&dword_223620000, v18, v19, "Spawning %ld synthesized child requests", v21, 0xCu);
    MEMORY[0x223DE8A80](v21, -1, -1);

LABEL_16:
    v43 = v10;
    v21 = v20 ? sub_22372B558() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v3;
    v46 = a1;
    if (v21)
    {
      break;
    }

LABEL_29:
    v47[0] = v46;

    v19 = v47;
    sub_22363AFB8(v41);
    *(v43 + v4) = v47[0];

    v18 = *(v43 + v4);
    if (v18 >> 62)
    {
      v3 = v44;
      if (!sub_22372B558())
      {
        return;
      }
    }

    else
    {
      v3 = v44;
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_41;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v18 + 32);

      goto LABEL_34;
    }

    __break(1u);
LABEL_43:
    v22 = sub_22372B558();
    v4 = v45;
  }

  if (v21 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      a1 = 0;
      do
      {
        v24 = MEMORY[0x223DE7ED0](a1, v46);
        v25 = sub_22372AC88();
        v10 = sub_22372B268();
        if (os_log_type_enabled(v25, v10))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v47[0] = v27;
          *v26 = 136315138;
          v28 = *(v24 + 16);
          v29 = *(v24 + 24);

          v30 = sub_223623274(v28, v29, v47);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_223620000, v25, v10, "Allocating new child request: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          v31 = v27;
          v4 = v45;
          MEMORY[0x223DE8A80](v31, -1, -1);
          MEMORY[0x223DE8A80](v26, -1, -1);
        }

        ++a1;
        v23 = *(v24 + 16);
        v20 = *(v24 + 24);

        sub_2236402A0(v23, v20);
        swift_unknownObjectRelease();
      }

      while (v21 != a1);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v34 = *v10;

        v35 = sub_22372AC88();
        v36 = sub_22372B268();
        if (os_log_type_enabled(v35, v36))
        {
          v20 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v47[0] = v37;
          *v20 = 136315138;
          v38 = *(v34 + 16);
          v39 = *(v34 + 24);

          a1 = sub_223623274(v38, v39, v47);

          *(v20 + 4) = a1;
          _os_log_impl(&dword_223620000, v35, v36, "Allocating new child request: %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          v40 = v37;
          v4 = v45;
          MEMORY[0x223DE8A80](v40, -1, -1);
          MEMORY[0x223DE8A80](v20, -1, -1);
        }

        v33 = *(v34 + 16);
        v32 = *(v34 + 24);

        sub_2236402A0(v33, v32);

        ++v10;
        --v21;
      }

      while (v21);
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_41:

  v42 = MEMORY[0x223DE7ED0](0, v18);

LABEL_34:
  sub_2236DA034(v42);
LABEL_35:
}

void sub_2236D9F5C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_22372B558())
  {
    if (sub_22372B558())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x223DE7ED0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_22372B558();
LABEL_13:
      if (v3)
      {
        sub_2236EA090(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_2236DA034(uint64_t a1)
{
  v3 = v1;
  v215 = a1;
  v4 = sub_22372A3C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v187 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_223729728();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198, v8);
  v195 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v196 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v193 = &v185 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v194 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v201 = &v185 - v21;
  v200 = sub_223729D78();
  v199 = *(v200 - 8);
  v23 = MEMORY[0x28223BE20](v200, v22);
  v188 = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v202 = (&v185 - v26);
  v208 = type metadata accessor for RequestInfo.UserQuery(0);
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v27);
  v204 = &v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RequestInfo.UserInput(0);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v192 = &v185 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v190 = &v185 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v189 = &v185 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v191 = &v185 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v206 = &v185 - v43;
  v212 = sub_223727408();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v44);
  v210 = &v185 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_223729F08();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v48);
  v205 = &v185 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v185 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v213 = &v185 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56, v58);
  v60 = &v185 - v59;
  v218 = *(v3 + qword_28132B868 + 8);
  if (!v218)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v68 = sub_22372AC98();
    __swift_project_value_buffer(v68, qword_28132B680);
    v69 = sub_22372AC88();
    v70 = sub_22372B278();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_59;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Cannot synthesize a child request without a selected TRPId from root request";
    goto LABEL_58;
  }

  v61 = v3;
  v185 = v5;
  v186 = v4;
  v214 = v2;
  v203 = *(v3 + qword_28132B868);
  v62 = qword_28132B888;
  v63 = v61;
  swift_beginAccess();
  (*(v47 + 104))(v60, *MEMORY[0x277D5CF40], v46);
  (*(v47 + 56))(v60, 0, 1, v46);
  v64 = *(v50 + 48);
  v209 = v63;
  sub_223634890(v63 + v62, v53, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v60, &v53[v64], &qword_27D08E9D0, &qword_22372D1E0);
  v65 = *(v47 + 48);
  if (v65(v53, 1, v46) == 1)
  {

    sub_223626478(v60, &qword_27D08E9D0, &qword_22372D1E0);
    if (v65(&v53[v64], 1, v46) == 1)
    {
      sub_223626478(v53, &qword_27D08E9D0, &qword_22372D1E0);
      v66 = v209;
      v67 = v215;
LABEL_16:
      v86 = qword_28132B840;
      swift_beginAccess();
      v75 = *(v66 + v86);
      v77 = v218;
      if (*(v75 + 16))
      {

        v78 = sub_2236261A0(v203, v77);
        if (v87)
        {
LABEL_18:
          v88 = (*(v75 + 56) + 16 * v78);
          v82 = v88[1];
          v209 = *v88;

          goto LABEL_19;
        }
      }

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v113 = sub_22372AC98();
      __swift_project_value_buffer(v113, qword_28132B680);
      v69 = sub_22372AC88();
      v70 = sub_22372B278();
      if (!os_log_type_enabled(v69, v70))
      {
LABEL_59:

        return;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Cannot synthesize a child request without a selected TCU ID for a speech request";
LABEL_58:
      _os_log_impl(&dword_223620000, v69, v70, v72, v71, 2u);
      MEMORY[0x223DE8A80](v71, -1, -1);
      goto LABEL_59;
    }

    goto LABEL_11;
  }

  v73 = v213;
  sub_223634890(v53, v213, &qword_27D08E9D0, &qword_22372D1E0);
  if (v65(&v53[v64], 1, v46) == 1)
  {

    sub_223626478(v60, &qword_27D08E9D0, &qword_22372D1E0);
    (*(v47 + 8))(v73, v46);
LABEL_11:
    sub_223626478(v53, &qword_27D08F740, &unk_223731DC0);
    v66 = v209;
    v67 = v215;
    goto LABEL_12;
  }

  v83 = v205;
  (*(v47 + 32))(v205, &v53[v64], v46);
  sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);

  v84 = sub_22372AFC8();
  v85 = *(v47 + 8);
  v85(v83, v46);
  sub_223626478(v60, &qword_27D08E9D0, &qword_22372D1E0);
  v85(v73, v46);
  sub_223626478(v53, &qword_27D08E9D0, &qword_22372D1E0);
  v66 = v209;
  v67 = v215;
  if (v84)
  {
    goto LABEL_16;
  }

LABEL_12:
  v74 = qword_28132B840;
  swift_beginAccess();
  v75 = *(v66 + v74);
  v76 = *(v75 + 16);

  v77 = v218;
  if (v76)
  {
    v78 = sub_2236261A0(v203, v218);
    if (v79)
    {
      goto LABEL_18;
    }
  }

  v80 = v210;
  sub_2237273F8();
  v209 = sub_2237273B8();
  v82 = v81;
  (*(v211 + 8))(v80, v212);
LABEL_19:

  v89 = qword_28132B870;
  swift_beginAccess();
  v90 = *(v66 + v89);
  if (v90 >> 62)
  {
    goto LABEL_91;
  }

  v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v92 = v214;
  if (v91 >= 2)
  {
    v213 = v82;
    v93 = *(v66 + v89);
    if (v93 >> 62)
    {
      v94 = sub_22372B558();
    }

    else
    {
      v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v93 & 0xC000000000000001;

    v89 = 0;
    while (1)
    {
      if (v94 == v89)
      {

        v89 = 0;
        v98 = 1;
        goto LABEL_43;
      }

      if (v77)
      {
        v82 = MEMORY[0x223DE7ED0](v89, v93);
      }

      else
      {
        if (v89 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v91 = sub_22372B558();
          goto LABEL_21;
        }

        v82 = *(v93 + 8 * v89 + 32);
      }

      if (*(v82 + 16) == *(v67 + 16) && *(v82 + 24) == *(v67 + 24))
      {

        goto LABEL_42;
      }

      v96 = sub_22372B6E8();

      if (v96)
      {

LABEL_42:
        v98 = 0;
LABEL_43:
        v92 = v214;
        v77 = v218;
        v82 = v213;
        goto LABEL_44;
      }

      if (__OFADD__(v89++, 1))
      {
        goto LABEL_90;
      }
    }
  }

  v89 = 0;
  v98 = 1;
LABEL_44:
  sub_2236E3FB4(v67, v89, v98);
  if (v92)
  {

    return;
  }

  v213 = v82;
  v99 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();
  v100 = v206;
  sub_2236397B0(v67 + v99, v206, type metadata accessor for RequestInfo.UserInput);
  v101 = *(v207 + 48);
  if (v101(v100, 1, v208) == 1 || (v102 = v100, v103 = v204, sub_223639818(v102, v204, type metadata accessor for RequestInfo.UserQuery), v104 = *(v103 + 24), v211 = *(v103 + 16), , sub_22363B214(v103, type metadata accessor for RequestInfo.UserQuery), !v104))
  {

    sub_2236EA17C();
    swift_allocError();
    *v112 = 0;
    *(v112 + 8) = 0;
    *(v112 + 16) = 2;
    swift_willThrow();
    return;
  }

  v105 = sub_2236F0954();
  v210 = v104;
  if (v105)
  {
    v106 = qword_28132B850;
    swift_beginAccess();
    v107 = *(v66 + v106);
    if (*(v107 + 16))
    {

      v108 = sub_2236261A0(v203, v77);
      if (v109)
      {
        v110 = v199;
        v111 = v200;
        (*(v199 + 16))(v188, *(v107 + 56) + *(v199 + 72) * v108, v200);

        (*(v110 + 32))(v202, v188, v111);
LABEL_75:
        v214 = *(v67 + 16);
        v212 = *(v67 + 24);
        v144 = v191;
        sub_2236397B0(v67 + v99, v191, type metadata accessor for RequestInfo.UserInput);
        v145 = v208;
        if (v101(v144, 1, v208) == 1)
        {
          v146 = sub_223728858();
          (*(*(v146 - 8) + 56))(v201, 1, 1, v146);
        }

        else
        {
          v147 = v144;
          v148 = v204;
          sub_223639818(v147, v204, type metadata accessor for RequestInfo.UserQuery);
          sub_223634890(v148 + *(v145 + 28), v201, &qword_27D08F738, &unk_2237324D0);
          sub_22363B214(v148, type metadata accessor for RequestInfo.UserQuery);
        }

        v149 = v189;
        sub_2236397B0(v215 + v99, v189, type metadata accessor for RequestInfo.UserInput);
        if (v101(v149, 1, v145) == 1)
        {
          v150 = sub_2237287E8();
          v151 = v193;
          (*(*(v150 - 8) + 56))(v193, 1, 1, v150);
        }

        else
        {
          v152 = v204;
          sub_223639818(v149, v204, type metadata accessor for RequestInfo.UserQuery);
          v153 = v152 + *(v145 + 32);
          v151 = v193;
          sub_223634890(v153, v193, &qword_27D08F730, &unk_223731DB0);
          sub_22363B214(v152, type metadata accessor for RequestInfo.UserQuery);
        }

        v154 = v213;
        v155 = v215 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId;
        v156 = v195;
        v157 = (*(v197 + 104))(v195, *MEMORY[0x277D5CCC8], v198);
        MEMORY[0x28223BE20](v157, v158);
        v159 = v214;
        *(&v185 - 16) = v66;
        *(&v185 - 15) = v159;
        v160 = v203;
        *(&v185 - 14) = v212;
        *(&v185 - 13) = v160;
        v161 = v209;
        *(&v185 - 12) = v218;
        *(&v185 - 11) = v161;
        *(&v185 - 10) = v154;
        *(&v185 - 9) = v155;
        v162 = v210;
        *(&v185 - 8) = v211;
        *(&v185 - 7) = v162;
        *(&v185 - 6) = v201;
        *(&v185 - 5) = v151;
        *(&v185 - 4) = v202;
        *(&v185 - 3) = v156;
        *(&v185 - 2) = v163;
        v164 = objc_allocWithZone(sub_223729818());
        v165 = sub_223729738();

        if (v165)
        {
          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(&v216, v217);
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(&v216);
          (*(v197 + 8))(v156, v198);
          sub_223626478(v151, &qword_27D08F730, &unk_223731DB0);
          sub_223626478(v201, &qword_27D08F738, &unk_2237324D0);
          (*(v199 + 8))(v202, v200);
          v77 = v218;
          goto LABEL_83;
        }

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v175 = sub_22372AC98();
        __swift_project_value_buffer(v175, qword_28132B680);
        v176 = sub_22372AC88();
        v177 = sub_22372B278();
        v178 = os_log_type_enabled(v176, v177);
        v179 = v198;
        v180 = v195;
        v181 = v201;
        if (v178)
        {
          v182 = swift_slowAlloc();
          *v182 = 0;
          _os_log_impl(&dword_223620000, v176, v177, "Could not construct RewrittenUtteranceCandidateMessage", v182, 2u);
          v183 = v182;
          v151 = v193;
          MEMORY[0x223DE8A80](v183, -1, -1);
        }

        type metadata accessor for RequestControllerBridgeInternalErrors(0);
        sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
        swift_allocError();
        *v184 = 0xD000000000000022;
        v184[1] = 0x8000000223737250;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v197 + 8))(v180, v179);
        sub_223626478(v151, &qword_27D08F730, &unk_223731DB0);
        sub_223626478(v181, &qword_27D08F738, &unk_2237324D0);
        (*(v199 + 8))(v202, v200);
        return;
      }
    }

    v143 = v202;
    *v202 = 0;
    v143[1] = 0xE000000000000000;
    (*(v199 + 104))();
    goto LABEL_75;
  }

  v214 = *(v67 + 16);
  v212 = *(v67 + 24);
  v114 = v190;
  sub_2236397B0(v67 + v99, v190, type metadata accessor for RequestInfo.UserInput);
  v115 = v208;
  if (v101(v114, 1, v208) == 1)
  {
    v116 = sub_223728858();
    v117 = v194;
    (*(*(v116 - 8) + 56))(v194, 1, 1, v116);
  }

  else
  {
    v118 = v114;
    v119 = v204;
    sub_223639818(v118, v204, type metadata accessor for RequestInfo.UserQuery);
    v117 = v194;
    sub_223634890(v119 + *(v115 + 28), v194, &qword_27D08F738, &unk_2237324D0);
    sub_22363B214(v119, type metadata accessor for RequestInfo.UserQuery);
  }

  v120 = v196;
  v121 = v215 + v99;
  v122 = v192;
  sub_2236397B0(v121, v192, type metadata accessor for RequestInfo.UserInput);
  if (v101(v122, 1, v115) == 1)
  {
    v123 = sub_2237287E8();
    v124 = (*(*(v123 - 8) + 56))(v120, 1, 1, v123);
  }

  else
  {
    v126 = v122;
    v127 = v204;
    sub_223639818(v126, v204, type metadata accessor for RequestInfo.UserQuery);
    sub_223634890(v127 + *(v115 + 32), v120, &qword_27D08F730, &unk_223731DB0);
    v124 = sub_22363B214(v127, type metadata accessor for RequestInfo.UserQuery);
  }

  v128 = v213;
  MEMORY[0x28223BE20](v124, v125);
  v129 = v214;
  *(&v185 - 12) = v66;
  *(&v185 - 11) = v129;
  v130 = v203;
  *(&v185 - 10) = v212;
  *(&v185 - 9) = v130;
  v131 = v209;
  *(&v185 - 8) = v77;
  *(&v185 - 7) = v131;
  *(&v185 - 6) = v128;
  *(&v185 - 5) = v132;
  v133 = v210;
  *(&v185 - 4) = v211;
  *(&v185 - 3) = v133;
  *(&v185 - 2) = v117;
  *(&v185 - 1) = v120;
  v134 = objc_allocWithZone(sub_223729078());
  v135 = sub_223728FC8();

  if (v135)
  {
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(&v216, v217);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(&v216);
    sub_223626478(v196, &qword_27D08F730, &unk_223731DB0);
    sub_223626478(v117, &qword_27D08F738, &unk_2237324D0);
LABEL_83:
    v166 = v203;
    sub_2236E631C(v214, v212, v203, v77);
    v167 = v77;
    v168 = v215;
    sub_2236E5DC8(v215, v166, v167);

    v169 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId;
    __swift_project_boxed_opaque_existential_1((v66 + qword_28132A1A0), *(v66 + qword_28132A1A0 + 24));
    v170 = sub_22372A548();
    v217 = v170;
    v171 = __swift_allocate_boxed_opaque_existential_1(&v216);
    (*(*(v170 - 8) + 16))(v171, v168 + v169, v170);
    v172 = v185;
    v173 = v187;
    v174 = v186;
    (*(v185 + 104))(v187, *MEMORY[0x277D5D1C0], v186);
    sub_22372A4B8();
    (*(v172 + 8))(v173, v174);
    sub_223626478(&v216, &unk_27D08F750, &qword_22372C960);
    sub_223630E28(v168);
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v136 = sub_22372AC98();
  __swift_project_value_buffer(v136, qword_28132B680);
  v137 = sub_22372AC88();
  v138 = sub_22372B278();
  v139 = os_log_type_enabled(v137, v138);
  v140 = v194;
  if (v139)
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&dword_223620000, v137, v138, "Could not construct TextBasedTRPCandidateMessage", v141, 2u);
    MEMORY[0x223DE8A80](v141, -1, -1);
  }

  type metadata accessor for RequestControllerBridgeInternalErrors(0);
  sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
  swift_allocError();
  *v142 = 0xD00000000000001CLL;
  v142[1] = 0x8000000223737230;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_223626478(v196, &qword_27D08F730, &unk_223731DB0);
  sub_223626478(v140, &qword_27D08F738, &unk_2237324D0);
}