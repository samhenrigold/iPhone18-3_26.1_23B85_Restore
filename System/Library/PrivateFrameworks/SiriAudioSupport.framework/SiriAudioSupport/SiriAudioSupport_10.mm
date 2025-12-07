void sub_266395B64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "ShazamSessionManager#logSELFLiveActivityWaitEnd", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
      if (v17)
      {
        v18 = v17;
        [v16 setExists_];
        [v14 setEnded_];
        [v14 setContextId_];
        [v18 setFlowDomainExecutionContext_];
        sub_2664DE8D8();
        v19 = v18;
        v20 = sub_2664DE8B8();
        v21 = sub_2664E05C8();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        v22 = swift_allocObject();
        v22[2] = 0;
        v22[3] = 0;
        v22[4] = v20;

        sub_2663958A4(0, 0, v4, &unk_2664E96F0, v22);

        sub_2662A9238(v4, &qword_280072BD0, &qword_2664E3550);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_266395F60(uint64_t a1)
{
  sub_2664DE7D8();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_266396024;
  v5 = v1[7];

  return MEMORY[0x2821BA730](v5, v2, v3);
}

uint64_t sub_266396024()
{

  return MEMORY[0x2822009F8](sub_266396120, 0, 0);
}

uint64_t sub_266396120()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *ShazamSessionManager.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  *(v0 + 24) = 0;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC16SiriAudioSupport20ShazamSessionManager_deferredContinuation;
  swift_beginAccess();
  sub_2663968D8(v3, v0 + v5);
  swift_endAccess();

  sub_2662A9238(v0 + v5, &qword_2800730C8, &qword_2664E95F0);

  return v0;
}

uint64_t ShazamSessionManager.__deallocating_deinit()
{
  ShazamSessionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26639636C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  *v1 = v0;
  v1[1] = sub_266396454;
  v3 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x80000002664F61A0, sub_2663970C4, v3, v2);
}

uint64_t sub_266396454()
{

  return MEMORY[0x2822009F8](sub_2663970B0, 0, 0);
}

uint64_t sub_266396550(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_266396648;

  return v6(a1);
}

uint64_t sub_266396648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266396740()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071BF0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28007CCE0);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "ShazamSessionManager#isSmartStackMode Non watchOS, returning false", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2663968D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730C8, &qword_2664E95F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ShazamSessionManaging.sessionIDString()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2663970B4;

  return v7(a1, a2);
}

uint64_t type metadata accessor for ShazamSessionManager(uint64_t a1)
{
  result = qword_2800730F8;
  if (!qword_2800730F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266396AC8(uint64_t a1)
{
  sub_266396CE8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ShazamSessionManager.sessionIDString()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_266351BD4;

  return v4();
}

void sub_266396CE8(uint64_t a1)
{
  if (!qword_280073108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800730D0, &qword_2664E95F8);
    v1 = sub_2664E0948();
    if (!v2)
    {
      atomic_store(v1, &qword_280073108);
    }
  }
}

uint64_t sub_266396D4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return sub_266395F40(a1, v4, v5, v6);
}

uint64_t sub_266396E00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662BD660;

  return sub_266396550(a1, v4);
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266396EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662C1890;

  return sub_2663956C4(a1, v4, v5, v6);
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26639702C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_266394524(v2, v3);
}

uint64_t (*sub_2663970CC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26639977C(v6, a2, a3);
  return sub_26639A050;
}

