uint64_t sub_2236A3EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - v14;
  v16 = *MEMORY[0x277D5CDE0];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_223729628();
  sub_223729D98();
  sub_223729608();
  sub_223729D58();
  v19 = sub_223727408();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  sub_223729658();
  sub_223729D38();
  sub_223729648();
  sub_2237290A8();
  sub_2237295F8();
  sub_223729958();
  sub_2237295E8();
  sub_223729968();
  sub_223729618();
  v20 = sub_22372A548();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a3, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  return sub_223729638();
}

void sub_2236A41A0(id a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = sub_22372AC98();
    __swift_project_value_buffer(v4, qword_27D097070);
    a1 = a1;
    v5 = sub_22372AC88();
    v6 = sub_22372B268();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = a1;
      *v8 = a1;
      v9 = a1;
      _os_log_impl(&dword_223620000, v5, v6, "MUXProcessor received message: %@", v7, 0xCu);
      sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v8, -1, -1);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    v10 = *(v2 + qword_27D097110);
    if (*(v10 + 40))
    {
      oslog = sub_22372AC88();
      v11 = sub_22372B278();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_223620000, oslog, v11, "selectedTopLevelCandidateId should be nil at this point.", v12, 2u);
        MEMORY[0x223DE8A80](v12, -1, -1);
      }

      return;
    }

    if (!*(v10 + 72))
    {
      v13 = sub_223728648();
      v14 = *(v10 + 72);
      *(v10 + 72) = v13;
    }

    v22 = sub_2237290A8();
    v23 = v15;
    v16 = sub_2236B4574(v22, v15);
    v17 = v16;
    if (!(v16 >> 62))
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_14;
    }

    v18 = sub_22372B558();
    if (!v18)
    {
      break;
    }

LABEL_14:
    v19 = 0;
    v2 = v17 & 0xFFFFFFFFFFFFFF8;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223DE7ED0](v19, v17);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }

LABEL_18:
      *(v20 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = sub_2237283B8() & 1;

      ++v19;
      if (v21 == v18)
      {
        goto LABEL_26;
      }
    }

    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_26:

  sub_2236A45C8(v22, v23);
}

unint64_t sub_2236A44C0(unint64_t result, uint64_t *a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DE7ED0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        sub_2236A9368(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_22372B558();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_2236A45C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_27D097070);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(a1, a2, v24);
    _os_log_impl(&dword_223620000, v7, v8, "Caching selectedTopLevelCandidateId: %s in RequestContext.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v11 = *(v3 + qword_27D097110);
  v11[4] = a1;
  v11[5] = a2;

  swift_beginAccess();
  v12 = v11[8];
  if (!*(v12 + 16))
  {
    goto LABEL_10;
  }

  v13 = sub_2236261A0(a1, a2);
  if ((v14 & 1) == 0)
  {

LABEL_10:

    v16 = sub_22372AC88();
    v17 = sub_22372B278();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_223623274(a1, a2, &v23);
      _os_log_impl(&dword_223620000, v16, v17, "No user was picked for selectedTopLevelCandidateId: %s. Cannot proceed.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    goto LABEL_19;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  if (*(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
  {
    v20 = sub_22372B6E8();

    if ((v20 & 1) == 0)
    {
      sub_2236A5E18(v15);

      return;
    }
  }

  else
  {
  }

  v16 = sub_22372AC88();
  v21 = sub_22372B278();
  if (os_log_type_enabled(v16, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_223620000, v16, v21, "Detected highly unusual state where ASR output seems to have been finalized before the ResultSelected/StoppedListeningForSpeechContinuation message arrived", v22, 2u);
    MEMORY[0x223DE8A80](v22, -1, -1);
  }

LABEL_19:
}

void sub_2236A49B0(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
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
    _os_log_impl(&dword_223620000, v6, v7, "MUXProcessor received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = sub_223729088();
  v13 = v12;
  v14 = *(v2 + qword_27D097110);
  swift_beginAccess();
  if (!*(*(v14 + 48) + 16))
  {
    goto LABEL_15;
  }

  sub_2236261A0(v11, v13);
  if ((v15 & 1) == 0)
  {

LABEL_15:

    v21 = sub_22372AC88();
    v22 = sub_22372B278();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      v25 = sub_223623274(v11, v13, &v26);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_223620000, v21, v22, "Couldn't find requestCandidateContext for rcId: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x223DE8A80](v24, -1, -1);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    else
    {
    }

    return;
  }

  type metadata accessor for MUXResultCandidateContext(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    goto LABEL_15;
  }

  v17 = v16;

  if (*(v17 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) == 1)
  {
    *(v17 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
    v18 = sub_22372AC88();
    v19 = sub_22372B268();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223620000, v18, v19, "serverUserSelectionPending was true. We need to commit.", v20, 2u);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    sub_2236A5E18(v17);
  }
}

void sub_2236A4D2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v97 = &v89[-v10];
  v11 = sub_22372A548();
  v98 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v95 = &v89[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v96 = &v89[-v17];
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v89[-v19];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v21 = sub_22372AC98();
  __swift_project_value_buffer(v21, qword_27D097070);
  v22 = a1;
  v23 = sub_22372AC88();
  v24 = sub_22372B268();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_223620000, v23, v24, "MUXProcessor received message: %@", v25, 0xCu);
    sub_223626478(v26, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  v28 = v2;
  v29 = *(v2 + qword_27D097110);
  if (!v29[5])
  {
    v94 = v28;
    v33 = sub_2237290A8();
    v35 = v34;

    v36 = sub_22372AC88();
    v37 = sub_22372B268();

    v38 = os_log_type_enabled(v36, v37);
    v93 = v7;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v92 = v11;
      v40 = v39;
      v41 = v20;
      v42 = swift_slowAlloc();
      v101[0] = v42;
      *v40 = 136315138;
      *(v40 + 4) = sub_223623274(v33, v35, v101);
      _os_log_impl(&dword_223620000, v36, v37, "Caching selectedTopLevelCandidateId: %s in RequestContext.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v43 = v42;
      v20 = v41;
      MEMORY[0x223DE8A80](v43, -1, -1);
      v44 = v40;
      v11 = v92;
      MEMORY[0x223DE8A80](v44, -1, -1);
    }

    v29[4] = v33;
    v29[5] = v35;

    swift_beginAccess();
    v45 = v29[6];
    if (*(v45 + 16))
    {

      v46 = sub_2236261A0(v33, v35);
      if (v47)
      {
        v48 = *(*(v45 + 56) + 8 * v46);

        type metadata accessor for MUXResultCandidateContext(0);
        if (swift_dynamicCastClass())
        {
          type metadata accessor for MUXTextBasedResultCandidateContext(0);
          v49 = swift_dynamicCastClass();
          if (v49)
          {
            v50 = v49;

            if (*(v50 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v50 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
            {
              v56 = sub_22372B6E8();

              if ((v56 & 1) == 0)
              {
                v57 = v97;
                sub_2237294C8();
                v58 = v98;
                if ((v98[6].isa)(v57, 1, v11) == 1)
                {

                  sub_223626478(v57, &unk_27D08E990, &qword_22372FCF0);
                }

                else
                {
                  isa = v58[4].isa;
                  isa(v20, v57, v11);
                  v63 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
                  swift_beginAccess();
                  v92 = v50;
                  v64 = v93;
                  sub_22368509C(v50 + v63, v93);

                  v65 = v48;
                  v66 = v96;
                  v91 = isa;
                  isa(v96, v64, v11);
                  sub_2236B12D0(qword_27D08EC10, MEMORY[0x277D5D298], MEMORY[0x277D5D2B0]);
                  LOBYTE(v64) = sub_22372AFC8();
                  v97 = v20;
                  v67 = v58;
                  v68 = v58[1].isa;
                  v68(v66, v11);
                  if ((v64 & 1) == 0)
                  {
                    v69 = v95;
                    (v67[2].isa)(v95, v97, v11);

                    v70 = sub_22372AC88();
                    v71 = sub_22372B278();

                    if (os_log_type_enabled(v70, v71))
                    {
                      v72 = swift_slowAlloc();
                      v98 = swift_slowAlloc();
                      v99 = v98;
                      *v72 = 136315394;
                      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
                      v94 = v65;
                      v90 = v71;
                      v73 = v70;
                      v74 = sub_22372B6B8();
                      v75 = v69;
                      v76 = v11;
                      v78 = v77;
                      v68(v75, v76);
                      v79 = sub_223623274(v74, v78, &v99);

                      *(v72 + 4) = v79;
                      *(v72 + 12) = 2080;
                      v80 = v93;
                      sub_22368509C(v92 + v63, v93);
                      v81 = v96;
                      v91(v96, v80, v76);
                      v82 = sub_22372B6B8();
                      v84 = v83;
                      v68(v81, v76);
                      v85 = sub_223623274(v82, v84, &v99);

                      *(v72 + 14) = v85;
                      _os_log_impl(&dword_223620000, v73, v90, "ExpectedSelectedUserId: %s is not equal to userId of selected RCContext: %s . May be the source sent incorrect expectedSelectedUserId?", v72, 0x16u);
                      v86 = v98;
                      swift_arrayDestroy();
                      MEMORY[0x223DE8A80](v86, -1, -1);
                      MEMORY[0x223DE8A80](v72, -1, -1);

                      v87 = v97;
                      v88 = v76;
                    }

                    else
                    {

                      v68(v69, v11);
                      v87 = v97;
                      v88 = v11;
                    }

                    v68(v87, v88);
                    return;
                  }

                  v68(v97, v11);
                  v50 = v92;
                }

                sub_2236A5E18(v50);
LABEL_37:

                return;
              }
            }

            else
            {
            }

            v59 = sub_22372AC88();
            v60 = sub_22372B278();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              *v61 = 0;
              _os_log_impl(&dword_223620000, v59, v60, "Detected highly unusual state where text based RC seems to have been finalized before the ResultSelected message arrived,", v61, 2u);
              MEMORY[0x223DE8A80](v61, -1, -1);
            }

            goto LABEL_37;
          }
        }
      }

      else
      {
      }
    }

    v51 = sub_22372AC88();
    v52 = sub_22372B278();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v100[0] = v54;
      *v53 = 136315138;
      v55 = sub_223623274(v33, v35, v100);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_223620000, v51, v52, "Unable to find MUXTextBasedResultCandidateContext for rcID: %s. Cannot post ResultSelectedMessage.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x223DE8A80](v54, -1, -1);
      MEMORY[0x223DE8A80](v53, -1, -1);
    }

    else
    {
    }

    return;
  }

  v98 = sub_22372AC88();
  v30 = sub_22372B278();
  if (os_log_type_enabled(v98, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_223620000, v98, v30, "selectedTopLevelCandidateId should be nil at this point.", v31, 2u);
    MEMORY[0x223DE8A80](v31, -1, -1);
  }

  v32 = v98;
}

void sub_2236A584C(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
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
    _os_log_impl(&dword_223620000, v6, v7, "MUXProcessor received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v2 + qword_27D097110);
  if (!v11[5])
  {
    v14 = sub_2237290A8();
    v16 = v15;

    v17 = sub_22372AC88();
    v18 = sub_22372B268();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(v14, v16, v35);
      _os_log_impl(&dword_223620000, v17, v18, "Caching selectedTopLevelCandidateId: %s in RequestContext.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v11[4] = v14;
    v11[5] = v16;

    swift_beginAccess();
    if (*(v11[6] + 16))
    {

      sub_2236261A0(v14, v16);
      if (v21)
      {

        type metadata accessor for MUXResultCandidateContext(0);
        if (swift_dynamicCastClass())
        {
          type metadata accessor for MUXDirectActionResultCandidateContext(0);
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;

            if (*(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
            {
              v29 = sub_22372B6E8();

              if ((v29 & 1) == 0)
              {
                sub_2236A5E18(v23);
LABEL_32:

                return;
              }
            }

            else
            {
            }

            v30 = sub_22372AC88();
            v31 = sub_22372B278();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              *v32 = 0;
              _os_log_impl(&dword_223620000, v30, v31, "Detected highly unusual state where direct action based RC seems to have been finalized before the ResultSelected message arrived,", v32, 2u);
              MEMORY[0x223DE8A80](v32, -1, -1);
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
      }
    }

    v24 = sub_22372AC88();
    v25 = sub_22372B278();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = sub_223623274(v14, v16, &v34);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_223620000, v24, v25, "Unable to find MUXDirectActionResultCandidateContext for rcID: %s. Cannot post ResultSelectedMessage.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  oslog = sub_22372AC88();
  v12 = sub_22372B278();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_223620000, oslog, v12, "selectedTopLevelCandidateId should be nil at this point.", v13, 2u);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }
}

void sub_2236A5E18(uint64_t a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v77 = v8;
    *v7 = 136315138;
    v9 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v10 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v11 = sub_223623274(v9, v10, &v77);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_223620000, v5, v6, "Attempting MUX commit logic for userLevelCandidateId: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) > 2u)
  {

    goto LABEL_18;
  }

  v13 = sub_22372B6E8();

  if (v13)
  {
LABEL_18:

    log = sub_22372AC88();
    v29 = sub_22372B268();

    if (!os_log_type_enabled(log, v29))
    {
      goto LABEL_51;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136315138;
    v32 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v33 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v34 = *(v32 + 8);

    v35 = sub_223623274(v33, v34, &v77);

    *(v30 + 4) = v35;
    v36 = "Cannot commit for userLevelCandidateId  %s because candidateState has already been finalized, no further action needed.";
    goto LABEL_20;
  }

  v14 = *(v2 + qword_27D097110);
  v15 = *(v14 + 40);
  if (!v15)
  {

    log = sub_22372AC88();
    v29 = sub_22372B268();

    if (!os_log_type_enabled(log, v29))
    {
      goto LABEL_51;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136315138;
    v38 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v39 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v40 = *(v38 + 8);

    v41 = sub_223623274(v39, v40, &v77);

    *(v30 + 4) = v41;
    v36 = "Cannot commit for userLevelCandidateId  %s because endpoint signal does not seem to have arrived.";
    goto LABEL_20;
  }

  v16 = *(v14 + 32);
  v17 = (a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v18 = v16 == *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId) && v15 == *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  if (!v18 && (sub_22372B6E8() & 1) == 0)
  {

    log = sub_22372AC88();
    v42 = sub_22372B288();

    if (os_log_type_enabled(log, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315650;
      v45 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v46 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v47 = *(v45 + 8);

      v48 = sub_223623274(v46, v47, &v77);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = *v17;
      v50 = v17[1];

      v51 = sub_223623274(v49, v50, &v77);

      *(v43 + 14) = v51;
      *(v43 + 22) = 2080;
      v52 = sub_223623274(v16, v15, &v77);

      *(v43 + 24) = v52;
      _os_log_impl(&dword_223620000, log, v42, "Cannot commit for userLevelCandidateId  %s because given Candidate's topLevelCandidateId: %s and selectedTopLevelCandidateId :%s do not match.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v44, -1, -1);
      v37 = v43;
      goto LABEL_21;
    }

    goto LABEL_51;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) != 1)
  {
    if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
    {
      if (*(a1 + v12) == 2)
      {

        goto LABEL_41;
      }

      v65 = sub_22372B6E8();

      if (v65)
      {
LABEL_41:
        if (sub_2236AA67C(a1))
        {
          type metadata accessor for MUXResultCandidateContext(0);
          v66 = swift_dynamicCastClass();
          if (v66)
          {
            sub_2236A6948(v66);
          }

          goto LABEL_44;
        }

        log = sub_22372AC88();
        v29 = sub_22372B278();

        if (os_log_type_enabled(log, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v77 = v31;
          *v30 = 136315138;
          v71 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
          v72 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
          v73 = *(v71 + 8);

          v74 = sub_223623274(v72, v73, &v77);

          *(v30 + 4) = v74;
          v36 = "Cannot commit for userLevelCandidateId  %s because Post NL User Selection failed.";
          goto LABEL_20;
        }

LABEL_51:
        v64 = log;
LABEL_52:

        return;
      }

      log = sub_22372AC88();
      v29 = sub_22372B288();

      if (!os_log_type_enabled(log, v29))
      {
        goto LABEL_51;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77 = v31;
      *v30 = 136315138;
      v67 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v68 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v69 = *(v67 + 8);

      v70 = sub_223623274(v68, v69, &v77);

      *(v30 + 4) = v70;
      v36 = "Cannot commit for userLevelCandidateId  %s because NL Results were not processed. This is unusual.";
    }

    else
    {

      log = sub_22372AC88();
      v29 = sub_22372B288();

      if (!os_log_type_enabled(log, v29))
      {
        goto LABEL_51;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77 = v31;
      *v30 = 136315138;
      v60 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v61 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v62 = *(v60 + 8);

      v63 = sub_223623274(v61, v62, &v77);

      *(v30 + 4) = v63;
      v36 = "Cannot commit for userLevelCandidateId  %s because nlUserParses not available.";
    }

LABEL_20:
    _os_log_impl(&dword_223620000, log, v29, v36, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    v37 = v30;
LABEL_21:
    MEMORY[0x223DE8A80](v37, -1, -1);
    v28 = log;
    goto LABEL_22;
  }

  v19 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending);

  oslog = sub_22372AC88();
  v20 = sub_22372B268();

  v21 = os_log_type_enabled(oslog, v20);
  if (v19 == 1)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v77 = v23;
      *v22 = 136315138;
      v24 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v25 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v26 = *(v24 + 8);

      v27 = sub_223623274(v25, v26, &v77);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_223620000, oslog, v20, "Cannot commit for userLevelCandidateId  %s because waiting for server user selection.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223DE8A80](v23, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
      v28 = oslog;
LABEL_22:

      return;
    }

    v64 = oslog;
    goto LABEL_52;
  }

  if (v21)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77 = v54;
    *v53 = 136315138;
    v55 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v56 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v57 = sub_223623274(v55, v56, &v77);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_223620000, oslog, v20, "Proceeding to finalize userLevelCandidateId: %s on ServerFallback path.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x223DE8A80](v54, -1, -1);
    MEMORY[0x223DE8A80](v53, -1, -1);
  }

  type metadata accessor for MUXResultCandidateContext(0);
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = v58;

    sub_2236A6948(v59);
LABEL_44:
  }
}

void sub_2236A6948(uint64_t a1)
{
  v2 = sub_22372A3C8();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v10 = sub_22372AC98();
  v11 = __swift_project_value_buffer(v10, qword_27D097070);

  v44 = v11;
  v12 = sub_22372AC88();
  v13 = sub_22372B268();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v46);
    _os_log_impl(&dword_223620000, v12, v13, "Proceeding to post ResultSelected for given RC Id: %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x223DE8A80](v15, -1, -1);
    MEMORY[0x223DE8A80](v14, -1, -1);
  }

  v16 = v45;
  __swift_project_boxed_opaque_existential_1((v45 + qword_27D097120), *(v45 + qword_27D097120 + 24));
  v17 = sub_22372A548();
  v47 = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  v19 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(a1 + v19, v9);
  (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, v9, v17);
  v21 = v42;
  v20 = v43;
  (*(v42 + 104))(v5, *MEMORY[0x277D5D1C0], v43);
  sub_22372A4B8();
  (*(v21 + 8))(v5, v20);
  sub_223626478(v46, &unk_27D08F750, &qword_22372C960);
  v22 = *(v16 + qword_27D097110);
  v23 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
  v24 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;

  sub_2236B1FA4(3u);
  *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 3;
  sub_2236B477C(v23, v24, a1);
  MEMORY[0x28223BE20](v25, v26);
  *(&v42 - 2) = v16;
  *(&v42 - 1) = a1;
  v27 = objc_allocWithZone(sub_2237283A8());
  v28 = sub_223728398();
  if (v28)
  {
    v29 = v28;
    v30 = v28;
    v31 = sub_22372AC88();
    v32 = sub_22372B268();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v29;
      v35 = v30;
      _os_log_impl(&dword_223620000, v31, v32, "MUXProcessor posting ResultSelected message: %@", v33, 0xCu);
      sub_223626478(v34, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v34, -1, -1);
      MEMORY[0x223DE8A80](v33, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v46, v47);
    sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(v46);

    v36 = sub_22372A768();
    sub_22369D220(v36, v37, *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8));
  }

  else
  {

    v38 = sub_22372AC88();
    v39 = sub_22372B278();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v46);
      _os_log_impl(&dword_223620000, v38, v39, "Failed to create ResultSelectedMessage for rcId: %s.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x223DE8A80](v41, -1, -1);
      MEMORY[0x223DE8A80](v40, -1, -1);
    }
  }
}

uint64_t sub_2236A6F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *MEMORY[0x277D5CDE0];
  v12 = sub_223729DE8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2237283F8();
  sub_22372A728();
  sub_2237283C8();
  sub_22372A778();
  v14 = sub_223727408();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_223728418();
  sub_22372A768();
  sub_223728408();

  sub_2237283E8();
  return sub_2237283D8();
}

void sub_2236A7190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v131 - v4;
  v6 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22372A548();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v131 - v16;
  v18 = *(v1 + qword_27D097110);
  v19 = v18[5];
  if (!v19)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v39 = sub_22372AC98();
    __swift_project_value_buffer(v39, qword_27D097070);

    v149 = sub_22372AC88();
    v40 = sub_22372B278();

    if (os_log_type_enabled(v149, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = v18[2];
      v44 = v18[3];

      v45 = sub_223623274(v43, v44, aBlock);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_223620000, v149, v40, "Instrumentation: For requestContext with requestId %s, unable to find selectedTopLevelCandidateId, we lost the cache!", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x223DE8A80](v42, -1, -1);
      MEMORY[0x223DE8A80](v41, -1, -1);
    }

    else
    {
      v55 = v149;
    }

    return;
  }

  v147 = v15;
  v148 = v5;
  v149 = v18[4];
  swift_beginAccess();
  v20 = v18[8];
  v21 = *(v20 + 16);

  if (!v21)
  {
LABEL_13:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_27D097070);

    v47 = sub_22372AC88();
    v48 = sub_22372B278();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136315394;
      v51 = v18[2];
      v52 = v18[3];

      v53 = sub_223623274(v51, v52, aBlock);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = sub_223623274(v149, v19, aBlock);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_223620000, v47, v48, "Instrumentation: For requestContext with requestId %s, unable to find selected RC Context for given selectedTopLevelCandidateId %s.", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v50, -1, -1);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

    else
    {
    }

    return;
  }

  v22 = sub_2236261A0(v149, v19);
  if ((v23 & 1) == 0)
  {

    goto LABEL_13;
  }

  v24 = *(*(v20 + 56) + 8 * v22);

  v146 = v24;
  v25 = v24 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v142 = v25;
  sub_22368509C(v25, v9);
  v139 = *(v11 + 32);
  v139(v17, v9, v10);
  v140 = *(v1 + qword_27D097140);
  v26 = sub_22372AA08();
  v27 = v10;
  v28 = v26;
  v29 = v11 + 8;
  v30 = *(v11 + 8);
  v144 = v29;
  v145 = v27;
  v30(v17);
  v143 = v30;
  if (v28)
  {
    v31 = [v28 loggableMultiUserSharedUserId];
    v141 = v28;
    if (!v31)
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v70 = sub_22372AC98();
      __swift_project_value_buffer(v70, qword_27D097070);

      v71 = sub_22372AC88();
      v72 = sub_22372B278();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        aBlock[0] = v148;
        *v73 = 136315650;
        v74 = v18[2];
        v75 = v18[3];

        v76 = sub_223623274(v74, v75, aBlock);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2080;
        sub_22368509C(v142, v9);
        v77 = v145;
        v139(v17, v9, v145);
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
        v78 = sub_22372B6B8();
        v80 = v79;
        v143(v17, v77);
        v81 = sub_223623274(v78, v80, aBlock);

        *(v73 + 14) = v81;
        *(v73 + 22) = 2080;
        v82 = sub_223623274(v149, v19, aBlock);

        *(v73 + 24) = v82;
        _os_log_impl(&dword_223620000, v71, v72, "Instrumentation: For requestContext with requestId %s, unable to find loggable shared User Id for selected user id: %s and selectedTopLevelCandidateId %s.", v73, 0x20u);
        v83 = v148;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v83, -1, -1);
        MEMORY[0x223DE8A80](v73, -1, -1);
      }

      else
      {
      }

      goto LABEL_70;
    }

    v32 = v31;

    v135 = sub_22372AFE8();
    v136 = v33;

    v34 = [v28 sharedUserId];
    if (v34)
    {
      v35 = v34;
      v36 = sub_22372AFE8();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v84 = [v28 loggableMultiUserSharedUserId];
    if (v84)
    {
      v85 = v84;
      v86 = sub_22372AFE8();
      v88 = v87;

      if (v38)
      {
        if (v88)
        {
          if (v36 == v86 && v38 == v88)
          {

            v134 = 1;
          }

          else
          {
            v134 = sub_22372B6E8();
          }

          goto LABEL_47;
        }

        goto LABEL_40;
      }

      if (v88)
      {
        v134 = 0;
        goto LABEL_47;
      }
    }

    else if (v38)
    {
LABEL_40:
      v134 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v134 = 1;
LABEL_48:
    v89 = sub_22372A9E8();
    v149 = *(v1 + qword_27D097148);

    v139 = sub_22372A748();
    v131 = sub_22372A768();
    v137 = v90;
    v132 = *(v146 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs);
    v91 = *(v146 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs + 8);
    v92 = v18[9];
    v93 = qword_27D097138;
    swift_beginAccess();
    v94 = v148;
    sub_223634890(v1 + v93, v148, &unk_27D08E990, &qword_22372FCF0);
    v138 = v92;
    v133 = sub_22372AA28();
    v95 = *(v142 + *(v6 + 20));
    sub_22372A508();
    v96 = sub_223727EF8();
    v97 = [objc_allocWithZone(MEMORY[0x277D596D8]) init];
    if (v97)
    {
      v98 = v97;
      if (v91)
      {
        v99 = 0;
      }

      else
      {
        v99 = v132;
      }

      [v97 setIsMultiUser_];
      [v98 setNlRerunLatencyInMs_];
      sub_22369D5DC(v92, v94, v89);

      sub_223630584(0, &qword_27D08F1E8, 0x277D59708);
      v100 = sub_22372B118();

      [v98 setUserScores_];

      [v98 setIsOutsider_];
      [v98 setIsSelectedUserPartOfMultipleHomes_];
      v101 = v95;
      v102 = v95 >= 5;
      v103 = v143;
      if (v102)
      {
        v104 = 0;
      }

      else
      {
        v104 = dword_22373007C[v101];
      }

      v114 = v147;
      [v98 setORCHUserIdentityClassification_];
      sub_22372A518();
      v115 = sub_22372AFD8();

      [v98 setSelectedSharedUserId_];

      v116 = v139;
      if ([v139 respondsToSelector_])
      {
        sub_22372A518();
        v117 = swift_allocObject();
        v118 = v149;
        v117[2] = v98;
        v117[3] = v118;
        v119 = v137;
        v117[4] = v131;
        v117[5] = v119;

        v120 = v98;
        v121 = sub_22372AFD8();

        aBlock[4] = sub_2236B12B8;
        aBlock[5] = v117;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22368503C;
        aBlock[3] = &block_descriptor_3;
        v122 = _Block_copy(aBlock);

        [v116 fetchDeviceAndUserIdsForSharedUserId:v121 withCallback:v122];
        _Block_release(v122);

        swift_unknownObjectRelease();

        v103(v114, v145);
        sub_223626478(v148, &unk_27D08E990, &qword_22372FCF0);
      }

      else
      {

        swift_unknownObjectRelease();

        v103(v114, v145);
        sub_223626478(v148, &unk_27D08E990, &qword_22372FCF0);
      }

      v105 = 0x27D08E000;
    }

    else
    {

      v105 = 0x27D08E000uLL;
      v106 = v143;
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v107 = sub_22372AC98();
      __swift_project_value_buffer(v107, qword_27D097070);
      v108 = v137;

      v109 = sub_22372AC88();
      v110 = sub_22372B278();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        aBlock[0] = v112;
        *v111 = 136315138;
        v113 = sub_223623274(v131, v108, aBlock);

        *(v111 + 4) = v113;
        _os_log_impl(&dword_223620000, v109, v110, "Instrumentation: Failed to create MUXRequestEnded message for : %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v112);
        MEMORY[0x223DE8A80](v112, -1, -1);
        MEMORY[0x223DE8A80](v111, -1, -1);
      }

      else
      {
      }

      swift_unknownObjectRelease();

      v106(v147, v145);
      sub_223626478(v148, &unk_27D08E990, &qword_22372FCF0);
    }

    if (*(v105 + 712) != -1)
    {
      swift_once();
    }

    v123 = sub_22372AC98();
    __swift_project_value_buffer(v123, qword_27D097070);

    v124 = sub_22372AC88();
    v125 = sub_22372B268();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock[0] = v127;
      *v126 = 136315138;
      v128 = v18[2];
      v129 = v18[3];

      v130 = sub_223623274(v128, v129, aBlock);

      *(v126 + 4) = v130;
      _os_log_impl(&dword_223620000, v124, v125, "Instrumentation: Successfully logRequestCompleted() for requestId %s.", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      MEMORY[0x223DE8A80](v127, -1, -1);
      MEMORY[0x223DE8A80](v126, -1, -1);
    }

LABEL_70:
    return;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v56 = sub_22372AC98();
  __swift_project_value_buffer(v56, qword_27D097070);

  v57 = sub_22372AC88();
  v58 = sub_22372B278();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    aBlock[0] = v148;
    *v59 = 136315650;
    v60 = v18[2];
    v61 = v18[3];

    v62 = sub_223623274(v60, v61, aBlock);

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    sub_22368509C(v142, v9);
    v63 = v145;
    v139(v17, v9, v145);
    sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v64 = sub_22372B6B8();
    v66 = v65;
    v143(v17, v63);
    v67 = sub_223623274(v64, v66, aBlock);

    *(v59 + 14) = v67;
    *(v59 + 22) = 2080;
    v68 = sub_223623274(v149, v19, aBlock);

    *(v59 + 24) = v68;
    _os_log_impl(&dword_223620000, v57, v58, "Instrumentation: For requestContext with requestId %s, unable to find Home Member Info for selected user id: %s and selectedTopLevelCandidateId %s.", v59, 0x20u);
    v69 = v148;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v69, -1, -1);
    MEMORY[0x223DE8A80](v59, -1, -1);
  }

  else
  {
  }
}

