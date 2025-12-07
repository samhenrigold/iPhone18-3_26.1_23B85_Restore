uint64_t sub_22B78AE88(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() spotlightIndexQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22B78B7EC;
  *(v6 + 24) = v5;
  v10[4] = sub_22B78C244;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22B716E5C;
  v10[3] = &unk_283F1ED10;
  v7 = _Block_copy(v10);

  v8 = a1;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_22B78B014(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_22B78B080()
{
  v1 = v0;
  v2 = [objc_opt_self() reindexSchedulingInProgress];
  if (v2)
  {
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_2814226C8);

    v4 = sub_22B7DB298();
    v5 = sub_22B7DBC78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136446210;
      v8 = [*(v1 + 24) identifier];
      v9 = sub_22B7DB6A8();
      v11 = v10;

      v12 = sub_22B4CFAAC(v9, v11, &v24);
      v11, v13, v14, v15, v16, v17, v18, v19, v24, v25;
      *(v6 + 4) = v12;
      _os_log_impl(&dword_22B4CC000, v4, v5, "Resuming reindex for %{public}s", v6, 0xCu);
      sub_22B4CFB78(v7);
      MEMORY[0x231898D60](v7, -1, -1);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    v20 = [objc_opt_self() pTaskQueryProvider];
    if (v20)
    {
      v21 = v20;
      v28 = sub_22B78B764;
      v29 = v1;
      v24 = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_22B4D22C0;
      v27 = &unk_283F1EC20;
      v22 = _Block_copy(&v24);

      [v21 resumeReindexSchedulingWithCompletionBlock_];
      swift_unknownObjectRelease();
      _Block_release(v22);
    }
  }

  return v2;
}

uint64_t sub_22B78B2F4(uint64_t a1)
{
  v2 = [objc_opt_self() spotlightIndexQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22B78B76C;
  *(v3 + 24) = a1;
  v6[4] = sub_22B77E2E8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22B716E5C;
  v6[3] = &unk_283F1EC70;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_22B78B450()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 40));
  v2 = [objc_opt_self() pTaskQueryProvider];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_22B78B540;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_22B4D22C0;
    v5[3] = &unk_283F1EBF8;
    v4 = _Block_copy(v5);
    [v3 suspendReindexSchedulingWithCompletionBlock_];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }
}

void sub_22B78B540()
{
  if (qword_28141F3D8 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_2814226C8);
  oslog = sub_22B7DB298();
  v1 = sub_22B7DBC78();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22B4CC000, oslog, v1, "Successfully suspended reindex scheduling", v2, 2u);
    MEMORY[0x231898D60](v2, -1, -1);
  }
}

uint64_t sub_22B78B628()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B78B68C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22B78B6A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22B78B700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B78B77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B78B81C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

uint64_t sub_22B78B8D0(void *a1, char a2)
{
  sub_22B6F0AD4(&qword_27D8CF208, &unk_22B7FC240);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v5;
  v9[4] = sub_22B78C1B8;
  v10 = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22B4D22C0;
  v9[3] = &unk_283F1EE28;
  v6 = _Block_copy(v9);
  v7 = a1;

  [v7 setExpirationHandler_];
  _Block_release(v6);
  return v2;
}

uint64_t sub_22B78B9D8(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = qword_28141F3D8;
  a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_2814226C8);

  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v8 = 136446210;
    v9 = [*(a1 + 24) identifier];
    v10 = sub_22B7DB6A8();
    v12 = v11;

    v13 = sub_22B4CFAAC(v10, v12, &v43);
    v12, v14, v15, v16, v17, v18, v19, v20, v40, v42;
    *(v8 + 4) = v13;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Processing DAS request to resume %{public}s", v8, 0xCu);
    sub_22B4CFB78(v41);
    MEMORY[0x231898D60](v41, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v21 = sub_22B78A648();
  if (v21 & 1) != 0 || (v21 = sub_22B78B080(), (v21))
  {
    v22 = *(a1 + 32);
    MEMORY[0x28223BE20](v21);
    os_unfair_lock_lock(v22 + 10);
    sub_22B78C22C(&v22[4]);
    os_unfair_lock_unlock(v22 + 10);

    return 1;
  }

  else
  {

    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC78();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136446210;
      v28 = [*(a1 + 24) identifier];
      v29 = sub_22B7DB6A8();
      v31 = v30;

      v32 = sub_22B4CFAAC(v29, v31, &v43);
      v31, v33, v34, v35, v36, v37, v38, v39, v40, v41;
      *(v26 + 4) = v32;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Task %{public}s had no actionable work, marking completed", v26, 0xCu);
      sub_22B4CFB78(v27);
      MEMORY[0x231898D60](v27, -1, -1);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    [*(a1 + 24) setTaskCompleted];
    sub_22B7BD458();

    return 0;
  }
}

uint64_t sub_22B78BDC4(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = qword_28141F3D8;
  a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_2814226C8);

  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v8 = 136446210;
    v9 = [*(a1 + 24) identifier];
    v10 = sub_22B7DB6A8();
    v12 = v11;

    v13 = sub_22B4CFAAC(v10, v12, &v43);
    v12, v14, v15, v16, v17, v18, v19, v20, v40, v42;
    *(v8 + 4) = v13;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Processing DAS request to resume %{public}s", v8, 0xCu);
    sub_22B4CFB78(v41);
    MEMORY[0x231898D60](v41, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v21 = sub_22B78A648();
  if (v21 & 1) != 0 || (v21 = sub_22B78B080(), (v21))
  {
    v22 = *(a1 + 32);
    MEMORY[0x28223BE20](v21);
    os_unfair_lock_lock(v22 + 10);
    sub_22B78C22C(&v22[4]);
    os_unfair_lock_unlock(v22 + 10);

    return 1;
  }

  else
  {

    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC78();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136446210;
      v28 = [*(a1 + 24) identifier];
      v29 = sub_22B7DB6A8();
      v31 = v30;

      v32 = sub_22B4CFAAC(v29, v31, &v43);
      v31, v33, v34, v35, v36, v37, v38, v39, v40, v41;
      *(v26 + 4) = v32;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Task %{public}s had no actionable work, marking completed", v26, 0xCu);
      sub_22B4CFB78(v27);
      MEMORY[0x231898D60](v27, -1, -1);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    [*(a1 + 24) setTaskCompleted];
    sub_22B7BD458();

    return 0;
  }
}

uint64_t sub_22B78C1BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_22B4DDE6C(v4, v3);
  result = sub_22B4DDE5C(v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

id sub_22B78C308(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC12IMDaemonCore34ScheduledMessageMembershipObserver_chatRegistry] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ScheduledMessageMembershipObserver();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:sel_handleChatParticipantsDidChange_ name:@"__kIMDChatParticipantsDidChangeNotification" object:0];

  return v8;
}

id ScheduledMessageMembershipObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:@"__kIMDChatParticipantsDidChangeNotification" object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScheduledMessageMembershipObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22B78C58C()
{
  sub_22B7DA668();
  if (!v173[3])
  {
    sub_22B4D0138(v173);
    return;
  }

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  if (swift_dynamicCast())
  {
    v0 = v174;
    v1 = sub_22B7DA678();
    if (v1)
    {
      v2 = v1;
      sub_22B7DB6A8();
      sub_22B7DC248();
      if (*(v2 + 16))
      {
        v10 = sub_22B4D7EC0(v173);
        if (v3)
        {
          sub_22B4D1F68(*(v2 + 56) + 32 * v10, &v174);
          sub_22B4DA138(v173);
          v2, v11, v12, v13, v14, v15, v16, v17, v155, v163;
          if (*(&v175 + 1))
          {
            sub_22B6F0AD4(&qword_27D8CF220, &qword_22B7FC290);
            if (swift_dynamicCast())
            {
              v18 = v173[0];
              goto LABEL_14;
            }

LABEL_13:
            v18 = MEMORY[0x277D84F90];
LABEL_14:
            v19 = sub_22B7DA678();
            if (v19)
            {
              v20 = v19;
              sub_22B7DB6A8();
              sub_22B7DC248();
              if (*(v20 + 16))
              {
                v28 = sub_22B4D7EC0(v173);
                if (v21)
                {
                  sub_22B4D1F68(*(v20 + 56) + 32 * v28, &v174);
                  sub_22B4DA138(v173);
                  v20, v29, v30, v31, v32, v33, v34, v35, v155, v163;
                  if (*(&v175 + 1))
                  {
                    sub_22B6F0AD4(&qword_27D8CF220, &qword_22B7FC290);
                    if (swift_dynamicCast())
                    {
                      v36 = v173[0];
                      goto LABEL_24;
                    }

LABEL_23:
                    v36 = MEMORY[0x277D84F90];
LABEL_24:
                    if (qword_28141F378 != -1)
                    {
LABEL_55:
                      swift_once();
                    }

                    v37 = sub_22B7DB2B8();
                    sub_22B4CFA74(v37, qword_281422638);
                    v38 = v0;

                    v39 = sub_22B7DB298();
                    v40 = sub_22B7DBCB8();
                    if (os_log_type_enabled(v39, v40))
                    {
                      v48 = swift_slowAlloc();
                      v49 = v18;
                      v50 = swift_slowAlloc();
                      v173[0] = v50;
                      *v48 = 136315650;
                      v51 = [v38 guid];

                      v49, v52, v53, v54, v55, v56, v57, v58, v155, v163;
                      if (!v51)
                      {
                        v49, v59, v60, v61, v62, v63, v64, v65, v156, v164;
                        swift_bridgeObjectRelease_n();
                        __break(1u);
                        return;
                      }

                      v36, v59, v60, v61, v62, v63, v64, v65, v156, v164;
                      v66 = sub_22B7DB6A8();
                      v68 = v67;

                      v69 = sub_22B4CFAAC(v66, v68, v173);
                      v68, v70, v71, v72, v73, v74, v75, v76, v157, v165;
                      *(v48 + 4) = v69;
                      *(v48 + 12) = 2080;
                      v77 = sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
                      v78 = MEMORY[0x2318952A0](v49, v77);
                      v80 = v79;
                      v81 = sub_22B4CFAAC(v78, v79, v173);
                      v80, v82, v83, v84, v85, v86, v87, v88, v158, v166;
                      *(v48 + 14) = v81;
                      *(v48 + 22) = 2080;
                      v89 = MEMORY[0x2318952A0](v36, v77);
                      v91 = v90;
                      v92 = sub_22B4CFAAC(v89, v90, v173);
                      v91, v93, v94, v95, v96, v97, v98, v99, v159, v167;
                      *(v48 + 24) = v92;
                      _os_log_impl(&dword_22B4CC000, v39, v40, "Participants for Chat %s changed. Added:  %s Removed: %s. Updating scheduled messages accordingly", v48, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x231898D60](v50, -1, -1);
                      MEMORY[0x231898D60](v48, -1, -1);

                      v18 = v49;
                    }

                    else
                    {
                      v36, v41, v42, v43, v44, v45, v46, v47, v155, v163;
                      v18, v107, v108, v109, v110, v111, v112, v113, v160, v169;
                    }

                    if (v18 >> 62)
                    {
                      v114 = sub_22B7DC1C8();
                      v0 = v36 >> 62;
                      if (v114)
                      {
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      v114 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v0 = v36 >> 62;
                      if (v114)
                      {
                        goto LABEL_33;
                      }
                    }

                    if (!v0)
                    {
                      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_33;
                      }

LABEL_67:
                      v18, v100, v101, v102, v103, v104, v105, v106, v155, v168;
                      v36, v144, v145, v146, v147, v148, v149, v150, v162, v171;
                      v151 = sub_22B7DB298();
                      v152 = sub_22B7DBC98();
                      if (os_log_type_enabled(v151, v152))
                      {
                        v153 = v38;
                        v154 = swift_slowAlloc();
                        *v154 = 0;
                        _os_log_impl(&dword_22B4CC000, v151, v152, "Bailing. Both addedParticipants & removedParticipants are empty", v154, 2u);
                        MEMORY[0x231898D60](v154, -1, -1);

                        return;
                      }

                      goto LABEL_64;
                    }

                    if (!sub_22B7DC1C8())
                    {
                      goto LABEL_67;
                    }

LABEL_33:
                    if (v0)
                    {
                      v115 = sub_22B7DC1C8();
                      if (v115)
                      {
LABEL_35:
                        v163 = v114;
                        v172 = v18;
                        v18 = 0;
                        v116 = MEMORY[0x277D84F90];
                        do
                        {
                          v117 = v18;
                          while (1)
                          {
                            if ((v36 & 0xC000000000000001) != 0)
                            {
                              v118 = MEMORY[0x231895C80](v117, v36);
                            }

                            else
                            {
                              if (v117 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_54;
                              }

                              v118 = *(v36 + 8 * v117 + 32);
                            }

                            v119 = v118;
                            v18 = v117 + 1;
                            if (__OFADD__(v117, 1))
                            {
                              __break(1u);
LABEL_54:
                              __break(1u);
                              goto LABEL_55;
                            }

                            v120 = [v118 ID];
                            if (v120)
                            {
                              break;
                            }

                            ++v117;
                            if (v18 == v115)
                            {
                              goto LABEL_50;
                            }
                          }

                          v128 = v120;
                          v129 = sub_22B7DB6A8();
                          v155 = v130;

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v116 = sub_22B71BD80(0, *v116->messageStore + 1, 1, v116, v124, v125, v126, v127);
                          }

                          v0 = *v116->messageStore;
                          v131 = *v116->chatRegistry;
                          if (v0 >= v131 >> 1)
                          {
                            v116 = sub_22B71BD80((v131 > 1), v0 + 1, 1, v116, v124, v125, v126, v127);
                          }

                          *v116->messageStore = v0 + 1;
                          v132 = v116 + 16 * v0;
                          *(v132 + 4) = v129;
                          *(v132 + 5) = v155;
                        }

                        while (v18 != v115);
LABEL_50:
                        v36, v121, v122, v123, v124, v125, v126, v127, v155, v114;
                        Strong = swift_unknownObjectWeakLoadStrong();
                        v18 = v172;
                        if (Strong)
                        {
                          v134 = Strong;
                          sub_22B7775E4(v38, v116, 2);
                        }

                        v114 = v168;
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      v115 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v115)
                      {
                        goto LABEL_35;
                      }
                    }

                    v116 = v36;
LABEL_60:
                    v116, v100, v101, v102, v103, v104, v105, v106, v155, v168;
                    if (v114)
                    {
                      v142 = swift_unknownObjectWeakLoadStrong();
                      if (v142)
                      {
                        v143 = v142;
                        sub_22B778754(v38, v18);
                      }
                    }

                    v18, v135, v136, v137, v138, v139, v140, v141, v161, v170;
LABEL_64:

                    return;
                  }

LABEL_22:
                  sub_22B4D0138(&v174);
                  goto LABEL_23;
                }
              }

              v20, v21, v22, v23, v24, v25, v26, v27, v155, v163;
              sub_22B4DA138(v173);
            }

            v174 = 0u;
            v175 = 0u;
            goto LABEL_22;
          }

LABEL_12:
          sub_22B4D0138(&v174);
          goto LABEL_13;
        }
      }

      v2, v3, v4, v5, v6, v7, v8, v9, v155, v163;
      sub_22B4DA138(v173);
    }

    v174 = 0u;
    v175 = 0u;
    goto LABEL_12;
  }
}

id ScheduledMessageMembershipObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

IMDaemonCore::EmojiParseResult __swiftcall EmojiParseResult.init(emoji:infix:)(Swift::String_optional emoji, Swift::String infix)
{
  *v2 = emoji;
  v2[1].value = infix;
  result.infix = infix;
  result.emoji = emoji;
  return result;
}

uint64_t EmojiParseResult.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  sub_22B7DC2E8();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11, v23, v24;
  v25 = v1;
  sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
  v12 = sub_22B7DB6C8();
  v14 = v13;
  MEMORY[0x231895140](v12);
  v14, v15, v16, v17, v18, v19, v20, v21, v2, v25;
  MEMORY[0x231895140](0x3A7869666E69202CLL, 0xEA00000000002220);
  MEMORY[0x231895140](v3, v4);
  MEMORY[0x231895140](34, 0xE100000000000000);
  return 0x203A696A6F6D65;
}