uint64_t (*sub_266397154(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2663998D4(v6, a2, a3);
  return sub_2663971DC;
}

uint64_t (*sub_2663971E0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_266399828(v6, a2, a3);
  return sub_26639A050;
}

void sub_266397268(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

SiriAudioSupport::ResolvedAppHistoryProvider::AppStatisticsBucket_optional __swiftcall ResolvedAppHistoryProvider.AppStatisticsBucket.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ResolvedAppHistoryProvider.AppStatisticsBucket.rawValue.getter()
{
  if (*v0)
  {
    return 0x6465727265666E69;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_266397360(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465727265666E69;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = 0x80000002664F2EE0;
  }

  else
  {
    v4 = 0xEB00000000707041;
  }

  if (*a2)
  {
    v5 = 0x6465727265666E69;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = 0xEB00000000707041;
  }

  else
  {
    v6 = 0x80000002664F2EE0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2664E0D88();
  }

  return v8 & 1;
}

uint64_t sub_266397414()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663974A4(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_266397520(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663975AC@<X0>(char *a2@<X8>)
{
  v3 = sub_2664E0CB8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26639760C(unint64_t *a1@<X8>)
{
  v2 = 0x80000002664F2EE0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x6465727265666E69;
    v2 = 0xEB00000000707041;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_266397658()
{
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *v2 = qword_280F905C8;
  *&v2[5] = *(&qword_280F905C8 + 5);
  v3 = &type metadata for FeatureFlagProvider;
  v4 = &protocol witness table for FeatureFlagProvider;
  type metadata accessor for ResolvedAppHistoryProvider();
  v0 = swift_allocObject();
  sub_2662A5550(v2, v0 + 24);
  *(v0 + 16) = FeatureFlagProvider.resolvedAppHistory.getter();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v2);
  qword_280073190 = v0;
  return result;
}

uint64_t static ResolvedAppHistoryProvider.shared.getter()
{
  if (qword_280071B80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266397774()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664F6330, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073198 = v8;
  return result;
}

uint64_t sub_26639790C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t (*a6)(void), char *a7)
{
  v8 = v7;
  v169 = a6;
  LODWORD(v168) = a5;
  v177 = a3;
  v171 = a1;
  v164 = sub_2664E0038();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2664E00B8();
  v160 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v159 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v157 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v155 = &v151 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v151 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v151 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v166 = &v151 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v172 = &v151 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v151 - v30;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v167 = v25;
  v32 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v33 = *(v15 + 16);
  v176 = v32;
  v175 = v15 + 16;
  v174 = v33;
  v33(v31, v32, v14);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  v36 = os_log_type_enabled(v34, v35);
  v170 = a7;
  v158 = v22;
  if (!v36)
  {
    v44 = a4;

    v52 = *(v15 + 8);
    v52(v31, v14);
    v53 = v14;
    v51 = v15;
    if (a2)
    {
      goto LABEL_17;
    }

LABEL_22:
    v61 = v157;
    v174(v157, v176, v53);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26629C000, v62, v63, "ResolvedAppHistoryProvider setResolvedApp skipped due to nil bundle identifier", v64, 2u);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    goto LABEL_30;
  }

  v37 = swift_slowAlloc();
  v173 = v14;
  v38 = v37;
  v154 = swift_slowAlloc();
  aBlock[0] = v154;
  *v38 = 136315906;
  v165 = v15;
  v153 = v35;
  if (a2)
  {
    v39 = v171;
  }

  else
  {
    v39 = 0x3E6C696E3CLL;
  }

  if (a2)
  {
    v40 = a2;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  v41 = sub_2662A320C(v39, v40, aBlock);

  *(v38 + 4) = v41;
  *(v38 + 12) = 2080;
  if (a4)
  {
    v42 = v177;
  }

  else
  {
    v42 = 0x3E6C696E3CLL;
  }

  if (a4)
  {
    v43 = a4;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = a4;

  v45 = sub_2662A320C(v42, v43, aBlock);

  *(v38 + 14) = v45;
  *(v38 + 22) = 1024;
  *(v38 + 24) = v168 & 1;
  *(v38 + 28) = 2080;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
  v46 = sub_2664E01D8();
  v48 = v47;

  v49 = sub_2662A320C(v46, v48, aBlock);

  *(v38 + 30) = v49;
  _os_log_impl(&dword_26629C000, v34, v153, "ResolvedAppHistoryProvider#incrementHistory resolvedBundle: %s, sharedUserId: %s, appInferred: %{BOOL}d, history before incrementing: %s", v38, 0x26u);
  v50 = v154;
  swift_arrayDestroy();
  MEMORY[0x266784AD0](v50, -1, -1);
  MEMORY[0x266784AD0](v38, -1, -1);

  v51 = v165;
  v52 = *(v165 + 8);
  v53 = v173;
  v52(v31, v173);
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_17:
  if (!v44)
  {
    v61 = v155;
    v174(v155, v176, v53);
    v62 = sub_2664DFE18();
    v79 = sub_2664E06D8();
    if (os_log_type_enabled(v62, v79))
    {
      v80 = v52;
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26629C000, v62, v79, "ResolvedAppHistoryProvider setResolvedApp skipped due to nil shared user id", v81, 2u);
      v82 = v81;
      v52 = v80;
      MEMORY[0x266784AD0](v82, -1, -1);
    }

LABEL_30:

    v52(v61, v53);
    return v169(0);
  }

  v54 = a2;
  v55 = v44;
  swift_beginAccess();
  v56 = *(v8 + 2);
  v57 = *(v56 + 16);

  if (v57 && (v58 = sub_2662A3E98(v177, v44), (v59 & 1) != 0))
  {
    v60 = *(*(v56 + 56) + 8 * v58);
  }

  else
  {
    v60 = sub_266386038(MEMORY[0x277D84F90]);
  }

  v65 = v172;

  v174(v65, v176, v53);

  v66 = sub_2664DFE18();
  v67 = sub_2664E06E8();

  v68 = os_log_type_enabled(v66, v67);
  v173 = v53;
  v156 = v54;
  v152 = v55;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v165 = v51;
    v70 = v8;
    v71 = v69;
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v71 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731A0, &qword_2664E9780);
    v73 = sub_2664E01D8();
    v75 = sub_2662A320C(v73, v74, aBlock);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_26629C000, v66, v67, "ResolvedAppHistoryProvider#incrementHistory stats for user: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v76 = v72;
    v53 = v173;
    MEMORY[0x266784AD0](v76, -1, -1);
    v77 = v71;
    v8 = v70;
    v78 = v165;
    v55 = v152;
    v54 = v156;
    MEMORY[0x266784AD0](v77, -1, -1);

    v51 = v78;
  }

  else
  {
  }

  v52(v65, v53);
  if (!*(*(v8 + 2) + 16) || (, sub_2662A3E98(v177, v55), v85 = v84, , (v85 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v181 = *(v8 + 2);
    *(v8 + 2) = 0x8000000000000000;
    sub_26634F31C(v60, v177, v55, isUniquelyReferenced_nonNull_native);

    *(v8 + 2) = v181;
    swift_endAccess();
  }

  v172 = v8;
  if (*(v60 + 16) && (v87 = sub_2662A3E98(v171, v54), (v88 & 1) != 0))
  {
    v89 = *(*(v60 + 56) + 8 * v87);
  }

  else
  {
    v89 = sub_266385CA8(MEMORY[0x277D84F90]);
  }

  v90 = v166;
  v174(v166, v176, v53);

  v91 = sub_2664DFE18();
  v92 = sub_2664E06E8();

  v93 = os_log_type_enabled(v91, v92);
  v154 = v52;
  if (v93)
  {
    v94 = v52;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock[0] = v96;
    *v95 = 136315138;
    v97 = sub_2664E01D8();
    v99 = sub_2662A320C(v97, v98, aBlock);
    v53 = v173;

    *(v95 + 4) = v99;
    _os_log_impl(&dword_26629C000, v91, v92, "ResolvedAppHistoryProvider#incrementHistory app stats: %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x266784AD0](v96, -1, -1);
    MEMORY[0x266784AD0](v95, -1, -1);

    v94(v90, v53);
    v55 = v152;
  }

  else
  {

    v52(v90, v53);
  }

  v100 = v167;
  v101 = *(v172 + 2);
  if (*(v101 + 16))
  {

    v102 = sub_2662A3E98(v177, v55);
    if ((v103 & 1) != 0 && (v104 = *(*(v101 + 56) + 8 * v102), , , *(v104 + 16)))
    {
      sub_2662A3E98(v171, v156);
      v106 = v105;

      if (v106)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  v107 = sub_2663435D4(aBlock);
  v109 = sub_266397154(&v181, v177, v55);
  if (*v108)
  {
    v110 = v108;
    v111 = v156;

    v112 = swift_isUniquelyReferenced_nonNull_native();
    v180 = *v110;
    *v110 = 0x8000000000000000;
    sub_26634F2DC(v89, v171, v111, v112);

    *v110 = v180;
  }

  (v109)(&v181, 0);
  (v107)(aBlock, 0);
  v53 = v173;
LABEL_51:
  if (v168)
  {
    v113 = 0x6465727265666E69;
  }

  else
  {
    v113 = 0xD000000000000013;
  }

  if (v168)
  {
    v114 = 0xEB00000000707041;
  }

  else
  {
    v114 = 0x80000002664F2EE0;
  }

  if (*(v89 + 16))
  {
    v115 = sub_2662A3E98(v113, v114);
    v117 = v116;

    if (v117)
    {
      v118 = *(*(v89 + 56) + 8 * v115);
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {

    v118 = 0;
  }

  v174(v100, v176, v53);
  v119 = sub_2664DFE18();
  v120 = sub_2664E06E8();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 134217984;
    *(v121 + 4) = v118;
    _os_log_impl(&dword_26629C000, v119, v120, "ResolvedAppHistoryProvider#incrementHistory currentValue: %ld", v121, 0xCu);
    MEMORY[0x266784AD0](v121, -1, -1);
  }

  v154(v100, v53);
  if (__OFADD__(v118, 1))
  {
    __break(1u);
  }

  else
  {
    v168 = v51 + 8;
    v122 = v156;
    v123 = v55;
    v124 = v170;
    if (v118 + 1 >= 1000)
    {
      v125 = 1000;
    }

    else
    {
      v125 = v118 + 1;
    }

    v126 = sub_2663435D4(aBlock);
    v127 = sub_266397154(&v181, v177, v123);
    if (*v128)
    {
      v130 = sub_2663971E0(&v180, v171, v122);
      if (*v129)
      {
        v131 = v129;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v179 = *v131;
        *v131 = 0x8000000000000000;
        sub_26634F1AC(v125, v113, v114, v132);

        *v131 = v179;
      }

      (v130)(&v180, 0);
      (v127)(&v181, 0);
      (v126)(aBlock, 0);
    }

    else
    {
      (v127)(&v181, 0);
      (v126)(aBlock, 0);
    }

    v133 = v158;
    v134 = v173;
    v174(v158, v176, v173);

    v135 = sub_2664DFE18();
    v136 = sub_2664E06E8();

    v100 = v124;
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      aBlock[0] = v138;
      *v137 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
      v139 = v134;
      v140 = sub_2664E01D8();
      v142 = v141;

      v143 = sub_2662A320C(v140, v142, aBlock);

      *(v137 + 4) = v143;
      _os_log_impl(&dword_26629C000, v135, v136, "ResolvedAppHistoryProvider#incrementHistory history after incrementing: %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      MEMORY[0x266784AD0](v138, -1, -1);
      MEMORY[0x266784AD0](v137, -1, -1);

      v144 = v133;
      v145 = v139;
    }

    else
    {

      v144 = v133;
      v145 = v134;
    }

    v154(v144, v145);
    v120 = v169;
    if (qword_280071B88 == -1)
    {
      goto LABEL_77;
    }
  }

  swift_once();
LABEL_77:
  v146 = swift_allocObject();
  v146[2] = v172;
  v146[3] = v120;
  v146[4] = v100;
  aBlock[4] = sub_266399F40;
  aBlock[5] = v146;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_21;
  v147 = _Block_copy(aBlock);

  v148 = v159;
  sub_2664E0068();
  v181 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v149 = v161;
  v150 = v164;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v148, v149, v147);
  _Block_release(v147);
  (*(v163 + 8))(v149, v150);
  (*(v160 + 8))(v148, v162);
}

uint64_t sub_266398D34(void *a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  swift_beginAccess();
  v4 = a1[6];
  v5 = a1[7];
  __swift_mutable_project_boxed_opaque_existential_1((a1 + 3), v4);
  v6 = *(v5 + 280);

  v6(v7, v4, v5);
  swift_endAccess();
  return a2(1);
}

uint64_t sub_266398DF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v91 = a3;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  LODWORD(v86) = *a5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v88 = *(v12 + 16);
  v89 = v12 + 16;
  v88(v20, v21, v11);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  v24 = os_log_type_enabled(v22, v23);
  v87 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v85 = a4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v80 = v21;
    v28 = v27;
    v93[0] = v27;
    *v26 = 136315906;
    *(v26 + 4) = sub_2662A320C(a1, a2, v93);
    v81 = a2;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2662A320C(v91, v85, v93);
    *(v26 + 22) = 2080;
    if (v86)
    {
      v29 = 0x6465727265666E69;
    }

    else
    {
      v29 = 0xD000000000000013;
    }

    v82 = v12;
    v30 = v11;
    if (v86)
    {
      v31 = 0xEB00000000707041;
    }

    else
    {
      v31 = 0x80000002664F2EE0;
    }

    v32 = sub_2662A320C(v29, v31, v93);

    *(v26 + 24) = v32;
    *(v26 + 32) = 2080;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v33 = sub_2664E01D8();
    v35 = v34;

    v36 = v33;
    v11 = v30;
    v12 = v82;
    v37 = sub_2662A320C(v36, v35, v93);
    a2 = v81;

    *(v26 + 34) = v37;
    _os_log_impl(&dword_26629C000, v22, v23, "ResolvedAppHistoryProvider#history history for bundleIdentifier: %s, sharedUserId: %s, bucket: %s, raw history: %s", v26, 0x2Au);
    swift_arrayDestroy();
    v38 = v28;
    v21 = v80;
    MEMORY[0x266784AD0](v38, -1, -1);
    v39 = v26;
    a4 = v85;
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v40 = *(v12 + 8);
  v40(v20, v11);
  swift_beginAccess();
  v41 = *(v6 + 16);
  v42 = v90;
  if (!*(v41 + 16))
  {
LABEL_25:
    v88(v42, v21, v11);

    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = a2;
      v64 = v62;
      v92 = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_2662A320C(v87, v63, &v92);
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2662A320C(v91, a4, &v92);
      v65 = "ResolvedAppHistoryProvider#history no app mentions for %s, sharedUserId: %s";
LABEL_29:
      _os_log_impl(&dword_26629C000, v59, v60, v65, v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v64, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

LABEL_30:

    v40(v42, v11);
    return 0;
  }

  v43 = sub_2662A3E98(v91, a4);
  if ((v44 & 1) == 0)
  {

    goto LABEL_25;
  }

  v45 = v21;
  v46 = *(*(v41 + 56) + 8 * v43);

  if (!*(v46 + 16) || (v47 = sub_2662A3E98(v87, a2), (v48 & 1) == 0))
  {

    v42 = v84;
    v88(v84, v45, v11);

    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = a2;
      v64 = v66;
      v92 = v66;
      *v61 = 136315394;
      *(v61 + 4) = sub_2662A320C(v87, v67, &v92);
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2662A320C(v91, a4, &v92);
      v65 = "ResolvedAppHistoryProvider#history no bundle stats for %s, sharedUserId: %s";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v49 = *(*(v46 + 56) + 8 * v47);

  if (v86)
  {
    v50 = 0x6465727265666E69;
  }

  else
  {
    v50 = 0xD000000000000013;
  }

  if (v86)
  {
    v51 = 0xEB00000000707041;
  }

  else
  {
    v51 = 0x80000002664F2EE0;
  }

  v52 = *(v49 + 16);
  v90 = v51;
  v86 = v50;
  if (v52)
  {
    v53 = a2;
    v54 = a4;
    v55 = sub_2662A3E98(v50, v51);
    v57 = v56;

    if (v57)
    {
      v58 = *(*(v49 + 56) + 8 * v55);
    }

    else
    {
      v58 = 0;
    }

    a2 = v53;
  }

  else
  {
    v54 = a4;

    v58 = 0;
  }

  v69 = v83;
  v88(v83, v45, v11);

  v70 = a2;
  v71 = v54;

  v72 = sub_2664DFE18();
  v73 = sub_2664E06E8();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v82 = v12;
    v75 = v74;
    v76 = swift_slowAlloc();
    v92 = v76;
    *v75 = 136315906;
    *(v75 + 4) = sub_2662A320C(v91, v71, &v92);
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_2662A320C(v87, v70, &v92);
    *(v75 + 22) = 2080;
    v77 = sub_2662A320C(v86, v90, &v92);

    *(v75 + 24) = v77;
    *(v75 + 32) = 2048;
    *(v75 + 34) = v58;
    _os_log_impl(&dword_26629C000, v72, v73, "ResolvedAppHistoryProvider#history app mentions for: %s, %s, %s: %ld.", v75, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v76, -1, -1);
    MEMORY[0x266784AD0](v75, -1, -1);

    v78 = v83;
  }

  else
  {

    v78 = v69;
  }

  v40(v78, v11);
  return v58;
}

uint64_t ResolvedAppHistoryProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ResolvedAppHistoryProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t (*sub_26639977C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_266399EE4(v7);
  v7[9] = sub_2663999E4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26639A054;
}

uint64_t (*sub_266399828(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_266399EE4(v7);
  v7[9] = sub_266399B68(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26639A054;
}

uint64_t (*sub_2663998D4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_266399F0C(v7);
  v7[9] = sub_266399CC0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_266399980;
}

void sub_266399984(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2663999E4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2664538E8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_26644FF98(v18, a4 & 1);
    v13 = sub_2662A3E98(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_266399B3C;
}

void (*sub_266399B68(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_266454274();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2664510B4(v18, a4 & 1);
    v13 = sub_2662A3E98(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_266399B3C;
}

void (*sub_266399CC0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2662A3E98(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_266454288();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2664510C8(v18, a4 & 1);
    v13 = sub_2662A3E98(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_266399B3C;
}

void sub_266399E18(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_2662C1834(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

uint64_t (*sub_266399EE4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26639A04C;
}

uint64_t (*sub_266399F0C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266399F34;
}

unint64_t sub_266399F50()
{
  result = qword_2800731A8;
  if (!qword_2800731A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800731A8);
  }

  return result;
}

uint64_t MusicSiriItemIdentifierResponse.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicSiriItemIdentifierResponse.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t type metadata accessor for MusicSiriItemIdentifierResponse(uint64_t a1)
{
  result = qword_2800731C8;
  if (!qword_2800731C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSiriItemIdentifierResponse.err.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MusicSiriItemIdentifierResponse(0) + 20);

  return sub_26639A1B8(a1, v3);
}

uint64_t sub_26639A1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicSiriItemIdentifierResponse.init(id:err:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for MusicSiriItemIdentifierResponse(0) + 20);
  v9 = sub_2664DF6F8();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;

  return sub_26639A1B8(a3, &a4[v8]);
}

uint64_t MusicSiriItemRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_26639A3B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = a5;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B8, &qword_2664E98F0);
  *(v5 + 136) = swift_task_alloc();
  v7 = sub_2664DF6B8();
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  v8 = sub_2664DF738();
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C80, &qword_2664E6498);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v9 = sub_2664DF7C8();
  *(v5 + 208) = v9;
  *(v5 + 216) = *(v9 - 8);
  *(v5 + 224) = swift_task_alloc();
  v10 = sub_2664DF718();
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 272) = *a4;

  return MEMORY[0x2822009F8](sub_26639A65C, 0, 0);
}

uint64_t sub_26639A65C()
{
  v1 = *(v0 + 272);

  if (v1 == 1)
  {
    sub_2664DF6C8();
    v2 = sub_2664DF6D8();
    sub_2664DF798();
    v2(v0 + 48, 0);
  }

  else
  {
    sub_2664DF6E8();
  }

  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  sub_2662A7224(*(v0 + 112), v5, &qword_280072C80, &qword_2664E6498);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_2662A9238(*(v0 + 200), &qword_280072C80, &qword_2664E6498);
  }

  else
  {
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    (*(v7 + 32))(v6, *(v0 + 200), v8);
    (*(v7 + 16))(v9, v6, v8);
    (*(v7 + 56))(v9, 0, 1, v8);
    v10 = sub_2664DF6D8();
    sub_2664DF7A8();
    v10(v0 + 16, 0);
    (*(v7 + 8))(v6, v8);
  }

  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_26639A8A0;
  v12 = *(v0 + 184);

  return MEMORY[0x2821894D8](v12);
}

uint64_t sub_26639A8A0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_26639AC34;
  }

  else
  {
    v2 = sub_26639A9B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26639A9B4()
{
  v1 = v0[17];
  sub_2664DF728();
  sub_2664DF6A8();
  v2 = sub_2664DF788();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[17];
  if (v4 == 1)
  {
    sub_2662A9238(v0[17], &qword_2800731B8, &qword_2664E98F0);
    v21 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v21 = sub_2664DF758();
    v6 = v7;
    (*(v3 + 8))(v5, v2);
  }

  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  v14 = v0[16];
  v15 = v0[11];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  v16 = sub_2664DF6F8();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  v18 = *(type metadata accessor for MusicSiriItemIdentifierResponse(0) + 20);
  v17(v15 + v18, 1, 1, v16);
  *v15 = v21;
  v15[1] = v6;
  sub_26639A1B8(v14, v15 + v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_26639AC34()
{
  v1 = v0[33];
  v2 = v0[15];
  v3 = v0[11];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
  v4 = sub_2664DF6F8();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  v6(v2, v5 ^ 1u, 1, v4);
  v7 = *(type metadata accessor for MusicSiriItemIdentifierResponse(0) + 20);
  v6(v3 + v7, 1, 1, v4);
  *v3 = 0;
  v3[1] = 0;
  sub_26639A1B8(v2, v3 + v7);

  v8 = v0[1];

  return v8();
}

unint64_t sub_26639ADF8()
{
  result = qword_2800731C0;
  if (!qword_2800731C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800731C0);
  }

  return result;
}

uint64_t sub_26639AE4C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2662BD660;

  return sub_26639A3B8(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MusicSiriItemProviding.getMusicSiriItemIdentifier(requestString:musicSiriItemRequestType:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2662C1890;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

void sub_26639B098(uint64_t a1)
{
  sub_26639B11C();
  if (v1 <= 0x3F)
  {
    sub_26639B16C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26639B11C()
{
  if (!qword_2800731D8)
  {
    v0 = sub_2664E0948();
    if (!v1)
    {
      atomic_store(v0, &qword_2800731D8);
    }
  }
}

void sub_26639B16C(uint64_t a1)
{
  if (!qword_2800731E0)
  {
    sub_2664DF6F8();
    v1 = sub_2664E0948();
    if (!v2)
    {
      atomic_store(v1, &qword_2800731E0);
    }
  }
}

uint64_t dispatch thunk of MusicSiriItemProvider.getMusicSiriItemIdentifier(requestString:musicSiriItemRequestType:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 88) + **(*v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2662BD660;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_26639B378(uint64_t a1)
{
  result = MEMORY[0x266783640](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2664D0458(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t INMediaSearch.toAudioMediaItem()()
{
  v1 = v0;
  v2 = sub_2664DFBE8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1 mediaName];
  if (v5)
  {
    v6 = v5;
    sub_2664E02C8();
  }

  sub_2663ECB60([v1 mediaType], v4);
  v7 = [v1 artistName];
  if (v7)
  {
    v8 = v7;
    sub_2664E02C8();
  }

  return sub_2664DFBF8();
}

uint64_t sub_26639B5CC()
{
  result = [v0 mediaType];
  if (result)
  {
    if ([v0 reference] || objc_msgSend(v0, sel_sortOrder))
    {
      return 0;
    }

    v2 = [v0 albumName];
    if (v2)
    {
      goto LABEL_6;
    }

    v2 = [v0 mediaName];
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = [v0 genreNames];
    if (v3)
    {

      result = [v0 genreNames];
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = sub_2664E04A8();

      v6 = *(v5 + 16);

      if (v6)
      {
        return 0;
      }
    }

    v2 = [v0 artistName];
    if (v2)
    {
LABEL_6:

      return 0;
    }

    v7 = [v0 moodNames];
    if (!v7)
    {
LABEL_16:
      v2 = [v0 releaseDate];
      if (!v2)
      {
        v2 = [v0 mediaIdentifier];
        if (!v2)
        {
          return 1;
        }
      }

      goto LABEL_6;
    }

    result = [v0 moodNames];
    if (result)
    {
      v8 = result;
      v9 = sub_2664E04A8();

      v10 = *(v9 + 16);

      if (v10)
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t INMediaSearch.resolvedAlbumName.getter()
{
  v1 = [v0 albumName];
  if (!v1)
  {
    v4 = [v0 mediaName];
    if (v4)
    {
      v5 = v4;
      v3 = sub_2664E02C8();

      if ([v0 mediaType] == 2)
      {
        return v3;
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = sub_2664E02C8();

  return v3;
}

uint64_t INMediaSearch.resolvedArtistName.getter()
{
  v1 = [v0 artistName];
  if (!v1)
  {
    v4 = [v0 mediaName];
    if (v4)
    {
      v5 = v4;
      v3 = sub_2664E02C8();

      if ([v0 mediaType] == 3)
      {
        return v3;
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = sub_2664E02C8();

  return v3;
}

id INMediaSearch.resolvedMediaName.getter()
{
  if (([v0 mediaType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  result = [v0 mediaName];
  if (result)
  {
    v2 = result;
    v3 = sub_2664E02C8();

    return v3;
  }

  return result;
}

Swift::Bool __swiftcall INMediaSearch.termsEqual(to:)(INMediaSearch_optional to)
{
  isa = to.value.super.isa;
  v3 = sub_2664DFE38();
  v124 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v119 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v116 = &v109 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v115 = &v109 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v109 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v109 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v112 = &v109 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v109 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v111 = &v109 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v109 - v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v124 + 16);
  v120 = v24;
  v121 = v25;
  v122 = v124 + 16;
  v25(v23, v24, v3);
  v26 = isa;
  v27 = v1;
  v123 = isa;
  v28 = v27;
  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  v31 = os_log_type_enabled(v29, v30);
  v113 = v15;
  v114 = v12;
  v117 = v26;
  v118 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2080;
    v125 = v123;
    v126 = v34;
    v35 = v28;
    v36 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EC8, qword_2664E8BA0);
    v37 = sub_2664E0318();
    v39 = v3;
    v40 = sub_2662A320C(v37, v38, &v126);
    v41 = v124;

    *(v32 + 14) = v40;
    v3 = v39;
    _os_log_impl(&dword_26629C000, v29, v30, "INMediaSearch#termsEqual comparing: %@ with %s", v32, 0x16u);
    sub_2662A9238(v33, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);

    v42 = *(v41 + 8);
    v42(v23, v39);
  }

  else
  {

    v42 = *(v124 + 8);
    v42(v23, v3);
  }

  v43 = v119;
  if (!v123)
  {
    v121(v119, v120, v3);
    v44 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v44, v51, "INMediaSearch#termsEqual comparing to nil, not equal terms", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    goto LABEL_83;
  }

  v44 = v117;
  v45 = v118;
  v46 = [v118 artistName];
  if (v46)
  {
    v47 = v46;
    v48 = sub_2664E02C8();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v53 = [v44 artistName];
  if (!v53)
  {
    if (!v50)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v54 = v53;
  v55 = sub_2664E02C8();
  v57 = v56;

  if (!v50)
  {
    if (!v57)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!v57)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v48 == v55 && v50 == v57)
  {

    goto LABEL_25;
  }

  v62 = sub_2664E0D88();

  if ((v62 & 1) == 0)
  {
LABEL_22:
    v43 = v116;
    v121(v116, v120, v3);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_82;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "INMediaSearch#termsEqual artist names not matching, not equal terms";
LABEL_81:
    _os_log_impl(&dword_26629C000, v58, v59, v61, v60, 2u);
    MEMORY[0x266784AD0](v60, -1, -1);
    goto LABEL_82;
  }

LABEL_25:
  v63 = [v45 mediaName];
  if (v63)
  {
    v64 = v63;
    v65 = sub_2664E02C8();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = [v44 mediaName];
  if (!v68)
  {
    if (!v67)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v69 = v68;
  v70 = sub_2664E02C8();
  v72 = v71;

  if (!v67)
  {
    if (!v72)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (!v72)
  {
LABEL_37:

LABEL_38:
    v43 = v115;
    v121(v115, v120, v3);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_82;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "INMediaSearch#termsEqual media names not matching, not equal terms";
    goto LABEL_81;
  }

  if (v65 == v70 && v67 == v72)
  {

    goto LABEL_41;
  }

  v73 = sub_2664E0D88();

  if ((v73 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  v74 = [v45 mediaType];
  if (v74 != [v44 mediaType])
  {
    v43 = v114;
    v121(v114, v120, v3);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_82;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "INMediaSearch#termsEqual media types not matching, not equal terms";
    goto LABEL_81;
  }

  v75 = [v45 albumName];
  if (v75)
  {
    v76 = v75;
    v77 = sub_2664E02C8();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = [v44 albumName];
  if (!v80)
  {
    if (!v79)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  v81 = v80;
  v82 = sub_2664E02C8();
  v84 = v83;

  if (!v79)
  {
    if (!v84)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (!v84)
  {
LABEL_56:

LABEL_57:
    v43 = v113;
    v121(v113, v120, v3);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_82;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "INMediaSearch#termsEqual album names not matching, not equal terms";
    goto LABEL_81;
  }

  if (v77 == v82 && v79 == v84)
  {

    goto LABEL_60;
  }

  v85 = sub_2664E0D88();

  if ((v85 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v86 = [v45 genreNames];
  if (v86)
  {
    v87 = v86;
    v88 = sub_2664E04A8();
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v89 = sub_26639EB98(v88);

  v90 = [v44 genreNames];
  if (v90)
  {
    v91 = v90;
    v92 = sub_2664E04A8();
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
  }

  v93 = sub_26639EB98(v92);

  v94 = sub_26639C5D0(v89, v93);

  if ((v94 & 1) == 0)
  {
    v43 = v112;
    v121(v112, v120, v3);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_82;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "INMediaSearch#termsEqual genre names not matching, not equal terms";
    goto LABEL_81;
  }

  v95 = [v45 moodNames];
  if (v95)
  {
    v96 = v95;
    v97 = sub_2664E04A8();
  }

  else
  {
    v97 = MEMORY[0x277D84F90];
  }

  v98 = sub_26639EB98(v97);

  v99 = [v44 moodNames];
  if (v99)
  {
    v100 = v99;
    v101 = sub_2664E04A8();
  }

  else
  {
    v101 = MEMORY[0x277D84F90];
  }

  v102 = sub_26639EB98(v101);

  v103 = sub_26639C5D0(v98, v102);

  if ((v103 & 1) == 0)
  {
    v43 = v110;
    v121(v110, v120, v3);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "INMediaSearch#termsEqual mood names not matching, not equal terms";
      goto LABEL_81;
    }

LABEL_82:

LABEL_83:
    v107 = 0;
    goto LABEL_84;
  }

  v43 = v111;
  v121(v111, v120, v3);
  v104 = sub_2664DFE18();
  v105 = sub_2664E06C8();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_26629C000, v104, v105, "INMediaSearch#termsEqual equal terms", v106, 2u);
    v43 = v111;
    MEMORY[0x266784AD0](v106, -1, -1);
  }

  v107 = 1;
LABEL_84:

  v42(v43, v3);
  return v107;
}

uint64_t sub_26639C5D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_2664E0E68();

    sub_2664E0368();
    v16 = sub_2664E0EB8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL static INMediaSearch.sameSearchTerms(one:two:)(void *a1, objc_class *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  v3 = a1;
  v6.value.super.isa = a2;
  v4 = INMediaSearch.termsEqual(to:)(v6);

  return v4;
}

Class INMediaSearch.with(mediaType:sortOrder:mediaName:artistName:albumName:genreNames:moodNames:releaseDate:reference:mediaIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2662C1744(0, &qword_280072F18, 0x277CD3DC8);

  v14 = a11;
  v15 = sub_2664E06A8();
  isa = INMediaSearch.with(other:)(v15).super.isa;

  return isa;
}

INMediaSearch __swiftcall INMediaSearch.with(other:)(INMediaSearch other)
{
  v3 = [(objc_class *)other.super.isa mediaIdentifier];
  if (v3 || (v3 = [v1 mediaIdentifier]) != 0)
  {
    v4 = v3;
    sub_2664E02C8();
  }

  if ([(objc_class *)other.super.isa mediaType])
  {
    isa = other.super.isa;
  }

  else
  {
    isa = v1;
  }

  [(objc_class *)isa mediaType];
  if ([(objc_class *)other.super.isa sortOrder])
  {
    v6 = other.super.isa;
  }

  else
  {
    v6 = v1;
  }

  [(objc_class *)v6 sortOrder];
  v7 = [(objc_class *)other.super.isa mediaName];
  if (v7 || (v7 = [v1 mediaName]) != 0)
  {
    v8 = v7;
    sub_2664E02C8();
  }

  v9 = [(objc_class *)other.super.isa artistName];
  if (v9 || (v9 = [v1 artistName]) != 0)
  {
    v10 = v9;
    sub_2664E02C8();
  }

  v11 = [(objc_class *)other.super.isa albumName];
  if (v11 || (v11 = [v1 albumName]) != 0)
  {
    v12 = v11;
    sub_2664E02C8();
  }

  v13 = [v1 genreNames];
  if (v13)
  {
    v14 = v13;
    sub_2664E04A8();
  }

  v15 = [(objc_class *)other.super.isa genreNames];
  if (v15)
  {
    v16 = v15;
    sub_2664E04A8();
  }

  v17 = [v1 moodNames];
  if (v17)
  {
    v18 = v17;
    sub_2664E04A8();
  }

  v19 = [(objc_class *)other.super.isa moodNames];
  if (v19)
  {
    v20 = v19;
    sub_2664E04A8();
  }

  if (![(objc_class *)other.super.isa releaseDate])
  {
    [v1 releaseDate];
  }

  if ([(objc_class *)other.super.isa reference])
  {
    v21 = other.super.isa;
  }

  else
  {
    v21 = v1;
  }

  [(objc_class *)v21 reference];
  sub_2662C1744(0, &qword_280072F18, 0x277CD3DC8);
  return sub_2664E06A8();
}

Swift::String_optional __swiftcall INMediaSearch.extractSearchTerms()()
{
  v2 = v0;
  v3 = [v0 mediaName];
  if (v3)
  {
    v1 = v3;
    v4 = sub_2664E02C8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v49 = v4;
  v50 = v6;
  v7 = [v2 artistName];
  if (v7)
  {
    v1 = v7;
    v8 = sub_2664E02C8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v51 = v8;
  v52 = v10;
  v11 = [v2 albumName];
  if (v11)
  {
    v1 = v11;
    v12 = sub_2664E02C8();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = 0;
  v53 = v12;
  v54 = v14;
  v16 = MEMORY[0x277D84F90];
LABEL_11:
  if (v15 <= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17 + 1;
  v19 = 16 * v15 + 40;
  while (v15 != 3)
  {
    if (v18 == ++v15)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v2 = sub_2663846F4(0, *(v2 + 2) + 1, 1, v2);
LABEL_33:
      v34 = *(v2 + 2);
      v33 = *(v2 + 3);
      v35 = (v34 + 1);
      if (v34 >= v33 >> 1)
      {
        v2 = sub_2663846F4((v33 > 1), v34 + 1, 1, v2);
      }

      *(v2 + 2) = v35;
      v36 = &v2[16 * v34];
      *(v36 + 4) = v14;
      *(v36 + 5) = v1;
      v55 = v2;
      goto LABEL_37;
    }

    v20 = v19 + 16;
    v14 = *&v48[v19];
    v19 += 16;
    if (v14)
    {
      v21 = *&v48[v20 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2663846F4(0, *(v16 + 2) + 1, 1, v16);
      }

      v23 = *(v16 + 2);
      v22 = *(v16 + 3);
      v1 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v16 = sub_2663846F4((v22 > 1), v23 + 1, 1, v16);
      }

      *(v16 + 2) = v1;
      v24 = &v16[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v14;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  swift_arrayDestroy();
  v55 = v16;
  v25 = [v2 genreNames];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2664E04A8();

    if (*(v27 + 16))
    {
      sub_2662F9CB0(v27);
    }

    else
    {
    }
  }

  v28 = [v2 moodNames];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2664E04A8();

    if (*(v30 + 16))
    {
      sub_2662F9CB0(v30);
    }

    else
    {
    }
  }

  v31 = sub_26639D0A0();
  v2 = v55;
  if (v32)
  {
    v14 = v31;
    v1 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v35 = *(v55 + 2);
  if (!v35)
  {

    v43 = 0;
    goto LABEL_45;
  }

LABEL_37:
  v37 = 0;
  v38 = (v2 + 40);
  v14 = MEMORY[0x277D84F90];
  do
  {
    if (v37 >= *(v2 + 2))
    {
      goto LABEL_48;
    }

    v39 = *(v38 - 1);
    v1 = *v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2663846F4(0, *(v14 + 2) + 1, 1, v14);
    }

    v41 = *(v14 + 2);
    v40 = *(v14 + 3);
    if (v41 >= v40 >> 1)
    {
      v14 = sub_2663846F4((v40 > 1), v41 + 1, 1, v14);
    }

    ++v37;
    *(v14 + 2) = v41 + 1;
    v42 = &v14[16 * v41];
    *(v42 + 4) = v39;
    *(v42 + 5) = v1;
    v38 += 2;
  }

  while (v35 != v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_26639EC30();
  v43 = sub_2664E0288();
  v35 = v44;

LABEL_45:
  v45 = v43;
  v46 = v35;
  result.value._object = v46;
  result.value._countAndFlagsBits = v45;
  return result;
}

void *sub_26639D0A0()
{
  v1 = sub_2664DFE38();
  v202 = *(v1 - 8);
  v203 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v198 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v188 = &v169 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v173 = &v169 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v174 = &v169 - v9;
  MEMORY[0x28223BE20](v8);
  v176 = &v169 - v10;
  v11 = sub_2664DE358();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v196 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DE1C8();
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DE5B8();
  MEMORY[0x28223BE20](v16 - 8);
  v197 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DE518();
  MEMORY[0x28223BE20](v18 - 8);
  v192 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731F0, &qword_2664E9A60);
  MEMORY[0x28223BE20](v20 - 8);
  v191 = &v169 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731F8, &qword_2664E9A68);
  MEMORY[0x28223BE20](v22 - 8);
  v190 = &v169 - v23;
  v186 = sub_2664DE368();
  v195 = *(v186 - 8);
  v24 = MEMORY[0x28223BE20](v186);
  v185 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v194 = &v169 - v26;
  v182 = sub_2664DE178();
  v178 = *(v182 - 8);
  v27 = MEMORY[0x28223BE20](v182);
  v175 = &v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v177 = &v169 - v29;
  v180 = sub_2664DE598();
  v179 = *(v180 - 8);
  v30 = MEMORY[0x28223BE20](v180);
  v189 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v184 = (&v169 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v169 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v169 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v169 - v43;
  v45 = sub_2664DE438();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  *&v187 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v183 = &v169 - v50;
  MEMORY[0x28223BE20](v49);
  v201 = &v169 - v51;
  v52 = [v0 releaseDate];
  if (!v52)
  {
    (*(v46 + 56))(v44, 1, 1, v45);
LABEL_7:
    sub_2662A9238(v44, &qword_2800737D0, qword_2664E4FD0);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v61 = v203;
    v62 = __swift_project_value_buffer(v203, qword_280F914F0);
    swift_beginAccess();
    v63 = v202;
    v64 = v198;
    (*(v202 + 16))(v198, v62, v61);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06C8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "INMediaSearch#extractYearOrDecadeAsString startDate nil", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    (*(v63 + 8))(v64, v61);
    return 0;
  }

  v53 = v52;
  v172 = v12;
  v199 = v45;
  v200 = v46;
  v54 = [v52 startDate];

  v181 = v11;
  if (v54)
  {
    sub_2664DE3F8();

    v55 = v200;
    v56 = v200[7];
    v57 = v42;
    v58 = 0;
  }

  else
  {
    v55 = v200;
    v56 = v200[7];
    v57 = v42;
    v58 = 1;
  }

  v59 = v199;
  v56(v57, v58, 1, v199);
  sub_26639F090(v42, v44);
  v60 = v55[6];
  if (v60(v44, 1, v59) == 1)
  {
    goto LABEL_7;
  }

  v69 = v44;
  v70 = v55[4];
  v70(v201, v69, v59);
  v71 = [v0 releaseDate];
  if (v71)
  {
    v72 = v71;
    v73 = [v71 endDate];

    if (v73)
    {
      sub_2664DE3F8();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v75 = v203;
    v59 = v199;
    v56(v36, v74, 1, v199);
    sub_26639F090(v36, v39);
    if (v60(v39, 1, v59) == 1)
    {
      goto LABEL_19;
    }

    v70(v183, v39, v59);
    sub_2664DE568();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073208, &unk_2664E9A70);
    v108 = sub_2664DE578();
    v109 = *(v108 - 8);
    v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v188 = *(v109 + 72);
    v198 = v107;
    v111 = swift_allocObject();
    v187 = xmmword_2664E36F0;
    *(v111 + 16) = xmmword_2664E36F0;
    v112 = *(v109 + 104);
    v171 = *MEMORY[0x277CC9968];
    v170 = v112;
    v112(v111 + v110);
    sub_2662C43B4(v111);
    swift_setDeallocating();
    v169 = *(v109 + 8);
    v169(v111 + v110, v108);
    swift_deallocClassInstance();
    v113 = v177;
    sub_2664DE528();

    v114 = sub_2664DE158();
    v116 = v115;
    v117 = *(v178 + 8);
    v117(v113, v182);
    if ((v116 & 1) != 0 || (v114 - 3654) < 0xFFFFFFFFFFFFFFFCLL)
    {
      v136 = swift_allocObject();
      *(v136 + 16) = v187;
      v170(v136 + v110, v171, v108);
      sub_2662C43B4(v136);
      swift_setDeallocating();
      v169(v136 + v110, v108);
      swift_deallocClassInstance();
      v137 = v175;
      sub_2664DE528();

      v138 = sub_2664DE158();
      v140 = v139;
      v117(v137, v182);
      if ((v140 & 1) != 0 || v138 != 365)
      {
        v158 = v202;
        v159 = v203;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v160 = __swift_project_value_buffer(v159, qword_280F914F0);
        swift_beginAccess();
        v161 = v173;
        (*(v158 + 16))(v173, v160, v159);
        v162 = sub_2664DFE18();
        v163 = sub_2664E06C8();
        v164 = os_log_type_enabled(v162, v163);
        v165 = v200;
        if (v164)
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&dword_26629C000, v162, v163, "INMediaSearch#extractYearOrDecadeAsString range not 1 year or a decade. Returning nil", v166, 2u);
          MEMORY[0x266784AD0](v166, -1, -1);
        }

        (*(v158 + 8))(v161, v159);
        (*(v179 + 8))(v184, v180);
        v167 = v165[1];
        v168 = v199;
        v167(v183, v199);
        v167(v201, v168);
        return 0;
      }

      v141 = sub_2664DE318();
      (*(*(v141 - 8) + 56))(v190, 1, 1, v141);
      v142 = sub_2664DE308();
      (*(*(v142 - 8) + 56))(v191, 1, 1, v142);
      sub_2664DE4F8();
      sub_2664DE548();
      sub_2664DE5A8();
      sub_2664DE1B8();
      v143 = v185;
      sub_2664DE328();
      v144 = v196;
      sub_2664DE348();
      v145 = v194;
      sub_2664DE338();
      (*(v172 + 8))(v144, v181);
      v146 = *(v195 + 8);
      v147 = v143;
      v148 = v186;
      v146(v147, v186);
      sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      sub_2664DE418();
      v146(v145, v148);
      v127 = v207;
      v149 = v208;
      v130 = v202;
      v128 = v203;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v150 = __swift_project_value_buffer(v128, qword_280F914F0);
      swift_beginAccess();
      v131 = v174;
      (*(v130 + 16))(v174, v150, v128);

      v132 = sub_2664DFE18();
      v151 = sub_2664E06C8();

      if (os_log_type_enabled(v132, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v205 = v153;
        *v152 = 136315138;
        *(v152 + 4) = sub_2662A320C(v127, v149, &v205);
        _os_log_impl(&dword_26629C000, v132, v151, "INMediaSearch#extractYearOrDecadeAsString returning year: %s", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v153);
        MEMORY[0x266784AD0](v153, -1, -1);
        MEMORY[0x266784AD0](v152, -1, -1);

        (*(v130 + 8))(v174, v128);
        goto LABEL_37;
      }
    }

    else
    {
      v118 = sub_2664DE318();
      (*(*(v118 - 8) + 56))(v190, 1, 1, v118);
      v119 = sub_2664DE308();
      (*(*(v119 - 8) + 56))(v191, 1, 1, v119);
      sub_2664DE4F8();
      sub_2664DE548();
      sub_2664DE5A8();
      sub_2664DE1B8();
      v120 = v185;
      sub_2664DE328();
      v121 = v196;
      sub_2664DE348();
      v122 = v194;
      sub_2664DE338();
      (*(v172 + 8))(v121, v181);
      v123 = *(v195 + 8);
      v124 = v120;
      v125 = v186;
      v123(v124, v186);
      sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      sub_2664DE418();
      v123(v122, v125);
      v205 = v207;
      v206 = v208;

      MEMORY[0x2667833B0](115, 0xE100000000000000);

      v127 = v205;
      v126 = v206;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v128 = v203;
      v129 = __swift_project_value_buffer(v203, qword_280F914F0);
      swift_beginAccess();
      v130 = v202;
      v131 = v176;
      (*(v202 + 16))(v176, v129, v128);

      v132 = sub_2664DFE18();
      v133 = sub_2664E06C8();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v205 = v135;
        *v134 = 136315138;
        *(v134 + 4) = sub_2662A320C(v127, v126, &v205);
        _os_log_impl(&dword_26629C000, v132, v133, "INMediaSearch#extractYearOrDecadeAsString returning decade: %s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        MEMORY[0x266784AD0](v135, -1, -1);
        MEMORY[0x266784AD0](v134, -1, -1);

        (*(v130 + 8))(v176, v128);
LABEL_37:
        (*(v179 + 8))(v184, v180);
        v154 = v199;
        v155 = v200[1];
        v155(v183, v199);
        v155(v201, v154);
        return v127;
      }
    }

    (*(v130 + 8))(v131, v128);
    (*(v179 + 8))(v184, v180);
    v156 = v199;
    v157 = v200[1];
    v157(v183, v199);
    v157(v201, v156);
    return v127;
  }

  v56(v39, 1, 1, v59);
  v75 = v203;
LABEL_19:
  sub_2662A9238(v39, &qword_2800737D0, qword_2664E4FD0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v75, qword_280F914F0);
  swift_beginAccess();
  v77 = v202;
  v78 = v188;
  (*(v202 + 16))(v188, v76, v75);
  v79 = v200;
  v80 = v187;
  (v200[2])(v187, v201, v59);
  v81 = sub_2664DFE18();
  v82 = sub_2664E06C8();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v181;
  v85 = v196;
  if (v83)
  {
    v86 = swift_slowAlloc();
    v183 = v86;
    v184 = swift_slowAlloc();
    v204 = v184;
    *v86 = 136315138;
    v87 = sub_2664DE318();
    (*(*(v87 - 8) + 56))();
    v88 = sub_2664DE308();
    (*(*(v88 - 8) + 56))(v191, 1, 1, v88);
    sub_2664DE4F8();
    LODWORD(v182) = v82;
    sub_2664DE548();
    sub_2664DE5A8();
    sub_2664DE1B8();
    v89 = v185;
    sub_2664DE328();
    sub_2664DE348();
    v90 = v187;
    v91 = v194;
    v92 = v81;
    sub_2664DE338();
    (*(v172 + 8))(v85, v84);
    v93 = v200;
    v94 = *(v195 + 8);
    v95 = v186;
    v94(v89, v186);
    sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_2664DE418();
    v94(v91, v95);
    v96 = v93[1];
    v198 = ((v93 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v97 = v190;
    v200 = v96;
    (v96)(v90, v199);
    v85 = v196;
    v98 = sub_2662A320C(v205, v206, &v204);

    v99 = v183;
    *(v183 + 4) = v98;
    v59 = v199;
    _os_log_impl(&dword_26629C000, v92, v182, "INMediaSearch#extractYearOrDecadeAsString endDate nil. Returning start year: %s", v99, 0xCu);
    v100 = v184;
    __swift_destroy_boxed_opaque_existential_1Tm(v184);
    MEMORY[0x266784AD0](v100, -1, -1);
    MEMORY[0x266784AD0](v99, -1, -1);

    (*(v202 + 8))(v188, v203);
  }

  else
  {

    v101 = v79[1];
    v198 = ((v79 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v200 = v101;
    (v101)(v80, v59);
    (*(v77 + 8))(v78, v203);
    v95 = v186;
    v89 = v185;
    v97 = v190;
  }

  v102 = sub_2664DE318();
  (*(*(v102 - 8) + 56))(v97, 1, 1, v102);
  v103 = sub_2664DE308();
  (*(*(v103 - 8) + 56))(v191, 1, 1, v103);
  sub_2664DE4F8();
  sub_2664DE548();
  sub_2664DE5A8();
  sub_2664DE1B8();
  sub_2664DE328();
  sub_2664DE348();
  v104 = v194;
  sub_2664DE338();
  (*(v172 + 8))(v85, v181);
  v105 = *(v195 + 8);
  v105(v89, v95);
  sub_26639EFF8(&qword_280073200, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  v106 = v201;
  sub_2664DE418();
  v105(v104, v95);
  (v200)(v106, v59);
  return v205;
}

uint64_t sub_26639EB98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266783640](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2664D0458(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26639EC30()
{
  result = qword_280F8F658;
  if (!qword_280F8F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280072440, &qword_2664E3600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F658);
  }

  return result;
}

uint64_t sub_26639EC94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266783640](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_266350228(v4, v5);
      sub_2664D05A8(v6, v5);
      sub_266350284(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t *sub_26639ED80(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2664E0A68())
  {
    v12 = sub_2662C1744(0, a2, a3);
    v13 = sub_26639F040(a4, a2, a3);
    result = MEMORY[0x266783640](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x266783B70](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_2664E0A68();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26639EED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for INMediaItemType(0);
  v4 = v3;
  v5 = sub_26639EFF8(&qword_280F8F630, type metadata accessor for INMediaItemType, &unk_2664E2E60);
  result = MEMORY[0x266783640](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_2664D09B0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_26639EF84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266783640](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2664D0AA8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_26639EFF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26639F040(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2662C1744(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26639F090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26639F104(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2664E02C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

id sub_26639F19C()
{
  type metadata accessor for MultiUserConnectionProvider();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  *(v0 + 16) = result;
  qword_280F8F808 = v0;
  return result;
}

uint64_t sub_26639F1F0()
{
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v0;
  v3[4] = v1;
  type metadata accessor for MultiUserContext();
  v4 = swift_allocObject();
  v4[2] = sub_26639F7F0;
  v4[3] = v3;
  v4[4] = v0;
  swift_retain_n();
  v5 = v2;

  v6 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v6, v7, sub_2663A0450, v4);

  sub_2664E0748();

  swift_beginAccess();
  v8 = *(v1 + 16);

  return v8;
}

void sub_26639F358(uint64_t a1, unint64_t a2, void *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  if (a3 || !a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v32, v12);
    v33 = a3;
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      if (a3)
      {
        v38 = a3;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v36 + 4) = v39;
      *v37 = v40;
      _os_log_impl(&dword_26629C000, v34, v35, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving homeUserID %@", v36, 0xCu);
      sub_2662A9238(v37, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    dispatch_group_leave(a4);
  }

  else
  {
    v42 = a5;
    v19 = qword_280F914E8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v18, v20, v12);

    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = a4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2662A320C(a1, a2, &v43);
      _os_log_impl(&dword_26629C000, v21, v22, "MultiUserConnectionProvider#getRecognizedSharedUserID homeUserID: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266784AD0](v25, -1, -1);
      v26 = v24;
      a4 = v41;
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = a2;
    v27[4] = a4;
    v27[5] = a6;
    type metadata accessor for MultiUserContext();
    v28 = swift_allocObject();
    v28[2] = sub_2663A2D58;
    v28[3] = v27;
    v28[4] = v42;
    v29 = a4;

    v30 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
    static MultiUserContext.shared(refId:completion:)(v30, v31, sub_2663A2DBC, v28);
  }
}

void sub_26639F7FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, NSObject *a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  if (a2)
  {
    goto LABEL_16;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v19 = sub_2662A3E98(a3, a4);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = *(*(a1 + 56) + 8 * v19);
  v46[0] = sub_2664E02C8();
  v46[1] = v22;

  sub_2664E0AB8();
  if (!*(v21 + 16) || (v23 = sub_26634D9F8(v47), (v24 & 1) == 0))
  {

    sub_266350284(v47);
LABEL_14:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_15;
  }

  sub_2662A01E8(*(v21 + 56) + 32 * v23, &v48);
  sub_266350284(v47);

  if (!*(&v49 + 1))
  {
LABEL_15:
    sub_2662A9238(&v48, &unk_280074250, &unk_2664E3680);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v26 = v47[0];
    v25 = v47[1];
    swift_beginAccess();
    *(a6 + 16) = v26;
    *(a6 + 24) = v25;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v18, v27, v12);

    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();

    v45 = v28;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46[0] = v44;
      *v30 = 136315394;
      v31 = sub_2662A320C(v26, v25, v46);

      *(v30 + 4) = v31;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2662A320C(a3, a4, v46);
      v32 = v45;
      _os_log_impl(&dword_26629C000, v45, v29, "MultiUserConnectionProvider#getRecognizedSharedUserID SharedUserID: %s, homeUserID: %s", v30, 0x16u);
      v33 = v44;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v18, v12);
    goto LABEL_24;
  }

LABEL_16:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v34, v12);
  v35 = a2;
  v36 = sub_2664DFE18();
  v37 = sub_2664E06D8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    if (a2)
    {
      v40 = a2;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = v41;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(v38 + 4) = v41;
    *v39 = v42;
    _os_log_impl(&dword_26629C000, v36, v37, "MultiUserConnectionProvider#getRecognizedSharedUserID Error retrieving sharedUserID %@", v38, 0xCu);
    sub_2662A9238(v39, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
LABEL_24:
  dispatch_group_leave(a5);
}

void sub_26639FD64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    v12 = *(a1 + 32);
    if (*(v12 + 16))
    {

      v13 = sub_2662A3E98(a2, a3);
      if (v14)
      {
        v15 = (*(v12 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];

        a4(v16, v17, 0);

        return;
      }
    }
  }

  v18 = *(a6 + 16);
  v19 = sub_2664E02A8();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  aBlock[4] = sub_2663A2D1C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26639F104;
  aBlock[3] = &block_descriptor_109;
  v21 = _Block_copy(aBlock);

  [v18 getFirstNameForSharedUserId:v19 completion:v21];
  _Block_release(v21);
}

uint64_t sub_26639FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3 && a4)
  {
    swift_beginAccess();

    sub_266448E34(a1, a2, a5, a6);
    swift_endAccess();
    a3 = 0;
  }

  return a7(a1, a2, a3, a4, a5, a6);
}

uint64_t static MultiUserContext.shared(refId:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280071B98 != -1)
    {
      swift_once();
    }

    v13 = off_280073210;
    v23[0] = a1;
    v23[1] = a2;
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = v4;
    v14[5] = v4;
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = *(*v13 + 160);

    v16(v23, sub_2663A2634, v14, 0, 1, sub_2662DBE30, v15);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v12, v18, v9);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "MultiUserContext#shared Cannot retrieve context for nil refId", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    return a3(0);
  }
}

void sub_2663A0304(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4)
{
  if (a1 && (swift_beginAccess(), (v8 = *(a1 + 64)) != 0))
  {
    v9 = *(a1 + 56);

    a2(v9, v8, 0);
  }

  else
  {
    v10 = *(a4 + 16);
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    aBlock[4] = sub_2663A2D4C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26639F104;
    aBlock[3] = &block_descriptor_115;
    v12 = _Block_copy(aBlock);

    [v10 getHomeUserIdOfRecognizedUserWithCompletion_];
    _Block_release(v12);
  }
}

uint64_t sub_2663A045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3 && a4)
  {
    swift_beginAccess();
    *(a4 + 56) = a1;
    *(a4 + 64) = a2;

    a3 = 0;
  }

  return a5(a1, a2, a3, a4);
}

uint64_t sub_2663A04F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  type metadata accessor for MultiUserContext();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = sub_2663A2640;
  v10[5] = v9;
  v10[6] = v4;

  v11 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v11, v12, sub_2663A2648, v10);
}

uint64_t sub_2663A0600(id a1, void (*a2)(id, uint64_t))
{
  if (a1 && (a1 = [a1 homeUserId]) != 0)
  {
    v3 = a1;
    v4 = sub_2664E02C8();
    v6 = v5;

    a1 = v4;
  }

  else
  {
    v6 = 0;
  }

  a2(a1, v6);
}

void sub_2663A06B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    v12 = *(a1 + 48);
    if (*(v12 + 16))
    {

      v13 = sub_2662A3E98(a2, a3);
      if (v14)
      {
        v15 = (*(v12 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];

        a4(v16, v17);

        return;
      }
    }
  }

  v18 = *(a6 + 16);
  v19 = sub_2664E02A8();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  aBlock[4] = sub_2663A298C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26639F104;
  aBlock[3] = &block_descriptor_91;
  v21 = _Block_copy(aBlock);

  [v18 getSharedUserIdForHomeUserId:v19 completion:v21];
  _Block_release(v21);
}

uint64_t sub_2663A0864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if (!a3 && a4)
  {
    swift_beginAccess();

    sub_266448E34(a1, a2, a5, a6);
    swift_endAccess();
  }

  return a7(a1, a2);
}

uint64_t sub_2663A093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  type metadata accessor for MultiUserContext();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = v6;

  v13 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v13, v14, a6, v12);
}

void sub_2663A09FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  v13 = sub_2662A3E98(a2, a3);
  if ((v14 & 1) == 0)
  {

LABEL_6:
    v17 = *(a6 + 16);
    v16 = sub_2664E02A8();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a4;
    v18[6] = a5;
    aBlock[4] = sub_2663A29A4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663A0C48;
    aBlock[3] = &block_descriptor_97;
    v19 = _Block_copy(aBlock);

    [v17 getSharedUserInfoForSharedUserID:v16 completion:v19];
    _Block_release(v19);
    goto LABEL_7;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = v15;
  a4(v15);

LABEL_7:
}

uint64_t sub_2663A0BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  if (a2)
  {
    swift_beginAccess();
    v9 = a1;

    sub_266448F3C(a1, a3, a4);
    swift_endAccess();
  }

  return a5(a1);
}

void sub_2663A0C48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2663A0CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for MultiUserContext();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v4;

  v9 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v9, v10, a4, v8);
}

void sub_2663A0D78(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  if (a1 && (swift_beginAccess(), *(a1 + 72)))
  {

    a2(v8, 0);
  }

  else
  {
    v9 = *(a4 + 16);
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    aBlock[4] = sub_2663A2980;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663A0F44;
    aBlock[3] = &block_descriptor_22;
    v11 = _Block_copy(aBlock);

    [v9 getConformingSharedUserIds_];
    _Block_release(v11);
  }
}

uint64_t sub_2663A0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!a2 && a3)
  {
    swift_beginAccess();
    *(a3 + 72) = a1;

    a2 = 0;
  }

  return a4(a1, a2, a3);
}

uint64_t sub_2663A0F44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073238, &unk_2664E9B78);
    v4 = sub_2664E01C8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t MultiUserConnectionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2663A108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for MultiUserContext();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = sub_2663A2DE0;
  v11[5] = v10;
  v11[6] = v9;

  v12 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v12, v13, sub_2663A2DD4, v11);
}

uint64_t sub_2663A11D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v14 = *v8;
  type metadata accessor for MultiUserContext();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v14;

  v16 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v16, v17, a8, v15);
}

uint64_t sub_2663A12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = *v6;
  type metadata accessor for MultiUserContext();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;

  v12 = _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0();
  static MultiUserContext.shared(refId:completion:)(v12, v13, a6, v11);
}

uint64_t sub_2663A1388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073240, qword_2664E9B88);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385DB8(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x80000002664E9B30;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000010, 0x80000002664E9B30, 1, v3);
  *(v0 + 24) = result;
  off_280073210 = v0;
  return result;
}

uint64_t sub_2663A149C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000017, 0x80000002664F6500, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073218 = v8;
  return result;
}

uint64_t sub_2663A1634()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280073220);
  *__swift_project_value_buffer(v0, qword_280073220) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_2663A16C4(void (*a1)(void **), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v59 = a2;
  v60 = a1;
  v8 = sub_2664E0038();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2664E00B8();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00E8();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v46 - v15;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiUserContext();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F98];
  v20[4] = MEMORY[0x277D84F98];
  v20[5] = v21;
  v20[6] = v21;
  v20[7] = 0;
  v20[8] = 0;
  v20[9] = 0;
  v20[2] = a3;
  v20[3] = a4;
  v22 = qword_280F914E8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v19, v23, v16);

  v24 = v16;
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();

  v27 = os_log_type_enabled(v25, v26);
  v49 = a3;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v48 = v14;
    v29 = v28;
    v47 = swift_slowAlloc();
    v61 = v47;
    *v29 = 136446466;
    *(v29 + 4) = sub_2662A320C(a3, a4, &v61);
    *(v29 + 12) = 2080;
    aBlock = 0;
    v63 = 0xE000000000000000;

    v46 = v24;
    sub_2664E0B28();

    aBlock = 0xD00000000000001ALL;
    v63 = 0x80000002664F6380;
    MEMORY[0x2667833B0](v20[2], v20[3]);
    MEMORY[0x2667833B0](32032, 0xE200000000000000);

    v30 = a5;
    v31 = a4;
    v32 = sub_2662A320C(aBlock, v63, &v61);

    *(v29 + 14) = v32;
    a4 = v31;
    a5 = v30;
    _os_log_impl(&dword_26629C000, v25, v26, "MultiUserContext#shared Retrieving (making new) shared context for refId: %{public}s, %s", v29, 0x16u);
    v33 = v47;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v33, -1, -1);
    v34 = v29;
    v14 = v48;
    MEMORY[0x266784AD0](v34, -1, -1);

    (*(v17 + 8))(v19, v46);
  }

  else
  {

    (*(v17 + 8))(v19, v24);
  }

  if (qword_280071BA0 != -1)
  {
    swift_once();
  }

  v48 = qword_280073218;
  sub_2664E00C8();
  if (qword_280071BA8 != -1)
  {
    swift_once();
  }

  v35 = sub_2664E0018();
  v36 = __swift_project_value_buffer(v35, qword_280073220);
  v37 = v50;
  MEMORY[0x266783140](v14, v36);
  v51 = *(v51 + 8);
  v38 = v14;
  v39 = v52;
  (v51)(v38, v52);
  v40 = swift_allocObject();
  v40[2] = v49;
  v40[3] = a4;
  v40[4] = a5;
  v66 = sub_2663A29D4;
  v67 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_2662A3F90;
  v65 = &block_descriptor_103;
  v41 = _Block_copy(&aBlock);

  v42 = v53;
  sub_2664E0068();
  v61 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v43 = v55;
  v44 = v58;
  sub_2664E0A08();
  MEMORY[0x2667837B0](v37, v42, v43, v41);
  _Block_release(v41);
  (*(v57 + 8))(v43, v44);
  (*(v54 + 8))(v42, v56);
  (v51)(v37, v39);

  aBlock = v20;
  v60(&aBlock);
}

uint64_t sub_2663A1DF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(a1, a2, &v14);
    _os_log_impl(&dword_26629C000, v9, v10, "MultiUserContext#sharedCompletion Removing old context with refId: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return sub_2663A29E0(a1, a2);
}

uint64_t sub_2663A2010(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2663A20B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_2663A2118()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_2663A2164(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *sub_2663A2208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2663A229C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2663A2344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t sub_2663A23DC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

unint64_t sub_2663A2474()
{
  sub_2664E0B28();

  MEMORY[0x2667833B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x2667833B0](32032, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

void *MultiUserContext.deinit()
{

  return v0;
}

uint64_t MultiUserContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2663A259C()
{
  v1 = *v0;
  sub_2664E0B28();

  MEMORY[0x2667833B0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x2667833B0](32032, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2663A29E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();

  if (!os_log_type_enabled(v9, v10))
  {

    result = (*(v5 + 8))(v7, v4);
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  *v11 = 136315138;
  v18 = v4;
  v19[0] = v12;
  v13 = a1;
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    a1 = 0x3E6C696E3CLL;
    v14 = 0xE500000000000000;
  }

  v15 = sub_2662A320C(a1, v14, v19);

  *(v11 + 4) = v15;
  a1 = v13;
  _os_log_impl(&dword_26629C000, v9, v10, "MultiUserContext#remove Contexts for refId: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  MEMORY[0x266784AD0](v12, -1, -1);
  MEMORY[0x266784AD0](v11, -1, -1);

  result = (*(v5 + 8))(v7, v18);
  if (a2)
  {
LABEL_10:
    if (qword_280071B98 != -1)
    {
      swift_once();
    }

    v19[0] = a1;
    v19[1] = a2;
    v17 = *(*off_280073210 + 192);

    v17(v19);
  }

  return result;
}

uint64_t objectdestroy_87Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_5Tm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2663A2DE4(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_2663A3088(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_2663A3088(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

uint64_t GenericMusicItemEntity.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t GenericMusicItemEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t GenericMusicItemEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GenericMusicItemEntity(uint64_t a1)
{
  result = qword_2800732B0;
  if (!qword_2800732B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2663A3CBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2663A3D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2663A3DD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenericMusicItemEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2663A3E1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t StringsFileResolver.value(for:table:bundle:locale:defaultValue:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v58 = a7;
  v59 = a8;
  v62 = a5;
  v67 = a1;
  v68 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v70 = sub_2664DE4C8();
  v71 = v18;
  v74[0] = 45;
  v74[1] = 0xE100000000000000;
  v72 = 95;
  v73 = 0xE100000000000000;
  sub_2662D2EBC();
  v66 = sub_2664E0998();
  v20 = v19;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v64 = *(v11 + 16);
  v65 = v21;
  v64(v17, v21, v10);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  v24 = os_log_type_enabled(v22, v23);
  v69 = v11;
  v60 = a2;
  v61 = a4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v74[0] = v26;
    *v25 = 136446722;
    *(v25 + 4) = sub_2662A320C(v67, a2, v74);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2662A320C(v68, a4, v74);
    *(v25 + 22) = 2082;

    v27 = v10;
    v28 = sub_2662A320C(v66, v20, v74);

    *(v25 + 24) = v28;
    v10 = v27;
    _os_log_impl(&dword_26629C000, v22, v23, "StringsFileResolver#value resolving key:%{public}s for table:%s using languageCode:%{public}s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v26, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    v29 = *(v69 + 8);
    v29(v17, v27);
  }

  else
  {

    v29 = *(v11 + 8);
    v29(v17, v10);
  }

  v30 = [objc_opt_self() sharedInstance];
  if (v30)
  {
    v31 = v30;
    v32 = v10;
    v33 = sub_2664E02A8();
    v34 = sub_2664E02A8();
    v35 = sub_2664E02A8();

    v36 = [v31 localizedStringForKey:v33 table:v34 bundle:v62 languageCode:v35];

    v10 = v32;
    if (v36)
    {
      v37 = sub_2664E02C8();
      v39 = v38;

      v64(v63, v65, v10);

      v40 = sub_2664DFE18();
      v41 = sub_2664E06E8();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v10;
        v44 = swift_slowAlloc();
        v74[0] = v44;
        *v42 = 136446210;

        v45 = sub_2662A320C(v37, v39, v74);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_26629C000, v40, v41, "StringsFileResolver#value found value:%{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x266784AD0](v44, -1, -1);
        MEMORY[0x266784AD0](v42, -1, -1);

        v46 = v63;
        v47 = v43;
      }

      else
      {

        v46 = v63;
        v47 = v10;
      }

      v29(v46, v47);
      return v37;
    }
  }

  else
  {
  }

  v48 = v57;
  v64(v57, v65, v10);
  v49 = v59;

  v50 = sub_2664DFE18();
  v51 = sub_2664E06D8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = v10;
    v54 = swift_slowAlloc();
    v74[0] = v54;
    *v52 = 136446210;
    v37 = v58;
    *(v52 + 4) = sub_2662A320C(v58, v49, v74);
    _os_log_impl(&dword_26629C000, v50, v51, "StringsFileResolver#value nil returned from localizedString. Returning defaultValue %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v52, -1, -1);

    v29(v48, v53);
  }

  else
  {

    v29(v48, v10);
    v37 = v58;
  }

  return v37;
}

uint64_t PThreadMutex.__allocating_init(name:abortOnFail:analyticsService:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = swift_allocObject();
  PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, v5, a4);
  return v8;
}

uint64_t sub_2663A4610()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  v10[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000013, 0x80000002664F6740, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F90F38 = v8;
  return result;
}

uint64_t PThreadMutex.init(name:abortOnFail:analyticsService:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v55 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = sub_2664DE4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v53 = a2;
  if (v19)
  {
  }

  else
  {
    sub_2664DE498();
    a1 = sub_2664DE458();
    a2 = v20;
    (*(v16 + 8))(v18, v15);
  }

  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3 & 1;
  v54 = a4;
  sub_2663A4DC0(a4, v5 + 56);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v22 = v55;
  v50 = *(v55 + 16);
  v51 = v21;
  v50(v14, v21, v10);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57 = v26;
    *v25 = 136315138;
    v27 = v10;
    v29 = *(v5 + 32);
    v28 = *(v5 + 40);

    v30 = sub_2662A320C(v29, v28, &v57);

    *(v25 + 4) = v30;
    v10 = v27;
    v22 = v55;
    _os_log_impl(&dword_26629C000, v23, v24, "PThreadMutex#init created mutex: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x266784AD0](v26, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v31 = *(v22 + 8);
  v31(v14, v10);
  v32 = swift_slowAlloc();
  *(v5 + 16) = v32;
  v33 = pthread_mutex_init(v32, 0);
  if (!v33)
  {
    sub_2662A9238(v54, &qword_2800732C0, &qword_2664E9E90);

    return v5;
  }

  v34 = v33;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000002DLL, 0x80000002664F6590);
  v56 = v34;
  v35 = sub_2664E0D48();
  MEMORY[0x2667833B0](v35);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  v36 = *(v5 + 32);
  v37 = *(v5 + 40);

  MEMORY[0x2667833B0](v36, v37);

  v39 = v57;
  v38 = v58;
  if (*(v5 + 48) != 1)
  {

    v40 = v52;
    v50(v52, v51, v10);

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v57 = v44;
      *v43 = 136315138;
      v45 = v10;
      v46 = sub_2662A320C(v39, v38, &v57);

      *(v43 + 4) = v46;
      _os_log_impl(&dword_26629C000, v41, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);

      sub_2662A9238(v54, &qword_2800732C0, &qword_2664E9E90);
      v47 = v52;
      v48 = v45;
    }

    else
    {

      sub_2662A9238(v54, &qword_2800732C0, &qword_2664E9E90);
      v47 = v40;
      v48 = v10;
    }

    v31(v47, v48);
    return v5;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_2663A4DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732C0, &qword_2664E9E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PThreadMutex.deinit()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v33 = *(v3 + 16);
  v33(v8, v9, v2);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = v6;
    v13 = v3;
    v14 = v12;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &v36);
    _os_log_impl(&dword_26629C000, v10, v11, "PThreadMutex#deinit for mutex: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    v16 = v14;
    v3 = v13;
    v6 = v34;
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v17(v8, v2);
  v18 = pthread_mutex_destroy(*(v1 + 16));
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000030, 0x80000002664F65F0);
  v35 = v19;
  v20 = sub_2664E0D48();
  MEMORY[0x2667833B0](v20);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  v21 = *(v1 + 32);
  v22 = *(v1 + 40);

  MEMORY[0x2667833B0](v21, v22);

  v24 = v36;
  v23 = v37;
  if (*(v1 + 48) != 1)
  {
    v33(v6, v9, v2);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = v6;
      v28 = v27;
      v29 = v17;
      v30 = swift_slowAlloc();
      v36 = v30;
      *v28 = 136315138;
      v31 = sub_2662A320C(v24, v23, &v36);

      *(v28 + 4) = v31;
      _os_log_impl(&dword_26629C000, v25, v26, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266784AD0](v30, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);

      v29(v34, v2);
    }

    else
    {

      v17(v6, v2);
    }

LABEL_10:
    MEMORY[0x266784AD0](*(v1 + 16), -1, -1);

    sub_2662A9238(v1 + 56, &qword_2800732C0, &qword_2664E9E90);
    return v1;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t PThreadMutex.__deallocating_deinit()
{
  PThreadMutex.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2663A5340()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2663A5370()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_2664DEA08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v21[0]) = 33;
  v24 = 36;
  v8 = sub_2663291B8(v21, &v24, 0xD000000000000017, 0x80000002664F1DC0, 0, 1);
  v10 = v9;
  sub_2663A4DC0(v0 + 56, v21);
  v11 = v22;
  if (v22)
  {
    v20 = v8;
    v12 = v23;
    v19 = __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v5 + 104))(v7, *MEMORY[0x277D5BBF0], v4);
    v18 = "x_unlock failed: ";
    v13 = *MEMORY[0x277D5B8D0];
    v14 = sub_2664DE808();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v3, v13, v14);
    (*(v15 + 56))(v3, 0, 1, v14);
    (*(v12 + 32))(v7, 0xD000000000000015, v18 | 0x8000000000000000, v3, v20, v10, v11, v12);

    sub_2662A9238(v3, &qword_280072AA0, &qword_2664E9EA0);
    (*(v5 + 8))(v7, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {

    return sub_2662A9238(v21, &qword_2800732C0, &qword_2664E9E90);
  }
}

unint64_t sub_2663A575C()
{
  result = qword_280F8F5D0;
  if (!qword_280F8F5D0)
  {
    sub_2664E0788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F5D0);
  }

  return result;
}

unint64_t static BundleIdentifiers.extensionBundleIdentifier(for:deviceProvider:featureFlagProvider:)(void *a1, unint64_t a2, uint64_t *a3)
{
  v49 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v47 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v50 = *(v6 + 16);
  v51 = v16;
  v50(v15, v16, v5);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = v5;
    v20 = v6;
    v21 = v19;
    v22 = swift_slowAlloc();
    v52 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2662A320C(a1, a2, &v52);
    _os_log_impl(&dword_26629C000, v17, v18, "BundleIdentifiers#extensionBundleIdentifier resolving for bundleIdentifier: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    v23 = v21;
    v6 = v20;
    v5 = v46;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = *(v6 + 8);
  v25 = v24(v15, v5);
  v52 = a1;
  v53 = a2;
  MEMORY[0x28223BE20](v25);
  *(&v44 - 2) = &v52;
  if (sub_2662AA720(sub_2662AA7CC, (&v44 - 4), &unk_2877E48F0))
  {
    v50(v9, v51, v5);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "BundleIdentifiers#extensionBundleIdentifier system bundle identifier, no extension", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v24(v9, v5);
    return 0;
  }

  v29 = a1;
  v45 = v24;
  v46 = v6;
  v31 = v49[3];
  v30 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v31);
  v32 = *(v30 + 8);
  v33 = v32(v31, v30);
  if (v33 & 1) == 0 || (v49 = &v44, v52 = v29, v53 = a2, MEMORY[0x28223BE20](v33), *(&v44 - 2) = &v52, (sub_2662AA720(sub_2663A6860, (&v44 - 4), &unk_2877E4818)))
  {
    if (v32(v31, v30) & 1) != 0 && (v29 == 0xD000000000000015 && 0x80000002664F1690 == a2 || (sub_2664E0D88()))
    {
      return 0xD000000000000028;
    }

    v35 = v48;
    v50(v48, v51, v5);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "BundleIdentifiers#extensionBundleIdentifier no custom bundle identifier needed", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v45(v35, v5);
    return 0;
  }

  v39 = v47;
  v50(v47, v51, v5);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06C8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_2662A320C(0xD000000000000040, 0x80000002664F6790, &v52);
    _os_log_impl(&dword_26629C000, v40, v41, "BundleIdentifiers#extensionBundleIdentifier using boltExtensionBundleIdentifier: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  v45(v39, v5);
  return 0xD000000000000040;
}

uint64_t static BundleIdentifiers.isThirdParty(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_2662C178C();
  sub_2662C17E0();
  if (sub_2664E0278())
  {
    v2 = sub_2664E0278();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t static BundleIdentifiers.isBooks(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002664F41C0 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

uint64_t static BundleIdentifiers.isClassical(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000002664F6820 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88();
  }
}

uint64_t static BundleIdentifiers.hasTVAirPlay(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (sub_2664E0408())
  {
    return 1;
  }

  return sub_2664E0408();
}

uint64_t _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2662C178C();
  sub_2662C17E0();
  if (sub_2664E0278())
  {
    v2 = sub_2664E0278() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t _s16SiriAudioSupport17BundleIdentifiersO26extractAppInfoFromLaunchId3forSSSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_2664E02A8();
  v42 = 0;
  INExtractAppInfoFromSiriLaunchId();

  v15 = v42;
  if (!v42)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "BundleIdentifiers#extractAppInfoFromLaunchId no resolved app info from siri launchid", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v16 = sub_2664E02C8();
  v18 = v17;
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    v32 = v15;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v33, v4);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "BundleIdentifiers#extractAppInfoFromLaunchId Bundle ID is an empty string. Returning nil", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return 0;
  }

  v40 = v16;
  v20 = qword_280F914E8;
  v21 = v15;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v13, v22, v4);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = v21;
    v26 = v25;
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_2662A320C(v40, v18, &v41);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2662A320C(a1, a2, &v41);
    _os_log_impl(&dword_26629C000, v23, v24, "BundleIdentifiers#extractAppInfoFromLaunchId resolved bundle identifier: %s from launchId: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    (*(v5 + 8))(v13, v4);
  }

  else
  {

    (*(v5 + 8))(v13, v4);
  }

  return v40;
}

uint64_t OpenMusicItemAppIntent.init(target:noticeEntity:)@<X0>(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D0, &qword_2664E9FB8);
  swift_allocObject();
  a3[1] = sub_2664DFA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D8, &qword_2664E9FC0);
  swift_allocObject();

  *a3 = sub_2664DFA28();
  sub_2664DFA38();
}

uint64_t sub_2663A69A8(uint64_t *a1, int a2)
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

uint64_t sub_2663A69F0(uint64_t result, int a2, int a3)
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

uint64_t static AppSelectionContext.shared(refId:completion:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  if (a2)
  {
    v36 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v16, v17, v10);

    v18 = sub_2664DFE18();
    v19 = sub_2664E06E8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v37[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_2662A320C(a1, a2, v37);
      _os_log_impl(&dword_26629C000, v18, v19, "AppSelectionContext#sharedCompletion retrieving shared context for refId: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x266784AD0](v22, -1, -1);
      v23 = v21;
      a4 = v35;
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v24 = v36;
    if (qword_280F908A8 != -1)
    {
      swift_once();
    }

    v25 = off_280F908B0;
    v37[0] = a1;
    v37[1] = a2;
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = a2;
    v26[4] = v5;
    v26[5] = v5;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = a4;
    v28 = *(*v25 + 160);

    v28(v37, sub_2663B8DFC, v26, 0, 1, sub_2662DBE30, v27);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v30, v10);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "AppSelectionContext#sharedCompletion cannot retrieve context for nil refId", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return a3(0);
  }
}

uint64_t sub_2663A6EA0()
{
  result = sub_2663B96BC();
  qword_2800732E0 = result;
  return result;
}

uint64_t static PlayMediaAppSelector.shared.getter()
{
  if (qword_280071BB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2663A6F1C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000022, 0x80000002664F6C90, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F8FFB8 = v8;
  return result;
}

uint64_t sub_2663A70B4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002ALL, 0x80000002664F6CE0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800732E8 = v8;
  return result;
}

uint64_t sub_2663A724C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AE0, &unk_2664EA260);
  swift_allocObject();
  result = sub_2662ED984(0xD00000000000001BLL, 0x80000002664F6CC0, sub_2663A72C8, 0);
  qword_280F8FFA8 = result;
  return result;
}

uint64_t sub_2663A72C8(uint64_t a1, uint64_t a2)
{
  if (qword_280F90780 != -1)
  {
    swift_once();
  }

  v4 = sub_26645FB64(qword_280F91CE0);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_266447850(0, v4, 0, 0, sub_2662D4304, v5);
}

uint64_t sub_2663A73A0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *v5;

  sub_26630F97C(0, 1, v7, sub_2663B900C, v6);
}

uint64_t sub_2663A743C(uint64_t a1, void (*a2)(__int128 *))
{
  v3 = *(a1 + 64);
  v5 = *(a1 + 144);
  v4 = *(a1 + 160);
  v15 = *(a1 + 176);
  v16 = v5;
  v6 = *(a1 + 144);
  v13 = v4;
  v14 = v4;
  v7 = *(a1 + 176);
  v11 = v6;
  v12 = v7;
  *&v7 = *(a1 + 112);
  v9 = *(a1 + 48);
  *&v10 = v3;
  *(&v10 + 1) = v7;
  sub_2662A7224(&v16, v17, &qword_2800734A0, &qword_2664E3B40);
  sub_2662A7224(&v15, v17, &qword_2800734A0, &qword_2664E3B40);
  sub_2662A7224(&v14, v17, &qword_2800734A0, &qword_2664E3B40);
  a2(&v9);
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  v17[0] = v9;
  v17[1] = v10;
  return sub_2663BCD44(v17);
}

uint64_t sub_2663A7524(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = qword_280F8FFA0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_2663BCF4C;
  *(v5 + 24) = v3;
  sub_266487B80(sub_2663BCE00, v5);
}

uint64_t sub_2663A7604(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v23 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v13, v5);
  sub_266314294(v9, v10, v11, v12);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = a2;
    v17 = v16;
    *v16 = 67109120;
    *(v16 + 1) = v9 != 0;
    sub_2663142F4(v9, v10, v11, v12);
    _os_log_impl(&dword_26629C000, v14, v15, "PlayMediaAppSelector#warm signal warmup results non-nil?: %{BOOL}d", v17, 8u);
    v18 = v17;
    a2 = v22;
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  else
  {
    sub_2663142F4(v9, v10, v11, v12);
  }

  v19 = (*(v6 + 8))(v8, v5);
  return a2(v19);
}

uint64_t sub_2663A7834(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = qword_280F8F6F0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2663BCF4C;
  *(v6 + 24) = v3;
  sub_26630F97C(0, 1, *v5, sub_2663BCDF8, v6);
}

uint64_t sub_2663A792C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "PlayMediaAppSelector#warm configuration load complete", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  v11 = (*(v4 + 8))(v6, v3);
  return a2(v11);
}

uint64_t sub_2663A7AEC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = qword_280F912D0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_2663BCDC8;
  *(v5 + 24) = v3;
  sub_2663701A0(sub_2663BCDF0, v5);
}

uint64_t sub_2663A7BCC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "SiriRemembersEntityProvider#warm store warmup complete", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  v11 = (*(v4 + 8))(v6, v3);
  return a2(v11);
}

uint64_t sub_2663A7D8C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "PlayMediaAppSelector#warm complete", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return a1(1);
}

uint64_t sub_2663A7F50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v24 = a2;
  v25 = a1;
  v23 = *v4;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "playMediaAppSelectorSelectEverything";
  *(v15 + 24) = 36;
  *(v15 + 32) = 2;
  (*(v6 + 32))(v15 + v13, v9, v5);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;

  v18 = sub_2664E0848();
  sub_2664DFDC8(v18, &dword_26629C000, v12, "playMediaAppSelectorSelectEverything", 36, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2663BCF94;
  *(v19 + 24) = v15;

  sub_2663A8210(sub_2663BCF98, v19, v24, v26, v25, v23);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2663A8210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v41 = a3;
  v39 = a2;
  v36 = a1;
  v40 = sub_2664DE438();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v35 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v31[-v10];
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v41;
    _os_log_impl(&dword_26629C000, v17, v18, "PlayMediaAppSelector#select caller:%ld...", v19, 0xCu);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v20 = v41;
  qword_280F91CD8 = v41;
  sub_2664DE428();
  v32 = v20 != 6;
  v33 = __swift_project_boxed_opaque_existential_1((a4 + 56), *(a4 + 80));
  v21 = v35;
  v22 = v40;
  (*(v7 + 16))(v35, v11, v40);
  v23 = (*(v7 + 80) + 57) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  v34 = v11;
  v25 = v38;
  v26 = v39;
  v27 = v36;
  *(v24 + 24) = v38;
  *(v24 + 32) = v27;
  *(v24 + 40) = v26;
  *(v24 + 48) = v20;
  *(v24 + 56) = v32;
  (*(v7 + 32))(v24 + v23, v21, v22);
  *(v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v28 = *v33;

  v29 = v25;

  sub_26630F97C(0, 1, v28, sub_2663BC420, v24);

  return (*(v7 + 8))(v34, v22);
}

uint64_t sub_2663A85C8(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v29 = a6;
  v28 = a4;
  v31 = a9;
  v14 = sub_2664DE438();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  (*(v15 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a8, v14);
  v17 = (*(v15 + 80) + 249) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = a5;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  v19 = *(a1 + 9);
  *(v18 + 176) = *(a1 + 8);
  *(v18 + 192) = v19;
  v20 = *(a1 + 11);
  *(v18 + 208) = *(a1 + 10);
  *(v18 + 224) = v20;
  v21 = *(a1 + 5);
  *(v18 + 112) = *(a1 + 4);
  *(v18 + 128) = v21;
  v22 = *(a1 + 7);
  *(v18 + 144) = *(a1 + 6);
  *(v18 + 160) = v22;
  v23 = *(a1 + 1);
  *(v18 + 48) = *a1;
  *(v18 + 64) = v23;
  v24 = *(a1 + 3);
  *(v18 + 80) = *(a1 + 2);
  *(v18 + 96) = v24;
  *(v18 + 240) = v29;
  *(v18 + 248) = v30;
  (*(v15 + 32))(v18 + v17, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;

  v25 = a3;
  sub_2663B95AC(a1, v32);
  sub_2663BA168(v25, a1, sub_2663BC4CC, v18);
}

uint64_t sub_2663A87DC(char a1, void (*a2)(void **), uint64_t a3, void *a4, void *a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v48 = a8;
  v47 = a7;
  v49 = a5;
  v51 = a3;
  v14 = sub_2664DFE38();
  v50 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DE438();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v43 = a10;
    v46 = a4[5];
    v50 = a4[6];
    v45 = __swift_project_boxed_opaque_existential_1(a4 + 2, v46);
    v44 = sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
    v21 = v49;
    v42 = sub_26636E9A0(1u);
    v41 = v22;
    (*(v18 + 16))(&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v17);
    v23 = (*(v18 + 80) + 249) & ~*(v18 + 80);
    v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = a2;
    *(v25 + 32) = v51;
    *(v25 + 40) = a4;
    v26 = a6[9];
    *(v25 + 176) = a6[8];
    *(v25 + 192) = v26;
    v27 = a6[11];
    *(v25 + 208) = a6[10];
    *(v25 + 224) = v27;
    v28 = a6[5];
    *(v25 + 112) = a6[4];
    *(v25 + 128) = v28;
    v29 = a6[7];
    *(v25 + 144) = a6[6];
    *(v25 + 160) = v29;
    v30 = a6[1];
    *(v25 + 48) = *a6;
    *(v25 + 64) = v30;
    v31 = a6[3];
    *(v25 + 80) = a6[2];
    *(v25 + 96) = v31;
    *(v25 + 240) = v47;
    *(v25 + 248) = v48 & 1;
    (*(v18 + 32))(v25 + v23, v20, v17);
    *(v25 + v24) = v43;
    v32 = v21;

    sub_2663B95AC(a6, v52);
    InstalledAppProviding.installedApps(for:sharedUserId:useCache:completion:)(v44, v42, v41, 1, sub_2663BC5D0, v25, v46, v50);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v34 = v50;
    (*(v50 + 16))(v16, v33, v14);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v37 = 136446210;
      if (qword_280F8F6B0 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v53);
      _os_log_impl(&dword_26629C000, v35, v36, "PlayMediaAppSelector#select %{public}s NOT enabled or not supported for this intent", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v34 + 8))(v16, v14);
    v53[0] = 0;
    v53[1] = 0;
    v54 = 0;
    a2(v53);
  }
}

uint64_t sub_2663A8CBC(uint64_t a1, void *a2, void (*a3)(Swift::String *), void (*a4)(Swift::String *), uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v70 = a8;
  v71 = a3;
  v72 = a4;
  v73 = a2;
  v67 = a10;
  v68 = a7;
  v69 = a9;
  v62 = sub_2664DFE38();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2664DFE08();
  v66 = *(v74 - 8);
  v14 = MEMORY[0x28223BE20](v74);
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v15;
  MEMORY[0x28223BE20](v14);
  v65 = &v59 - v16;
  v17 = *(a1 + 16);
  v75 = 0x80000002664F37C0;
  v76 = a5;
  v18 = v17 + 1;
  v19 = (a1 + 48);
  v77 = a6;
  while (1)
  {
    v20 = v18 - 1;
    if (!v20)
    {
      break;
    }

    v78 = v20;
    v22 = *(v19 - 2);
    v21 = *(v19 - 1);
    v23 = *v19;
    v82 = v22;
    v83 = v21;
    v80._countAndFlagsBits = 0x6C7070612E6D6F63;
    v80._object = 0xE900000000000065;
    sub_2662C178C();
    sub_2662C17E0();

    v79 = v23;

    if ((sub_2664E0278() & 1) == 0)
    {

      v26 = v76;
      v25 = v77;
LABEL_14:
      v41 = sub_2662F5CEC(qword_280F91CD8, v25) & 1;
      if (qword_280F91508 != -1)
      {
        swift_once();
      }

      v79 = qword_280F91D48;
      v42 = v65;
      sub_2664DFDE8();
      v43 = v66;
      v44 = v64;
      v45 = v74;
      (*(v66 + 16))(v64, v42, v74);
      v46 = (*(v43 + 80) + 33) & ~*(v43 + 80);
      v47 = (v63 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = "playMediaAppSelectorSelect";
      *(v48 + 24) = 26;
      *(v48 + 32) = 2;
      (*(v43 + 32))(v48 + v46, v44, v45);
      v49 = (v48 + v47);
      v50 = v72;
      *v49 = v71;
      v49[1] = v50;

      v51 = sub_2664E0848();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2664E34E0;
      v53 = MEMORY[0x277D83B88];
      v54 = MEMORY[0x277D83C10];
      *(v52 + 56) = MEMORY[0x277D83B88];
      *(v52 + 64) = v54;
      v55 = v68;
      *(v52 + 32) = v68;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 72) = v41;
      sub_2664DFDC8(v51, &dword_26629C000, v79, "playMediaAppSelectorSelect", 26, 2, v42, "caller=%{signpost.telemetry:number1,public}d megamodel=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 113, 2, v52);

      v56 = swift_allocObject();
      *(v56 + 16) = sub_2663BC680;
      *(v56 + 24) = v48;

      sub_2663A93F4(sub_2663BC720, v56, v26, v73, v41, v70 & 1, v25, v69, v55, v67);

      return (*(v43 + 8))(v42, v74);
    }

    v19 += 8;
    v82 = v22;
    v83 = v21;
    v80._countAndFlagsBits = 0xD000000000000013;
    v80._object = v75;
    v24 = sub_2664E0278();

    v26 = v76;
    v25 = v77;
    v18 = v78;
    if (v24)
    {
      goto LABEL_14;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = v62;
  v28 = __swift_project_value_buffer(v62, qword_280F914F0);
  swift_beginAccess();
  v29 = v61;
  v30 = v60;
  (*(v61 + 16))(v60, v28, v27);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06B8();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v73;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26629C000, v31, v32, "PlayMediaAppSelector#select All audio apps installed on device are first party apps. Skipping app selection, providing selected 1p app as result.", v35, 2u);
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  (*(v29 + 8))(v30, v27);
  v36 = [v34 privatePlayMediaIntentData];
  if (v36 && (v38 = v36, v39 = [v36 audioSearchResults], v38, v39))
  {
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v40 = sub_2664E04A8();
  }

  else
  {
    v40 = 0;
  }

  v84.value._rawValue = v40;
  v84.is_nil = 0;
  v58 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v84, v37);

  v80 = v58;
  v81 = 768;
  v71(&v80);
}

uint64_t sub_2663A93F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a7;
  v55 = a6;
  v53 = a5;
  v56 = a4;
  v58 = a3;
  v57 = a2;
  v54 = a1;
  v52 = sub_2664DE438();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v59[0] = v22;
    *v21 = 136446210;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v59);
    _os_log_impl(&dword_26629C000, v18, v19, "PlayMediaAppSelector#select %{public}s supported", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);

    (*(v14 + 8))(v16, v13);
    a8 = v20;
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v48 = a10;
  v47 = a9;
  if (qword_280F8FFA0 != -1)
  {
    swift_once();
  }

  v49 = qword_280F8FFA8;
  v23 = v50;
  v24 = v52;
  (*(v11 + 16))(v50, a8, v52);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = v25 + v12;
  v27 = (v25 + v12) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 199) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v11 + 32))(v31 + v25, v23, v24);
  LODWORD(v25) = v53 & 1;
  *(v31 + v26) = v25;
  *(v31 + v27 + 8) = v58;
  *(v31 + v28) = v47;
  v32 = (v31 + v29);
  v33 = v51;
  v34 = v51[9];
  v32[8] = v51[8];
  v32[9] = v34;
  v35 = v33[11];
  v32[10] = v33[10];
  v32[11] = v35;
  v36 = v33[5];
  v32[4] = v33[4];
  v32[5] = v36;
  v37 = v33[7];
  v32[6] = v33[6];
  v32[7] = v37;
  v38 = v33[1];
  *v32 = *v33;
  v32[1] = v38;
  v39 = v33[3];
  v32[2] = v33[2];
  v32[3] = v39;
  v40 = v56;
  *(v31 + v30) = v56;
  v41 = v31 + v46;
  v42 = v57;
  *v41 = v54;
  *(v41 + 8) = v42;
  LODWORD(v24) = v55 & 1;
  *(v41 + 16) = v24;
  *(v31 + v45) = v48;

  sub_2663B95AC(v33, v59);
  v43 = v40;

  sub_2663B25F4(v43, v49, v25, v24, v33, sub_2663BC770, v31);
}

uint64_t sub_2663A9934(__int128 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7, void (*a8)(void), uint64_t a9, char a10)
{
  v186 = a7;
  v187 = a8;
  v191 = a6;
  v193 = a5;
  v194 = a4;
  LODWORD(v185) = a3;
  v12 = sub_2664E0038();
  v175 = *(v12 - 8);
  v176 = v12;
  MEMORY[0x28223BE20](v12);
  v172 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664E00B8();
  v173 = *(v14 - 8);
  v174 = v14;
  MEMORY[0x28223BE20](v14);
  v171 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DE438();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v188 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v165 - v20;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v169 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v168 = &v165 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v165 - v28;
  v30 = a1[1];
  v31 = a1[2];
  v204 = *a1;
  v205 = v30;
  v206 = v31;
  v192 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  v33 = *(v23 + 16);
  v178 = v23 + 16;
  v179 = v32;
  v177 = v33;
  v33(v29, v32, v22);
  v182 = *(v17 + 16);
  v183 = v17 + 16;
  v182(v21, a2, v16);
  v34 = sub_2664DFE18();
  v35 = v22;
  v36 = sub_2664E06E8();
  v37 = os_log_type_enabled(v34, v36);
  v189 = v35;
  v181 = v23;
  if (v37)
  {
    v166 = v34;
    v167 = v29;
    v180 = a2;
    v38 = v188;
    v39 = v17;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v201 = v41;
    *v40 = 136446722;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v40 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v201);
    *(v40 + 12) = 2050;
    sub_2664DE428();
    sub_2664DE388();
    v43 = v42;
    v44 = *(v17 + 8);
    v44(v38, v16);
    v170 = v44;
    v44(v21, v16);
    *(v40 + 14) = v43;
    *(v40 + 22) = 2080;
    if (v185)
    {
      v45 = 1702195828;
    }

    else
    {
      v45 = 0x65736C6166;
    }

    if (v185)
    {
      v46 = 0xE400000000000000;
    }

    else
    {
      v46 = 0xE500000000000000;
    }

    v47 = sub_2662A320C(v45, v46, &v201);

    *(v40 + 24) = v47;
    v48 = v166;
    _os_log_impl(&dword_26629C000, v166, v36, "PlayMediaAppSelector#select %{public}s signal gathering and prediction completed in %{public}fs; megamodel used: %s", v40, 0x20u);
    swift_arrayDestroy();
    v17 = v39;
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);

    v49 = *(v181 + 8);
    v49(v167, v189);
    v50 = v180;
  }

  else
  {

    v170 = *(v17 + 8);
    v170(v21, v16);
    v49 = *(v23 + 8);
    v49(v29, v35);
    v50 = a2;
    v38 = v188;
  }

  v185 = a9;
  v201 = v204;
  v202 = v205;
  v203 = v206;
  v51 = v194;
  sub_2663B0E60(&v201);
  v52 = v191;
  v190 = v16;
  if (v204 == 1)
  {
    v53 = v51;
    v192 = 0;
LABEL_20:
    v182(v38, v50, v16);
    v59 = (*(v17 + 80) + 224) & ~*(v17 + 80);
    v60 = (v184 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 55) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v193;
    *(v62 + 16) = v53;
    *(v62 + 24) = v63;
    v64 = v52[9];
    *(v62 + 160) = v52[8];
    *(v62 + 176) = v64;
    v65 = v52[11];
    *(v62 + 192) = v52[10];
    *(v62 + 208) = v65;
    v66 = v52[5];
    *(v62 + 96) = v52[4];
    *(v62 + 112) = v66;
    v67 = v52[7];
    *(v62 + 128) = v52[6];
    *(v62 + 144) = v67;
    v68 = v52[1];
    *(v62 + 32) = *v52;
    *(v62 + 48) = v68;
    v69 = v52[3];
    *(v62 + 64) = v52[2];
    *(v62 + 80) = v69;
    (*(v17 + 32))(v62 + v59, v38, v190);
    v70 = (v62 + v60);
    v71 = v205;
    *v70 = v204;
    v70[1] = v71;
    v70[2] = v206;
    v73 = v186;
    v72 = v187;
    *(v62 + v61) = v186;
    v74 = (v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));
    v75 = v185;
    *v74 = v72;
    v74[1] = v75;

    sub_2662A7224(&v204, &v201, &qword_2800732F8, &qword_2664EA230);
    sub_2663B95AC(v52, &v201);
    v76 = v73;

    sub_2663BA678(v192, sub_2663BC85C, v62);
  }

  v54 = *(&v206 + 1);
  if (!*(&v206 + 1))
  {
    v53 = v51;

    goto LABEL_20;
  }

  v180 = v50;
  v192 = v17;
  v55 = v168;
  v177(v168, v179, v189);

  v56 = sub_2664DFE18();
  v57 = sub_2664E06C8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134349056;
    *(v58 + 4) = v54[2];

    _os_log_impl(&dword_26629C000, v56, v57, "PlayMediaAppSelector#select found megamodel prediction with %{public}ld bundles", v58, 0xCu);
    MEMORY[0x266784AD0](v58, -1, -1);
  }

  else
  {
  }

  v77 = v55;
  v78 = v189;
  v49(v77, v189);
  v79 = v52;
  v80 = v51;
  v81 = sub_2663B67BC(v193, v79);
  v82 = v54[2];
  LODWORD(v181) = v81;
  if (v82 == 1)
  {
    v83 = v54[5];
    v189 = v54[4];
    v84 = qword_280F8FFB0;
    v179 = v83;
    swift_bridgeObjectRetain_n();
    if (v84 != -1)
    {
      swift_once();
    }

    v178 = qword_280F8FFB8;
    v85 = v38;
    v86 = v190;
    v182(v38, v180, v190);
    v87 = v192;
    v88 = (*(v192 + 80) + 96) & ~*(v192 + 80);
    v89 = (v184 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v184 = (v89 + 199) & 0xFFFFFFFFFFFFFFF8;
    v90 = (v89 + 215) & 0xFFFFFFFFFFFFFFF8;
    v91 = (v90 + 39) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    *(v92 + 16) = a10 & 1;
    *(v92 + 24) = v194;
    v93 = v205;
    *(v92 + 32) = v204;
    *(v92 + 48) = v93;
    *(v92 + 64) = v206;
    v94 = v179;
    *(v92 + 80) = v189;
    *(v92 + 88) = v94;
    (*(v87 + 32))(v92 + v88, v85, v86);
    v95 = (v92 + v89);
    v96 = v191;
    v97 = v191[9];
    v95[8] = v191[8];
    v95[9] = v97;
    v98 = v96[11];
    v95[10] = v96[10];
    v95[11] = v98;
    v99 = v96[5];
    v95[4] = v96[4];
    v95[5] = v99;
    v100 = v96[7];
    v95[6] = v96[6];
    v95[7] = v100;
    v101 = v96[1];
    *v95 = *v96;
    v95[1] = v101;
    v102 = v96[3];
    v95[2] = v96[2];
    v95[3] = v102;
    v103 = v92 + v184;
    *v103 = v193;
    *(v103 + 8) = v181 & 1;
    v104 = v92 + v90;
    v105 = v189;
    *v104 = v189;
    *(v104 + 8) = v94;
    __asm { FMOV            V0.2D, #1.0 }

    *(v104 + 16) = _Q0;
    v111 = v186;
    *(v92 + v91) = v186;
    v199 = sub_2663BC950;
    v200 = v92;
    v195 = MEMORY[0x277D85DD0];
    v196 = 1107296256;
    v197 = sub_2662A3F90;
    v198 = &block_descriptor_169;
    v112 = _Block_copy(&v195);

    sub_2662A7224(&v204, &v201, &qword_2800732F8, &qword_2664EA230);
    sub_2663B95AC(v96, &v201);
    v113 = v111;
    v114 = v171;
    sub_2664E0068();
    *&v201 = MEMORY[0x277D84F90];
    sub_2662A6120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v115 = v172;
    v116 = v176;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v114, v115, v112);
    _Block_release(v112);
    (*(v175 + 8))(v115, v116);
    (*(v173 + 8))(v114, v174);

    *&v201 = v105;
    *(&v201 + 1) = v94;
    LOWORD(v202) = 257;
  }

  else
  {
    v117 = v81;
    v177(v169, v179, v78);
    v118 = sub_2664DFE18();
    v119 = sub_2664E06C8();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_26629C000, v118, v119, "PlayMediaAppSelector#select: Megamodel recommended disambiguation", v120, 2u);
      v78 = v189;
      MEMORY[0x266784AD0](v120, -1, -1);
    }

    v49(v169, v78);
    v121 = v38;
    sub_2664DE428();
    sub_2664DE388();
    v123 = v122;
    v179 = v192 + 8;
    v170(v38, v190);
    v124 = v193;
    if (qword_280F90D30 != -1)
    {
      swift_once();
    }

    v178 = qword_280F90D38;
    v125 = swift_allocObject();
    v126 = v191;
    v127 = v191[9];
    *(v125 + 168) = v191[8];
    *(v125 + 184) = v127;
    v128 = v126[11];
    *(v125 + 200) = v126[10];
    *(v125 + 216) = v128;
    v129 = v126[5];
    *(v125 + 104) = v126[4];
    *(v125 + 120) = v129;
    v130 = v126[7];
    *(v125 + 136) = v126[6];
    *(v125 + 152) = v130;
    v131 = v126[1];
    *(v125 + 40) = *v126;
    *(v125 + 56) = v131;
    v132 = v126[3];
    *(v125 + 72) = v126[2];
    *(v125 + 16) = 0;
    *(v125 + 24) = 0;
    LODWORD(v189) = v117;
    *(v125 + 32) = v117;
    *(v125 + 33) = 1;
    *(v125 + 35) = 0;
    *(v125 + 88) = v132;
    *(v125 + 232) = v124;
    *(v125 + 240) = v123;
    *(v125 + 248) = v80;
    v199 = sub_2663BC948;
    v200 = v125;
    v195 = MEMORY[0x277D85DD0];
    v196 = 1107296256;
    v197 = sub_2662A3F90;
    v198 = &block_descriptor_160;
    v133 = _Block_copy(&v195);

    sub_2663B95AC(v126, &v201);
    v134 = v171;
    sub_2664E0068();
    *&v201 = MEMORY[0x277D84F90];
    sub_2662A6120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v135 = v172;
    v136 = v176;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v134, v135, v133);
    _Block_release(v133);
    (*(v175 + 8))(v135, v136);
    (*(v173 + 8))(v134, v174);

    sub_2664DE428();
    v137 = v180;
    sub_2664DE388();
    v139 = v138;
    v170(v121, v190);
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v141 = qword_280F90B40;
    v140 = unk_280F90B48;
    v142 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v143 = *(v141 - 8);
    MEMORY[0x28223BE20](v142);
    v145 = &v165 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v143 + 16))(v145);
    v146 = (*(v140 + 16))(v141, v140);
    v178 = v146;
    v148 = v147;
    (*(v143 + 8))(v145, v141);
    v179 = type metadata accessor for AppSelectionContext();
    v149 = v188;
    v150 = v190;
    v182(v188, v137, v190);
    v151 = v192;
    v152 = (*(v192 + 80) + 360) & ~*(v192 + 80);
    v153 = swift_allocObject();
    *(v153 + 16) = v146;
    *(v153 + 24) = v148;
    *(v153 + 32) = 0;
    *(v153 + 40) = 0;
    *(v153 + 48) = v194;
    v154 = v126[9];
    *(v153 + 184) = v126[8];
    *(v153 + 200) = v154;
    v155 = v126[11];
    *(v153 + 216) = v126[10];
    *(v153 + 232) = v155;
    v156 = v126[5];
    *(v153 + 120) = v126[4];
    *(v153 + 136) = v156;
    v157 = v126[7];
    *(v153 + 152) = v126[6];
    *(v153 + 168) = v157;
    v158 = v126[1];
    *(v153 + 56) = *v126;
    *(v153 + 72) = v158;
    v159 = v126[3];
    *(v153 + 88) = v126[2];
    *(v153 + 104) = v159;
    *(v153 + 248) = 0u;
    *(v153 + 264) = 0u;
    v160 = v205;
    *(v153 + 280) = v204;
    *(v153 + 296) = v160;
    *(v153 + 312) = v206;
    *(v153 + 328) = v189;
    *(v153 + 336) = v193;
    *(v153 + 344) = v139;
    v161 = v186;
    *(v153 + 352) = v186;
    (*(v151 + 32))(v153 + v152, v149, v150);

    sub_2662A7224(&v204, &v201, &qword_2800732F8, &qword_2664EA230);
    sub_2663B95AC(v126, &v201);

    v162 = v161;
    static AppSelectionContext.shared(refId:completion:)(v178, v148, sub_2663BC94C, v153);

    if (v181)
    {
      v163 = 6;
    }

    else
    {
      v163 = 5;
    }

    v201 = 0uLL;
    LOBYTE(v202) = 1;
    BYTE1(v202) = v163;
  }

  v187(&v201);
}

uint64_t sub_2663AAA8C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, double a9, double a10, char a11, uint64_t *a12, char *a13, uint64_t a14)
{
  v113 = a8;
  v114 = a6;
  v112 = a4;
  v109 = a3;
  v104 = sub_2664E0038();
  v106 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2664E00B8();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v96 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2664DE438();
  v111 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = v22;
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v100 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v94 - v27;
  v29 = sub_2664DE4A8();
  v101 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a5;
  if (a1)
  {
    v32 = a2;
    v33 = a2[27];
    v34 = v32[28];
    __swift_project_boxed_opaque_existential_1(v32 + 24, v33);
    v35 = *(v34 + 16);
    v36 = v33;
    a2 = v32;
    v37 = v34;
    a5 = v110;
    v35(v36, v37);
    if (v38)
    {
      sub_2664DE448();

      v39 = v101;
      if ((*(v101 + 48))(v28, 1, v29) == 1)
      {
        sub_2662A9238(v28, &qword_280073C60, &unk_2664EE400);
        goto LABEL_11;
      }

      v40 = (*(v39 + 32))(v31, v28, v29);
      v99 = &v94;
      v41 = v32[23];
      v97 = v32[22];
      v98 = *(v97 - 1);
      MEMORY[0x28223BE20](v40);
      v95 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (*v109 == 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

      else
      {
        v46 = v109[1];
        v43 = v109[2];
        v44 = v109[3];
        v45 = v109[4];
        if (v46)
        {
          v47 = v109[2];

LABEL_10:
          v115[0] = v46;
          v115[1] = v47;
          v115[2] = v44;
          v115[3] = v45;
          v48 = v95;
          v49 = v97;
          (*(v41 + 8))(v115, v97, v41);
          v50 = v100;
          (*(v41 + 32))(v31, v49, v41);
          sub_2662A9238(v50, &qword_280073C60, &unk_2664EE400);
          (*(v98 + 8))(v48, v49);
          (*(v101 + 8))(v31, v29);
          a2 = v32;
          a5 = v110;
          goto LABEL_11;
        }
      }

      sub_2663142F4(0, v43, v44, v45);
      v46 = MEMORY[0x277D84FA0];
      v45 = MEMORY[0x277D84F90];
      v44 = MEMORY[0x277D84F90];
      v47 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }
  }

LABEL_11:
  sub_2664DE428();
  sub_2664DE388();
  v52 = v51;
  v53 = v108;
  v95 = *(v111 + 8);
  (v95)(v23, v108);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v101 = a14;
  v100 = a13;
  v99 = a12;
  v94 = qword_280F90D38;
  v54 = swift_allocObject();
  v55 = a7[9];
  *(v54 + 168) = a7[8];
  *(v54 + 184) = v55;
  v56 = a7[11];
  *(v54 + 200) = a7[10];
  *(v54 + 216) = v56;
  v57 = a7[5];
  *(v54 + 104) = a7[4];
  *(v54 + 120) = v57;
  v58 = a7[7];
  *(v54 + 136) = a7[6];
  *(v54 + 152) = v58;
  v59 = a7[1];
  *(v54 + 40) = *a7;
  *(v54 + 56) = v59;
  v60 = a7[3];
  *(v54 + 72) = a7[2];
  *(v54 + 16) = v112;
  *(v54 + 24) = a5;
  LODWORD(v98) = a11 & 1;
  *(v54 + 32) = a11 & 1;
  *(v54 + 33) = 0;
  *(v54 + 35) = 0;
  *(v54 + 88) = v60;
  *(v54 + 232) = v113;
  *(v54 + 240) = v52;
  *(v54 + 248) = a2;
  aBlock[4] = sub_2663BCF48;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_176;
  v61 = _Block_copy(aBlock);

  sub_2663B95AC(a7, v115);

  v62 = v96;
  sub_2664E0068();
  v115[0] = MEMORY[0x277D84F90];
  sub_2662A6120();
  v97 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v63 = v102;
  v64 = v104;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v62, v63, v61);
  _Block_release(v61);
  (*(v106 + 8))(v63, v64);
  (*(v103 + 8))(v62, v105);

  sub_2664DE428();
  sub_2664DE388();
  v66 = v65;
  (v95)(v23, v53);
  v67 = v53;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v68 = qword_280F90B40;
  v69 = unk_280F90B48;
  v70 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v94 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v73);
  v74 = (*(v69 + 16))(v68, v69);
  v105 = v74;
  v76 = v75;
  (*(v71 + 8))(v73, v68);
  v106 = type metadata accessor for AppSelectionContext();
  v77 = v111;
  (*(v111 + 16))(v23, v114, v53);
  v78 = (*(v77 + 80) + 360) & ~*(v77 + 80);
  v79 = swift_allocObject();
  v80 = a7[9];
  *(v79 + 184) = a7[8];
  *(v79 + 200) = v80;
  v81 = a7[11];
  *(v79 + 216) = a7[10];
  *(v79 + 232) = v81;
  v82 = a7[5];
  *(v79 + 120) = a7[4];
  *(v79 + 136) = v82;
  v83 = a7[7];
  *(v79 + 152) = a7[6];
  *(v79 + 168) = v83;
  v84 = a7[1];
  *(v79 + 56) = *a7;
  *(v79 + 72) = v84;
  v85 = a7[3];
  *(v79 + 88) = a7[2];
  *(v79 + 16) = v74;
  *(v79 + 24) = v76;
  v86 = v110;
  *(v79 + 32) = v112;
  *(v79 + 40) = v86;
  *(v79 + 48) = v97;
  *(v79 + 104) = v85;
  v87 = v100;
  *(v79 + 248) = v99;
  *(v79 + 256) = v87;
  *(v79 + 264) = a9;
  *(v79 + 272) = a10;
  v88 = v109;
  v89 = *(v109 + 1);
  *(v79 + 280) = *v109;
  *(v79 + 296) = v89;
  *(v79 + 312) = *(v88 + 32);
  *(v79 + 328) = v98;
  *(v79 + 336) = v113;
  *(v79 + 344) = v66;
  v90 = v67;
  v91 = v101;
  *(v79 + 352) = v101;
  (*(v77 + 32))(v79 + v78, v23, v90);

  sub_2663B95AC(a7, v115);

  sub_2662A7224(v88, v115, &qword_2800732F8, &qword_2664EA230);
  v92 = v91;
  static AppSelectionContext.shared(refId:completion:)(v105, v76, sub_2663BCF9C, v79);
}