void sub_2236A843C(void *a1)
{
  v2 = v1;
  v125 = sub_22372A368();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v4);
  v123 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v127 = &v112 - v8;
  v131 = sub_223729F08();
  v133 = *(v131 - 8);
  v10 = MEMORY[0x28223BE20](v131, v9);
  v126 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v128 = &v112 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v130 = &v112 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v129 = &v112 - v19;
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v25 = sub_22372AC98();
  v26 = __swift_project_value_buffer(v25, qword_27D097070);
  v27 = a1;
  v28 = sub_22372AC88();
  v29 = sub_22372B268();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v132 = v2;
    v32 = v31;
    v134 = v31;
    *v30 = 136315138;
    sub_223729DA8();
    v33 = sub_223729DD8();
    v34 = v20;
    v35 = v27;
    v36 = v26;
    v38 = v37;
    (*(v21 + 8))(v24, v34);
    v39 = sub_223623274(v33, v38, &v134);
    v26 = v36;
    v27 = v35;

    *(v30 + 4) = v39;
    _os_log_impl(&dword_223620000, v28, v29, "Received MUXServerFallbackMessage from: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v40 = v32;
    v2 = v132;
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

  v41 = sub_2237290A8();
  v43 = v42;
  v44 = *(v2 + qword_27D097110);
  swift_beginAccess();
  v45 = *(v44 + 48);
  if (!*(v45 + 16))
  {
    goto LABEL_13;
  }

  v46 = sub_2236261A0(v41, v43);
  if ((v47 & 1) == 0)
  {

LABEL_13:

    v60 = sub_22372AC88();
    v61 = sub_22372B278();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v134 = v63;
      *v62 = 136315138;
      v64 = sub_223623274(v41, v43, &v134);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_223620000, v60, v61, "Could not find any Speech RC context for RCID: %s.. ignoring Server-fallback message", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x223DE8A80](v63, -1, -1);
      MEMORY[0x223DE8A80](v62, -1, -1);
    }

    else
    {
    }

    return;
  }

  v122 = v27;
  v48 = *(*(v45 + 56) + 8 * v46);

  type metadata accessor for MUXResultCandidateContext(0);
  v49 = swift_dynamicCastClass();
  if (!v49)
  {

    goto LABEL_13;
  }

  v113 = v41;
  v119 = v26;
  v120 = v48;
  v121 = v49;
  v50 = *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
  v51 = *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

  v118 = sub_2236B4574(v50, v51);

  v141 = MEMORY[0x277D84F98];
  v52 = qword_27D097100;
  swift_beginAccess();
  v53 = v133;
  v54 = v133[2];
  v132 = v2;
  v117 = v52;
  v55 = v2 + v52;
  v56 = v131;
  v116 = v54;
  v54(v129, v55, v131);
  v57 = *MEMORY[0x277D5CF40];
  v114 = v53[13];
  v114(v130, v57, v56);
  v58 = sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_22372B0F8();
  v115 = v58;
  sub_22372B0F8();
  if (v134 == v139 && v135 == v140)
  {
    v59 = 1;
  }

  else
  {
    v59 = sub_22372B6E8();
  }

  v65 = (v133 + 1);
  v66 = v133[1];
  v67 = v131;
  v66(v130, v131);
  v133 = v65;
  v66(v129, v67);

  if (v59)
  {
    sub_2236A44C0(v118, &v141);
  }

  v68 = qword_27D097120;
  v69 = qword_27D097118;
  v70 = v132;
  swift_beginAccess();
  v71 = v70 + v69;
  v72 = v127;
  sub_223634890(v71, v127, &unk_27D08F6F0, &qword_223732CD0);
  LOBYTE(v68) = sub_223724934((v70 + v68), v72);
  sub_223626478(v72, &unk_27D08F6F0, &qword_223732CD0);
  if (v68)
  {
    v73 = *(v70 + qword_27D097130 + 8);
    if (v73)
    {
      v74 = *(v70 + qword_27D097130);
      v75 = *(v70 + qword_27D097128);
      v76 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
      swift_beginAccess();
      v77 = *(v75 + v76);
      if (*(v77 + 16))
      {

        v78 = sub_2236261A0(v74, v73);
        if (v79)
        {
          v80 = *(*(v77 + 56) + 8 * v78);

          v81 = *(v80 + 72);
          v82 = v81;

          goto LABEL_26;
        }
      }

      v108 = sub_22372AC88();
      v109 = sub_22372B278();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        v111 = "Unable to find previus MUX request context in session context. Request will fail.";
        goto LABEL_44;
      }
    }

    else
    {

      v108 = sub_22372AC88();
      v109 = sub_22372B278();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        v111 = "Unable to find cached previousRequestId for a request that began with a prompt. Request will fail.";
LABEL_44:
        _os_log_impl(&dword_223620000, v108, v109, v111, v110, 2u);
        MEMORY[0x223DE8A80](v110, -1, -1);
      }
    }

    return;
  }

  v81 = *(v44 + 72);
  v82 = v81;
LABEL_26:
  v129 = v141;
  v83 = v131;
  v116(v128, v132 + v117, v131);
  v84 = v126;
  v114(v126, *MEMORY[0x277D5CF30], v83);
  v130 = v82;
  sub_22372B0F8();
  sub_22372B0F8();
  if (v134 == v137 && v135 == v138)
  {
    v85 = 1;
  }

  else
  {
    v85 = sub_22372B6E8();
  }

  v86 = v131;
  v66(v84, v131);
  v66(v128, v86);

  MEMORY[0x28223BE20](v87, v88);
  v89 = v129;
  *(&v112 - 4) = v122;
  *(&v112 - 3) = v89;
  *(&v112 - 16) = v85 & 1;
  *(&v112 - 1) = v81;
  v90 = objc_allocWithZone(sub_2237285E8());
  v91 = sub_223728538();

  if (v91)
  {
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(&v134, v136);
    v133 = v91;
    sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(&v134);
    *(v121 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2C8, &unk_22372FF70);
    v92 = v124;
    v93 = *(v124 + 72);
    v94 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_22372FF50;
    v96 = v95 + v94;
    v97 = *(v92 + 104);
    v98 = v125;
    v97(v96, *MEMORY[0x277D5D178], v125);
    v97(v96 + v93, *MEMORY[0x277D5D170], v98);
    v97(v96 + 2 * v93, *MEMORY[0x277D5D168], v98);
    v97(v96 + 3 * v93, *MEMORY[0x277D5D180], v98);

    v99 = v123;
    sub_2237285F8();
    LOBYTE(v93) = sub_2236A95F8(v99, v95);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v92 + 8))(v99, v98);
    *(v121 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = v93 & 1;

    v100 = sub_22372AC88();
    v101 = sub_22372B268();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v134 = v103;
      *v102 = 136315138;
      v104 = sub_223623274(v113, v43, &v134);

      *(v102 + 4) = v104;
      _os_log_impl(&dword_223620000, v100, v101, "Posted ExecuteNLOnServerMessage for rcId: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x223DE8A80](v103, -1, -1);
      MEMORY[0x223DE8A80](v102, -1, -1);
    }

    else
    {
    }

    sub_2236A5E18(v121);
  }

  else
  {

    v105 = sub_22372AC88();
    v106 = sub_22372B278();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_223620000, v105, v106, "Could not create ExecuteNLOnServerMessage from MUXServerFallbackMessage", v107, 2u);
      MEMORY[0x223DE8A80](v107, -1, -1);
    }
  }
}

void sub_2236A9368(uint64_t *a1, uint64_t *a2)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MUXSpeechResultCandidateContext(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    v14 = v12;
    swift_beginAccess();
    sub_22368509C(v14 + v13, v6);
    (*(v8 + 32))(v11, v6, v7);
    v15 = *(v14 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a2;
    *a2 = 0x8000000000000000;
    sub_22368DBF4(v15, v11, isUniquelyReferenced_nonNull_native);
    (*(v8 + 8))(v11, v7);
    *a2 = v21;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v17 = sub_22372AC98();
    __swift_project_value_buffer(v17, qword_27D097070);
    v18 = sub_22372AC88();
    v19 = sub_22372B278();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223620000, v18, v19, "Found non speech result candidate context in speech request. Failing the request.", v20, 2u);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }
  }
}

BOOL sub_2236A95F8(uint64_t a1, uint64_t a2)
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

    sub_22372A368();
    ++v2;
    sub_2236B12D0(&qword_27D08F310, MEMORY[0x277D5D190], MEMORY[0x277D5D198]);
  }

  while ((sub_22372AFC8() & 1) == 0);
  return v3 != v4;
}