double sub_22B78CF94@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = a1[2];
  if (a2)
  {
    if (v4 == 1)
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[7];

      v9 = MEMORY[0x231895080](v5, v6, v7, v8);
      v11 = v10;
      v8, v10, v12, v13, v14, v15, v16, v17, v55, v57;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = v9;
      a3[3] = v11;
      return result;
    }
  }

  else if (v4 == 2)
  {
    v19 = a1[4];
    v20 = a1[5];
    v21 = a1[6];
    v22 = a1[7];

    v24 = MEMORY[0x231895080](v19, v20, v21, v22);
    v26 = v25;
    v22, v25, v27, v28, v29, v30, v31, v32, v55, v57;
    v33 = sub_22B7DB678();
    LODWORD(v22) = CEMStringIsSingleEmoji();

    if (v22)
    {
      v41 = a1;
      v42 = a1[8];
      v43 = a1[9];
      v44 = a1[10];
      v45 = v41[11];

      v46 = MEMORY[0x231895080](v42, v43, v44, v45);
      v48 = v47;
      v45, v47, v49, v50, v51, v52, v53, v54, v56, v58;
      *a3 = v24;
      a3[1] = v26;
      a3[2] = v46;
      a3[3] = v48;
      return result;
    }

    v26, v34, v35, v36, v37, v38, v39, v40, v56, v58;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

void sub_22B78D0D4()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_22B6F0AD4(&qword_27D8CF228, &unk_22B7FC400);
  swift_allocObject();
  sub_22B6FE66C(0, 0, 2048, 2048);
  *(v0 + 24) = v2;
  v3 = IMSharedUtilitiesFrameworkBundle();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 localizations];
    v6 = sub_22B7DB918();

    v7 = *(v1 + 16);
    *(v1 + 16) = v6;

    v7, v8, v9, v10, v11, v12, v13, v14, v28, v30;
    v15 = *(v1 + 24);
    swift_unownedRetainStrong();

    swift_unownedRetain();

    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    *(v15 + 16) = sub_22B78D880;
    *(v15 + 24) = v16;
    sub_22B704BC4(v18, v17);

    v19 = *v6->messageStore;
    v6, v20, v21, v22, v23, v24, v25, v26, v29, v31;
    if (!v19)
    {
LABEL_6:

      return;
    }

    v27 = 0;
    while (v27 != 0x8000000000)
    {
      sub_22B700088(v27);
      sub_22B700088(v27 + 1);
      sub_22B700088(v27 + 2);
      sub_22B700088(v27 + 3);
      sub_22B700088(v27 + 4);
      sub_22B700088(v27 + 5);
      sub_22B700088(v27 + 6);
      sub_22B700088(v27 + 7);
      sub_22B700088(v27 + 8);
      sub_22B700088(v27 + 9);
      sub_22B700088(v27 + 10);
      sub_22B700088(v27 + 11);
      sub_22B700088(v27 + 12);
      sub_22B700088(v27 + 13);
      sub_22B700088(v27 + 14);
      sub_22B700088(v27 + 15);
      sub_22B700088(v27 + 16);
      sub_22B700088(v27 + 17);
      v27 += 256;
      if (!--v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_22B78D318(int *a1, uint64_t a2)
{
  v3 = *a1;
  swift_unownedRetainStrong();
  v4 = *(a2 + 16);

  if (v3 >> 8 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3 >> 8;
  if (*v4->messageStore <= v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *&v4->membershipObserver[16 * v6];

  v4, v8, v9, v10, v11, v12, v13, v14, v39, v42;
  result = IMSharedUtilitiesFrameworkBundle();
  if (result)
  {
    if (v3 <= 0x11u)
    {
      v15 = result;
      v16 = qword_283F1BA70[3 * v3 + 5];

      v17 = sub_22B7DB678();
      v16, v18, v19, v20, v21, v22, v23, v24, v40, v43;
      v25 = sub_22B7DB678();
      v26 = sub_22B7DB678();
      v7, v27, v28, v29, v30, v31, v32, v33, v41, v44;
      v34 = [v15 localizedStringForKey:v17 value:0 table:v25 localization:v26];

      v35 = sub_22B7DB6A8();
      v37 = v36;

      v38 = sub_22B74B650(v35, v37);
      return v38;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_22B78D49C(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a1;
  v61 = a2;
  v4 = sub_22B7008BC(a1, a2);
  v6 = v5;
  if (!v5)
  {
    v50 = 0;
    v49 = 0;
    goto LABEL_17;
  }

  v7 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v60;
  v9 = v8;
  sub_22B6FC9F4(sub_22B703B48, &v56, v8);
  v11 = v10;
  v6, v12, v13, v14, v15, v16, v17, v18, v56, v57;
  v9, v19, v20, v21, v22, v23, v24, v25, v56, v57;
  if (v7 <= 0x11uLL)
  {
    v26 = &qword_283F1BA70[3 * v7];
    v29 = v26[6];
    v28 = v26 + 6;
    v27 = v29;
    v30 = qword_283F1BC60 == v29 || unk_283F1BC68 == v27;
    v31 = !v30;
    if (!v30 || (v32 = [objc_opt_self() sharedFeatureFlags], v33 = objc_msgSend(v32, sel_isEmojiTapbacksEnabled), v32, v33))
    {
      sub_22B78CF94(v11, v31, &v60);
      v11, v41, v42, v43, v44, v45, v46, v47, v59, v60;
      v48 = v63;
      if (v63)
      {
        v49 = v61;
        v6 = v62;
        v50 = v60;
        v51 = *v28;

        sub_22B78D888(v50, v49, v6, v48, v52, v53, v54, v55, v59, v60);
LABEL_19:
        *a3 = v50;
        a3[1] = v49;
        a3[2] = v6;
        a3[3] = v48;
        a3[4] = v51;
        return;
      }

      v50 = 0;
      v49 = 0;
      v6 = 0;
LABEL_18:
      v51 = 0;
      goto LABEL_19;
    }

    v11, v34, v35, v36, v37, v38, v39, v40, v59, v60;
    v50 = 0;
    v49 = 0;
    v6 = 0;
LABEL_17:
    v48 = 0;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_22B78D66C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8, vars0, vars8;

  return swift_deallocClassInstance();
}

uint64_t _s12IMDaemonCore16EmojiParseResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_22B7DC518() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_22B7DC518();
}

uint64_t sub_22B78D75C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B78D7A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B78D82C()
{
  result = qword_281420A58[0];
  if (!qword_281420A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281420A58);
  }

  return result;
}

void sub_22B78D888(uint64_t a1, char *a2, uint64_t a3, IMDScheduledMessageCoordinator *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  if (a4)
  {
    a4, a2, a3, a4, a5, a6, a7, a8, v18, v19;

    a2, v11, v12, v13, v14, v15, v16, v17, a9, a10;
  }
}

id sub_22B78D950()
{
  result = [objc_allocWithZone(type metadata accessor for IMDWatchSatelliteSyncController()) init];
  qword_281420050 = result;
  return result;
}

id IMDWatchSatelliteSyncController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static IMDWatchSatelliteSyncController.shared.getter()
{
  if (qword_281420040 != -1)
  {
    swift_once();
  }

  v1 = qword_281420050;

  return v1;
}

id sub_22B78DA10(void *a1)
{
  [a1 addObserver_];
  v3 = objc_opt_self();
  v4 = [a1 isSatelliteConnectionActive];

  return [v3 synchronizeSatelliteStatus_];
}

id sub_22B78DA80(char a1)
{
  v2 = objc_opt_self();

  return [v2 synchronizeSatelliteStatus_];
}

id IMDWatchSatelliteSyncController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDWatchSatelliteSyncController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDWatchSatelliteSyncController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDWatchSatelliteSyncController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B78DC60()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF290);
  sub_22B4CFA74(v0, qword_27D8CF290);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B78DCCC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF2A8);
  sub_22B4CFA74(v0, qword_27D8CF2A8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B78DD38()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF2C0);
  sub_22B4CFA74(v0, qword_27D8CF2C0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void sub_22B78DDA4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = a3[2];
    a3[2] = a2;
    v9 = a2;
  }

  else
  {
    v38 = a3;
    v10 = *(a1 + 16);
    if (v10)
    {
      v40 = objc_opt_self();
      v13 = (a1 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;

        v16 = [v40 stringGUID];
        if (v16)
        {
          v17 = v16;
          v18 = sub_22B7DB6A8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_22B78DF74(a6, v18, v20, v14, v15);
        v15, v21, v22, v23, v24, v25, v26, v27, v36, v38;
        v20, v28, v29, v30, v31, v32, v33, v34, v37, v39;
        v35 = swift_beginAccess();
        MEMORY[0x231895260](v35);
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B7DB938();
        }

        sub_22B7DB968();
        swift_endAccess();
        v13 += 2;
        --v10;
      }

      while (v10);
    }
  }
}

id sub_22B78DF74(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v108 = a3;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v9 = [objc_opt_self() synchronousDatabase];
  result = [v5 guid];
  if (result)
  {
    v11 = result;
    v12 = sub_22B7DB678();
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = a4;
    v13[4] = a5;
    v13[5] = v8;
    aBlock[4] = sub_22B791048;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B78EDAC;
    aBlock[3] = &unk_283F1F038;
    v96 = a4;
    v14 = _Block_copy(aBlock);
    v15 = v5;

    [v9 fetchSyncChatSliceForChatWithGUID:v11 serviceName:v12 completionHandler:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v17 = v8[2];
    v16 = v8[3];

    v25 = sub_22B78EE38(a1, a2, v108, v17, v16);
    if (v106)
    {

      v16, v26, v27, v28, v29, v30, v31, v32, v96, a1;
    }

    else
    {
      v108 = v8;
      v16, v18, v19, v20, v21, v22, v23, v24, v96, a1;
      [v15 style];
      v33 = sub_22B7DB678();
      [v25 _setCKRecordString_forKey_];

      v34 = [v15 chatIdentifier];
      v35 = sub_22B7DB678();
      v36 = IMCopyGUIDForChat();

      if (v36)
      {
        [v25 _setCKRecordString_forKey_];

        v37 = [v15 chatIdentifier];
        [v25 _setCKRecordString_forKey_];

        [v15 style];
        v38 = sub_22B7DC638();
        [v25 _setCKRecordNumber_forKey_];

        [v15 state];
        v39 = sub_22B7DBB38();
        [v25 _setCKRecordNumber_forKey_];

        v40 = [v15 displayName];
        [v25 _setCKRecordString_forKey_];

        [v15 isFiltered];
        v41 = sub_22B7DC628();
        [v25 _setCKRecordNumber_forKey_];

        v42 = [v15 lastAddressedLocalHandle];
        [v25 _setCKRecordString_forKey_];

        [v15 hasHadSuccessfulQuery];
        v43 = sub_22B7DB9B8();
        [v25 _setCKRecordNumber_forKey_];

        [v15 lastReadMessageTimeStamp];
        v44 = sub_22B7DC628();
        [v25 _setCKRecordNumber_forKey_];

        v45 = sub_22B78F29C();
        v46 = sub_22B7971D0(v45);
        v45, v47, v48, v49, v50, v51, v52, v53, v97, v101;
        v54 = sub_22B7DB8F8();
        v46, v55, v56, v57, v58, v59, v60, v61, v98, v102;
        [v25 _setCKRecordArray_forKey_];

        sub_22B78F65C(v25);
        v62 = objc_opt_self();
        v63 = [v62 sharedFeatureFlags];
        LODWORD(v46) = [v63 isTranscriptBackgroundsMicEnabled];

        if (v46)
        {
          sub_22B78FE64(v25);
        }

        else
        {
          if (qword_27D8CCCB0 != -1)
          {
            swift_once();
          }

          v64 = sub_22B7DB2B8();
          sub_22B4CFA74(v64, qword_27D8CF2A8);
          v65 = sub_22B7DB298();
          v66 = sub_22B7DBCB8();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_22B4CC000, v65, v66, "Bailing out of adding background to record, feature flag is off.", v67, 2u);
            MEMORY[0x231898D60](v67, -1, -1);
          }
        }

        v68 = [v62 sharedFeatureFlags];
        v69 = [v68 isMissingMessagesEnabled];

        if (v69)
        {
          sub_22B7902DC(v25);
        }

        v105 = v62;
        v70 = [v15 syncedProperties];
        if (v70)
        {
          v71 = v70;
          v72 = sub_22B7DB588();

          v73 = sub_22B7DB568();
          v72, v74, v75, v76, v77, v78, v79, v80, v99, v103;
        }

        else
        {
          v73 = 0;
        }

        v81 = JWEncodeDictionary();

        if (v81)
        {
          v82 = sub_22B7DA848();
          v84 = v83;

          v85 = sub_22B7DA838();
          sub_22B705E98(v82, v84);
        }

        else
        {
          v85 = 0;
        }

        [v25 _setCKRecordData_forKey_];

        sub_22B7905D8(v25);
        v86 = [v105 sharedFeatureFlags];
        v87 = [v86 isMissingMessagesEnabled];

        if (!v87 || [v15 &selRef_syncTaskType] != 43)
        {
          v94 = [v15 groupID];
          [v25 _setCKRecordString_forKey_];

          v95 = [v15 originalGroupID];
          [v25 _setCKRecordString_forKey_];

          return v25;
        }

        v88 = sub_22B7DB678();
        v89 = IMChatLookupDomainForServiceName();

        if (v89)
        {
          v90 = [v15 latestIdentifierForDomain_];
          if (v90)
          {
            v91 = v90;
            v92 = [v15 latestIdentifierForDomain_];
            if (v92)
            {
              v93 = v92;
              [v25 _setCKRecordString_forKey_];

              [v25 _setCKRecordString_forKey_];

              return v25;
            }
          }

          else
          {
            v91 = v89;
          }
        }

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:10 userInfo:0];
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:13 userInfo:0];
      }

      swift_willThrow();
    }

    return v25;
  }

  __break(1u);
  return result;
}

void sub_22B78E910(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_22B7DB918();

  v14 = a3;
  v4(v5, a3);

  v5, v6, v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_22B78EA9C(id a1, id a2, void *a3, void *a4, IMDScheduledMessageCoordinator *a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_7:
    if (a1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v12 = a2;
  if (qword_28141F370 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_281422620);
  v14 = a2;
  v15 = a3;

  v16 = sub_22B7DB298();
  v17 = sub_22B7DBC98();
  if (!os_log_type_enabled(v16, v17))
  {
    a5, v18, v19, v20, v21, v22, v23, v24, v67, v70;

    if (a1)
    {
LABEL_8:
      v48 = [a1 ckRecordID];
      if (v48)
      {
        v49 = v48;
        v50 = sub_22B7DB6A8();
        a1 = v51;
      }

      else
      {
        v50 = 0;
        a1 = 0;
      }

      goto LABEL_13;
    }

LABEL_11:
    v50 = 0;
LABEL_13:
    swift_beginAccess();
    v52 = *(a6 + 24);
    *(a6 + 16) = v50;
    *(a6 + 24) = a1;
    v52, v53, v54, v55, v56, v57, v58, v59, v67, v70;
    return;
  }

  v73 = a4;
  v25 = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  v74[0] = v71;
  *v25 = 136315650;
  v26 = [v15 guid];
  if (v26)
  {
    v27 = v26;

    a5, v28, v29, v30, v31, v32, v33, v34, v68, v71;
    v35 = sub_22B7DB6A8();
    v37 = v36;

    v38 = sub_22B4CFAAC(v35, v37, v74);
    v37, v39, v40, v41, v42, v43, v44, v45, v69, v72;
    *(v25 + 4) = v38;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_22B4CFAAC(v73, a5, v74);
    *(v25 + 22) = 2112;
    v46 = a2;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 24) = v47;
    *v67 = v47;
    _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to fetch sync chat slice for chat with guid %s service %s error: %@", v25, 0x20u);
    sub_22B4D0D64(v67, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v67, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v70, -1, -1);
    MEMORY[0x231898D60](v25, -1, -1);

    goto LABEL_7;
  }

  a5, v60, v61, v62, v63, v64, v65, v66, v68, v71;
  __break(1u);
}

void sub_22B78EDAC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_22B78EE38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  if (a5)
  {
    v10 = sub_22B7DB678();
    if (a3)
    {
LABEL_3:
      v11 = sub_22B7DB678();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = objc_opt_self();
  v13 = [v6 guid];
  v14 = [v12 recordNameForRecordChangeTag:0 ckRecordID:v10 salt:v11 guid:v13];

  if (!v14)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v17 = sub_22B7DB2B8();
    sub_22B4CFA74(v17, qword_281422620);
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBC98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Could not create record with existing metadata. Using a different method instead", v20, 2u);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    if (a3)
    {
      a3 = sub_22B7DB678();
    }

    v21 = [v6 guid];
    v22 = [v12 recordIDUsingSalt:a3 zoneID:a1 guid:v21];

    if (v22)
    {
      result = [swift_getObjCClassFromMetadata() _recordType];
      if (result)
      {
LABEL_18:
        v23 = result;
        sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
        sub_22B7DB6A8();

        return sub_22B7DBFA8();
      }

      goto LABEL_28;
    }

    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (!os_log_type_enabled(v25, v26))
    {
LABEL_26:

      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:11 userInfo:0];
      return swift_willThrow();
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Could not create record.";
LABEL_25:
    _os_log_impl(&dword_22B4CC000, v25, v26, v28, v27, 2u);
    MEMORY[0x231898D60](v27, -1, -1);
    goto LABEL_26;
  }

  v15 = [v12 recordIDUsingName:v14 zoneID:a1];

  if (!v15)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422620);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_26;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Could not create record with record name.";
    goto LABEL_25;
  }

  result = [swift_getObjCClassFromMetadata() _recordType];
  if (result)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

id sub_22B78F29C()
{
  result = [v0 participants];
  if (result)
  {
    v2 = result;
    sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
    v3 = sub_22B7DB918();

    if (v3 >> 62)
    {
LABEL_28:
      v44 = v3 & 0xFFFFFFFFFFFFFF8;
      v45 = sub_22B7DC1C8();
      if (v45)
      {
LABEL_4:
        v11 = 0;
        v42 = MEMORY[0x277D84F90];
        v12 = &selRef_deleteMessageGUIDs_inChat_;
        do
        {
          v13 = v11;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x231895C80](v13, v3);
            }

            else
            {
              if (v13 >= *(v44 + 16))
              {
                goto LABEL_27;
              }

              v14 = *(v3 + 8 * v13 + 32);
            }

            v15 = v14;
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v16 = [v14 v12[497]];
            if (v16)
            {
              v17 = v16;
              v18 = sub_22B7DB588();

              v19 = sub_22B7DB568();
              v18, v20, v21, v22, v23, v24, v25, v26, v41, v42;
            }

            else
            {
              v19 = 0;
            }

            v27 = JWEncodeDictionary();

            if (v27)
            {
              break;
            }

            if (qword_28141F370 != -1)
            {
              swift_once();
            }

            v28 = sub_22B7DB2B8();
            sub_22B4CFA74(v28, qword_281422620);
            v29 = v15;
            v30 = sub_22B7DB298();
            v31 = sub_22B7DBC98();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              *v32 = 138412290;
              *(v32 + 4) = v29;
              *v33 = v29;
              v34 = v29;
              _os_log_impl(&dword_22B4CC000, v30, v31, "Could not handle info for %@. Dropping.", v32, 0xCu);
              sub_22B4D0D64(v33, &unk_27D8CEC60, &qword_22B7F9E20);
              MEMORY[0x231898D60](v33, -1, -1);
              v12 = &selRef_deleteMessageGUIDs_inChat_;
              MEMORY[0x231898D60](v32, -1, -1);
            }

            ++v13;
            if (v11 == v45)
            {
              goto LABEL_30;
            }
          }

          v35 = sub_22B7DA848();
          v37 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_22B71C7CC(0, *v42->messageStore + 1, 1, v42, v7, v8, v9, v10);
          }

          v39 = *v42->messageStore;
          v38 = *v42->chatRegistry;
          if (v39 >= v38 >> 1)
          {
            v42 = sub_22B71C7CC((v38 > 1), v39 + 1, 1, v42, v7, v8, v9, v10);
          }

          *v42->messageStore = v39 + 1;
          v40 = v42 + 16 * v39;
          *(v40 + 4) = v35;
          *(v40 + 5) = v37;
        }

        while (v11 != v45);
        goto LABEL_30;
      }
    }

    else
    {
      v44 = v3 & 0xFFFFFFFFFFFFFF8;
      v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        goto LABEL_4;
      }
    }

    v42 = MEMORY[0x277D84F90];
LABEL_30:
    v3, v4, v5, v6, v7, v8, v9, v10, v41, v42;
    return v43;
  }

  __break(1u);
  return result;
}

void sub_22B78F65C(void *a1)
{
  v3 = v1;
  v5 = sub_22B7DA828();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v122 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v122 - v13;
  v15 = [v3 groupPhotoGuid];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v127 = v6;
  v17 = sub_22B7DB6A8();
  v25 = v18;
  v26 = (v18 >> 56) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v26 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    v18, v18, v19, v20, v21, v22, v23, v24, v122, v123;

    return;
  }

  v125 = v17;
  v126 = v5;
  v27 = [objc_opt_self() sharedInstance];
  if (!v27)
  {

    __break(1u);
    return;
  }

  v28 = v27;
  v29 = [v27 transferForGUID_];

  if (v29)
  {
    v30 = [v29 localURL];
    if (v30)
    {
      v31 = v30;
      sub_22B7DA7D8();

      v32 = v29;
      (*(v127 + 32))(v14, v12, v126);
      if ([v29 isFinished])
      {
        v25, v33, v34, v35, v36, v37, v38, v39, v122, v123;
        v40 = sub_22B7DA7B8();
        if (v2)
        {
          (*(v127 + 8))(v14, v126);
        }

        else
        {
          v96 = v127;
          if (v40)
          {
            v97 = objc_allocWithZone(MEMORY[0x277CBC190]);
            v98 = sub_22B7DA788();
            v99 = [v97 initWithFileURL_];

            [a1 _setCKRecordAsset_forKey_];
            v100 = @"gpid";
            [a1 _setCKRecordString_forKey_];

            (*(v96 + 8))(v14, v126);
          }

          else
          {

            if (qword_27D8CCCA8 != -1)
            {
              swift_once();
            }

            v101 = sub_22B7DB2B8();
            sub_22B4CFA74(v101, qword_27D8CF290);
            v102 = v126;
            (*(v96 + 16))(v9, v14, v126);
            v103 = sub_22B7DB298();
            v104 = sub_22B7DBCB8();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              v123 = v105;
              v125 = swift_slowAlloc();
              v128 = v125;
              *v105 = 136315138;
              sub_22B791054();
              v124 = v103;
              v106 = sub_22B7DC4E8();
              v108 = v107;
              v109 = *(v96 + 8);
              LODWORD(v127) = v104;
              v109(v9, v102);
              v110 = sub_22B4CFAAC(v106, v108, &v128);
              v111 = v108;
              v32 = v29;
              v111, v112, v113, v114, v115, v116, v117, v118, v122, v123;
              v119 = v123;
              *(v123 + 4) = v110;
              v120 = v124;
              _os_log_impl(&dword_22B4CC000, v124, v127, "Resource not reachable for %s", v119, 0xCu);
              v121 = v125;
              sub_22B4CFB78(v125);
              MEMORY[0x231898D60](v121, -1, -1);
              MEMORY[0x231898D60](v119, -1, -1);
            }

            else
            {

              v109 = *(v96 + 8);
              v109(v9, v102);
            }

            [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:3 userInfo:0];
            swift_willThrow();

            v109(v14, v102);
          }
        }
      }

      else
      {

        if (qword_27D8CCCA8 != -1)
        {
          swift_once();
        }

        v68 = sub_22B7DB2B8();
        sub_22B4CFA74(v68, qword_27D8CF290);

        v69 = sub_22B7DB298();
        v70 = sub_22B7DBCB8();
        v25, v71, v72, v73, v74, v75, v76, v77, v122, v123;
        if (os_log_type_enabled(v69, v70))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v128 = v86;
          *v85 = 136315138;
          v87 = sub_22B4CFAAC(v125, v25, &v128);
          v25, v88, v89, v90, v91, v92, v93, v94, v122, v123;
          *(v85 + 4) = v87;
          _os_log_impl(&dword_22B4CC000, v69, v70, "Transfer not finished for group photo guid %s", v85, 0xCu);
          sub_22B4CFB78(v86);
          MEMORY[0x231898D60](v86, -1, -1);
          v95 = v85;
          v32 = v29;
          MEMORY[0x231898D60](v95, -1, -1);
        }

        else
        {
          v25, v78, v79, v80, v81, v82, v83, v84, v122, v123;
        }

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:2 userInfo:0];
        swift_willThrow();

        (*(v127 + 8))(v14, v126);
      }

      return;
    }
  }

  if (qword_27D8CCCA8 != -1)
  {
    swift_once();
  }

  v41 = sub_22B7DB2B8();
  sub_22B4CFA74(v41, qword_27D8CF290);

  v42 = sub_22B7DB298();
  v43 = sub_22B7DBCB8();
  v25, v44, v45, v46, v47, v48, v49, v50, v122, v123;
  if (os_log_type_enabled(v42, v43))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v128 = v59;
    *v58 = 136315138;
    v60 = sub_22B4CFAAC(v125, v25, &v128);
    v25, v61, v62, v63, v64, v65, v66, v67, v122, v123;
    *(v58 + 4) = v60;
    _os_log_impl(&dword_22B4CC000, v42, v43, "Transfer not found for group photo guid %s", v58, 0xCu);
    sub_22B4CFB78(v59);
    MEMORY[0x231898D60](v59, -1, -1);
    MEMORY[0x231898D60](v58, -1, -1);
  }

  else
  {
    v25, v51, v52, v53, v54, v55, v56, v57, v122, v123;
  }

  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:1 userInfo:0];
  swift_willThrow();
}