uint64_t sub_2663AB678(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, char *a8, _OWORD *a9, void *a10, void (*a11)(void **), uint64_t a12)
{
  v312 = a8;
  v321 = a1;
  v322 = *&a4;
  v328 = a2;
  v317 = a12;
  v318 = a11;
  v316 = a10;
  v315 = a9;
  v15 = sub_2664E0038();
  v307 = *(v15 - 8);
  v308 = v15;
  MEMORY[0x28223BE20](v15);
  v305 = &v301 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E00B8();
  v309 = *(v17 - 8);
  v310 = v17;
  MEMORY[0x28223BE20](v17);
  v306 = &v301 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFE38();
  v323 = *(v19 - 1);
  v324 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v303 = &v301 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v302 = &v301 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v301 = &v301 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v301 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v301 - v29;
  v31 = sub_2664DE438();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v319 = (&v301 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v313 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = (&v301 - v35);
  v326 = a6;
  v327 = a5;
  v314 = a7;
  v37 = v328;
  LODWORD(a7) = sub_2663B67BC(a6, a7);
  v325 = v32;
  v39 = *(v32 + 16);
  v40 = v312;
  v329 = v31;
  v311 = v39;
  v312 = (v32 + 16);
  v39(v36, v40, v31);
  v330 = v36;
  v320 = a3;
  if (v37)
  {
    LODWORD(v304) = a7;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = *&a3;
    v42 = v324;
    v43 = __swift_project_value_buffer(v324, qword_280F914F0);
    swift_beginAccess();
    v44 = v323;
    v45 = *(v323 + 16);
    v45(v28, v43, v42);

    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v314;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v331 = v51;
      *v50 = 136446978;
      if (qword_280F8F6B0 != -1)
      {
        swift_once();
      }

      *(v50 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v331);
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_2662A320C(v321, v328, &v331);
      *(v50 + 22) = 2048;
      *(v50 + 24) = v320;
      *(v50 + 32) = 2048;
      *(v50 + 34) = v322;
      _os_log_impl(&dword_26629C000, v46, v47, "PlayMediaAppSelector#select %{public}s prediction completed with selected bundle: %{public}s absoluteConfidence:%f confidenceOddsRatio: %f", v50, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      v42 = v324;
      v52 = *(v323 + 8);
      (v52)(v28, v324);
      v53 = v327;
      v54 = v319;
    }

    else
    {

      v52 = *(v44 + 8);
      (v52)(v28, v42);
      v54 = v319;
      v53 = v327;
    }

    v115 = *(v49 + 16);
    v116 = v329;
    if (v115 >= v41)
    {
      v301 = v52;
      v168 = v303;
      v45(v303, v43, v42);
      sub_2663B95AC(v49, &v331);
      v169 = sub_2664DFE18();
      v170 = v42;
      v171 = sub_2664E06E8();
      sub_2663BC57C(v49);
      if (os_log_type_enabled(v169, v171))
      {
        v172 = v53;
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v331 = v174;
        *v173 = 136446466;
        v175 = v304;
        if (qword_280F8F6B0 != -1)
        {
          swift_once();
        }

        *(v173 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v331);
        *(v173 + 12) = 2048;
        *(v173 + 14) = v115;
        _os_log_impl(&dword_26629C000, v169, v171, "PlayMediaAppSelector#select %{public}s prediction didn't have required minimum absoluteConfidence: %f", v173, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v174);
        MEMORY[0x266784AD0](v174, -1, -1);
        MEMORY[0x266784AD0](v173, -1, -1);

        (v301)(v303, v324);
        v53 = v172;
        v54 = v319;
      }

      else
      {

        (v301)(v168, v170);
        v175 = v304;
      }

      sub_2664DE428();
      sub_2664DE388();
      v186 = v185;
      v187 = v329;
      v323 = *(v325 + 8);
      v324 = (v325 + 8);
      (v323)(v54, v329);
      v188 = v326;
      if (qword_280F90D30 != -1)
      {
        swift_once();
      }

      v304 = qword_280F90D38;
      v189 = swift_allocObject();
      v190 = *(v49 + 144);
      *(v189 + 168) = *(v49 + 128);
      *(v189 + 184) = v190;
      v191 = *(v49 + 176);
      *(v189 + 200) = *(v49 + 160);
      *(v189 + 216) = v191;
      v192 = *(v49 + 80);
      *(v189 + 104) = *(v49 + 64);
      *(v189 + 120) = v192;
      v193 = *(v49 + 112);
      *(v189 + 136) = *(v49 + 96);
      *(v189 + 152) = v193;
      v194 = *(v49 + 16);
      *(v189 + 40) = *v49;
      *(v189 + 56) = v194;
      v195 = *(v49 + 48);
      *(v189 + 72) = *(v49 + 32);
      *(v189 + 16) = 0;
      *(v189 + 24) = 0;
      LODWORD(v319) = v175 & 1;
      *(v189 + 32) = v175 & 1;
      *(v189 + 33) = 0;
      *(v189 + 35) = 1;
      *(v189 + 88) = v195;
      *(v189 + 232) = v188;
      *(v189 + 240) = v186;
      *(v189 + 248) = v53;
      v338 = sub_2663BCF48;
      v339 = v189;
      aBlock = MEMORY[0x277D85DD0];
      v335 = 1107296256;
      v336 = sub_2662A3F90;
      v337 = &block_descriptor_216;
      v196 = _Block_copy(&aBlock);
      sub_2663B95AC(v49, &v331);

      v197 = v306;
      sub_2664E0068();
      v331 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v198 = v305;
      v199 = v308;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v197, v198, v196);
      _Block_release(v196);
      (*(v307 + 8))(v198, v199);
      (*(v309 + 8))(v197, v310);

      sub_2664DE428();
      sub_2664DE388();
      v201 = v200;
      (v323)(v54, v187);
      if (qword_280F90B20 == -1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v117 = *(v49 + 8);
      if (v117 < v322)
      {
        if (v304)
        {
          v118 = *(v49 + 96);
          if (v118 >= v322)
          {
            v247 = v52;
            v248 = v301;
            v45(v301, v43, v42);
            v249 = v248;
            sub_2663B95AC(v49, &v331);
            v250 = sub_2664DFE18();
            v251 = v42;
            v252 = sub_2664E06E8();
            sub_2663BC57C(v49);
            if (os_log_type_enabled(v250, v252))
            {
              v253 = v53;
              v254 = swift_slowAlloc();
              v255 = swift_slowAlloc();
              v331 = v255;
              *v254 = 136446466;
              if (qword_280F8F6B0 != -1)
              {
                swift_once();
              }

              *(v254 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v331);
              *(v254 + 12) = 2048;
              *(v254 + 14) = v118;
              _os_log_impl(&dword_26629C000, v250, v252, "PlayMediaAppSelector#select %{public}s prediction didn't have required minimum confidenceOddsRatio for a new user: %f.", v254, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v255);
              MEMORY[0x266784AD0](v255, -1, -1);
              MEMORY[0x266784AD0](v254, -1, -1);

              v247(v249, v324);
              v256 = v330;
              v53 = v253;
            }

            else
            {

              v247(v249, v251);
              v256 = v330;
            }

            sub_2664DE428();
            sub_2664DE388();
            v258 = v257;
            v323 = *(v325 + 8);
            v324 = (v325 + 8);
            (v323)(v54, v329);
            v259 = v326;
            v260 = v54;
            if (qword_280F90D30 != -1)
            {
              swift_once();
            }

            v319 = qword_280F90D38;
            v261 = swift_allocObject();
            *(v261 + 32) = 65537;
            v262 = *(v49 + 144);
            *(v261 + 168) = *(v49 + 128);
            *(v261 + 184) = v262;
            v263 = *(v49 + 176);
            *(v261 + 200) = *(v49 + 160);
            *(v261 + 216) = v263;
            v264 = *(v49 + 80);
            *(v261 + 104) = *(v49 + 64);
            *(v261 + 120) = v264;
            v265 = *(v49 + 112);
            *(v261 + 136) = *(v49 + 96);
            *(v261 + 152) = v265;
            v266 = *(v49 + 16);
            *(v261 + 40) = *v49;
            *(v261 + 56) = v266;
            v267 = *(v49 + 48);
            *(v261 + 72) = *(v49 + 32);
            *(v261 + 16) = 0;
            *(v261 + 24) = 0;
            *(v261 + 88) = v267;
            *(v261 + 232) = v259;
            *(v261 + 240) = v258;
            *(v261 + 248) = v53;
            v338 = sub_2663BCF48;
            v339 = v261;
            aBlock = MEMORY[0x277D85DD0];
            v335 = 1107296256;
            v336 = sub_2662A3F90;
            v337 = &block_descriptor_249;
            v268 = _Block_copy(&aBlock);
            sub_2663B95AC(v49, &v331);

            v269 = v306;
            sub_2664E0068();
            v331 = MEMORY[0x277D84F90];
            sub_2662A6120();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
            sub_2662A5AC8();
            v270 = v305;
            v271 = v308;
            sub_2664E0A08();
            MEMORY[0x266783800](0, v269, v270, v268);
            _Block_release(v268);
            (*(v307 + 8))(v270, v271);
            (*(v309 + 8))(v269, v310);

            sub_2664DE428();
            sub_2664DE388();
            v273 = v272;
            (v323)(v260, v329);
            if (qword_280F90B20 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v275 = qword_280F90B40;
            v274 = unk_280F90B48;
            v276 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
            v277 = *(v275 - 8);
            MEMORY[0x28223BE20](v276);
            v279 = &v301 - ((v278 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v277 + 16))(v279);
            v280 = (*(v274 + 16))(v275, v274);
            v310 = v280;
            v282 = v281;
            (*(v277 + 8))(v279, v275);
            v319 = type metadata accessor for AppSelectionContext();
            v311(v260, v256, v329);
            v283 = v325;
            v284 = (*(v325 + 80) + 360) & ~*(v325 + 80);
            v285 = swift_allocObject();
            *(v285 + 16) = v280;
            *(v285 + 24) = v282;
            *(v285 + 32) = 0;
            *(v285 + 40) = 0;
            *(v285 + 48) = v327;
            v286 = *(v49 + 144);
            *(v285 + 184) = *(v49 + 128);
            *(v285 + 200) = v286;
            v287 = *(v49 + 176);
            *(v285 + 216) = *(v49 + 160);
            *(v285 + 232) = v287;
            v288 = *(v49 + 80);
            *(v285 + 120) = *(v49 + 64);
            *(v285 + 136) = v288;
            v289 = *(v49 + 112);
            *(v285 + 152) = *(v49 + 96);
            *(v285 + 168) = v289;
            v290 = *(v49 + 16);
            *(v285 + 56) = *v49;
            *(v285 + 72) = v290;
            v291 = *(v49 + 48);
            *(v285 + 88) = *(v49 + 32);
            *(v285 + 104) = v291;
            v292 = v320;
            v293 = v328;
            *(v285 + 248) = v321;
            *(v285 + 256) = v293;
            v294 = v322;
            *(v285 + 264) = v292;
            *(v285 + 272) = v294;
            v295 = v315;
            v296 = v316;
            v297 = v315[1];
            *(v285 + 280) = *v315;
            *(v285 + 296) = v297;
            *(v285 + 312) = *(v295 + 32);
            *(v285 + 328) = 1;
            *(v285 + 336) = v326;
            *(v285 + 344) = v273;
            *(v285 + 352) = v296;
            v298 = v285 + v284;
            v299 = v329;
            (*(v283 + 32))(v298, v260, v329);

            sub_2663B95AC(v49, &v331);

            sub_2662A7224(v295, &v331, &qword_2800732F8, &qword_2664EA230);

            v300 = v296;
            static AppSelectionContext.shared(refId:completion:)(v310, v282, sub_2663BCF9C, v285);

            v331 = 0;
            v332 = 0;
            v333 = 1537;
            v318(&v331);

            v245 = v330;
            v246 = v299;
            return (v323)(v245, v246);
          }
        }

        sub_2664DE428();
        sub_2664DE388();
        v120 = v119;
        v323 = *(v325 + 8);
        v324 = (v325 + 8);
        (v323)(v54, v116);
        v121 = v54;
        if (qword_280F90D30 != -1)
        {
          swift_once();
        }

        v303 = qword_280F90D38;
        v122 = swift_allocObject();
        v123 = *(v49 + 144);
        *(v122 + 168) = *(v49 + 128);
        *(v122 + 184) = v123;
        v124 = *(v49 + 176);
        *(v122 + 200) = *(v49 + 160);
        *(v122 + 216) = v124;
        v125 = *(v49 + 80);
        *(v122 + 104) = *(v49 + 64);
        *(v122 + 120) = v125;
        v126 = *(v49 + 112);
        *(v122 + 136) = *(v49 + 96);
        *(v122 + 152) = v126;
        v127 = *(v49 + 16);
        *(v122 + 40) = *v49;
        *(v122 + 56) = v127;
        v128 = *(v49 + 48);
        *(v122 + 72) = *(v49 + 32);
        v129 = v328;
        *(v122 + 16) = v321;
        *(v122 + 24) = v129;
        LODWORD(v319) = v304 & 1;
        *(v122 + 32) = v304 & 1;
        *(v122 + 33) = 0;
        *(v122 + 35) = 0;
        *(v122 + 88) = v128;
        *(v122 + 232) = v326;
        *(v122 + 240) = v120;
        *(v122 + 248) = v53;
        v338 = sub_2663BCF48;
        v339 = v122;
        aBlock = MEMORY[0x277D85DD0];
        v335 = 1107296256;
        v336 = sub_2662A3F90;
        v337 = &block_descriptor_238;
        v130 = _Block_copy(&aBlock);

        sub_2663B95AC(v49, &v331);

        v131 = v306;
        sub_2664E0068();
        v331 = MEMORY[0x277D84F90];
        sub_2662A6120();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
        sub_2662A5AC8();
        v132 = v305;
        v133 = v308;
        sub_2664E0A08();
        MEMORY[0x266783800](0, v131, v132, v130);
        _Block_release(v130);
        (*(v307 + 8))(v132, v133);
        (*(v309 + 8))(v131, v310);

        sub_2664DE428();
        sub_2664DE388();
        v135 = v134;
        v136 = v329;
        (v323)(v121, v329);
        v137 = v136;
        v138 = v121;
        if (qword_280F90B20 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v140 = qword_280F90B40;
        v139 = unk_280F90B48;
        v141 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
        v142 = *(v140 - 8);
        MEMORY[0x28223BE20](v141);
        v144 = &v301 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v142 + 16))(v144);
        v145 = (*(v139 + 16))(v140, v139);
        v309 = v145;
        v147 = v146;
        (*(v142 + 8))(v144, v140);
        v310 = type metadata accessor for AppSelectionContext();
        v311(v138, v330, v137);
        v148 = v325;
        v149 = (*(v325 + 80) + 360) & ~*(v325 + 80);
        v150 = swift_allocObject();
        *(v150 + 16) = v145;
        *(v150 + 24) = v147;
        v151 = v321;
        v153 = v327;
        v152 = v328;
        *(v150 + 32) = v321;
        *(v150 + 40) = v152;
        *(v150 + 48) = v153;
        v154 = *(v49 + 144);
        *(v150 + 184) = *(v49 + 128);
        *(v150 + 200) = v154;
        v155 = *(v49 + 176);
        *(v150 + 216) = *(v49 + 160);
        *(v150 + 232) = v155;
        v156 = *(v49 + 80);
        *(v150 + 120) = *(v49 + 64);
        *(v150 + 136) = v156;
        v157 = *(v49 + 112);
        *(v150 + 152) = *(v49 + 96);
        *(v150 + 168) = v157;
        v158 = *(v49 + 16);
        *(v150 + 56) = *v49;
        *(v150 + 72) = v158;
        v159 = *(v49 + 48);
        *(v150 + 88) = *(v49 + 32);
        *(v150 + 104) = v159;
        *(v150 + 248) = v151;
        *(v150 + 256) = v152;
        v160 = v322;
        *(v150 + 264) = v320;
        *(v150 + 272) = v160;
        v161 = v138;
        v162 = v315;
        v163 = v316;
        v164 = v315[1];
        *(v150 + 280) = *v315;
        *(v150 + 296) = v164;
        *(v150 + 312) = *(v162 + 32);
        *(v150 + 328) = v319;
        *(v150 + 336) = v326;
        *(v150 + 344) = v135;
        *(v150 + 352) = v163;
        v165 = v150 + v149;
        v166 = v329;
        (*(v148 + 32))(v165, v161, v329);
        swift_bridgeObjectRetain_n();
        sub_2663B95AC(v49, &v331);

        sub_2662A7224(v162, &v331, &qword_2800732F8, &qword_2664EA230);
        v167 = v163;
        static AppSelectionContext.shared(refId:completion:)(v309, v147, sub_2663BCF9C, v150);

        v331 = v321;
        v332 = v152;
        v333 = 257;

LABEL_45:
        v318(&v331);

        v245 = v330;
        v246 = v166;
        return (v323)(v245, v246);
      }

      v301 = v52;
      v176 = v302;
      v45(v302, v43, v42);
      sub_2663B95AC(v49, &v331);
      v177 = sub_2664DFE18();
      v178 = v42;
      v179 = sub_2664E06E8();
      sub_2663BC57C(v49);
      if (os_log_type_enabled(v177, v179))
      {
        v180 = v54;
        v181 = v53;
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v331 = v183;
        *v182 = 136446466;
        v184 = v304;
        if (qword_280F8F6B0 != -1)
        {
          swift_once();
        }

        *(v182 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v331);
        *(v182 + 12) = 2048;
        *(v182 + 14) = v117;
        _os_log_impl(&dword_26629C000, v177, v179, "PlayMediaAppSelector#select %{public}s prediction didn't have required minimum confidenceOddsRatio: %f", v182, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v183);
        MEMORY[0x266784AD0](v183, -1, -1);
        MEMORY[0x266784AD0](v182, -1, -1);

        (v301)(v302, v324);
        v53 = v181;
        v54 = v180;
        v116 = v329;
      }

      else
      {

        (v301)(v176, v178);
        v184 = v304;
      }

      sub_2664DE428();
      sub_2664DE388();
      v203 = v202;
      v323 = *(v325 + 8);
      v324 = (v325 + 8);
      (v323)(v54, v116);
      v204 = v326;
      v205 = v54;
      v187 = v116;
      if (qword_280F90D30 != -1)
      {
        swift_once();
      }

      v304 = qword_280F90D38;
      v206 = swift_allocObject();
      v207 = *(v49 + 144);
      *(v206 + 168) = *(v49 + 128);
      *(v206 + 184) = v207;
      v208 = *(v49 + 176);
      *(v206 + 200) = *(v49 + 160);
      *(v206 + 216) = v208;
      v209 = *(v49 + 80);
      *(v206 + 104) = *(v49 + 64);
      *(v206 + 120) = v209;
      v210 = *(v49 + 112);
      *(v206 + 136) = *(v49 + 96);
      *(v206 + 152) = v210;
      v211 = *(v49 + 16);
      *(v206 + 40) = *v49;
      *(v206 + 56) = v211;
      v212 = *(v49 + 48);
      *(v206 + 72) = *(v49 + 32);
      *(v206 + 16) = 0;
      *(v206 + 24) = 0;
      LODWORD(v319) = v184 & 1;
      *(v206 + 32) = v184 & 1;
      *(v206 + 33) = 256;
      *(v206 + 35) = 0;
      *(v206 + 88) = v212;
      *(v206 + 232) = v204;
      *(v206 + 240) = v203;
      *(v206 + 248) = v53;
      v338 = sub_2663BCF48;
      v339 = v206;
      aBlock = MEMORY[0x277D85DD0];
      v335 = 1107296256;
      v336 = sub_2662A3F90;
      v337 = &block_descriptor_227;
      v213 = _Block_copy(&aBlock);
      sub_2663B95AC(v49, &v331);

      v214 = v306;
      sub_2664E0068();
      v331 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v215 = v305;
      v216 = v308;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v214, v215, v213);
      _Block_release(v213);
      (*(v307 + 8))(v215, v216);
      (*(v309 + 8))(v214, v310);

      sub_2664DE428();
      sub_2664DE388();
      v201 = v217;
      (v323)(v205, v187);
      v54 = v205;
      if (qword_280F90B20 == -1)
      {
LABEL_44:
        swift_beginAccess();
        v219 = qword_280F90B40;
        v218 = unk_280F90B48;
        v220 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
        v221 = *(v219 - 8);
        MEMORY[0x28223BE20](v220);
        v223 = &v301 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v221 + 16))(v223);
        v224 = (*(v218 + 16))(v219, v218);
        v309 = v224;
        v226 = v225;
        (*(v221 + 8))(v223, v219);
        v310 = type metadata accessor for AppSelectionContext();
        v311(v54, v330, v187);
        v227 = v325;
        v228 = (*(v325 + 80) + 360) & ~*(v325 + 80);
        v229 = swift_allocObject();
        *(v229 + 16) = v224;
        *(v229 + 24) = v226;
        *(v229 + 32) = 0;
        *(v229 + 40) = 0;
        *(v229 + 48) = v327;
        v230 = *(v49 + 144);
        *(v229 + 184) = *(v49 + 128);
        *(v229 + 200) = v230;
        v231 = *(v49 + 176);
        *(v229 + 216) = *(v49 + 160);
        *(v229 + 232) = v231;
        v232 = *(v49 + 80);
        *(v229 + 120) = *(v49 + 64);
        *(v229 + 136) = v232;
        v233 = *(v49 + 112);
        *(v229 + 152) = *(v49 + 96);
        *(v229 + 168) = v233;
        v234 = *(v49 + 16);
        *(v229 + 56) = *v49;
        *(v229 + 72) = v234;
        v235 = *(v49 + 48);
        *(v229 + 88) = *(v49 + 32);
        *(v229 + 104) = v235;
        v236 = v320;
        v237 = v328;
        *(v229 + 248) = v321;
        *(v229 + 256) = v237;
        v238 = v322;
        *(v229 + 264) = v236;
        *(v229 + 272) = v238;
        v239 = v54;
        v240 = v315;
        v241 = v316;
        v242 = v315[1];
        *(v229 + 280) = *v315;
        *(v229 + 296) = v242;
        *(v229 + 312) = *(v240 + 32);
        *(v229 + 328) = v319;
        *(v229 + 336) = v326;
        *(v229 + 344) = v201;
        *(v229 + 352) = v241;
        v243 = v229 + v228;
        v166 = v329;
        (*(v227 + 32))(v243, v239, v329);

        sub_2663B95AC(v49, &v331);

        sub_2662A7224(v240, &v331, &qword_2800732F8, &qword_2664EA230);

        v244 = v241;
        static AppSelectionContext.shared(refId:completion:)(v309, v226, sub_2663BCF9C, v229);

        v331 = 0;
        v332 = 0;
        v333 = 1281;
        goto LABEL_45;
      }
    }

    swift_once();
    goto LABEL_44;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v55 = v324;
  v56 = __swift_project_value_buffer(v324, qword_280F914F0);
  swift_beginAccess();
  v57 = v323;
  (*(v323 + 16))(v30, v56, v55);
  v58 = sub_2664DFE18();
  v59 = sub_2664E06D8();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v329;
  v62 = v319;
  v63 = v314;
  if (v60)
  {
    v64 = swift_slowAlloc();
    LODWORD(v304) = a7;
    a7 = v62;
    v65 = v61;
    v66 = v64;
    *v64 = 0;
    _os_log_impl(&dword_26629C000, v58, v59, "PlayMediaAppSelector#select no valid result from prediction", v64, 2u);
    v67 = v66;
    v61 = v65;
    v62 = a7;
    LOBYTE(a7) = v304;
    MEMORY[0x266784AD0](v67, -1, -1);
  }

  (*(v57 + 8))(v30, v324);
  sub_2664DE428();
  sub_2664DE388();
  v69 = v68;
  v70 = *(v325 + 8);
  v328 = v325 + 8;
  v324 = v70;
  v70(v62, v61);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v304 = qword_280F90D38;
  v71 = swift_allocObject();
  v72 = *(v63 + 9);
  *(v71 + 168) = *(v63 + 8);
  *(v71 + 184) = v72;
  v73 = *(v63 + 11);
  *(v71 + 200) = *(v63 + 10);
  *(v71 + 216) = v73;
  v74 = *(v63 + 5);
  *(v71 + 104) = *(v63 + 4);
  *(v71 + 120) = v74;
  v75 = *(v63 + 7);
  *(v71 + 136) = *(v63 + 6);
  *(v71 + 152) = v75;
  v76 = *(v63 + 1);
  *(v71 + 40) = *v63;
  *(v71 + 56) = v76;
  v77 = *(v63 + 3);
  *(v71 + 72) = *(v63 + 2);
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  LODWORD(v323) = a7 & 1;
  *(v71 + 32) = a7 & 1;
  *(v71 + 33) = 1;
  *(v71 + 35) = 0;
  *(v71 + 88) = v77;
  v78 = v327;
  *(v71 + 232) = v326;
  *(v71 + 240) = v69;
  *(v71 + 248) = v78;
  v338 = sub_2663BCF48;
  v339 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v335 = 1107296256;
  v336 = sub_2662A3F90;
  v337 = &block_descriptor_205;
  v79 = _Block_copy(&aBlock);
  sub_2663B95AC(v63, &v331);

  v80 = v306;
  sub_2664E0068();
  v331 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v81 = v305;
  v82 = v308;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v80, v81, v79);
  _Block_release(v79);
  (*(v307 + 8))(v81, v82);
  (*(v309 + 8))(v80, v310);

  sub_2664DE428();
  sub_2664DE388();
  v84 = v83;
  v85 = v329;
  v324(v62, v329);
  v86 = v85;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v88 = qword_280F90B40;
  v87 = unk_280F90B48;
  v89 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v301 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v92);
  v93 = (*(v87 + 16))(v88, v87);
  v95 = v94;
  (*(v90 + 8))(v92, v88);
  v310 = type metadata accessor for AppSelectionContext();
  v311(v62, v330, v86);
  v96 = v325;
  v97 = (*(v325 + 80) + 360) & ~*(v325 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = v93;
  *(v98 + 24) = v95;
  *(v98 + 32) = 0;
  *(v98 + 40) = 0;
  *(v98 + 48) = v327;
  v99 = *(v63 + 9);
  *(v98 + 184) = *(v63 + 8);
  *(v98 + 200) = v99;
  v100 = *(v63 + 11);
  *(v98 + 216) = *(v63 + 10);
  *(v98 + 232) = v100;
  v101 = *(v63 + 5);
  *(v98 + 120) = *(v63 + 4);
  *(v98 + 136) = v101;
  v102 = *(v63 + 7);
  *(v98 + 152) = *(v63 + 6);
  *(v98 + 168) = v102;
  v103 = *(v63 + 1);
  *(v98 + 56) = *v63;
  *(v98 + 72) = v103;
  v104 = *(v63 + 3);
  *(v98 + 88) = *(v63 + 2);
  *(v98 + 104) = v104;
  v105 = v320;
  *(v98 + 248) = v321;
  *(v98 + 256) = 0;
  v106 = v322;
  *(v98 + 264) = v105;
  *(v98 + 272) = v106;
  v107 = v62;
  v108 = v315;
  v109 = v316;
  v110 = v315[1];
  *(v98 + 280) = *v315;
  *(v98 + 296) = v110;
  *(v98 + 312) = *(v108 + 32);
  *(v98 + 328) = v323;
  *(v98 + 336) = v326;
  *(v98 + 344) = v84;
  *(v98 + 352) = v109;
  v111 = v98 + v97;
  v112 = v329;
  (*(v96 + 32))(v111, v107, v329);
  sub_2663B95AC(v63, &v331);

  sub_2662A7224(v108, &v331, &qword_2800732F8, &qword_2664EA230);

  v113 = v109;
  static AppSelectionContext.shared(refId:completion:)(v93, v95, sub_2663BCF9C, v98);

  v331 = 0;
  v332 = 0;
  v333 = 1281;
  v318(&v331);

  return (v324)(v330, v112);
}