void sub_2236A9704(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v112 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v111 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v113 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v115 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v114 = (&v108 - v19);
  v20 = sub_2237290A8();
  v22 = v21;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v23 = sub_22372AC98();
  v24 = __swift_project_value_buffer(v23, qword_27D097070);
  v25 = a1;
  v26 = sub_22372AC88();
  v27 = sub_22372B268();

  v28 = os_log_type_enabled(v26, v27);
  v116 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v109 = v20;
    v30 = v29;
    v31 = swift_slowAlloc();
    v110 = v24;
    v32 = v8;
    v33 = v31;
    v119[0] = v31;
    *v30 = 136315138;
    v34 = sub_2237290A8();
    v36 = v7;
    v37 = v2;
    v38 = sub_223623274(v34, v35, v119);

    *(v30 + 4) = v38;
    v2 = v37;
    v7 = v36;
    _os_log_impl(&dword_223620000, v26, v27, "Handling MUXNLResultCandidateMessage for rcId: %s.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v39 = v33;
    v8 = v32;
    MEMORY[0x223DE8A80](v39, -1, -1);
    v40 = v30;
    v20 = v109;
    MEMORY[0x223DE8A80](v40, -1, -1);
  }

  v41 = *(v2 + qword_27D097110);
  swift_beginAccess();
  v42 = *(v41 + 48);
  if (!*(v42 + 16))
  {
    goto LABEL_16;
  }

  v43 = sub_2236261A0(v20, v22);
  if ((v44 & 1) == 0)
  {

    goto LABEL_16;
  }

  v45 = v20;
  v46 = *(*(v42 + 56) + 8 * v43);

  v47 = type metadata accessor for MUXResultCandidateContext(0);
  v48 = swift_dynamicCastClass();
  if (!v48)
  {

    v20 = v45;
LABEL_16:

    v82 = sub_22372AC88();
    v83 = sub_22372B278();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v118[0] = v85;
      *v84 = 136315138;
      v86 = sub_223623274(v20, v22, v118);

      *(v84 + 4) = v86;
      _os_log_impl(&dword_223620000, v82, v83, "Could not find any RC context for RCID: %s.. ignoring NLResultCandidateMessage", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x223DE8A80](v85, -1, -1);
      MEMORY[0x223DE8A80](v84, -1, -1);
    }

    else
    {
    }

LABEL_23:

    return;
  }

  v49 = v48;
  v110 = v47;

  *(v49 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = sub_223728748();

  v50 = v114;
  sub_223728758();
  v51 = sub_223727678();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  swift_beginAccess();
  sub_2236719F4(v50, v49 + v52, &qword_27D08EEB0, qword_22372FF80);
  swift_endAccess();
  v53 = v115;
  sub_223728768();
  v54 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  swift_beginAccess();
  sub_2236719F4(v53, v49 + v54, &qword_27D08F920, qword_223730410);
  swift_endAccess();

  v115 = sub_2236AA67C(v49);
  if (!v115)
  {
LABEL_20:

    v82 = sub_22372AC88();
    v87 = sub_22372B278();

    if (os_log_type_enabled(v82, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = v49;
      v91 = v89;
      v118[0] = v89;
      *v88 = 136315138;
      v92 = *(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
      v93 = *(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

      v94 = sub_223623274(v92, v93, v118);

      *(v88 + 4) = v94;
      _os_log_impl(&dword_223620000, v82, v87, "Post NL User Selection failed for rcId: %s.", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x223DE8A80](v91, -1, -1);
      MEMORY[0x223DE8A80](v88, -1, -1);
    }

    goto LABEL_23;
  }

  v114 = swift_dynamicCastClass();
  if (!v114)
  {

    goto LABEL_20;
  }

  v108 = v2;
  v109 = v49;
  v110 = v46;
  v55 = v113;
  v56 = v116;
  sub_2237295C8();
  v57 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  v58 = v114;
  swift_beginAccess();
  v59 = v58 + v57;
  v60 = v112;
  sub_22368509C(v59, v112);
  v61 = v111;
  (*(v8 + 32))(v111, v60, v7);
  v62 = sub_22372A538();
  v63 = *(v8 + 8);
  v63(v61, v7);
  v112 = v8 + 8;
  v63(v55, v7);
  v64 = v56;
  v65 = sub_22372AC88();
  v66 = sub_22372B288();

  v67 = os_log_type_enabled(v65, v66);
  if (v62)
  {
    if (v67)
    {
      v68 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = v116;
      *v68 = 136315394;
      v69 = v63;
      v70 = v113;
      sub_2237295C8();
      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v71 = sub_22372B6B8();
      v73 = v72;
      v69(v70, v7);
      v74 = sub_223623274(v71, v73, &v117);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2080;
      v75 = sub_2237290A8();
      v77 = sub_223623274(v75, v76, &v117);

      *(v68 + 14) = v77;
      _os_log_impl(&dword_223620000, v65, v66, "Since postNL user selected user is the same as the current user: %s, posting NLResultCandidateMessage for rcId: %s and proceeding to commit.", v68, 0x16u);
      v78 = v116;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v78, -1, -1);
      MEMORY[0x223DE8A80](v68, -1, -1);
    }

    v79 = v114;
    sub_2236ADF14(v114);
    v80 = *(v109 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
    v81 = *(v109 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

    sub_2236B477C(v80, v81, v79);

    sub_2236A5E18(v79);
  }

  else
  {
    if (v67)
    {
      v95 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = v116;
      *v95 = 136315394;
      v96 = v63;
      v97 = v113;
      sub_2237295C8();
      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v98 = sub_22372B6B8();
      v100 = v99;
      v96(v97, v7);
      v101 = sub_223623274(v98, v100, &v117);

      *(v95 + 4) = v101;
      *(v95 + 12) = 2080;
      v102 = sub_2237290A8();
      v104 = sub_223623274(v102, v103, &v117);

      *(v95 + 14) = v104;
      _os_log_impl(&dword_223620000, v65, v66, "Since postNL user selected user is NOT the same as the current user: %s, will not post NLResultCandidateMessage for rcId: %s.", v95, 0x16u);
      v105 = v116;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v105, -1, -1);
      MEMORY[0x223DE8A80](v95, -1, -1);
    }

    v106 = *(v109 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
    v107 = *(v109 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

    sub_2236B477C(v106, v107, v114);
  }
}

void sub_2236AA248()
{
  v1 = v0;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = sub_22372AC88();
  v4 = sub_22372B268();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223620000, v3, v4, "Handling FlowPluginInfoMessage", v5, 2u);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v6 = sub_2237290A8();
  v8 = v7;
  if (v6 == sub_22372A908() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_22372B6E8();

    if ((v10 & 1) == 0)
    {
      v13 = sub_2237290A8();
      v12 = v20;
      v11 = *(v1 + qword_27D097110);

      goto LABEL_14;
    }
  }

  v11 = *(v1 + qword_27D097110);
  v12 = v11[5];
  if (v12)
  {
    v13 = v11[4];
    swift_bridgeObjectRetain_n();
LABEL_14:
    swift_beginAccess();
    v21 = v11[6];
    if (*(v21 + 16) && (, v22 = sub_2236261A0(v13, v12), v24 = v23, , (v24 & 1) != 0))
    {
      v25 = *(*(v21 + 56) + 8 * v22);
      swift_retain_n();

      v26 = sub_223728298();
      sub_2236AEA78(v25, v26 & 1);
    }

    else
    {

      v27 = sub_22372AC88();
      v28 = sub_22372B278();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v29 = 136315138;
        v31 = sub_223623274(v13, v12, &v33);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_223620000, v27, v28, "handleFlowPluginInfoMessage: Unable to find candidate context for id: %s, this can affect Conversation.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x223DE8A80](v30, -1, -1);
        MEMORY[0x223DE8A80](v29, -1, -1);
      }

      else
      {
      }
    }

    return;
  }

  oslog = sub_22372AC88();
  v14 = sub_22372B278();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34[0] = v16;
    *v15 = 136315138;
    v17 = sub_22372A908();
    v19 = sub_223623274(v17, v18, v34);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_223620000, oslog, v14, "FlowPluginInfoMessage has a %s value for ResultCandidateId, but we do not know the selected result candidate ID either. Cannot post voice identification signal.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x223DE8A80](v16, -1, -1);
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236AA67C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22372AEE8();
  v220 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v208 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE88, &qword_223730060);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v208 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v208 - v22;
  v225 = sub_223729F08();
  v224 = *(v225 - 8);
  v25 = MEMORY[0x28223BE20](v225, v24);
  v222 = &v208 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v223 = &v208 - v28;
  v250 = sub_22372A548();
  v245 = *(v250 - 8);
  v30 = MEMORY[0x28223BE20](v250, v29);
  v219 = &v208 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v244 = &v208 - v33;
  v251 = sub_22372A298();
  v249 = *(v251 - 8);
  MEMORY[0x28223BE20](v251, v34);
  v248 = &v208 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v246 = &v208 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v41 = MEMORY[0x28223BE20](v39 - 8, v40);
  v243 = &v208 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v208 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v247 = &v208 - v48;
  v49 = type metadata accessor for MUXUserAttributes(0);
  v51 = MEMORY[0x28223BE20](v49, v50);
  v53 = MEMORY[0x28223BE20](v51, v52);
  v55 = MEMORY[0x28223BE20](v53, v54);
  v252 = a1;
  v60 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  if (!v60)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v87 = sub_22372AC98();
    __swift_project_value_buffer(v87, qword_27D097070);

    v84 = sub_22372AC88();
    v88 = sub_22372B278();

    if (!os_log_type_enabled(v84, v88))
    {
      goto LABEL_12;
    }

    v86 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v257 = v89;
    *v86 = 136315138;
    v90 = *(v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v91 = *(v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v92 = sub_223623274(v90, v91, &v257);

    *(v86 + 4) = v92;
    _os_log_impl(&dword_223620000, v84, v88, "Should not be calling doPostNLUserSelection without nlParses for candidateId: %s, cannot proceed with post NL user selection.", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x223DE8A80](v89, -1, -1);
    goto LABEL_11;
  }

  v217 = v58;
  v209 = v57;
  v212 = v16;
  v211 = v23;
  v210 = v20;
  v213 = v8;
  v214 = v11;
  v221 = &v208 - v56;
  v215 = v4;
  v61 = qword_27D097108;
  v242 = v55;
  v236 = v60;
  v241 = v59;
  swift_beginAccess();
  sub_223623934(v2 + v61, &v257);
  v237 = v258;
  v229 = v259;
  v240 = __swift_project_boxed_opaque_existential_1(&v257, v258);
  v62 = *(v2 + qword_27D097110);
  v63 = *(v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
  v238 = *(v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v233 = v63;
  v64 = *(v62 + 72);
  v239 = v64;

  v235 = sub_223727F08();
  v65 = qword_27D097138;
  swift_beginAccess();
  v216 = v65;
  v234 = v45;
  sub_223634890(v2 + v65, v45, &unk_27D08E990, &qword_22372FCF0);
  v231 = qword_27D097120;
  v66 = *(v2 + qword_27D097130 + 8);
  v232 = *(v2 + qword_27D097130);
  v230 = v66;
  v67 = *(v2 + qword_27D097128);
  v68 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
  swift_beginAccess();
  v69 = *(v67 + v68);
  v70 = qword_27D097118;
  swift_beginAccess();
  v71 = v246;
  sub_223634890(v2 + v70, v246, &unk_27D08F6F0, &qword_223732CD0);
  v226 = v69;

  v72 = sub_223727EF8();
  v73 = v249;
  v74 = v248;
  (*(v249 + 104))(v248, *MEMORY[0x277D5D0D0], v251);
  v218 = v62;
  v75 = *(v62 + 80);
  v76 = v2;
  v77 = v229;
  v227 = *(v229 + 16);
  v228 = v75;
  v207 = v237;
  v237 = v76;
  v78 = v76 + v231;
  v79 = v247;
  v80 = v64;
  v81 = v234;
  v227(v238, v233, v236, v80, v235, v234, v78, v232, v230, v69, v71, v72 & 1, v74, v75, v207, v77);

  (*(v73 + 8))(v74, v251);
  sub_223626478(v71, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v81, &unk_27D08E990, &qword_22372FCF0);
  v82 = v242;
  if ((*(v241 + 48))(v79, 1, v242) == 1)
  {
    sub_223626478(v79, &qword_27D08EE90, &unk_22372FF60);
    __swift_destroy_boxed_opaque_existential_1Tm(&v257);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v83 = sub_22372AC98();
    __swift_project_value_buffer(v83, qword_27D097070);
    v84 = sub_22372AC88();
    v85 = sub_22372B278();
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_12;
    }

    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_223620000, v84, v85, "selectPostNLUser: Something went wrong during post NL user selection. Was unable to select a user.", v86, 2u);
LABEL_11:
    MEMORY[0x223DE8A80](v86, -1, -1);
LABEL_12:

    return 0;
  }

  v93 = v221;
  sub_2236852F0(v79, v221);
  __swift_destroy_boxed_opaque_existential_1Tm(&v257);
  v94 = (v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v96 = *(v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v95 = *(v252 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  v97 = v218;
  swift_beginAccess();
  v98 = *(v97 + 56);
  if (!*(v98 + 16))
  {
    v102 = v237;
    goto LABEL_20;
  }

  v99 = sub_2236261A0(v96, v95);
  v101 = v100;

  v102 = v237;
  if ((v101 & 1) == 0)
  {

    goto LABEL_20;
  }

  v103 = v97;
  v104 = *(*(v98 + 56) + 8 * v99);

  MEMORY[0x28223BE20](v105, v106);
  v207 = v93;
  v107 = sub_223685A30(sub_223685A48, &v206, v104);

  if (!v107)
  {
    v97 = v103;
LABEL_20:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v110 = sub_22372AC98();
    __swift_project_value_buffer(v110, qword_27D097070);
    v111 = v217;
    sub_22368509C(v93, v217);
    v112 = sub_22372AC88();
    v113 = sub_22372B278();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v252 = 0;
      v115 = v97;
      v116 = v114;
      v117 = swift_slowAlloc();
      v256 = v117;
      *v116 = 136315138;
      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
      v118 = sub_22372B6B8();
      v120 = v119;
      sub_223685354(v111);
      v121 = sub_223623274(v118, v120, &v256);
      v102 = v237;

      *(v116 + 4) = v121;
      _os_log_impl(&dword_223620000, v112, v113, "selectPostNLUser: Could not find CandidateContext for selectedUserId: %s. Trying to use unknown user's candidate.", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      v122 = v117;
      v93 = v221;
      MEMORY[0x223DE8A80](v122, -1, -1);
      v123 = v116;
      v97 = v115;
      MEMORY[0x223DE8A80](v123, -1, -1);
    }

    else
    {

      sub_223685354(v111);
    }

    v124 = v245;
    v125 = v243;
    sub_223634890(v102 + v216, v243, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v124 + 48))(v125, 1, v250) == 1)
    {
      sub_223626478(v125, &unk_27D08E990, &qword_22372FCF0);
      v126 = sub_22372AC88();
      v127 = sub_22372B278();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_223620000, v126, v127, "selectPostNLUser: sharedUserId of unknown user is nil. Will not post NL output. Request will time out.", v128, 2u);
        MEMORY[0x223DE8A80](v128, -1, -1);
      }
    }

    else
    {
      (*(v124 + 32))(v244, v125, v250);
      v129 = *(v97 + 56);
      if (*(v129 + 16))
      {
        v130 = *v94;
        v131 = v94[1];

        v132 = sub_2236261A0(v130, v131);
        v134 = v133;

        if (v134)
        {
          v135 = *(*(v129 + 56) + 8 * v132);

          MEMORY[0x28223BE20](v136, v137);
          v207 = v244;
          v107 = sub_223685A30(sub_2236853B0, &v206, v135);

          if (v107)
          {

            sub_2236B138C(-1);

            sub_2236B1508(0);

            v138 = sub_22372A418();
            sub_2236B1684(v138);

            sub_2236B1800(1);

            sub_2236B197C(0);

            sub_2236B1AF8(0);

            (*(v245 + 8))(v244, v250);
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v188 = sub_22372AC88();
      v189 = sub_22372B278();
      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        *v190 = 0;
        _os_log_impl(&dword_223620000, v188, v189, "selectPostNLUser: Could not find context for unknown user. Will not post NL output. Request will time out.", v190, 2u);
        MEMORY[0x223DE8A80](v190, -1, -1);
      }

      (*(v245 + 8))(v244, v250);
    }

    sub_223685354(v93);
    return 0;
  }

  v108 = *(v93 + v82[6]);

  sub_2236B138C(v108);
  v109 = *(v93 + v82[5]);

  sub_2236B1508(v109);

  LODWORD(v109) = *(v93 + v82[8]);

  sub_2236B1684(v109);

  LOBYTE(v109) = *(v93 + v82[7]);

  sub_2236B1800(v109);

  LOBYTE(v109) = *(v93 + v82[9]);

  sub_2236B197C(v109);

  LOBYTE(v109) = *(v93 + v82[10]);

  sub_2236B1AF8(v109);

LABEL_33:
  v139 = qword_27D097100;
  swift_beginAccess();
  v140 = v224;
  v141 = v225;
  (*(v224 + 16))(v223, v102 + v139, v225);
  (*(v140 + 104))(v222, *MEMORY[0x277D5CF40], v141);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_22372B0F8();
  sub_22372B0F8();
  v142 = v215;
  if (v255[0] == v253 && v255[1] == v254)
  {
    v143 = *(v224 + 8);
    v144 = v225;
    v143(v222, v225);
    v143(v223, v144);
  }

  else
  {
    LODWORD(v252) = sub_22372B6E8();
    v145 = *(v224 + 8);
    v146 = v225;
    v145(v222, v225);
    v145(v223, v146);

    if ((v252 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v148 = sub_2236B02C8(v147);

  if (v148)
  {
    type metadata accessor for MUXResultCandidateContext(0);
    v149 = swift_dynamicCastClass();
    if (v149)
    {
      v150 = v149;
      v151 = qword_27D08E2C8;

      if (v151 != -1)
      {
        swift_once();
      }

      v152 = sub_22372AC98();
      __swift_project_value_buffer(v152, qword_27D097070);
      v153 = sub_22372AC88();
      v154 = sub_22372B288();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        v255[0] = v252;
        *v155 = 136315394;
        LODWORD(v251) = v154;
        v156 = *(v107 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v157 = *(v107 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

        v158 = sub_223623274(v156, v157, v255);

        *(v155 + 4) = v158;
        *(v155 + 12) = 2080;
        v159 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v160 = v209;
        sub_22368509C(v107 + v159, v209);
        v161 = v245;
        v162 = v219;
        v163 = v250;
        (*(v245 + 32))(v219, v160, v250);
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
        v164 = sub_22372B6B8();
        v166 = v165;
        (*(v161 + 8))(v162, v163);
        v167 = sub_223623274(v164, v166, v255);

        *(v155 + 14) = v167;
        _os_log_impl(&dword_223620000, v153, v251, "After examining post NL user selection results, it is deemed necessary to retrigger NL for RCID: %s of user id: %s by posting AsrResultCandidateMessage.", v155, 0x16u);
        v168 = v252;
        swift_arrayDestroy();
        v93 = v221;
        MEMORY[0x223DE8A80](v168, -1, -1);
        MEMORY[0x223DE8A80](v155, -1, -1);
      }

      sub_2236AD6C8(v150);
    }

    v169 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    swift_beginAccess();
    v170 = v211;
    sub_223634890(v107 + v169, v211, &qword_27D08EE88, &qword_223730060);
    v171 = v220;
    v172 = (*(v220 + 48))(v170, 1, v142);
    sub_223626478(v170, &qword_27D08EE88, &qword_223730060);
    if (v172 == 1)
    {

      v173 = v210;
      sub_22372AED8();
      sub_223685354(v93);
      (*(v171 + 56))(v173, 0, 1, v142);
      swift_beginAccess();
      sub_2236719F4(v173, v107 + v169, &qword_27D08EE88, &qword_223730060);
      swift_endAccess();
LABEL_69:

      return v107;
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v197 = sub_22372AC98();
    __swift_project_value_buffer(v197, qword_27D097070);
    v198 = sub_22372AC88();
    v199 = sub_22372B278();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&dword_223620000, v198, v199, "Detected a strange state where it looks like NL was re-triggered twice for the same candidate.", v200, 2u);
      MEMORY[0x223DE8A80](v200, -1, -1);
    }

LABEL_71:
    sub_223685354(v93);
    return v107;
  }

LABEL_46:
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v174 = sub_22372AC98();
  __swift_project_value_buffer(v174, qword_27D097070);
  v175 = sub_22372AC88();
  v176 = sub_22372B268();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v255[0] = v178;
    *v177 = 136315138;
    v179 = *(v107 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v180 = *(v107 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v181 = sub_223623274(v179, v180, v255);

    *(v177 + 4) = v181;
    v93 = v221;
    _os_log_impl(&dword_223620000, v175, v176, "Post NL candidate already has passed all re-trigger checks, there is no need to re-trigger NL for this candidate ID: %s.", v177, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v178);
    MEMORY[0x223DE8A80](v178, -1, -1);
    MEMORY[0x223DE8A80](v177, -1, -1);
  }

  v182 = v220;
  v183 = v214;
  v184 = v213;
  v185 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
  swift_beginAccess();
  v186 = v107 + v185;
  v187 = v212;
  sub_223634890(v186, v212, &qword_27D08EE88, &qword_223730060);
  if ((*(v182 + 48))(v187, 1, v142) == 1)
  {
    sub_223685354(v93);
    sub_223626478(v187, &qword_27D08EE88, &qword_223730060);
    return v107;
  }

  (*(v182 + 32))(v183, v187, v142);
  sub_22372AED8();
  sub_2236B12D0(&qword_27D08EE98, MEMORY[0x277D851E0], MEMORY[0x277D851E8]);
  if (sub_22372AFB8())
  {
    v192 = sub_22372AC88();
    v193 = sub_22372B278();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = v182;
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&dword_223620000, v192, v193, "Detected inconsistency in observed timestamps. Please alert Siri Orchestration | Client.", v195, 2u);
      MEMORY[0x223DE8A80](v195, -1, -1);

      v196 = *(v194 + 8);
      v196(v184, v142);
      v196(v183, v142);
    }

    else
    {

      v205 = *(v182 + 8);
      v205(v184, v142);
      v205(v183, v142);
    }

    goto LABEL_71;
  }

  v201 = sub_22372AEC8();
  v202 = sub_22372AEC8();
  v203 = *(v182 + 8);
  v203(v184, v142);
  v203(v183, v142);
  result = sub_223685354(v93);
  if (v201 >= v202)
  {
    v204 = v107 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
    *v204 = (v201 - v202) / 0xF4240;
    *(v204 + 8) = 0;
    goto LABEL_69;
  }

  __break(1u);
  return result;
}

uint64_t sub_2236AC2F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v147 = a6;
  v146 = a5;
  v143 = a3;
  v151 = a1;
  v135 = sub_223727638();
  v136 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v8);
  v134 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22372A548();
  v142 = *(v163 - 8);
  v11 = MEMORY[0x28223BE20](v163, v10);
  v156 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v129 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v129 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v141 = &v129 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E0, &qword_223730018);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v149 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v148 = &v129 - v28;
  if (qword_27D08E2C8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v29 = sub_22372AC98();
  v30 = __swift_project_value_buffer(v29, qword_27D097070);

  v160 = v30;
  v31 = sub_22372AC88();
  v32 = sub_22372B268();

  v33 = os_log_type_enabled(v31, v32);
  v129 = v16;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v164 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_223623274(v151, a2, &v164);
    _os_log_impl(&dword_223620000, v31, v32, "Creating MUXResultCandidateContext objects for topLevelCandidateId: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  v36 = *(v143 + 64);
  v131 = v143 + 64;
  v37 = 1 << *(v143 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v16 = v38 & v36;
  v139 = qword_27D097140;
  v144 = qword_27D097110;
  v130 = (v37 + 63) >> 6;
  v159 = (v142 + 16);
  v162 = (v142 + 32);
  v150 = (v142 + 8);
  v133 = v136 + 16;
  v132 = v136 + 8;

  v39 = 0;
  *&v40 = 136315138;
  v138 = v40;
  *&v40 = 136315394;
  v137 = v40;
  v145 = a4;
  v157 = a2;
  v158 = v20;
  while (1)
  {
    if (!v16)
    {
      if (v130 <= v39 + 1)
      {
        v43 = v39 + 1;
      }

      else
      {
        v43 = v130;
      }

      v44 = v43 - 1;
      while (1)
      {
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v42 >= v130)
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E8, &unk_223730020);
          v81 = v149;
          (*(*(v80 - 8) + 56))(v149, 1, 1, v80);
          v57 = v81;
          v16 = 0;
          goto LABEL_20;
        }

        v16 = *(v131 + 8 * v42);
        ++v39;
        if (v16)
        {
          v41 = a4;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v41 = a4;
    v42 = v39;
LABEL_19:
    v45 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v46 = v45 | (v42 << 6);
    v47 = v143;
    v48 = v142;
    v49 = v141;
    v50 = v163;
    (*(v142 + 16))(v141, *(v143 + 48) + *(v142 + 72) * v46, v163);
    v51 = *(*(v47 + 56) + 8 * v46);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E8, &unk_223730020);
    v53 = *(v52 + 48);
    v54 = *(v48 + 32);
    v55 = v149;
    v54(v149, v49, v50);
    *&v55[v53] = v51;
    (*(*(v52 - 8) + 56))(v55, 0, 1, v52);
    v56 = v51;
    v44 = v42;
    v57 = v55;
    a4 = v41;
    a2 = v157;
    v20 = v158;
LABEL_20:
    v58 = v148;
    sub_2236B0250(v57, v148);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E8, &unk_223730020);
    if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
    {
    }

    v60 = *(v58 + *(v59 + 48));
    v154 = *v162;
    v155 = v44;
    v154(v20, v58, v163);
    v164 = [v60 resultCandidateId];
    v161 = sub_22372B6B8();
    v62 = v61;
    v63 = sub_22372A518();
    if (*(a4 + 16))
    {
      v65 = sub_2236261A0(v63, v64);
      v67 = v66;

      if (v67)
      {
        v68 = *(*(a4 + 56) + 4 * v65);
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (sub_22372AA18())
    {
      v68 = -1;
    }

    else
    {
      v69 = v20;
      v70 = v129;
      (*v159)(v129, v69, v163);
      v71 = sub_22372AC88();
      v72 = sub_22372B278();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v164 = v153;
        *v73 = v138;
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
        v74 = v163;
        v75 = sub_22372B6B8();
        v77 = v76;
        (*v150)(v70, v74);
        v78 = sub_223623274(v75, v77, &v164);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_223620000, v71, v72, "Encountered known userId: %s in speechPackage for which no VoiceIdScores are avaiable. This can lead to issues for User Selection. Defaulting to -1 for now.", v73, 0xCu);
        v79 = v153;
        __swift_destroy_boxed_opaque_existential_1Tm(v153);
        a2 = v157;
        MEMORY[0x223DE8A80](v79, -1, -1);
        MEMORY[0x223DE8A80](v73, -1, -1);
      }

      else
      {

        (*v150)(v70, v163);
      }

      v68 = -1;
      v20 = v158;
    }

LABEL_32:

    v82 = sub_22372AC88();
    v83 = sub_22372B268();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v164 = v85;
      *v84 = v137;
      *(v84 + 4) = sub_223623274(v161, v62, &v164);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_223623274(v151, a2, &v164);
      _os_log_impl(&dword_223620000, v82, v83, "Caching userCandidateId: %s from topLevelCandidateId: %s.", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v85, -1, -1);
      MEMORY[0x223DE8A80](v84, -1, -1);
    }

    v86 = *(v152 + v144);
    (*v159)(v156, v20, v163);
    type metadata accessor for MUXSpeechResultCandidateContext(0);
    v87 = swift_allocObject();
    *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage) = v60;

    v88 = v60;
    v89 = [v88 recognition];
    v153 = v86;
    if (v89)
    {
      v90 = sub_22372B318();
      if (*(v90 + 16))
      {
        v91 = v136;
        v92 = *(v136 + 16);
        v93 = v90 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
        v94 = v134;
        v140 = v62;
        v95 = v88;
        v96 = v68;
        v97 = v135;
        v92(v134, v93, v135);

        v98 = sub_223727628();
        v100 = v99;
        v101 = *(v91 + 8);
        v20 = v158;
        v102 = v97;
        v68 = v96;
        v88 = v95;
        v62 = v140;
        v101(v94, v102);
        goto LABEL_39;
      }
    }

    v100 = 0xE500000000000000;
    v98 = 0x3E6C696E3CLL;
LABEL_39:

    v103 = (v87 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance);
    *v103 = v98;
    v103[1] = v100;
    v104 = (v87 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
    v105 = v151;
    a2 = v157;
    *v104 = v151;
    v104[1] = a2;
    v106 = (v87 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
    v107 = v161;
    *v106 = v161;
    v106[1] = v62;
    *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
    v108 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
    v109 = sub_223727678();
    (*(*(v109 - 8) + 56))(v87 + v108, 1, 1, v109);
    v110 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
    v111 = sub_223727758();
    (*(*(v111 - 8) + 56))(v87 + v110, 1, 1, v111);
    *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
    *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
    *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
    *(v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
    v112 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    v113 = sub_22372AEE8();
    (*(*(v113 - 8) + 56))(v87 + v112, 1, 1, v113);
    v114 = v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
    *v114 = 0;
    *(v114 + 8) = 1;
    v115 = v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    v154((v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute), v156, v163);
    v116 = type metadata accessor for MUXUserAttributes(0);
    *(v115 + v116[5]) = v146;
    *(v115 + v116[6]) = v68;
    *(v115 + v116[8]) = v147;
    *(v115 + v116[7]) = 0;
    *(v115 + v116[9]) = 2;
    *(v115 + v116[10]) = 2;
    v117 = (v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
    *v117 = v105;
    v117[1] = a2;
    v118 = (v87 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    *v118 = v107;
    v118[1] = v62;

    sub_2236B4024(v87);

    v119 = sub_22372AC88();
    v120 = sub_22372B268();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v164 = v122;
      *v121 = v138;

      v123 = sub_2236B3588();
      v125 = v124;

      v126 = sub_223623274(v123, v125, &v164);

      *(v121 + 4) = v126;
      _os_log_impl(&dword_223620000, v119, v120, "Created %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      MEMORY[0x223DE8A80](v122, -1, -1);
      v127 = v121;
      v20 = v158;
      MEMORY[0x223DE8A80](v127, -1, -1);
    }

    else
    {
    }

    (*v150)(v20, v163);
    v39 = v155;
    a4 = v145;
  }
}

void sub_2236AD180(uint64_t a1)
{
  v31 = sub_2237290A8();
  v33 = v1;
  v32 = sub_223728E38();
  v2 = sub_223728E28();
  v3 = [v2 spIdKnownUserScores];

  if (!v3)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
  v4 = sub_22372AF58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F160, &qword_223730070);
  v5 = sub_22372B578();
  v6 = v5;
  v7 = 0;
  v9 = v4 + 64;
  v8 = *(v4 + 64);
  v35 = v4;
  v10 = 1 << *(v4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v34 = v5 + 64;
  if ((v11 & v8) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      v17 = v14 | (v7 << 6);
      v18 = (*(v35 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(*(v35 + 56) + 8 * v17);

      v22 = [v21 intValue];
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (v6[6] + 16 * v17);
      *v23 = v20;
      v23[1] = v19;
      *(v6[7] + 4 * v17) = v22;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v6[2] = v26;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_6:
  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v7 >= v13)
    {
      break;
    }

    v16 = *(v9 + 8 * v7);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  v27 = sub_223728E28();
  v28 = [v27 userIdentityClassification];

  v29 = sub_223728E28();
  sub_22372A418();
  v30 = sub_22372B308();

  sub_2236AC2F8(v31, v33, v32, v6, v28, v30);
}

uint64_t sub_2236AD404(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25[-1] - v6;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_27D097070);
  v9 = a1;
  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    v16 = sub_223729D38();
    v18 = sub_223623274(v16, v17, v25);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_223620000, v10, v11, "MUXBridge handling start request message: %@, requestId: %s", v12, 0x16u);
    sub_223626478(v13, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  sub_223728058();
  v19 = sub_223729EE8();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  v20 = qword_27D097118;
  swift_beginAccess();
  sub_2236719F4(v7, v2 + v20, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();

  v21 = sub_22372A768();
  sub_22369C49C(v21, v22);
}

void sub_2236AD6C8(uint64_t a1)
{
  type metadata accessor for MUXSpeechResultCandidateContext(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = v2;
    MEMORY[0x28223BE20](v2, v3);
    objc_allocWithZone(sub_223728A18());

    v5 = sub_223728978();
    if (v5)
    {
      v6 = v5;

      sub_2236B1FA4(1u);
      *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 1;

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v7 = sub_22372AC98();
      __swift_project_value_buffer(v7, qword_27D097070);
      v8 = v6;
      v9 = sub_22372AC88();
      v10 = sub_22372B268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&dword_223620000, v9, v10, "Posted AsrResultCandidateMessage: %@", v11, 0xCu);
        sub_223626478(v12, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v12, -1, -1);
        MEMORY[0x223DE8A80](v11, -1, -1);
      }

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_223729D88();
      __swift_destroy_boxed_opaque_existential_1Tm(v33);

      v14 = sub_22372A768();
      sub_22369D200(v14, v15, *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v16, v17, v18, v19, v31);
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v23 = sub_22372AC98();
      __swift_project_value_buffer(v23, qword_27D097070);

      v24 = sub_22372AC88();
      v25 = sub_22372B278();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33[0] = v27;
        *v26 = 136315138;
        v28 = sub_22372A768();
        v30 = sub_223623274(v28, v29, v33);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_223620000, v24, v25, "Failed to create AsrResultCandidateMessage for request: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x223DE8A80](v27, -1, -1);
        MEMORY[0x223DE8A80](v26, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_27D097070);
    v32 = sub_22372AC88();
    v21 = sub_22372B278();
    if (os_log_type_enabled(v32, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_223620000, v32, v21, "Cannot post an ASRResultCandidateMessage for a non ASR RC.", v22, 2u);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }
  }
}

uint64_t sub_2236ADB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v4, v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v29 - v17;
  v19 = *MEMORY[0x277D5CDD8];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_2237289D8();
  sub_22372A728();
  sub_223728998();
  sub_22372A778();
  v22 = sub_223727408();
  (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  sub_223728A08();
  sub_22372A768();
  sub_2237289F8();

  sub_223728988();
  v23 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);
  sub_2237289B8();
  v24 = a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v25 = v30;
  sub_22368509C(v24, v30);
  v26 = sub_22372A548();
  v27 = *(v26 - 8);
  (*(v27 + 32))(v10, v25, v26);
  (*(v27 + 56))(v10, 0, 1, v26);
  sub_2237289E8();
  v31 = 0;
  sub_2237289A8();
  return sub_2237289C8();
}

void sub_2236ADF14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v39 - v5;
  v7 = sub_223727678();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  swift_beginAccess();
  sub_223634890(a1 + v13, v6, &qword_27D08EEB0, qword_22372FF80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_223626478(v6, &qword_27D08EEB0, qword_22372FF80);
LABEL_4:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_27D097070);

    v15 = sub_22372AC88();
    v16 = sub_22372B288();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v40);
      _os_log_impl(&dword_223620000, v15, v16, "nlUserParses/nlResponseStatusCode not available for rcId: %s, cannot proceed with posting NLResultCandidateMessage.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DE8A80](v18, -1, -1);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }

    return;
  }

  v19 = (*(v8 + 32))(v11, v6, v7);
  MEMORY[0x28223BE20](v19, v20);
  v39[1] = v1;
  v39[-4] = v1;
  v39[-3] = a1;
  v39[-2] = v12;
  v39[-1] = v11;
  v21 = objc_allocWithZone(sub_223728738());

  v22 = sub_223728678();

  if (v22)
  {
    sub_2236B1FA4(2u);
    *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 2;
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_27D097070);
    v24 = v22;

    v25 = sub_22372AC88();
    v26 = sub_22372B268();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      v40[0] = v39[0];
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v22;
      *(v27 + 12) = 2080;
      v29 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId;
      v30 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
      v31 = *(v29 + 1);
      v32 = v24;
      *(v27 + 14) = sub_223623274(v30, v31, v40);
      _os_log_impl(&dword_223620000, v25, v26, "Posting NLResultCandidateMessage: %@ for rcID: %s.", v27, 0x16u);
      sub_223626478(v28, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v28, -1, -1);
      v33 = v39[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v39[0]);
      MEMORY[0x223DE8A80](v33, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    __swift_project_value_buffer(v34, qword_27D097070);

    v35 = sub_22372AC88();
    v36 = sub_22372B278();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v40);
      _os_log_impl(&dword_223620000, v35, v36, "NLResultCandidateMessage could not be created for rcId: %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x223DE8A80](v38, -1, -1);
      MEMORY[0x223DE8A80](v37, -1, -1);
    }
  }

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_2236AE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v41 = a3;
  v42 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v45 = &v40 - v7;
  v8 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v40 - v25;
  v27 = *MEMORY[0x277D5CDE0];
  v28 = sub_223729DE8();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26, v27, v28);
  (*(v29 + 56))(v26, 0, 1, v28);
  sub_2237286F8();
  sub_22372A728();
  sub_2237286A8();
  sub_22372A778();
  v30 = sub_223727408();
  (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
  sub_223728728();
  sub_22372A768();
  sub_223728718();
  v31 = v41;

  sub_223728688();

  sub_223728698();
  v32 = sub_223727678();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v18, v44, v32);
  (*(v33 + 56))(v18, 0, 1, v32);
  sub_2237286C8();
  v34 = v31 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v35 = v43;
  sub_22368509C(v34, v43);
  v36 = sub_22372A548();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v14, v35, v36);
  (*(v37 + 56))(v14, 0, 1, v36);
  sub_223728708();
  v46[0] = 0;
  sub_2237286B8();
  sub_2237286E8();
  v38 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  swift_beginAccess();
  sub_223634890(v31 + v38, v45, &qword_27D08F920, qword_223730410);
  return sub_2237286D8();
}

void sub_2236AEA78(uint64_t a1, unsigned int a2)
{
  v36 = a2;
  v4 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v31 - v10;
  v12 = sub_223729F08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22372A768();
  v34 = v18;
  v35 = v17;
  v19 = qword_27D097100;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v32 = v2;
  v20(v16, v2 + v19, v12);
  v33 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback);
  v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v21, v7);
  v22 = sub_22372A548();
  v23 = *(v22 - 8);
  (*(v23 + 32))(v11, v7, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  v24 = sub_22372AA48();

  sub_223626478(v11, &unk_27D08E990, &qword_22372FCF0);
  (*(v13 + 8))(v16, v12);
  if (v24)
  {
    v25 = sub_22372A748();
    aBlock[4] = sub_2236AEEA8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22365AC5C;
    aBlock[3] = &block_descriptor_2;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    [v25 handleCommand:v27 completion:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v28 = sub_22372AC98();
    __swift_project_value_buffer(v28, qword_27D097070);
    v27 = sub_22372AC88();
    v29 = sub_22372B278();
    if (os_log_type_enabled(v27, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_223620000, v27, v29, "Could not send VoiceIdentificationSignal", v30, 2u);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }
  }
}

void sub_2236AEEA8(uint64_t a1, void *a2)
{
  if (qword_281328E68 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B698);
  v4 = a2;
  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, oslog, v5, "Sent VoiceIdentificationSignal, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
  }
}

void sub_2236AF04C(void *a1)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = a1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_223620000, v4, v5, "MUXBridge received message: %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  sub_2236A7190();
}