void sub_22B78FE64(void *a1)
{
  v4 = sub_22B7DA828();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 transcriptBackgroundPath];
  if (v8)
  {
    v9 = v8;
    v10 = sub_22B7DB6A8();
    v12 = v11;

    v20 = (v12 >> 56) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v20 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_7;
    }

    sub_22B7DA768();
    v21 = sub_22B7DA7B8();
    if (v2)
    {
      (*(v5 + 8))(v7, v4);
LABEL_7:
      v12, v13, v14, v15, v16, v17, v18, v19, v68, v69;
      return;
    }

    if (v21)
    {
      v12, v22, v23, v24, v25, v26, v27, v28, v68, v69;
      v29 = objc_allocWithZone(MEMORY[0x277CBC190]);
      v30 = sub_22B7DA788();
      v31 = [v29 initWithFileURL_];

      if (qword_27D8CCCB0 != -1)
      {
        swift_once();
      }

      v32 = sub_22B7DB2B8();
      sub_22B4CFA74(v32, qword_27D8CF2A8);
      v33 = v31;
      v34 = a1;
      v35 = sub_22B7DB298();
      v36 = sub_22B7DBCB8();

      v69 = v35;
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412546;
        *(v37 + 4) = v33;
        *(v37 + 12) = 2112;
        *(v37 + 14) = v34;
        *v38 = v33;
        v38[1] = v34;
        v39 = v33;
        v40 = v34;
        _os_log_impl(&dword_22B4CC000, v69, v36, "Setting background asset on record. Asset: %@ Record: %@", v37, 0x16u);
        sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v38, -1, -1);
        MEMORY[0x231898D60](v37, -1, -1);
      }

      [v34 _setCKRecordAsset_forKey_];
    }

    else
    {
      if (qword_27D8CCCB0 != -1)
      {
        swift_once();
      }

      v41 = sub_22B7DB2B8();
      sub_22B4CFA74(v41, qword_27D8CF2A8);

      v42 = sub_22B7DB298();
      v43 = sub_22B7DBCB8();
      v12, v44, v45, v46, v47, v48, v49, v50, v68, v69;
      if (os_log_type_enabled(v42, v43))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v70 = v59;
        *v58 = 136315138;
        v60 = sub_22B4CFAAC(v10, v12, &v70);
        v12, v61, v62, v63, v64, v65, v66, v67, v68, v69;
        *(v58 + 4) = v60;
        _os_log_impl(&dword_22B4CC000, v42, v43, "Resource not reachable for %s", v58, 0xCu);
        sub_22B4CFB78(v59);
        MEMORY[0x231898D60](v59, -1, -1);
        MEMORY[0x231898D60](v58, -1, -1);
      }

      else
      {
        v12, v51, v52, v53, v54, v55, v56, v57, v68, v69;
      }

      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:6 userInfo:0];
      swift_willThrow();
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_22B7902DC(void *a1)
{
  if ([v1 style] == 43)
  {
    v3 = [v1 domainIdentifiers];
    if (v3)
    {
      sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
      v4 = sub_22B7DB588();

      sub_22B7B1048(v4);
      v6 = v5;
      v4, v7, v8, v9, v10, v11, v12, v13, v44, v46;
      v3 = sub_22B7DB568();
      v6, v14, v15, v16, v17, v18, v19, v20, v45, v46;
    }

    v21 = JWEncodeDictionary();

    if (v21)
    {
      v22 = sub_22B7DA848();
      v24 = v23;

      v25 = sub_22B7DA838();
      [a1 _setCKRecordData_forKey_];

      sub_22B705E98(v22, v24);
      return;
    }

    if (qword_27D8CCCB8 != -1)
    {
      swift_once();
    }

    v26 = sub_22B7DB2B8();
    sub_22B4CFA74(v26, qword_27D8CF2C0);
    v27 = v1;
    v28 = sub_22B7DB298();
    v29 = sub_22B7DBCB8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136315138;
      v32 = [v27 guid];

      if (!v32)
      {
        __break(1u);
        return;
      }

      v33 = sub_22B7DB6A8();
      v35 = v34;

      v36 = sub_22B4CFAAC(v33, v35, &v46);
      v35, v37, v38, v39, v40, v41, v42, v43, v44, v46;
      *(v30 + 4) = v36;
      _os_log_impl(&dword_22B4CC000, v28, v29, "Failed to encode domain identifiers for chat with guid %s. Not adding to record.", v30, 0xCu);
      sub_22B4CFB78(v31);
      MEMORY[0x231898D60](v31, -1, -1);
      MEMORY[0x231898D60](v30, -1, -1);
    }

    else
    {
    }

    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:8 userInfo:0];
    swift_willThrow();
  }
}

void sub_22B7905D8(void *a1)
{
  v2 = v1;
  v4 = sub_22B7DA968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 autoDonationBehaviorLastModificationDate];
  if (v8)
  {
    v9 = v8;
    sub_22B7DA928();

    sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B7F93A0;
    *(inited + 32) = sub_22B7DB6A8();
    *(inited + 40) = v11;
    v12 = [v2 autoDonationBehavior];
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v12;
    *(inited + 80) = sub_22B7DB6A8();
    *(inited + 88) = v13;
    v14 = sub_22B7DA8B8();
    v15 = [v14 __im_nanosecondTimeInterval];

    *(inited + 120) = MEMORY[0x277D84A28];
    *(inited + 96) = v15;
    v16 = sub_22B71DF98(inited);
    swift_setDeallocating();
    sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
    swift_arrayDestroy();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_22B7F93B0;
    *(v17 + 32) = sub_22B7DB6A8();
    *(v17 + 40) = v18;
    v19 = [v2 autoDonationBehavior];
    *(v17 + 72) = MEMORY[0x277D83B88];
    *(v17 + 48) = v19;
    v16 = sub_22B71DF98(v17);
    swift_setDeallocating();
    sub_22B4D0D64(v17 + 32, &qword_27D8CDB60, &qword_22B7FA360);
  }

  if (qword_28141F370 != -1)
  {
    swift_once();
  }

  v20 = sub_22B7DB2B8();
  sub_22B4CFA74(v20, qword_281422620);

  v21 = sub_22B7DB298();
  v22 = sub_22B7DBCB8();
  v16, v23, v24, v25, v26, v27, v28, v29, v83, v84;
  if (os_log_type_enabled(v21, v22))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v85 = v38;
    *v37 = 136315138;
    v39 = sub_22B7DB598();
    v41 = v40;
    v16, v40, v42, v43, v44, v45, v46, v47, v83, v84;
    v48 = sub_22B4CFAAC(v39, v41, &v85);
    v41, v49, v50, v51, v52, v53, v54, v55, v83, v84;
    *(v37 + 4) = v48;
    _os_log_impl(&dword_22B4CC000, v21, v22, "Syncing new syndication attributes up %s", v37, 0xCu);
    sub_22B4CFB78(v38);
    MEMORY[0x231898D60](v38, -1, -1);
    MEMORY[0x231898D60](v37, -1, -1);
  }

  else
  {
    v16, v30, v31, v32, v33, v34, v35, v36, v83, v84;
  }

  sub_22B7B0AC8(v16);
  v57 = v56;
  v16, v58, v59, v60, v61, v62, v63, v64, v83, v84;
  v65 = sub_22B7DB568();
  v57, v66, v67, v68, v69, v70, v71, v72, v83, v84;
  v73 = JWEncodeDictionary();

  if (v73)
  {
    v74 = sub_22B7DA848();
    v76 = v75;

    v73 = sub_22B7DA838();
    sub_22B705E98(v74, v76);
  }

  [a1 _setCKRecordData_forKey_];

  v77 = [v2 compressedProtobufDataForChatProto1];
  if (v77)
  {
    v78 = v77;
    v79 = sub_22B7DA848();
    v81 = v80;

    v82 = sub_22B7DA838();
    sub_22B705E98(v79, v81);
  }

  else
  {
    v82 = 0;
  }

  [a1 _setCKRecordData_forKey_];
}

void sub_22B790AD8(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_opt_self() synchronousDatabase];
  v8 = [v2 guid];
  if (!v8)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v4;
  v10[4] = v2;
  v10[5] = a1;
  aBlock[4] = sub_22B79103C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B78E910;
  aBlock[3] = &unk_283F1EFC0;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  v53 = v4;

  v13 = v2;

  [v7 fetchServicesForChatWithGUID:v9 completionHandler:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = v14;
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_281422620);
    v17 = v13;
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBC98();
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54[0] = v21;
    *v20 = 136315138;
    v22 = [v17 guid];

    if (v22)
    {
      v23 = sub_22B7DB6A8();
      v25 = v24;

      v26 = sub_22B4CFAAC(v23, v25, v54);
      v25, v27, v28, v29, v30, v31, v32, v33, v52, v53;
      *(v20 + 4) = v26;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Error fetch legacy chat slices for guid with guid %s", v20, 0xCu);
      sub_22B4CFB78(v21);
      MEMORY[0x231898D60](v21, -1, -1);
      MEMORY[0x231898D60](v20, -1, -1);

LABEL_20:
      swift_willThrow();

      return;
    }

    goto LABEL_22;
  }

  swift_beginAccess();
  if (*v5 >> 62)
  {
    if (sub_22B7DC1C8())
    {
      goto LABEL_10;
    }
  }

  else if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    return;
  }

  if (qword_28141F370 != -1)
  {
    swift_once();
  }

  v34 = sub_22B7DB2B8();
  sub_22B4CFA74(v34, qword_281422620);
  v35 = v13;
  v36 = sub_22B7DB298();
  v37 = sub_22B7DBC98();
  if (!os_log_type_enabled(v36, v37))
  {

    goto LABEL_19;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v56 = v39;
  *v38 = 136315138;
  v40 = [v35 guid];

  if (v40)
  {
    v41 = sub_22B7DB6A8();
    v43 = v42;

    v44 = sub_22B4CFAAC(v41, v43, &v56);
    v43, v45, v46, v47, v48, v49, v50, v51, v52, v53;
    *(v38 + 4) = v44;
    _os_log_impl(&dword_22B4CC000, v36, v37, "Error fetching legacy chat slices for guid with guid %s", v38, 0xCu);
    sub_22B4CFB78(v39);
    MEMORY[0x231898D60](v39, -1, -1);
    MEMORY[0x231898D60](v38, -1, -1);

LABEL_19:
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"IMCloudKitChatSyncErrorDomain" code:14 userInfo:0];
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_22B791054()
{
  result = qword_27D8CEB40;
  if (!qword_27D8CEB40)
  {
    sub_22B7DA828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB40);
  }

  return result;
}

unint64_t sub_22B7910B8()
{
  result = qword_27D8CF2F0;
  if (!qword_27D8CF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF2F0);
  }

  return result;
}

unint64_t sub_22B791110()
{
  result = qword_27D8CF2F8;
  if (!qword_27D8CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF2F8);
  }

  return result;
}

uint64_t sub_22B7911CC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF2D8);
  sub_22B4CFA74(v0, qword_27D8CF2D8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B79128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B79134C;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_22B79134C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_22B791450()
{
  result = qword_27D8CF308;
  if (!qword_27D8CF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF308);
  }

  return result;
}

uint64_t sub_22B7914A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B791520(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_22B791764();
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_22B7915D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6F0D94;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_22B791764()
{
  result = qword_27D8CF340;
  if (!qword_27D8CF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF340);
  }

  return result;
}

uint64_t sub_22B7918DC(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF300, type metadata accessor for RemoteIntentAttachmentEntity, &unk_22B7FC5D4);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22B7919A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B6F12E8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_22B791A64(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF358, type metadata accessor for RemoteIntentAttachmentEntity, &unk_22B7FC788);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22B791AE4()
{
  result = qword_27D8CF378;
  if (!qword_27D8CF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF378);
  }

  return result;
}

unint64_t sub_22B791B3C()
{
  result = qword_27D8CF380;
  if (!qword_27D8CF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF380);
  }

  return result;
}

uint64_t sub_22B791C04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_22B7DA718();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22B7DA628();
  sub_22B6F24F4(v8, a2);
  sub_22B4CFA74(v8, a2);
  sub_22B7DA708();
  (*(v7 + 56))(v5, 1, 1, v6);
  return sub_22B7DA618();
}

uint64_t sub_22B791D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v4 = sub_22B7DA4B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - v8;
  v9 = sub_22B6F0AD4(&qword_27D8CF530, &unk_22B7FCDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_22B7DA718();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  *a3 = 0xD000000000000024;
  a3[1] = 0x800000022B7FCC40;
  a3[2] = 0xD000000000000024;
  a3[3] = 0x800000022B7FCC40;
  v17 = type metadata accessor for DaemonRequestAttachmentsIntentOutput(0);
  sub_22B7DA708();
  (*(v16 + 56))(v14, 1, 1, v15);
  v18 = sub_22B7DA5A8();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_22B7DA5B8();
  v19 = *(v17 + 28);
  sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
  *(a3 + v19) = sub_22B7DA528();
  v20 = *(v17 + 32);
  sub_22B6F0AD4(&qword_27D8CF558, &unk_22B7FCDE0);
  sub_22B7914A4(&qword_27D8CF300, type metadata accessor for RemoteIntentAttachmentEntity, &unk_22B7FC5D4);
  *(a3 + v20) = sub_22B7DA518();
  v21 = *(v5 + 16);
  v22 = v27;
  v23 = v29;
  v21(v27, v29, v4);
  v21(v28, v22, v4);
  sub_22B7DA508();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v31 = v30;
  sub_22B7DA508();
  return (v24)(v23, v4);
}

uint64_t sub_22B792124@<X0>(uint64_t a1@<X0>, id a2@<X1>, IMDScheduledMessageCoordinator *a3@<X2>, void *a4@<X8>)
{
  v88 = a3;
  v85 = a4;
  v6 = sub_22B6F0AD4(&qword_27D8CF530, &unk_22B7FCDB0);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v82 - v7;
  v8 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v82 - v9;
  v111 = sub_22B7DA718();
  v124 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22B7DA828();
  v123 = *(v109 - 8);
  v11 = MEMORY[0x28223BE20](v109);
  v108 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v82 - v14;
  MEMORY[0x28223BE20](v13);
  v128 = &v82 - v15;
  v106 = type metadata accessor for RemoteIntentAttachmentEntity(0);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v115 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22B7DAEC8();
  v17 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v82 - v20;
  v22 = sub_22B7DA9A8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22B7DA4B8();
  v87 = *(v116 - 8);
  v26 = MEMORY[0x28223BE20](v116);
  v104 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v103 = &v82 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v127 = &v82 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v82 - v32;
  sub_22B705E44(a1, a2);
  sub_22B7DA998();
  sub_22B7DA978();
  (*(v23 + 8))(v25, v22);
  v34 = sub_22B7DB248();
  (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
  v84 = v33;
  v86 = a1;
  v35 = v88;
  sub_22B7DA4A8();
  v43 = *v35->messageStore;
  if (v43)
  {
    v83 = a2;
    v101 = sub_22B6F0AD4(&qword_27D8CF538, &unk_22B7FCDC0);
    v100 = sub_22B6F0AD4(&qword_27D8CF540, &unk_22B7FDBB0);
    v99 = sub_22B6F0AD4(&qword_27D8CF548, &qword_22B7FCDD0);
    v98 = sub_22B6F0AD4(&qword_27D8CF550, &qword_22B7FCDD8);
    v45 = *(v17 + 16);
    v44 = v17 + 16;
    v97 = v45;
    v46 = v35 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v96 = 0x800000022B7FCCA0;
    v95 = *(v44 + 56);
    v94 = (v124 + 56);
    messageStore = v123->messageStore;
    serviceSession = v123->serviceSession;
    v114 = (v87 + 16);
    v91 = (v87 + 8);
    v90 = (v44 - 8);
    v47 = MEMORY[0x277D84F90];
    v48 = v115;
    v102 = v44;
    do
    {
      v123 = v47;
      v124 = v43;
      v122 = v46;
      v49 = v97(v125);
      MEMORY[0x231894830](v49);
      sub_22B7DAE88();
      v50 = sub_22B7DAE98();
      v120 = v51;
      v121 = v50;
      LOBYTE(v119) = sub_22B7DAE78() & 1;
      v119 = v119;
      v52 = v96;
      *v48 = 0xD00000000000001CLL;
      v48[1] = v52;
      v48[2] = 0xD00000000000001CLL;
      v48[3] = v52;
      v53 = v106;
      sub_22B7DA708();
      (*v94)(v112, 1, 1, v111);
      v54 = sub_22B7DA5A8();
      (*(*(v54 - 8) + 56))(v113, 1, 1, v54);
      sub_22B7DA5B8();
      v55 = v53[7];
      *(v48 + v55) = sub_22B7DA538();
      v56 = v53[8];
      *(v48 + v56) = sub_22B7DA528();
      v57 = v53[9];
      v118 = sub_22B7DA548();
      *(v48 + v57) = v118;
      v58 = v53[10];
      v117 = sub_22B7DA558();
      *(v48 + v58) = v117;
      v59 = *messageStore;
      v60 = v107;
      v61 = v109;
      (*messageStore)(v107, v128, v109);
      v59(v108, v60, v61);
      sub_22B7DA508();
      v62 = *serviceSession;
      (*serviceSession)(v60, v61);
      v63 = *v114;
      v64 = v103;
      v65 = v127;
      v66 = v116;
      (*v114)(v103, v127, v116);
      v89 = v63;
      v63(v104, v64, v66);
      sub_22B7DA508();
      v67 = *v91;
      (*v91)(v64, v66);
      v129 = v121;
      v130 = v120;
      sub_22B7DA508();
      LOBYTE(v129) = v119;
      sub_22B7DA508();
      v67(v65, v66);
      v62(v128, v61);
      v47 = v123;
      (*v90)(v125, v126);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_22B71C8D8(0, *v47->messageStore + 1, 1, v47);
      }

      v69 = *v47->messageStore;
      v68 = *v47->chatRegistry;
      v48 = v115;
      if (v69 >= v68 >> 1)
      {
        v47 = sub_22B71C8D8((v68 > 1), v69 + 1, 1, v47);
      }

      *v47->messageStore = v69 + 1;
      sub_22B796B30(v48, v47 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v69);
      v46 = &v122[v95];
      v43 = v124 - 1;
    }

    while (v124 != 1);
    v88, v46, v70, v71, v72, v73, v74, v75, v82, v83;
    a2 = v83;
    v76 = v87;
    v77 = v89;
  }

  else
  {
    v35, v36, v37, v38, v39, v40, v41, v42, v82, v83;
    v76 = v87;
    v77 = *(v87 + 16);
    v47 = MEMORY[0x277D84F90];
  }

  v78 = v127;
  v79 = v84;
  v80 = v116;
  v77(v127, v84, v116);
  sub_22B791D60(v78, v47, v85);
  sub_22B705E98(v86, a2);
  return (*(v76 + 8))(v79, v80);
}

uint64_t sub_22B792C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B796C20;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_22B792D10()
{
  result = qword_27D8CF390;
  if (!qword_27D8CF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF390);
  }

  return result;
}

unint64_t sub_22B792D68()
{
  result = qword_27D8CF3A0;
  if (!qword_27D8CF3A0)
  {
    sub_22B6FB8C4(&qword_27D8CF3A8, qword_22B7FC860);
    sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput, &unk_22B7FCA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF3A0);
  }

  return result;
}

uint64_t sub_22B792E1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_22B793060();
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_22B792ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6F12E8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_22B793060()
{
  result = qword_27D8CF3C8;
  if (!qword_27D8CF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF3C8);
  }

  return result;
}

uint64_t sub_22B7931C0(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF388, type metadata accessor for DaemonRequestAttachmentsIntentOutput, &unk_22B7FC91C);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22B793284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22B7DA5C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22B7932F8(uint64_t a1)
{
  v2 = sub_22B7914A4(&qword_27D8CF3E0, type metadata accessor for DaemonRequestAttachmentsIntentOutput, "9ȠV̡\b");

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22B793378()
{
  result = qword_27D8CF400;
  if (!qword_27D8CF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF400);
  }

  return result;
}

unint64_t sub_22B7933D0()
{
  result = qword_27D8CF408;
  if (!qword_27D8CF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF408);
  }

  return result;
}

unint64_t sub_22B7934A8()
{
  result = qword_27D8CF410;
  if (!qword_27D8CF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF410);
  }

  return result;
}

uint64_t sub_22B7934FC()
{
  v0 = sub_22B7DA718();
  sub_22B6F24F4(v0, qword_27D8D4918);
  sub_22B4CFA74(v0, qword_27D8D4918);
  return sub_22B7DA708();
}

uint64_t sub_22B793560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[61] = a2;
  v3[62] = a3;
  v3[60] = a1;
  v4 = sub_22B7DAFD8();
  v3[63] = v4;
  v3[64] = *(v4 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = type metadata accessor for DaemonRequestAttachmentsIntentOutput(0);
  v3[67] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3[68] = swift_task_alloc();
  v5 = sub_22B7DA4B8();
  v3[69] = v5;
  v3[70] = *(v5 - 8);
  v3[71] = swift_task_alloc();
  v6 = sub_22B7DB018();
  v3[72] = v6;
  v3[73] = *(v6 - 8);
  v3[74] = swift_task_alloc();
  v7 = sub_22B7DA9A8();
  v3[75] = v7;
  v3[76] = *(v7 - 8);
  v3[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7937A0, 0, 0);
}

