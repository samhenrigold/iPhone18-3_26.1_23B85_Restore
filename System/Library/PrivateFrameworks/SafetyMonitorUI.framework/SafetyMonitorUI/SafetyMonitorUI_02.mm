uint64_t sub_264642338(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_264783DF4();

    v16 = a1;
    v17 = sub_264783E14();
    v18 = sub_2647859F4();

    if (os_log_type_enabled(v17, v18))
    {
      v36[1] = a4;
      v37 = a3;
      v38 = v7;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40[0] = v20;
      *v19 = 136315650;
      v41 = v15;
      type metadata accessor for SessionViewModel(0);

      v21 = sub_264785764();
      v23 = sub_2646DF234(v21, v22, v40);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, v40);
      *(v19 + 22) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v24 = sub_264785EF4();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v35 = sub_2646DF234(v24, v26, v40);

      *(v19 + 24) = v35;
      _os_log_impl(&dword_264605000, v17, v18, "%s, %s: error to trigger prompt, %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v20, -1, -1);
      MEMORY[0x266740650](v19, -1, -1);

      (*(v8 + 8))(v13, v38);
      a3 = v37;
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    a3(a1);
  }

  else
  {
    sub_264783DF4();

    v27 = sub_264783E14();
    v28 = sub_2647859D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315650;
      swift_beginAccess();
      v39 = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v31 = sub_264785764();
      v33 = sub_2646DF234(v31, v32, &v41);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &v41);
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &v41);
      _os_log_impl(&dword_264605000, v27, v28, "%s, %s: no reference to self in %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v29, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

void sub_2646427CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void SessionViewModel.extendDurationSession(timeInterval:completion:)(void (*a1)(void), uint64_t a2, double a3)
{
  v4 = v3;
  v118 = a1;
  v114 = *v3;
  v115 = a2;
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v116 = v5;
  v117 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v105 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v105 - v19;
  v21 = sub_264783B64();
  v109 = *(v21 - 8);
  v110 = v21;
  MEMORY[0x28223BE20](v21);
  v111 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_264783AF4();
  v107 = *(v113 - 8);
  v23 = MEMORY[0x28223BE20](v113);
  v108 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v105 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v105 - v29;
  MEMORY[0x28223BE20](v28);
  v112 = &v105 - v31;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(aBlock);

  v32 = aBlock[0];
  if (aBlock[0] && (v33 = [aBlock[0] isActiveState], v32, v33))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(aBlock);

    v34 = aBlock[0];
    if (aBlock[0])
    {
      v35 = [aBlock[0] configuration];

      if (v35)
      {
        v36 = [v35 time];
        if (v36)
        {
          v106 = v36;
          if ([v35 sessionType] == 1)
          {
            v105 = v35;
            swift_getKeyPath();
            swift_getKeyPath();
            sub_264783ED4(aBlock);

            v37 = aBlock[0];
            if (aBlock[0] && (v38 = [aBlock[0] sessionState], v37, v38 == 2) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(aBlock), , , (v39 = aBlock[0]) != 0) && (v40 = objc_msgSend(aBlock[0], sel_sessionState), v39, v40 == 9))
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4(aBlock);

              v41 = aBlock[0];
              if (aBlock[0] && (v42 = [aBlock[0] sessionState], v41, v42 == 2))
              {
                v43 = [v106 timeBound];
                v44 = v112;
                sub_264783AC4();
              }

              else
              {
                v44 = v112;
                sub_264783AD4();
              }

              v75 = v113;
              v76 = v107;
              v77 = v108;
              (*(v107 + 16))(v27, v44, v113);
              v78 = v76;
              sub_264783A24();
              v79 = objc_allocWithZone(MEMORY[0x277D4AC08]);
              v80 = sub_264783A64();
              v81 = [v79 initWithTimeBound_];

              v82 = *(v78 + 8);
              v116 = v78 + 8;
              v117 = v82;
              (v82)(v30, v75);
              v83 = v105;
              v114 = [v105 conversation];
              v84 = [v83 sessionID];
              sub_264783B44();

              v85 = [v83 sessionStartDate];
              if (v85)
              {
                v86 = v85;
                sub_264783AC4();

                v87 = *(v78 + 32);
                v87(v20, v30, v75);
                (*(v78 + 56))(v20, 0, 1, v75);
                v87(v77, v20, v75);
                v83 = v105;
                v88 = v77;
              }

              else
              {
                (*(v78 + 56))(v20, 1, 1, v75);
                sub_264783AE4();
                v88 = v77;
                if ((*(v78 + 48))(v20, 1, v75) != 1)
                {
                  sub_26460CD50(v20, &qword_27FF756B8, &qword_26478AC90);
                }
              }

              v89 = [objc_opt_self() zelkovaHandoffEnabled];
              v90 = [v83 sosReceivers];
              v91 = objc_allocWithZone(MEMORY[0x277D4AB78]);
              v92 = v81;
              v93 = v111;
              v94 = sub_264783B14();
              v95 = sub_264783A64();
              v96 = v114;
              v97 = [v91 initTimeBoundSessionConfigurationWithConversation:v114 sessionID:v94 time:v92 sessionStartDate:v95 sessionSupportsHandoff:v89 sosReceivers:v90];

              (v117)(v88, v113);
              (*(v109 + 8))(v93, v110);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4(aBlock);

              if ((aBlock[0] & 1) == 0)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                LOBYTE(aBlock[0]) = 1;

                sub_264783EE4();
                sub_264628950();
              }

              v98 = v4[2];
              v99 = swift_allocObject();
              swift_weakInit();
              v100 = swift_allocObject();
              v100[2] = v99;
              v100[3] = v97;
              v101 = v118;
              v102 = v115;
              v100[4] = v118;
              v100[5] = v102;
              aBlock[4] = sub_264655EE8;
              aBlock[5] = v100;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_26465A0B4;
              aBlock[3] = &block_descriptor_259;
              v103 = _Block_copy(aBlock);
              v104 = v97;
              sub_26460FA4C(v101, v102);

              [v98 modifySessionWithConfiguration:v104 handler:v103];

              _Block_release(v103);
              (v117)(v112, v113);
            }

            else
            {
              sub_264783DF4();

              v67 = sub_264783E14();
              v68 = sub_2647859D4();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                aBlock[0] = v70;
                *v69 = 136315394;
                v120 = v4;

                v71 = sub_264785764();
                v73 = sub_2646DF234(v71, v72, aBlock);

                *(v69 + 4) = v73;
                *(v69 + 12) = 2080;
                *(v69 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
                _os_log_impl(&dword_264605000, v67, v68, "%s, %s: not in a valid state for extension", v69, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266740650](v70, -1, -1);
                MEMORY[0x266740650](v69, -1, -1);
              }

              v117[1](v17, v116);
              v74 = v105;
              if (v118)
              {
                v118(0);
              }
            }
          }

          else
          {
            sub_264783DF4();

            v59 = sub_264783E14();
            v60 = sub_2647859D4();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              aBlock[0] = v62;
              *v61 = 136315394;
              v120 = v4;

              v63 = sub_264785764();
              v65 = v35;
              v66 = sub_2646DF234(v63, v64, aBlock);

              *(v61 + 4) = v66;
              v35 = v65;
              *(v61 + 12) = 2080;
              *(v61 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
              _os_log_impl(&dword_264605000, v59, v60, "%s, %s: not in a duration based session", v61, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266740650](v62, -1, -1);
              MEMORY[0x266740650](v61, -1, -1);
            }

            v117[1](v15, v116);
            if (v118)
            {
              v118(0);
            }
          }

          return;
        }
      }
    }

    sub_264783DF4();

    v52 = sub_264783E14();
    v53 = sub_2647859D4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315394;
      v120 = v4;

      v56 = sub_264785764();
      v58 = sub_2646DF234(v56, v57, aBlock);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
      _os_log_impl(&dword_264605000, v52, v53, "%s, %s: invalid current configuration", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v55, -1, -1);
      MEMORY[0x266740650](v54, -1, -1);
    }

    v117[1](v12, v116);
  }

  else
  {
    sub_264783DF4();

    v45 = sub_264783E14();
    v46 = sub_2647859D4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315394;
      v120 = v4;

      v49 = sub_264785764();
      v51 = sub_2646DF234(v49, v50, aBlock);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
      _os_log_impl(&dword_264605000, v45, v46, "%s, %s: not in an active state", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v48, -1, -1);
      MEMORY[0x266740650](v47, -1, -1);
    }

    v117[1](v9, v116);
  }

  if (v118)
  {
    v118(0);
  }
}

uint64_t sub_2646437D4(void *a1, uint64_t a2, void *a3, void (*a4)(BOOL), uint64_t a5)
{
  v62 = a3;
  v63 = a1;
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - v12;
  v13 = sub_264785594();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2647855C4();
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v55 = a5;
    v56 = a4;
    v57 = v8;
    v58 = v7;
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v21 = sub_264785A44();
    aBlock[4] = sub_264658F34;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_466;
    v22 = _Block_copy(aBlock);

    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    sub_264785BD4();
    MEMORY[0x26673F780](0, v18, v15, v22);
    _Block_release(v22);

    (*(v61 + 8))(v15, v13);
    (*(v59 + 8))(v18, v60);
    v23 = v64;
    sub_264783DF4();

    v24 = v62;
    v25 = v63;
    v26 = v63;
    v27 = sub_264783E14();
    v28 = sub_2647859F4();

    v29 = v20;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315907;
      v66 = v29;
      type metadata accessor for SessionViewModel(0);
      v62 = v29;

      v32 = sub_264785764();
      v34 = sub_2646DF234(v32, v33, aBlock);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
      *(v30 + 22) = 2085;
      v35 = [v24 debugDescription];
      v36 = sub_264785724();
      v38 = v37;

      v39 = sub_2646DF234(v36, v38, aBlock);

      *(v30 + 24) = v39;
      *(v30 + 32) = 2080;
      v40 = v57;
      if (v25)
      {
        swift_getErrorValue();
        v41 = sub_264785EF4();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      v53 = v56;
      v54 = sub_2646DF234(v41, v43, aBlock);

      *(v30 + 34) = v54;
      _os_log_impl(&dword_264605000, v27, v28, "%s, %s: modifySession with updatedConfiguration, %{sensitive}s, error: %s", v30, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v31, -1, -1);
      MEMORY[0x266740650](v30, -1, -1);

      (*(v40 + 8))(v64, v58);
      if (!v53)
      {
      }
    }

    else
    {

      (*(v57 + 8))(v23, v58);
      v53 = v56;
      if (!v56)
      {
      }
    }

    v53(v25 == 0);
  }

  sub_264783DF4();

  v44 = sub_264783E14();
  v45 = sub_2647859D4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v8;
    v48 = swift_slowAlloc();
    v66 = v48;
    *v46 = 136315650;
    swift_beginAccess();
    aBlock[6] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v49 = sub_264785764();
    v51 = sub_2646DF234(v49, v50, &v66);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, &v66);
    *(v46 + 22) = 2080;
    *(v46 + 24) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, &v66);
    _os_log_impl(&dword_264605000, v44, v45, "%s, %s: no reference to self in %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v48, -1, -1);
    MEMORY[0x266740650](v46, -1, -1);

    return (*(v47 + 8))(v11, v7);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_264643FE4(uint64_t *a1)
{
  sub_264655E3C(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  sub_264783E64();
  sub_264783E74();
}

void sub_264644088(char *a1@<X8>)
{
  if ([objc_opt_self() hasUserCompletedOnboarding])
  {
    SessionViewModel.clearSuggestedSessionConfiguration()();
    v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
    swift_beginAccess();
    *(v1 + v3) = 0;

    sub_26461D7C8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v7);

    v4 = v7;
    if (v7 && (v5 = [v7 isActiveState], v4, v5) && (SessionViewModel.isActiveSessionForRecipient.getter() & 1) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 3;
  }

  *a1 = v6;
}

id *SessionViewModel.deinit()
{

  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_lastSuggestionConversionEventTime, &qword_27FF756B8, &qword_26478AC90);

  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__localSessionState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__recipientHandles;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__groupID;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionInitializationInfo;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isInitializing;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingEligibility, v12);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingInitiatorEligibility, v12);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingReceiverEligibility, v12);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__showContactPicker, v12);
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__endLocation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__candidateSessionDestinations;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__mostLikelyReceiverHandles;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__expectedTravelTime;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__deviceClass;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isActiveDevice, v12);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isProcessingRemoteCommand, v12);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__userSessionConfiguration;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v13(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__fetchedMostLikelySessionDestinations, v12);
  return v0;
}

uint64_t SessionViewModel.__deallocating_deinit()
{
  SessionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_264644774@<X0>(uint64_t *a2@<X8>)
{
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_2646447C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

void sub_264644840(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315394;
    aBlock[6] = a1;

    v14 = sub_264785764();
    v16 = sub_2646DF234(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, aBlock);
    _os_log_impl(&dword_264605000, v9, v10, "%s, %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    (*(v6 + 8))(v8, v23);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = MEMORY[0x277D84FA0];

  sub_264783EE4();
  sub_264625C28();
  v17 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  swift_beginAccess();
  *(a1 + v17) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  sub_264783EE4();
  sub_26462A724();
  sub_264783B54();
  v18 = sub_264783B64();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
  swift_beginAccess();
  sub_264659660(v4, a1 + v19, &qword_27FF75CE8, &unk_264788B70);
  swift_endAccess();
  v20 = a1[2];
  v21 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2646596C8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264647434;
  aBlock[3] = &block_descriptor_577;
  v22 = _Block_copy(aBlock);

  [v20 fetchMostLikelySessionDestinationsWithHandler_];
  _Block_release(v22);
}

uint64_t sub_264644CBC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_264785594();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2647855C4();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v23 = sub_264785A44();
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a2;
  aBlock[4] = sub_264659720;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_583;
  v17 = _Block_copy(aBlock);

  v18 = a1;

  v19 = a4;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  v20 = v23;
  MEMORY[0x26673F780](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

uint64_t sub_264644FE0(uint64_t a1, NSObject *a2, void *a3, void *a4, uint64_t a5)
{
  v157 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v164 = v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = v152 - v12;
  v13 = sub_264783AF4();
  v170 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v156 = v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v161 = v152 - v17;
  MEMORY[0x28223BE20](v16);
  v155 = v152 - v18;
  v19 = sub_264783E24();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v163 = v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v167 = v152 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v158 = v152 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v154 = v152 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v160 = v152 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v152 - v31;
  sub_264783DF4();

  v168 = a2;
  v33 = a2;

  v34 = a4;
  v35 = sub_264783E14();
  v36 = sub_2647859F4();
  v169 = a3;
  v37 = v35;

  v162 = v33;

  v38 = a4;

  LODWORD(v171) = v36;
  if (os_log_type_enabled(v35, v36))
  {
    v153 = v20;
    v165 = v19;
    v166 = v13;
    v39 = swift_slowAlloc();
    v152[0] = swift_slowAlloc();
    v176 = v152[0];
    *v39 = 136316163;
    swift_beginAccess();
    v152[1] = a1;
    Strong = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v40 = sub_264785764();
    v42 = sub_2646DF234(v40, v41, &v176);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v176);
    *(v39 + 22) = 2085;
    if (v168)
    {
      v43 = [v162 debugDescription];
      v44 = sub_264785724();
      v46 = v45;
    }

    else
    {
      v46 = 0xE300000000000000;
      v44 = 7104878;
    }

    v48 = v169;
    v49 = sub_2646DF234(v44, v46, &v176);

    *(v39 + 24) = v49;
    *(v39 + 32) = 2085;
    Strong = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F38, &qword_2647898D0);
    v50 = sub_264785B34();
    v52 = sub_2646DF234(v50, v51, &v176);

    *(v39 + 34) = v52;
    *(v39 + 42) = 2080;
    if (v38)
    {
      swift_getErrorValue();
      v53 = sub_264785EF4();
      v55 = v54;
      v47 = v170;
      v19 = v165;
    }

    else
    {
      v55 = 0xE300000000000000;
      v47 = v170;
      v19 = v165;
      v53 = 7104878;
    }

    v56 = sub_2646DF234(v53, v55, &v176);

    *(v39 + 44) = v56;
    _os_log_impl(&dword_264605000, v37, v171, "%s, %s: mostLikelySessionDestination, %{sensitive}s, candidateSessionPlaceInferences, %{sensitive}s, error, %s", v39, 0x34u);
    v57 = v152[0];
    swift_arrayDestroy();
    MEMORY[0x266740650](v57, -1, -1);
    MEMORY[0x266740650](v39, -1, -1);

    v171 = *(v153 + 8);
    v171(v32, v19);
    v13 = v166;
  }

  else
  {

    v171 = *(v20 + 8);
    v171(v32, v19);
    v47 = v170;
    v48 = v169;
  }

  swift_beginAccess();
  v58 = swift_weakLoadStrong();
  if (v58)
  {
    v59 = v58;
    if (v38)
    {
      v60 = v167;
      sub_264783DF4();
      v61 = v38;

      v62 = sub_264783E14();
      v63 = sub_2647859D4();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v166 = v13;
        v65 = v64;
        v66 = swift_slowAlloc();
        Strong = v66;
        *v65 = 136315650;
        v174 = v59;
        type metadata accessor for SessionViewModel(0);

        v67 = sub_264785764();
        v69 = sub_2646DF234(v67, v68, &Strong);
        v165 = v19;
        v70 = v47;
        v71 = v69;

        *(v65 + 4) = v71;
        v47 = v70;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &Strong);
        *(v65 + 22) = 2080;
        swift_getErrorValue();
        v72 = sub_264785EF4();
        v74 = sub_2646DF234(v72, v73, &Strong);

        *(v65 + 24) = v74;
        _os_log_impl(&dword_264605000, v62, v63, "%s, %s: returning early because of error, %s", v65, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v66, -1, -1);
        v75 = v65;
        v13 = v166;
        MEMORY[0x266740650](v75, -1, -1);

        v76 = v167;
        v77 = v165;
      }

      else
      {

        v76 = v60;
        v77 = v19;
      }

      v171(v76, v77);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(Strong) = 1;

      sub_264783EE4();
      sub_26462A724();
      v59[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus] = 3;
      v89 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
      swift_beginAccess();
      v90 = &v59[v89];
      v91 = v164;
      sub_26460CCE8(v90, v164, &qword_27FF756B8, &qword_26478AC90);
      if ((*(v47 + 48))(v91, 1, v13) == 1)
      {

        return sub_26460CD50(v91, &qword_27FF756B8, &qword_26478AC90);
      }

      v92 = v156;
      (*(v47 + 32))(v156, v91, v13);
      v93 = [objc_opt_self() now];
      v94 = v161;
      sub_264783AC4();

      sub_264783A44();
      v96 = v95;
      v97 = *(v47 + 8);
      v97(v94, v13);
      v97(v92, v13);
      v98 = &v59[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency];
      *v98 = v96;
      v98[8] = 0;
    }

    v87 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
    swift_beginAccess();
    *&v59[v87] = v157;
    v88 = v160;
    if (v48)
    {
      if (v48 >> 62)
      {
        if (sub_264785C14())
        {
          goto LABEL_20;
        }
      }

      else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        sub_264646520(v48);
        goto LABEL_30;
      }
    }

    sub_264783DF4();

    v99 = sub_264783E14();
    v100 = sub_2647859B4();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v166 = v13;
      v103 = v102;
      v174 = v102;
      *v101 = 136315394;
      v173 = v59;
      type metadata accessor for SessionViewModel(0);

      v104 = sub_264785764();
      v106 = sub_2646DF234(v104, v105, &v174);

      *(v101 + 4) = v106;
      *(v101 + 12) = 2080;
      *(v101 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v174);
      _os_log_impl(&dword_264605000, v99, v100, "%s, %s: candidateSessionPlaceInferences nil or empty", v101, 0x16u);
      swift_arrayDestroy();
      v107 = v103;
      v13 = v166;
      MEMORY[0x266740650](v107, -1, -1);
      MEMORY[0x266740650](v101, -1, -1);

      v108 = v160;
    }

    else
    {

      v108 = v88;
    }

    v171(v108, v19);