uint64_t sub_2663ADC5C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a6;
  v47 = a3;
  v42 = a2;
  v43 = a5;
  v44 = a4;
  v45 = a1;
  v41 = *v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v12;
    v20 = v19;
    *v19 = 134217984;
    *(v19 + 4) = 1;
    _os_log_impl(&dword_26629C000, v17, v18, "PlayMediaAppSelector#recordSignals IMPLIED siri caller:%ld...", v19, 0xCu);
    v21 = v20;
    v12 = v40;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v9 + 8);
  v22(v14, v8);
  qword_280F91CD8 = 1;
  v16(v12, v15, v8);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06B8();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v44;
  if (v25)
  {
    v27 = v12;
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v26 & 1;
    _os_log_impl(&dword_26629C000, v23, v24, "PlayMediaAppSelector#recordSignals IS supported for this intent. force?:%{BOOL}d", v28, 8u);
    v29 = v28;
    v12 = v27;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v22(v12, v8);
  v30 = __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
  v31 = swift_allocObject();
  v32 = v42;
  v33 = v43;
  *(v31 + 16) = v7;
  *(v31 + 24) = v33;
  v34 = v45;
  *(v31 + 32) = v46;
  *(v31 + 40) = v34;
  v35 = v47;
  *(v31 + 48) = v32;
  *(v31 + 56) = v35;
  *(v31 + 64) = v26 & 1;
  *(v31 + 72) = v41;
  v36 = *v30;

  v37 = v34;

  sub_26630F97C(0, 1, v36, sub_2663B9014, v31);
}