uint64_t sub_22B7937A0()
{
  v193 = v0;
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isRockNRollEnabled];

  if (!v2)
  {
    if (qword_27D8CCCC0 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_27D8CF2D8);
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBC98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, v9, "perform[]: dropping intent because the feature is not enabled.", v10, 2u);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    sub_22B796928();
    swift_allocError();
    *v11 = 0;
    goto LABEL_19;
  }

  v3 = [objc_opt_self() sharedDaemon];
  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v4 = [v3 intentProcessor];
  swift_unknownObjectRelease();
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF4F0, &unk_22B7FCD60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_14;
  }

  if (!*(v0 + 80))
  {
LABEL_14:
    sub_22B4D0D64(v0 + 56, &qword_27D8CF4E8, &unk_22B7FDBA0);
    if (qword_27D8CCCC0 != -1)
    {
      swift_once();
    }

    v12 = sub_22B7DB2B8();
    sub_22B4CFA74(v12, qword_27D8CF2D8);
    v13 = sub_22B7DB298();
    v14 = sub_22B7DBC98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v13, v14, "perform[]: dropping intent because there is no object to process the request.", v15, 2u);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    sub_22B796928();
    swift_allocError();
    *v16 = 1;
LABEL_19:
    swift_willThrow();
    goto LABEL_20;
  }

  sub_22B4DFB0C((v0 + 56), v0 + 16);
  sub_22B7DA578();
  v5 = *(v0 + 416);
  if (v5)
  {
    v6 = *(v0 + 408);
  }

  else
  {
    v19 = *(v0 + 616);
    v20 = *(v0 + 608);
    v21 = *(v0 + 600);
    sub_22B7DA998();
    v6 = sub_22B7DA978();
    v5 = v22;
    (*(v20 + 8))(v19, v21);
  }

  *(v0 + 632) = v5;
  *(v0 + 624) = v6;
  if (qword_27D8CCCC0 != -1)
  {
    swift_once();
  }

  v23 = sub_22B7DB2B8();
  *(v0 + 640) = sub_22B4CFA74(v23, qword_27D8CF2D8);

  v24 = sub_22B7DB298();
  v25 = sub_22B7DBCB8();
  v5, v26, v27, v28, v29, v30, v31, v32, v175, v183;
  v184 = v6;
  if (os_log_type_enabled(v24, v25))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v192[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_22B4CFAAC(v6, v5, v192);
    _os_log_impl(&dword_22B4CC000, v24, v25, "perform[%s]: decoding request", v33, 0xCu);
    sub_22B4CFB78(v34);
    MEMORY[0x231898D60](v34, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);
  }

  v35 = *(v0 + 568);
  v36 = *(v0 + 560);
  v37 = *(v0 + 552);
  sub_22B7DA578();
  v38 = sub_22B7DA498();
  v40 = v39;
  (*(v36 + 8))(v35, v37);
  sub_22B7914A4(&qword_27D8CF4F8, MEMORY[0x277D19648], MEMORY[0x277D19640]);
  sub_22B7DACA8();
  sub_22B705E98(v38, v40);
  sub_22B7DB008();
  sub_22B4D2BCC((v0 + 96), *(v0 + 120));
  DynamicType = swift_getDynamicType();
  *(v0 + 648) = DynamicType;
  v42 = *(v0 + 128);
  *(v0 + 656) = v42;
  sub_22B4D0DE8(v0 + 96, v0 + 176);
  sub_22B6F0AD4(&qword_27D8CF508, &qword_22B7FCD70);
  sub_22B6F0AD4(&qword_27D8CF510, &qword_22B7FCD78);
  if (swift_dynamicCast())
  {
    sub_22B4DFB0C((v0 + 216), v0 + 136);

    v43 = sub_22B7DB298();
    v44 = sub_22B7DBCB8();
    v5, v45, v46, v47, v48, v49, v50, v51, v176, v184;
    if (os_log_type_enabled(v43, v44))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v192[0] = v53;
      *v52 = 136315394;
      *(v0 + 456) = DynamicType;
      *(v0 + 464) = v42;
      sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
      v54 = sub_22B7DB6C8();
      v56 = v55;
      v57 = sub_22B4CFAAC(v54, v55, v192);
      v56, v58, v59, v60, v61, v62, v63, v64, v177, v185;
      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_22B4CFAAC(v186, v5, v192);
      _os_log_impl(&dword_22B4CC000, v43, v44, "perform[%s][%s]: processing request", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v53, -1, -1);
      MEMORY[0x231898D60](v52, -1, -1);
    }

    v65 = *(v0 + 544);
    sub_22B7DBA38();
    v66 = sub_22B7DBA58();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    sub_22B4D0DE8(v0 + 16, v0 + 296);
    sub_22B4D0DE8(v0 + 136, v0 + 336);
    v67 = swift_allocObject();
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    sub_22B4DFB0C((v0 + 296), v67 + 32);
    sub_22B4DFB0C((v0 + 336), v67 + 72);
    v68 = sub_22B7231C4(0, 0, v65, &unk_22B7FCD98, v67);
    *(v0 + 664) = v68;
    v69 = swift_task_alloc();
    *(v0 + 672) = v69;
    v70 = sub_22B6F0AD4(&qword_27D8CE568, &unk_22B7FCDA0);
    v71 = sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    *v69 = v0;
    v69[1] = sub_22B79474C;
    v72 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 256, v68, v70, v71, v72);
  }

  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  sub_22B4D0D64(v0 + 216, &qword_27D8CF518, &unk_22B7FCD80);

  v73 = sub_22B7DB298();
  v74 = sub_22B7DBC98();
  v5, v75, v76, v77, v78, v79, v80, v81, v176, v184;
  if (os_log_type_enabled(v73, v74))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v192[0] = v83;
    *v82 = 136315394;
    *(v0 + 424) = DynamicType;
    *(v0 + 432) = v42;
    sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
    v84 = sub_22B7DB6C8();
    v86 = v85;
    v87 = sub_22B4CFAAC(v84, v85, v192);
    v86, v88, v89, v90, v91, v92, v93, v94, v178, v187;
    *(v82 + 4) = v87;
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_22B4CFAAC(v187, v5, v192);
    _os_log_impl(&dword_22B4CC000, v73, v74, "perform[%s][%s]: Unsupported request type. Expected: (any RemoteIntentRequestAttachments)", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v83, -1, -1);
    MEMORY[0x231898D60](v82, -1, -1);
  }

  v95 = *(v0 + 592);
  v96 = *(v0 + 584);
  v97 = *(v0 + 576);
  sub_22B7969D8();
  v98 = swift_allocError();
  swift_willThrow();
  sub_22B4CFB78((v0 + 96));
  (*(v96 + 8))(v95, v97);
  v99 = *(v0 + 632);

  v100 = v98;
  v101 = sub_22B7DB298();
  v102 = sub_22B7DBC98();
  v99, v103, v104, v105, v106, v107, v108, v109, v178, v187;

  if (os_log_type_enabled(v101, v102))
  {
    v110 = *(v0 + 632);
    v111 = *(v0 + 624);
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v192[0] = v114;
    *v112 = 136315394;
    *(v112 + 4) = sub_22B4CFAAC(v111, v110, v192);
    *(v112 + 12) = 2112;
    v115 = v98;
    v116 = _swift_stdlib_bridgeErrorToNSError();
    *(v112 + 14) = v116;
    *v113 = v116;
    _os_log_impl(&dword_22B4CC000, v101, v102, "perform[%s]: Unexpected error: %@", v112, 0x16u);
    sub_22B4D0D64(v113, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v113, -1, -1);
    sub_22B4CFB78(v114);
    MEMORY[0x231898D60](v114, -1, -1);
    MEMORY[0x231898D60](v112, -1, -1);
  }

  v117 = sub_22B7DA6E8();
  v118 = [v117 domain];
  v119 = sub_22B7DB6A8();
  v121 = v120;

  v123 = sub_22B7DB6A8();
  v129 = v122;
  if (v119 == v123 && v121 == v122)
  {
    v130 = *(v0 + 632);
    v121, v122, v123, v124, v125, v126, v127, v128, v179, v188;
    v130, v131, v132, v133, v134, v135, v136, v137, v180, v189;
  }

  else
  {
    v145 = sub_22B7DC518();
    v129, v146, v147, v148, v149, v150, v151, v152, v179, v188;
    v121, v153, v154, v155, v156, v157, v158, v159, v182, v191;
    if ((v145 & 1) == 0)
    {
      v160 = *(v0 + 512);
      v161 = v98;
      sub_22B7DAFC8();
      sub_22B7914A4(&qword_27D8CF500, MEMORY[0x277D19638], MEMORY[0x277D19630]);
      v162 = sub_22B7DAC98();
      v163 = *(v0 + 632);
      v164 = *(v0 + 536);
      v165 = v162;
      v167 = v166;
      (*(v160 + 8))(*(v0 + 520), *(v0 + 504));
      v163, v168, v169, v170, v171, v172, v173, v174, v181, v190;
      sub_22B705E44(v165, v167);
      sub_22B792124(v165, v167, MEMORY[0x277D84F90], v164);
      sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput, &unk_22B7FCA70);
      sub_22B7DA4F8();

      sub_22B705E98(v165, v167);
      sub_22B79697C(v164);
      sub_22B4CFB78((v0 + 16));

      v17 = *(v0 + 8);
      goto LABEL_21;
    }

    v129 = *(v0 + 632);
  }

  v129, v138, v139, v140, v141, v142, v143, v144, v181, v190;
  swift_willThrow();

  sub_22B4CFB78((v0 + 16));
LABEL_20:

  v17 = *(v0 + 8);
LABEL_21:

  return v17();
}

uint64_t sub_22B79474C()
{
  *(*v1 + 680) = v0;

  if (v0)
  {

    v2 = sub_22B79510C;
  }

  else
  {
    v2 = sub_22B794868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B794868()
{
  v154 = v0;
  v1 = v0[85];

  sub_22B4D2BCC(v0 + 32, v0[35]);
  v2 = sub_22B7DAC88();
  if (v1)
  {
    v4 = v0[74];
    v5 = v0[73];
    v6 = v0[72];

    sub_22B796928();
    v7 = swift_allocError();
    *v8 = 2;
    swift_willThrow();
    sub_22B4CFB78(v0 + 17);
    sub_22B4CFB78(v0 + 12);
    (*(v5 + 8))(v4, v6);
    sub_22B4CFB78(v0 + 32);
    v9 = v0[79];

    v10 = v7;
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();
    v9, v13, v14, v15, v16, v17, v18, v19, v136, v143;

    if (os_log_type_enabled(v11, v12))
    {
      v20 = v0[79];
      v21 = v0[78];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v153[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_22B4CFAAC(v21, v20, v153);
      *(v22 + 12) = 2112;
      v25 = v7;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_22B4CC000, v11, v12, "perform[%s]: Unexpected error: %@", v22, 0x16u);
      sub_22B4D0D64(v23, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v23, -1, -1);
      sub_22B4CFB78(v24);
      MEMORY[0x231898D60](v24, -1, -1);
      MEMORY[0x231898D60](v22, -1, -1);
    }

    v27 = sub_22B7DA6E8();
    v28 = [v27 domain];
    v29 = sub_22B7DB6A8();
    v31 = v30;

    v33 = sub_22B7DB6A8();
    v39 = v32;
    if (v29 == v33 && v31 == v32)
    {
      v40 = v0[79];
      v31, v32, v33, v34, v35, v36, v37, v38, v137, v144;
      v40, v41, v42, v43, v44, v45, v46, v47, v138, v145;
LABEL_11:
      v39, v48, v49, v50, v51, v52, v53, v54, v139, v146;
      swift_willThrow();

      sub_22B4CFB78(v0 + 2);

      v105 = v0[1];
      goto LABEL_15;
    }

    v90 = sub_22B7DC518();
    v39, v91, v92, v93, v94, v95, v96, v97, v137, v144;
    v31, v98, v99, v100, v101, v102, v103, v104, v142, v151;
    if (v90)
    {
      v39 = v0[79];
      goto LABEL_11;
    }

    v121 = v0[64];
    v122 = v7;
    sub_22B7DAFC8();
    sub_22B7914A4(&qword_27D8CF500, MEMORY[0x277D19638], MEMORY[0x277D19630]);
    v123 = sub_22B7DAC98();
    v124 = v0[79];
    v125 = v0[67];
    v126 = v123;
    v128 = v127;
    (*(v121 + 8))(v0[65], v0[63]);
    v124, v129, v130, v131, v132, v133, v134, v135, v139, v146;
    sub_22B705E44(v126, v128);
    sub_22B792124(v126, v128, MEMORY[0x277D84F90], v125);
    sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput, &unk_22B7FCA70);
    sub_22B7DA4F8();

    sub_22B705E98(v126, v128);
    sub_22B79697C(v125);
    v119 = v0 + 2;
  }

  else
  {
    v147 = v2;
    v152 = v3;
    v55 = v0[79];

    v56 = sub_22B7DB298();
    v57 = sub_22B7DBCB8();
    v55, v58, v59, v60, v61, v62, v63, v64, v136, v147;
    if (os_log_type_enabled(v56, v57))
    {
      v65 = v0[82];
      v66 = v0[81];
      v67 = v0[79];
      v68 = v0[78];
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v153[0] = v70;
      *v69 = 136315394;
      v0[55] = v66;
      v0[56] = v65;
      sub_22B6F0AD4(&qword_27D8CF528, &unk_22B7FDBE0);
      v71 = sub_22B7DB6C8();
      v73 = v72;
      v74 = sub_22B4CFAAC(v71, v72, v153);
      v73, v75, v76, v77, v78, v79, v80, v81, v140, v148;
      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v82 = sub_22B4CFAAC(v68, v67, v153);
      v67, v83, v84, v85, v86, v87, v88, v89, v141, v149;
      *(v69 + 14) = v82;
      _os_log_impl(&dword_22B4CC000, v56, v57, "perform[%s][%s]: completed", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v70, -1, -1);
      MEMORY[0x231898D60](v69, -1, -1);
    }

    else
    {
      v106 = v0[79];

      v106, v107, v108, v109, v110, v111, v112, v113, v140, v148;
    }

    v114 = v0[74];
    v115 = v0[73];
    v116 = v0[72];
    v117 = v0[67];
    sub_22B4D2BCC(v0 + 32, v0[35]);
    sub_22B7DADD8();
    v118 = v0[59];
    sub_22B705E44(v150, v152);
    sub_22B792124(v150, v152, v118, v117);
    sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput, &unk_22B7FCA70);
    sub_22B7DA4F8();
    sub_22B705E98(v150, v152);
    sub_22B79697C(v117);
    sub_22B4CFB78(v0 + 17);
    sub_22B4CFB78(v0 + 12);
    (*(v115 + 8))(v114, v116);
    sub_22B4CFB78(v0 + 2);
    v119 = v0 + 32;
  }

  sub_22B4CFB78(v119);

  v105 = v0[1];
LABEL_15:

  return v105();
}

uint64_t sub_22B79510C()
{
  v89 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  sub_22B4CFB78(v0 + 17);
  sub_22B4CFB78(v0 + 12);
  (*(v2 + 8))(v1, v3);
  v4 = v0[85];
  v5 = v0[79];

  v6 = v4;
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC98();
  v5, v9, v10, v11, v12, v13, v14, v15, v83, v88[0];

  if (os_log_type_enabled(v7, v8))
  {
    v16 = v0[79];
    v17 = v0[78];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v88[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_22B4CFAAC(v17, v16, v88);
    *(v18 + 12) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v22;
    *v19 = v22;
    _os_log_impl(&dword_22B4CC000, v7, v8, "perform[%s]: Unexpected error: %@", v18, 0x16u);
    sub_22B4D0D64(v19, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v19, -1, -1);
    sub_22B4CFB78(v20);
    MEMORY[0x231898D60](v20, -1, -1);
    MEMORY[0x231898D60](v18, -1, -1);
  }

  v23 = sub_22B7DA6E8();
  v24 = [v23 domain];
  v25 = sub_22B7DB6A8();
  v27 = v26;

  v29 = sub_22B7DB6A8();
  v35 = v28;
  if (v25 == v29 && v27 == v28)
  {
    v36 = v0[79];
    v27, v28, v29, v30, v31, v32, v33, v34, v84, v88[0];
    v36, v37, v38, v39, v40, v41, v42, v43, v85, v88[0];
LABEL_8:
    v35, v44, v45, v46, v47, v48, v49, v50, v86, v88[0];
    swift_willThrow();

    sub_22B4CFB78(v0 + 2);

    v66 = v0[1];
    goto LABEL_9;
  }

  v51 = sub_22B7DC518();
  v35, v52, v53, v54, v55, v56, v57, v58, v84, v88[0];
  v27, v59, v60, v61, v62, v63, v64, v65, v87, v88[0];
  if (v51)
  {
    v35 = v0[79];
    goto LABEL_8;
  }

  v68 = v0[64];
  v69 = v4;
  sub_22B7DAFC8();
  sub_22B7914A4(&qword_27D8CF500, MEMORY[0x277D19638], MEMORY[0x277D19630]);
  v70 = sub_22B7DAC98();
  v71 = v0[79];
  v72 = v0[67];
  v73 = v70;
  v75 = v74;
  (*(v68 + 8))(v0[65], v0[63]);
  v71, v76, v77, v78, v79, v80, v81, v82, v86, v88[0];
  sub_22B705E44(v73, v75);
  sub_22B792124(v73, v75, MEMORY[0x277D84F90], v72);
  sub_22B7914A4(&qword_27D8CF398, type metadata accessor for DaemonRequestAttachmentsIntentOutput, &unk_22B7FCA70);
  sub_22B7DA4F8();

  sub_22B705E98(v73, v75);
  sub_22B79697C(v72);
  sub_22B4CFB78(v0 + 2);

  v66 = v0[1];
LABEL_9:

  return v66();
}

uint64_t sub_22B7956EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B795710, 0, 0);
}

uint64_t sub_22B795710()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_22B4D2BCC(v1, v4);
  v6 = v2[3];
  v7 = v2[4];
  v8 = sub_22B4D2BCC(v2, v6);
  v9 = *(v5 + 8);
  v10 = *(v7 + 8);
  v3[3] = swift_getAssociatedTypeWitness();
  v3[4] = swift_getAssociatedConformanceWitness();
  v11 = sub_22B6FC8CC(v3);
  v14 = (v9 + *v9);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_22B7958D4;

  return (v14)(v11, v8, v6, v10, v4, v5);
}

uint64_t sub_22B7958D4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B795A08, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B795A08()
{
  sub_22B796AE0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B795AA4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_22B4CFA74(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_22B795B60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B793560(a1, v5, v4);
}

uint64_t sub_22B795C0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B796498();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B795C34(uint64_t a1)
{
  v2 = sub_22B7934A8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22B795C70(uint64_t *a1, int a2)
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

uint64_t sub_22B795CB8(uint64_t result, int a2, int a3)
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

void sub_22B795D2C(uint64_t a1)
{
  sub_22B7DA5C8();
  if (v1 <= 0x3F)
  {
    sub_22B795DD8(319);
    if (v2 <= 0x3F)
    {
      sub_22B795E6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B795DD8(uint64_t a1)
{
  if (!qword_27D8CF428)
  {
    sub_22B7DA4B8();
    sub_22B7914A4(&qword_27D8CF430, MEMORY[0x277CB9C50], MEMORY[0x277CB9C48]);
    v1 = sub_22B7DA568();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8CF428);
    }
  }
}

void sub_22B795E6C(uint64_t a1)
{
  if (!qword_27D8CF438)
  {
    sub_22B6FB8C4(&qword_27D8CF320, qword_22B7FC518);
    sub_22B795EF8(&qword_27D8CF440, MEMORY[0x277CBA540]);
    v1 = sub_22B7DA568();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8CF438);
    }
  }
}

uint64_t sub_22B795EF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(&qword_27D8CF320, qword_22B7FC518);
    sub_22B7914A4(&qword_27D8CF310, type metadata accessor for RemoteIntentAttachmentEntity, &unk_22B7FC728);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B795FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B7DA5C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B79607C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B7DA5C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22B796120(uint64_t a1)
{
  sub_22B7DA5C8();
  if (v1 <= 0x3F)
  {
    sub_22B7961FC(319);
    if (v2 <= 0x3F)
    {
      sub_22B795DD8(319);
      if (v3 <= 0x3F)
      {
        sub_22B796290(319);
        if (v4 <= 0x3F)
        {
          sub_22B796340(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22B7961FC(uint64_t a1)
{
  if (!qword_27D8CF458)
  {
    sub_22B7DA828();
    sub_22B7914A4(&qword_27D8CF460, MEMORY[0x277CC9260], MEMORY[0x277CBA4E0]);
    v1 = sub_22B7DA568();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8CF458);
    }
  }
}

void sub_22B796290(uint64_t a1)
{
  if (!qword_27D8CF468)
  {
    sub_22B7962EC();
    v1 = sub_22B7DA568();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8CF468);
    }
  }
}

unint64_t sub_22B7962EC()
{
  result = qword_27D8CF470;
  if (!qword_27D8CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF470);
  }

  return result;
}

void sub_22B796340(uint64_t a1)
{
  if (!qword_27D8CF478)
  {
    sub_22B6FB8C4(&qword_27D8CF480, &unk_22B7FCCE0);
    sub_22B7963B0();
    v1 = sub_22B7DA568();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8CF478);
    }
  }
}