LABEL_30:
    v109 = v158;
    if (!v168)
    {
      sub_264783DF4();

      v115 = v109;
      v116 = sub_264783E14();
      v117 = sub_2647859B4();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v168 = v116;
        v119 = v118;
        v167 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v174 = v169;
        *v119 = 136315650;
        v173 = v59;
        type metadata accessor for SessionViewModel(0);

        v120 = sub_264785764();
        v122 = v13;
        v123 = v47;
        v124 = sub_2646DF234(v120, v121, &v174);

        *(v119 + 4) = v124;
        v47 = v123;
        v13 = v122;
        *(v119 + 12) = 2080;
        *(v119 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v174);
        *(v119 + 22) = 2112;
        *(v119 + 24) = 0;
        v125 = v167;
        *v167 = 0;
        v126 = v117;
        v127 = v168;
        _os_log_impl(&dword_264605000, v168, v126, "%s, %s: mostLikelySessionDestination not set,%@", v119, 0x20u);
        sub_26460CD50(v125, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v125, -1, -1);
        v128 = v169;
        swift_arrayDestroy();
        MEMORY[0x266740650](v128, -1, -1);
        MEMORY[0x266740650](v119, -1, -1);
      }

      else
      {
      }

      v171(v115, v19);
      goto LABEL_40;
    }

    v110 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
    swift_beginAccess();
    if (*&v59[v110])
    {
LABEL_40:
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v174) = 1;

      sub_264783EE4();
      sub_26462A724();
      v129 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
      swift_beginAccess();
      v130 = &v59[v129];
      v131 = v159;
      sub_26460CCE8(v130, v159, &qword_27FF756B8, &qword_26478AC90);
      if ((*(v47 + 48))(v131, 1, v13) == 1)
      {
        sub_26460CD50(v131, &qword_27FF756B8, &qword_26478AC90);
      }

      else
      {
        v132 = v155;
        (*(v47 + 32))(v155, v131, v13);
        v133 = [objc_opt_self() now];
        v134 = v161;
        sub_264783AC4();

        sub_264783A44();
        v136 = v135;
        v137 = *(v47 + 8);
        v137(v134, v13);
        v137(v132, v13);
        v138 = &v59[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency];
        *v138 = v136;
        v138[8] = 0;
      }

      v59[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus] = 2;
    }

    v111 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    v112 = v162;
    sub_264783ED4(&v174);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v174);

    if (v174 == 4 || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v174), , , (v113 = v174) != 0) && (v114 = [v174 isActiveState], v113, (v114 & 1) != 0))
    {

      goto LABEL_40;
    }

    v139 = v154;
    sub_264783DF4();
    swift_retain_n();
    v140 = sub_264783E14();
    v141 = sub_2647859F4();

    if (!os_log_type_enabled(v140, v141))
    {

      v171(v139, v19);
LABEL_53:
      v150 = v112;
      v151 = _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo16RTPlaceInferenceC_tcfC_0(v150);
      swift_getKeyPath();
      swift_getKeyPath();
      v174 = v151;

      sub_264783EE4();
      sub_264629270();

      v13 = v111;
      goto LABEL_40;
    }

    v142 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v174 = v169;
    *v142 = 136315650;
    v172 = v59;
    type metadata accessor for SessionViewModel(0);

    v143 = sub_264785764();
    v145 = sub_2646DF234(v143, v144, &v174);

    *(v142 + 4) = v145;
    *(v142 + 12) = 2080;
    *(v142 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v174);
    *(v142 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v172);

    v146 = v172;
    if (v172)
    {
      v147 = [v172 isActiveState];

      if (v147)
      {
        v148 = 1;
LABEL_52:
        *(v142 + 24) = v148;

        _os_log_impl(&dword_264605000, v140, v141, "%s, %s: - Setting initial configuration since hasActiveSession is, %{BOOL}d.", v142, 0x1Cu);
        v149 = v169;
        swift_arrayDestroy();
        MEMORY[0x266740650](v149, -1, -1);
        MEMORY[0x266740650](v142, -1, -1);

        v171(v154, v19);
        v47 = v170;
        goto LABEL_53;
      }
    }

    else
    {
    }

    v148 = 0;
    goto LABEL_52;
  }

  v78 = v163;
  sub_264783DF4();

  v79 = sub_264783E14();
  v80 = sub_2647859D4();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v174 = v82;
    *v81 = 136315650;
    swift_beginAccess();
    v173 = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v83 = sub_264785764();
    v85 = sub_2646DF234(v83, v84, &v174);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    *(v81 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v174);
    *(v81 + 22) = 2080;
    *(v81 + 24) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v174);
    _os_log_impl(&dword_264605000, v79, v80, "%s, %s: no reference to self in %s", v81, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v82, -1, -1);
    MEMORY[0x266740650](v81, -1, -1);
  }

  return (v171)(v78, v19);
}

void sub_264646520(unint64_t a1)
{
  v2 = v1;
  v126 = *v1;
  v114 = sub_264785594();
  v4 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2647855C4();
  v6 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2647855A4();
  v8 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v108 = *(v10 - 8);
  v11 = *(v108 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v107 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v120 = &v99 - v13;
  v132 = sub_264783E24();
  v14 = *(v132 - 8);
  v15 = MEMORY[0x28223BE20](v132);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v116 = &v99 - v19;
  MEMORY[0x28223BE20](v18);
  v124 = &v99 - v20;
  if (a1 >> 62)
  {
    v21 = sub_264785C14();
    if (!v21)
    {
      return;
    }
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      return;
    }
  }

  if (v21 >= 1)
  {
    v130 = a1 & 0xC000000000000001;
    v106 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
    swift_beginAccess();
    v22 = 0;
    v131 = (v14 + 8);
    v125 = "essionDestinations()";
    v105 = *MEMORY[0x277D851B8];
    v104 = (v8 + 104);
    v103 = (v8 + 8);
    v102 = v11 + 7;
    v101 = v134;
    v100 = (v4 + 8);
    v99 = (v6 + 8);
    *&v23 = 136315651;
    v122 = v23;
    *&v23 = 136315650;
    v115 = v23;
    v129 = v2;
    v121 = a1;
    v127 = v21;
    v128 = v17;
    while (1)
    {
      if (v130)
      {
        v24 = MEMORY[0x26673FA30](v22, a1);
      }

      else
      {
        v24 = *(a1 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v24 mapItem];
      if (!v26 || (v27 = v26, v28 = [v26 geoMapItemHandle], v27, !v28))
      {
        sub_264783DF4();

        v47 = v25;
        v48 = sub_264783E14();
        v49 = sub_2647859E4();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          aBlock[0] = v52;
          *v50 = v122;
          v135 = v2;

          v53 = sub_264785764();
          v55 = sub_2646DF234(v53, v54, aBlock);

          *(v50 + 4) = v55;
          v21 = v127;
          *(v50 + 12) = 2080;
          *(v50 + 14) = sub_2646DF234(0xD00000000000002DLL, v125 | 0x8000000000000000, aBlock);
          *(v50 + 22) = 2117;
          *(v50 + 24) = v47;
          *v51 = v47;
          v56 = v47;
          _os_log_impl(&dword_264605000, v48, v49, "%s, %s: Map item handle unavailable, placeInference %{sensitive}@", v50, 0x20u);
          sub_26460CD50(v51, &qword_27FF779D0, &qword_26478A9A0);
          v57 = v51;
          v17 = v128;
          MEMORY[0x266740650](v57, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v52, -1, -1);
          MEMORY[0x266740650](v50, -1, -1);

          v2 = v129;
        }

        else
        {
        }

        (*v131)(v17, v132);
        goto LABEL_7;
      }

      v29 = sub_264783A14();
      v31 = v30;

      v32 = v124;
      sub_264783DF4();

      sub_26465944C(v29, v31);
      v33 = sub_264783E14();
      v34 = sub_2647859B4();

      sub_264655264(v29, v31);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = v29;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = v115;
        v135 = v2;

        v38 = sub_264785764();
        v40 = sub_2646DF234(v38, v39, aBlock);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_2646DF234(0xD00000000000002DLL, v125 | 0x8000000000000000, aBlock);
        *(v36 + 22) = 2080;
        sub_26465944C(v35, v31);
        v41 = sub_2647839E4();
        v43 = v42;
        sub_264655264(v35, v31);
        v44 = sub_2646DF234(v41, v43, aBlock);

        *(v36 + 24) = v44;
        v2 = v129;
        _os_log_impl(&dword_264605000, v33, v34, "%s, %s: resolving map item handle, mapItemHandle %s", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v37, -1, -1);
        v45 = v36;
        v29 = v35;
        MEMORY[0x266740650](v45, -1, -1);

        v46 = *v131;
        (*v131)(v124, v132);
      }

      else
      {

        v46 = *v131;
        (*v131)(v32, v132);
      }

      v58 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v58 == 2 && *(v29 + 16) != *(v29 + 24))
        {
LABEL_24:
          v59 = [objc_opt_self() convertPlaceTypeToDestinationType_];
          v60 = [v25 referenceLocation];
          [v60 horizontalUncertainty];
          v62 = v61;

          v118 = v59;
          if (v62 == 100.0)
          {
            v63 = v29;
            v64 = v31;
            v117 = 0;
          }

          else
          {
            v63 = v29;
            v64 = v31;
            if (v62 == 250.0)
            {
              v79 = 1;
            }

            else
            {
              v79 = 2 * (v62 == 375.0);
            }

            v117 = v79;
          }

          v80 = v120;
          sub_26460CCE8(v106, v120, &qword_27FF75CE8, &unk_264788B70);
          sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
          v81 = v109;
          v82 = v110;
          (*v104)(v109, v105, v110);
          v119 = sub_264785A64();
          (*v103)(v81, v82);
          v83 = v80;
          v84 = v107;
          sub_26460CCE8(v83, v107, &qword_27FF75CE8, &unk_264788B70);
          v85 = (*(v108 + 80) + 40) & ~*(v108 + 80);
          v86 = (v102 + v85) & 0xFFFFFFFFFFFFFFF8;
          v87 = swift_allocObject();
          v88 = v63;
          v87[2] = v63;
          v87[3] = v64;
          v123 = v63;
          v89 = v64;
          v90 = v129;
          v87[4] = v129;
          sub_26460E7E4(v84, v87 + v85, &qword_27FF75CE8, &unk_264788B70);
          v91 = v87 + v86;
          *v91 = v118;
          v91[8] = v117;
          v134[2] = sub_26465986C;
          v134[3] = v87;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v134[0] = sub_264659F60;
          v134[1] = &block_descriptor_589;
          v92 = _Block_copy(aBlock);

          v93 = v88;
          v94 = v89;
          sub_26465944C(v93, v89);
          v95 = v111;
          sub_2647855B4();
          v135 = MEMORY[0x277D84F90];
          sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
          sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
          v96 = v113;
          v97 = v114;
          v2 = v90;
          sub_264785BD4();
          v98 = v119;
          MEMORY[0x26673F780](0, v95, v96, v92);
          _Block_release(v92);

          (*v100)(v96, v97);
          (*v99)(v95, v112);
          sub_26460CD50(v120, &qword_27FF75CE8, &unk_264788B70);

          sub_264655264(v123, v94);

          goto LABEL_35;
        }
      }

      else if (v58)
      {
        if (v29 != v29 >> 32)
        {
          goto LABEL_24;
        }
      }

      else if ((v31 & 0xFF000000000000) != 0)
      {
        goto LABEL_24;
      }

      v65 = v116;
      sub_264783DF4();

      v66 = v25;
      v67 = sub_264783E14();
      v68 = sub_2647859E4();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v119 = v46;
        v71 = v70;
        v72 = swift_slowAlloc();
        v123 = v29;
        v73 = v72;
        aBlock[0] = v72;
        *v69 = v122;
        v135 = v2;

        v74 = sub_264785764();
        v76 = sub_2646DF234(v74, v75, aBlock);
        v118 = v31;
        v77 = v76;
        v2 = v129;

        *(v69 + 4) = v77;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_2646DF234(0xD00000000000002DLL, v125 | 0x8000000000000000, aBlock);
        *(v69 + 22) = 2117;
        *(v69 + 24) = v66;
        *v71 = v66;
        v78 = v66;
        _os_log_impl(&dword_264605000, v67, v68, "%s, %s: Map item handle is empty (0 bytes), placeInference %{sensitive}@", v69, 0x20u);
        sub_26460CD50(v71, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v71, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266740650](v73, -1, -1);
        MEMORY[0x266740650](v69, -1, -1);

        sub_264655264(v123, v118);
        v119(v65, v132);
      }

      else
      {
        sub_264655264(v29, v31);

        v46(v65, v132);
      }

LABEL_35:
      a1 = v121;
      v21 = v127;
      v17 = v128;
LABEL_7:
      if (v21 == ++v22)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_264647434(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  if (a4)
  {
    sub_264659B70(0, &qword_27FF75F30, 0x277D011D8);
    v6 = sub_2647857F4();
  }

  v10 = a2;
  v11 = a5;
  v9(a2, a3, v6, a5);
}

void sub_2646474FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23 = a6;
  v22 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v21 - v12;
  v24 = objc_opt_self();
  v14 = sub_264783A04();
  v15 = swift_allocObject();
  swift_weakInit();
  sub_26460CCE8(a4, v13, &qword_27FF75CE8, &unk_264788B70);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_26460E7E4(v13, v17 + v16, &qword_27FF75CE8, &unk_264788B70);
  v18 = v17 + ((v16 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = v22;
  *(v18 + 8) = v23;
  v19 = (v17 + ((v16 + v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a1;
  v19[1] = a2;
  aBlock[4] = sub_264659A4C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26464CCBC;
  aBlock[3] = &block_descriptor_596;
  v20 = _Block_copy(aBlock);
  sub_26465944C(a1, a2);

  [v24 _mapItemFromHandle_completionHandler_];
  _Block_release(v20);
}

uint64_t sub_264647744(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v115 = a8;
  v114 = a7;
  v117 = a6;
  v124 = a5;
  v128 = a4;
  v126 = a1;
  v123 = sub_264785594();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2647855C4();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783B64();
  v129 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v125 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v127 = v111 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v111 - v19;
  v21 = sub_264783E24();
  v22 = *(v21 - 8);
  v130 = v21;
  v131 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v111 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v116 = v111 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v111 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  MEMORY[0x28223BE20](v33);
  v35 = v111 - v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_264783DF4();
    v50 = sub_264783E14();
    v51 = sub_2647859D4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
      _os_log_impl(&dword_264605000, v50, v51, "#Initiator,UserSessionConfiguration, no reference to self in %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x266740650](v53, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);
    }

    v54 = *(v131 + 8);
    v55 = v25;
    return v54(v55, v130);
  }

  v37 = Strong;
  if (a2)
  {
    v38 = a2;
    sub_264783DF4();
    v39 = a2;

    v40 = sub_264783E14();
    v41 = sub_2647859E4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v42 = 136315650;
      v134 = v37;
      type metadata accessor for SessionViewModel(0);

      v45 = sub_264785764();
      v47 = sub_2646DF234(v45, v46, aBlock);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
      *(v42 + 22) = 2112;
      v48 = a2;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 24) = v49;
      *v43 = v49;
      _os_log_impl(&dword_264605000, v40, v41, "%s, %s: Error hydrating map item from map data handle, error, %@", v42, 0x20u);
      sub_26460CD50(v43, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v43, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v44, -1, -1);
      MEMORY[0x266740650](v42, -1, -1);
    }

    else
    {
    }

    v54 = *(v131 + 8);
    v55 = v32;
    return v54(v55, v130);
  }

  v56 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
  swift_beginAccess();
  v57 = *(v33 + 48);
  sub_26460CCE8(v128, v35, &qword_27FF75CE8, &unk_264788B70);
  v112 = v56;
  sub_26460CCE8(v37 + v56, &v35[v57], &qword_27FF75CE8, &unk_264788B70);
  v59 = v129 + 48;
  v58 = *(v129 + 48);
  if (v58(v35, 1, v11) != 1)
  {
    sub_26460CCE8(v35, v20, &qword_27FF75CE8, &unk_264788B70);
    if (v58(&v35[v57], 1, v11) != 1)
    {
      v113 = v58;
      v70 = v129;
      v71 = *(v129 + 32);
      v111[1] = v59;
      v72 = v125;
      v71(v125, &v35[v57], v11);
      sub_264655E3C(&qword_27FF78040, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v73 = sub_264785684();
      v74 = *(v70 + 8);
      v74(v72, v11);
      v74(v20, v11);
      sub_26460CD50(v35, &qword_27FF75CE8, &unk_264788B70);
      v60 = v28;
      if (v73)
      {
        goto LABEL_21;
      }

LABEL_16:
      sub_264783DF4();
      v61 = v127;
      sub_26460CCE8(v128, v127, &qword_27FF75CE8, &unk_264788B70);

      v62 = sub_264783E14();
      v63 = sub_2647859D4();

      if (os_log_type_enabled(v62, v63))
      {
        LODWORD(v128) = v63;
        v64 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        aBlock[0] = v126;
        *v64 = 136315906;
        v133 = v37;
        type metadata accessor for SessionViewModel(0);

        v65 = sub_264785764();
        v67 = sub_2646DF234(v65, v66, aBlock);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
        *(v64 + 22) = 2080;
        sub_26460CCE8(v61, v16, &qword_27FF75CE8, &unk_264788B70);
        if (v113(v16, 1, v11) == 1)
        {
          sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
          v68 = 0xE300000000000000;
          v69 = 7104878;
        }

        else
        {
          v69 = sub_264783B04();
          v68 = v86;
          (*(v129 + 8))(v16, v11);
        }

        sub_26460CD50(v61, &qword_27FF75CE8, &unk_264788B70);
        v87 = sub_2646DF234(v69, v68, aBlock);

        *(v64 + 24) = v87;
        *(v64 + 32) = 2080;
        v88 = v112;
        if (v113((v37 + v112), 1, v11))
        {
          v89 = 0xE300000000000000;
          v90 = 7104878;
        }

        else
        {
          v105 = v129;
          v106 = v125;
          (*(v129 + 16))(v125, v37 + v88, v11);
          v107 = sub_264783B04();
          v89 = v108;
          (*(v105 + 8))(v106, v11);
          v90 = v107;
        }

        v109 = sub_2646DF234(v90, v89, aBlock);

        *(v64 + 34) = v109;
        _os_log_impl(&dword_264605000, v62, v128, "%s, %s: previous hydration attempt no longer relevant, previousID %s, currentID %s", v64, 0x2Au);
        v110 = v126;
        swift_arrayDestroy();
        MEMORY[0x266740650](v110, -1, -1);
        MEMORY[0x266740650](v64, -1, -1);
      }

      else
      {

        sub_26460CD50(v61, &qword_27FF75CE8, &unk_264788B70);
      }

      v54 = *(v131 + 8);
      v55 = v60;
      return v54(v55, v130);
    }

    (*(v129 + 8))(v20, v11);
    v60 = v28;
LABEL_15:
    v113 = v58;
    sub_26460CD50(v35, &qword_27FF75ED8, &qword_264789880);
    goto LABEL_16;
  }

  v60 = v28;
  if (v58(&v35[v57], 1, v11) != 1)
  {
    goto LABEL_15;
  }

  sub_26460CD50(v35, &qword_27FF75CE8, &unk_264788B70);
LABEL_21:
  v75 = v126;
  if (v126)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v76 = v75;
    v77 = sub_264785A44();
    v78 = swift_allocObject();
    v79 = v124;
    *(v78 + 16) = v76;
    *(v78 + 24) = v79;
    *(v78 + 32) = v117;
    *(v78 + 40) = v37;
    aBlock[4] = sub_264659B60;
    aBlock[5] = v78;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_602;
    v80 = _Block_copy(aBlock);

    v81 = v76;

    v82 = v118;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v83 = v120;
    v84 = v123;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v82, v83, v80);
    _Block_release(v80);

    (*(v122 + 8))(v83, v84);
    return (*(v119 + 8))(v82, v121);
  }

  v91 = v116;
  sub_264783DF4();

  v92 = v114;
  v93 = v115;
  sub_26465944C(v114, v115);
  v94 = sub_264783E14();
  v95 = sub_2647859D4();

  sub_264655264(v92, v93);
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    aBlock[0] = v98;
    *v96 = 136316162;
    v133 = v37;
    type metadata accessor for SessionViewModel(0);

    v99 = sub_264785764();
    v101 = sub_2646DF234(v99, v100, aBlock);

    *(v96 + 4) = v101;
    *(v96 + 12) = 2080;
    *(v96 + 14) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
    *(v96 + 22) = 2112;
    *(v96 + 24) = 0;
    *v97 = 0;
    *(v96 + 32) = 2080;
    v102 = sub_2647839E4();
    v104 = sub_2646DF234(v102, v103, aBlock);

    *(v96 + 34) = v104;
    *(v96 + 42) = 2048;
    *(v96 + 44) = v124;
    _os_log_impl(&dword_264605000, v94, v95, "%s, %s: Error hydrating,mapItem,%@,mapItemHandle,%s,destinationType,%lu", v96, 0x34u);
    sub_26460CD50(v97, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v97, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v98, -1, -1);
    MEMORY[0x266740650](v96, -1, -1);

    v54 = *(v131 + 8);
    v55 = v116;
  }

  else
  {

    v54 = *(v131 + 8);
    v55 = v91;
  }

  return v54(v55, v130);
}