uint64_t sub_2663ADFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8, unint64_t a9)
{
  v44 = a8;
  v46 = a6;
  v47 = a7;
  v45 = a5;
  v40 = a3;
  v41 = a4;
  v48 = sub_2664DFE08();
  v43 = *(v48 - 8);
  v10 = *(v43 + 64);
  v11 = MEMORY[0x28223BE20](v48);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2662F5880(qword_280F91CD8, a1);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = a9;
  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 136446466;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v50);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v49;
    _os_log_impl(&dword_26629C000, v19, v20, "PlayMediaAppSelector#recordSignals %{public}s collectMegaModel %{BOOL}d", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = v49;
  v38 = v49;
  v24 = qword_280F91D48;
  sub_2664DFDE8();
  v25 = v43;
  v26 = v39;
  v27 = v48;
  (*(v43 + 16))(v39, v13, v48);
  v28 = (*(v25 + 80) + 33) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = "playMediaAppSelectorRecordSignals";
  *(v29 + 24) = 33;
  *(v29 + 32) = 2;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v41;
  *v30 = v40;
  v30[1] = v31;

  v32 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D83B88];
  *(v33 + 16) = xmmword_2664E36F0;
  v35 = MEMORY[0x277D83C10];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  *(v33 + 32) = v38;
  sub_2664DFDC8(v32, &dword_26629C000, v24, "playMediaAppSelectorRecordSignals", 33, 2, v13, "caller=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v33);

  v36 = swift_allocObject();
  *(v36 + 16) = sub_2663BC138;
  *(v36 + 24) = v29;

  sub_2663AE53C(sub_2663BC1E0, v36, v45, v46, v47, v23, v44 & 1, v42);

  return (*(v25 + 8))(v13, v27);
}