unint64_t sub_22B7963B0()
{
  result = qword_27D8CF488;
  if (!qword_27D8CF488)
  {
    sub_22B6FB8C4(&qword_27D8CF480, &unk_22B7FCCE0);
    sub_22B796434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF488);
  }

  return result;
}

unint64_t sub_22B796434()
{
  result = qword_27D8CF490;
  if (!qword_27D8CF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF490);
  }

  return result;
}

uint64_t sub_22B796498()
{
  v0 = sub_22B6F0AD4(&qword_27D8CF4A8, &unk_22B7FCD20);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v23 - v1;
  v29 = sub_22B7DA5F8();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B6F0AD4(&qword_27D8CF4B0, &unk_22B7FDB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_22B6F0AD4(&qword_27D8CF4B8, &unk_22B7FCD30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CF4C0, &unk_22B7FDB70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v28 = sub_22B6F0AD4(&qword_27D8CF4C8, &unk_22B7FCD40);
  v23 = sub_22B7DA718();
  v14 = *(v23 - 8);
  v26 = *(v14 + 56);
  v27 = v14 + 56;
  v26(v13, 1, 1, v23);
  v15 = sub_22B7DA4B8();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = sub_22B7DA4E8();
  v17 = *(v16 - 8);
  v24 = *(v17 + 56);
  v25 = v17 + 56;
  v24(v7, 1, 1, v16);
  sub_22B6F0AD4(&qword_27D8CF4D0, &unk_22B7FDB80);
  sub_22B7DB248();
  *(swift_allocObject() + 16) = xmmword_22B7F93B0;
  sub_22B7DB218();
  v18 = *MEMORY[0x277CBA308];
  v19 = *(v2 + 104);
  v20 = v29;
  v19(v4, v18, v29);
  v28 = sub_22B7DA588();
  sub_22B6F0AD4(&qword_27D8CF4D8, &qword_22B7FCD50);
  v26(v13, 1, 1, v23);
  v21 = sub_22B7DB668();
  v31 = 0;
  v32 = 0;
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v24(v7, 1, 1, v16);
  v19(v4, v18, v20);
  sub_22B7DA598();
  return v28;
}

unint64_t sub_22B796928()
{
  result = qword_27D8CF4E0;
  if (!qword_27D8CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF4E0);
  }

  return result;
}

uint64_t sub_22B79697C(uint64_t a1)
{
  v2 = type metadata accessor for DaemonRequestAttachmentsIntentOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B7969D8()
{
  result = qword_27D8CF520;
  if (!qword_27D8CF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF520);
  }

  return result;
}

uint64_t sub_22B796A2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B7956EC(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_22B796AE0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x231898D60);
  }

  return result;
}

uint64_t sub_22B796B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentAttachmentEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B796BA8()
{
  result = qword_27D8CF560;
  if (!qword_27D8CF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF560);
  }

  return result;
}

uint64_t FileEvent.path.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FileEvent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_22B7DC2E8();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11, v32, v35;
  v36 = v1;
  v12 = sub_22B7DC4E8();
  v14 = v13;
  MEMORY[0x231895140](v12);
  v14, v15, v16, v17, v18, v19, v20, v21, v33, v36;
  MEMORY[0x231895140](0x7367616C66203A5DLL, 0xEA0000000000203ALL);
  LODWORD(v37) = v2;
  FileEventFlags.description.getter();
  v23 = v22;
  MEMORY[0x231895140]();
  v23, v24, v25, v26, v27, v28, v29, v30, v34, v37;
  MEMORY[0x231895140](0x6150656C6966202CLL, 0xEC000000203A6874);
  MEMORY[0x231895140](v3, v4);
  return 0x5B4449746E657665;
}

uint64_t sub_22B796DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22B7AB904(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      sub_22B6F0AD4(&qword_27D8CF590, &unk_22B7F97C0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB904((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B4D7F04(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22B796ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22B7AB904(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB904((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B4D7F04(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_22B796FE4(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_22B7DC1C8();
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
  result = sub_22B7AB904(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x231895C80](i, a1);
        sub_22B4D01A0(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22B7AB904((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_22B4D7F04(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_22B4D01A0(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_22B7AB904((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_22B4D7F04(v16, (v7 + 32 * v15 + 32));
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

uint64_t sub_22B7971D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22B7AB904(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_22B705E44(*v4, *(v4 + 8));
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB904((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B4D7F04(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22B7972D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_22B7DC388();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_22B7DBB38();
      sub_22B7DC358();
      sub_22B7DC398();
      sub_22B7DC3A8();
      sub_22B7DC368();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

id sub_22B797380@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() pTaskQueryProvider];
  *a1 = result;
  return result;
}

uint64_t sub_22B7973C0(uint64_t a1)
{
  v1 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_22B7973F4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F520);
  v1 = sub_22B4CFA74(v0, qword_28141F520);
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4CFA74(v0, qword_281422680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_22B7974BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return MEMORY[0x2822009F8](sub_22B7974E0, 0, 0);
}

uint64_t sub_22B7974E0()
{
  v1 = v0[27];
  if (*(v1 + 16))
  {
    v2 = v0 + 2;
    v3 = v0[26];
    v4 = sub_22B7972D8(v1);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    v5 = sub_22B7DB8F8();
    v0[29] = v5;
    v4, v6, v7, v8, v9, v10, v11, v12, v28, v29;
    v0[2] = v0;
    v0[3] = sub_22B797774;
    v13 = swift_continuation_init();
    v0[25] = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B7973C0;
    v0[21] = &unk_283F1F308;
    v0[22] = v13;
    [v3 clearTasksWithRowIDs:v5 completionBlock:v0 + 18];
LABEL_5:

    return MEMORY[0x282200938](v2);
  }

  v14 = v0[28];
  if (*(v14 + 16))
  {
    v2 = v0 + 10;
    v15 = v0[26];
    v16 = sub_22B7972D8(v14);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    v17 = sub_22B7DB8F8();
    v0[30] = v17;
    v16, v18, v19, v20, v21, v22, v23, v24, v28, v29;
    v0[10] = v0;
    v0[11] = sub_22B7979F8;
    v25 = swift_continuation_init();
    v0[25] = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B7973C0;
    v0[21] = &unk_283F1F330;
    v0[22] = v25;
    [v15 incrementRetryCountForTasksWithRowIDs:v17 completionBlock:v0 + 18];
    goto LABEL_5;
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_22B797774()
{

  return MEMORY[0x2822009F8](sub_22B797854, 0, 0);
}

uint64_t sub_22B797854()
{
  v1 = *(v0 + 224);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 208);
    v3 = sub_22B7972D8(v1);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    v4 = sub_22B7DB8F8();
    *(v0 + 240) = v4;
    v3, v5, v6, v7, v8, v9, v10, v11, v15, v16;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_22B7979F8;
    v12 = swift_continuation_init();
    *(v0 + 200) = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_22B7973C0;
    *(v0 + 168) = &unk_283F1F330;
    *(v0 + 176) = v12;
    [v2 incrementRetryCountForTasksWithRowIDs:v4 completionBlock:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_22B7979F8()
{

  return MEMORY[0x2822009F8](sub_22B797AD8, 0, 0);
}

uint64_t sub_22B797AD8()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_22B797B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v104 = *MEMORY[0x277D85DE8];
  v6 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v96 - v7;
  v9 = sub_22B7DB368();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v96 - v14;
  v16 = v2[18];
  if (!v16)
  {
    return 0;
  }

  swift_beginAccess();
  v17 = v2[19];
  if (!*(v17 + 16) || (v18 = sub_22B725570(), (v19 & 1) == 0))
  {
    v22 = v3[15];
    v98 = v3[14];
    v99 = a2;
    v102 = v98;
    v103 = v22;
    v97 = v22;

    v100 = v16;
    MEMORY[0x231895140](46, 0xE100000000000000);
    v23 = sub_22B7DBE48();
    v25 = v24;
    MEMORY[0x231895140](v23);
    v25, v26, v27, v28, v29, v30, v31, v32, v96, v97;
    v33 = v103;
    v34 = v3[16];
    if (v34 > 3)
    {
      v35 = MEMORY[0x277D851A8];
    }

    else
    {
      v35 = qword_278708A90[v34];
    }

    (*(v10 + 104))(v13, *v35, v9);
    (*(v10 + 32))(v15, v13, v9);
    v36 = sub_22B7DB358();
    (*(v10 + 8))(v15, v9);
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v38 = objc_allocWithZone(MEMORY[0x277CF0818]);
    v39 = sub_22B7DB678();
    v33, v40, v41, v42, v43, v44, v45, v46, v96, v97;
    v20 = [v38 initWithIdentifier:v39 qos:v37 workloadCategory:20 expectedMetricValue:0];

    if (qword_28141F510 != -1)
    {
      swift_once();
    }

    v47 = sub_22B7DB2B8();
    sub_22B4CFA74(v47, qword_28141F520);

    v48 = sub_22B7DB298();
    v49 = sub_22B7DBC88();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v102 = v96;
      *v50 = 136446466;
      *(v50 + 4) = sub_22B4CFAAC(v98, v97, &v102);
      *(v50 + 12) = 2082;
      v51 = sub_22B7DBE48();
      v52 = a1;
      v54 = v53;
      v55 = sub_22B4CFAAC(v51, v53, &v102);
      v56 = v54;
      a1 = v52;
      v56, v57, v58, v59, v60, v61, v62, v63, v96, v97;
      *(v50 + 14) = v55;
      _os_log_impl(&dword_22B4CC000, v48, v49, "[%{public}s] registering for throughput tracking for flag %{public}s", v50, 0x16u);
      v64 = v96;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v64, -1, -1);
      MEMORY[0x231898D60](v50, -1, -1);
    }

    v65 = v100;
    sub_22B7368FC(v99, v8);
    v66 = sub_22B7DA968();
    v67 = *(v66 - 8);
    v68 = 0;
    if ((*(v67 + 48))(v8, 1, v66) != 1)
    {
      v68 = sub_22B7DA8B8();
      (*(v67 + 8))(v8, v66);
    }

    v102 = 0;
    v69 = [v65 registerThroughputTrackingFor:v20 withStartTime:v68 error:&v102];

    v70 = v102;
    if (v69)
    {
      swift_beginAccess();
      v71 = v20;
      v72 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v3[19];
      v3[19] = 0x8000000000000000;
      sub_22B768CF0(v71, a1, isUniquelyReferenced_nonNull_native);
      v3[19] = v101;
      swift_endAccess();

      return v20;
    }

    v74 = v102;
    v75 = sub_22B7DA6F8();

    swift_willThrow();

    v76 = v75;
    v77 = sub_22B7DB298();
    v78 = sub_22B7DBC98();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v102 = v81;
      *v79 = 136446722;
      *(v79 + 4) = sub_22B4CFAAC(v98, v97, &v102);
      *(v79 + 12) = 2082;
      v82 = sub_22B7DBE48();
      v84 = v83;
      v85 = sub_22B4CFAAC(v82, v83, &v102);
      v84, v86, v87, v88, v89, v90, v91, v92, v96, v97;
      *(v79 + 14) = v85;
      *(v79 + 22) = 2112;
      v93 = v75;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 24) = v94;
      *v80 = v94;
      _os_log_impl(&dword_22B4CC000, v77, v78, "[%{public}s] failed to register for throughput tracking for flag %{public}s: %@", v79, 0x20u);
      sub_22B708A24(v80);
      MEMORY[0x231898D60](v80, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v81, -1, -1);
      MEMORY[0x231898D60](v79, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  v21 = v20;
  return v20;
}

void sub_22B798264()
{
  v88 = *MEMORY[0x277D85DE8];
  v82 = sub_22B7DA968();
  v1 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v0 + 144);
  if (v3)
  {
    swift_beginAccess();
    v4 = *(v0 + 152);
    v5 = sub_22B71E3E4(MEMORY[0x277D84F90]);
    v6 = *(v0 + 152);
    v86 = v0;
    *(v0 + 152) = v5;
    v83 = v3;

    v6, v7, v8, v9, v10, v11, v12, v13, v75, v76;
    v15 = 0;
    v76 = 0;
    v17 = v4 + 64;
    v16 = *(v4 + 64);
    v84 = v4;
    v18 = 1 << *(v4 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    v80 = (v1 + 8);
    *&v14 = 136446722;
    v77 = v14;
    v78 = v21;
    if ((v19 & v16) != 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    v24 = v86;
    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v23);
      ++v15;
      if (v20)
      {
        while (1)
        {
          v25 = (v23 << 9) | (8 * __clz(__rbit64(v20)));
          v26 = *(v84 + 56);
          v85 = *(*(v84 + 48) + v25);
          v27 = qword_28141F510;
          v28 = *(v26 + v25);
          if (v27 != -1)
          {
            swift_once();
          }

          v29 = sub_22B7DB2B8();
          v30 = sub_22B4CFA74(v29, qword_28141F520);
          v31 = v28;

          v32 = sub_22B7DB298();
          v33 = sub_22B7DBC88();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v79 = v30;
            v36 = v35;
            v87 = v35;
            *v34 = v77;
            *(v34 + 4) = sub_22B4CFAAC(*(v24 + 112), *(v24 + 120), &v87);
            *(v34 + 12) = 2082;
            v37 = sub_22B7DBE48();
            v39 = v38;
            v40 = sub_22B4CFAAC(v37, v38, &v87);
            v41 = v39;
            v21 = v78;
            v41, v42, v43, v44, v45, v46, v47, v48, v75, v76;
            *(v34 + 14) = v40;
            *(v34 + 22) = 2048;
            v49 = [v31 itemCount];

            *(v34 + 24) = v49;
            _os_log_impl(&dword_22B4CC000, v32, v33, "[%{public}s] submitting throughput metric for flag %{public}s with %lu completed items", v34, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v36, -1, -1);
            MEMORY[0x231898D60](v34, -1, -1);
          }

          else
          {
          }

          v20 &= v20 - 1;
          v50 = v81;
          sub_22B7DA938();
          v51 = sub_22B7DA8B8();
          (*v80)(v50, v82);
          v87 = 0;
          LODWORD(v50) = [v83 deregisterThroughputTrackingFor:v31 withEndTime:v51 error:&v87];

          if (v50)
          {
            v22 = v87;

            v15 = v23;
            if (!v20)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v79 = v31;
            v52 = v87;
            v53 = sub_22B7DA6F8();

            swift_willThrow();
            v54 = v86;

            v55 = v53;
            v56 = sub_22B7DB298();
            v57 = sub_22B7DBC98();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v87 = v76;
              *v58 = v77;
              *(v58 + 4) = sub_22B4CFAAC(*(v54 + 112), *(v54 + 120), &v87);
              *(v58 + 12) = 2082;
              v60 = sub_22B7DBE48();
              v62 = v61;
              v63 = sub_22B4CFAAC(v60, v61, &v87);
              v62, v64, v65, v66, v67, v68, v69, v70, v75, v76;
              *(v58 + 14) = v63;
              *(v58 + 22) = 2112;
              v71 = v53;
              v72 = _swift_stdlib_bridgeErrorToNSError();
              *(v58 + 24) = v72;
              *v59 = v72;
              _os_log_impl(&dword_22B4CC000, v56, v57, "[%{public}s] failed to submit throughput metric for flag %{public}s: %@", v58, 0x20u);
              sub_22B708A24(v59);
              v73 = v59;
              v21 = v78;
              MEMORY[0x231898D60](v73, -1, -1);
              v74 = v76;
              swift_arrayDestroy();
              MEMORY[0x231898D60](v74, -1, -1);
              MEMORY[0x231898D60](v58, -1, -1);
            }

            else
            {
            }

            v76 = 0;
            v15 = v23;
            if (!v20)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v23 = v15;
          v24 = v86;
        }
      }
    }
  }
}

uint64_t sub_22B798834()
{
  v1[2] = v0;
  v2 = sub_22B7DB368();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B798900, v0, 0);
}

uint64_t sub_22B798900()
{
  v2 = *(v0[2] + 128);
  if (v2 > 3)
  {
    v3 = MEMORY[0x277D851A8];
  }

  else
  {
    v3 = qword_278708A90[v2];
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  (*(v7 + 104))(v5, *v3, v6);
  (*(v7 + 32))(v4, v5, v6);

  return MEMORY[0x2822009F8](sub_22B7989E8, 0, 0);
}

uint64_t sub_22B7989E8()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v1;
  v3[3] = sub_22B7990E0;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22B798AF4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DBF8, v3, v5);
}

uint64_t sub_22B798AF4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22B798C8C, v4, 0);
}

uint64_t sub_22B798C8C()
{
  v1 = v0[2];
  sub_22B7DBED8();
  v8 = *(v1 + 160);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 160) = MEMORY[0x277D84F90];
  *(v1 + 168) = v2;
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v8;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_22B798DA8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282172F38](v5, KeyPath, &unk_22B7FD088, v4, v6);
}

uint64_t sub_22B798DA8()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_22B79A0AC;
  }

  else
  {

    v4 = sub_22B798F30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B798F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B798F98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B782FB8;

  return sub_22B7974BC(v7, a3, a4);
}

uint64_t sub_22B799044(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v39, v44;
  *(v8 + 136), v9, v10, v11, v12, v13, v14, v15, v40, v45;

  *(v8 + 152), v16, v17, v18, v19, v20, v21, v22, v41, v46;
  v23 = *(v8 + 160);
  *(v8 + 168), v24, v25, v26, v27, v28, v29, v30, v42, v47;
  v23, v31, v32, v33, v34, v35, v36, v37, v43, v48;
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v8);
}

uint64_t sub_22B7990E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = sub_22B7DB348();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB398();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B6F0AD4(&qword_27D8CF578, &unk_22B7FD0A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v16 = sub_22B7DBD98();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  aBlock[4] = sub_22B799C30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F380;
  v21 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v28 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v10, v7, v21);
  _Block_release(v21);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
}

uint64_t sub_22B79946C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B6F0D94;

  return sub_22B798F98(a1, a2, v7, v6);
}

uint64_t sub_22B799520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = sub_22B7DB348();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB398();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B6F0AD4(&qword_27D8CF598, &qword_22B7FD0C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v16 = sub_22B7DBD98();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  aBlock[4] = sub_22B799FC0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F420;
  v21 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v28 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v10, v7, v21);
  _Block_release(v21);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
}

uint64_t sub_22B7998A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v5 = sub_22B7DB348();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB398();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v16 = sub_22B7DBD98();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  aBlock[4] = sub_22B799E48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F3D0;
  v21 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v28 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v10, v7, v21);
  _Block_release(v21);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
}

uint64_t sub_22B799C30()
{
  v1 = *(sub_22B6F0AD4(&qword_27D8CF578, &unk_22B7FD0A0) - 8);
  (*(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)))();
  sub_22B6F0AD4(&qword_27D8CF578, &unk_22B7FD0A0);
  return sub_22B7DB9E8();
}

double sub_22B799CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_22B799D14()
{
  result = qword_28141F340;
  if (!qword_28141F340)
  {
    sub_22B7DB348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F340);
  }

  return result;
}

unint64_t sub_22B799D6C()
{
  result = qword_28141F2E0;
  if (!qword_28141F2E0)
  {
    sub_22B6FB8C4(&unk_27D8CF580, &unk_22B7FB880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2E0);
  }

  return result;
}

void *sub_22B799DD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_defaultActor_initialize();
  v9 = MEMORY[0x277D84F90];
  v4[17] = MEMORY[0x277D84F90];
  v4[18] = 0;
  v10 = sub_22B71E3E4(v9);
  v4[20] = v9;
  v4[21] = v9;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v11 = v4[18];
  v4[18] = a4;
  v4[19] = v10;
  v12 = a4;

  return v4;
}

uint64_t sub_22B799E48()
{
  v1 = *(sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0) - 8);
  (*(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)))(&v3);
  sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B799F24(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22B6F0AD4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_22B799FC0()
{
  v1 = *(sub_22B6F0AD4(&qword_27D8CF598, &qword_22B7FD0C0) - 8);
  (*(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)))(&v3);
  sub_22B6F0AD4(&qword_27D8CF598, &qword_22B7FD0C0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B79A0E0(uint64_t a1, void **a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = objc_allocWithZone(sub_22B7DB278());
  v6 = v4;
  result = sub_22B7DB268();
  *a3 = result;
  return result;
}

id static MessagesBlastDoorInterface.blastdoorInterface(for:)(void *a1)
{
  if ([a1 isTrustedSender])
  {
    if (qword_27D8CCCE8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27D8D4930;
  }

  else
  {
    if (qword_27D8CCCF0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27D8D4938;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_22B79A1D4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F3B0);
  sub_22B4CFA74(v0, qword_28141F3B0);
  return sub_22B7DB2A8();
}

void sub_22B79A2FC(unint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, IMDScheduledMessageCoordinator **a9@<X8>)
{
  v9 = *a1;
  v10 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (!(*a1 >> 62))
  {
    v11 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_22:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v11 = sub_22B7DC1C8();
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_3:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x231895C80](v14, v9, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = [v15 phoneNumber];
      if (v17)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        goto LABEL_23;
      }
    }

    v18 = v17;
    v19 = sub_22B7DB6A8();
    v56 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_22B71BD80(0, *v13->messageStore + 1, 1, v13, a5, a6, a7, a8);
    }

    v22 = *v13->messageStore;
    v21 = *v13->chatRegistry;
    if (v22 >= v21 >> 1)
    {
      v13 = sub_22B71BD80((v21 > 1), v22 + 1, 1, v13, a5, a6, a7, a8);
    }

    *v13->messageStore = v22 + 1;
    v23 = v13 + 16 * v22;
    *(v23 + 4) = v19;
    *(v23 + 5) = v56;
  }

  while (v12 != v11);
LABEL_23:
  v24 = *v13->messageStore;
  if (v24)
  {
    v25 = 0;
    membershipObserver = v13->membershipObserver;
    v55 = v24 - 1;
    v27 = MEMORY[0x277D84F90];
    do
    {
      v28 = &membershipObserver[16 * v25];
      v29 = v25;
      while (1)
      {
        if (v29 >= *v13->messageStore)
        {
          __break(1u);
          return;
        }

        v30 = *v28;

        v31 = sub_22B7DB678();
        v32 = IMChatCanonicalIDSIDsForAddress();

        if (v32)
        {
          v40 = [v32 _stripFZIDPrefix];

          if (v40)
          {
            break;
          }
        }

        ++v29;
        v30, v33, v34, v35, v36, v37, v38, v39, v54, v55;
        v28 += 2;
        if (v24 == v29)
        {
          goto LABEL_37;
        }
      }

      v41 = sub_22B7DB6A8();
      v43 = v42;

      v30, v44, v45, v46, v47, v48, v49, v50, v54, v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22B71BD80(0, *v27->messageStore + 1, 1, v27, a5, a6, a7, a8);
      }

      membershipObserver = v13->membershipObserver;
      v52 = *v27->messageStore;
      v51 = *v27->chatRegistry;
      if (v52 >= v51 >> 1)
      {
        v27 = sub_22B71BD80((v51 > 1), v52 + 1, 1, v27, a5, a6, a7, a8);
      }

      v25 = v29 + 1;
      *v27->messageStore = v52 + 1;
      v53 = v27 + 16 * v52;
      *(v53 + 4) = v41;
      *(v53 + 5) = v43;
    }

    while (v55 != v29);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

LABEL_37:
  v13, a2, a3, a4, a5, a6, a7, a8, v54, v55;
  *a9 = v27;
}

id sub_22B79A5F0()
{
  result = [objc_allocWithZone(IMDEmergencyContactsManager) init];
  qword_28141F0E8 = result;
  return result;
}

id sub_22B79A680()
{
  v1 = sub_22B7DBD48();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22B7DB398();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = OBJC_IVAR___IMDEmergencyContactsManager_processingQueue;
  sub_22B6F0AD4(&qword_27D8CF628, qword_22B7FD0C8);
  v5 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  sub_22B7DACD8();
  sub_22B7DAF78();
  MEMORY[0x231894900](&_s5StateVN_0);
  *&v0[v4] = sub_22B7DAF58();
  *&v0[OBJC_IVAR___IMDEmergencyContactsManager_emergencyContactsNotificationToken] = 0;
  *&v0[OBJC_IVAR___IMDEmergencyContactsManager_emergencyContacts] = v5;
  v9.receiver = v0;
  v9.super_class = IMDEmergencyContactsManager;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_22B7DAF48();

  sub_22B79A8C0();

  return v7;
}

void sub_22B79A8C0()
{
  v1 = v0;
  v2 = *MEMORY[0x277CCE4B8];
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v3 = sub_22B7DBD58();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v13[4] = sub_22B79B10C;
  v13[5] = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22B79B494;
  v13[3] = &unk_283F1F498;
  v5 = _Block_copy(v13);
  v6 = v1;

  v7 = OBJC_IVAR___IMDEmergencyContactsManager_emergencyContactsNotificationToken;
  swift_beginAccess();
  v8 = notify_register_dispatch(v2, &v6[v7], v3, v5);
  swift_endAccess();
  _Block_release(v5);

  if (v8)
  {
    if (qword_28141F3A8 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_28141F3B0);
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_22B4CC000, v10, v11, "Failed to register for emergency contacts change notification: %u", v12, 8u);
      MEMORY[0x231898D60](v12, -1, -1);
    }
  }
}