void sub_264648774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v10 = qword_27FF75090;
      v8 = a1;
      if (v10 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_8;
      }

      v11 = qword_27FF75098;
      v8 = a1;
      if (v11 == -1)
      {
LABEL_12:
        v12 = sub_264785714();
        [v8 setName_];

        goto LABEL_13;
      }
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

  if (a2 == 1)
  {
    v7 = qword_27FF75088;
    v8 = a1;
    if (v7 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_8:
  v9 = a1;
LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a1;
  sub_264783ED4(v14);

  sub_2646D8C80(v14, v13, a2, v4);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264625C28();
}

Swift::Bool __swiftcall SessionViewModel.receiverEligiblityNeedsRefresh(for:)(Swift::OpaquePointer a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CA0, &qword_264788A88);
  sub_26460CDF0(&qword_27FF75D98, &qword_27FF75CA0, &qword_264788A88, MEMORY[0x277D83988]);
  v1 = sub_2647859A4();

  return (v1 & 1) == 0;
}

Swift::Void __swiftcall SessionViewModel.refreshInitiatorEligibility()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[0] = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22[1] = v1;
    aBlock[0] = v13;
    *v12 = 136315394;

    v14 = sub_264785764();
    v16 = sub_2646DF234(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264793AC0, aBlock);
    _os_log_impl(&dword_264605000, v9, v10, "%s, %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    (*(v6 + 8))(v8, v22[0]);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v17 = [objc_opt_self() now];
  sub_264783AC4();

  v18 = sub_264783AF4();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime;
  swift_beginAccess();
  sub_264659660(v4, v1 + v19, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;

  sub_264783EE4();
  v20 = *(v1 + 16);
  aBlock[4] = sub_264655EF4;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264649774;
  aBlock[3] = &block_descriptor_262;
  v21 = _Block_copy(aBlock);

  [v20 checkInitiatorEligibilityWithHandler_];
  _Block_release(v21);
}

uint64_t sub_264648ECC(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_264785594();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2647855C4();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v41 = v6;
    v17 = a2;
    sub_264783DF4();
    v18 = a2;

    v19 = sub_264783E14();
    v20 = sub_2647859D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = a1;
      v22 = v21;
      v39 = swift_slowAlloc();
      v46 = a3;
      aBlock[0] = v39;
      *v22 = 136315650;

      v23 = sub_264785764();
      v38 = v20;
      v25 = sub_2646DF234(v23, v24, aBlock);
      v41 = v13;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264793AC0, aBlock);
      *(v22 + 22) = 2080;
      swift_getErrorValue();
      v27 = sub_264785EF4();
      v29 = sub_2646DF234(v27, v28, aBlock);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_264605000, v19, v38, "%s, %s: %s", v22, 0x20u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x266740650](v30, -1, -1);
      v31 = v22;
      a1 = v40;
      MEMORY[0x266740650](v31, -1, -1);

      (*(v14 + 8))(v16, v41);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v32 = sub_264785A44();
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a1;
  aBlock[4] = sub_264658F2C;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_463;
  v34 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v35 = v45;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v12, v9, v34);
  _Block_release(v34);

  (*(v44 + 8))(v9, v35);
  return (*(v42 + 8))(v12, v43);
}

uint64_t sub_264649440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_264783AF4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v22 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v23);

  v13 = v24;

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a2;
  v24 = v13;
  v25 = 0;

  sub_264783EE4();
  sub_264621B20();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = 0;

  sub_264783EE4();
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime;
  swift_beginAccess();
  sub_26460CCE8(a1 + v14, v6, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_26460CD50(v6, &qword_27FF756B8, &qword_26478AC90);
  }

  (*(v8 + 32))(v12, v6, v7);
  v16 = [objc_opt_self() now];
  v17 = v22;
  sub_264783AC4();

  sub_264783A44();
  v19 = v18;
  v20 = *(v8 + 8);
  v20(v17, v7);
  result = (v20)(v12, v7);
  v21 = a1 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency;
  *v21 = v19;
  *(v21 + 8) = 0;
  return result;
}

Swift::Void __swiftcall SessionViewModel.refreshReceiverEligibility()()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-v7];
  sub_264783DF4();

  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v10;
    v12 = v11;
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v12 = 136315394;
    v41 = v1;

    v13 = sub_264785764();
    v15 = v2;
    v16 = v6;
    v17 = v3;
    v18 = sub_2646DF234(v13, v14, &aBlock);

    *(v12 + 4) = v18;
    v3 = v17;
    v6 = v16;
    v2 = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793AE0, &aBlock);
    _os_log_impl(&dword_264605000, v9, v34, "%s, %s", v12, 0x16u);
    v19 = v35;
    swift_arrayDestroy();
    MEMORY[0x266740650](v19, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);
  }

  v20 = *(v3 + 8);
  v20(v8, v2);
  v21 = sub_26462B210();
  if (v21)
  {
    v22 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    sub_264783EE4();
    v23 = *(v1 + 16);
    v39 = sub_264655EFC;
    v40 = v1;
    aBlock = MEMORY[0x277D85DD0];
    *&v37 = 1107296256;
    *(&v37 + 1) = sub_26464A36C;
    v38 = &block_descriptor_265;
    v24 = _Block_copy(&aBlock);

    [v23 checkConversationEligibility:v22 handler:v24];
    _Block_release(v24);
  }

  else
  {
    sub_264783DF4();

    v25 = sub_264783E14();
    v26 = sub_2647859D4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315394;
      v41 = v1;

      v29 = sub_264785764();
      v35 = v3;
      v31 = sub_2646DF234(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793AE0, &aBlock);
      _os_log_impl(&dword_264605000, v25, v26, "%s, %s: no valid conversation", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v28, -1, -1);
      MEMORY[0x266740650](v27, -1, -1);
    }

    v20(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&aBlock);

    v32 = aBlock;

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v32;
    v37 = xmmword_2647889D0;

    sub_264783EE4();
    sub_264621B20();
  }
}

uint64_t sub_264649CE4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_264785594();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2647855C4();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v41 = v6;
    v17 = a2;
    sub_264783DF4();
    v18 = a2;

    v19 = sub_264783E14();
    v20 = sub_2647859D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = a1;
      v22 = v21;
      v39 = swift_slowAlloc();
      v46 = a3;
      aBlock[0] = v39;
      *v22 = 136315650;

      v23 = sub_264785764();
      v38 = v20;
      v25 = sub_2646DF234(v23, v24, aBlock);
      v41 = v13;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793AE0, aBlock);
      *(v22 + 22) = 2080;
      swift_getErrorValue();
      v27 = sub_264785EF4();
      v29 = sub_2646DF234(v27, v28, aBlock);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_264605000, v19, v38, "%s, %s: %s", v22, 0x20u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x266740650](v30, -1, -1);
      v31 = v22;
      a1 = v40;
      MEMORY[0x266740650](v31, -1, -1);

      (*(v14 + 8))(v16, v41);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v32 = sub_264785A44();
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a1;
  aBlock[4] = sub_264658F24;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_457;
  v34 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v35 = v45;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v12, v9, v34);
  _Block_release(v34);

  (*(v44 + 8))(v9, v35);
  return (*(v42 + 8))(v12, v43);
}

uint64_t sub_26464A258(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v5);

  v3 = v5[0];

  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = v3;
  v5[1] = a2;
  v5[2] = 0;

  sub_264783EE4();
  sub_264621B20();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v5[0]) = 0;

  return sub_264783EE4();
}

Swift::Void __swiftcall SessionViewModel.refreshEligibility()()
{
  v1 = v0;
  v2 = sub_264785594();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2647855C4();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v54 - v11;
  sub_264783DF4();

  v13 = sub_264783E14();
  v14 = sub_2647859F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    LODWORD(v58) = v14;
    v16 = v15;
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v16 = 136315394;
    v72 = v1;

    v17 = sub_264785764();
    v19 = v6;
    v20 = v10;
    v21 = v7;
    v22 = sub_2646DF234(v17, v18, &aBlock);

    *(v16 + 4) = v22;
    v23 = v21;
    v10 = v20;
    v6 = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, &aBlock);
    _os_log_impl(&dword_264605000, v13, v58, "%s, %s", v16, 0x16u);
    v24 = v65;
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);

    v25 = *(v23 + 8);
    v25(v12, v19);
  }

  else
  {

    v25 = *(v7 + 8);
    v25(v12, v6);
  }

  v26 = sub_26462B210();
  if (v26)
  {
    v27 = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0;
    v67 = 0;
    v68 = 0;

    sub_264783EE4();
    sub_264621B20();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    sub_264783EE4();
    v30 = dispatch_group_create();
    dispatch_group_enter(v30);
    v31 = v1[2];
    v32 = swift_allocObject();
    v32[2] = v1;
    v32[3] = v28;
    v32[4] = v30;
    v70 = sub_264655F2C;
    v71 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_264649774;
    v69 = &block_descriptor_275;
    v33 = _Block_copy(&aBlock);

    v34 = v30;

    [v31 checkInitiatorEligibilityWithHandler_];
    _Block_release(v33);
    dispatch_group_enter(v34);
    v35 = swift_allocObject();
    v35[2] = v1;
    v35[3] = v29;
    v35[4] = v34;
    v70 = sub_264659FB4;
    v71 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v54[4] = &v68;
    v68 = sub_26464A36C;
    v69 = &block_descriptor_281;
    v36 = _Block_copy(&aBlock);

    v65 = v34;

    [v31 checkConversationEligibility:v27 handler:v36];
    _Block_release(v36);
    v56 = sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v37 = sub_264785A44();
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = v28;
    v57 = v29;
    v58 = v28;
    v39[4] = v29;
    v70 = sub_264655F94;
    v71 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_264659F60;
    v69 = &block_descriptor_288;
    v40 = _Block_copy(&aBlock);

    v41 = v59;
    sub_2647855B4();
    v72 = MEMORY[0x277D84F90];
    v54[2] = sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v55 = v27;
    v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    v54[3] = sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v42 = v62;
    v43 = v64;
    sub_264785BD4();
    sub_264785A14();
    _Block_release(v40);

    v63 = *(v63 + 8);
    (v63)(v42, v43);
    v44 = v61;
    v60 = *(v60 + 8);
    (v60)(v41, v61);

    v45 = sub_264785A44();
    v70 = sub_264655FA0;
    v71 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_264659F60;
    v69 = &block_descriptor_291;
    v46 = _Block_copy(&aBlock);

    sub_2647855B4();
    aBlock = MEMORY[0x277D84F90];
    sub_264785BD4();
    MEMORY[0x26673F780](0, v41, v42, v46);
    _Block_release(v46);

    (v63)(v42, v43);
    (v60)(v41, v44);
  }

  else
  {
    sub_264783DF4();

    v47 = sub_264783E14();
    v48 = sub_2647859D4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock = v50;
      *v49 = 136315394;
      v72 = v1;

      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, &aBlock);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, &aBlock);
      _os_log_impl(&dword_264605000, v47, v48, "%s, %s: no valid conversation", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v49, -1, -1);
    }

    v25(v10, v6);
  }
}

void sub_26464AE1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v31 = a1;
    v14 = a2;
    sub_264783DF4();
    v15 = a2;

    v16 = sub_264783E14();
    v17 = sub_2647859D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a5;
      v19 = v18;
      v29 = swift_slowAlloc();
      v32 = a3;
      v33[0] = v29;
      *v19 = 136315650;
      type metadata accessor for SessionViewModel(0);

      v20 = sub_264785764();
      v22 = sub_2646DF234(v20, v21, v33);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, v33);
      *(v19 + 22) = 2080;
      swift_getErrorValue();
      v23 = sub_264785EF4();
      v25 = sub_2646DF234(v23, v24, v33);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_264605000, v16, v17, "%s, %s: %s", v19, 0x20u);
      v26 = v29;
      swift_arrayDestroy();
      MEMORY[0x266740650](v26, -1, -1);
      v27 = v19;
      a5 = v30;
      MEMORY[0x266740650](v27, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
    a1 = v31;
  }

  swift_beginAccess();
  *(a4 + 16) = a1;
  dispatch_group_leave(a5);
}

uint64_t sub_26464B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v9 = *(a2 + 16);
    swift_beginAccess();
    v10 = *(a3 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v19[0] = v9;
    v19[1] = v10;
    v19[2] = 0;

    sub_264783EE4();
    sub_264621B20();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v19[0]) = 0;
    return sub_264783EE4();
  }

  else
  {
    sub_264783DF4();

    v12 = sub_264783E14();
    v13 = sub_2647859D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315394;
      swift_beginAccess();
      v19[0] = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v16 = sub_264785764();
      v18 = sub_2646DF234(v16, v17, v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, v20);
      _os_log_impl(&dword_264605000, v12, v13, "%s, %s: unexpectedly missing self)", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_26464B3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_264658E74;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26464BA40;
  v4[3] = &block_descriptor_445;
  v3 = _Block_copy(v4);

  [v1 checkHasSimWithHandler_];
  _Block_release(v3);
}

uint64_t sub_26464B4C4(char a1, void *a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264785594();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2647855C4();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a2)
    {
      v35 = v6;
      v17 = a2;
      sub_264783DF4();

      v18 = a2;
      v19 = sub_264783E14();
      v20 = sub_2647859D4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v16;
        aBlock[0] = v22;
        *v21 = 136315650;
        type metadata accessor for SessionViewModel(0);

        v23 = sub_264785764();
        v25 = sub_2646DF234(v23, v24, aBlock);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, aBlock);
        *(v21 + 22) = 2080;
        swift_getErrorValue();
        v26 = sub_264785EF4();
        v28 = sub_2646DF234(v26, v27, aBlock);

        *(v21 + 24) = v28;
        _os_log_impl(&dword_264605000, v19, v20, "%s, %s: checkHasSim, error, %s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v22, -1, -1);
        MEMORY[0x266740650](v21, -1, -1);
      }

      else
      {
      }

      return (*(v35 + 8))(v8, v5);
    }

    else
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v33 = sub_264785A44();
      v29 = swift_allocObject();
      *(v29 + 16) = v16;
      *(v29 + 24) = a1 & 1;
      aBlock[4] = sub_264658EB4;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_451;
      v30 = _Block_copy(aBlock);

      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      sub_264785BD4();
      v31 = v33;
      MEMORY[0x26673F780](0, v14, v11, v30);
      _Block_release(v30);

      (*(v35 + 8))(v11, v9);
      return (*(v34 + 8))(v14, v12);
    }
  }

  return result;
}

void sub_26464BA40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void SessionViewModel.checkInitiatorEligibility(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_264655FE0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_264649774;
  v8[3] = &block_descriptor_297;
  v7 = _Block_copy(v8);

  [v5 checkInitiatorEligibilityWithHandler_];
  _Block_release(v7);
}

uint64_t sub_26464BB9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_264785594();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2647855C4();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v14 = sub_264785A44();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  aBlock[4] = sub_264658E44;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_441;
  v16 = _Block_copy(aBlock);

  v17 = a2;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

Swift::Void __swiftcall SessionViewModel.initializeWatchConfiguration()()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315394;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001ELL, 0x8000000264793B20, &v15);
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  SessionViewModel.prepareForConfigurationPresentation()();
  sub_2646366D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v15);

  if (v15 && (v13 = *(v15 + 16), , v13))
  {
    SessionViewModel.refreshEligibility()();
  }

  else
  {
    SessionViewModel.refreshInitiatorEligibility()();
  }
}