uint64_t sub_2663AE53C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, int a6, int a7, unint64_t a8)
{
  v166 = a8;
  LODWORD(v165) = a7;
  LODWORD(v163) = a6;
  v161.value._object = a5;
  v161.value._countAndFlagsBits = a4;
  v170 = a2;
  v168 = a1;
  v9 = sub_2664E0038();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664E00B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v169 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DE438();
  v175 = *(v16 - 8);
  v176 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v172 = v18;
  v173 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v174 = &v139 - v19;
  v20 = sub_2664DFE38();
  v177 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v167 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v164 = &v139 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v162 = &v139 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v139 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v139 - v30;
  v32 = [a3 backingStore];
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v171 = v14;
    [v33 copy];

    sub_2664E09E8();
    swift_unknownObjectRelease();
    sub_2662C1744(0, &qword_280072510, 0x277CD4370);
    if (swift_dynamicCast())
    {
      v159 = v20;
      v152 = v186;
      v34 = [a3 backingStore];
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      v36 = v177;
      if (v35)
      {
        v37 = [v35 intentMetadata];

        v151 = [v37 userUtterance];
        v34 = v37;
      }

      else
      {
        v151 = 0;
      }

      v160 = v10;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v44 = v159;
      v45 = __swift_project_value_buffer(v159, qword_280F914F0);
      swift_beginAccess();
      v46 = *(v36 + 16);
      v158 = v45;
      v157 = v36 + 16;
      v156 = v46;
      v46(v29, v45, v44);
      v47 = a3;
      v48 = sub_2664DFE18();
      v49 = sub_2664E06E8();
      v150 = v47;

      v50 = os_log_type_enabled(v48, v49);
      v51 = &selRef_setUniversalStoreIdentifiersWithBlock_;
      v155 = v9;
      v154 = v12;
      v153 = v13;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock = v53;
        *v52 = 136315138;
        v54 = [v150 utteranceString];
        v55 = sub_2664E02C8();
        v57 = v56;

        v58 = sub_2662A320C(v55, v57, &aBlock);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_26629C000, v48, v49, "PlayMediaAppSelector#recordSignals with user utterance: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        v59 = v53;
        v51 = &selRef_setUniversalStoreIdentifiersWithBlock_;
        MEMORY[0x266784AD0](v59, -1, -1);
        MEMORY[0x266784AD0](v52, -1, -1);
      }

      object = *(v36 + 8);
      object(v29, v44);
      v61 = [v150 identifier];
      v62 = objc_allocWithZone(MEMORY[0x277CD3EC0]);
      v63 = [v62 initWithIdentifier:v61 backingStore:v152];

      v64 = v63;
      v65._object = 0x80000002664F6C60;
      v65._countAndFlagsBits = 0xD000000000000022;
      INIntent.setLaunchId(launchId:caller:)(v161, v65);
      [v64 _setExtensionBundleId_];
      v66 = [v64 backingStore];

      objc_opt_self();
      v67 = swift_dynamicCastObjCClass();
      v68 = v162;
      if (v67)
      {
        v69 = [v67 intentMetadata];

        [v69 setUserUtterance_];
        v66 = v69;
      }

      v70 = v159;

      v156(v68, v158, v70);
      v71 = v64;
      v72 = sub_2664DFE18();
      v73 = sub_2664E06E8();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v161.value._object = object;
        v76 = v75;
        aBlock = v75;
        *v74 = 136315138;
        v77 = [v71 v51[243]];
        v78 = v68;
        v79 = sub_2664E02C8();
        v81 = v80;

        v82 = sub_2662A320C(v79, v81, &aBlock);

        *(v74 + 4) = v82;
        _os_log_impl(&dword_26629C000, v72, v73, "PlayMediaAppSelector#recordSignals (mirror) with user utterance: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        v83 = v76;
        object = v161.value._object;
        MEMORY[0x266784AD0](v83, -1, -1);
        MEMORY[0x266784AD0](v74, -1, -1);

        v84 = v78;
      }

      else
      {

        v84 = v68;
      }

      object(v84, v70);
      v85 = v174;
      v86 = v164;
      if (qword_280071BC8 != -1)
      {
        swift_once();
      }

      v162 = qword_2800732E8;
      if (qword_280F8FFB0 != -1)
      {
        swift_once();
      }

      v161.value._countAndFlagsBits = qword_280F8FFB8;
      v87 = swift_allocObject();
      *(v87 + 16) = v71;
      *(v87 + 24) = v163 & 1;
      *(v87 + 25) = v165 & 1;
      v165 = v87;
      *(v87 + 32) = v166;
      v156(v86, v158, v70);
      v163 = v71;
      v88 = sub_2664DFE18();
      v89 = sub_2664E06C8();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136446466;
        *(v90 + 4) = sub_2662A320C(0xD000000000000022, 0x80000002664F6C90, &aBlock);
        *(v90 + 12) = 2050;
        *(v90 + 14) = 8000;
        _os_log_impl(&dword_26629C000, v88, v89, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v90, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        MEMORY[0x266784AD0](v91, -1, -1);
        MEMORY[0x266784AD0](v90, -1, -1);
      }

      object(v86, v70);
      sub_2664DE428();
      v92 = dispatch_group_create();
      v93 = swift_allocObject();
      *(v93 + 16) = 0;
      *(v93 + 24) = 0u;
      v164 = v93;
      *(v93 + 40) = 0u;
      aBlock = 0;
      v181 = 0xE000000000000000;
      sub_266314294(0, 0, 0, 0);
      sub_2664E0B28();

      aBlock = 0xD00000000000001ALL;
      v181 = 0x80000002664F44D0;
      MEMORY[0x2667833B0](0xD000000000000022, 0x80000002664F6C90);
      v94 = aBlock;
      v95 = v181;
      type metadata accessor for AtomicOnce();
      v96 = swift_allocObject();
      *(v96 + 24) = 0;
      *(v96 + 32) = v94;
      *(v96 + 40) = v95;
      v97 = qword_280F91468;

      v166 = 0x80000002664F6C90;
      if (v97 != -1)
      {
        swift_once();
      }

      v98 = qword_280F91470;
      v183 = type metadata accessor for SiriKitTaskLoggingProvider();
      v184 = &protocol witness table for SiriKitTaskLoggingProvider;
      aBlock = v98;
      type metadata accessor for PThreadMutex();
      swift_allocObject();

      *(v96 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v94, v95, 1, &aBlock);
      dispatch_group_enter(v92);
      v99 = v175;
      v100 = *(v175 + 16);
      v101 = v173;
      v102 = v85;
      v103 = v176;
      v149 = v175 + 16;
      v148 = v100;
      v100(v173, v102, v176);
      v104 = *(v99 + 80);
      v144 = ~v104;
      v105 = (v104 + 56) & ~v104;
      v106 = (v172 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v140 = v104;
      v107 = swift_allocObject();
      v108 = v165;
      v107[2] = sub_2663BC228;
      v107[3] = v108;
      v107[4] = v96;
      v107[5] = 0xD000000000000022;
      v107[6] = v166;
      v109 = *(v99 + 32);
      v147 = v99 + 32;
      v146 = v109;
      v109(v107 + v105, v101, v103);
      *(v107 + v106) = v164;
      *(v107 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8)) = v92;
      v184 = sub_2663BC23C;
      v185 = v107;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v182 = sub_2662A3F90;
      v183 = &block_descriptor_109_0;
      v110 = _Block_copy(&aBlock);

      v161.value._object = v96;

      v145 = v92;
      v111 = v169;
      sub_2664E0068();
      v179 = MEMORY[0x277D84F90];
      v112 = sub_2662A6120();
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      v114 = sub_2662A5AC8();
      v115 = v154;
      v143 = v113;
      v142 = v114;
      v116 = v155;
      v150 = v112;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v111, v115, v110);
      _Block_release(v110);
      v117 = *(v160 + 8);
      v160 += 8;
      v161.value._countAndFlagsBits = v117;
      v117(v115, v116);
      v118 = *(v171 + 8);
      v171 += 8;
      v141 = v118;
      v118(v111, v153);

      v119 = v167;
      v120 = v159;
      v156(v167, v158, v159);
      v121 = sub_2664DFE18();
      v122 = sub_2664E06E8();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        aBlock = v124;
        *v123 = 136446210;
        *(v123 + 4) = sub_2662A320C(0xD000000000000022, v166, &aBlock);
        _os_log_impl(&dword_26629C000, v121, v122, "Completions#timeout waiting for completion: %{public}s...", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        MEMORY[0x266784AD0](v124, -1, -1);
        MEMORY[0x266784AD0](v123, -1, -1);
      }

      (*(v177 + 8))(v119, v120);
      v125 = v173;
      v126 = v174;
      v127 = v176;
      v148(v173, v174, v176);
      v128 = (v140 + 88) & v144;
      v129 = v128 + v172;
      v130 = (((v128 + v172) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
      v131 = swift_allocObject();
      v132 = v145;
      *(v131 + 16) = v145;
      *(v131 + 24) = xmmword_2664EA060;
      *(v131 + 40) = v166;
      *(v131 + 48) = 0;
      *(v131 + 49) = *v178;
      *(v131 + 52) = *&v178[3];
      *(v131 + 56) = 0u;
      *(v131 + 72) = 0u;
      v146(v131 + v128, v125, v127);
      *(v131 + v129) = 0;
      v133 = v131 + (v129 & 0xFFFFFFFFFFFFFFF8);
      v134 = v170;
      *(v133 + 8) = v168;
      *(v133 + 16) = v134;
      *(v131 + v130) = v164;
      v184 = sub_2663BC2E0;
      v185 = v131;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v182 = sub_2662A3F90;
      v183 = &block_descriptor_115_0;
      v135 = _Block_copy(&aBlock);
      sub_266314294(0, 0, 0, 0);

      v136 = v132;

      sub_2664E0068();
      v179 = MEMORY[0x277D84F90];
      v137 = v154;
      v138 = v155;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v111, v137, v135);
      _Block_release(v135);

      (v161.value._countAndFlagsBits)(v137, v138);
      v141(v111, v153);
      (*(v175 + 8))(v126, v127);

      return sub_2663142F4(0, 0, 0, 0);
    }
  }

  else
  {
  }

  v38 = v177;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  (*(v38 + 16))(v31, v39, v20);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06D8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_26629C000, v40, v41, "PlayMediaAppSelector#recordSignals error copying intent for use with app selection signals", v42, 2u);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  return (*(v38 + 8))(v31, v20);
}