uint64_t sub_22B79AAE8(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_22B7DAF48();
}

void sub_22B79AB6C(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CCD5E8]) initWithHealthStore_];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v8[4] = sub_22B79B114;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22B79B000;
  v8[3] = &unk_283F1F510;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v4 fetchMedicalIDEmergencyContactsWithCompletion_];
  _Block_release(v6);
}

void sub_22B79AC90(IMDScheduledMessageCoordinator *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_28141F3A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_28141F3B0);

    v6 = sub_22B7DB298();
    v7 = sub_22B7DBC78();
    if (os_log_type_enabled(v6, v7))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (a1 >> 62)
      {
        v16 = sub_22B7DC1C8();
      }

      else
      {
        v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 4) = v16;
      a1, v8, v9, v10, v11, v12, v13, v14, v43, v46;
      _os_log_impl(&dword_22B4CC000, v6, v7, "Got %ld emergency contacts from medical ID", v15, 0xCu);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    else
    {

      a1, v27, v28, v29, v30, v31, v32, v33, v43, v46;
    }

    MEMORY[0x28223BE20](v17);
    sub_22B7DAF18();
    v34 = [objc_opt_self() defaultCenter];
    [v34 postNotificationName:@"IMDEmergencyContactsDidChangeNotification" object:a3];
  }

  else
  {
    if (qword_28141F3A8 != -1)
    {
      swift_once();
    }

    v19 = sub_22B7DB2B8();
    sub_22B4CFA74(v19, qword_28141F3B0);
    v20 = a2;
    v44 = sub_22B7DB298();
    v21 = sub_22B7DBC98();

    if (os_log_type_enabled(v44, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v24 = sub_22B7DC5C8();
        v26 = v25;
      }

      else
      {
        v26 = 0x800000022B811560;
        v24 = 0xD000000000000014;
      }

      v35 = sub_22B4CFAAC(v24, v26, &v47);
      v26, v36, v37, v38, v39, v40, v41, v42, v44, v46;
      *(v22 + 4) = v35;
      _os_log_impl(&dword_22B4CC000, v45, v21, "Failed to fetch medical ID for emergency contacts: %s", v22, 0xCu);
      sub_22B4CFB78(v23);
      MEMORY[0x231898D60](v23, -1, -1);
      MEMORY[0x231898D60](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22B79B000(uint64_t a1, IMDScheduledMessageCoordinator *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v11 = a2;
  v12 = *(a1 + 32);
  if (a2)
  {
    sub_22B4D01A0(0, &qword_28141F1C8, 0x277CCDDA0);
    v11 = sub_22B7DB918();
  }

  v13 = a3;
  v12(v11, a3);

  v11, v14, v15, v16, v17, v18, v19, v20, a9, a10;
}

void sub_22B79B11C(IMDScheduledMessageCoordinator **a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  v4, v5, v6, v7, v8, v9, v10, v11, v12, v13;
  *a1 = v3;
}

void sub_22B79B17C(IMDScheduledMessageCoordinator *a1)
{
  v2 = *a1->messageStore;
  v3 = *v1;
  v4 = *(*v1)->messageStore;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->chatRegistry >> 1)
  {
    if (*a1->messageStore)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_22B71B35C(isUniquelyReferenced_nonNull_native, v26, 1, v3);
  if (!*a1->messageStore)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14, v27, v28;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = (*v3->chatRegistry >> 1) - *v3->messageStore;
  sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  if (v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v16, v17, v18, v19, v20, v21, v22, v27, v28;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->messageStore;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->messageStore = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_22B79B2B4(IMDScheduledMessageCoordinator *a1)
{
  v2 = *a1->messageStore;
  v3 = *v1;
  v4 = *(*v1)->messageStore;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->chatRegistry >> 1)
  {
    if (*a1->messageStore)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_22B71B8E0(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*a1->messageStore)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14, v27, v28;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->messageStore;
  if ((*v3->chatRegistry >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->queue[8 * v15], a1->queue, 8 * v2);
  a1, v16, v17, v18, v19, v20, v21, v22, v27, v28;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->messageStore;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->messageStore = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_22B79B3A0(IMDScheduledMessageCoordinator *a1)
{
  v2 = *a1->messageStore;
  v3 = *v1;
  v4 = *(*v1)->messageStore;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->chatRegistry >> 1)
  {
    if (*a1->messageStore)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_22B71BD80(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*a1->messageStore)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14, v26, v27;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3->chatRegistry >> 1) - *v3->messageStore < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21, v26, v27;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->messageStore;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->messageStore = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_22B79B494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22B79B4E8()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F400);
  sub_22B4CFA74(v0, qword_28141F400);
  return sub_22B7DB2A8();
}

void sub_22B79B56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 40);
    v4 = MEMORY[0x277D84F90];
    v36 = (a1 + 40);
    do
    {
      v5 = &v3[16 * v2];
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v7 = *v5;

        v8 = sub_22B7DB678();
        v9 = IMChatCanonicalIDSIDsForAddress();

        if (v9)
        {
          v17 = [v9 _stripFZIDPrefix];

          if (v17)
          {
            break;
          }
        }

        v7, v10, v11, v12, v13, v14, v15, v16, v35, v36;
        v5 += 2;
        if (v2 == v1)
        {
          return;
        }
      }

      v18 = sub_22B7DB6A8();
      v20 = v19;

      v7, v21, v22, v23, v24, v25, v26, v27, v35, v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22B71BD80(0, *v4->messageStore + 1, 1, v4, v28, v29, v30, v31);
      }

      v3 = v36;
      v33 = *v4->messageStore;
      v32 = *v4->chatRegistry;
      if (v33 >= v32 >> 1)
      {
        v4 = sub_22B71BD80((v32 > 1), v33 + 1, 1, v4, v28, v29, v30, v31);
      }

      *v4->messageStore = v33 + 1;
      v34 = v4 + 16 * v33;
      *(v34 + 4) = v18;
      *(v34 + 5) = v20;
    }

    while (v2 != v1);
  }
}

id sub_22B79B700()
{
  result = [objc_allocWithZone(IMDFamilyManager) init];
  qword_28141F258 = result;
  return result;
}

id sub_22B79B864()
{
  v1 = sub_22B7DBD48();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22B7DB398();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = OBJC_IVAR___IMDFamilyManager_processingQueue;
  sub_22B6F0AD4(&qword_27D8CF6B0, qword_22B7FD100);
  v9 = MEMORY[0x277D84F90];
  sub_22B7DACD8();
  sub_22B7DAF78();
  MEMORY[0x231894900](&_s5StateVN_1);
  *&v0[v4] = sub_22B7DAF58();
  *&v0[OBJC_IVAR___IMDFamilyManager_familyContactsNotificationToken] = 0;
  v8.receiver = v0;
  v8.super_class = IMDFamilyManager;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_22B7DAF28();

  sub_22B79BA98();

  return v6;
}

void sub_22B79BA98()
{
  v1 = v0;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v2 = sub_22B7DBD58();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v12[4] = sub_22B79C290;
  v12[5] = v3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22B79B494;
  v12[3] = &unk_283F1F5B0;
  v4 = _Block_copy(v12);
  v5 = v1;

  v6 = OBJC_IVAR___IMDFamilyManager_familyContactsNotificationToken;
  swift_beginAccess();
  v7 = notify_register_dispatch("com.apple.family.family_updated", &v5[v6], v2, v4);
  swift_endAccess();
  _Block_release(v4);

  if (v7)
  {
    if (qword_28141F3F8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_28141F400);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_22B4CC000, v9, v10, "Failed to register for family contacts change notification: %u", v11, 8u);
      MEMORY[0x231898D60](v11, -1, -1);
    }
  }
}

uint64_t sub_22B79BCB0(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_22B7DAF28();
}

void sub_22B79BD34(IMDScheduledMessageCoordinator **a1, uint64_t a2)
{
  v97[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v97[0] = 0;
  v5 = [v4 fetchFamilyCircleWithError_];
  if (!v5)
  {
    v52 = v97[0];
    v6 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F3F8 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  v6 = v5;
  v7 = *a1;
  v8 = v97[0];
  v7, v9, v10, v11, v12, v13, v14, v15, v89, v91;
  v16 = [v6 members];
  sub_22B4D01A0(0, &qword_28141F280, 0x277D08268);
  v17 = sub_22B7DB918();

  if (v17 >> 62)
  {
    goto LABEL_40;
  }

  v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v95 = a2;
  v96 = v4;
  v91 = a1;
  v94 = v6;
  if (v25)
  {
    if (v25 >= 1)
    {
      v4 = 0;
      a1 = (v17 & 0xC000000000000001);
      v26 = MEMORY[0x277D84F90];
      while (1)
      {
        if (a1)
        {
          v27 = MEMORY[0x231895C80](v4, v17);
        }

        else
        {
          v27 = *(v17 + 8 * v4 + 32);
        }

        v28 = v27;
        v29 = sub_22B7DBCC8();
        a2 = *(v29 + 16);
        v6 = *v26->messageStore;
        v30 = &v6[a2];
        if (__OFADD__(v6, a2))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v25 = sub_22B7DC1C8();
          goto LABEL_4;
        }

        v31 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && (v40 = *v26->chatRegistry >> 1, v40 >= v30))
        {
          if (*v31->messageStore)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v6 <= v30)
          {
            v41 = &v6[a2];
          }

          else
          {
            v41 = v6;
          }

          v26 = sub_22B71BD80(isUniquelyReferenced_nonNull_native, v41, 1, v26, v36, v37, v38, v39);
          v40 = *v26->chatRegistry >> 1;
          if (*v31->messageStore)
          {
LABEL_21:
            if (v40 - *v26->messageStore < a2)
            {
              goto LABEL_38;
            }

            swift_arrayInitWithCopy();
            v31, v42, v43, v44, v45, v46, v47, v48, v89, v91;
            if (a2)
            {
              v49 = *v26->messageStore;
              v50 = __OFADD__(v49, a2);
              v51 = v49 + a2;
              if (v50)
              {
                goto LABEL_39;
              }

              *v26->messageStore = v51;
            }

            goto LABEL_8;
          }
        }

        v31, v33, v34, v35, v36, v37, v38, v39, v89, v91;
        if (a2)
        {
          goto LABEL_37;
        }

LABEL_8:
        v4 = v4 + 1;

        if (v25 == v4)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
LABEL_26:
    v53 = sub_22B7DB2B8();
    sub_22B4CFA74(v53, qword_28141F400);
    v54 = v6;
    v55 = sub_22B7DB298();
    v56 = sub_22B7DBC98();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v97[0] = v58;
      *v57 = 136315138;
      swift_getErrorValue();
      v59 = sub_22B7DC5C8();
      v61 = v60;
      v62 = sub_22B4CFAAC(v59, v60, v97);
      v61, v63, v64, v65, v66, v67, v68, v69, v89, v91;
      *(v57 + 4) = v62;
      _os_log_impl(&dword_22B4CC000, v55, v56, "Failed to fetch family circle: %s", v57, 0xCu);
      sub_22B4CFB78(v58);
      MEMORY[0x231898D60](v58, -1, -1);
      MEMORY[0x231898D60](v57, -1, -1);
    }

    else
    {
    }

    return;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_29:
  v17, v18, v19, v20, v21, v22, v23, v24, v89, v91;
  if (qword_28141F3F8 != -1)
  {
    swift_once();
  }

  v70 = sub_22B7DB2B8();
  sub_22B4CFA74(v70, qword_28141F400);

  v71 = sub_22B7DB298();
  v72 = sub_22B7DBC78();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = *v26->messageStore;
    v26, v74, v75, v76, v77, v78, v79, v80, v90, v92;
    _os_log_impl(&dword_22B4CC000, v71, v72, "Got %ld family contacts from family circle", v73, 0xCu);
    MEMORY[0x231898D60](v73, -1, -1);
  }

  else
  {

    v26, v81, v82, v83, v84, v85, v86, v87, v90, v92;
  }

  *v93 = v26;
  v88 = [objc_opt_self() defaultCenter];
  [v88 postNotificationName:@"IMDFamilyDidChangeNotification" object:v95];
}

void sub_22B79C298(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_22B7DB8F8();
  (*(v2 + 16))(v2, v3);
}

void sub_22B79C2F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v11 = *(v10 + 16);
  sub_22B79B56C(*a1);
  v13 = v12;
  v11();

  v13, v14, v15, v16, v17, v18, v19, v20, a9, a10;
}

id sub_22B79C35C()
{
  result = [objc_allocWithZone(IMDMessageFromStorageMonitor) init];
  qword_27D8CF6B8 = result;
  return result;
}

id sub_22B79C3EC()
{
  *(v0 + OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount) = 0;
  *(v0 + OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec) = 0;
  v9.super_class = IMDMessageFromStorageMonitor;
  v1 = objc_msgSendSuper2(&v9, sel_init);
  v2 = qword_27D8CCC50;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_27D8D4888);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Initialized MesasgesFromStorageMonitor", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  return v3;
}

void sub_22B79C534(double a1)
{
  v4 = objc_opt_self();
  v5 = [v4 messagesDomain];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22B7DB678();
    v2 = [v6 integerForKey_];

    if (v2 >= 2)
    {
      if (qword_27D8CCC50 != -1)
      {
        swift_once();
      }

      v8 = sub_22B7DB2B8();
      sub_22B4CFA74(v8, qword_27D8D4888);
      oslog = sub_22B7DB298();
      v9 = sub_22B7DBCB8();
      if (!os_log_type_enabled(oslog, v9))
      {
        goto LABEL_19;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "FromStorageMonitor version default > target version, this should never happen";
      goto LABEL_13;
    }
  }

  v12 = [v4 messagesDomain];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22B7DB678();
    v15 = [v13 integerForKey_];

    if (v15 == 1)
    {
      if (qword_27D8CCC50 != -1)
      {
        swift_once();
      }

      v16 = sub_22B7DB2B8();
      sub_22B4CFA74(v16, qword_27D8D4888);
      oslog = sub_22B7DB298();
      v9 = sub_22B7DBCB8();
      if (!os_log_type_enabled(oslog, v9))
      {
        goto LABEL_19;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "We've already spawned TTR for this version, don't do it anymore";
LABEL_13:
      _os_log_impl(&dword_22B4CC000, oslog, v9, v11, v10, 2u);
      v17 = v10;
LABEL_18:
      MEMORY[0x231898D60](v17, -1, -1);
LABEL_19:
      v27 = oslog;
      goto LABEL_21;
    }
  }

  v18 = OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount;
  v19 = *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount] = v21;
    v2 = OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec;
    *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec] = *&v1[OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec] + a1;
    if (qword_27D8CCC50 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v22 = sub_22B7DB2B8();
  sub_22B4CFA74(v22, qword_27D8D4888);
  v23 = v1;
  v24 = v1;
  oslog = sub_22B7DB298();
  v25 = sub_22B7DBCB8();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = *&v23[v18];

    *(v26 + 12) = 2048;
    *(v26 + 14) = *&v23[v2];
    _os_log_impl(&dword_22B4CC000, oslog, v25, "Message count: %ld, total elapsed: %f", v26, 0x16u);
    v17 = v26;
    goto LABEL_18;
  }

  v27 = v24;
LABEL_21:
}

void sub_22B79C910()
{
  if (qword_27D8CCC50 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_27D8D4888);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v1, v2, "App launched, spawn TTR if needed", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = [v4 messagesDomain];
  if (!v5 || (v6 = v5, v7 = sub_22B7DB678(), v8 = [v6 integerForKey_], v6, v7, v8 <= 0))
  {
    if (sub_22B79CB84())
    {
      v9 = sub_22B7DB298();
      v10 = sub_22B7DBCB8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v9, v10, "Slow delivery detected! Update version and spawn TTR", v11, 2u);
        MEMORY[0x231898D60](v11, -1, -1);
      }

      v12 = [v4 messagesDomain];
      if (v12)
      {
        v13 = v12;
        v14 = sub_22B7DBB38();
        v15 = sub_22B7DB678();
        [v13 setValue:v14 forKey:v15];
      }

      sub_22B79CCE4();
    }
  }
}