uint64_t sub_26464C148(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_264785594();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2647855C4();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v23 = sub_264785A44();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_264659CC0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_623;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = a1;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  v20 = v23;
  MEMORY[0x26673F780](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

uint64_t sub_26464C46C(void *a1, uint64_t a2, void *a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v74 - v11;
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v81 = v18;
  if (a1)
  {
    v21 = a1;
    sub_264783DF4();
    v22 = a1;

    v23 = sub_264783E14();
    v24 = sub_2647859D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v77 = a4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v75 = v13;
      v28 = v27;
      v82 = a2;
      v83 = v27;
      *v26 = 136315650;
      type metadata accessor for SessionViewModel(0);

      v29 = sub_264785764();
      v31 = sub_2646DF234(v29, v30, &v83);
      v76 = a5;
      v32 = v31;

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2646DF234(0xD000000000000026, 0x8000000264794800, &v83);
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v33 = sub_264785EF4();
      v35 = sub_2646DF234(v33, v34, &v83);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_264605000, v23, v24, "%s, %s: workout snapshot - error: %s", v26, 0x20u);
      swift_arrayDestroy();
      v36 = v28;
      v13 = v75;
      MEMORY[0x266740650](v36, -1, -1);
      v37 = v26;
      a4 = v77;
      MEMORY[0x266740650](v37, -1, -1);
    }

    else
    {
    }

    v12 = v81;
    (*(v13 + 8))(v20, v81);
  }

  if (a3)
  {
    v38 = v13;
    v39 = a3;
    v40 = v79;
    sub_264783DF4();
    v41 = v39;

    v42 = v41;
    v43 = sub_264783E14();
    v44 = sub_2647859F4();

    v45 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = a4;
      v48 = swift_slowAlloc();
      v82 = a2;
      v83 = v48;
      *v46 = 136316162;
      type metadata accessor for SessionViewModel(0);

      v49 = sub_264785764();
      v51 = sub_2646DF234(v49, v50, &v83);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2646DF234(0xD000000000000026, 0x8000000264794800, &v83);
      *(v46 + 22) = 1024;
      v52 = [v42 isWorkoutOngoing];

      *(v46 + 24) = v52;
      *(v46 + 28) = 2048;
      v53 = [v42 activityType];

      *(v46 + 30) = v53;
      *(v46 + 38) = 2048;
      v54 = [v42 sessionType];

      *(v46 + 40) = v54;
      _os_log_impl(&dword_264605000, v43, v44, "%s, %s: isWorkoutOngoing, %{BOOL}d, activity, %lu, sessionType, %ld", v46, 0x30u);
      swift_arrayDestroy();
      v55 = v48;
      a4 = v47;
      MEMORY[0x266740650](v55, -1, -1);
      v56 = v46;
      v45 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
      MEMORY[0x266740650](v56, -1, -1);

      (*(v38 + 8))(v79, v81);
    }

    else
    {

      (*(v38 + 8))(v40, v12);
    }

    v68 = [v42 v45[140]];
    v69 = [v42 sessionIdentifier];
    v70 = v80;
    sub_264783B44();

    v71 = sub_264783B64();
    (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
    a4(v68, v70, [v42 activityType], objc_msgSend(v42, sel_sessionType));
  }

  else
  {
    v57 = v78;
    sub_264783DF4();

    v58 = sub_264783E14();
    v59 = sub_2647859F4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v13;
      v62 = a4;
      v63 = swift_slowAlloc();
      v82 = a2;
      v83 = v63;
      *v60 = 136315394;
      type metadata accessor for SessionViewModel(0);

      v64 = sub_264785764();
      v66 = sub_2646DF234(v64, v65, &v83);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_2646DF234(0xD000000000000026, 0x8000000264794800, &v83);
      _os_log_impl(&dword_264605000, v58, v59, "%s, %s: workout snapshot is nil", v60, 0x16u);
      swift_arrayDestroy();
      v67 = v63;
      a4 = v62;
      MEMORY[0x266740650](v67, -1, -1);
      MEMORY[0x266740650](v60, -1, -1);

      (*(v61 + 8))(v57, v81);
    }

    else
    {

      (*(v13 + 8))(v57, v12);
    }

    v72 = sub_264783B64();
    v70 = v80;
    (*(*(v72 - 8) + 56))(v80, 1, 1, v72);
    a4(0, v70, 3000, 0);
  }

  return sub_26460CD50(v70, &qword_27FF75CE8, &unk_264788B70);
}

void sub_26464CCBC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t SessionViewModel.InitiatorViewType.hashValue.getter()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

SafetyMonitorUI::SessionViewModel::InitiatorViewType __swiftcall SessionViewModel.viewType(for:withPayloadID:)(Swift::OpaquePointer a1, Swift::String withPayloadID)
{
  v4 = v3;
  object = withPayloadID._object;
  countAndFlagsBits = withPayloadID._countAndFlagsBits;
  v8 = v2;
  v143 = *v3;
  v145 = sub_264783E24();
  v9 = *(v145 - 8);
  v10 = MEMORY[0x28223BE20](v145);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v139 = &v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v133 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v138 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v133 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v133 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v133 - v26;

  v28 = sub_264785E14();

  v144 = v8;
  if (v28 > 3)
  {
    sub_264783DF4();

    v50 = sub_264783E14();
    v51 = sub_2647859D4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v9;
      v54 = swift_slowAlloc();
      v150[0] = v54;
      *v52 = 136315906;
      v151[0] = v4;

      v55 = sub_264785764();
      v57 = sub_2646DF234(v55, v56, v150);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_2646DF234(countAndFlagsBits, object, v150);
      *(v52 + 32) = 2080;
      *(v52 + 34) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
      _os_log_impl(&dword_264605000, v50, v51, "%s, %s: Unable to handle payload type - Unknown payloadID %s passed to %s", v52, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v54, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);

      result = (*(v53 + 8))(v12, v145);
    }

    else
    {

      result = (*(v9 + 8))(v12, v145);
    }

    *v144 = 0;
  }

  else
  {
    v134 = v17;
    sub_264783DF4();

    v29 = sub_264783E14();
    v30 = sub_2647859F4();

    v31 = os_log_type_enabled(v29, v30);
    rawValue = a1._rawValue;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v136 = v4;
      v33 = v32;
      v34 = swift_slowAlloc();
      v150[0] = v34;
      *v33 = 136315906;
      v151[0] = v136;

      v35 = sub_264785764();
      v135 = v9;
      v37 = sub_2646DF234(v35, v36, v150);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_2646DF234(countAndFlagsBits, object, v150);
      *(v33 + 32) = 2080;
      v38 = sub_264785624();
      v40 = sub_2646DF234(v38, v39, v150);

      *(v33 + 34) = v40;
      v9 = v135;
      _os_log_impl(&dword_264605000, v29, v30, "%s, %s: Valid payloadID %s passed, Payload, %s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      v41 = v33;
      v4 = v136;
      MEMORY[0x266740650](v41, -1, -1);
    }

    v42 = *(v9 + 8);
    v42(v27, v145);
    v43 = v141;
    v44 = v144;
    if (qword_27FF74FD8 != -1)
    {
      swift_once();
    }

    v146 = qword_27FF76490;
    v147 = *algn_27FF76498;

    sub_264785C84();
    v45 = rawValue;
    if (rawValue[2] && (v46 = sub_26465492C(v150), (v47 & 1) != 0))
    {
      sub_264655DB8(v45[7] + 32 * v46, v151);
      sub_264655FE8(v150);
      if (swift_dynamicCast())
      {
        v48 = v146;
        v49 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
        swift_beginAccess();
        *&v4[v49] = v48;
        v45 = rawValue;
        sub_264614A6C();
      }
    }

    else
    {
      sub_264655FE8(v150);
    }

    if (v28 - 2 < 2)
    {
      sub_264783DF4();

      v59 = sub_264783E14();
      v60 = sub_2647859F4();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v4;
        v63 = swift_slowAlloc();
        v150[0] = v63;
        *v61 = 136315394;
        v151[0] = v62;

        v64 = sub_264785764();
        v66 = sub_2646DF234(v64, v65, v150);

        *(v61 + 4) = v66;
        *(v61 + 12) = 2080;
        *(v61 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
        _os_log_impl(&dword_264605000, v59, v60, "%s, %s: Workouts payload type", v61, 0x16u);
        swift_arrayDestroy();
        v67 = v63;
        v4 = v62;
        v44 = v144;
        MEMORY[0x266740650](v67, -1, -1);
        MEMORY[0x266740650](v61, -1, -1);
      }

      v42(v43, v145);
      v77 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
      swift_beginAccess();
      *&v4[v77] = 0;

      sub_26461D7C8();
      SessionViewModel.clearSuggestedSessionConfiguration()();
      sub_26464E628(rawValue);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v151);

      v78 = v151[0];
      if (v151[0])
      {
        v79 = [v151[0] isActiveState];

        if (v79)
        {
          result = SessionViewModel.isActiveSessionForRecipient.getter();
          if (result)
          {
LABEL_24:
            *v44 = 2;
            return result;
          }
        }
      }

      goto LABEL_51;
    }

    if (!v28)
    {
      v68 = v140;
      sub_264783DF4();

      v69 = sub_264783E14();
      v70 = sub_2647859F4();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v135 = v9;
        v73 = v72;
        v150[0] = v72;
        *v71 = 136315394;
        v151[0] = v4;

        v74 = sub_264785764();
        v76 = sub_2646DF234(v74, v75, v150);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
        _os_log_impl(&dword_264605000, v69, v70, "%s, %s: New message payload type", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v73, -1, -1);
        MEMORY[0x266740650](v71, -1, -1);

        v42(v68, v145);
LABEL_36:
        sub_264644088(v44);
        return result;
      }

      v85 = v68;
LABEL_35:
      v42(v85, v145);
      goto LABEL_36;
    }

    v148 = sub_264785724();
    v149 = v80;
    sub_264785C84();
    if (!v45[2] || (v81 = sub_26465492C(v150), (v82 & 1) == 0))
    {
      result = sub_264655FE8(v150);
      *v44 = 0;
      return result;
    }

    sub_264655DB8(v45[7] + 32 * v81, v151);
    sub_264655FE8(v150);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_41;
    }

    v83 = v148;
    if (v148 <= 1)
    {
      v84 = v139;
      if (v148)
      {
        if (v148 == 1)
        {
          v86 = v137;
          sub_264783DF4();

          v87 = sub_264783E14();
          v88 = sub_2647859F4();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v150[0] = v90;
            *v89 = 136315394;
            v151[0] = v4;

            v91 = sub_264785764();
            v93 = sub_2646DF234(v91, v92, v150);

            *(v89 + 4) = v93;
            *(v89 + 12) = 2080;
            *(v89 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
            _os_log_impl(&dword_264605000, v87, v88, "%s, %s: Details view payload type", v89, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v90, -1, -1);
            MEMORY[0x266740650](v89, -1, -1);
          }

          result = v42(v86, v145);
          goto LABEL_24;
        }

LABEL_44:
        sub_264783DF4();

        v106 = sub_264783E14();
        v107 = sub_2647859D4();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v135 = v9;
          v110 = v109;
          v150[0] = v109;
          *v108 = 136315650;
          v151[0] = v4;

          v111 = sub_264785764();
          v113 = sub_2646DF234(v111, v112, v150);

          *(v108 + 4) = v113;
          *(v108 + 12) = 2080;
          *(v108 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
          *(v108 + 22) = 2048;
          *(v108 + 24) = v83;
          _os_log_impl(&dword_264605000, v106, v107, "%s, %s: - unknown SMDeepLinkURLPayloadType: %ld", v108, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v110, -1, -1);
          MEMORY[0x266740650](v108, -1, -1);

          v114 = v139;
        }

        else
        {

          v114 = v84;
        }

        result = v42(v114, v145);
        *v44 = 0;
        return result;
      }

LABEL_41:
      *v44 = 0;
      return result;
    }

    v84 = v139;
    if ((v148 - 2) >= 2)
    {
      if (v148 == 4)
      {
        v118 = v134;
        sub_264783DF4();
        swift_retain_n();
        v119 = sub_264783E14();
        v120 = sub_2647859F4();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v135 = v9;
          v123 = v122;
          v151[0] = v122;
          *v121 = 136315906;
          v150[0] = v4;

          v124 = sub_264785764();
          v126 = sub_2646DF234(v124, v125, v151);
          v143 = v42;
          v127 = v44;
          v128 = v4;
          v129 = v126;

          *(v121 + 4) = v129;
          v130 = v128;
          v44 = v127;
          *(v121 + 12) = 2080;
          *(v121 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v151);
          *(v121 + 22) = 2048;
          *(v121 + 24) = 4;
          *(v121 + 32) = 2048;
          v131 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
          swift_beginAccess();
          v132 = *&v130[v131];

          *(v121 + 34) = v132;

          _os_log_impl(&dword_264605000, v119, v120, "%s, %s: AppIntent payload type, session entry type %ld, %lu", v121, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266740650](v123, -1, -1);
          MEMORY[0x266740650](v121, -1, -1);

          v143(v118, v145);
          goto LABEL_36;
        }

        v85 = v118;
        goto LABEL_35;
      }

      if (v148 != 5)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v94 = v138;
    sub_264783DF4();

    v95 = sub_264783E14();
    v96 = sub_2647859F4();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v135 = v9;
      v99 = v98;
      v150[0] = v98;
      *v97 = 136315650;
      v151[0] = v4;

      v100 = sub_264785764();
      v102 = sub_2646DF234(v100, v101, v150);
      v143 = v42;
      v103 = v44;
      v104 = v4;
      v105 = v102;

      *(v97 + 4) = v105;
      v4 = v104;
      v44 = v103;
      *(v97 + 12) = 2080;
      *(v97 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v150);
      *(v97 + 22) = 2048;
      *(v97 + 24) = v83;
      _os_log_impl(&dword_264605000, v95, v96, "%s, %s: Suggestions payload type, %ld", v97, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v99, -1, -1);
      MEMORY[0x266740650](v97, -1, -1);

      v143(v94, v145);
    }

    else
    {

      v42(v94, v145);
    }

    SessionViewModel.clearSuggestedSessionConfiguration()();
    v115 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
    swift_beginAccess();
    *&v4[v115] = 0;

    sub_26461D7C8();
    sub_26464E07C(rawValue);
    v116 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    if (v83 == 2)
    {
      v117 = 2;
    }

    else
    {
      v117 = 8;
    }

    swift_beginAccess();
    *&v4[v116] = v117;
    sub_264614A6C();
    result = [objc_opt_self() hasUserCompletedOnboarding];
    if (result)
    {
LABEL_51:
      *v44 = 1;
      return result;
    }

    *v44 = 3;
  }

  return result;
}

uint64_t sub_26464E07C(uint64_t a1)
{
  v2 = v1;
  v45 = sub_264783E24();
  v4 = *(v45 - 8);
  v5 = MEMORY[0x28223BE20](v45);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  sub_264783DF4();

  v10 = sub_264783E14();
  v11 = sub_2647859F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v44 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v48[0] = v14;
    *v13 = 136315650;
    v49[0] = v2;

    v15 = sub_264785764();
    v43 = v7;
    v17 = sub_2646DF234(v15, v16, v48);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794280, v48);
    *(v13 + 22) = 2080;
    v18 = sub_264785624();
    v20 = sub_2646DF234(v18, v19, v48);

    *(v13 + 24) = v20;
    v7 = v43;
    _os_log_impl(&dword_264605000, v10, v11, "%s, %s: payload, %s", v13, 0x20u);
    v21 = v45;
    swift_arrayDestroy();
    MEMORY[0x266740650](v14, -1, -1);
    v22 = v13;
    v23 = v44;
    MEMORY[0x266740650](v22, -1, -1);

    v24 = *(v23 + 8);
    v24(v9, v21);
  }

  else
  {

    v24 = *(v4 + 8);
    v24(v9, v45);
  }

  if (qword_27FF74FD0 != -1)
  {
    swift_once();
  }

  v46 = qword_27FF76480;
  v47 = *algn_27FF76488;

  sub_264785C84();
  if (*(a1 + 16) && (v25 = sub_26465492C(v48), (v26 & 1) != 0))
  {
    sub_264655DB8(*(a1 + 56) + 32 * v25, v49);
    sub_264655FE8(v48);
    if (swift_dynamicCast())
    {
      v27 = sub_2647839F4();
      v29 = v28;

      if (v29 >> 60 != 15)
      {
        sub_264659B70(0, &qword_27FF75EB0, 0x277CCAAC8);
        sub_264659B70(0, &qword_27FF75EB8, 0x277D4AB78);
        v30 = sub_264785A04();
        if (v30)
        {
          v41 = v30;
          SessionViewModel.setSuggestedSessionConfiguration(_:)(v30);

          return sub_264655900(v27, v29);
        }

        sub_264655900(v27, v29);
      }
    }
  }

  else
  {
    sub_264655FE8(v48);
  }

  sub_264783DF4();

  v31 = sub_264783E14();
  v32 = sub_2647859F4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48[0] = v34;
    *v33 = 136315394;
    v49[0] = v2;

    v35 = sub_264785764();
    v37 = v7;
    v38 = sub_2646DF234(v35, v36, v48);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794280, v48);
    _os_log_impl(&dword_264605000, v31, v32, "%s, %s: unable to decode payload data", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v34, -1, -1);
    MEMORY[0x266740650](v33, -1, -1);

    v39 = v37;
  }

  else
  {

    v39 = v7;
  }

  return (v24)(v39, v45);
}

void sub_26464E628(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v45);

  v7 = v45[0];
  if (v45[0])
  {
    v8 = [v45[0] isActiveState];

    if (v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v45);

      v9 = v45[0];
      if (v45[0])
      {
        v10 = [v45[0] configuration];

        if (v10)
        {
          v11 = [v10 conversation];

          if (v11)
          {
            v12 = [v11 receiverHandles];
            sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
            v13 = sub_2647857F4();

            if (v13 >> 62)
            {
              v14 = sub_264785C14();
              if (v14)
              {
                goto LABEL_8;
              }
            }

            else
            {
              v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v14)
              {
LABEL_8:
                v41[1] = v2;
                v42 = v11;
                v45[0] = MEMORY[0x277D84F90];
                sub_2646F2074(0, v14 & ~(v14 >> 63), 0);
                if (v14 < 0)
                {
                  __break(1u);
                  return;
                }

                v15 = 0;
                v16 = v45[0];
                v17 = v13;
                v18 = v13 & 0xC000000000000001;
                v19 = v13;
                v20 = v14;
                do
                {
                  if (v18)
                  {
                    v21 = MEMORY[0x26673FA30](v15, v17);
                  }

                  else
                  {
                    v21 = *(v17 + 8 * v15 + 32);
                  }

                  v22 = v21;
                  v23 = [v21 primaryHandle];
                  v24 = sub_264785724();
                  v26 = v25;

                  v45[0] = v16;
                  v28 = v16[2];
                  v27 = v16[3];
                  if (v28 >= v27 >> 1)
                  {
                    sub_2646F2074((v27 > 1), v28 + 1, 1);
                    v16 = v45[0];
                  }

                  ++v15;
                  v16[2] = v28 + 1;
                  v29 = &v16[2 * v28];
                  v29[4] = v24;
                  v29[5] = v26;
                  v17 = v19;
                }

                while (v20 != v15);

                v11 = v42;
                goto LABEL_28;
              }
            }

            v16 = MEMORY[0x277D84F90];
LABEL_28:
            swift_getKeyPath();
            swift_getKeyPath();
            v45[0] = v16;

            sub_264783EE4();
            sub_264620548();
            v36 = [v11 identifier];
            if (v36)
            {
              v37 = v36;
              v38 = sub_264785724();
              v40 = v39;
            }

            else
            {
              v38 = 0;
              v40 = 0;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v45[0] = v38;
            v45[1] = v40;

            sub_264783EE4();
            sub_264621058();

            return;
          }
        }
      }
    }
  }

  if ([objc_opt_self() zelkovaWorkoutEnabled])
  {
    v43 = 0xD000000000000013;
    v44 = 0x80000002647941E0;
    sub_264785C84();
    if (*(a1 + 16) && (v30 = sub_26465492C(v45), (v31 & 1) != 0))
    {
      sub_264655DB8(*(a1 + 56) + 32 * v30, v46);
      sub_264655FE8(v45);
      if (swift_dynamicCast())
      {
        v32 = v43;
        v33 = sub_264783B64();
        (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
        v34 = _s15SafetyMonitorUI24UserSessionConfigurationC07workoutE2ID0G12ActivityType0geJ0AC10Foundation4UUIDVSg_So09HKWorkoutiJ0VSo0meJ0VtcfC_0(v6, v32, 0);
        v35 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
        swift_beginAccess();
        *(v2 + v35) = v34;

        sub_26461D7C8();
      }
    }

    else
    {
      sub_264655FE8(v45);
    }
  }

  if (!SessionViewModel.isStartingAndSending.getter())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v46[0] = 0;

    sub_264783EE4();
    sub_264620548();
    swift_getKeyPath();
    swift_getKeyPath();
    v46[0] = 0;
    v46[1] = 0;

    sub_264783EE4();
    sub_264621058();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v46[0]) = 0;

    sub_264783EE4();
    sub_2646240F4();
    sub_26464EC40();
  }
}