uint64_t sub_2236AF230()
{
  v1 = qword_27D097100;
  v2 = sub_223729F08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097108));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097120));

  sub_223626478(v0 + qword_27D097118, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v0 + qword_27D097138, &unk_27D08E990, &qword_22372FCF0);
}

uint64_t MUXRequestProcessor.deinit()
{
  v0 = sub_22372A788();
  v1 = qword_27D097100;
  v2 = sub_223729F08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097108));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097120));

  sub_223626478(v0 + qword_27D097118, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v0 + qword_27D097138, &unk_27D08E990, &qword_22372FCF0);

  return v0;
}

uint64_t MUXRequestProcessor.__deallocating_deinit()
{
  MUXRequestProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2236AF4BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F318, &qword_223730068);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v23 - v16;
  sub_223729DA8();
  v18 = sub_223729DE8();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_2237285B8();
  sub_223729D98();
  sub_223728548();
  sub_223729D58();
  v19 = sub_223727408();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  sub_2237285D8();
  sub_223729D38();
  sub_2237285C8();
  sub_2237290A8();
  sub_223728568();
  sub_223728608();
  sub_223728588();
  sub_2237285F8();
  v20 = sub_22372A368();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  sub_223728558();

  sub_2237285A8();
  sub_223728578();
  v21 = a5;
  return sub_223728598();
}

unint64_t sub_2236AF76C(uint64_t a1)
{
  v2 = sub_22372B798();

  return sub_2236AF88C(a1, v2);
}

unint64_t sub_2236AF7B0(uint64_t a1)
{
  sub_22372A548();
  sub_2236B12D0(&unk_27D08F1B0, MEMORY[0x277D5D298], MEMORY[0x277D5D2A8]);
  v2 = sub_22372AF98();

  return sub_2236AF8F8(a1, v2);
}

unint64_t sub_2236AF848(uint64_t a1)
{
  v2 = sub_22372B418();

  return sub_2236AFAB8(a1, v2);
}

unint64_t sub_2236AF88C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2236AF8F8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22372A548();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2236B12D0(qword_27D08EC10, MEMORY[0x277D5D298], MEMORY[0x277D5D2B0]);
      v16 = sub_22372AFC8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2236AFAB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2236B0188(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DE7E70](v9, a1);
      sub_2236B01E4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t type metadata accessor for MUXRequestProcessor(uint64_t a1)
{
  result = qword_27D08F2D0;
  if (!qword_27D08F2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2236AFBDC(uint64_t a1)
{
  sub_223729F08();
  if (v1 <= 0x3F)
  {
    sub_2236B012C(319, &qword_28132B550, MEMORY[0x277D5CEA0]);
    if (v2 <= 0x3F)
    {
      sub_2236B012C(319, &qword_28132B4E0, MEMORY[0x277D5D298]);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_2236B012C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236B0250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E0, &qword_223730018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236B02C8(uint64_t a1)
{
  type metadata accessor for MUXSpeechResultCandidateContext(0);
  if (!swift_dynamicCastClass())
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_27D097070);
    v13 = sub_22372AC88();
    v14 = sub_22372B278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "Re trigger is only for Speech Requests.", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) - 2 < 2)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_27D097070);

    v3 = sub_22372AC88();
    v4 = sub_22372B278();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v8 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v9 = *(v7 + 8);

    v10 = sub_223623274(v8, v9, &v31);

    *(v5 + 4) = v10;
    v11 = "Encountered highly unusual situation where rcId: %s should have NL results but does not. File a radar to Siri Orchestration.";
LABEL_23:
    _os_log_impl(&dword_223620000, v3, v4, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
LABEL_24:

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState))
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_27D097070);

    v3 = sub_22372AC88();
    v4 = sub_22372B268();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v27 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v28 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v29 = *(v27 + 8);

    v30 = sub_223623274(v28, v29, &v31);

    *(v5 + 4) = v30;
    v11 = "NL has already been triggered for rcID: %s. Proceeding to wait for results.";
    goto LABEL_23;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_27D097070);

  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(v21 + 8);

    v24 = sub_223623274(v22, v23, &v31);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_223620000, v17, v18, "NL needs to be triggered for topLevelId: %s as it was never triggered.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  return 1;
}