uint64_t sub_2663AF8FC(uint64_t a1, uint64_t a2, void *a3, char a4, char a5)
{
  if (qword_280F8FFA0 != -1)
  {
    swift_once();
  }

  v10 = qword_280F8FFA8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a5 & 1;
  *(v11 + 40) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2663BC398;
  *(v12 + 24) = v11;

  v13 = a3;

  sub_266447850(a3, 0, v10, a4 & 1, sub_2663BC3A8, v12);
}

uint64_t sub_2663AFA2C(uint64_t *a1, void (*a2)(void **), uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v65 = a3;
  v66 = a2;
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SelfSamplingCalculator(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  v23 = *a1;
  v25 = a1[2];
  v24 = a1[3];
  v68 = a1[1];
  v69 = v25;
  v67 = v24;
  if (v23)
  {
    v63 = v23;
    if (a4)
    {

LABEL_12:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v14, qword_280F914F0);
      swift_beginAccess();
      (*(v15 + 16))(v19, v35, v14);
      v36 = sub_2664DFE18();
      v37 = sub_2664E06E8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v70 = v39;
        *v38 = 136446210;
        if (qword_280F8F6B0 != -1)
        {
          swift_once();
        }

        *(v38 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v70);
        _os_log_impl(&dword_26629C000, v36, v37, "PlayMediaAppSelector#recordSignals %{public}s shouldMakeRecord YES", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x266784AD0](v39, -1, -1);
        MEMORY[0x266784AD0](v38, -1, -1);
      }

      (*(v15 + 8))(v19, v14);
      v40 = v67;
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v41 = qword_280F90B40;
      v42 = unk_280F90B48;
      v43 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v44 = *(v41 - 8);
      MEMORY[0x28223BE20](v43);
      v46 = &v62 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v46);
      v47 = (*(v42 + 16))(v41, v42);
      v49 = v48;
      (*(v44 + 8))(v46, v41);
      type metadata accessor for AppSelectionContext();
      v50 = swift_allocObject();
      v51 = v63;
      v53 = v68;
      v52 = v69;
      v50[2] = v63;
      v50[3] = v53;
      v50[4] = v52;
      v50[5] = v40;
      v54 = v40;
      v55 = v64;
      v50[6] = v64;
      v50[7] = v47;
      v50[8] = v49;
      sub_266314294(v51, v53, v52, v54);

      v56 = v55;
      static AppSelectionContext.shared(refId:completion:)(v47, v49, sub_2663BC40C, v50);

      LOBYTE(v70) = 1;
      v71 = v51;
      v72 = v53;
      v73 = v52;
      v74 = v54;
      goto LABEL_26;
    }

    v62 = v20;
    v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v31 = sub_2664E02A8();
    v32 = [v30 initWithSuiteName_];

    if (v32)
    {
      v33 = sub_2664E02A8();
      [v32 doubleForKey_];
    }

    sub_2664DE3D8();
    (*(v8 + 32))(v13, v10, v7);
    v34 = sub_2664246D4();
    sub_2663BC3B0(v13);
    if (v34)
    {
      goto LABEL_12;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v62, v57, v14);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "PlayMediaAppSelector#recordSignals failed test to make record", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    (*(v15 + 8))(v62, v14);
    LOBYTE(v70) = 0;
    v71 = v63;
    v72 = v68;
    v73 = v69;
    v74 = v67;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v22, v26, v14);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "PlayMediaAppSelector#recordSignals failed to return record from signal gathering", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v15 + 8))(v22, v14);
    LOBYTE(v70) = 0;
    v71 = 0;
    v72 = v68;
    v73 = v69;
    v74 = v67;
    sub_266314294(0, v68, v69, v67);
  }