uint64_t sub_26464EC40()
{
  v1 = v0;
  v23 = sub_264785594();
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2647855C4();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = sub_2647858E4();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v13[5] = v10;

  v14 = v10;
  sub_264635430(0, 0, v9, &unk_264789828, v13);

  dispatch_group_enter(v14);
  v12(v9, 1, 1, v11);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;
  v15[5] = v14;

  v16 = v14;
  sub_264635430(0, 0, v9, &unk_264789838, v15);

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v17 = sub_264785A44();
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264658A74;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_413;
  v19 = _Block_copy(aBlock);

  sub_2647855B4();
  v27 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v20 = v23;
  sub_264785BD4();
  sub_264785A14();
  _Block_release(v19);

  (*(v26 + 8))(v3, v20);
  (*(v24 + 8))(v6, v25);
}

uint64_t sub_26464F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_264785594();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_2647855C4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26464F21C, 0, 0);
}

uint64_t sub_26464F21C()
{
  v1 = v0[20];
  v2 = v0[12];
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) = 1;
  v3 = [objc_opt_self() now];
  sub_264783AC4();

  v4 = sub_264783AF4();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_264659660(v1, v2 + v5, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_26464F37C;

  return sub_26464F704();
}

uint64_t sub_26464F37C(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_26464F47C, 0, 0);
}

uint64_t sub_26464F47C()
{
  v1 = v0[22];
  v2 = v0[19];
  v16 = v0[17];
  v3 = v0[16];
  v14 = v0[15];
  v15 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v13 = sub_264785A44();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v5;
  v0[6] = sub_264658D9C;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264659F60;
  v0[5] = &block_descriptor_433;
  v8 = _Block_copy(v0 + 2);
  v12 = v1;

  v9 = v5;
  sub_2647855B4();
  v0[11] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v2, v3, v8);
  _Block_release(v8);

  (*(v14 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26464F704()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_264783E24();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26464F7EC, 0, 0);
}

uint64_t sub_26464F7EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4AB18]) initWithRequireEligibility:1 requireContact:1 requireNonBlockedContact:1 requireOnlyFavoritedHandles:1 requireOnlyPastSessionRecipients:1 firstResultOnly:1];
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_26464F8B8;

  return sub_264650F74(v1);
}

uint64_t sub_26464F8B8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_26464F9B8, 0, 0);
}

uint64_t sub_26464F9B8(uint64_t a1)
{
  v27 = v1;
  v2 = v1;
  sub_264783DF4();

  v3 = sub_264783E14();
  v4 = sub_2647859C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[10];
    v6 = v1[6];
    v24 = v1[5];
    v25 = v1[7];
    v7 = v1[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315650;
    v1[2] = v7;

    v10 = sub_264785764();
    v12 = sub_2646DF234(v10, v11, &v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264794260, &v26);
    *(v8 + 22) = 2080;
    v13 = sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
    v14 = MEMORY[0x26673F530](v5, v13);
    v16 = sub_2646DF234(v14, v15, &v26);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: fetched handles: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v6 + 8))(v25, v24);
  }

  else
  {
    v17 = v1[6];
    v18 = v1[7];
    v19 = v2[5];

    (*(v17 + 8))(v18, v19);
  }

  v20 = v2[10];
  if (v20 >> 62)
  {
    result = sub_264785C14();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_11:

    v22 = 0;
    goto LABEL_12;
  }

  result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26673FA30](0, v2[10]);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v2[10] + 32);
  }

LABEL_12:

  v23 = v2[1];

  return v23(v22);
}

void sub_26464FCAC(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  if (a1)
  {
    v16 = [a1 primaryHandle];
    v17 = sub_264785724();
    v29 = a3;
    v18 = v17;
    v20 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78060, &qword_264789860);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2647889E0;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v21;

    sub_264783EE4();
    sub_264620548();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v30);

    v22 = v30;

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v22;
    v31 = xmmword_2647889F0;

    a3 = v29;
    sub_264783EE4();
    sub_264621B20();
    *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) = 2;
  }

  v23 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_26460CCE8(a2 + v23, v8, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26460CD50(v8, &qword_27FF756B8, &qword_26478AC90);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v24 = [objc_opt_self() now];
    sub_264783AC4();

    sub_264783A44();
    v26 = v25;
    v27 = *(v10 + 8);
    v27(v13, v9);
    v27(v15, v9);
    v28 = a2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency;
    *v28 = v26;
    *(v28 + 8) = 0;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_264650074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_264785594();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_2647855C4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646501C8, 0, 0);
}

uint64_t sub_2646501C8()
{
  v1 = v0[20];
  v2 = v0[12];
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) = 1;
  v3 = [objc_opt_self() now];
  sub_264783AC4();

  v4 = sub_264783AF4();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_264659660(v1, v2 + v5, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v6 = [objc_allocWithZone(MEMORY[0x277D4AB18]) initWithRequireEligibility:1 requireContact:1 requireNonBlockedContact:1 requireOnlyFavoritedHandles:1 requireOnlyPastSessionRecipients:0];
  v0[21] = v6;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_264650360;

  return sub_264650F74(v6);
}

uint64_t sub_264650360(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_264650460, 0, 0);
}

uint64_t sub_264650460()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[16];
  v15 = v0[17];
  v4 = v0[14];
  v13 = v0[15];
  v14 = v0[18];
  v6 = v0[12];
  v5 = v0[13];

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v12 = sub_264785A44();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v5;
  v0[6] = sub_264658AEC;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264659F60;
  v0[5] = &block_descriptor_419;
  v8 = _Block_copy(v0 + 2);

  v9 = v5;
  sub_2647855B4();
  v0[11] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v2, v3, v8);
  _Block_release(v8);

  (*(v13 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v10 = v0[1];

  return v10();
}

void sub_2646506DC(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v48 - v13;
  v14 = sub_264783E24();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v16 = sub_264785C14();
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v56 = v10;
  v57 = v9;
  v55 = v8;
  if (v16)
  {
    v59[0] = MEMORY[0x277D84F90];
    sub_2646F2074(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return;
    }

    v48 = a1;
    v49 = a3;
    v18 = 0;
    v17 = v59[0];
    v19 = v16;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26673FA30](v18, a2);
      }

      else
      {
        v20 = *(a2 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 primaryHandle];
      v23 = sub_264785724();
      v25 = v24;

      v59[0] = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2646F2074((v26 > 1), v27 + 1, 1);
        v17 = v59[0];
      }

      ++v18;
      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v19 != v18);
    v16 = v19;
    a1 = v48;
    a3 = v49;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v59[0] = v17;

  sub_264783EE4();
  sub_2646265F0();
  v29 = v52;
  sub_264783DF4();

  v30 = sub_264783E14();
  v31 = sub_2647859F4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58 = a1;
    v59[0] = v33;
    *v32 = 136315394;
    type metadata accessor for SessionViewModel(0);

    v34 = sub_264785764();
    v36 = sub_2646DF234(v34, v35, v59);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264794200, v59);
    _os_log_impl(&dword_264605000, v30, v31, "%s, %s: got likely recipients", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v33, -1, -1);
    MEMORY[0x266740650](v32, -1, -1);
  }

  (*(v53 + 8))(v29, v54);
  v38 = v56;
  v37 = v57;
  v39 = v55;
  if (v16 >= 1)
  {
    *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) = 2;
  }

  v40 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_26460CCE8(a1 + v40, v39, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    sub_26460CD50(v39, &qword_27FF756B8, &qword_26478AC90);
  }

  else
  {
    v41 = v50;
    (*(v38 + 32))(v50, v39, v37);
    v42 = [objc_opt_self() now];
    v43 = v51;
    sub_264783AC4();

    sub_264783A44();
    v45 = v44;
    v46 = *(v38 + 8);
    v46(v43, v37);
    v46(v41, v37);
    v47 = a1 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency;
    *v47 = v45;
    *(v47 + 8) = 0;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_264650C90(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v17);

    if (v17)
    {
      v7 = v17;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = *(v7 + 16);

    if (!v8)
    {
      sub_264783DF4();

      v9 = sub_264783E14();
      v10 = sub_2647859F4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16[1] = v6;
        v17 = v12;
        *v11 = 136315394;
        type metadata accessor for SessionViewModel(0);

        v13 = sub_264785764();
        v15 = sub_2646DF234(v13, v14, &v17);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264794200, &v17);
        _os_log_impl(&dword_264605000, v9, v10, "%s, %s: no prestaged handle, got likely recipients, showing contact picker", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v12, -1, -1);
        MEMORY[0x266740650](v11, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v17) = 1;

      sub_264783EE4();
      sub_2646240F4();
    }
  }

  return result;
}

uint64_t sub_264650F74(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = sub_264783AF4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_264783E24();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646510B8, 0, 0);
}

uint64_t sub_2646510B8(uint64_t a1)
{
  v24 = v1;
  sub_264783DF4();

  v2 = sub_264783E14();
  v3 = sub_2647859F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[5].i64[1];
    v21 = v1[6].i64[0];
    v5 = v1[5].i64[0];
    v6 = v1[2].i64[1];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315394;
    v1[1].i64[1] = v6;

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264794220, &v23);
    _os_log_impl(&dword_264605000, v2, v3, "%s, %s: fetchMostLikelyReceiverHandles, called from UI", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    (*(v4 + 8))(v21, v5);
  }

  else
  {
    v13 = v1[5].i64[1];
    v12 = v1[6].i64[0];
    v14 = v1[5].i64[0];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v1[4].i64[1];
  v22 = v1[2];
  v16 = [objc_opt_self() now];
  sub_264783AC4();

  v17 = swift_task_alloc();
  v1[6].i64[1] = v17;
  v17[1] = vextq_s8(v22, v22, 8uLL);
  v17[2].i64[0] = v15;
  v18 = swift_task_alloc();
  v1[7].i64[0] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA0, &qword_264789848);
  *v18 = v1;
  v18[1] = sub_2646513A8;

  return MEMORY[0x2822007B8](&v1[1], 0, 0, 0xD00000000000001CLL, 0x8000000264794220, sub_264658AF8, v17, v19);
}

uint64_t sub_2646513A8()
{

  return MEMORY[0x2822009F8](sub_2646514C0, 0, 0);
}

uint64_t sub_2646514C0()
{
  v1 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2(v1);
}

void sub_264651558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v30 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_264783E24();
  v29 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v27 = a2;
    v31 = *(a2 + 16);
    (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v9);
    (*(v6 + 16))(v8, v32, v5);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v27;
    (*(v10 + 32))(v17 + v15, v12, v9);
    (*(v6 + 32))(v17 + v16, v8, v5);
    aBlock[4] = sub_264658C60;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264651D70;
    aBlock[3] = &block_descriptor_427;
    v18 = _Block_copy(aBlock);

    [v31 fetchMostLikelyReceiverHandlesWithOptions:v30 handler:v18];
    _Block_release(v18);
  }

  else
  {
    sub_264783DF4();

    v19 = sub_264783E14();
    v20 = sub_2647859F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315394;
      aBlock[6] = a2;
      type metadata accessor for SessionViewModel(0);

      v23 = sub_264785764();
      v25 = sub_2646DF234(v23, v24, aBlock);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264794220, aBlock);
      _os_log_impl(&dword_264605000, v19, v20, "%s, %s: contacts access not authorized", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v22, -1, -1);
      MEMORY[0x266740650](v21, -1, -1);
    }

    (*(v29 + 8))(v14, v31);
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264785894();
  }
}

uint64_t sub_264651A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v8 = sub_264783AF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_264783E24();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  (*(v9 + 16))(v11, a4, v8);

  v15 = sub_264783E14();
  v16 = sub_2647859F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a5;
    v18 = v17;
    v27[0] = swift_slowAlloc();
    v30 = a3;
    v31 = v27[0];
    *v18 = 136315650;
    type metadata accessor for SessionViewModel(0);

    v19 = sub_264785764();
    v21 = sub_2646DF234(v19, v20, &v31);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264794220, &v31);
    *(v18 + 22) = 2048;
    sub_264783AA4();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    *(v18 + 24) = -v23;
    _os_log_impl(&dword_264605000, v15, v16, "%s, %s: fetchMostLikelyReceiverHandles, UI latency: %f", v18, 0x20u);
    v24 = v27[0];
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 8))(v14, v28);
  v25 = MEMORY[0x277D84F90];
  if (v29)
  {
    v25 = v29;
  }

  v31 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850);
  return sub_264785894();
}

Swift::String_optional __swiftcall SessionViewModel.badgeImageName()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v13);

  v0 = v13;
  if (!v13 || (v1 = [v13 sessionState], v0, v1 != 4))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v13);

    v2 = v13;
    if (!v13 || (v3 = [v13 unsupportedDeviceSeparationState], v2, !v3))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v13);

      v6 = v13;
      if (v13 && (v7 = [v13 separatedLPMConnectivityWarningState], v6, v7) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v13), , , (v8 = v13) != 0) && (v9 = objc_msgSend(v13, sel_userDisabledConnectivity), v8, v9))
      {
        v5 = 0x8000000264793B80;
        v4 = 0xD000000000000033;
        goto LABEL_22;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v13);

      v10 = v13;
      if (!v13)
      {
        v4 = 0;
        v5 = 0;
        goto LABEL_22;
      }

      v11 = [v13 sessionState];

      v4 = 0;
      if (v11 > 0xE)
      {
        v5 = 0;
        goto LABEL_22;
      }

      if (((1 << v11) & 0x4380) != 0)
      {
        v5 = 0xEA00000000006C6CLL;
        v4 = 0x69662E6B636F6C63;
        goto LABEL_22;
      }

      if (((1 << v11) & 0x1004) != 0)
      {
        v5 = 0x8000000264793640;
        v4 = 0xD000000000000015;
        goto LABEL_22;
      }

      v5 = 0;
      if (v11 != 4)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = 0xD00000000000001BLL;
  v5 = 0x8000000264793B60;
LABEL_22:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t SessionViewModel.badgeImageColor()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v9);

  v0 = v9;
  if (v9)
  {
    v1 = [v9 sessionState];

    if (v1 == 4)
    {
      return sub_264785164();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v9);

  v2 = v9;
  if (v9)
  {
    v3 = [v9 unsupportedDeviceSeparationState];

    if (v3)
    {
      return sub_264785164();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v9);

  v4 = v9;
  if (!v9 || (v5 = [v9 userDisabledConnectivity], v4, !v5))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v9);

    v6 = v9;
    if (v9)
    {
      v7 = [v9 sessionState];

      if (v7 != 4)
      {
        if (v7 == 12)
        {
          return sub_264785184();
        }

        goto LABEL_12;
      }

      return sub_264785164();
    }
  }

LABEL_12:
  if (qword_27FF75398 != -1)
  {
    swift_once();
  }
}

uint64_t _s15SafetyMonitorUI8UserTypeO2idSivg_0()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

uint64_t sub_2646522F4(uint64_t a1)
{
  v2 = *v1;
  sub_264785F44();
  MEMORY[0x26673FC80](v2);
  return sub_264785F94();
}

unint64_t sub_264652338@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2646586D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_264652370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_264785594();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2647855C4();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v13 = sub_264785A44();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_2646592EC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_534;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v12, v9, v15);
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

void sub_264652680(void *a1, uint64_t a2, uint64_t *a3)
{
  v64 = *a3;
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v59[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v59[-v14];
  if (a1)
  {
    v16 = a1;
    LODWORD(v63) = [v16 isFirstPartyWorkout];
    v17 = sub_264785864();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v17, 0xD000000000000013, 0x8000000264794600, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v65;
    swift_endAccess();
    sub_264783DF4();

    v19 = sub_264783E14();
    v20 = sub_2647859C4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v62 = v16;
      v22 = v21;
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v22 = 136315650;
      v65 = a3;

      v23 = sub_264785764();
      v25 = sub_2646DF234(v23, v24, v66);
      v60 = v20;
      v26 = v7;
      v27 = v25;

      *(v22 + 4) = v27;
      v7 = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2646DF234(0xD00000000000004FLL, 0x80000002647945B0, v66);
      *(v22 + 22) = 1024;
      *(v22 + 24) = v63;
      _os_log_impl(&dword_264605000, v19, v60, "%s, %s: value of isFirstPartyWorkout, %{BOOL}d", v22, 0x1Cu);
      v28 = v61;
      swift_arrayDestroy();
      MEMORY[0x266740650](v28, -1, -1);
      MEMORY[0x266740650](v22, -1, -1);
    }

    else
    {
    }

    v38 = *(v7 + 8);
    v38(v15, v6);
  }

  else
  {
    sub_264783DF4();

    v29 = sub_264783E14();
    v30 = sub_2647859F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v31 = 136315394;
      v65 = a3;

      v32 = sub_264785764();
      v34 = sub_2646DF234(v32, v33, v66);
      LODWORD(v62) = v30;
      v35 = v7;
      v36 = v34;

      *(v31 + 4) = v36;
      v7 = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2646DF234(0xD00000000000004FLL, 0x80000002647945B0, v66);
      _os_log_impl(&dword_264605000, v29, v62, "%s, %s: workout snapshot is nil", v31, 0x16u);
      v37 = v63;
      swift_arrayDestroy();
      MEMORY[0x266740650](v37, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);
    }

    v38 = *(v7 + 8);
    v38(v13, v6);
  }

  sub_264783DF4();

  v39 = sub_264783E14();
  v40 = sub_2647859F4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v63 = v7;
    v42 = v41;
    v43 = swift_slowAlloc();
    v62 = v10;
    v44 = v43;
    v66[0] = v43;
    *v42 = 136315650;
    v65 = a3;

    v45 = sub_264785764();
    v47 = sub_2646DF234(v45, v46, v66);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD00000000000004FLL, 0x80000002647945B0, v66);
    *(v42 + 22) = 2080;
    swift_beginAccess();
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);

    v48 = sub_264785624();
    v49 = v6;
    v51 = v50;

    v52 = sub_2646DF234(v48, v51, v66);

    *(v42 + 24) = v52;
    _os_log_impl(&dword_264605000, v39, v40, "%s, %s, sending analytics event SessionStartEntryType, %s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v44, -1, -1);
    MEMORY[0x266740650](v42, -1, -1);

    v53 = v62;
    v54 = v49;
  }

  else
  {

    v53 = v10;
    v54 = v6;
  }

  v38(v53, v54);
  v55 = *MEMORY[0x277D4AE38];
  swift_beginAccess();
  v56 = v55;

  sub_264692AAC(v57);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v58 = sub_264785604();

  AnalyticsSendEvent();
}