void sub_2236B0770(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v38 = a6;
  v39 = a2;
  v40 = a3;
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_27D097070);

  v15 = sub_22372AC88();
  v16 = sub_22372B278();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = a1;
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_223623274(v40, a4, &v41);
    _os_log_impl(&dword_223620000, v15, v16, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    v21 = v19;
    a5 = v18;
    a1 = v17;
    MEMORY[0x223DE8A80](v21, -1, -1);
  }

  if (a5)
  {
    v22 = objc_allocWithZone(MEMORY[0x277D47208]);
    v23 = v38;

    v24 = a5;
    v25 = [v22 init];
    sub_2237273F8();
    sub_2237273B8();
    (*(v10 + 8))(v13, v9);
    v26 = sub_22372AFD8();

    [v25 setAceId_];

    v27 = v25;
    v28 = [a1 aceId];
    [v27 setRefId_];

    v29 = v39;
    [v27 setErrorCode_];
    v30 = v40;
    v31 = sub_22372AFD8();
    [v27 setReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F308, &unk_223730050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22372E090;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = a4;

    v33 = v27;
    sub_22368F690(inited);
    swift_setDeallocating();
    sub_223626478(inited + 32, &qword_27D08F1D8, &qword_22372FBD0);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22372AFD8();
    v36 = sub_22372AF48();

    v37 = [v34 initWithDomain:v35 code:v29 userInfo:v36];

    v24(v27, v37);
    sub_22363FFD8(v24, v23);
  }
}

void sub_2236B0BCC(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v63 = a1;
  v6 = sub_22372A548();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223729F08();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v55 - v16;
  v18 = qword_27D097100;
  swift_beginAccess();
  v19 = *(v10 + 16);
  v60 = v3;
  v19(v17, v3 + v18, v9);
  (*(v10 + 104))(v14, *MEMORY[0x277D5CF30], v9);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58], MEMORY[0x277D5CF68]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v65 == v64)
  {
    v20 = *(v10 + 8);
    v20(v14, v9);
    v20(v17, v9);
  }

  else
  {
    LODWORD(v59) = sub_22372B6E8();
    v21 = *(v10 + 8);
    v21(v14, v9);
    v21(v17, v9);

    if ((v59 & 1) == 0)
    {
      v52 = 0xD000000000000036;
      v53 = 0x8000000223735990;
      v54 = v63;
LABEL_14:
      sub_2236B0770(v54, -1, v52, v53, a2, a3);
      return;
    }
  }

  v22 = v63;
  v23 = [v63 userId];
  if (!v23)
  {
LABEL_13:
    v53 = 0x80000002237359D0;
    v54 = v22;
    v52 = 0xD000000000000020;
    goto LABEL_14;
  }

  v24 = v23;
  v25 = sub_22372AFE8();
  v27 = v26;

  v28 = [v22 processedAudioDuration];
  if (!v28)
  {

    goto LABEL_13;
  }

  v29 = v28;
  v30 = [v22 asrOutput];
  if (!v30)
  {

    goto LABEL_13;
  }

  v31 = v30;
  [v29 doubleValue];
  v32 = sub_22372B298();
  v59 = v29;
  v33 = v32;

  v34 = v61;
  sub_22372A508();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2F0, &unk_223730030);
  v58 = v31;
  v35 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F168, &unk_22372FB80) - 8);
  v36 = *(*v35 + 80);
  v56 = v25;
  v37 = (v36 + 32) & ~v36;
  v38 = swift_allocObject();
  v55 = xmmword_22372E090;
  *(v38 + 16) = xmmword_22372E090;
  v39 = v38 + v37;
  v40 = v35[14];
  v41 = v62;
  (*(v62 + 16))(v39, v34, v6);
  *(v39 + v40) = v33;
  v57 = v33;
  v42 = sub_223690860(v38);
  swift_setDeallocating();
  sub_223626478(v39, &qword_27D08F168, &unk_22372FB80);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2F8, &qword_223730040);
  inited = swift_initStackObject();
  *(inited + 16) = v55;
  *(inited + 32) = v56;
  v44 = inited + 32;
  *(inited + 40) = v27;
  v45 = v34;
  *(inited + 48) = 100;
  v46 = sub_223690A48(inited);
  swift_setDeallocating();
  sub_223626478(v44, &qword_27D08F300, &qword_223730048);
  v47 = sub_22372A418();
  sub_2236AC2F8(48, 0xE100000000000000, v42, v46, 3, v47);

  v48 = sub_2236B473C(48, 0xE100000000000000, v34);
  if (!v48)
  {
    sub_2236B0770(v63, -1, 0xD000000000000026, 0x8000000223735A00, a2, a3);

    goto LABEL_16;
  }

  v49 = v48;
  v50 = v57;
  v51 = v58;
  sub_2236AD6C8(v48);
  sub_2236A6948(v49);
  if (a2)
  {
    a2(0, 0);

LABEL_16:

    (*(v41 + 8))(v45, v6);
    return;
  }

  (*(v41 + 8))(v45, v6);
}

uint64_t sub_2236B12D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236B138C(int a1)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19[-v10];
  v12 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v12, v8);
  v13 = sub_22372A548();
  (*(*(v13 - 8) + 32))(v11, v8, v13);
  v14 = *(v12 + v4[10]);
  v15 = *(v12 + v4[9]);
  v16 = *(v12 + v4[11]);
  v17 = *(v12 + v4[12]);
  *&v11[v4[7]] = *(v12 + v4[7]);
  *&v11[v4[8]] = a1;
  *&v11[v4[10]] = v14;
  v11[v4[9]] = v15;
  v11[v4[11]] = v16;
  v11[v4[12]] = v17;
  swift_beginAccess();
  sub_2236B51B8(v11, v12);
  return swift_endAccess();
}

uint64_t sub_2236B1508(uint64_t a1)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20[-v10];
  v12 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v12, v8);
  v13 = sub_22372A548();
  (*(*(v13 - 8) + 32))(v11, v8, v13);
  v14 = *(v12 + v4[8]);
  v15 = *(v12 + v4[10]);
  v16 = *(v12 + v4[9]);
  v17 = *(v12 + v4[11]);
  v18 = *(v12 + v4[12]);
  *&v11[v4[7]] = a1;
  *&v11[v4[8]] = v14;
  *&v11[v4[10]] = v15;
  v11[v4[9]] = v16;
  v11[v4[11]] = v17;
  v11[v4[12]] = v18;
  swift_beginAccess();
  sub_2236B51B8(v11, v12);
  return swift_endAccess();
}

uint64_t sub_2236B1684(int a1)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19[-v10];
  v12 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v12, v8);
  v13 = sub_22372A548();
  (*(*(v13 - 8) + 32))(v11, v8, v13);
  v14 = *(v12 + v4[8]);
  v15 = *(v12 + v4[9]);
  v16 = *(v12 + v4[11]);
  v17 = *(v12 + v4[12]);
  *&v11[v4[7]] = *(v12 + v4[7]);
  *&v11[v4[8]] = v14;
  *&v11[v4[10]] = a1;
  v11[v4[9]] = v15;
  v11[v4[11]] = v16;
  v11[v4[12]] = v17;
  swift_beginAccess();
  sub_2236B51B8(v11, v12);
  return swift_endAccess();
}

uint64_t sub_2236B1800(char a1)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19[-v10];
  v12 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v12, v8);
  v13 = sub_22372A548();
  (*(*(v13 - 8) + 32))(v11, v8, v13);
  v14 = *(v12 + v4[8]);
  v15 = *(v12 + v4[10]);
  v16 = *(v12 + v4[11]);
  v17 = *(v12 + v4[12]);
  *&v11[v4[7]] = *(v12 + v4[7]);
  *&v11[v4[8]] = v14;
  *&v11[v4[10]] = v15;
  v11[v4[9]] = a1;
  v11[v4[11]] = v16;
  v11[v4[12]] = v17;
  swift_beginAccess();
  sub_2236B51B8(v11, v12);
  return swift_endAccess();
}

uint64_t sub_2236B197C(char a1)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19[-v10];
  v12 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v12, v8);
  v13 = sub_22372A548();
  (*(*(v13 - 8) + 32))(v11, v8, v13);
  v14 = *(v12 + v4[8]);
  v15 = *(v12 + v4[10]);
  v16 = *(v12 + v4[9]);
  v17 = *(v12 + v4[12]);
  *&v11[v4[7]] = *(v12 + v4[7]);
  *&v11[v4[8]] = v14;
  *&v11[v4[10]] = v15;
  v11[v4[9]] = v16;
  v11[v4[11]] = a1;
  v11[v4[12]] = v17;
  swift_beginAccess();
  sub_2236B51B8(v11, v12);
  return swift_endAccess();
}

uint64_t sub_2236B1AF8(char a1)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  v4 = (v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19[-v10];
  v12 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v12, v8);
  v13 = sub_22372A548();
  (*(*(v13 - 8) + 32))(v11, v8, v13);
  v14 = *(v12 + v4[8]);
  v15 = *(v12 + v4[10]);
  v16 = *(v12 + v4[9]);
  v17 = *(v12 + v4[11]);
  *&v11[v4[7]] = *(v12 + v4[7]);
  *&v11[v4[8]] = v14;
  *&v11[v4[10]] = v15;
  v11[v4[9]] = v16;
  v11[v4[11]] = v17;
  v11[v4[12]] = a1;
  swift_beginAccess();
  sub_2236B51B8(v11, v12);
  return swift_endAccess();
}

uint64_t sub_2236B1C80()
{
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236B1D54(uint64_t a1)
{
  sub_22372B078();
}

uint64_t sub_2236B1E14(uint64_t a1)
{
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

unint64_t sub_2236B1EE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2236B50F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2236B1F14(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646574;
  v3 = 0x616974696E496C6ELL;
  v4 = 0x80000002237342E0;
  v5 = 0x657A696C616E6966;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000018;
    v2 = 0x80000002237342B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_2236B1FA4(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);

  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315906;
    v8 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
    v9 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

    v10 = sub_223623274(v8, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v12 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v13 = sub_223623274(v11, v12, &v26);

    *(v6 + 14) = v13;
    v14 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState);
    *(v6 + 22) = 2080;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v16 = 0xD000000000000014;
        v15 = 0x80000002237342E0;
      }

      else
      {
        v16 = 0x657A696C616E6966;
        v15 = 0xE900000000000064;
      }
    }

    else if (v14)
    {
      v16 = 0x616974696E496C6ELL;
      v15 = 0xEB00000000646574;
    }

    else
    {
      v15 = 0x80000002237342B0;
      v16 = 0xD000000000000018;
    }

    v17 = sub_223623274(v16, v15, &v26);

    *(v6 + 24) = v17;
    *(v6 + 32) = 2080;
    v18 = 0x80000002237342E0;
    v19 = 0x657A696C616E6966;
    if (a1 == 2)
    {
      v19 = 0xD000000000000014;
    }

    else
    {
      v18 = 0xE900000000000064;
    }

    v20 = 0x80000002237342B0;
    v21 = 0xD000000000000018;
    if (a1)
    {
      v21 = 0x616974696E496C6ELL;
      v20 = 0xEB00000000646574;
    }

    if (a1 <= 1u)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    if (a1 <= 1u)
    {
      v23 = v20;
    }

    else
    {
      v23 = v18;
    }

    v24 = sub_223623274(v22, v23, &v26);

    *(v6 + 34) = v24;
    _os_log_impl(&dword_223620000, oslog, v5, "MUX: candidateState for topLevelCandidateId %s, userLevelCandidateId %s changed from %s to %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }
}

uint64_t sub_2236B22BC()
{
  v1 = v0;
  v2 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_22372B458();
  v16 = v14;
  v17 = v15;
  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736230);
  v6 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v7 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v6, v7);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x80000002237361B0);
  v8 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v9 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v8, v9);

  MEMORY[0x223DE7AD0](0xD00000000000001ALL, 0x8000000223736250);
  v10 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v1 + v10, v5);
  v11 = sub_2236B5380();
  MEMORY[0x223DE7AD0](v11);

  sub_223685354(v5);
  MEMORY[0x223DE7AD0](0xD000000000000012, 0x8000000223736270);
  v13[7] = *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState);
  sub_22372B528();
  MEMORY[0x223DE7AD0](34, 0xE100000000000000);
  return v16;
}

uint64_t sub_2236B24B0()
{
  sub_223685354(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute);

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode, &qword_27D08EEB0, qword_22372FF80);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult, &qword_27D08F920, qword_223730410);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime, &qword_27D08EE88, &qword_223730060);

  return swift_deallocClassInstance();
}

void sub_2236B25D4(uint64_t a1)
{
  type metadata accessor for MUXUserAttributes(319);
  if (v1 <= 0x3F)
  {
    sub_2236B279C(319, &qword_27D08F330, MEMORY[0x277D5DBC0]);
    if (v2 <= 0x3F)
    {
      sub_2236B279C(319, &qword_27D08F338, MEMORY[0x277D5DD70]);
      if (v3 <= 0x3F)
      {
        sub_2236B279C(319, &qword_27D08F340, MEMORY[0x277D851E0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2236B279C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2236B2840()
{
}

uint64_t sub_2236B2880()
{
  sub_223685354(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute);

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode, &qword_27D08EEB0, qword_22372FF80);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult, &qword_27D08F920, qword_223730410);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime, &qword_27D08EE88, &qword_223730060);

  return v0;
}

uint64_t sub_2236B2994()
{
  v1 = type metadata accessor for MUXUserAttributes(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22372A548();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_22372B458();
  v23 = v21;
  v24 = v22;
  MEMORY[0x223DE7AD0](0x3A644972657375, 0xE700000000000000);
  v11 = v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v11, v5);
  (*(v7 + 32))(v10, v5, v6);
  sub_2236B5160();
  v12 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v12);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x223DE7AD0](0xD000000000000016, 0x8000000223736190);
  v13 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v14 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v13, v14);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x80000002237361B0);
  v15 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v16 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v15, v16);

  MEMORY[0x223DE7AD0](0xD000000000000010, 0x80000002237361D0);
  LODWORD(v20) = *(v11 + v2[8]);
  v17 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v17);

  MEMORY[0x223DE7AD0](0xD000000000000019, 0x80000002237361F0);
  v20 = *(v11 + v2[7]);
  type metadata accessor for AFUserIdentityClassfication(0);
  sub_22372B528();
  MEMORY[0x223DE7AD0](0xD000000000000015, 0x8000000223736210);
  LODWORD(v20) = *(v11 + v2[10]);
  v18 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v18);

  return v23;
}

uint64_t sub_2236B2D5C()
{
  v1 = type metadata accessor for MUXUserAttributes(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22372A548();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_22372B458();
  v23 = v21;
  v24 = v22;
  MEMORY[0x223DE7AD0](0x3A644972657375, 0xE700000000000000);
  v11 = v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v11, v5);
  (*(v7 + 32))(v10, v5, v6);
  sub_2236B5160();
  v12 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v12);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x223DE7AD0](0x617265747475202CLL, 0xEC0000003A65636ELL);
  MEMORY[0x223DE7AD0](*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges26MUXTextTRPCandidateContext_utterance), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges26MUXTextTRPCandidateContext_utterance + 8));
  MEMORY[0x223DE7AD0](0xD000000000000016, 0x8000000223736190);
  v13 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v14 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v13, v14);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x80000002237361B0);
  v15 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v16 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v15, v16);

  MEMORY[0x223DE7AD0](0xD000000000000010, 0x80000002237361D0);
  LODWORD(v20) = *(v11 + v2[8]);
  v17 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v17);

  MEMORY[0x223DE7AD0](0xD000000000000019, 0x80000002237361F0);
  v20 = *(v11 + v2[7]);
  type metadata accessor for AFUserIdentityClassfication(0);
  sub_22372B528();
  MEMORY[0x223DE7AD0](0xD000000000000015, 0x8000000223736210);
  LODWORD(v20) = *(v11 + v2[10]);
  v18 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v18);

  return v23;
}

uint64_t sub_2236B3158()
{
  sub_2236B2880();

  return swift_deallocClassInstance();
}

uint64_t sub_2236B3234()
{
  v1 = v0;
  BYTE8(v4) = 0;
  sub_22372B458();
  v2 = sub_2236B22BC();
  MEMORY[0x223DE7AD0](v2);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x8000000223736130);
  MEMORY[0x223DE7AD0](*(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId), *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8));
  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736150);
  MEMORY[0x223DE7AD0](*(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8));
  MEMORY[0x223DE7AD0](0xD000000000000013, 0x8000000223736170);
  *&v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState);
  sub_22372B528();
  MEMORY[0x223DE7AD0](34, 0xE100000000000000);
  return *(&v4 + 1);
}

uint64_t sub_2236B3374()
{
}

uint64_t sub_2236B33BC()
{
  sub_223685354(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute);

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode, &qword_27D08EEB0, qword_22372FF80);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult, &qword_27D08F920, qword_223730410);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime, &qword_27D08EE88, &qword_223730060);

  return v0;
}

uint64_t sub_2236B34BC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

unint64_t sub_2236B3588()
{
  sub_22372B458();

  v1 = sub_2236B3234();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0x617265747475202CLL, 0xED0000203A65636ELL);
  MEMORY[0x223DE7AD0](*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance + 8));
  MEMORY[0x223DE7AD0](93, 0xE100000000000000);
  return 0xD000000000000020;
}

uint64_t sub_2236B3660()
{
}

uint64_t sub_2236B36A4()
{
  sub_2236B33BC();
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);

  return swift_deallocClassInstance();
}