BOOL sub_22B79CB84()
{
  v1 = OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount;
  v2 = *&v0[OBJC_IVAR___IMDMessageFromStorageMonitor_messageCount];
  if (v2 < 100)
  {
    return 0;
  }

  v4 = v0;
  v5 = fabs(*&v0[OBJC_IVAR___IMDMessageFromStorageMonitor_totalElapsedTimeSec]);
  v6 = v2;
  if (qword_27D8CCC50 != -1)
  {
    swift_once();
  }

  v7 = v5 / v6;
  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_27D8D4888);
  v9 = v0;
  v10 = sub_22B7DB298();
  v11 = sub_22B7DBC78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2048;
    *(v12 + 14) = *&v4[v1];

    _os_log_impl(&dword_22B4CC000, v10, v11, "Current average: %f, number of messages: %ld", v12, 0x16u);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  return v7 > 1.0;
}

uint64_t sub_22B79CCE4()
{
  v0 = sub_22B7DB348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B7DB398();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B7DB368();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C8], v7);
  v11 = sub_22B7DBD98();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_22B79DC20;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1F6A0;
  v13 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v17 = MEMORY[0x277D84F90];
  sub_22B799D14();
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B799D6C();
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v6, v3, v13);
  _Block_release(v13);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v16);
}

void sub_22B79D094(uint64_t a1)
{
  v1 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  if (qword_27D8CCC50 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_27D8D4888);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Async spawning TTR alert", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
    v10 = sub_22B79D34C();
    if (v10)
    {
      v11 = v10;
      v12 = sub_22B7DBA58();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v13;
      v14[5] = v11;
      v15 = v11;
      sub_22B77E3D4(0, 0, v3, &unk_22B7FD140, v14);
    }

    else
    {
      v15 = sub_22B7DB298();
      v16 = sub_22B7DBC98();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v15, v16, "Tried to launch TapToRadarDraft but could not convert IMUserNotificationCenter.sharedInstance() to IMUserNotificationCenter!", v17, 2u);
        MEMORY[0x231898D60](v17, -1, -1);
      }
    }
  }
}

uint64_t sub_22B79D34C()
{
  if ([swift_getObjCClassFromMetadata() sharedInstance])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B4D0138(v4);
    return 0;
  }
}

uint64_t sub_22B79D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return MEMORY[0x2822009F8](sub_22B79D434, 0, 0);
}

uint64_t sub_22B79D434()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_22B79DCE8();
    if (v3)
    {
      v4 = v3;
      v5 = v0[12];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_22B79DF38;
      v0[7] = v6;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22B79DB9C;
      v0[5] = &unk_283F1F6F0;
      v7 = _Block_copy(v0 + 2);
      v8 = v4;

      [v5 addUserNotification:v8 listener:0 completionHandler:v7];
      _Block_release(v7);

      v9 = v2;
      v2 = v8;
    }

    else
    {
      if (qword_27D8CCC50 != -1)
      {
        swift_once();
      }

      v10 = sub_22B7DB2B8();
      sub_22B4CFA74(v10, qword_27D8D4888);
      v9 = sub_22B7DB298();
      v11 = sub_22B7DBC98();
      if (os_log_type_enabled(v9, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B4CC000, v9, v11, "Could not create a user notification for Tap-to-Radar", v12, 2u);
        MEMORY[0x231898D60](v12, -1, -1);
      }
    }
  }

  v13 = v0[1];

  return v13();
}

void sub_22B79D65C(void *a1, uint64_t a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  if (!a1 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    if (qword_27D8CCC50 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_27D8D4888);
    v7 = sub_22B7DB298();
    v17 = sub_22B7DBC98();
    if (os_log_type_enabled(v7, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B4CC000, v7, v17, "Error processing the Tap-to-Radar notification callback", v18, 2u);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    goto LABEL_27;
  }

  v7 = Strong;
  v8 = qword_27D8CCC50;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_27D8D4888);
  v11 = v9;
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v15;
    *v14 = 136315138;
    if ([v11 identifier])
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40[0] = v38;
    v40[1] = v39;
    if (*(&v39 + 1))
    {
      if (swift_dynamicCast())
      {
        v19 = v36;
        v20 = v37;
LABEL_18:
        v21 = sub_22B4CFAAC(v19, v20, &v41);
        v20, v22, v23, v24, v25, v26, v27, v28, v36, v37;
        *(v14 + 4) = v21;
        _os_log_impl(&dword_22B4CC000, v12, v13, "Finished processing user notification: %s", v14, 0xCu);
        sub_22B4CFB78(v15);
        MEMORY[0x231898D60](v15, -1, -1);
        MEMORY[0x231898D60](v14, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      sub_22B4D0138(v40);
    }

    v20 = 0x800000022B80F0A0;
    v19 = 0xD00000000000001CLL;
    goto LABEL_18;
  }

LABEL_19:

  v29 = [v11 response];
  if (v29 == 3)
  {
    v32 = sub_22B7DB298();
    v33 = sub_22B7DBC78();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v40[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22B4CFAAC(0xD000000000000016, 0x800000022B8116E0, v40);
      _os_log_impl(&dword_22B4CC000, v32, v33, "%s: user cancelled Tap-to-Radar", v34, 0xCu);
      sub_22B4CFB78(v35);
      MEMORY[0x231898D60](v35, -1, -1);
      MEMORY[0x231898D60](v34, -1, -1);
    }

    goto LABEL_25;
  }

  if (!v29)
  {
    v30 = sub_22B7DBA58();
    (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v7;
    v7 = v7;
    sub_22B722F28(0, 0, v5, &unk_22B7FD150, v31);

LABEL_25:

    return;
  }

LABEL_27:
}

uint64_t sub_22B79DB10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F0D94;

  return sub_22B79DFF4();
}

void sub_22B79DB9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_22B79DC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B79D414(a1, v4, v5, v7, v6);
}

id sub_22B79DCE8()
{
  v0 = sub_22B7DA9A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_22B7DA998();
  sub_22B7DA978();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_22B7DB678();
  v6, v8, v9, v10, v11, v12, v13, v14, v21, v22;
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v17 = sub_22B7DB678();
  v18 = sub_22B7DB678();
  v19 = [v4 userNotificationWithIdentifier:v7 title:v15 message:v16 defaultButton:v17 alternateButton:v18 otherButton:0];

  if (v19)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    sub_22B4D01A0(0, &qword_27D8CE548, 0x277D192D0);
    if (swift_dynamicCast())
    {
      return v22;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B4D0138(v25);
    return 0;
  }
}

uint64_t sub_22B79DF40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F0D94;

  return sub_22B79DB10();
}

uint64_t sub_22B79DFF4()
{
  v1 = sub_22B7DAD38();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_22B7DAD48();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_22B7DAD28();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = sub_22B7DAD88();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();
  v5 = sub_22B7DAD98();
  v0[14] = v5;
  v0[15] = *(v5 - 8);
  v0[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B79E220, 0, 0);
}

uint64_t sub_22B79E220()
{
  v13 = v0[12];
  v1 = v0[10];
  v14 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v12 = v0[13];
  v9 = v0[2];
  v8 = v0[3];
  sub_22B7DAD68();
  (*(v3 + 104))(v1, *MEMORY[0x277D195B0], v2);
  (*(v4 + 104))(v5, *MEMORY[0x277D195D8], v6);
  (*(v8 + 104))(v7, *MEMORY[0x277D195C8], v9);
  sub_22B7DAD08();
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);
  (*(v13 + 8))(v12, v14);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_22B79E448;

  return MEMORY[0x282173A08]();
}

uint64_t sub_22B79E448()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_22B79E618;
  }

  else
  {
    v2 = sub_22B79E55C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B79E55C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B79E618()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

unint64_t FileCreateFlags.init(rawValue:)@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B79E758()
{
  result = qword_27D8CF6D8;
  if (!qword_27D8CF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6D8);
  }

  return result;
}

unint64_t sub_22B79E7B0()
{
  result = qword_27D8CF6E0;
  if (!qword_27D8CF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6E0);
  }

  return result;
}

unint64_t sub_22B79E814()
{
  result = qword_27D8CF6E8;
  if (!qword_27D8CF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6E8);
  }

  return result;
}

unint64_t sub_22B79E86C()
{
  result = qword_27D8CF6F0;
  if (!qword_27D8CF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF6F0);
  }

  return result;
}

BOOL sub_22B79E904(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_22B79E934@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_22B79E960@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_22B79EA20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_22B79EA54()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CF6F8);
  sub_22B4CFA74(v0, qword_27D8CF6F8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

Swift::String_optional __swiftcall NSBundle.__im_localizedString(forKey:table:)(Swift::String forKey, Swift::String table)
{
  v3 = v2;
  v191 = table;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v6 = sub_22B7DAA08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA9F8();
  v10 = sub_22B7DA9C8();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v192 = v3;
  v13 = [v3 localizations];
  if (!v13)
  {
    v14 = sub_22B7DB918();
    v13 = sub_22B7DB8F8();
    v14, v15, v16, v17, v18, v19, v20, v21, v185, v186;
  }

  v22 = objc_opt_self();
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22B7F93B0;
  *(v23 + 32) = v10;
  *(v23 + 40) = v12;

  v24 = v10;
  v25 = sub_22B7DB8F8();
  v23, v26, v27, v28, v29, v30, v31, v32, v185, v186;
  v33 = [v22 preferredLocalizationsFromArray:v13 forPreferences:v25];

  v34 = sub_22B7DB918();
  v42 = *v34->messageStore;
  v187 = v24;
  if (v42)
  {
    v24 = *v34->queue;
    v43 = *v34->membershipObserver;

    v34, v44, v45, v46, v47, v48, v49, v50, v185, v186;
    v186 = v24;
    v51 = v43;
  }

  else
  {
    v34, v35, v36, v37, v38, v39, v40, v41, v185, v186;
    v186 = 0;
    v51 = 0;
    v43 = v12;
  }

  v189 = countAndFlagsBits;
  v190 = object;
  v52 = sub_22B7DB678();
  v53 = sub_22B7DB678();
  v54 = sub_22B7DB678();
  v188 = v24;
  v55 = sub_22B7DB678();
  v56 = [v192 localizedStringForKey:v52 value:v53 table:v54 localization:v55];

  v57 = sub_22B7DB6A8();
  v59 = v58;

  if (v57 == 0x46544F4E4D495F5FLL && v59 == 0xEE005F5F444E554FLL || (sub_22B7DC518() & 1) != 0)
  {
    v12, v60, v61, v62, v63, v64, v65, v66, v185, v186;
    v59, v67, v68, v69, v70, v71, v72, v73, v185, v186;
    v51, v74, v75, v76, v77, v78, v79, v80, v185, v186;
    v82 = v189;
    v81 = v190;
    if (qword_27D8CCD00 != -1)
    {
      swift_once();
    }

    v83 = sub_22B7DB2B8();
    sub_22B4CFA74(v83, qword_27D8CF6F8);

    v84 = sub_22B7DB298();
    v85 = sub_22B7DBC98();
    v43, v86, v87, v88, v89, v90, v91, v92, v185, v186;
    v81, v93, v94, v95, v96, v97, v98, v99, v185, v186;
    if (os_log_type_enabled(v84, v85))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v193[0] = v108;
      *v107 = 136315394;
      *(v107 + 4) = sub_22B4CFAAC(v82, v81, v193);
      *(v107 + 12) = 2080;
      v109 = sub_22B4CFAAC(v188, v43, v193);
      v43, v110, v111, v112, v113, v114, v115, v116, v185, v186;
      *(v107 + 14) = v109;
      _os_log_impl(&dword_22B4CC000, v84, v85, "Failed to find localized string for key %s with localization %s, falling back to system lookup behavior", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v108, -1, -1);
      MEMORY[0x231898D60](v107, -1, -1);
    }

    else
    {
      v43, v100, v101, v102, v103, v104, v105, v106, v185, v186;
    }

    v117 = sub_22B7DB678();
    v118 = sub_22B7DB678();
    v119 = [v192 localizedStringForKey:v117 value:0 table:v118];

    v57 = sub_22B7DB6A8();
    v59 = v120;
  }

  else
  {
    v43, v60, v61, v62, v63, v64, v65, v66, v185, v186;
    v123 = v51;
    if (qword_27D8CCD00 != -1)
    {
      swift_once();
    }

    v124 = sub_22B7DB2B8();
    sub_22B4CFA74(v124, qword_27D8CF6F8);

    v125 = v190;

    v126 = sub_22B7DB298();
    v127 = sub_22B7DBC78();
    v51, v128, v129, v130, v131, v132, v133, v134, v185, v186;
    v12, v135, v136, v137, v138, v139, v140, v141, v185, v186;
    v125, v142, v143, v144, v145, v146, v147, v148, v185, v186;
    if (os_log_type_enabled(v126, v127))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v194 = v157;
      *v156 = 136315650;
      *(v156 + 4) = sub_22B4CFAAC(v189, v125, &v194);
      *(v156 + 12) = 2080;
      v158 = sub_22B4CFAAC(v187, v12, &v194);
      v12, v159, v160, v161, v162, v163, v164, v165, v185, v186;
      *(v156 + 14) = v158;
      *(v156 + 22) = 2080;
      v193[0] = v186;
      v193[1] = v123;
      sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
      v166 = sub_22B7DB6C8();
      v168 = v167;
      v169 = sub_22B4CFAAC(v166, v167, &v194);
      v168, v170, v171, v172, v173, v174, v175, v176, v185, v186;
      *(v156 + 24) = v169;
      _os_log_impl(&dword_22B4CC000, v126, v127, "Localized string for key: %s, localeID: %s, preferredLocalization: %s", v156, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v157, -1, -1);
      MEMORY[0x231898D60](v156, -1, -1);
    }

    else
    {
      v51, v149, v150, v151, v152, v153, v154, v155, v185, v186;
      v12, v177, v178, v179, v180, v181, v182, v183, v185, v186;
    }
  }

  v121 = v57;
  v122 = v59;
  result.value._object = v122;
  result.value._countAndFlagsBits = v121;
  return result;
}