void sub_264652DD0(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (!a1)
  {
    v6 = sub_264785B54();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v6, 0xD000000000000018, 0x8000000264794550, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v8;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_264652E88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_264652F08(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (!a1)
  {
    v6 = sub_264785B54();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v6, 0xD000000000000018, 0x8000000264794530, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v8;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

uint64_t sub_264652FB8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v24 = a1;
  v10 = sub_264785594();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2647855C4();
  v13 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v16 = sub_264785A44();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v18 = v25;
  v17[4] = v24;
  v17[5] = a4;
  aBlock[4] = v18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = v26;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a4;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v15, v12, v19);
  _Block_release(v19);

  (*(v28 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v27);
}

void sub_2646532C0(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (!a1)
  {
    v6 = sub_264785B54();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v6, 0xD00000000000001BLL, 0x8000000264794510, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v8;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_264653370(uint64_t a1, uint64_t a2)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315650;
    v25 = a1;
    type metadata accessor for SessionViewModel(0);

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD00000000000003ELL, 0x80000002647944D0, v26);
    *(v10 + 22) = 2080;
    swift_beginAccess();
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);

    v15 = sub_264785624();
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, v26);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s, sending analytics event perSessionUserDetails, %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v4 + 8))(v6, v24);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v19 = *MEMORY[0x277D4AE10];
  swift_beginAccess();
  v20 = v19;

  sub_264692AAC(v21);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v22 = sub_264785604();

  AnalyticsSendEvent();
}

void sub_2646536C8(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v76 = a4;
  v10 = sub_264783854();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264783E24();
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v74 - v18;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (sub_264785C14())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_264783DF4();
    (*(v11 + 16))(v13, a6, v10);

    v63 = sub_264783E14();
    v64 = sub_2647859F4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80[0] = v66;
      *v65 = 136315650;
      v79 = a5;
      type metadata accessor for SessionViewModel(0);

      v67 = sub_264785764();
      v69 = sub_2646DF234(v67, v68, v80);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_2646DF234(0xD000000000000037, 0x80000002647942D0, v80);
      *(v65 + 22) = 2080;
      sub_264655E3C(&qword_27FF75EF0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v70 = sub_264785E44();
      v72 = v71;
      (*(v11 + 8))(v13, v10);
      v73 = sub_2646DF234(v70, v72, v80);

      *(v65 + 24) = v73;
      _os_log_impl(&dword_264605000, v63, v64, "%s, %s, no suggestions found in date interval %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v66, -1, -1);
      MEMORY[0x266740650](v65, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v77 + 8))(v17, v78);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26673FA30](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(a1 + 32);
  }

  v21 = v20;
  v22 = sub_264785724();
  v24 = v23;
  v25 = sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);
  v26 = sub_264785AB4();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v26, v22, v24, isUniquelyReferenced_nonNull_native);

  *(a3 + 16) = v79;
  swift_endAccess();
  v28 = sub_264785724();
  v30 = v29;
  v74[1] = v25;
  v31 = sub_264785AB4();
  swift_beginAccess();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v31, v28, v30, v32);

  *(a3 + 16) = v79;
  swift_endAccess();
  v33 = sub_264785724();
  v35 = v34;
  [v21 suggestionTrigger];
  v36 = sub_264785B54();
  swift_beginAccess();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v36, v33, v35, v37);

  *(a3 + 16) = v79;
  swift_endAccess();
  v38 = sub_264785724();
  v40 = v39;
  v75 = v21;
  [v21 suggestionUserType];
  v41 = sub_264785B54();
  swift_beginAccess();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v41, v38, v40, v42);

  *(a3 + 16) = v79;
  swift_endAccess();
  v43 = sub_264785724();
  v45 = v44;
  v46 = sub_264785864();
  swift_beginAccess();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v46, v43, v45, v47);

  *(a3 + 16) = v79;
  swift_endAccess();
  sub_264783DF4();

  v48 = sub_264783E14();
  v49 = sub_2647859F4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v80[0] = v51;
    *v50 = 136315650;
    v79 = a5;
    type metadata accessor for SessionViewModel(0);

    v52 = sub_264785764();
    v54 = sub_2646DF234(v52, v53, v80);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2646DF234(0xD000000000000037, 0x80000002647942D0, v80);
    *(v50 + 22) = 2080;
    swift_beginAccess();

    v55 = sub_264785624();
    v57 = v56;

    v58 = sub_2646DF234(v55, v57, v80);

    *(v50 + 24) = v58;
    _os_log_impl(&dword_264605000, v48, v49, "%s, %s, sending analytics event StagingPerformance, %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v51, -1, -1);
    MEMORY[0x266740650](v50, -1, -1);
  }

  (*(v77 + 8))(v19, v78);
  v59 = *MEMORY[0x277D4AE40];
  swift_beginAccess();
  v60 = v59;

  sub_264692AAC(v61);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v62 = sub_264785604();

  AnalyticsSendEvent();
}

uint64_t sub_264653FCC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_264659B70(0, a4, a5);
    v6 = sub_2647857F4();
  }

  v8 = a3;
  v7(v6, a3);
}

double sub_26465407C@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_2646540F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646541B0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_264654240(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646542C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_264783EE4();
}

uint64_t sub_26465433C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a2);
}

uint64_t sub_2646543B8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_26460CCE8(a1, &v10 - v7, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v8, v6, &qword_27FF75CE8, &unk_264788B70);

  sub_264783EE4();
  return sub_26460CD50(v8, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_264654538@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646545B8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264654654(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646546C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2646547BC;

  return v6(a1);
}

uint64_t sub_2646547BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2646548B4(uint64_t a1, uint64_t a2)
{
  sub_264785F44();
  sub_264785794();
  v4 = sub_264785F94();

  return sub_2646549DC(a1, a2, v4);
}

unint64_t sub_26465492C(uint64_t a1)
{
  v2 = sub_264785C64();

  return sub_264654A94(a1, v2);
}

unint64_t sub_264654970(uint64_t a1)
{
  sub_264785F44();
  MEMORY[0x26673FC80](a1);
  v2 = sub_264785F94();

  return sub_264654B5C(a1, v2);
}

unint64_t sub_2646549DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264785E84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264654A94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264658DA8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26673F9A0](v9, a1);
      sub_264655FE8(v9);
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

unint64_t sub_264654B5C(uint64_t a1, uint64_t a2)
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

void sub_264654BC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_264785C14())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_264785C54();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_264654CC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_264654DBC;

  return v5(v2 + 32);
}

uint64_t sub_264654DBC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264654ED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264654F28()
{
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264654FEC(void *a1, int a2, void *a3)
{
  v7 = *(sub_264783AF4() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_2646191A0(a1, a2, a3, v8, v9);
}

uint64_t sub_264655264(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2646552E4(uint64_t a1)
{
  v37 = a1;
  v38 = sub_264783AF4();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_264783BE4();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647838C4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783BB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F70, &qword_264789908);
  v9 = sub_264783BC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v33 = xmmword_2647889C0;
  *(v13 + 16) = xmmword_2647889C0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CC9980], v9);
  v15(v14 + v11, *MEMORY[0x277CC99A0], v9);
  v15(v14 + 2 * v11, *MEMORY[0x277CC99A8], v9);
  sub_26476DDF8(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_264783AD4();
  sub_264783BA4();

  (*(v36 + 8))(v2, v38);
  (*(v34 + 8))(v5, v35);
  v16 = sub_264783894();
  v18 = v17;
  v19 = sub_2647838A4();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19 & ~(v19 >> 63);
  }

  v22 = sub_2647838B4();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22 & ~(v22 >> 63);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F78, &unk_264789910);
  if ((v18 & 1) != 0 || v16 <= 0)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2647889B0;
    v29 = MEMORY[0x277D83B88];
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v30;
    *(v28 + 32) = v21;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v24;
  }

  else
  {
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D83B88];
    *(v25 + 16) = v33;
    v27 = MEMORY[0x277D83C10];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v16;
    *(v25 + 96) = v26;
    *(v25 + 104) = v27;
    *(v25 + 72) = v21;
    *(v25 + 136) = v26;
    *(v25 + 144) = v27;
    *(v25 + 112) = v24;
  }

  v31 = sub_264785734();
  (*(v39 + 8))(v8, v40);
  return v31;
}

uint64_t sub_264655868(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26673F6A0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2646D8B30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_264655900(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264655264(result, a2);
  }

  return result;
}

unint64_t sub_264655958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E68, &qword_2647897F8);
    v3 = sub_264785DE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26460CCE8(v4, &v13, &qword_27FF75E70, &qword_264789800);
      v5 = v13;
      v6 = v14;
      result = sub_2646548B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26465735C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_264655A9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_264785DE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2646548B4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

void *sub_264655B98(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E78, &qword_264789808);
  v3 = sub_264785DE4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_264654970(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_264654970(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264655CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_26463396C(a1, v4, v5, v6, v7);
}

uint64_t sub_264655DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264655E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264655E98()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264655F4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264655FA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_264656040()
{
  result = qword_27FF75DA0;
  if (!qword_27FF75DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DA0);
  }

  return result;
}

unint64_t sub_264656098()
{
  result = qword_27FF75DA8;
  if (!qword_27FF75DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DA8);
  }

  return result;
}

unint64_t sub_2646560F0()
{
  result = qword_27FF75DB0;
  if (!qword_27FF75DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DB0);
  }

  return result;
}

unint64_t sub_264656148()
{
  result = qword_27FF75DB8;
  if (!qword_27FF75DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DB8);
  }

  return result;
}

uint64_t sub_26465619C(uint64_t a1)
{
  result = sub_264655E3C(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264656214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_264656250()
{
  result = qword_27FF75DC8;
  if (!qword_27FF75DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DC8);
  }

  return result;
}

void sub_2646562A4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2646562FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_264614A6C();
}