uint64_t sub_2236B377C()
{
  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD000000000000023, 0x80000002237360D0);
  v1 = sub_2236B3234();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0x617265747475202CLL, 0xED0000203A65636ELL);
  MEMORY[0x223DE7AD0](*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges34MUXTextBasedResultCandidateContext_utterance), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges34MUXTextBasedResultCandidateContext_utterance + 8));
  MEMORY[0x223DE7AD0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2236B388C(void (*a1)(void), void *a2)
{
  a1();

  return swift_deallocClassInstance();
}

unint64_t sub_2236B3970()
{
  sub_22372B458();

  v0 = sub_2236B3234();
  MEMORY[0x223DE7AD0](v0);

  MEMORY[0x223DE7AD0](93, 0xE100000000000000);
  return 0xD000000000000026;
}

uint64_t sub_2236B3A00()
{
}

uint64_t sub_2236B3A44()
{
  sub_2236B33BC();

  return swift_deallocClassInstance();
}

void sub_2236B3B58(void *a1)
{
  if (a1)
  {
    oslog = *(v1 + 72);
    *(v1 + 72) = a1;
    v2 = a1;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_27D097070);
    oslog = sub_22372AC88();
    v4 = sub_22372B278();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_223623274(0xD000000000000028, 0x8000000223736290, &v8);
      _os_log_impl(&dword_223620000, oslog, v4, "%s: Ignoring empty voice id score card.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x223DE8A80](v6, -1, -1);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }
}

uint64_t sub_2236B3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v9 = sub_22372A548();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - v16;
  v18 = *(v10 + 16);
  v18(&v34 - v16, a3, v9);
  type metadata accessor for MUXTextTRPCandidateContext(0);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC24RequestDispatcherBridges26MUXTextTRPCandidateContext_utterance);
  *v20 = a1;
  v20[1] = a2;
  v18(v14, v17, v9);

  LODWORD(a2) = sub_22372A418();
  (*(v10 + 8))(v17, v9);
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = 0;
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = 0;
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
  v21 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  v22 = sub_223727678();
  (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  v24 = sub_223727758();
  (*(*(v24 - 8) + 56))(v19 + v23, 1, 1, v24);
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
  *(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
  v26 = sub_22372AEE8();
  (*(*(v26 - 8) + 56))(v19 + v25, 1, 1, v26);
  v27 = v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  (*(v10 + 32))(v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v14, v9);
  v29 = type metadata accessor for MUXUserAttributes(0);
  *(v28 + v29[5]) = 4;
  *(v28 + v29[6]) = 100;
  *(v28 + v29[8]) = a2;
  *(v28 + v29[7]) = 0;
  *(v28 + v29[9]) = 2;
  *(v28 + v29[10]) = 2;
  v30 = (v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v31 = v34;
  *v30 = v34;
  v30[1] = a5;
  v32 = (v19 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  *v32 = v31;
  v32[1] = a5;
  swift_bridgeObjectRetain_n();
  sub_2236B4024(v19);
  return v19;
}

void sub_2236B4024(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MUXResultCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId;
    v6 = &OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId;
LABEL_5:
    v7 = (v4 + *v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = (v4 + *v5);
    v12 = *v10;
    v11 = v10[1];

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = *(v1 + 48);
    *(v1 + 48) = 0x8000000000000000;
    sub_22368D8DC(a1, v9, v8, isUniquelyReferenced_nonNull_native);

    *(v1 + 48) = v37[0];
    swift_endAccess();
    swift_beginAccess();
    v14 = *(v1 + 56);
    if (*(v14 + 16))
    {

      v15 = sub_2236261A0(v12, v11);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v38 = v17;

    MEMORY[0x223DE7B50](v18);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22372B148();
    }

    sub_22372B158();
    v19 = v38;
    swift_beginAccess();

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + 56);
    *(v2 + 56) = 0x8000000000000000;
    sub_22368D8B4(v19, v12, v11, v20);

    *(v2 + 56) = v36;
    swift_endAccess();
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v21 = sub_22372AC98();
    __swift_project_value_buffer(v21, qword_27D097070);

    v22 = sub_22372AC88();
    v23 = sub_22372B268();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136315394;
      v26 = sub_223623274(v9, v8, v37);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2080;
      v27 = sub_223623274(v12, v11, v37);

      *(v24 + 14) = v27;
      _os_log_impl(&dword_223620000, v22, v23, "Successfully cache candidateContext for userLevelCandidateId: %s and topLevelCandidateId: %s.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v25, -1, -1);
      MEMORY[0x223DE8A80](v24, -1, -1);
    }

    else
    {
    }

    return;
  }

  type metadata accessor for MUXTRPCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId;
    v6 = &OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    goto LABEL_5;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  __swift_project_value_buffer(v28, qword_27D097070);

  oslog = sub_22372AC88();
  v29 = sub_22372B278();

  if (os_log_type_enabled(oslog, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v30 = 136315138;
    v32 = (*(*a1 + 472))();
    v34 = sub_223623274(v32, v33, v39);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_223620000, oslog, v29, "Unable to find userLevelCandidateId in candidateContext %s.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236B4574(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {

    v7 = sub_2236261A0(a1, a2);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      v14 = v6;
      if (v9 >> 62)
      {
LABEL_23:
        v10 = sub_22372B558();
        if (v10)
        {
LABEL_5:
          v11 = 0;
          do
          {
            v12 = v11;
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DE7ED0](v12, v9);
                v11 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
                  goto LABEL_21;
                }
              }

              else
              {
                if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_22;
                }

                v11 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
LABEL_21:
                  __break(1u);
LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }
              }

              type metadata accessor for MUXResultCandidateContext(0);
              if (swift_dynamicCastClass())
              {
                break;
              }

              ++v12;
              if (v11 == v10)
              {
                goto LABEL_24;
              }
            }

            MEMORY[0x223DE7B50]();
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22372B148();
            }

            sub_22372B158();
            v6 = v14;
          }

          while (v11 != v10);
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_24:
  }

  return v6;
}

void sub_2236B477C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22372A548();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v3 + 64);
  *(v3 + 64) = 0x8000000000000000;
  sub_22368D8DC(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 64) = v36;
  swift_endAccess();
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_27D097070);

  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v20 = 136315650;
    v33 = a1;
    v21 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v22 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v23 = sub_223623274(v21, v22, &v36);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    swift_beginAccess();
    v25 = a3 + v24;
    v26 = v35;
    sub_22368509C(v25, v35);
    (*(v19 + 32))(v14, v26, v10);
    sub_2236B5160();
    v27 = sub_22372B6B8();
    v29 = v28;
    (*(v19 + 8))(v14, v10);
    v30 = sub_223623274(v27, v29, &v36);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_223623274(v33, a2, &v36);
    _os_log_impl(&dword_223620000, v17, v18, "Successfully cache selected MUXCandidateContext for userLevelCandidateId: %s, userId: %s, and topLevelCandidateId: %s.", v20, 0x20u);
    v31 = v34;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v20, -1, -1);
  }
}

uint64_t sub_2236B4B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t a5, uint64_t (*a6)(unint64_t))
{
  swift_beginAccess();
  v12 = *(v6 + 56);
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_2236261A0(a1, a2);
  if ((v14 & 1) == 0)
  {

    return 0;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v24 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
LABEL_24:
    v16 = sub_22372B558();
    v22 = a5;
    v23 = a6;
    if (v16)
    {
LABEL_5:
      a5 = 0;
      a6 = (v15 & 0xC000000000000001);
      do
      {
        v17 = a5;
        while (1)
        {
          if (a6)
          {
            MEMORY[0x223DE7ED0](v17, v15);
            a5 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            a5 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          a4(0);
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v17;
          if (a5 == v16)
          {
            goto LABEL_25;
          }
        }

        MEMORY[0x223DE7B50]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22372B148();
        }

        sub_22372B158();
      }

      while (a5 != v16);
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = a5;
    v23 = a6;
    if (v16)
    {
      goto LABEL_5;
    }
  }

LABEL_25:

  MEMORY[0x28223BE20](v19, v20);
  v21 = v23(v22);

  return v21;
}

uint64_t sub_2236B4DA0(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for MUXUserAttributes(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v7 + v8, v6);
  v9 = sub_22372A538();
  v10 = sub_22372A548();
  (*(*(v10 - 8) + 8))(v6, v10);
  return v9 & 1;
}

uint64_t sub_2236B4EA0()
{
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionId;
  v2 = sub_223727408();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionUserId;
  v4 = sub_22372A548();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2236B4FB4(uint64_t a1)
{
  result = sub_223727408();
  if (v2 <= 0x3F)
  {
    result = sub_22372A548();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2236B50A0()
{
  result = qword_27D08F3D8;
  if (!qword_27D08F3D8)
  {
    result = swift_getWitnessTable(byte_2237303B4, &type metadata for MUXCandidateContextState, v0, v1);
    atomic_store(result, &qword_27D08F3D8);
  }

  return result;
}

unint64_t sub_2236B50F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22372B5F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2236B5160()
{
  result = qword_28132B4E8;
  if (!qword_28132B4E8)
  {
    v3 = sub_22372A548();
    result = swift_getWitnessTable(MEMORY[0x277D5D2C0], v3, v0, v1);
    atomic_store(result, &qword_28132B4E8);
  }

  return result;
}

uint64_t sub_2236B51B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUXUserAttributes(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MUXUserAttributes(uint64_t a1)
{
  result = qword_281329890;
  if (!qword_281329890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2236B52D0(uint64_t a1)
{
  sub_22372A548();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AFUserIdentityClassfication(319);
    if (v2 <= 0x3F)
    {
      sub_223671CDC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2236B5380()
{
  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD000000000000024, 0x80000002237362C0);
  sub_22372A548();
  sub_2236B5160();
  v1 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0xD000000000000011, 0x80000002237362F0);
  v2 = type metadata accessor for MUXUserAttributes(0);
  type metadata accessor for AFUserIdentityClassfication(0);
  sub_22372B528();
  MEMORY[0x223DE7AD0](0x496563696F76202CLL, 0xEF3A65726F635344);
  v3 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v3);

  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736310);
  v4 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v4);

  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736330);
  if (*(v0 + *(v2 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DE7AD0](v5, v6);

  MEMORY[0x223DE7AD0](0xD00000000000001BLL, 0x8000000223736350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E0, &unk_223730480);
  v7 = sub_22372B038();
  MEMORY[0x223DE7AD0](v7);

  MEMORY[0x223DE7AD0](0xD00000000000001FLL, 0x8000000223736370);
  v8 = sub_22372B038();
  MEMORY[0x223DE7AD0](v8);

  MEMORY[0x223DE7AD0](23840, 0xE200000000000000);
  return 0;
}

void sub_2236B5670(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, void *a6@<X5>, void *a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, void *a11)
{
  v57 = a4;
  v58 = a7;
  v59 = a9;
  v55 = a10;
  v56 = a11;
  v17 = sub_22372A3C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v54 - v24;
  if (sub_223724934(a3, a2))
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_27D097070);
    v27 = sub_22372AC88();
    v28 = sub_22372B288();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_223620000, v27, v28, "MUX: Pre NL User Selection: Siri is prompting, picking user from previous request.", v29, 2u);
      MEMORY[0x223DE8A80](v29, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    (*(v18 + 104))(v21, *MEMORY[0x277D5D1C0], v17);
    sub_22372A478();
    (*(v18 + 8))(v21, v17);
    if (v61)
    {
      v30 = sub_22372A548();
      v31 = swift_dynamicCast();
      (*(*(v30 - 8) + 56))(v25, v31 ^ 1u, 1, v30);
    }

    else
    {
      sub_223626478(v60, &unk_27D08F750, &qword_22372C960);
      v40 = sub_22372A548();
      (*(*(v40 - 8) + 56))(v25, 1, 1, v40);
    }

    sub_223721974(v25, a5, a6, v58, v57, v59);
    sub_223626478(v25, &unk_27D08E990, &qword_22372FCF0);
  }

  else if (a1)
  {
    v32 = qword_27D08E2C8;
    v57 = a1;
    if (a8)
    {
      if (v32 != -1)
      {
        swift_once();
      }

      v33 = sub_22372AC98();
      __swift_project_value_buffer(v33, qword_27D097070);
      v57 = v57;
      v34 = sub_22372AC88();
      v35 = sub_22372B288();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v57;
        *(v36 + 4) = v57;
        *v37 = a1;
        v39 = v38;
        _os_log_impl(&dword_223620000, v34, v35, "MUX: Pre NL User Selection: Using VoiceIdScoreCard: %@ for pre NL user selection.", v36, 0xCu);
        sub_223626478(v37, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v37, -1, -1);
        MEMORY[0x223DE8A80](v36, -1, -1);
      }
    }

    else
    {
      if (v32 != -1)
      {
        swift_once();
      }

      v49 = sub_22372AC98();
      __swift_project_value_buffer(v49, qword_27D097070);
      v50 = sub_22372AC88();
      v51 = sub_22372B288();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_223620000, v50, v51, "MUX: RMV not enabled. Selecting user from synthetic VoiceIDScoreCard.", v52, 2u);
        MEMORY[0x223DE8A80](v52, -1, -1);
      }
    }

    sub_223721204(v57, v58, v55, v56, v59);
    v53 = v57;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v41 = sub_22372AC98();
    __swift_project_value_buffer(v41, qword_27D097070);
    v42 = sub_22372AC88();
    v43 = sub_22372B278();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_223620000, v42, v43, "MUX: VoiceIDScoreCard must not be nil during pre NL user selection", v44, 2u);
      MEMORY[0x223DE8A80](v44, -1, -1);
    }

    v45 = type metadata accessor for MUXUserAttributes(0);
    v46 = *(*(v45 - 8) + 56);
    v47 = v45;
    v48 = v59;

    v46(v48, 1, 1, v47);
  }
}

void sub_2236B5CE8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void (*a8)(char *, char *, uint64_t)@<X7>, char *a9@<X8>, void *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, void *a15)
{
  v83 = a7;
  v84 = a5;
  v85 = a1;
  v86 = a3;
  v88 = a15;
  v89 = a6;
  v87 = a14;
  v18 = a13;
  v81 = a8;
  v82 = a12;
  v79 = a10;
  v80 = a11;
  v19 = sub_22372A3C8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v77 = &v75[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v78 = &v75[-v25];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v26 = sub_22372AC98();
  v27 = __swift_project_value_buffer(v26, qword_27D097070);
  v28 = a4;
  v29 = sub_22372AC88();
  v30 = sub_22372B288();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v90 = v27;
    v76 = a13;
    v32 = v31;
    v33 = v20;
    v34 = a2;
    v35 = v19;
    v36 = a9;
    v37 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v28;
    *v37 = a4;
    v38 = v28;
    _os_log_impl(&dword_223620000, v29, v30, "MUX: VoiceIdScoreCard used during post NL user selection: %@", v32, 0xCu);
    sub_223626478(v37, &unk_27D08F250, &unk_22372D1D0);
    v39 = v37;
    a9 = v36;
    v19 = v35;
    a2 = v34;
    v20 = v33;
    MEMORY[0x223DE8A80](v39, -1, -1);
    v40 = v32;
    v18 = v76;
    MEMORY[0x223DE8A80](v40, -1, -1);
  }

  if (a4)
  {
    v90 = v28;
    if (v18)
    {

      v41 = sub_22372AC88();
      v42 = sub_22372B268();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v91[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_223623274(v85, a2, v91);
        _os_log_impl(&dword_223620000, v41, v42, "MUX: Post NL User Selection initiated for rcId: %s.", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x223DE8A80](v44, -1, -1);
        MEMORY[0x223DE8A80](v43, -1, -1);
      }

      v45 = sub_22369E308(v86);
      if (v46)
      {
        v47 = v45;
        v48 = v46;

        v49 = sub_22372AC88();
        v50 = sub_22372B288();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v91[0] = v52;
          *v51 = 136315394;
          *(v51 + 4) = sub_223623274(v47, v48, v91);
          *(v51 + 12) = 2080;
          *(v51 + 14) = sub_223623274(v85, a2, v91);
          _os_log_impl(&dword_223620000, v49, v50, "MUX: Post NL User Selection: Found name : %s in NLXUserParses of rc id: %s, proceeding to select user based on stated identity.", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v52, -1, -1);
          MEMORY[0x223DE8A80](v51, -1, -1);
        }

        sub_223722F40(v47, v48, v84, v90, v89, v87, v88, a9);

        return;
      }

      if (sub_223724934(v83, v82))
      {

        v62 = sub_22372AC88();
        v63 = sub_22372B288();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v91[0] = v65;
          *v64 = 136315138;
          *(v64 + 4) = sub_223623274(v85, a2, v91);
          _os_log_impl(&dword_223620000, v62, v63, "MUX: Post NL User Selection: Found Siri is prompting for rc id: %s, trying to pick the same user who was picked during previous request", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          MEMORY[0x223DE8A80](v65, -1, -1);
          MEMORY[0x223DE8A80](v64, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1(v83, v83[3]);
        v66 = v77;
        (*(v20 + 104))(v77, *MEMORY[0x277D5D1C0], v19);
        sub_22372A478();
        (*(v20 + 8))(v66, v19);
        if (v91[3])
        {
          v67 = sub_22372A548();
          v68 = v78;
          v69 = swift_dynamicCast();
          (*(*(v67 - 8) + 56))(v68, v69 ^ 1u, 1, v67);
        }

        else
        {
          sub_223626478(v91, &unk_27D08F750, &qword_22372C960);
          v74 = sub_22372A548();
          v68 = v78;
          (*(*(v74 - 8) + 56))(v78, 1, 1, v74);
        }

        sub_223721974(v68, v81, v79, v89, v80, a9);

        sub_223626478(v68, &unk_27D08E990, &qword_22372FCF0);
        return;
      }

      v90 = v90;
      v58 = sub_22372AC88();
      v70 = sub_22372B288();

      if (!os_log_type_enabled(v58, v70))
      {
        goto LABEL_23;
      }

      v60 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v60 = 138412290;
      v72 = v90;
      *(v60 + 4) = v90;
      *v71 = a4;
      v73 = v72;
      _os_log_impl(&dword_223620000, v58, v70, "MUX: Post NL User Selection: Using VoiceIdScoreCard: %@ for Post NL user selection.", v60, 0xCu);
      sub_223626478(v71, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v71, -1, -1);
    }

    else
    {
      v58 = sub_22372AC88();
      v59 = sub_22372B288();
      if (!os_log_type_enabled(v58, v59))
      {
LABEL_23:

        sub_223721204(v90, v89, v87, v88, a9);
        v61 = v90;

        return;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_223620000, v58, v59, "MUX: RMV not enabled. Selecting user from synthetic VoiceIDScoreCard.", v60, 2u);
    }

    MEMORY[0x223DE8A80](v60, -1, -1);
    goto LABEL_23;
  }

  v53 = sub_22372AC88();
  v54 = sub_22372B278();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_223620000, v53, v54, "MUX: VoiceIDScoreCard must not be nil during post NL user selection", v55, 2u);
    MEMORY[0x223DE8A80](v55, -1, -1);
  }

  v56 = type metadata accessor for MUXUserAttributes(0);
  v57 = *(*(v56 - 8) + 56);

  v57(a9, 1, 1, v56);
}

uint64_t EndRemoteIntelligenceSessionMessage.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  sub_223623934(a1, v4);
  v2 = RemoteIntelligenceSessionMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t EndRemoteIntelligenceSessionMessage.init(from:)(void *a1)
{
  sub_223623934(a1, v4);
  v2 = RemoteIntelligenceSessionMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t EndRemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  return v0;
}

uint64_t EndRemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndRemoteIntelligenceSessionMessage(uint64_t a1)
{
  result = qword_281329078;
  if (!qword_281329078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2236B69B8()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_2236B6A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002237364C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_2236B6AE8(uint64_t a1)
{
  v2 = sub_2236B7968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B6B24(uint64_t a1)
{
  v2 = sub_2236B7968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartRemoteIntelligenceSessionMessage.languageCode.getter()
{
  v1 = *(v0 + qword_28132B728);

  return v1;
}

uint64_t StartRemoteIntelligenceSessionMessage.remoteIntelligenceVersion.getter()
{
  v1 = *(v0 + qword_28132B730);

  return v1;
}

uint64_t StartRemoteIntelligenceSessionMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = *v1;
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0);
  v6 = (started - 8);
  MEMORY[0x28223BE20](started, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223727408();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v11(&v9[v6[7]], 1, 1, v10);
  v12 = &v9[v6[8]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v9[v6[9]];
  *v13 = xmmword_223730530;
  a1(v9);
  v15 = *(v12 + 1);
  if (v15)
  {
    v16 = (v2 + qword_28132B728);
    *v16 = *v12;
    v16[1] = v15;
    v17 = *(v13 + 1);
    v18 = (v2 + qword_28132B730);
    *v18 = *v13;
    v18[1] = v17;
    MEMORY[0x28223BE20](v17, v14);
    v29[-2] = v9;

    v19 = RemoteIntelligenceSessionMessage.init(build:)(sub_2236B795C);
    sub_2236B6F94(v9);
  }

  else
  {
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v20 = sub_22372AC98();
    __swift_project_value_buffer(v20, qword_27D097088);
    v21 = sub_22372AC88();
    v22 = sub_22372B278();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[0] = v24;
      v29[1] = v4;
      *v23 = 136446210;
      swift_getMetatypeMetadata();
      v25 = sub_22372B038();
      v27 = sub_223623274(v25, v26, v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_223620000, v21, v22, "Could not build %{public}s: Builder has missing required fields", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x223DE8A80](v24, -1, -1);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    sub_2236B6F94(v9);
    type metadata accessor for StartRemoteIntelligenceSessionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

uint64_t sub_2236B6F94(uint64_t a1)
{
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t StartRemoteIntelligenceSessionMessage.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E8, &qword_223730540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236B7968();
  sub_22372B7D8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for StartRemoteIntelligenceSessionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    v10 = sub_22372B628();
    v12 = (v1 + qword_28132B728);
    *v12 = v10;
    v12[1] = v13;
    LOBYTE(v18[0]) = 1;
    v14 = sub_22372B628();
    v15 = (v1 + qword_28132B730);
    *v15 = v14;
    v15[1] = v16;
    sub_223623934(a1, v18);
    v3 = RemoteIntelligenceSessionMessage.init(from:)(v18);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_2236B7298(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3F8, &qword_223730548);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236B7968();
  sub_22372B7E8();
  LOBYTE(v10) = 0;
  sub_22372B688();
  if (!v2)
  {
    v10 = *(v1 + qword_28132B730);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
    sub_2236B79BC();
    sub_22372B6A8();
    sub_22370D2DC(a1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_22364FCB0(v3, a1);
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.messageId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_2236511D0(a1, v3);
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.languageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 24));

  return v1;
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.remoteIntelligenceVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 28));

  return v1;
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.remoteIntelligenceVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2236B7730()
{
}

uint64_t StartRemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);

  return v0;
}

uint64_t StartRemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2236B7968()
{
  result = qword_27D08F3F0;
  if (!qword_27D08F3F0)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for StartRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F3F0);
  }

  return result;
}

unint64_t sub_2236B79BC()
{
  result = qword_27D08F400;
  if (!qword_27D08F400)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D08F970, &unk_223730550);
    v4[0] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27D08F400);
  }

  return result;
}