id sub_22B79F198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22B7DB6A8();
  v7 = v6;
  v8 = sub_22B7DB6A8();
  v10 = v9;
  v11 = a1;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  object = NSBundle.__im_localizedString(forKey:table:)(v12, v13).value._object;

  v7, v15, v16, v17, v18, v19, v20, v21, v38, v41;
  v10, v22, v23, v24, v25, v26, v27, v28, v39, v42;
  if (object)
  {
    v29 = sub_22B7DB678();
    object, v30, v31, v32, v33, v34, v35, v36, v40, v43;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

Swift::String_optional __swiftcall NSBundle.__im_localizedString(forKey:)(Swift::String forKey)
{
  v2 = sub_22B7DB678();
  v3 = sub_22B7DB678();
  v4 = [v1 __im_localizedStringForKey_table_];

  if (v4)
  {
    v5 = sub_22B7DB6A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v5;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

id sub_22B79F304(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_22B7DB678();
  v7 = [v5 __im_localizedStringForKey_table_];

  if (v7)
  {
    sub_22B7DB6A8();
    v9 = v8;

    v10 = sub_22B7DB678();
    v9, v11, v12, v13, v14, v15, v16, v17, v19, v20;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

unint64_t RecoverableMessageStore.batchOfRecordsToWrite(filter:limit:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a1;
  v6 = [objc_msgSend(objc_opt_self() synchronousDatabase)];
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v7 = sub_22B7DB918();

  v8 = OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap;
  swift_beginAccess();
  v9 = *(v4 + v8);
  v138 = v8;
  *(v4 + v8) = MEMORY[0x277D84F98];
  v9, v10, v11, v12, v13, v14, v15, v16, v122, v127;
  v137 = *v7->messageStore;
  if (!v137)
  {
    v7, v17, v18, v19, v20, v21, v22, v23, v123, v128;
    if (qword_28141F368 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v140 = sub_22B7A51F8(v5);
  if (!v140)
  {
    v7, v24, v25, v26, v27, v28, v29, v30, v123, v128;
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v117 = sub_22B7DB2B8();
    sub_22B4CFA74(v117, qword_281422608);
    v118 = sub_22B7DB298();
    v119 = sub_22B7DBC98();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_22B4CC000, v118, v119, "There is no zone in IMDRecordZoneManager for recoverableMessages", v120, 2u);
      MEMORY[0x231898D60](v120, -1, -1);
    }

    return sub_22B71EA68(MEMORY[0x277D84F90]);
  }

  v129 = v3;
  v31 = 0;
  v32 = MEMORY[0x277D84F98];
  v135 = v5;
  v136 = v7;
  v133 = v4;
  while (v31 < *v7->messageStore)
  {
    v33 = *&v7->queue[8 * v31];
    swift_beginAccess();

    v35 = sub_22B79FA44(v34, v140, v4 + v138, v5);
    v37 = v36;
    v39 = v38;
    swift_endAccess();
    if (!v35)
    {
      v33, v40, v41, v42, v43, v44, v45, v46, v123, v129;
      goto LABEL_5;
    }

    v47 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v47 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {
      v39, v40, v41, v42, v43, v44, v45, v46, v123, v129;
      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v63 = sub_22B7DB2B8();
      sub_22B4CFA74(v63, qword_281422608);

      v64 = sub_22B7DB298();
      v65 = sub_22B7DBC98();
      v33, v66, v67, v68, v69, v70, v71, v72, v124, v130;
      if (os_log_type_enabled(v64, v65))
      {
        v80 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v139[0] = v134;
        *v80 = 136315138;
        v81 = sub_22B7DB598();
        v83 = v82;
        v33, v82, v84, v85, v86, v87, v88, v89, v125, v131;
        v90 = sub_22B4CFAAC(v81, v83, v139);
        v91 = v83;
        v5 = v135;
        v91, v92, v93, v94, v95, v96, v97, v98, v126, v132;
        *(v80 + 4) = v90;
        v4 = v133;
        _os_log_impl(&dword_22B4CC000, v64, v65, "messageGUID is empty or nil for recoverableMessage %s", v80, 0xCu);
        sub_22B4CFB78(v134);
        MEMORY[0x231898D60](v134, -1, -1);
        MEMORY[0x231898D60](v80, -1, -1);
      }

      else
      {
        v33, v73, v74, v75, v76, v77, v78, v79, v125, v131;
      }

      goto LABEL_5;
    }

    v33, v40, v41, v42, v43, v44, v45, v46, v123, v129;
    v48 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v32;
    v50 = sub_22B723648(v37, v39);
    v58 = v32[2];
    v59 = (v51 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      goto LABEL_39;
    }

    v62 = v51;
    if (v32[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = v50;
        sub_22B7A4F5C(&qword_27D8CDBD8, &unk_22B7FA3E0);
        v50 = v102;
        v5 = v135;
        if (v62)
        {
LABEL_21:
          v99 = v50;
          v39, v51, v52, v53, v54, v55, v56, v57, v123, v129;
          v32 = v139[0];
          v100 = *(v139[0] + 56);
          v101 = *(v100 + 8 * v99);
          *(v100 + 8 * v99) = v48;

          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_22B7A3A68(v61, isUniquelyReferenced_nonNull_native, &qword_27D8CDBD8, &unk_22B7FA3E0);
      v50 = sub_22B723648(v37, v39);
      if ((v62 & 1) != (v51 & 1))
      {
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }
    }

    v5 = v135;
    if (v62)
    {
      goto LABEL_21;
    }

LABEL_25:
    v32 = v139[0];
    *(v139[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
    v103 = (v32[6] + 16 * v50);
    *v103 = v37;
    v103[1] = v39;
    *(v32[7] + 8 * v50) = v48;

    v104 = v32[2];
    v60 = __OFADD__(v104, 1);
    v105 = v104 + 1;
    if (v60)
    {
      goto LABEL_40;
    }

    v32[2] = v105;
LABEL_5:
    ++v31;
    v7 = v136;
    if (v137 == v31)
    {

      v136, v106, v107, v108, v109, v110, v111, v112, v123, v129;
      return v32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_29:
  v113 = sub_22B7DB2B8();
  sub_22B4CFA74(v113, qword_281422608);
  v114 = sub_22B7DB298();
  v115 = sub_22B7DBC98();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_22B4CC000, v114, v115, "Recently Deleted | No recoverable messages data to sync", v116, 2u);
    MEMORY[0x231898D60](v116, -1, -1);
  }

  return MEMORY[0x277D84F98];
}

id sub_22B79FA44(IMDScheduledMessageCoordinator *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B6F0AD4(&qword_27D8CF780, &unk_22B7FC160);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v105 - v12;
  v14 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_22B7A5330(a4);
  if (!v18)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v34 = sub_22B7DB2B8();
    sub_22B4CFA74(v34, qword_281422608);
    v35 = sub_22B7DB298();
    v36 = sub_22B7DBC98();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B4CC000, v35, v36, "Recoverable Message Zone is nil in IMDRecordZoneManager", v37, 2u);
      MEMORY[0x231898D60](v37, -1, -1);
    }

    return 0;
  }

  v19 = v18;
  v107 = a3;
  v108 = a2;
  v20 = [v18 zoneID];
  v21 = [v20 zoneName];

  v22 = sub_22B7DB6A8();
  v109 = v15;
  v24 = v23;

  sub_22B7A0FA8(v22, v24, a1, v13);
  v25 = v24;
  v26 = v109;
  v25, v27, v28, v29, v30, v31, v32, v33, v105, v106;
  if ((*(v26 + 48))(v13, 1, v14) == 1)
  {

    sub_22B4D0D64(v13, &qword_27D8CF780, &unk_22B7FC160);
    return 0;
  }

  sub_22B7A6368(v13, v17, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = [result cachedSalt];

  if (!v40)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v75 = sub_22B7DB2B8();
    sub_22B4CFA74(v75, qword_281422608);
    v76 = sub_22B7DB298();
    v77 = sub_22B7DBC98();
    if (!os_log_type_enabled(v76, v77))
    {
      goto LABEL_24;
    }

    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_22B4CC000, v76, v77, "No cached salt available from IMDCKRecordSaltManager could not create CKRecord!", v78, 2u);
    goto LABEL_23;
  }

  v41 = objc_opt_self();
  v42 = v17[2];
  v105 = v17[3];
  v106 = v42;
  v111 = v42;
  v112 = v105;

  MEMORY[0x231895140](43, 0xE100000000000000);
  MEMORY[0x231895140](*v17, v17[1]);
  MEMORY[0x231895140](43, 0xE100000000000000);
  v110 = v17[7];
  v43 = sub_22B7DC4E8();
  v45 = v44;
  MEMORY[0x231895140](v43);
  v45, v46, v47, v48, v49, v50, v51, v52, v105, v106;
  v53 = v112;
  v54 = sub_22B7DB678();
  v53, v55, v56, v57, v58, v59, v60, v61, v105, v106;
  v62 = [v41 recordIDUsingSalt:v40 zoneID:v108 guid:v54];

  if (!v62)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v79 = sub_22B7DB2B8();
    sub_22B4CFA74(v79, qword_281422608);

    v76 = sub_22B7DB298();
    v80 = sub_22B7DBC98();
    a1, v81, v82, v83, v84, v85, v86, v87, v105, v106;
    if (!os_log_type_enabled(v76, v80))
    {
      goto LABEL_24;
    }

    v78 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v111 = v88;
    *v78 = 136315138;
    v89 = sub_22B7DB598();
    v91 = v90;
    v92 = sub_22B4CFAAC(v89, v90, &v111);
    v91, v93, v94, v95, v96, v97, v98, v99, v105, v106;
    *(v78 + 4) = v92;
    _os_log_impl(&dword_22B4CC000, v76, v80, "Recently Deleted: returning nil record. recordID nil for metadata: %s", v78, 0xCu);
    sub_22B4CFB78(v88);
    MEMORY[0x231898D60](v88, -1, -1);
LABEL_23:
    MEMORY[0x231898D60](v78, -1, -1);
LABEL_24:

    sub_22B7A52D4(v17);
    return 0;
  }

  sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
  v63 = v62;
  v64 = sub_22B7DBFA8();

  v65 = sub_22B7DB678();
  [v64 _setCKRecordString_forKey_];

  v66 = sub_22B7DA8B8();
  v108 = v64;
  [v64 _setCKRecordDate_forKey_];

  v67 = v17[5];
  if (v67)
  {
    v68 = v67;
    v69 = JWEncodeCodableObject();
    if (v69)
    {
      v70 = v69;
      v71 = sub_22B7DA848();
      v73 = v72;

      sub_22B705E44(v71, v73);
      v74 = sub_22B7DA838();
      sub_22B705E98(v71, v73);
    }

    else
    {
      v74 = 0;
      v71 = 0;
      v73 = 0xF000000000000000;
    }

    v100 = sub_22B7DB678();
    [v108 _setCKRecordData_forKey_];

    sub_22B7A62A4(v71, v73);
    v26 = v109;
  }

  v101 = [v63 recordName];
  v102 = sub_22B7DB6A8();
  v104 = v103;

  sub_22B7A6300(v17, v11, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
  (*(v26 + 56))(v11, 0, 1, v14);
  sub_22B786C3C(v11, v102, v104);

  sub_22B7A52D4(v17);
  return v108;
}

Swift::Void __swiftcall RecoverableMessageStore.recordUpdateSucceeded(forRecord:)(CKRecord forRecord)
{
  v3 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v53[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53[-1] - v8;
  v10 = [(objc_class *)forRecord.super.isa recordID];
  v11 = [v10 recordName];

  v12 = sub_22B7DB6A8();
  v14 = v13;

  v15 = OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap;
  swift_beginAccess();
  v23 = *(v1 + v15);
  if (*(v23 + 16))
  {
    v24 = sub_22B723648(v12, v14);
    v26 = v25;
    v14, v25, v27, v28, v29, v30, v31, v32, v52, v53[0];
    if (v26)
    {
      sub_22B7A6300(*(v23 + 56) + *(v4 + 72) * v24, v7, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      sub_22B7A6368(v7, v9, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
      swift_endAccess();
      [objc_msgSend(objc_opt_self() database)];
      swift_unknownObjectRelease();
      sub_22B7A52D4(v9);
      return;
    }
  }

  else
  {
    v14, v16, v17, v18, v19, v20, v21, v22, v52, v53[0];
  }

  swift_endAccess();
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v33 = sub_22B7DB2B8();
  sub_22B4CFA74(v33, qword_281422608);
  v34 = forRecord.super.isa;
  v35 = sub_22B7DB298();
  v36 = sub_22B7DBC98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53[0] = v38;
    *v37 = 136315138;
    v39 = [(objc_class *)v34 recordID];
    v40 = [v39 recordName];

    v41 = sub_22B7DB6A8();
    v43 = v42;

    v44 = sub_22B4CFAAC(v41, v43, v53);
    v43, v45, v46, v47, v48, v49, v50, v51, v52, v53[0];
    *(v37 + 4) = v44;
    _os_log_impl(&dword_22B4CC000, v35, v36, "Record update succeeded, but could not find metadata in map for %s", v37, 0xCu);
    sub_22B4CFB78(v38);
    MEMORY[0x231898D60](v38, -1, -1);
    MEMORY[0x231898D60](v37, -1, -1);
  }
}

void RecoverableMessageStore.batchOfRecordIDsToDelete(limit:)(uint64_t a1)
{
  v14 = MEMORY[0x277D84F98];
  v3 = [objc_msgSend(objc_opt_self() synchronousDatabase)];
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v4 = sub_22B7DB918();

  v5 = objc_autoreleasePoolPush();
  sub_22B7A084C(v4, v1, &v14);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
    __break(1u);
  }

  else
  {
    v4, v6, v7, v8, v9, v10, v11, v12, v13, v14;
    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_22B7A084C(uint64_t result, uint64_t a2, IMDScheduledMessageCoordinator **a3)
{
  v132 = *(result + 16);
  if (!v132)
  {
    return result;
  }

  v3 = a3;
  v4 = 0;
  v130 = (result + 32);
  v5 = &selRef_setFirstSyncDateToNow;
LABEL_4:
  v133 = v4;
  v6 = v130[v4];
  v7 = objc_opt_self();

  v8 = [v7 v5[437]];
  if (v8)
  {
    v9 = v5;
    v10 = v8;
    v11 = [v8 recoverableMessageRecordZone];

    v138[0] = v11;
    v12 = [v7 v9 + 744];
    if (!v12)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = v12;
    v134 = v133 + 1;
    v14 = [v12 chatBotRecoverableMessageRecordZone];

    v15 = 0;
    v16 = 0;
    v138[1] = v14;
    while (1)
    {
      v24 = v15;
      v25 = v138[v16];
      v26 = v25;
      v27 = sub_22B7A580C(v6, v25);
      if (!v27)
      {
        if (qword_28141F368 != -1)
        {
          swift_once();
        }

        v46 = sub_22B7DB2B8();
        sub_22B4CFA74(v46, qword_281422608);

        v47 = sub_22B7DB298();
        v48 = sub_22B7DBC98();
        v6, v49, v50, v51, v52, v53, v54, v55, v128, v130;
        if (os_log_type_enabled(v47, v48))
        {
          v56 = v24;
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v139 = v58;
          *v57 = 136315138;
          v59 = sub_22B7DB598();
          v61 = v60;
          v62 = sub_22B4CFAAC(v59, v60, &v139);
          v61, v63, v64, v65, v66, v67, v68, v69, v128, v130;
          *(v57 + 4) = v62;
          _os_log_impl(&dword_22B4CC000, v47, v48, "Could not create delete sync CKRecord for %s", v57, 0xCu);
          sub_22B4CFB78(v58);
          v70 = v58;
          v3 = a3;
          MEMORY[0x231898D60](v70, -1, -1);
          v71 = v57;
          v24 = v56;
          MEMORY[0x231898D60](v71, -1, -1);
        }

        goto LABEL_8;
      }

      v35 = v27;
      v36 = v28;
      v37 = v29;
      v38 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v38 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {
        v29, v28, v29, v30, v31, v32, v33, v34, v128, v130;
        if (qword_28141F368 != -1)
        {
          swift_once();
        }

        v72 = sub_22B7DB2B8();
        sub_22B4CFA74(v72, qword_281422608);

        v73 = sub_22B7DB298();
        v74 = sub_22B7DBC98();
        v6, v75, v76, v77, v78, v79, v80, v81, v129, v131;
        if (os_log_type_enabled(v73, v74))
        {
          v136 = v24;
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v139 = v83;
          *v82 = 136315138;
          v84 = sub_22B7DB598();
          v86 = v85;
          v87 = sub_22B4CFAAC(v84, v85, &v139);
          v86, v88, v89, v90, v91, v92, v93, v94, v128, v130;
          *(v82 + 4) = v87;
          _os_log_impl(&dword_22B4CC000, v73, v74, "messageGUID is empty or nil for recoverableMessage %s", v82, 0xCu);
          sub_22B4CFB78(v83);
          MEMORY[0x231898D60](v83, -1, -1);
          v95 = v82;
          v24 = v136;
          MEMORY[0x231898D60](v95, -1, -1);
        }

        v3 = a3;
        goto LABEL_8;
      }

      if (!*(*v3)->messageStore)
      {
        v137 = v24;
        goto LABEL_27;
      }

      sub_22B7237AC(v27);
      if ((v39 & 1) == 0)
      {
        break;
      }

      v37, v39, v40, v41, v42, v43, v44, v45, v128, v130;

LABEL_8:
      v15 = 1;
      v16 = 1;
      if (v24)
      {
        v6, v17, v18, v19, v20, v21, v22, v23, v128, v130;
        sub_22B6F0AD4(&qword_27D8CF778, &unk_22B7FD3C0);
        result = swift_arrayDestroy();
        v4 = v134;
        v5 = &selRef_setFirstSyncDateToNow;
        if (v134 == v132)
        {
          return result;
        }

        goto LABEL_4;
      }
    }

    v137 = v24;
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *v3;
    v97 = v139;
    *v3 = 0x8000000000000000;
    v99 = sub_22B7237AC(v35);
    v100 = *(v97 + 16);
    v101 = (v98 & 1) == 0;
    v102 = v100 + v101;
    if (__OFADD__(v100, v101))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v103 = v98;
    if (*(v97 + 24) < v102)
    {
      sub_22B7A2454(v102, isUniquelyReferenced_nonNull_native);
      v104 = sub_22B7237AC(v35);
      if ((v103 & 1) != (v105 & 1))
      {
        goto LABEL_44;
      }

      v99 = v104;
      v106 = v139;
      if ((v103 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_34:
      v107 = (*(v106 + 56) + 16 * v99);
      v108 = v107[1];
      *v107 = v36;
      v107[1] = v37;

      v108, v109, v110, v111, v112, v113, v114, v115, v128, v130;
LABEL_38:
      v3 = a3;
      v127 = *a3;
      *a3 = v106;
      v127, v116, v117, v118, v119, v120, v121, v122, v128, v130;
      v24 = v137;
      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v106 = v139;
      if (v98)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_22B7A428C();
      v106 = v139;
      if (v103)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    *(v106 + 8 * (v99 >> 6) + 64) |= 1 << v99;
    *(*(v106 + 48) + 8 * v99) = v35;
    v123 = (*(v106 + 56) + 16 * v99);
    *v123 = v36;
    v123[1] = v37;

    v124 = *(v106 + 16);
    v125 = __OFADD__(v124, 1);
    v126 = v124 + 1;
    if (v125)
    {
      goto LABEL_41;
    }

    *(v106 + 16) = v126;
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

uint64_t sub_22B7A0FA8@<X0>(void *a1@<X0>, IMDScheduledMessageCoordinator *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v147 - v9;
  v11 = sub_22B7DA968();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v147 - v16;
  strcpy(v155, "messageRowID");
  BYTE5(v155[1]) = 0;
  HIWORD(v155[1]) = -5120;
  sub_22B7DC248();
  if (!*(a3 + 16))
  {
    goto LABEL_20;
  }

  v18 = sub_22B4D7EC0(v156);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v18, v157);
  sub_22B4DA138(v156);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v87 = sub_22B7DB2B8();
    sub_22B4CFA74(v87, qword_281422608);

    v88 = sub_22B7DB298();
    v89 = sub_22B7DBC98();
    a3, v90, v91, v92, v93, v94, v95, v96, v147, v148;
    a2, v97, v98, v99, v100, v101, v102, v103, v147, v148;
    if (os_log_type_enabled(v88, v89))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v156[0] = v105;
      *v104 = 136315394;
      *(v104 + 4) = sub_22B4CFAAC(a1, a2, v156);
      *(v104 + 12) = 2080;
      v106 = sub_22B7DB598();
      v108 = v107;
      v109 = sub_22B4CFAAC(v106, v107, v156);
      v108, v110, v111, v112, v113, v114, v115, v116, v147, v148;
      *(v104 + 14) = v109;
      _os_log_impl(&dword_22B4CC000, v88, v89, "Could not create CKRecord in zone %s for metadata dictionary %s", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v105, -1, -1);
      MEMORY[0x231898D60](v104, -1, -1);
    }

    goto LABEL_26;
  }

  v154 = v155[0];
  strcpy(v155, "messageGUID");
  HIDWORD(v155[1]) = -352321536;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v20 = sub_22B4D7EC0(v156), (v21 & 1) == 0))
  {
LABEL_20:
    sub_22B4DA138(v156);
    goto LABEL_21;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v20, v157);
  sub_22B4DA138(v156);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v152 = v155[0];
  v153 = v155[1];
  strcpy(v155, "chatGUID");
  BYTE1(v155[1]) = 0;
  WORD1(v155[1]) = 0;
  HIDWORD(v155[1]) = -402653184;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v22 = sub_22B4D7EC0(v156), (v23 & 1) == 0))
  {
    sub_22B4DA138(v156);
    goto LABEL_28;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v22, v157);
  sub_22B4DA138(v156);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v153, v24, v25, v26, v27, v28, v29, v30, v147, v148;
    goto LABEL_21;
  }

  v150 = v155[0];
  v151 = v155[1];
  v155[0] = 0xD000000000000012;
  v155[1] = 0x800000022B811910;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v31 = sub_22B4D7EC0(v156), (v32 & 1) == 0))
  {
    sub_22B4DA138(v156);
    goto LABEL_30;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v31, v157);
  sub_22B4DA138(v156);
  sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v151, v33, v34, v35, v36, v37, v38, v39, v147, v148;
    goto LABEL_28;
  }

  v149 = v155[0];
  [v155[0] doubleValue];
  v41 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
  if (!v41 || (v49 = v41, (*(v12 + 56))(v10, 1, 1, v11), sub_22B7A62B8(&qword_27D8CF7A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B0]), v148 = v49, sub_22B7DC4A8(), v148, (*(v12 + 48))(v10, 1, v11) == 1))
  {
    v151, v42, v43, v44, v45, v46, v47, v48, v147, v148;
    v153, v50, v51, v52, v53, v54, v55, v56, v147, v148;
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v57 = sub_22B7DB2B8();
    sub_22B4CFA74(v57, qword_281422608);

    v58 = sub_22B7DB298();
    v59 = sub_22B7DBC98();
    a3, v60, v61, v62, v63, v64, v65, v66, v147, v148;
    a2, v67, v68, v69, v70, v71, v72, v73, v147, v148;
    if (os_log_type_enabled(v58, v59))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v156[0] = v75;
      *v74 = 136315394;
      *(v74 + 4) = sub_22B4CFAAC(a1, a2, v156);
      *(v74 + 12) = 2080;
      v76 = sub_22B7DB598();
      v78 = v77;
      v79 = sub_22B4CFAAC(v76, v77, v156);
      v78, v80, v81, v82, v83, v84, v85, v86, v147, v148;
      *(v74 + 14) = v79;
      _os_log_impl(&dword_22B4CC000, v58, v59, "Could not create CKRecord in zone %s due to missing date for metadata dictionary %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v75, -1, -1);
      MEMORY[0x231898D60](v74, -1, -1);
    }

LABEL_26:
    v117 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
    return (*(*(v117 - 8) + 56))(a4, 1, 1, v117);
  }

  v119 = *(v12 + 32);
  v119(v15, v10, v11);
  v119(v17, v15, v11);
  strcpy(v155, "partBody");
  BYTE1(v155[1]) = 0;
  WORD1(v155[1]) = 0;
  HIDWORD(v155[1]) = -402653184;
  sub_22B7DC248();
  if (!*(a3 + 16) || (v120 = sub_22B4D7EC0(v156), (v121 & 1) == 0))
  {
    sub_22B4DA138(v156);
    goto LABEL_39;
  }

  sub_22B4D1F68(*(a3 + 56) + 32 * v120, v157);
  sub_22B4DA138(v156);
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    v122 = 0;
    goto LABEL_40;
  }

  v122 = v155[0];
  v123 = *MEMORY[0x277D19160];
  v124 = v155[0];
  v125 = v123;
  v126 = [v124 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_22B7A62B8(&qword_27D8CCE68, type metadata accessor for Key, &unk_22B7F92F8);
  v127 = sub_22B7DB588();

  if (!*(v127 + 16) || (v135 = sub_22B725574(), (v128 & 1) == 0))
  {
    v127, v128, v129, v130, v131, v132, v133, v134, v147, v148;

    goto LABEL_40;
  }

  sub_22B4D1F68(*(v127 + 56) + 32 * v135, v156);
  v127, v136, v137, v138, v139, v140, v141, v142, v147, v148;

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    v143 = -1;
    goto LABEL_41;
  }

  v143 = v157[0];
LABEL_41:
  v144 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  v119((a4 + *(v144 + 40)), v17, v11);
  v145 = v151;
  *a4 = v150;
  *(a4 + 8) = v145;
  v146 = v153;
  *(a4 + 16) = v152;
  *(a4 + 24) = v146;
  *(a4 + 32) = v154;
  *(a4 + 40) = v122;
  *(a4 + 48) = v122 != 0;
  *(a4 + 56) = v143;
  return (*(*(v144 - 8) + 56))(a4, 0, 1, v144);
}

id RecoverableMessageStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecoverableMessageStore.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap] = MEMORY[0x277D84F98];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id RecoverableMessageStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7A1BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v43 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = &v39 - v12;
  v13 = *v6;
  sub_22B6F0AD4(a4, a5);
  v41 = v10;
  result = sub_22B7DC478();
  v15 = result;
  if (*(v13 + 16))
  {
    v39 = v6;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(*(v13 + 48) + 8 * v27);
      v29 = *(v40 + 72);
      v30 = *(v13 + 56) + v29 * v27;
      if (v41)
      {
        sub_22B7A6368(v30, v42, v43);
      }

      else
      {
        sub_22B7A6300(v30, v42, v43);
      }

      sub_22B7DC668();
      MEMORY[0x231895FF0](v28);
      result = sub_22B7DC6B8();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v15 + 48) + 8 * v23) = v28;
      result = sub_22B7A6368(v42, *(v15 + 56) + v29 * v23, v43);
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v9 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v9 = v39;
    if (v38 >= 64)
    {
      bzero((v13 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_22B7A1F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&qword_27D8CDB88, &qword_22B7FA390);
  result = sub_22B7DC478();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v30 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      sub_22B7DC668();
      MEMORY[0x231895FF0](v30);
      MEMORY[0x231895FF0](*(&v30 + 1));
      result = sub_22B7DC6B8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v30;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22B7A21AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&qword_27D8CDB80, &qword_22B7FA388);
  v34 = v4;
  result = sub_22B7DC478();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B7A2454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&qword_27D8CF770, &qword_22B7FA3F8);
  v35 = v4;
  result = sub_22B7DC478();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_22B7DBFC8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B7A26D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&qword_27D8CDB50, &qword_22B7FA350);
  v31 = v4;
  result = sub_22B7DC478();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_22B7DC668();
      MEMORY[0x231895FF0](v20);
      result = sub_22B7DC6B8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B7A2978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_22B6F0AD4(a3, a4);
  v36 = v6;
  result = sub_22B7DC478();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_22B7A2C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&qword_27D8CDBB0, &unk_22B7FD3B0);
  result = sub_22B7DC478();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_22B7DC668();
      MEMORY[0x231895FF0](v29);
      MEMORY[0x231895FF0](*(&v29 + 1));
      result = sub_22B7DC6B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B7A2ECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22B6F0AD4(&unk_27D8CF750, &unk_22B7FA378);
  result = sub_22B7DC478();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_22B7DC668();
      MEMORY[0x231895FF0](v29);
      MEMORY[0x231895FF0](*(&v29 + 1));
      result = sub_22B7DC6B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}