id sub_264656354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2646563C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_264656630(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_264656688(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_2646249AC();
}

uint64_t getEnumTagSinglePayload for StagedMessageWarnings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StagedMessageWarnings(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_264656920(uint64_t a1)
{
  sub_264656FAC(319, &qword_27FF75DE0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_264656FAC(319, &qword_27FF75DE8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_264656F0C(319, &qword_27FF75DF0, &qword_27FF75C10, &qword_264788A58);
      if (v3 <= 0x3F)
      {
        sub_264656F0C(319, &qword_27FF75DF8, &qword_27FF75C20, &qword_264788A60);
        if (v4 <= 0x3F)
        {
          sub_264656F0C(319, &qword_27FF75E00, &qword_27FF75C30, &qword_264788A68);
          if (v5 <= 0x3F)
          {
            sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
            if (v6 <= 0x3F)
            {
              sub_264656F60(319, &qword_27FF75E10, &type metadata for SessionInitializationInfo);
              if (v7 <= 0x3F)
              {
                sub_264656F60(319, &qword_27FF75E18, MEMORY[0x277D839B0]);
                if (v8 <= 0x3F)
                {
                  sub_264656F0C(319, &qword_27FF75E20, &qword_27FF75C80, &qword_264788A78);
                  if (v9 <= 0x3F)
                  {
                    sub_264656F0C(319, &qword_27FF75E28, &qword_27FF75C90, &qword_264788A80);
                    if (v10 <= 0x3F)
                    {
                      sub_264656F0C(319, &qword_27FF75E30, &qword_27FF75CA0, &qword_264788A88);
                      if (v11 <= 0x3F)
                      {
                        sub_264656F60(319, &qword_27FF75E38, MEMORY[0x277D839F8]);
                        if (v12 <= 0x3F)
                        {
                          sub_264656FAC(319, &qword_27FF75E40, type metadata accessor for UIUserInterfaceIdiom, MEMORY[0x277CBCED0]);
                          if (v13 <= 0x3F)
                          {
                            sub_264656FAC(319, &qword_27FF75E48, type metadata accessor for UserSessionConfiguration, MEMORY[0x277CBCED0]);
                            if (v14 <= 0x3F)
                            {
                              swift_updateClassMetadata2();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_264656F0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264783EF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_264656F60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264783EF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_264656FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_264657024(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783C74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2646570A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783C74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264657114(uint64_t a1)
{
  result = sub_264783C74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ETAType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ETAType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264657308()
{
  result = qword_27FF75E60;
  if (!qword_27FF75E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75E60);
  }

  return result;
}

_OWORD *sub_26465735C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_26465736C(uint64_t a1, void *a2)
{
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = v7;
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v77 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v65 - v12;
  v14 = sub_264783E24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v74 = a2;
  sub_264783DF4();

  v21 = sub_264783E14();
  v22 = sub_2647859F4();

  v23 = os_log_type_enabled(v21, v22);
  v78 = v5;
  if (v23)
  {
    v67 = v22;
    v68 = v21;
    v66 = v14;
    v71 = v20;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315650;
    v80 = a1;
    type metadata accessor for SessionViewModel(0);

    v26 = sub_264785764();
    v28 = v4;
    v29 = sub_2646DF234(v26, v27, aBlock);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v24 + 22) = 2080;
    v69 = a1;
    SessionViewModel.currentSessionID.getter(v13);
    v30 = (*(v5 + 48))(v13, 1, v28);
    v70 = v28;
    if (v30 == 1)
    {
      sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
      v31 = 0xED00004449206E6FLL;
      v32 = 0x6973736553206F4ELL;
    }

    else
    {
      v32 = sub_264783B04();
      v31 = v34;
      (*(v5 + 8))(v13, v28);
    }

    v35 = sub_2646DF234(v32, v31, aBlock);

    *(v24 + 24) = v35;
    v36 = v68;
    _os_log_impl(&dword_264605000, v68, v67, "%s, %s: Attempting to end session for sessionID, %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v25, -1, -1);
    MEMORY[0x266740650](v24, -1, -1);

    v33 = *(v15 + 8);
    v14 = v66;
    v33(v19, v66);
    v4 = v70;
    v20 = v71;
    a1 = v69;
  }

  else
  {

    v33 = *(v15 + 8);
    v33(v19, v14);
  }

  v37 = v77;
  SessionViewModel.currentSessionID.getter(v77);
  v38 = v78;
  if ((*(v78 + 48))(v37, 1, v4) == 1)
  {
    sub_26460CD50(v37, &qword_27FF75CE8, &unk_264788B70);
    v39 = v76;
    sub_264783DF4();

    v40 = sub_264783E14();
    v41 = sub_2647859D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136315394;
      v80 = a1;
      type metadata accessor for SessionViewModel(0);

      v44 = sub_264785764();
      v46 = sub_2646DF234(v44, v45, aBlock);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
      _os_log_impl(&dword_264605000, v40, v41, "%s, %s: Error cannot end session without sessionID)", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v43, -1, -1);
      MEMORY[0x266740650](v42, -1, -1);

      v47 = v76;
    }

    else
    {

      v47 = v39;
    }

    v33(v47, v14);
    v64 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
    sub_264682C78(v64, v74);
  }

  else
  {
    v48 = *(v38 + 32);
    v49 = v37;
    v50 = v75;
    v48(v75, v49, v4);
    v77 = *(a1 + 16);
    v76 = sub_264783B14();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v20;
    v53 = v73;
    (*(v38 + 16))(v73, v50, v4);
    v54 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v55 = (v72 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v4;
    v58 = v56;
    *(v56 + 16) = v51;
    v59 = v56 + v54;
    v60 = v57;
    (v48)(v59, v53);
    v61 = (v58 + v55);
    *v61 = sub_264658720;
    v61[1] = v52;
    aBlock[4] = sub_26465A0B8;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0B4;
    aBlock[3] = &block_descriptor_385;
    v62 = _Block_copy(aBlock);

    v63 = v76;
    [v77 endSessionForSessionID:v76 reason:2 completion:v62];
    _Block_release(v62);

    (*(v38 + 8))(v50, v60);
  }
}

void sub_264657BA8(void *a1, void *a2)
{
  v4 = sub_264783B64();
  v78 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - v9;
  v11 = sub_264783E24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v70 = a2;
  sub_264783DF4();

  v20 = sub_264783E14();
  v21 = sub_2647859F4();

  if (os_log_type_enabled(v20, v21))
  {
    v72 = v12;
    v75 = v11;
    v76 = v19;
    v22 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock = v69;
    *v22 = 136315650;
    v85 = a1;
    type metadata accessor for SessionViewModel(0);

    v23 = sub_264785764();
    v25 = sub_2646DF234(v23, v24, &aBlock);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
    *(v22 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v10);
    v26 = v78;
    if ((*(v78 + 48))(v10, 1, v4) == 1)
    {
      sub_26460CD50(v10, &qword_27FF75CE8, &unk_264788B70);
      v27 = 0xED00004449206E6FLL;
      v28 = 0x6973736553206F4ELL;
    }

    else
    {
      v28 = sub_264783B04();
      v27 = v31;
      (*(v26 + 8))(v10, v4);
    }

    v30 = v4;
    v32 = sub_2646DF234(v28, v27, &aBlock);

    *(v22 + 24) = v32;
    _os_log_impl(&dword_264605000, v20, v21, "%s, %s:Attempting to respond to trigger prompt for sessionID, %s", v22, 0x20u);
    v33 = v69;
    swift_arrayDestroy();
    MEMORY[0x266740650](v33, -1, -1);
    MEMORY[0x266740650](v22, -1, -1);

    v12 = v72;
    v29 = *(v72 + 8);
    v11 = v75;
    v29(v18, v75);
    v19 = v76;
  }

  else
  {

    v29 = *(v12 + 8);
    v29(v18, v11);
    v30 = v4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&aBlock);

  v34 = aBlock;
  if (!aBlock || (v35 = [aBlock sessionState], v34, v35 > 0xE) || ((1 << v35) & 0x4280) == 0)
  {
    v48 = v77;
    sub_264783DF4();

    v49 = sub_264783E14();
    v50 = sub_2647859D4();

    if (os_log_type_enabled(v49, v50))
    {
      v75 = v11;
      v76 = v19;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85 = v52;
      *v51 = 136315650;
      aBlock = a1;
      type metadata accessor for SessionViewModel(0);

      v53 = sub_264785764();
      v55 = sub_2646DF234(v53, v54, &v85);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &v85);
      *(v51 + 22) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&aBlock);

      v56 = aBlock;
      if (aBlock)
      {
        v57 = [aBlock sessionState];
      }

      else
      {
        v57 = 0;
      }

      aBlock = v57;
      LOBYTE(v80) = v56 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D90, &qword_264789368);
      v65 = sub_264785764();
      v67 = sub_2646DF234(v65, v66, &v85);

      *(v51 + 24) = v67;
      _os_log_impl(&dword_264605000, v49, v50, "%s, %s: Unable extend session from state: %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v52, -1, -1);
      MEMORY[0x266740650](v51, -1, -1);

      v29(v77, v75);
    }

    else
    {

      v29(v48, v11);
    }

LABEL_24:

    return;
  }

  v36 = v74;
  SessionViewModel.currentSessionID.getter(v74);
  v37 = v78;
  if ((*(v78 + 48))(v36, 1, v30) != 1)
  {
    v58 = v71;
    (*(v37 + 32))(v71, v36, v30);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&aBlock);

    if ((aBlock & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;

      sub_264783EE4();
      sub_264628950();
    }

    v59 = a1[2];
    v60 = sub_264783B14();
    v61 = swift_allocObject();
    swift_weakInit();
    v62 = swift_allocObject();
    v62[2] = v61;
    v62[3] = sub_264658718;
    v62[4] = v19;
    v83 = sub_264659FC4;
    v84 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_26465A0B4;
    v82 = &block_descriptor_374;
    v63 = _Block_copy(&aBlock);

    [v59 respondToTriggerPromptForSessionID:v60 response:2 handler:v63];
    _Block_release(v63);

    (*(v37 + 8))(v58, v30);
    goto LABEL_24;
  }

  v38 = v11;
  sub_26460CD50(v36, &qword_27FF75CE8, &unk_264788B70);
  v39 = v73;
  sub_264783DF4();

  v40 = sub_264783E14();
  v41 = sub_2647859D4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136315394;
    v85 = a1;
    type metadata accessor for SessionViewModel(0);
    v72 = v12;

    v44 = sub_264785764();
    v46 = sub_2646DF234(v44, v45, &aBlock);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
    _os_log_impl(&dword_264605000, v40, v41, "%s, %s: Error cannot safeResponseToTriggerPrompt without sessionID)", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v43, -1, -1);
    MEMORY[0x266740650](v42, -1, -1);

    v47 = v73;
  }

  else
  {

    v47 = v39;
  }

  v29(v47, v38);
  v64 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
  sub_264683190(v64, v70);
}

unint64_t sub_2646586D0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2646586E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_241Tm()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_264658804(void *a1)
{
  v3 = *(sub_264783B64() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_264640A3C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_2646588AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_26464F0C8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_403Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2646589B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26460F764;

  return sub_264650074(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_271Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_264658B04()
{
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264658C60(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_264783AF4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_264651A18(a1, a2, v9, v2 + v6, v10);
}

uint64_t sub_264658D54()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264658E04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264658E7C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_264658EEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264658F88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264658FC0()
{
  v1 = sub_264783854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26465908C(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_264783854() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_2646536C8(a1, a2, v6, v7, v8, v9);
}

uint64_t objectdestroy_505Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_499Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646592A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_199Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26465934C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264611390;

  return sub_264636AC4(a1);
}

uint64_t sub_264659400()
{
  sub_264655264(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26465944C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2646594E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264611390;

  return sub_264654CC8(a1, v4);
}

uint64_t sub_2646595A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26460F764;

  return sub_264654CC8(a1, v4);
}

uint64_t sub_264659660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2646596D0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264659738()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  sub_264655264(*(v0 + 16), *(v0 + 24));

  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

void sub_26465986C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v6[8];

  sub_2646474FC(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_264659914()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_264655264(*(v0 + v7), *(v0 + v7 + 8));

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

uint64_t sub_264659A4C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = (v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v9 + 8);

  return sub_264647744(a1, a2, v8, v2 + v6, v10, v14, v12, v13);
}

uint64_t sub_264659B20()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264659B70(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_264659BB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264611390;

  return sub_2646546C4(a1, v4);
}

uint64_t sub_264659C70()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_264659D00()
{
  result = qword_27FF75F60;
  if (!qword_27FF75F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75F60);
  }

  return result;
}

uint64_t objectdestroy_481Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26465A0E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26465A13C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_26465A1AC()
{
  result = qword_27FF75F80;
  if (!qword_27FF75F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75F80);
  }

  return result;
}

id sub_26465A200()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F90, &unk_264789A60);
  sub_2647852F4();
  if (v23)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBDBE8]) init];
    v6 = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
    sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
    v7 = sub_2647857E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_264788990;
    *(v8 + 32) = [v5 descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FB0, &unk_26478F3C0);
    v9 = sub_2647857E4();

    v10 = [v6 fetchAdditionalInfoFor:v7 keysToFetch:v9];

    if (!v10)
    {
      v10 = sub_2647857E4();
    }

    [v5 setContacts_];

    v25 = v0[1];
    v26 = *(v0 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FB8, &unk_264789A70);
    sub_2647852F4();
    v11 = v24;
    if (v24)
    {
      v12 = v23;
      v13 = [v5 contacts];
      v14 = sub_2647857F4();

      v15 = sub_26465A804(v14, v12, v11);

      if (v15)
      {
        v16 = [v5 updateViewWithGroupIdentity_];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_264783DE4();
    v17 = sub_264783E14();
    v18 = sub_2647859D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_264605000, v17, v18, "Empty contact passed to AvatarView", v19, 2u);
      MEMORY[0x266740650](v19, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v20 = sub_264785714();
    v21 = [objc_opt_self() systemImageNamed_];

    v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    sub_264659B70(0, &qword_27FF75F98, 0x277D75348);
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v6 = sub_264785AA4();
    [v5 setTintColor_];
  }

  return v5;
}

uint64_t sub_26465A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26465A7B0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26465A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26465A7B0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26465A788(uint64_t a1)
{
  sub_26465A7B0();
  sub_264784834();
  __break(1u);
}

unint64_t sub_26465A7B0()
{
  result = qword_27FF75F88;
  if (!qword_27FF75F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75F88);
  }

  return result;
}

id sub_26465A804(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t (*)(void)))
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SafetyMonitorUIUtilities();
  v9 = static SafetyMonitorUIUtilities.fetchChatGroupPhoto(with:)(a2, a3);
  if (v10 >> 60 == 15)
  {
    sub_264783DF4();

    v11 = sub_264783E14();
    v12 = sub_2647859B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2646DF234(a2, a3, &v23);
      _os_log_impl(&dword_264605000, v11, v12, "No group photo found for groupID %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266740650](v14, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    v16 = v9;
    v17 = v10;
    v18 = objc_allocWithZone(MEMORY[0x277CBDC50]);
    v19 = sub_264783A04();
    sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
    v20 = sub_2647857E4();
    v21 = [v18 initGroupWithName:0 photo:v19 contacts:v20];

    sub_264655900(v16, v17);
    return v21;
  }
}

uint64_t LocationSelectionGroup.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_26465AAA0(v4, a1);
}

uint64_t sub_26465AAA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE0, &unk_264789B48);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = v52 - v6;
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  v10 = MEMORY[0x28223BE20](v9);
  v52[2] = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE8, &qword_264789B58);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v56 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v52 - v15;
  v60 = a1;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v61 = sub_264785754();
  v62 = v19;
  sub_264613FC4();
  v20 = sub_264784E44();
  v22 = v21;
  v61 = v20;
  v62 = v21;
  v24 = v23 & 1;
  v63 = v23 & 1;
  v64 = v25;
  sub_264785034();
  sub_26460ECC4(v20, v22, v24);

  sub_26465B410(&v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FF0, &qword_264789B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FF8, &qword_264789B68);
  sub_26465D02C();
  sub_26465D65C(&qword_27FF76010, &qword_27FF75FF0, &qword_264789B60, sub_26465D0E8);
  sub_26465D1CC();
  v55 = v16;
  sub_264785454();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v61);

  if (v61)
  {

    v52[1] = v52;
    MEMORY[0x28223BE20](v26);
    v52[0] = &v52[-4];
    if (qword_27FF752B8 != -1)
    {
      swift_once();
    }

    v61 = qword_27FF79128;
    v62 = qword_27FF79130;

    v27 = sub_264784E44();
    v29 = v28;
    v61 = v27;
    v62 = v28;
    v31 = v30 & 1;
    v63 = v30 & 1;
    v64 = v32;
    sub_264785034();
    sub_26460ECC4(v27, v29, v31);

    if (qword_27FF752C0 != -1)
    {
      swift_once();
    }

    v61 = qword_27FF79138;
    v62 = qword_27FF79140;

    v33 = sub_264784E44();
    v35 = v34;
    v61 = v33;
    v62 = v34;
    v37 = v36 & 1;
    v63 = v36 & 1;
    v64 = v38;
    sub_264785034();
    sub_26460ECC4(v33, v35, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76070, &qword_264789BE8);
    sub_26460CDF0(&qword_27FF76078, &qword_27FF76070, &qword_264789BE8, MEMORY[0x277CE14C0]);
    v39 = v57;
    sub_264785454();
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v57;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76060, &qword_264789BD8);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  v42 = v53;
  v43 = v54;
  v44 = *(v53 + 16);
  v45 = v55;
  v46 = v56;
  v44(v56, v55, v54);
  v47 = v58;
  sub_26465D2D4(v39, v58);
  v48 = v59;
  v44(v59, v46, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76068, &qword_264789BE0);
  sub_26465D2D4(v47, &v48[*(v49 + 48)]);
  sub_26465D344(v39);
  v50 = *(v42 + 8);
  v50(v45, v43);
  sub_26465D344(v47);
  return (v50)(v46, v43);
}

uint64_t sub_26465B2AC(uint64_t a1)
{
  v10 = *(a1 + 8);
  v13 = *(a1 + 24);
  *&v14 = *(a1 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76188, &qword_264789D48);
  sub_2647853F4();
  sub_26476E118(v2, v4, v5, v11);
  sub_26460CD50(&v10, &qword_27FF76118, &unk_264789CB8);
  v7 = v11[2];
  v8 = v11[3];
  *&v9[0] = v12;
  v3 = v11[0];
  v6 = v11[1];
  memset(v9 + 8, 0, 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76020, &qword_264789B70);
  sub_26465D0E8();
  sub_264785034();
  v17 = v9[0];
  v18[0] = v9[1];
  *(v18 + 9) = *(&v9[1] + 9);
  v13 = v3;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return sub_26460CD50(&v13, &qword_27FF76020, &qword_264789B70);
}

void sub_26465B410(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v7);

  if (*&v7[0])
  {

    v3 = 0uLL;
    v4 = -1;
    v5 = 0uLL;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v7);

    if (*&v7[0] && (v6 = *(*&v7[0] + 16), , v6 >= 2))
    {
      if (qword_27FF751F8 != -1)
      {
        swift_once();
      }

      v7[0] = xmmword_27FF78FA8;
      sub_264613FC4();

      sub_264784E44();
    }

    else
    {
      if (qword_27FF751F0 != -1)
      {
        swift_once();
      }

      v7[0] = xmmword_27FF78F98;
      sub_264613FC4();

      sub_264784E44();
    }

    sub_264784874();
    v5 = v7[1];
    v3 = v7[0];
    v4 = v8;
  }

  *a2 = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
}

uint64_t sub_26465B638@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76080, &qword_264789BF0);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76088, &qword_264789BF8);
  MEMORY[0x28223BE20](v53);
  v52 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76090, &qword_264789C00);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v42 - v8;
  v46 = sub_264784594();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76098, &qword_264789C08);
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760A0, &qword_264789C10);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v42 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760A8, &qword_264789C18);
  v48 = *(v49 - 8);
  v16 = MEMORY[0x28223BE20](v49);
  v47 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v42 - v18;
  if (qword_27FF752B8 != -1)
  {
    swift_once();
  }

  v65 = qword_27FF79128;
  v66 = qword_27FF79130;
  type metadata accessor for UserSessionConfiguration(0);
  sub_26465D3B4(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);

  sub_264784184();
  swift_getKeyPath();
  sub_264784194();

  v63 = v60;
  v64 = v61;
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760B0, &qword_264789C48);
  sub_26465D40C();
  sub_26465D460();
  sub_264613FC4();
  sub_2647853B4();
  sub_264784584();
  v20 = sub_26460CDF0(&qword_27FF760D0, &qword_27FF76098, &qword_264789C08, MEMORY[0x277CDF038]);
  v21 = MEMORY[0x277CDDDA0];
  v22 = v46;
  sub_264784EF4();
  (*(v45 + 8))(v10, v22);
  (*(v42 + 8))(v13, v11);
  *&v60 = v11;
  *(&v60 + 1) = v22;
  *&v61 = v20;
  *(&v61 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v58;
  v24 = v44;
  sub_264784F04();
  (*(v43 + 8))(v15, v24);
  v25 = a1[1];
  v60 = *a1;
  v61 = v25;
  v62 = a1[2];
  v26 = v50;
  sub_26465C008(v50);
  sub_26465D578();
  v27 = v52;
  sub_264785034();
  sub_26460CD50(v26, &qword_27FF76080, &qword_264789BF0);
  sub_264784044();
  sub_26465D65C(&qword_27FF76100, &qword_27FF76088, &qword_264789BF8, sub_26465D578);
  v28 = v59;
  sub_264784F64();
  sub_26460CD50(v27, &qword_27FF76088, &qword_264789BF8);
  v29 = v48;
  v30 = *(v48 + 16);
  v31 = v47;
  v32 = v49;
  v30(v47, v23, v49);
  v34 = v54;
  v33 = v55;
  v53 = *(v55 + 16);
  v35 = v28;
  v36 = v56;
  v53(v54, v35, v56);
  v37 = v57;
  v30(v57, v31, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76108, &qword_264789C60);
  v53(&v37[*(v38 + 48)], v34, v36);
  v39 = *(v33 + 8);
  v39(v59, v36);
  v40 = *(v29 + 8);
  v40(v58, v32);
  v39(v34, v36);
  return (v40)(v31, v32);
}

uint64_t sub_26465BE9C(_OWORD *a1)
{
  v7[6] = &unk_2876146B8;
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  sub_26465D7D4(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76168, &qword_264789CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76170, &qword_264789CF8);
  sub_26460CDF0(&qword_27FF76178, &qword_27FF76168, &qword_264789CF0, MEMORY[0x277D83980]);
  v4 = sub_26465D524();
  v5 = sub_26465D40C();
  v7[0] = &type metadata for ETAOptionRow;
  v7[1] = &type metadata for ETAType;
  v7[2] = v4;
  v7[3] = v5;
  swift_getOpaqueTypeConformance2();
  sub_26465D9AC();
  return sub_264785434();
}

uint64_t sub_26465C008@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760F8, &qword_264789C58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76110, &qword_264789C68);
  MEMORY[0x28223BE20](v22);
  v7 = &v20 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760E8, &qword_264789C50);
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v11 = v1[1];
  v12 = v1[2];
  v26 = *v1;
  v27 = v11;
  v13 = *(v1 + 8);
  v28 = v12;
  v29 = v13;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v24);
  sub_26460CD50(&v29, &qword_27FF76118, &unk_264789CB8);

  if (v25)
  {
    v20 = &v20;
    MEMORY[0x28223BE20](v14);
    *(&v20 - 2) = &v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA0, &qword_2647888F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76120, &qword_264789CC8);
    sub_26465D720();
    sub_26460CDF0(&qword_27FF76130, &qword_27FF76120, &qword_264789CC8, MEMORY[0x277CE14C0]);
    sub_264784DC4();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_26460CDF0(&qword_27FF760E0, &qword_27FF760E8, &qword_264789C50, MEMORY[0x277CDF028]);
    sub_26460CDF0(&qword_27FF760F0, &qword_27FF760F8, &qword_264789C58, MEMORY[0x277CDE5B0]);
    sub_264784874();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16 = v24;
    v17 = swift_allocObject();
    v18 = v27;
    v17[1] = v26;
    v17[2] = v18;
    v17[3] = v28;
    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v16;
    sub_26465D7D4(&v26, &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA0, &qword_2647888F0);
    sub_26465D720();
    sub_264785334();
    v19 = v21;
    (*(v8 + 16))(v7, v10, v21);
    swift_storeEnumTagMultiPayload();
    sub_26460CDF0(&qword_27FF760E0, &qword_27FF760E8, &qword_264789C50, MEMORY[0x277CDF028]);
    sub_26460CDF0(&qword_27FF760F0, &qword_27FF760F8, &qword_264789C58, MEMORY[0x277CDE5B0]);
    sub_264784874();
    return (*(v8 + 8))(v10, v19);
  }
}

__n128 sub_26465C570@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v12 = _s15SafetyMonitorUI0aB11UIUtilitiesC35initiatorRemoveExtraTimeButtonTitle4withSSSd_tFZ_0(a2);
  *(&v12 + 1) = v3;
  sub_264613FC4();
  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_264785504();
  sub_264784314();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_26465C65C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76138, &qword_264789CD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76140, &qword_264789CD8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v37 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v37 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v37 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v39 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v38 = &v37 - v18;
  v19 = swift_allocObject();
  v20 = a1[1];
  v19[1] = *a1;
  v19[2] = v20;
  v19[3] = a1[2];
  sub_26465D7D4(a1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76148, &qword_264789CE0);
  sub_26460CDF0(&qword_27FF76150, &qword_27FF76148, &qword_264789CE0, MEMORY[0x277CDEFF0]);
  sub_264785334();
  sub_26460CDF0(&qword_27FF76158, &qword_27FF76138, &qword_264789CD0, MEMORY[0x277CDF028]);
  sub_264785034();
  v21 = *(v4 + 8);
  v21(v6, v3);
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = a1[2];
  sub_26465D7D4(a1, v45);
  sub_264785334();
  v24 = v39;
  sub_264785034();
  v21(v6, v3);
  v25 = swift_allocObject();
  v26 = a1[1];
  v25[1] = *a1;
  v25[2] = v26;
  v25[3] = a1[2];
  sub_26465D7D4(a1, v45);
  sub_264785334();
  v27 = v40;
  sub_264785034();
  v21(v6, v3);
  v28 = v38;
  v29 = v41;
  sub_26465D884(v38, v41);
  v30 = v42;
  sub_26465D884(v24, v42);
  v31 = v27;
  v32 = v27;
  v33 = v43;
  sub_26465D884(v31, v43);
  v34 = v44;
  sub_26465D884(v29, v44);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76160, &qword_264789CE8);
  sub_26465D884(v30, v34 + *(v35 + 48));
  sub_26465D884(v33, v34 + *(v35 + 64));
  sub_26460CD50(v32, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v24, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v28, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v33, &qword_27FF76140, &qword_264789CD8);
  sub_26460CD50(v30, &qword_27FF76140, &qword_264789CD8);
  return sub_26460CD50(v29, &qword_27FF76140, &qword_264789CD8);
}

uint64_t sub_26465CC0C(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_26465CCB8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  return sub_2647852D4();
}

__n128 sub_26465CD54@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27FF752E0 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27FF79178;
  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_264785504();
  sub_264784314();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  return result;
}