void sub_2236B7AF0(uint64_t a1)
{
  sub_22369BEEC(319);
  if (v1 <= 0x3F)
  {
    sub_2236B7B74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2236B7B74()
{
  if (!qword_281328DF0)
  {
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_281328DF0);
    }
  }
}

unint64_t sub_2236B7BD8()
{
  result = qword_27D08F418;
  if (!qword_27D08F418)
  {
    result = swift_getWitnessTable(asc_22373069C, &type metadata for StartRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F418);
  }

  return result;
}

unint64_t sub_2236B7C30()
{
  result = qword_27D08F420;
  if (!qword_27D08F420)
  {
    result = swift_getWitnessTable(byte_22373060C, &type metadata for StartRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F420);
  }

  return result;
}

unint64_t sub_2236B7C88()
{
  result = qword_27D08F428;
  if (!qword_27D08F428)
  {
    result = swift_getWitnessTable(byte_223730634, &type metadata for StartRemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F428);
  }

  return result;
}

uint64_t sub_2236B7CF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x4E6E6F6973736573;
    v4 = 0x6D656C706D696E75;
    if (a1 != 8)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000001ELL;
    if (a1 != 5)
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 2)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2236B7E70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2236BB62C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2236B7EA4(uint64_t a1)
{
  v2 = sub_2236BA4CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B7EE0(uint64_t a1)
{
  v2 = sub_2236BA4CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B7F28(uint64_t a1)
{
  v2 = sub_2236BA76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B7F64(uint64_t a1)
{
  v2 = sub_2236BA76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B7FA0(uint64_t a1)
{
  v2 = sub_2236BA7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B7FDC(uint64_t a1)
{
  v2 = sub_2236BA7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8018(uint64_t a1)
{
  v2 = sub_2236BA814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8054(uint64_t a1)
{
  v2 = sub_2236BA814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8090(uint64_t a1)
{
  v2 = sub_2236BA520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B80CC(uint64_t a1)
{
  v2 = sub_2236BA520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8108(uint64_t a1)
{
  v2 = sub_2236BA6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8144(uint64_t a1)
{
  v2 = sub_2236BA6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8180(uint64_t a1)
{
  v2 = sub_2236BA61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B81BC(uint64_t a1)
{
  v2 = sub_2236BA61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B81F8(uint64_t a1)
{
  v2 = sub_2236BA718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8234(uint64_t a1)
{
  v2 = sub_2236BA718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8270(uint64_t a1)
{
  v2 = sub_2236BA670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B82AC(uint64_t a1)
{
  v2 = sub_2236BA670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B82E8(uint64_t a1)
{
  v2 = sub_2236BA5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8324(uint64_t a1)
{
  v2 = sub_2236BA5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_2236B83E0(uint64_t a1)
{
  v2 = sub_2236BA574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B841C(uint64_t a1)
{
  v2 = sub_2236BA574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F430, &qword_223730720);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v69 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F438, &qword_223730728);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v68 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F440, &qword_223730730);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v65 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F448, &qword_223730738);
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v62 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F450, &qword_223730740);
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v59 = &v48 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F458, &qword_223730748);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v18);
  v56 = &v48 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F460, &qword_223730750);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v20);
  v53 = &v48 - v21;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F468, &qword_223730758);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v22);
  v50 = &v48 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F470, &qword_223730760);
  v49 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v48 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F478, &qword_223730768);
  v48 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v48 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F480, &qword_223730770);
  v33 = *(v32 - 8);
  v77 = v32;
  v78 = v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v48 - v35;
  v37 = v1[1];
  v74 = *v1;
  v75 = v37;
  v38 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236BA4CC();
  v76 = v36;
  sub_22372B7E8();
  if (v38 > 4)
  {
    if (v38 <= 6)
    {
      if (v38 == 5)
      {
        v84 = 5;
        sub_2236BA670();
        v31 = v59;
        v40 = v76;
        v39 = v77;
        sub_22372B678();
        v28 = v61;
        sub_22372B688();
        v41 = v60;
      }

      else
      {
        v85 = 6;
        sub_2236BA61C();
        v31 = v62;
        v40 = v76;
        v39 = v77;
        sub_22372B678();
        v28 = v64;
        sub_22372B688();
        v41 = v63;
      }
    }

    else if (v38 == 7)
    {
      v86 = 7;
      sub_2236BA5C8();
      v31 = v65;
      v40 = v76;
      v39 = v77;
      sub_22372B678();
      v28 = v67;
      sub_22372B688();
      v41 = v66;
    }

    else
    {
      if (v38 != 8)
      {
        v88 = 9;
        sub_2236BA520();
        v42 = v69;
        v44 = v76;
        v43 = v77;
        sub_22372B678();
        (*(v72 + 8))(v42, v73);
        return (*(v78 + 8))(v44, v43);
      }

      v87 = 8;
      sub_2236BA574();
      v31 = v68;
      v40 = v76;
      v39 = v77;
      sub_22372B678();
      v28 = v71;
      sub_22372B688();
      v41 = v70;
    }
  }

  else if (v38 <= 1)
  {
    if (v38)
    {
      v80 = 1;
      sub_2236BA7C0();
      v47 = v76;
      v46 = v77;
      sub_22372B678();
      sub_22372B688();
      (*(v49 + 8))(v27, v24);
      return (*(v78 + 8))(v47, v46);
    }

    v79 = 0;
    sub_2236BA814();
    v40 = v76;
    v39 = v77;
    sub_22372B678();
    sub_22372B688();
    v41 = v48;
  }

  else if (v38 == 2)
  {
    v81 = 2;
    sub_2236BA76C();
    v31 = v50;
    v40 = v76;
    v39 = v77;
    sub_22372B678();
    v28 = v52;
    sub_22372B688();
    v41 = v51;
  }

  else if (v38 == 3)
  {
    v82 = 3;
    sub_2236BA718();
    v31 = v53;
    v40 = v76;
    v39 = v77;
    sub_22372B678();
    v28 = v55;
    sub_22372B688();
    v41 = v54;
  }

  else
  {
    v83 = 4;
    sub_2236BA6C4();
    v31 = v56;
    v40 = v76;
    v39 = v77;
    sub_22372B678();
    v28 = v58;
    sub_22372B688();
    v41 = v57;
  }

  (*(v41 + 8))(v31, v28);
  return (*(v78 + 8))(v40, v39);
}

uint64_t RemoteIntelligenceError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4E0, &qword_223730778);
  v101 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v3);
  v108 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4E8, &qword_223730780);
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v107 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4F0, &qword_223730788);
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v105 = &v83 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4F8, &qword_223730790);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v11);
  v111 = &v83 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F500, &qword_223730798);
  v96 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v13);
  v110 = &v83 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F508, &qword_2237307A0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v15);
  v104 = &v83 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F510, &qword_2237307A8);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v17);
  v106 = &v83 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F518, &qword_2237307B0);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v19);
  v109 = &v83 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F520, &qword_2237307B8);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F528, &qword_2237307C0);
  v86 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F530, &qword_2237307C8);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v83 - v31;
  v33 = a1[3];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_2236BA4CC();
  v34 = v115;
  sub_22372B7D8();
  if (v34)
  {
    goto LABEL_15;
  }

  v35 = v27;
  v83 = v24;
  v84 = v23;
  v36 = v109;
  v37 = v110;
  v38 = v111;
  v85 = 0;
  v115 = v29;
  v39 = v112;
  v40 = v113;
  v41 = sub_22372B668();
  v42 = (2 * *(v41 + 16)) | 1;
  v116 = v41;
  v117 = v41 + 32;
  v118 = 0;
  v119 = v42;
  v43 = sub_22368BD04();
  if (v43 == 10 || v118 != v119 >> 1)
  {
    v57 = sub_22372B4B8();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F000, &qword_2237307D0);
    *v59 = &type metadata for RemoteIntelligenceError;
    sub_22372B618();
    sub_22372B4A8();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    goto LABEL_13;
  }

  v121 = v43;
  if (v43 <= 4u)
  {
    if (v43 > 1u)
    {
      v44 = v85;
      if (v43 == 2)
      {
        v122 = 2;
        sub_2236BA76C();
        v46 = v36;
        sub_22372B608();
        v45 = v115;
        if (!v44)
        {
          v47 = v90;
          v48 = sub_22372B628();
          v50 = &v120;
          goto LABEL_10;
        }
      }

      else
      {
        v45 = v115;
        if (v43 == 3)
        {
          v122 = 3;
          sub_2236BA718();
          v46 = v106;
          sub_22372B608();
          if (!v44)
          {
            v47 = v92;
            v48 = sub_22372B628();
            v50 = &v123;
LABEL_10:
            v51 = v48;
            v52 = v49;
            (*(*(v50 - 32) + 8))(v46, v47);
            (*(v45 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v53 = v52;
            v54 = v51;
LABEL_11:
            v55 = v114;
            v56 = v40;
LABEL_46:
            *v56 = v54;
            *(v56 + 8) = v53;
            *(v56 + 16) = v121;
            return __swift_destroy_boxed_opaque_existential_1Tm(v55);
          }
        }

        else
        {
          v122 = 4;
          sub_2236BA6C4();
          v46 = v104;
          sub_22372B608();
          if (!v44)
          {
            v47 = v94;
            v48 = sub_22372B628();
            v50 = &v124;
            goto LABEL_10;
          }
        }
      }

      goto LABEL_34;
    }

    v66 = v85;
    if (v43)
    {
      v122 = 1;
      sub_2236BA7C0();
      v46 = v84;
      sub_22372B608();
      if (!v66)
      {
        v47 = v88;
        v48 = sub_22372B628();
        v45 = v115;
        v50 = &v119;
        goto LABEL_10;
      }
    }

    else
    {
      v122 = 0;
      sub_2236BA814();
      v67 = v35;
      sub_22372B608();
      if (!v66)
      {
        v68 = v83;
        v79 = sub_22372B628();
        v80 = v67;
        v82 = v81;
        (*(v86 + 8))(v80, v68);
        (*(v115 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v53 = v82;
        v54 = v79;
        goto LABEL_11;
      }
    }

LABEL_13:
    (*(v115 + 8))(v32, v28);
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    v55 = v114;
    return __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v61 = v115;
  if (v43 <= 6u)
  {
    if (v43 == 5)
    {
      v122 = 5;
      sub_2236BA670();
      v38 = v37;
      v69 = v85;
      sub_22372B608();
      if (!v69)
      {
        v63 = v95;
        v64 = sub_22372B628();
        v70 = &v125;
LABEL_28:
        v71 = *(*(v70 - 32) + 8);
        v45 = v61;
LABEL_45:
        v77 = v64;
        v78 = v65;
        v71(v38, v63);
        (*(v45 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v53 = v78;
        v54 = v77;
        v56 = v40;
        v55 = v114;
        goto LABEL_46;
      }
    }

    else
    {
      v122 = 6;
      sub_2236BA61C();
      v75 = v85;
      sub_22372B608();
      if (!v75)
      {
        v63 = v98;
        v64 = sub_22372B628();
        v70 = &v126;
        goto LABEL_28;
      }
    }

    (*(v61 + 8))(v32, v28);
    goto LABEL_14;
  }

  v45 = v115;
  if (v43 == 7)
  {
    v122 = 7;
    sub_2236BA5C8();
    v38 = v105;
    v72 = v85;
    sub_22372B608();
    if (!v72)
    {
      v63 = v100;
      v64 = sub_22372B628();
      v76 = v99;
      goto LABEL_44;
    }

LABEL_34:
    (*(v45 + 8))(v32, v28);
    goto LABEL_14;
  }

  if (v43 == 8)
  {
    v122 = 8;
    sub_2236BA574();
    v38 = v107;
    v62 = v85;
    sub_22372B608();
    if (!v62)
    {
      v63 = v103;
      v64 = sub_22372B628();
      v76 = v102;
LABEL_44:
      v71 = *(v76 + 8);
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  v56 = v40;
  v122 = 9;
  sub_2236BA520();
  v73 = v108;
  v74 = v85;
  sub_22372B608();
  if (!v74)
  {
    (*(v101 + 8))(v73, v39);
    (*(v45 + 8))(v32, v28);
    swift_unknownObjectRelease();
    v54 = 0;
    v53 = 0;
    v55 = v114;
    goto LABEL_46;
  }

  (*(v45 + 8))(v32, v28);
  swift_unknownObjectRelease();
  v55 = v114;
  return __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

uint64_t _s24RequestDispatcherBridges23RemoteIntelligenceErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        if (v7 != 5)
        {
          goto LABEL_50;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_22366FD64(*a1, v2, 5u);
          sub_22366FD64(v3, v2, 5u);
          sub_223661204(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_49;
        }

        v12 = sub_22372B6E8();
        sub_22366FD64(v6, v5, 5u);
        sub_22366FD64(v3, v2, 5u);
        sub_223661204(v3, v2, 5u);
        v13 = v6;
        v14 = v5;
        v15 = 5;
      }

      else
      {
        if (v7 != 6)
        {
          goto LABEL_50;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_22366FD64(*a1, v2, 6u);
          sub_22366FD64(v3, v2, 6u);
          sub_223661204(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_49;
        }

        v12 = sub_22372B6E8();
        sub_22366FD64(v6, v5, 6u);
        sub_22366FD64(v3, v2, 6u);
        sub_223661204(v3, v2, 6u);
        v13 = v6;
        v14 = v5;
        v15 = 6;
      }
    }

    else
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          if (v7 == 8)
          {
            if (v3 == v6 && v2 == v5)
            {
              sub_22366FD64(*a1, v2, 8u);
              sub_22366FD64(v3, v2, 8u);
              sub_223661204(v3, v2, 8u);
              v8 = v3;
              v9 = v2;
              v10 = 8;
              goto LABEL_49;
            }

            v12 = sub_22372B6E8();
            sub_22366FD64(v6, v5, 8u);
            sub_22366FD64(v3, v2, 8u);
            sub_223661204(v3, v2, 8u);
            v13 = v6;
            v14 = v5;
            v15 = 8;
            goto LABEL_60;
          }
        }

        else if (v7 == 9 && !(v5 | v6))
        {
          sub_223661204(*a1, v2, 9u);
          v8 = 0;
          v9 = 0;
          v10 = 9;
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      if (v7 != 7)
      {
        goto LABEL_50;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_22366FD64(*a1, v2, 7u);
        sub_22366FD64(v3, v2, 7u);
        sub_223661204(v3, v2, 7u);
        v8 = v3;
        v9 = v2;
        v10 = 7;
        goto LABEL_49;
      }

      v12 = sub_22372B6E8();
      sub_22366FD64(v6, v5, 7u);
      sub_22366FD64(v3, v2, 7u);
      sub_223661204(v3, v2, 7u);
      v13 = v6;
      v14 = v5;
      v15 = 7;
    }
  }

  else if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v7 != 1)
      {
        goto LABEL_50;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_22366FD64(*a1, v2, 1u);
        sub_22366FD64(v3, v2, 1u);
        sub_223661204(v3, v2, 1u);
        v8 = v3;
        v9 = v2;
        v10 = 1;
        goto LABEL_49;
      }

      v12 = sub_22372B6E8();
      sub_22366FD64(v6, v5, 1u);
      sub_22366FD64(v3, v2, 1u);
      sub_223661204(v3, v2, 1u);
      v13 = v6;
      v14 = v5;
      v15 = 1;
    }

    else
    {
      if (*(a2 + 16))
      {
        goto LABEL_50;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_22366FD64(*a1, v2, 0);
        sub_22366FD64(v3, v2, 0);
        sub_223661204(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
        goto LABEL_49;
      }

      v12 = sub_22372B6E8();
      sub_22366FD64(v6, v5, 0);
      sub_22366FD64(v3, v2, 0);
      sub_223661204(v3, v2, 0);
      v13 = v6;
      v14 = v5;
      v15 = 0;
    }
  }

  else if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_50;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_22366FD64(*a1, v2, 2u);
      sub_22366FD64(v3, v2, 2u);
      sub_223661204(v3, v2, 2u);
      v8 = v3;
      v9 = v2;
      v10 = 2;
      goto LABEL_49;
    }

    v12 = sub_22372B6E8();
    sub_22366FD64(v6, v5, 2u);
    sub_22366FD64(v3, v2, 2u);
    sub_223661204(v3, v2, 2u);
    v13 = v6;
    v14 = v5;
    v15 = 2;
  }

  else
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_22366FD64(*a1, v2, 3u);
          sub_22366FD64(v3, v2, 3u);
          sub_223661204(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
LABEL_49:
          sub_223661204(v8, v9, v10);
          return 1;
        }

        v12 = sub_22372B6E8();
        sub_22366FD64(v6, v5, 3u);
        sub_22366FD64(v3, v2, 3u);
        sub_223661204(v3, v2, 3u);
        v13 = v6;
        v14 = v5;
        v15 = 3;
        goto LABEL_60;
      }

LABEL_50:
      sub_22366FD64(*a2, *(a2 + 8), v7);
      sub_22366FD64(v3, v2, v4);
      sub_223661204(v3, v2, v4);
      sub_223661204(v6, v5, v7);
      return 0;
    }

    if (v7 != 4)
    {
      goto LABEL_50;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_22366FD64(*a1, v2, 4u);
      sub_22366FD64(v3, v2, 4u);
      sub_223661204(v3, v2, 4u);
      v8 = v3;
      v9 = v2;
      v10 = 4;
      goto LABEL_49;
    }

    v12 = sub_22372B6E8();
    sub_22366FD64(v6, v5, 4u);
    sub_22366FD64(v3, v2, 4u);
    sub_223661204(v3, v2, 4u);
    v13 = v6;
    v14 = v5;
    v15 = 4;
  }

LABEL_60:
  sub_223661204(v13, v14, v15);
  return v12 & 1;
}

unint64_t sub_2236BA4CC()
{
  result = qword_27D08F488;
  if (!qword_27D08F488)
  {
    result = swift_getWitnessTable(asc_223731640, &type metadata for RemoteIntelligenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F488);
  }

  return result;
}

unint64_t sub_2236BA520()
{
  result = qword_27D08F490;
  if (!qword_27D08F490)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for RemoteIntelligenceError.FailedQueryDecorationCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F490);
  }

  return result;
}

unint64_t sub_2236BA574()
{
  result = qword_27D08F498;
  if (!qword_27D08F498)
  {
    result = swift_getWitnessTable(byte_2237315A0, &type metadata for RemoteIntelligenceError.UnimplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F498);
  }

  return result;
}

unint64_t sub_2236BA5C8()
{
  result = qword_27D08F4A0;
  if (!qword_27D08F4A0)
  {
    result = swift_getWitnessTable(a0_0, &type metadata for RemoteIntelligenceError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4A0);
  }

  return result;
}

unint64_t sub_2236BA61C()
{
  result = qword_27D08F4A8;
  if (!qword_27D08F4A8)
  {
    result = swift_getWitnessTable(asc_223731500, &type metadata for RemoteIntelligenceError.LocalSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4A8);
  }

  return result;
}

unint64_t sub_2236BA670()
{
  result = qword_27D08F4B0;
  if (!qword_27D08F4B0)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for RemoteIntelligenceError.RemoteSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4B0);
  }

  return result;
}

unint64_t sub_2236BA6C4()
{
  result = qword_27D08F4B8;
  if (!qword_27D08F4B8)
  {
    result = swift_getWitnessTable(aG, &type metadata for RemoteIntelligenceError.LocalSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4B8);
  }

  return result;
}

unint64_t sub_2236BA718()
{
  result = qword_27D08F4C0;
  if (!qword_27D08F4C0)
  {
    result = swift_getWitnessTable(byte_223731410, &type metadata for RemoteIntelligenceError.RemoteSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4C0);
  }

  return result;
}

unint64_t sub_2236BA76C()
{
  result = qword_27D08F4C8;
  if (!qword_27D08F4C8)
  {
    result = swift_getWitnessTable(aI, &type metadata for RemoteIntelligenceError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4C8);
  }

  return result;
}

unint64_t sub_2236BA7C0()
{
  result = qword_27D08F4D0;
  if (!qword_27D08F4D0)
  {
    result = swift_getWitnessTable(byte_223731370, &type metadata for RemoteIntelligenceError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4D0);
  }

  return result;
}