LABEL_26:
  v66(&v70);
  return sub_2663142F4(v71, v72, v73, v74);
}

uint64_t sub_2663B02DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v39 = a7;
  v40 = a8;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v37 = v14;
    v38 = v15;
    v18 = a1[19];
    v17 = a1[20];
    v20 = a1[21];
    v19 = a1[22];
    a1[19] = a2;
    a1[20] = a3;
    a1[21] = a4;
    a1[22] = a5;

    v21 = v18;
    v22 = v20;
    v14 = v37;
    v15 = v38;
    sub_2663142F4(v21, v17, v22, v19);
    swift_beginAccess();
    v23 = a1[23];
    a1[23] = a6;
    v24 = a6;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v26 = v41;
  (*(v15 + 16))(v41, v25, v14);
  v27 = v40;

  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v27;
    v44 = v31;
    *v30 = 136446210;
    v42 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v44);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_26629C000, v28, v29, "PlayMediaAppSelector#recordSignals saved rawSignalResult to AppSelectionContext with refId: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  return (*(v15 + 8))(v26, v14);
}

uint64_t sub_2663B05D4(char *a1, uint64_t a2)
{
  v5 = sub_2664E0038();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E00B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 24) = v13;
  *(v14 + 32) = &type metadata for Signposts;
  *(v14 + 40) = &off_2877F09E0;
  *(v14 + 16) = v2;
  *(v14 + 48) = a2;
  *(v14 + 56) = &type metadata for AudioMegamodelTriggeredLogger;
  *(v14 + 64) = &off_2877EFD00;
  aBlock[4] = sub_2663B904C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_24;
  v15 = _Block_copy(aBlock);

  sub_2664E0068();
  v17[1] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v12, v8, v15);
  _Block_release(v15);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_2663B08B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;
  v16 = *v14;

  sub_26630F97C(0, 1, v16, sub_2663BC120, v15);
}