uint64_t sub_26465CE84@<X0>(char *a1@<X8>)
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_26465AAA0(v4, a1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26465CECC(uint64_t *a1, int a2)
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

uint64_t sub_26465CF14(uint64_t result, int a2, int a3)
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

unint64_t sub_26465CF74()
{
  result = qword_27FF75FC0;
  if (!qword_27FF75FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75FC8, &qword_264789B38);
    sub_26460CDF0(&qword_27FF75FD0, &qword_27FF75FD8, &qword_264789B40, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75FC0);
  }

  return result;
}

unint64_t sub_26465D02C()
{
  result = qword_27FF76000;
  if (!qword_27FF76000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF754B8, &qword_264787630);
    sub_26465D3B4(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76000);
  }

  return result;
}

unint64_t sub_26465D0E8()
{
  result = qword_27FF76018;
  if (!qword_27FF76018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76020, &qword_264789B70);
    sub_26460CDF0(&qword_27FF76028, &qword_27FF76030, &qword_264789B78, &unk_26478B5C8);
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76018);
  }

  return result;
}

unint64_t sub_26465D1CC()
{
  result = qword_27FF76048;
  if (!qword_27FF76048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75FF8, &qword_264789B68);
    sub_26465D250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76048);
  }

  return result;
}

unint64_t sub_26465D250()
{
  result = qword_27FF76050;
  if (!qword_27FF76050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76058, &qword_26478C060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76050);
  }

  return result;
}

uint64_t sub_26465D2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE0, &unk_264789B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26465D344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE0, &unk_264789B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26465D3B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26465D40C()
{
  result = qword_27FF760B8;
  if (!qword_27FF760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760B8);
  }

  return result;
}

unint64_t sub_26465D460()
{
  result = qword_27FF760C0;
  if (!qword_27FF760C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF760B0, &qword_264789C48);
    sub_26465D524();
    sub_26465D40C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760C0);
  }

  return result;
}

unint64_t sub_26465D524()
{
  result = qword_27FF760C8;
  if (!qword_27FF760C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760C8);
  }

  return result;
}

unint64_t sub_26465D578()
{
  result = qword_27FF760D8;
  if (!qword_27FF760D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76080, &qword_264789BF0);
    sub_26460CDF0(&qword_27FF760E0, &qword_27FF760E8, &qword_264789C50, MEMORY[0x277CDF028]);
    sub_26460CDF0(&qword_27FF760F0, &qword_27FF760F8, &qword_264789C58, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF760D8);
  }

  return result;
}

uint64_t sub_26465D65C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26465D3B4(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26465D720()
{
  result = qword_27FF76128;
  if (!qword_27FF76128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75AA0, &qword_2647888F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76128);
  }

  return result;
}

uint64_t sub_26465D884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76140, &qword_264789CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26465D94C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v3 = v6;
  result = sub_2647145BC(&v6);
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = v5 & 1;
  *(a2 + 17) = v3;
  *(a2 + 18) = 1;
  return result;
}

unint64_t sub_26465D9AC()
{
  result = qword_27FF76180;
  if (!qword_27FF76180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76180);
  }

  return result;
}

uint64_t sub_26465DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26465DB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InitiatorConfigurationSheet(uint64_t a1)
{
  result = qword_27FF76198;
  if (!qword_27FF76198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26465DC18(uint64_t a1)
{
  sub_26465DD44(319);
  if (v1 <= 0x3F)
  {
    sub_26465DD9C(319);
    if (v2 <= 0x3F)
    {
      sub_26465DE30(319);
      if (v3 <= 0x3F)
      {
        sub_26465DE94(319, &qword_27FF761C0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26465DE94(319, &qword_27FF761C8, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SessionViewModel(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26465DD44(uint64_t a1)
{
  if (!qword_27FF761A8)
  {
    sub_2647840D4();
    v1 = sub_264783F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF761A8);
    }
  }
}

void sub_26465DD9C(uint64_t a1)
{
  if (!qword_27FF761B0)
  {
    type metadata accessor for UserSessionConfiguration(255);
    sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
    v1 = sub_264783FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF761B0);
    }
  }
}

void sub_26465DE30(uint64_t a1)
{
  if (!qword_27FF761B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF756E0, &qword_264787DE0);
    v1 = sub_264785324();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF761B8);
    }
  }
}

void sub_26465DE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26465DF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for InitiatorConfigurationSheet(0);
  v11 = (a3 + v10[6]);
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  sub_2647852E4();
  v12 = v26;
  *v11 = v25;
  v11[1] = v12;
  v13 = a3 + v10[7];
  LOBYTE(v24) = 0;
  sub_2647852E4();
  v14 = v26;
  *v13 = v25;
  *(v13 + 1) = v14;
  v15 = a3 + v10[8];
  LOBYTE(v24) = 0;
  sub_2647852E4();
  v16 = v26;
  *v15 = v25;
  *(v15 + 1) = v16;
  v17 = v10[9];
  *(a3 + v10[10]) = a1;
  *(a3 + v17) = a2;
  v18 = a3 + v10[5];
  *v18 = sub_264665078;
  *(v18 + 1) = a1;
  v18[16] = 0;

  sub_264783DF4();
  v19 = sub_264783E14();
  v20 = sub_2647859F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_264605000, v19, v20, "Using existing configuration to setup configuration sheet", v21, 2u);
    MEMORY[0x266740650](v21, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26465E168(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v3);

  sub_2647164C0(v3);

  type metadata accessor for UserSessionConfiguration(0);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_26465E220@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26460CCE8(v2, &v14 - v9, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2647840D4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26465E420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for InitiatorConfigurationSheet(0);
  v4 = v3 - 8;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v88 = v5;
  v85 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647845A4();
  v82 = *(v6 - 1);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_264784954();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76258, &unk_264789E40);
  v9 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76240, &qword_264789E38);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76238, &qword_264789E30);
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = &v64 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76230, &qword_264789E28);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v64 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76228, &qword_264789E20);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v64 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76218, &qword_264789E10);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76208, &qword_264789E00);
  v79 = *(v20 - 8);
  v80 = v20;
  MEMORY[0x28223BE20](v20);
  v87 = &v64 - v21;
  v90 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762D0, &qword_264789E68);
  sub_26460CDF0(&qword_27FF762D8, &qword_27FF762D0, &qword_264789E68, MEMORY[0x277CE14C0]);
  sub_264784DA4();
  v22 = *(v4 + 44);
  v89 = a1;
  v23 = *(a1 + v22);
  KeyPath = swift_getKeyPath();
  if (v23)
  {
    *&v91 = v23;

    v23 = sub_2647840B4();
  }

  v25 = v64;
  (*(v9 + 16))(v14, v11, v64);
  v26 = &v14[*(v12 + 36)];
  *v26 = KeyPath;
  v26[1] = v23;
  (*(v9 + 8))(v11, v25);
  v27 = v66;
  sub_264784944();
  v28 = sub_26466405C();
  v29 = MEMORY[0x277CDE0D0];
  v30 = v70;
  sub_264785124();
  (*(v67 + 8))(v27, v30);
  sub_26460CD50(v14, &qword_27FF76240, &qword_264789E38);
  sub_264784C44();
  *&v91 = v12;
  *(&v91 + 1) = v30;
  v92 = v28;
  v93 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v68;
  v33 = v69;
  sub_264784EE4();
  (*(v65 + 8))(v16, v33);
  if (qword_27FF75260 != -1)
  {
    swift_once();
  }

  v91 = xmmword_27FF79078;
  sub_264613FC4();

  v34 = sub_264784E44();
  v36 = v35;
  v38 = v37;
  *&v91 = v33;
  *(&v91 + 1) = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v72;
  v41 = v73;
  sub_264784F44();
  sub_26460ECC4(v34, v36, v38 & 1);

  (*(v71 + 8))(v32, v41);
  v43 = v81;
  v42 = v82;
  v44 = v83;
  (*(v82 + 104))(v81, *MEMORY[0x277CDDDC0], v83);
  *&v91 = v41;
  *(&v91 + 1) = v39;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v76;
  v47 = v75;
  sub_264785084();
  (*(v42 + 8))(v43, v44);
  v48 = (*(v74 + 8))(v40, v47);
  MEMORY[0x28223BE20](v48);
  v49 = v89;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76220, &qword_264789E18);
  *&v91 = v47;
  *(&v91 + 1) = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_26460CDF0(&qword_27FF76270, &qword_27FF76220, &qword_264789E18, MEMORY[0x277CDDF68]);
  v53 = v78;
  sub_2647850E4();
  (*(v77 + 8))(v46, v53);
  type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v83 = type metadata accessor for InitiatorConfigurationSheet;
  v54 = v49;
  v55 = v85;
  sub_2646646D8(v54, v85, type metadata accessor for InitiatorConfigurationSheet);
  v56 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v57 = swift_allocObject();
  sub_2646644E4(v55, v57 + v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76210, &qword_264789E08);
  *&v91 = v53;
  *(&v91 + 1) = v50;
  v92 = v51;
  v93 = v52;
  swift_getOpaqueTypeConformance2();
  sub_264664FBC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem, &unk_2647919F4);
  sub_264664140();
  v58 = v86;
  v59 = v80;
  v60 = v87;
  sub_264785014();

  (*(v79 + 8))(v60, v59);
  sub_2646646D8(v89, v55, v83);
  v61 = swift_allocObject();
  sub_2646644E4(v55, v61 + v56);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761E0, &qword_264789DF8);
  v63 = (v58 + *(result + 36));
  *v63 = sub_2646645C8;
  v63[1] = v61;
  v63[2] = 0;
  v63[3] = 0;
  return result;
}

uint64_t sub_26465EFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v93 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76388, &qword_26478A078);
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v76 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76390, &qword_26478A080);
  MEMORY[0x28223BE20](v78);
  v79 = (&v76 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76398, &qword_26478A088);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v92 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v91 = &v76 - v7;
  v88 = sub_2647848D4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763A0, &qword_26478A090);
  MEMORY[0x28223BE20](v83);
  v11 = &v76 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763A8, &qword_26478A098);
  MEMORY[0x28223BE20](v84);
  v13 = &v76 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763B0, &qword_26478A0A0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v76 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763B8, &qword_26478A0A8);
  MEMORY[0x28223BE20](v81);
  v17 = &v76 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C0, &unk_26478A0B0);
  v18 = MEMORY[0x28223BE20](v82);
  v89 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v20);
  v94 = &v76 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C8, &qword_264790D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  v25 = sub_264784BF4();
  *(inited + 32) = v25;
  v26 = sub_264784C14();
  *(inited + 33) = v26;
  v27 = sub_264784C04();
  sub_264784C04();
  if (sub_264784C04() != v25)
  {
    v27 = sub_264784C04();
  }

  sub_264784C04();
  if (sub_264784C04() != v26)
  {
    v27 = sub_264784C04();
  }

  *v11 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763D0, &qword_26478A0C0);
  v29 = v90;
  sub_26465FED0(v90, &v11[*(v28 + 44)]);
  sub_26460CDF0(&qword_27FF763D8, &qword_27FF763A0, &qword_26478A090, MEMORY[0x277CDD828]);
  sub_264785034();
  sub_26460CD50(v11, &qword_27FF763A0, &qword_26478A090);
  sub_2647848C4();
  sub_264664BCC();
  v30 = v88;
  sub_264784EF4();
  (*(v87 + 8))(v9, v30);
  sub_26460CD50(v13, &qword_27FF763A8, &qword_26478A098);
  v31 = v15;
  v32 = v29;
  (*(v85 + 32))(v17, v31, v86);
  v33 = &v17[*(v81 + 36)];
  v33[32] = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v100 = sub_2647851A4();
  v34 = sub_2647853C4();
  sub_26460E7E4(v17, v22, &qword_27FF763B8, &qword_26478A0A8);
  *&v22[*(v82 + 36)] = v34;
  sub_26460E7E4(v22, v94, &qword_27FF763C0, &unk_26478A0B0);
  v35 = type metadata accessor for InitiatorConfigurationSheet(0);
  type metadata accessor for UserSessionConfiguration(0);
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v100);

  if (v100 == 1)
  {
    v36 = *(v32 + *(v35 + 40));

    sub_264783FB4();
    swift_getKeyPath();
    sub_264784194();

    v95 = v36;
    v96 = v100;
    v97 = v101;
    v98 = 0;
    v99 = 0;
    sub_264664E7C();
    sub_264664ED0();

    sub_264784874();
    v37 = v103;
    v38 = v101;
    v39 = v79;
    *v79 = v100;
    v39[1] = v38;
    v39[2] = v102;
    *(v39 + 48) = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664DF0();
    sub_264664F24();
    v40 = v91;
    sub_264784874();

LABEL_12:
    v75 = 0;
    goto LABEL_13;
  }

  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v100);

  if (v100 == 2)
  {
    v41 = *(v32 + *(v35 + 40));
    sub_264783FA4();
    v42 = (v32 + *(v35 + 24));
    v44 = *v42;
    v43 = v42[1];
    v95 = v44;
    *&v96 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
    sub_264785314();
    v45 = v100;
    v46 = v101;

    v47 = sub_264784174();
    v95 = v41;
    *&v96 = v47;
    v88 = v41;
    *(&v96 + 1) = v48;
    v97 = v45;
    v98 = v46;
    v99 = 1;
    sub_264664E7C();
    sub_264664ED0();

    sub_264784874();
    v49 = v103;
    v50 = v101;
    v51 = v35;
    v52 = v32;
    v53 = v79;
    *v79 = v100;
    v53[1] = v50;
    v53[2] = v102;
    *(v53 + 48) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664DF0();
    sub_264664F24();
    v40 = v91;
    v32 = v52;
    v35 = v51;
    sub_264784874();

    goto LABEL_12;
  }

  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v100);

  v40 = v91;
  if (v100 == 4)
  {
    *&v100 = sub_26474F59C();
    *(&v100 + 1) = v54;
    sub_264613FC4();
    *&v100 = sub_264784E44();
    *(&v100 + 1) = v55;
    LOBYTE(v101) = v56 & 1;
    *(&v101 + 1) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763F8, &qword_26478A0D8);
    sub_264664CB4();
    v58 = v76;
    sub_264785474();
    v59 = v77;
    v60 = v80;
    (*(v77 + 16))(v79, v58, v80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76418, &qword_26478A0F0);
    sub_264664DF0();
    sub_264664F24();
    sub_264784874();
    (*(v59 + 8))(v58, v60);
    goto LABEL_12;
  }

  v75 = 1;
LABEL_13:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763E8, &qword_26478A0C8);
  (*(*(v61 - 8) + 56))(v40, v75, 1, v61);
  v62 = (v32 + *(v35 + 24));
  v64 = *v62;
  v63 = v62[1];
  v95 = v64;
  *&v96 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
  sub_264785314();
  v65 = v100;
  v66 = v101;
  v67 = v94;
  v68 = v89;
  v69 = v40;
  sub_26460CCE8(v94, v89, &qword_27FF763C0, &unk_26478A0B0);
  v70 = v92;
  sub_26460CCE8(v40, v92, &qword_27FF76398, &qword_26478A088);
  v71 = v93;
  sub_26460CCE8(v68, v93, &qword_27FF763C0, &unk_26478A0B0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763F0, &qword_26478A0D0);
  sub_26460CCE8(v70, v71 + *(v72 + 48), &qword_27FF76398, &qword_26478A088);
  v73 = v71 + *(v72 + 80);
  *v73 = v65;
  *(v73 + 16) = v66;

  sub_26460CD50(v69, &qword_27FF76398, &qword_26478A088);
  sub_26460CD50(v67, &qword_27FF763C0, &unk_26478A0B0);

  sub_26460CD50(v70, &qword_27FF76398, &qword_26478A088);
  return sub_26460CD50(v68, &qword_27FF763C0, &unk_26478A0B0);
}

uint64_t sub_26465FED0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76440, &qword_26478A0F8);
  v28 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v31 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = v24 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v29 = v24 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  if (qword_27FF75278 != -1)
  {
    swift_once();
  }

  v12 = qword_27FF790B0;
  v27 = qword_27FF790A8;
  v37 = qword_27FF790A8;
  v38 = qword_27FF790B0;
  v13 = (a1 + *(type metadata accessor for InitiatorConfigurationSheet(0) + 20));
  v14 = *v13;
  v25 = v13[1];
  v26 = v14;
  v24[3] = *(v13 + 16);
  type metadata accessor for UserSessionConfiguration(0);
  sub_264664FBC(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
  swift_bridgeObjectRetain_n();
  sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v33 = v35;
  v34 = v36;
  type metadata accessor for SMSessionType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76448, &qword_26478A100);
  sub_264664FBC(&qword_27FF76450, type metadata accessor for SMSessionType, &unk_2647879A4);
  sub_26460CDF0(&qword_27FF76458, &qword_27FF76448, &qword_26478A100, MEMORY[0x277CE14C0]);
  sub_264613FC4();
  sub_2647853B4();
  v37 = v27;
  v38 = v12;
  sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v33 = v35;
  v34 = v36;
  v15 = v29;
  sub_2647853B4();
  v16 = v28;
  v17 = *(v28 + 16);
  v18 = v30;
  v17(v30, v11, v3);
  v19 = v31;
  v17(v31, v15, v3);
  v20 = v32;
  v17(v32, v18, v3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76460, &qword_26478A108);
  v17(&v20[*(v21 + 48)], v19, v3);
  v22 = *(v16 + 8);
  v22(v15, v3);
  v22(v11, v3);
  v22(v19, v3);
  return (v22)(v18, v3);
}

double sub_264660388@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 userInterfaceLayoutDirection];

  type metadata accessor for ImageProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_264785714();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 withConfiguration:0];

  if (!v6)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v7 = sub_264785254();
  sub_264785504();
  sub_264784314();
  sub_2647851A4();
  v8 = sub_2647853C4();
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  *(a1 + 88) = v15;
  *(a1 + 104) = v16;
  result = *&v10;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  *a1 = v7;
  *(a1 + 40) = v12;
  *(a1 + 120) = v8;
  return result;
}

uint64_t sub_264660584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76300, &qword_264789F10);
  MEMORY[0x28223BE20](v27);
  v25 = v22 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76308, &qword_264789F18);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v22 - v4;
  v6 = sub_264784934();
  MEMORY[0x28223BE20](v6 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76310, &qword_264789F20);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = v22 - v8;
  sub_2647848F4();
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76318, &qword_264789F28);
  sub_2646647A8();
  sub_264783FE4();
  sub_264784904();
  v29 = a1;
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76338, &qword_264789F38);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76340, &unk_264789F40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76348, &qword_264792100);
  v12 = sub_264664898();
  v13 = sub_264613FC4();
  v14 = sub_26460CDF0(&qword_27FF76368, &qword_27FF76348, &qword_264792100, MEMORY[0x277CE14C0]);
  v31 = v10;
  v32 = MEMORY[0x277D837D0];
  v33 = v11;
  v34 = MEMORY[0x277CE0BD8];
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_264783FE4();
  v15 = *(v27 + 48);
  v16 = v25;
  v17 = v23;
  (*(v7 + 16))(v25, v9, v23);
  v18 = v24;
  v19 = &v16[v15];
  v20 = v26;
  (*(v24 + 16))(v19, v5, v26);
  sub_264784754();
  (*(v18 + 8))(v5, v20);
  return (*(v7 + 8))(v9, v17);
}