unint64_t sub_2236BA814()
{
  result = qword_27D08F4D8;
  if (!qword_27D08F4D8)
  {
    result = swift_getWitnessTable(asc_223731320, &type metadata for RemoteIntelligenceError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F4D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges23RemoteIntelligenceErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2236BA898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2236BA8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_2236BA924(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntelligenceError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteIntelligenceError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2236BAB30()
{
  result = qword_27D08F538;
  if (!qword_27D08F538)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for RemoteIntelligenceError.UnimplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F538);
  }

  return result;
}

unint64_t sub_2236BAB88()
{
  result = qword_27D08F540;
  if (!qword_27D08F540)
  {
    result = swift_getWitnessTable(byte_223730D38, &type metadata for RemoteIntelligenceError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F540);
  }

  return result;
}

unint64_t sub_2236BABE0()
{
  result = qword_27D08F548;
  if (!qword_27D08F548)
  {
    result = swift_getWitnessTable(asc_223730DF0, &type metadata for RemoteIntelligenceError.LocalSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F548);
  }

  return result;
}

unint64_t sub_2236BAC38()
{
  result = qword_27D08F550;
  if (!qword_27D08F550)
  {
    result = swift_getWitnessTable(asc_223730EA8, &type metadata for RemoteIntelligenceError.RemoteSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F550);
  }

  return result;
}

unint64_t sub_2236BAC90()
{
  result = qword_27D08F558;
  if (!qword_27D08F558)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for RemoteIntelligenceError.LocalSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F558);
  }

  return result;
}

unint64_t sub_2236BACE8()
{
  result = qword_27D08F560;
  if (!qword_27D08F560)
  {
    result = swift_getWitnessTable(byte_223731018, &type metadata for RemoteIntelligenceError.RemoteSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F560);
  }

  return result;
}

unint64_t sub_2236BAD40()
{
  result = qword_27D08F568;
  if (!qword_27D08F568)
  {
    result = swift_getWitnessTable(byte_2237310D0, &type metadata for RemoteIntelligenceError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F568);
  }

  return result;
}

unint64_t sub_2236BAD98()
{
  result = qword_27D08F570;
  if (!qword_27D08F570)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for RemoteIntelligenceError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F570);
  }

  return result;
}

unint64_t sub_2236BADF0()
{
  result = qword_27D08F578;
  if (!qword_27D08F578)
  {
    result = swift_getWitnessTable(byte_223731240, &type metadata for RemoteIntelligenceError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F578);
  }

  return result;
}

unint64_t sub_2236BAE48()
{
  result = qword_27D08F580;
  if (!qword_27D08F580)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for RemoteIntelligenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F580);
  }

  return result;
}

unint64_t sub_2236BAEA0()
{
  result = qword_27D08F588;
  if (!qword_27D08F588)
  {
    result = swift_getWitnessTable(byte_2237311B0, &type metadata for RemoteIntelligenceError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F588);
  }

  return result;
}

unint64_t sub_2236BAEF8()
{
  result = qword_27D08F590;
  if (!qword_27D08F590)
  {
    result = swift_getWitnessTable(byte_2237311D8, &type metadata for RemoteIntelligenceError.CompanionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F590);
  }

  return result;
}

unint64_t sub_2236BAF50()
{
  result = qword_27D08F598;
  if (!qword_27D08F598)
  {
    result = swift_getWitnessTable(byte_2237310F8, &type metadata for RemoteIntelligenceError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F598);
  }

  return result;
}

unint64_t sub_2236BAFA8()
{
  result = qword_27D08F5A0;
  if (!qword_27D08F5A0)
  {
    result = swift_getWitnessTable(byte_223731120, &type metadata for RemoteIntelligenceError.CompanionNotCapableCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5A0);
  }

  return result;
}

unint64_t sub_2236BB000()
{
  result = qword_27D08F5A8;
  if (!qword_27D08F5A8)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for RemoteIntelligenceError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5A8);
  }

  return result;
}

unint64_t sub_2236BB058()
{
  result = qword_27D08F5B0;
  if (!qword_27D08F5B0)
  {
    result = swift_getWitnessTable(aQ, &type metadata for RemoteIntelligenceError.CompanionAIIsOffCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5B0);
  }

  return result;
}

unint64_t sub_2236BB0B0()
{
  result = qword_27D08F5B8;
  if (!qword_27D08F5B8)
  {
    result = swift_getWitnessTable(byte_223730F88, &type metadata for RemoteIntelligenceError.RemoteSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5B8);
  }

  return result;
}

unint64_t sub_2236BB108()
{
  result = qword_27D08F5C0;
  if (!qword_27D08F5C0)
  {
    result = swift_getWitnessTable(asc_223730FB0, &type metadata for RemoteIntelligenceError.RemoteSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5C0);
  }

  return result;
}

unint64_t sub_2236BB160()
{
  result = qword_27D08F5C8;
  if (!qword_27D08F5C8)
  {
    result = swift_getWitnessTable(aO, &type metadata for RemoteIntelligenceError.LocalSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5C8);
  }

  return result;
}

unint64_t sub_2236BB1B8()
{
  result = qword_27D08F5D0;
  if (!qword_27D08F5D0)
  {
    result = swift_getWitnessTable(asc_223730EF8, &type metadata for RemoteIntelligenceError.LocalSessionCreationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5D0);
  }

  return result;
}

unint64_t sub_2236BB210()
{
  result = qword_27D08F5D8;
  if (!qword_27D08F5D8)
  {
    result = swift_getWitnessTable(byte_223730E18, &type metadata for RemoteIntelligenceError.RemoteSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5D8);
  }

  return result;
}

unint64_t sub_2236BB268()
{
  result = qword_27D08F5E0;
  if (!qword_27D08F5E0)
  {
    result = swift_getWitnessTable(byte_223730E40, &type metadata for RemoteIntelligenceError.RemoteSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5E0);
  }

  return result;
}

unint64_t sub_2236BB2C0()
{
  result = qword_27D08F5E8;
  if (!qword_27D08F5E8)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for RemoteIntelligenceError.LocalSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5E8);
  }

  return result;
}

unint64_t sub_2236BB318()
{
  result = qword_27D08F5F0;
  if (!qword_27D08F5F0)
  {
    result = swift_getWitnessTable(aQ_0, &type metadata for RemoteIntelligenceError.LocalSessionTerminationFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5F0);
  }

  return result;
}

unint64_t sub_2236BB370()
{
  result = qword_27D08F5F8;
  if (!qword_27D08F5F8)
  {
    result = swift_getWitnessTable(byte_223730CA8, &type metadata for RemoteIntelligenceError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F5F8);
  }

  return result;
}

unint64_t sub_2236BB3C8()
{
  result = qword_27D08F600;
  if (!qword_27D08F600)
  {
    result = swift_getWitnessTable(asc_223730CD0, &type metadata for RemoteIntelligenceError.SessionNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F600);
  }

  return result;
}

unint64_t sub_2236BB420()
{
  result = qword_27D08F608;
  if (!qword_27D08F608)
  {
    result = swift_getWitnessTable(byte_223730BF0, &type metadata for RemoteIntelligenceError.UnimplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F608);
  }

  return result;
}

unint64_t sub_2236BB478()
{
  result = qword_27D08F610;
  if (!qword_27D08F610)
  {
    result = swift_getWitnessTable(byte_223730C18, &type metadata for RemoteIntelligenceError.UnimplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F610);
  }

  return result;
}

unint64_t sub_2236BB4D0()
{
  result = qword_27D08F618;
  if (!qword_27D08F618)
  {
    result = swift_getWitnessTable(byte_223730BA0, &type metadata for RemoteIntelligenceError.FailedQueryDecorationCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F618);
  }

  return result;
}

unint64_t sub_2236BB528()
{
  result = qword_27D08F620;
  if (!qword_27D08F620)
  {
    result = swift_getWitnessTable(byte_223730BC8, &type metadata for RemoteIntelligenceError.FailedQueryDecorationCodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F620);
  }

  return result;
}

unint64_t sub_2236BB580()
{
  result = qword_27D08F628;
  if (!qword_27D08F628)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for RemoteIntelligenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F628);
  }

  return result;
}

unint64_t sub_2236BB5D8()
{
  result = qword_27D08F630;
  if (!qword_27D08F630)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for RemoteIntelligenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F630);
  }

  return result;
}

uint64_t sub_2236BB62C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002237364E0 == a2;
  if (v3 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223736500 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002237354B0 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000223736520 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000223736540 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000223736560 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000223736580 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEF646E756F46746FLL || (sub_22372B6E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D656C706D696E75 && a2 == 0xED00006465746E65 || (sub_22372B6E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002237365A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_22372B6E8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_2236BB9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v10 = sub_22372AC88();
    v4 = sub_22372B268();
    if (os_log_type_enabled(v10, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v10, v4, "Not changing PromptState because request is in candidate phase", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x28223BE20](a1, a2);
    MEMORY[0x28223BE20](v7, v8);
    os_unfair_lock_lock(v6 + 4);
    sub_223637034(v9);
    os_unfair_lock_unlock(v6 + 4);
  }
}

void sub_2236BBB6C(uint64_t a1, char a2, char a3)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (!os_log_type_enabled(v7, v8))
  {

    v16 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return;
    }

LABEL_15:
    if (v16 == 1)
    {

      v17 = sub_22372AC88();
      v18 = sub_22372B278();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = a2;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v30 = v21;
        *v20 = 136315138;
        v22 = 0x6D6F72506C6C6977;
        v23 = 0xEA00000000007470;
        if (*(a1 + 24) != 1)
        {
          v22 = 0xD000000000000016;
          v23 = 0x8000000223734320;
        }

        if (*(a1 + 24))
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x706D6F7250746F6ELL;
        }

        if (*(a1 + 24))
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xEC000000676E6974;
        }

        v26 = sub_223623274(v24, v25, &v30);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_223620000, v17, v18, "Unexpected PromptState while receiving TRPCandidate for an active request: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x223DE8A80](v21, -1, -1);
        MEMORY[0x223DE8A80](v20, -1, -1);

        if (v19)
        {
          return;
        }
      }

      else
      {

        if (a2)
        {
          return;
        }
      }

      v27 = *(a1 + 24);
      v28 = 2;
    }

    else
    {
      if ((a2 & 1) == 0)
      {
        return;
      }

      v27 = 2;
      v28 = 1;
    }

    *(a1 + 24) = v28;
    sub_22363A1EC(v27);
    return;
  }

  v29 = a3;
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v30 = v10;
  *v9 = 136315906;
  *(v9 + 4) = sub_223623274(0xD00000000000003ALL, 0x80000002237366C0, &v30);
  *(v9 + 12) = 2080;
  v11 = 0x6D6F72506C6C6977;
  v12 = 0xEA00000000007470;
  if (*(a1 + 24) != 1)
  {
    v11 = 0xD000000000000016;
    v12 = 0x8000000223734320;
  }

  if (*(a1 + 24))
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x706D6F7250746F6ELL;
  }

  if (*(a1 + 24))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xEC000000676E6974;
  }

  v15 = sub_223623274(v13, v14, &v30);

  *(v9 + 14) = v15;
  *(v9 + 22) = 1024;
  *(v9 + 24) = a2 & 1;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v29 & 1;
  _os_log_impl(&dword_223620000, v7, v8, "%s PromptState: %s, isEmptySpeech: %{BOOL}d, isCandidateRequest:%{BOOL}d", v9, 0x22u);
  swift_arrayDestroy();
  MEMORY[0x223DE8A80](v10, -1, -1);
  MEMORY[0x223DE8A80](v9, -1, -1);

  v16 = *(a1 + 24);
  if (*(a1 + 24))
  {
    goto LABEL_15;
  }
}

void sub_2236BBF34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v10 = sub_22372AC88();
    v4 = sub_22372B268();
    if (os_log_type_enabled(v10, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v10, v4, "Not changing PromptState because request is in candidate phase", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x28223BE20](a1, a2);
    MEMORY[0x28223BE20](v7, v8);
    os_unfair_lock_lock(v6 + 4);
    sub_223637034(v9);
    os_unfair_lock_unlock(v6 + 4);
  }
}

void sub_2236BC0C4(uint64_t a1, char a2, char a3)
{
  if (qword_281328E58 != -1)
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
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_223623274(0xD00000000000003FLL, 0x8000000223736680, &v18);
    *(v9 + 12) = 2080;
    v11 = 0xEA00000000007470;
    v12 = 0x6D6F72506C6C6977;
    if (*(a1 + 24) != 1)
    {
      v12 = 0xD000000000000016;
      v11 = 0x8000000223734320;
    }

    if (*(a1 + 24))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x706D6F7250746F6ELL;
    }

    if (*(a1 + 24))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xEC000000676E6974;
    }

    v15 = sub_223623274(v13, v14, &v18);

    *(v9 + 14) = v15;
    *(v9 + 22) = 1024;
    *(v9 + 24) = a2 & 1;
    *(v9 + 28) = 1024;
    *(v9 + 30) = a3 & 1;
    _os_log_impl(&dword_223620000, v7, v8, "%s PromptState: %s, isEmptySpeech: %{BOOL}d, isCandidateRequest:%{BOOL}d", v9, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v16 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return;
    }
  }

  else
  {

    v16 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return;
    }
  }

  if (v16 == 1)
  {
    if (a2)
    {
      return;
    }

    v17 = 0;
  }

  else
  {
    v17 = a2 & 1;
  }

  *(a1 + 24) = v17;
  sub_22363A1EC(v16);
}

uint64_t getEnumTagSinglePayload for PromptState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2236BC484(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D6F72506C6C6977;
  v4 = 0xEA00000000007470;
  v5 = 0x8000000223734320;
  if (v2 != 1)
  {
    v3 = 0xD000000000000016;
    v4 = 0x8000000223734320;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x706D6F7250746F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC000000676E6974;
  }

  v8 = 0x6D6F72506C6C6977;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000007470;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x706D6F7250746F6ELL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000676E6974;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22372B6E8();
  }

  return v11 & 1;
}

uint64_t sub_2236BC58C()
{
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236BC640(uint64_t a1)
{
  sub_22372B078();
}

uint64_t sub_2236BC6E0(uint64_t a1)
{
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

unint64_t sub_2236BC790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2236BC888(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2236BC7C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E6974;
  v4 = 0xEA00000000007470;
  v5 = 0x6D6F72506C6C6977;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000223734320;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x706D6F7250746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2236BC834()
{
  result = qword_27D08F638;
  if (!qword_27D08F638)
  {
    result = swift_getWitnessTable(aQ_1, &type metadata for PromptState, v0, v1);
    atomic_store(result, &qword_27D08F638);
  }

  return result;
}

unint64_t sub_2236BC888(uint64_t a1, uint64_t a2)
{
  v2 = sub_22372B5F8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2236BC91C()
{
  v0 = sub_223727BC8();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_223727BE8();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223727BF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223727C48();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_223727C58();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223727D18();
  if ((*(v17 + 88))(v20, v16) == *MEMORY[0x277D1C890])
  {
    (*(v17 + 96))(v20, v16);
    (*(v12 + 32))(v15, v20, v11);
    sub_223727C38();
    v21 = (*(v7 + 88))(v10, v6);
    if (v21 == *MEMORY[0x277D1C6B8])
    {
      (*(v7 + 96))(v10, v6);
      v23 = v34;
      v22 = v35;
      v24 = v36;
      (*(v35 + 32))(v34, v10, v36);
      v25 = sub_223727BB8();
      (*(v22 + 8))(v23, v24);
      (*(v12 + 8))(v15, v11);
      return v25;
    }

    if (v21 == *MEMORY[0x277D1C6C0])
    {
      (*(v7 + 96))(v10, v6);
      v28 = v31;
      v27 = v32;
      v29 = v33;
      (*(v32 + 32))(v31, v10, v33);
      v30 = sub_223727BD8();
      (*(v27 + 8))(v28, v29);
      (*(v12 + 8))(v15, v11);
      return v30;
    }

    (*(v12 + 8))(v15, v11);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v17 + 8))(v20, v16);
  }

  return 0;
}

uint64_t sub_2236BCDE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v38 = a5;
  v40 = a1;
  v41 = a2;
  v39 = sub_22372AC98();
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22372AC78();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  sub_223623934(a3, v54);
  v44 = a6;
  sub_223623934(a6, v53);
  v17 = type metadata accessor for SiriActivationHelper();
  v18 = swift_allocObject();
  v51 = &type metadata for CaptureOutputFeatureFlag;
  v52 = sub_2236C35E8();
  v37 = sub_2237275B8();
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v36 = AFDeviceSupportsPatientSiri();
  v19 = sub_22372A7A8();
  swift_allocObject();
  v20 = sub_22372A798();
  v51 = v19;
  v52 = MEMORY[0x277D60048];
  v50[0] = v20;
  v49[3] = v17;
  v49[4] = &off_2836C75B0;
  v49[0] = v18;
  type metadata accessor for RequestControllerBridge(0);
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v49, v17);
  MEMORY[0x28223BE20](v22, v22);
  v24 = (&v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v48[3] = v17;
  v48[4] = &off_2836C75B0;
  v48[0] = v26;
  *(v21 + qword_28132AC88) = MEMORY[0x277D84F98];
  v27 = (v21 + qword_28132AC90);
  *v27 = 0;
  v27[1] = 0;
  *(v21 + qword_28132AB08) = 0;
  *(v21 + qword_28132AAF0) = 0;
  sub_223623470();
  sub_22372A7D8();
  sub_223623934(v48, v21 + qword_28132AAF8);
  type metadata accessor for RequestControllerMitigationHandler();
  swift_getObjectType();
  v28 = qword_28132A8E8;
  swift_unknownObjectRetain();
  if (v28 != -1)
  {
    swift_once();
  }

  *(v21 + qword_28132ACA0) = sub_2236ED760(a4, qword_28132B928);
  *(v21 + qword_28132AAE8) = v37 & 1;
  *(v21 + qword_28132AAE0) = v36;
  sub_223623934(v50, v21 + qword_28132AB18);
  sub_223623934(v54, &v47);
  sub_223623934(v53, &v46);
  v29 = qword_281328E58;
  swift_unknownObjectRetain();

  v30 = v38;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = v39;
  v32 = __swift_project_value_buffer(v39, qword_28132B680);
  (*(v9 + 16))(v12, v32, v31);
  v33 = sub_22372A6E8();

  sub_2236BD320();
  sub_22372A7B8();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  (*(v42 + 8))(v16, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return v33;
}

uint64_t sub_2236BD320()
{
  v1 = sub_22372A848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223728478();
  sub_22372A938();
  sub_223728968();
  sub_22372A928();
  sub_223729E08();
  sub_22372A928();
  v11[1] = sub_223728CE8();
  sub_22372A928();
  sub_223728038();
  sub_22372A928();
  sub_223728188();
  sub_22372A928();
  sub_223729ED8();
  sub_22372A928();
  sub_223728498();
  sub_22372A928();
  sub_223727F18();
  sub_22372A928();
  sub_2237293E8();
  sub_22372A938();
  v6 = *MEMORY[0x277D60070];
  v7 = *(v2 + 104);
  v7(v5, v6, v1);
  sub_223728BE8();
  type metadata accessor for RequestControllerBridgeRequestProcessor(0);
  sub_22372A6C8();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v7(v5, v6, v1);
  sub_223729188();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v6, v1);
  sub_223728DF8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v6, v1);
  sub_223728FB8();
  sub_22372A6C8();
  v8(v5, v1);
  v9 = *MEMORY[0x277D60098];
  v7(v5, v9, v1);
  sub_2237294B8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728388();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729B68();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728B38();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728918();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728A78();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223727EE8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728288();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729228();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728028();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729A18();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729C08();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729AD8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, *MEMORY[0x277D60078], v1);
  sub_223728DB8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728F88();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729138();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_2237292E8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729EC8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729718();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_2237295B8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729A38();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223727EB8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728638();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_2237298B8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729A48();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729CE8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223729CD8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_2237282A8();
  sub_22372A6C8();
  v8(v5, v1);
  v7(v5, v9, v1);
  sub_223728C48();
  sub_22372A6C8();
  v8(v5, v1);
  if (*(v0 + qword_28132AAE0) == 1)
  {
    v7(v5, v9, v1);
    sub_223728BD8();
    sub_22372A6C8();
    v8(v5, v1);
  }

  __swift_project_boxed_opaque_existential_1((v0 + qword_28132AB18), *(v0 + qword_28132AB18 + 24));
  result = sub_22372A818();
  if (result)
  {
    sub_223630584(0, &qword_281328D20, 0x277D47438);
    sub_22372A968();
    sub_223729CB8();
    sub_22372A938();
    sub_223630584(0, &qword_281328D30, 0x277D476A0);
    return sub_22372A968();
  }

  return result;
}