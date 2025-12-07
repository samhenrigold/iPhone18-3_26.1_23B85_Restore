char *CallTranslationService.__allocating_init(call:videoCall:)(uint64_t a1, int a2)
{
  v115 = a2;
  v109 = sub_1C2F76A7C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v100 - v5;
  v112 = sub_1C2F7619C();
  v6 = *(v112 - 1);
  MEMORY[0x1EEE9AC00](v112);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C2F7618C();
  v104 = *(v111 - 1);
  v9 = MEMORY[0x1EEE9AC00](v111);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v100 - v12;
  v110 = sub_1C2F761CC();
  v106 = *(v110 - 1);
  MEMORY[0x1EEE9AC00](v110);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a1;
  if (a1)
  {
    v16 = qword_1EDEBDA50;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = off_1EDEBDA58;
    v18 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);

    v19 = [v18 init];
    v20 = objc_allocWithZone(type metadata accessor for TranslationInteractionController());
    v21 = sub_1C2F08BC0(a1, v17, v19, v20);
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C2F761FC();
    __swift_project_value_buffer(v22, qword_1EDEBC5D8);
    v23 = sub_1C2F761DC();
    v24 = sub_1C2F769EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C2EF2000, v23, v24, "CallTranslationService: invalid call", v25, 2u);
      MEMORY[0x1C6929E80](v25, -1, -1);
    }

    v26 = sub_1C2F761DC();
    v27 = sub_1C2F769EC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C2EF2000, v26, v27, "failed to get interactionController", v28, 2u);
      MEMORY[0x1C6929E80](v28, -1, -1);
    }

    v21 = 0;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1C2F761FC();
  v100 = __swift_project_value_buffer(v29, qword_1EDEBC5D8);
  v30 = sub_1C2F761DC();
  v31 = sub_1C2F769EC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1C2EF2000, v30, v31, "CallTranslationService: init", v32, 2u);
    MEMORY[0x1C6929E80](v32, -1, -1);
  }

  v33 = v114;
  if (v115)
  {
    v101 = 0;
  }

  else
  {
    sub_1C2F761BC();
    v34 = v112;
    (*(v6 + 104))(v8, *MEMORY[0x1E699BED8], v112);
    sub_1C2F761AC();
    (*(v6 + 8))(v8, v34);
    v35 = v104;
    v36 = v111;
    (v104[13])(v11, *MEMORY[0x1E699BED0], v111);
    v101 = sub_1C2F7617C();
    v37 = v35[1];
    v37(v11, v36);
    v37(v13, v36);
    (v106[1])(v15, v110);
  }

  v38 = v113;
  v39 = objc_opt_self();
  v112 = [v39 sharedInstance];

  v40 = [v39 sharedInstance];
  v41 = type metadata accessor for ConversationObserver();
  v42 = objc_allocWithZone(v41);
  v43 = OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_activeParticipentUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D18, &qword_1C2F78BA8);
  swift_allocObject();
  *&v42[v43] = sub_1C2F7626C();
  *&v42[OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_call] = v33;
  *&v42[OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_callCenter] = v40;
  v127.receiver = v42;
  v127.super_class = v41;
  v44 = 0x1E819F000uLL;

  v45 = v40;
  v46 = objc_msgSendSuper2(&v127, sel_init);
  v47 = [v45 conversationManager];
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v48 = sub_1C2F76A2C();
  v111 = v46;
  [v47 addDelegate:v46 queue:v48];

  v49 = 0;
  if (v21)
  {
    v49 = type metadata accessor for TranslationInteractionController();
    v50 = &off_1F42B5348;
  }

  else
  {
    v50 = 0;
    v124[1] = 0;
    v124[2] = 0;
  }

  v124[0] = v21;
  v125 = v49;
  v126 = v50;
  v104 = v21;
  v51 = _s20CommunicationsUICore20LanguageAssetManagerCACycfC_0();
  v110 = [objc_opt_self() defaultCenter];
  v52 = type metadata accessor for CallTranslationBiomeLanguageController(0);
  swift_allocObject();
  v53 = sub_1C2F40810();
  v123[3] = v52;
  v123[4] = &off_1F42B47A8;
  v123[0] = v53;
  v54 = objc_allocWithZone(v38);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v123, v52);
  v106 = &v100;
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v100 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = *v57;
  v122[3] = v52;
  v122[4] = &off_1F42B47A8;
  v122[0] = v59;
  v60 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v102 = v53;

  v61 = sub_1C2F766AC();
  v62 = [v60 initWithSuiteName_];

  if (!v62)
  {
    v120 = 0u;
    v119 = 0u;
    v65 = v110;
LABEL_30:
    sub_1C2F0A8D8(&v119, &qword_1EC075D38, &qword_1C2F78BB0);
    goto LABEL_31;
  }

  v63 = sub_1C2F766AC();
  v64 = [v62 objectForKey_];

  if (v64)
  {
    sub_1C2F76B2C();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v116 = 0u;
  }

  v65 = v110;
  v120 = v117;
  v119 = v116;
  if (!*(&v117 + 1))
  {
    goto LABEL_30;
  }

  if (!swift_dynamicCast())
  {
LABEL_31:
    v66 = 0;
    goto LABEL_32;
  }

  v66 = v116;
LABEL_32:
  v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale] = v66;
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_cancellables] = MEMORY[0x1E69E7CC0];
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions] = 0;
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions] = 0;
  v67 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_mockTranscripts;
  type metadata accessor for MockTranscripts();
  swift_allocObject();
  *&v54[v67] = sub_1C2EF6978();
  v68 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject;
  LOBYTE(v119) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  swift_allocObject();
  *&v54[v68] = sub_1C2F7629C();
  v69 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject;
  LOBYTE(v119) = 0;
  swift_allocObject();
  *&v54[v69] = sub_1C2F7629C();
  v70 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject;
  v121 = 0;
  v120 = 0u;
  v119 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D88, &unk_1C2F78BC0);
  swift_allocObject();
  *&v54[v70] = sub_1C2F7629C();
  v71 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languagePairSubject;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  (*(*(v72 - 8) + 56))(v105, 1, 1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075DA0, &qword_1C2F78BD0);
  swift_allocObject();
  *&v54[v71] = sub_1C2F7629C();
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptCancellable] = 0;
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call] = v33;
  v73 = v112;
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter] = v112;
  v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_videoCall] = v115 & 1;
  v74 = v111;
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_conversationObserver] = v111;
  v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_guardOnLockState] = v101 & 1;
  sub_1C2EF6A3C(v124, &v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController], &qword_1EC075DE0, &qword_1C2F78BD8);
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languageManager] = v51;
  *&v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_notificationCenter] = v65;
  sub_1C2F09348(v122, &v54[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_biomeLanguageController]);
  v103 = v51;
  if (v33 && (v75 = v125, , !v75))
  {

    v87 = v73;
    v88 = v74;

    v89 = v65;
    v90 = sub_1C2F761DC();
    v91 = sub_1C2F769DC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v119 = v93;
      *v92 = 136315138;
      v94 = *(v33 + 24);
      v95 = *(v33 + 32);

      v96 = sub_1C2EFAB28(v94, v95, &v119);

      *(v92 + 4) = v96;
      v44 = 0x1E819F000;
      _os_log_impl(&dword_1C2EF2000, v90, v91, "Didn't create interactionController for call %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1C6929E80](v93, -1, -1);
      MEMORY[0x1C6929E80](v92, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v76 = v73;
    v77 = v74;

    v78 = v65;
  }

  v118.receiver = v54;
  v118.super_class = v113;
  v79 = objc_msgSendSuper2(&v118, *(v44 + 4056));
  sub_1C2EF6AA4(0);
  v113 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_notificationCenter;
  v80 = v107;
  sub_1C2F76A8C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = sub_1C2EF7384(&qword_1EDEBC500, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v81 = v109;
  sub_1C2F7631C();

  v82 = *(v108 + 8);
  v82(v80, v81);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0, MEMORY[0x1E69E6348]);
  sub_1C2F7621C();
  swift_endAccess();

  sub_1C2F76A8C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2F7631C();

  v82(v80, v81);
  swift_beginAccess();
  sub_1C2F7621C();
  swift_endAccess();

  sub_1C2EF745C();
  if ((v115 & 1) == 0)
  {
    sub_1C2EF6A3C(v124, &v119, &qword_1EC075DE0, &qword_1C2F78BD8);
    v85 = *(&v120 + 1);
    if (*(&v120 + 1))
    {
      v86 = v121;
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      (*(v86 + 40))(v85, v86);
      __swift_destroy_boxed_opaque_existential_1Tm(&v119);
    }

    else
    {
      sub_1C2F0A8D8(&v119, &qword_1EC075DE0, &qword_1C2F78BD8);
    }

    sub_1C2EF6A3C(v124, &v119, &qword_1EC075DE0, &qword_1C2F78BD8);
    v97 = *(&v120 + 1);
    if (*(&v120 + 1))
    {
      v98 = v121;
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      (*(v98 + 64))(v79, &protocol witness table for CallTranslationService, v97, v98);

      goto LABEL_46;
    }

LABEL_47:

    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    sub_1C2F0A8D8(v124, &qword_1EC075DE0, &qword_1C2F78BD8);
    sub_1C2F0A8D8(&v119, &qword_1EC075DE0, &qword_1C2F78BD8);
    goto LABEL_48;
  }

  sub_1C2EF6A3C(v124, &v119, &qword_1EC075DE0, &qword_1C2F78BD8);
  v83 = *(&v120 + 1);
  if (!*(&v120 + 1))
  {
    goto LABEL_47;
  }

  v84 = v121;
  __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
  (*(v84 + 48))(v83, v84);

LABEL_46:

  __swift_destroy_boxed_opaque_existential_1Tm(v122);
  sub_1C2F0A8D8(v124, &qword_1EC075DE0, &qword_1C2F78BD8);
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
LABEL_48:
  __swift_destroy_boxed_opaque_existential_1Tm(v123);
  return v79;
}

uint64_t sub_1C2EF59B8()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EF5A14(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _s20CommunicationsUICore20LanguageAssetManagerCACycfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v20 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = sub_1C2F75C8C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  sub_1C2F75BFC();
  v13(v9, 0, 1, v12);
  sub_1C2EF5C98(v11, v6);
  sub_1C2EF5C98(v9, v3);
  v14 = sub_1C2F75B5C();
  v15 = type metadata accessor for LanguageSelectionViewModel(0);
  swift_allocObject();
  v16 = LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(9, v6, v3, MEMORY[0x1E69E7CC0], v14, 0);
  sub_1C2F0A8D8(v9, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v11, &unk_1EC076A90, &qword_1C2F78FF0);
  v17 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v22 = v15;
  v23 = &off_1F42B5598;
  *&v21 = v16;
  type metadata accessor for LanguageAssetManager();
  v18 = swift_allocObject();
  *(v18 + 56) = v17;
  sub_1C2EF6918(&v21, v18 + 16);
  return v18;
}

uint64_t sub_1C2EF5C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2EF5D28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v74 = a6;
  v79 = a5;
  v12 = sub_1C2F75C8C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = v68 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v69 = v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v73 = v68 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v71 = v68 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v78 = v68 - v26;
  v27 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v7 + 24) = v27;
  *(v7 + 32) = 0;
  v28 = *(v13 + 56);
  v28(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateTo, 1, 1, v12);
  v88 = v12;
  v29 = v12;
  v30 = a4;
  v80 = v28;
  v81 = v13 + 56;
  v28(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentSelected, 1, 1, v29);
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap) = MEMORY[0x1E69E7CC8];
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observer) = 0;
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask) = 0;
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask) = 0;
  sub_1C2F75DDC();
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_taskHint) = a1;
  v31 = *(a4 + 16);
  v87 = v13;
  v76 = a2;
  v77 = v7;
  v75 = a3;
  if (v31)
  {
    v95 = v27;
    sub_1C2EF671C(0, v31, 0);
    v32 = v95;
    v33 = v13 + 16;
    v84 = *(v13 + 16);
    v34 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v68[1] = v30;
    v83 = v34;
    v35 = v30 + v34;
    v82 = (v13 + 8);
    v36 = *(v13 + 72);
    v85 = v33;
    v37 = (v33 + 16);
    v38 = v88;
    v39 = v69;
    do
    {
      v40 = v86;
      v84(v86, v35, v38);
      v93 = sub_1C2F75B0C();
      v94 = v41;
      v91 = 45;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_1C2EF66C8();
      sub_1C2F76AFC();

      v38 = v88;
      sub_1C2F75AFC();
      (*v82)(v40, v38);
      v95 = v32;
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C2EF671C((v42 > 1), v43 + 1, 1);
        v38 = v88;
        v32 = v95;
      }

      *(v32 + 16) = v43 + 1;
      (*v37)(v32 + v83 + v43 * v36, v39, v38);
      v35 += v36;
      --v31;
    }

    while (v31);

    a2 = v76;
    v7 = v77;
    a3 = v75;
    v13 = v87;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
    v38 = v88;
  }

  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales) = v32;
  v44 = v71;
  sub_1C2EF6A3C(a2, v71, &unk_1EC076A90, &qword_1C2F78FF0);
  v45 = *(v13 + 48);
  v46 = 1;
  if (v45(v44, 1, v38) != 1)
  {
    v48 = v86;
    v47 = v87;
    (*(v87 + 32))(v86, v44, v38);
    v93 = sub_1C2F75B0C();
    v94 = v49;
    v91 = 45;
    v92 = 0xE100000000000000;
    v89 = 95;
    v90 = 0xE100000000000000;
    sub_1C2EF66C8();
    sub_1C2F76AFC();

    v38 = v88;
    sub_1C2F75AFC();
    (*(v47 + 8))(v48, v38);
    v46 = 0;
  }

  v50 = v38;
  v51 = 1;
  v52 = v78;
  v80(v78, v46, 1, v50);
  sub_1C2F09460(v52, v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_defaultTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  v53 = v72;
  sub_1C2EF6A3C(a3, v72, &unk_1EC076A90, &qword_1C2F78FF0);
  v54 = v45(v53, 1, v50);
  v55 = v73;
  if (v54 != 1)
  {
    v57 = v86;
    v56 = v87;
    (*(v87 + 32))(v86, v53, v50);
    v93 = sub_1C2F75B0C();
    v94 = v58;
    v91 = 45;
    v92 = 0xE100000000000000;
    v89 = 95;
    v90 = 0xE100000000000000;
    sub_1C2EF66C8();
    sub_1C2F76AFC();

    sub_1C2F75AFC();
    (*(v56 + 8))(v57, v50);
    v51 = 0;
  }

  v80(v55, v51, 1, v50);
  sub_1C2F09460(v55, v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  v59 = v79;
  v60 = *(v79 + 16);
  if (v60)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_1C2EF671C(0, v60, 0);
    v61 = v95;
    sub_1C2EF66C8();
    v62 = (v59 + 40);
    v63 = v70;
    do
    {
      v64 = *v62;
      v93 = *(v62 - 1);
      v94 = v64;
      v91 = 45;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;

      sub_1C2F76AFC();
      sub_1C2F75AFC();

      v95 = v61;
      v66 = *(v61 + 16);
      v65 = *(v61 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1C2EF671C((v65 > 1), v66 + 1, 1);
        v63 = v70;
        v61 = v95;
      }

      *(v61 + 16) = v66 + 1;
      (*(v87 + 32))(v61 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v66, v63, v88);
      v62 += 2;
      --v60;
    }

    while (v60);

    sub_1C2F0A8D8(v75, &unk_1EC076A90, &qword_1C2F78FF0);
    sub_1C2F0A8D8(v76, &unk_1EC076A90, &qword_1C2F78FF0);
    v7 = v77;
  }

  else
  {

    sub_1C2F0A8D8(a3, &unk_1EC076A90, &qword_1C2F78FF0);
    sub_1C2F0A8D8(a2, &unk_1EC076A90, &qword_1C2F78FF0);
    v61 = MEMORY[0x1E69E7CC0];
  }

  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_preferredLanguages) = v61;
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_useDedicatedMachPort) = v74 & 1;
  return v7;
}

unint64_t sub_1C2EF66C8()
{
  result = qword_1EDEBC540;
  if (!qword_1EDEBC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBC540);
  }

  return result;
}

void *sub_1C2EF671C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2EF673C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C2EF673C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E30, &qword_1C2F79C10);
  v10 = *(sub_1C2F75C8C() - 8);
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
  v15 = *(sub_1C2F75C8C() - 8);
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

uint64_t sub_1C2EF6918(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C2EF6978()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 0x1000000000000096;
  *(v0 + 40) = 0x80000001C2F7E410;
  *(v0 + 48) = 0xD00000000000008ELL;
  *(v0 + 56) = 0x80000001C2F7E4B0;
  *(v0 + 64) = 2;
  *(v0 + 68) = 256;
  *(v0 + 72) = 0xD00000000000007ELL;
  *(v0 + 80) = 0x80000001C2F7E540;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0760C8, &qword_1C2F79038);
  swift_allocObject();
  *(v0 + 104) = sub_1C2F7626C();
  return v0;
}

uint64_t sub_1C2EF6A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C2EF6AA4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_1C2F75C8C();
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2F760EC();
  v57 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  if (a1)
  {
    v55 = v7;
    v16 = a1;
    goto LABEL_3;
  }

  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = [Strong translationSession];

    if (v16)
    {
      v55 = v7;
LABEL_3:
      v17 = a1;
      v18 = [v16 translationState];
      LOBYTE(v58) = v18 - 1 < 3;
      sub_1C2F7627C();
      if (v18 == 2)
      {
        v51 = 2;
        v53 = v2;
        v54 = v10;
        v52 = v6;
        [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
        sub_1C2F760CC();
        v19 = TUBundle();
        if (v19)
        {
          v20 = v19;
          v21 = [v16 localLocale];
          sub_1C2F75B9C();

          sub_1C2F75B0C();
          v22 = v55;
          v49 = *(v56 + 1);
          v49(v9, v55);
          v56 = "lservicesd.FaceTimeProvider";
          v47 = sub_1C2F760DC();
          v50 = v23;

          v24 = v15;
          v25 = v54;
          v57 = *(v57 + 8);
          (v57)(v24, v54);
          [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
          sub_1C2F760CC();
          v26 = TUBundle();
          if (v26)
          {
            v27 = v26;
            v48 = v16;
            v28 = [v16 remoteLocale];
            sub_1C2F75B9C();

            sub_1C2F75B0C();
            v49(v9, v22);
            v29 = sub_1C2F760DC();
            v31 = v30;

            (v57)(v13, v25);
            if (v50)
            {
              v6 = v52;
              v18 = v51;
              if (v31)
              {
                v58 = 0x1000001869FLL;
                v59 = v47;
                v60 = v50;
                v61 = v29;
                v62 = v31;
                sub_1C2F7627C();
                sub_1C2F0A6B4(v58, v59, v60, v61, v62);
              }

              else
              {
              }

              v16 = v48;
            }

            else
            {

              v6 = v52;
              v16 = v48;
              v18 = v51;
            }

            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_20:
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v37 = sub_1C2F761FC();
      __swift_project_value_buffer(v37, qword_1EDEBC5D8);
      v38 = sub_1C2F761DC();
      v39 = sub_1C2F769EC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v16;
        v41 = swift_slowAlloc();
        *v41 = 67109120;
        *(v41 + 4) = v18;
        _os_log_impl(&dword_1C2EF2000, v38, v39, "updateTranslationState: %d", v41, 8u);
        v42 = v41;
        v16 = v40;
        MEMORY[0x1C6929E80](v42, -1, -1);
      }

      if (v18 == 3)
      {
        sub_1C2F011A0();
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
        v44 = v16;
        v45 = [v16 localLocale];
        sub_1C2F75B9C();

        v46 = [v44 remoteLocale];
        sub_1C2F75B9C();

        (*(*(v43 - 8) + 56))(v6, 0, 1, v43);
        sub_1C2F7627C();

        sub_1C2F0A8D8(v6, &qword_1EC075D08, &qword_1C2F78BA0);
      }

      else
      {
        sub_1C2EF724C();
      }

      return;
    }
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v33 = sub_1C2F761FC();
  __swift_project_value_buffer(v33, qword_1EDEBC5D8);
  v34 = sub_1C2F761DC();
  v35 = sub_1C2F769EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C2EF2000, v34, v35, "updateTranslationState no session", v36, 2u);
    MEMORY[0x1C6929E80](v36, -1, -1);
  }

  LOBYTE(v58) = 0;
  sub_1C2F7627C();
  sub_1C2EF724C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C2EF724C()
{
  v1 = v0;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC5D8);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "stopCaptionClients", v5, 2u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions) = 0;
  if (v6)
  {
    sub_1C2F31844();
  }

  v7 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions) = 0;
  if (v7)
  {
    sub_1C2F31844();
  }
}

uint64_t sub_1C2EF7384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2EF73CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2EF7414(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1C2EF745C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D18, &qword_1C2F78BA8);
  sub_1C2EF7414(&unk_1EDEBC578, &qword_1EC075D18, &qword_1C2F78BA8, MEMORY[0x1E695BF88]);
  sub_1C2F762AC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0760B0, &qword_1C2F79030);
  sub_1C2EF7414(&unk_1EDEBC588, &unk_1EC0760B0, &qword_1C2F79030, MEMORY[0x1E695BED8]);
  sub_1C2F7631C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0, MEMORY[0x1E69E6348]);
  sub_1C2F7621C();
  swift_endAccess();
}

uint64_t CallTranslationService.availableRemoteLanguage(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1C2F75C8C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1C2F7688C();
  v3[8] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C2EF7734, v6, v5);
}

uint64_t sub_1C2EF7734()
{
  v24 = v0;
  if (_TUIsInternalInstall() && (v1 = [objc_opt_self() tu_defaults], v2 = sub_1C2F766AC(), v3 = objc_msgSend(v1, sel_stringForKey_, v2), v2, v1, v3))
  {

    v4 = sub_1C2F766CC();
    v6 = v5;

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);

    v8 = sub_1C2F761DC();
    v9 = sub_1C2F769EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1C2EFAB28(v4, v6, &v23);
      _os_log_impl(&dword_1C2EF2000, v8, v9, "User defaults set to locale identifier %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1C6929E80](v11, -1, -1);
      MEMORY[0x1C6929E80](v10, -1, -1);
    }

    v12 = v0[2];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
    v14 = *(v13 + 48);
    sub_1C2F75AFC();
    v15 = *MEMORY[0x1E6982BD0];
    v16 = sub_1C2F75E3C();
    (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_1C2F75BFC();
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_1C2EF8E20;
    v20 = v0[7];
    v21 = v0[3];
    v22 = v0[2];

    return sub_1C2EF7A84(v22, v21, v20);
  }
}

uint64_t sub_1C2EF7A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076020, &qword_1C2F78FD8);
  v4[14] = swift_task_alloc();
  v5 = sub_1C2F75B3C();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076028, &unk_1C2F78FE0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v6 = sub_1C2F75C6C();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v4[35] = swift_task_alloc();
  v7 = sub_1C2F75C8C();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076040, &qword_1C2F78FF8);
  v4[43] = swift_task_alloc();
  v8 = sub_1C2F7612C();
  v4[44] = v8;
  v4[45] = *(v8 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  sub_1C2F7688C();
  v4[48] = sub_1C2F7687C();
  v10 = sub_1C2F7684C();
  v4[49] = v10;
  v4[50] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C2EF7E6C, v10, v9);
}

uint64_t sub_1C2EF7E6C()
{
  v14 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  sub_1C2F7614C();
  (*(v4 + 104))(v2, *MEMORY[0x1E696ED80], v3);
  sub_1C2EF7384(&unk_1EDEBC5C0, MEMORY[0x1E696EDA8], MEMORY[0x1E696EDB8]);
  sub_1C2F767BC();
  sub_1C2F767BC();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (v0[8] == v0[9])
  {
    sub_1C2F7615C();
    v6 = sub_1C2F766AC();

    v7 = PNCopyBestGuessCountryCodeForNumber();

    if (v7)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v12 = 0;
        v13 = 0;
        sub_1C2F766BC();
      }
    }

    v8 = v0[10];
  }

  else
  {
    v8 = v0[10];
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1C2EF8E20()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C2EF8FA4, v6, v5);
}

uint64_t sub_1C2EF8FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1C2EF9024(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20CommunicationsUICore19CallScreeningStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1C2EF9088(uint64_t a1, uint64_t a2)
{
  sub_1C2F7599C();
  if (!v18)
  {
    sub_1C2F0A8D8(v17, &qword_1EC075D38, &qword_1C2F78BB0);
    return;
  }

  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = [v16 uniqueProxyIdentifier];
  v3 = sub_1C2F766CC();
  v5 = v4;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
    v8 = Strong;

    if (v7)
    {
      v10 = *(v7 + 24);
      v9 = *(v7 + 32);

      if (v3 == v10 && v5 == v9)
      {
      }

      else
      {
        v12 = sub_1C2F76EFC();

        if ((v12 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v15 = [v16 translationSession];
        sub_1C2F0A0F8(v15);
      }

      goto LABEL_16;
    }
  }

LABEL_16:
}

uint64_t LanguageAssetManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t LanguageSelectionViewModel.__deallocating_deinit()
{
  LanguageSelectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t LanguageSelectionViewModel.deinit()
{

  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateTo, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentSelected, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_defaultTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);

  v1 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C2EF9628()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2EF9698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t static FTMenuItem.screenSharingRow(isSessionActive:rowAction:stopAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a3;
  v78 = a5;
  v75 = a2;
  v76 = a4;
  v74 = a1;
  v5 = sub_1C2F75AEC();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = (&v69 - v10);
  v11 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1C2F7669C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  sub_1C2F7663C();
  v19 = *(v13 + 16);
  v19(v16, v18, v12);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  sub_1C2F75BFC();
  v73 = sub_1C2F766EC();
  v70 = v23;
  v24 = *(v13 + 8);
  v24(v18, v12);
  sub_1C2F7663C();
  v19(v16, v18, v12);
  v25 = [v21 bundleForClass_];
  sub_1C2F75BFC();
  v26 = sub_1C2F766EC();
  v28 = v27;
  v24(v18, v12);
  v87 = v26;
  v88 = v28;
  sub_1C2EF66C8();
  v79 = sub_1C2F763AC();
  v80 = v29;
  v31 = v30;
  v72 = v32;
  v33 = v32 & 1;
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDEBCF90;
  v35 = sub_1C2F7647C();
  v36 = v81;
  *v81 = v35;
  v37 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v37 - 8) + 56);
  v38(v36, 0, 1, v37);
  v39 = v82;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v40 = swift_allocObject();
  v41 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v41 = 0;
  v41[1] = 0;
  v42 = v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v69 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v38((v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v37);
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v43 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v43 = 0;
  v43[1] = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v44 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v44 = 0;
  v44[1] = 0;
  v45 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v45[1] = 0;
  v45[2] = 0;
  *v45 = 0;
  sub_1C2F75DDC();
  (*(v83 + 16))(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v39, v84);
  v46 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v47 = v70;
  *v46 = v73;
  v46[1] = v47;
  v48 = *v42;
  v49 = *(v42 + 8);
  v50 = *(v42 + 16);
  v51 = *(v42 + 24);

  v52 = v79;
  v53 = v80;
  sub_1C2F4F434(v79, v80, v33);
  sub_1C2F4F468(v48, v49, v50, v51);
  *v42 = v52;
  *(v42 + 8) = v53;
  *(v42 + 16) = v33;
  *(v42 + 24) = v31;
  v73 = v31;
  v54 = v81;
  v55 = v71;
  sub_1C2F4F4BC(v81, v71);
  v56 = v69;
  sub_1C2F4F548(v40 + v69);
  sub_1C2F4F72C(v55, v40 + v56);
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v74 & 1;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v57 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  v59 = v77;
  v58 = v78;
  *v57 = v75;
  v57[1] = v59;
  v60 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v61 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v60 = v76;
  v60[1] = v58;
  swift_beginAccess();
  if (v61[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v69 - 3) = 0;
    *(&v69 - 2) = 0;
    *(&v69 - 4) = v40;
    v86 = v40;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v61 = 0;
    v61[1] = 0;
  }

  v63 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  v65 = v83;
  v64 = v84;
  v66 = v82;
  if (*(v40 + v63))
  {
    v67 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v67);
    *(&v69 - 2) = v40;
    *(&v69 - 1) = 0;
    v85 = v40;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v79, v80, v72 & 1);

  (*(v65 + 8))(v66, v64);
  sub_1C2F4F548(v54);
  return v40;
}

uint64_t sub_1C2EFA0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();
}

uint64_t sub_1C2EFA170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2EFA1E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t static FTMenuItem.sharePlayRow(isSessionActive:rowAction:stopAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a3;
  v78 = a5;
  v75 = a2;
  v76 = a4;
  v74 = a1;
  v5 = sub_1C2F75AEC();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = (&v69 - v10);
  v11 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1C2F7669C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  sub_1C2F7663C();
  v19 = *(v13 + 16);
  v19(v16, v18, v12);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  sub_1C2F75BFC();
  v73 = sub_1C2F766EC();
  v70 = v23;
  v24 = *(v13 + 8);
  v24(v18, v12);
  sub_1C2F7663C();
  v19(v16, v18, v12);
  v25 = [v21 bundleForClass_];
  sub_1C2F75BFC();
  v26 = sub_1C2F766EC();
  v28 = v27;
  v24(v18, v12);
  v87 = v26;
  v88 = v28;
  sub_1C2EF66C8();
  v79 = sub_1C2F763AC();
  v80 = v29;
  v31 = v30;
  v72 = v32;
  v33 = v32 & 1;
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDEBCF90;
  v35 = sub_1C2F7647C();
  v36 = v81;
  *v81 = v35;
  v37 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v37 - 8) + 56);
  v38(v36, 0, 1, v37);
  v39 = v82;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v40 = swift_allocObject();
  v41 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v41 = 0;
  v41[1] = 0;
  v42 = v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v69 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v38((v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v37);
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v43 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v43 = 0;
  v43[1] = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v44 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v44 = 0;
  v44[1] = 0;
  v45 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v45[1] = 0;
  v45[2] = 0;
  *v45 = 0;
  sub_1C2F75DDC();
  (*(v83 + 16))(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v39, v84);
  v46 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v47 = v70;
  *v46 = v73;
  v46[1] = v47;
  v48 = *v42;
  v49 = *(v42 + 8);
  v50 = *(v42 + 16);
  v51 = *(v42 + 24);

  v52 = v79;
  v53 = v80;
  sub_1C2F4F434(v79, v80, v33);
  sub_1C2F4F468(v48, v49, v50, v51);
  *v42 = v52;
  *(v42 + 8) = v53;
  *(v42 + 16) = v33;
  *(v42 + 24) = v31;
  v73 = v31;
  v54 = v81;
  v55 = v71;
  sub_1C2F4F4BC(v81, v71);
  v56 = v69;
  sub_1C2F4F548(v40 + v69);
  sub_1C2F4F72C(v55, v40 + v56);
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v74 & 1;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 0;
  *(v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v57 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  v59 = v77;
  v58 = v78;
  *v57 = v75;
  v57[1] = v59;
  v60 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v61 = (v40 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v60 = v76;
  v60[1] = v58;
  swift_beginAccess();
  if (v61[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v69 - 3) = 0;
    *(&v69 - 2) = 0;
    *(&v69 - 4) = v40;
    v86 = v40;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v61 = 0;
    v61[1] = 0;
  }

  v63 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  v65 = v83;
  v64 = v84;
  v66 = v82;
  if (*(v40 + v63))
  {
    v67 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v67);
    *(&v69 - 2) = v40;
    *(&v69 - 1) = 0;
    v85 = v40;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v79, v80, v72 & 1);

  (*(v65 + 8))(v66, v64);
  sub_1C2F4F548(v54);
  return v40;
}

unint64_t sub_1C2EFAB28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C2EFABF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C2EFAD00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C2EFABF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C2F0808C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C2F76CDC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C2EFAD00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *FTMenuItemRegistry.container(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_1C2EFAEC0(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for FTMenuItemProviderContainer();
    v10 = swift_allocObject();
    v10[1] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    v10[4] = 0u;
    v10[5] = 0u;
    v10[6] = 0u;
    v10[7] = 0u;
    v10[8] = 0u;
    v10[9] = 0u;
    v10[10] = 0u;
    v10[11] = 0u;
    v10[12] = 0u;
    v10[13] = 0u;
    v10[14] = 0u;
    v10[15] = 0u;
    v10[16] = 0u;
    v10[17] = 0u;
    v10[18] = 0u;
    v10[19] = 0u;
    v10[20] = 0u;
    v10[21] = 0u;
    v10[22] = 0u;
    v10[23] = 0u;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1C2EFB014(v10, a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EC076FC8, &qword_1C2F7D600);

    *(v3 + v6) = v13;
    swift_endAccess();
  }

  return v10;
}

unint64_t sub_1C2EFAEC0(uint64_t a1, uint64_t a2)
{
  sub_1C2F76F9C();
  sub_1C2F7673C();
  v4 = sub_1C2F76FDC();

  return sub_1C2EFAF38(a1, a2, v4);
}

unint64_t sub_1C2EFAF38(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C2F76EFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C2EFB014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C2EFAEC0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1C2F69D58(v20, a4 & 1, a5, a6);
      v15 = sub_1C2EFAEC0(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1C2F76F2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1C2F6A94C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_1C2EFB1B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2EFB224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CallScreeningStatus.description.getter()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 1:
      return 0x6572635320746F4ELL;
    case 3:
      return 0x6E696E6565726353;
    case 2:
      return 0x696F56206576694CLL;
  }

  MEMORY[0x1C6928D30](0x64656E6565726353, 0xEA00000000002820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077028, &qword_1C2F7D7F8);
  sub_1C2F76D3C();
  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall FTMenuItemRegistry.clear(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1EDEBC5F8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBC600);

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C2EFAB28(countAndFlagsBits, object, v8);
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Clear custom item providers for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_beginAccess();

  sub_1C2EFB550(0, countAndFlagsBits, object);
  swift_endAccess();
}

uint64_t sub_1C2EFB550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C2EFB014(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1EC076FC8, &qword_1C2F7D600);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C2EFAEC0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C2F6A94C(&qword_1EC076FC8, &qword_1C2F7D600);
        v14 = v16;
      }

      result = sub_1C2EFB8C4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1C2EFB668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FTMenuItemProviderContainer.__deallocating_deinit()
{
  FTMenuItemProviderContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t FTMenuItem.__deallocating_deinit()
{
  FTMenuItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t FTMenuItem.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id;
  v2 = sub_1C2F75AEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C2F4F468(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle + 8), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle + 16), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle + 24));
  sub_1C2F4F548(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon);

  sub_1C2EFDE10(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider + 8));
  sub_1C2F2039C(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView + 8), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView + 16));
  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  v4 = sub_1C2F75DEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1C2EFB8C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C2F76B5C() + 1) & ~v5;
    do
    {
      sub_1C2F76F9C();

      sub_1C2F7673C();
      v9 = sub_1C2F76FDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

id static FTMenuItemRegistry.shared.getter()
{
  if (qword_1EDEBCC50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBCC58;

  return v1;
}

_DWORD *sub_1C2EFBAF4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1C2EFBB44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C2EFBB54()
{
  v1 = sub_1C2F75C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C2EFBC5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFBC94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFBD14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFBD4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFBD84()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFBDC8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076358, &unk_1C2F79308);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C2EFBDF8()
{
  v1 = sub_1C2F761FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2EFBECC()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceActivityAttributes(0);
  v21 = *(*(v2 - 8) + 80);
  v3 = (v21 + 40) & ~v21;
  v4 = *(*(v2 - 8) + 64);
  v20 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v5 = *(v20 - 8);
  v17 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v18 = *(v5 + 80);
  v19 = *(v5 + 64);

  v6 = v1 + v3;
  v7 = sub_1C2F759EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v1 + v3, v7);
  v9(v1 + v3 + *(v2 + 20), v7);
  v10 = *(v2 + 32);
  v11 = sub_1C2F75A5C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v1 + v17;
  v14 = *(v8 + 48);
  if (!v14(v1 + v17, 1, v7))
  {
    v9(v13, v7);
  }

  v15 = *(v20 + 20);
  if (!v14(v13 + v15, 1, v7))
  {
    v9(v13 + v15, v7);
  }

  return MEMORY[0x1EEE6BDD0](v1, v17 + v19, v21 | v18 | 7);
}

uint64_t sub_1C2EFC194()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v7 = *(*(v6 - 8) + 80);
  v14 = *(*(v6 - 8) + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v15 = (v4 + v5 + v7) & ~v7;
  v8 = v0 + v15;
  v9 = sub_1C2F759EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v0 + v15, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v12 = *(v6 + 20);
  if (!v11(v8 + v12, 1, v9))
  {
    (*(v10 + 8))(v8 + v12, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v15 + v14, v3 | v7 | 7);
}

__n128 sub_1C2EFC3DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2EFC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F759EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C2EFC558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C2F759EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C2EFC670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C2EFC748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C2EFC8A8@<X0>(uint64_t *a1@<X8>)
{
  result = BlocklistViewModel.knownEntries.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C2EFC8D8@<X0>(uint64_t *a1@<X8>)
{
  result = BlocklistViewModel.unknownEntries.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C2EFC924()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFC968()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C2EFCA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F75AEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2EFCAFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2F75AEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C2EFCBB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFCC04()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCC3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFCC7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2EFCCC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFCCFC@<X0>(_BYTE *a1@<X8>)
{
  result = DeviceConditions.isSetupAssistantRunning.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2EFCD3C@<X0>(_BYTE *a1@<X8>)
{
  result = DeviceConditions.isInLostMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2EFCD7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFCDBC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCDF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCE44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2F299FC(v1, v2);
}

uint64_t sub_1C2EFCEB8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6D6574737973;
  }
}

uint64_t sub_1C2EFCEF4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

unint64_t sub_1C2EFCF30()
{
  v1 = 0x74496C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

void *sub_1C2EFCFA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1C2EFCFC0()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCFF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD030()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD068()
{
  v1 = sub_1C2F75C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 44) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 17, v3 | 7);
}

BOOL sub_1C2EFD178@<W0>(_BYTE *a1@<X8>)
{
  result = BlockUnblockController.canReportSpam.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C2EFD204@<X0>(_BYTE *a1@<X8>)
{
  result = BlockUnblockController.areAllUnknownParticipantsBlocked.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2EFD234()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2EFD2C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD3E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD454()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD4A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD4D8()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD510()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFD550()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD594(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2F46168(v1, v2);
}

uint64_t sub_1C2EFD684()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD6E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD720()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1C2EFD7AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2EFD7B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD80C()
{
  v1 = sub_1C2F7616C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2EFD8D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2EFD930()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD988()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD9D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFDA10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFDA58()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFDAD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C2EFDB18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFDB58()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2EFDBB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C2EFDC00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFDC38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFDC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F75AEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2EFDD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2F75AEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C2EFDE10(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2EFDE20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *CallTranslationService.remoteDisplayName.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    v4 = sub_1C2F766CC();
    return v4;
  }

  return result;
}

void *CallTranslationService.isAvailable.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result translationAvailability];

    return (v3 == 3);
  }

  return result;
}

uint64_t CallTranslationService.isShowingRemoteLocale.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallTranslationService.isShowingRemoteLocale.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallTranslationService.isTranslationStartedPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0, MEMORY[0x1E695BD38]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C2EFE2F4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1C2EF7414(a4, a2, a3, MEMORY[0x1E695BFB0]);
  return sub_1C2F762AC();
}

uint64_t CallTranslationService.transcriptsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075E18, &qword_1C2F78BF0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D88, &unk_1C2F78BC0);
  sub_1C2EF7414(&unk_1EDEBC560, &qword_1EC075D88, &unk_1C2F78BC0, MEMORY[0x1E695BFB0]);
  sub_1C2F762BC();

  sub_1C2EF7414(&unk_1EDEBC5A8, &qword_1EC075E18, &qword_1C2F78BF0, MEMORY[0x1E695BC80]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_1C2EFE544(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  sub_1C2F0AAC0(v3, v2, v4, v5, v6);
}

uint64_t CallTranslationService.availableLanguages()()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_1C2F75E3C();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_1C2F75C8C();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_1C2F7688C();
  v1[29] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v1[30] = v7;
  v1[31] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2EFE7C0, v7, v6);
}

uint64_t sub_1C2EFE7C0(uint64_t a1)
{
  sub_1C2F75BFC();
  v2 = sub_1C2F75B5C();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C2F08754(0, v3, 0);
    v5 = v41;
    sub_1C2EF66C8();
    v6 = (v2 + 40);
    do
    {
      v7 = *v6;
      *(v1 + 16) = *(v6 - 1);
      *(v1 + 24) = v7;
      *(v1 + 32) = 45;
      *(v1 + 40) = 0xE100000000000000;
      *(v1 + 48) = 95;
      *(v1 + 56) = 0xE100000000000000;
      v8 = sub_1C2F76AFC();
      v42 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v40 = v8;
        v13 = v9;
        sub_1C2F08754((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v40;
        v5 = v42;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v6 += 2;
      --v3;
    }

    while (v3);

    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v1 + 224);
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  v16 = sub_1C2EFF3DC(sub_1C2F09440, v15, v5);

  v17 = *(v16 + 16);
  v18 = *(v1 + 200);
  if (v17)
  {
    sub_1C2EF671C(0, v17, 0);
    v19 = v4;
    v20 = v16 + 40;
    do
    {

      sub_1C2F75AFC();
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C2EF671C((v21 > 1), v22 + 1, 1);
      }

      v23 = *(v1 + 216);
      v24 = *(v1 + 192);
      *(v19 + 16) = v22 + 1;
      v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v26 = *(v18 + 72);
      (*(v18 + 32))(v19 + v25 + v26 * v22, v23, v24);
      v20 += 16;
      --v17;
    }

    while (v17);

    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v26 = *(v18 + 72);
    v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v19 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 256) = v25;
  *(v1 + 264) = v26;
  v27 = *(v1 + 224);
  v28 = *(v1 + 192);
  v29 = *(v1 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E30, &qword_1C2F79C10);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C2F78B90;
  v31 = *(v29 + 16);
  *(v1 + 272) = v31;
  *(v1 + 280) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v30 + v25, v27, v28);
  result = sub_1C2F085E8(v19);
  *(v1 + 288) = v30;
  *(v1 + 64) = v4;
  v33 = *(v30 + 16);
  *(v1 + 296) = v33;
  if (v33)
  {
    v34 = *(*(v1 + 88) + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languageManager);
    *(v1 + 336) = *MEMORY[0x1E6982BD0];
    *(v1 + 304) = v34;
    *(v1 + 312) = 0;
    if (*(v30 + 16))
    {
      (*(v1 + 272))(*(v1 + 208), v30 + *(v1 + 256), *(v1 + 192));
      v35 = swift_task_alloc();
      *(v1 + 320) = v35;
      *v35 = v1;
      v35[1] = sub_1C2EFEC90;
      v36 = *(v1 + 208);

      return sub_1C2F516EC(v36);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v37 = *(v1 + 200);

    (*(v37 + 8))(*(v1 + 224), *(v1 + 192));

    v38 = *(v1 + 8);
    v39 = MEMORY[0x1E69E7CC0];

    return v38(v39);
  }

  return result;
}

uint64_t sub_1C2EFEC90(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 328) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1C2EFEDB8, v4, v3);
}

uint64_t sub_1C2EFEDB8()
{
  result = *(v0 + 328);
  v2 = MEMORY[0x1E69E7CC0];
  v49 = *(result + 16);
  if (v49)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v47 = *(v0 + 328);
    while (v3 < *(result + 16))
    {
      v5 = *(v0 + 336);
      v6 = *(v0 + 152);
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);
      v9 = *(v0 + 120);
      v51 = *(v6 + 72);
      v53 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1C2EF6A3C(*(v0 + 328) + v53 + v51 * v3, *(v0 + 184), &unk_1EC075E20, &unk_1C2F78C00);
      (*(v7 + 104))(v8, v5, v9);
      LOBYTE(v5) = sub_1C2F75E2C();
      (*(v7 + 8))(v8, v9);
      v10 = *(v0 + 184);
      if (v5)
      {
        sub_1C2F09460(v10, *(v0 + 176), &unk_1EC075E20, &unk_1C2F78C00);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 72) = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C2F08734(0, *(v4 + 16) + 1, 1);
          v4 = *(v0 + 72);
        }

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1C2F08734((v12 > 1), v13 + 1, 1);
          v4 = *(v0 + 72);
        }

        v14 = *(v0 + 176);
        *(v4 + 16) = v13 + 1;
        sub_1C2F09460(v14, v4 + v53 + v13 * v51, &unk_1EC075E20, &unk_1C2F78C00);
      }

      else
      {
        sub_1C2F0A8D8(v10, &unk_1EC075E20, &unk_1C2F78C00);
      }

      ++v3;
      result = v47;
      if (v49 == v3)
      {
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_14:

  v15 = *(v4 + 16);
  if (v15)
  {
    v16 = *(v0 + 152);
    *(v0 + 80) = v2;
    result = sub_1C2F08714(0, v15, 0);
    v17 = 0;
    v42 = v4 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v43 = v15;
    v18 = *(v0 + 80);
    v55 = v4;
    while (v17 < *(v4 + 16))
    {
      v19 = *(v0 + 200);
      v20 = *(v0 + 192);
      v21 = *(v0 + 168);
      v52 = *(v0 + 160);
      v54 = v18;
      v22 = *(v0 + 144);
      v23 = *(v0 + 128);
      v44 = *(v0 + 272);
      v45 = *(v0 + 120);
      v46 = *(v0 + 112);
      v48 = *(v0 + 208);
      v24 = v42 + *(*(v0 + 152) + 72) * v17;
      v25 = *(v22 + 48);
      v50 = *(*(v0 + 96) + 48);
      v44(v21, v24, v20);
      (*(v23 + 16))(v21 + *(v22 + 48), v24 + v25, v45);
      v44(v46, v48, v20);
      sub_1C2F09460(v21, v52, &unk_1EC075E20, &unk_1C2F78C00);
      v26 = *(v22 + 48);
      v18 = v54;
      (*(v19 + 32))(v46 + v50, v52, v20);
      (*(v23 + 8))(v52 + v26, v45);
      *(v0 + 80) = v54;
      v28 = *(v54 + 16);
      v27 = *(v54 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C2F08714((v27 > 1), v28 + 1, 1);
        v18 = *(v0 + 80);
      }

      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      ++v17;
      *(v18 + 16) = v28 + 1;
      result = sub_1C2F09460(v29, v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, &unk_1EC076E10, &unk_1C2F79C20);
      v4 = v55;
      if (v43 == v17)
      {

        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v31 = *(v0 + 296);
  v33 = *(v0 + 200);
  v32 = *(v0 + 208);
  v34 = *(v0 + 192);
  v35 = *(v0 + 312) + 1;
  sub_1C2F084B0(v18);
  v36 = *(v33 + 8);
  result = v36(v32, v34);
  if (v35 == v31)
  {

    v56 = *(v0 + 64);
    v36(*(v0 + 224), *(v0 + 192));

    v37 = *(v0 + 8);

    return v37(v56);
  }

  else
  {
    v38 = *(v0 + 312) + 1;
    *(v0 + 312) = v38;
    v39 = *(v0 + 288);
    if (v38 >= *(v39 + 16))
    {
LABEL_32:
      __break(1u);
      return result;
    }

    (*(v0 + 272))(*(v0 + 208), v39 + *(v0 + 256) + *(v0 + 264) * v38, *(v0 + 192));
    v40 = swift_task_alloc();
    *(v0 + 320) = v40;
    *v40 = v0;
    v40[1] = sub_1C2EFEC90;
    v41 = *(v0 + 208);

    return sub_1C2F516EC(v41);
  }
}

uint64_t sub_1C2EFF358(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_1C2F75B0C() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1C2F76EFC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C2EFF3DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1C2F08754(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1C2F08754((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

void CallTranslationService.startTranslation(localLocale:remoteLocale:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C2F75C8C();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  sub_1C2F7628C();
  if ((aBlock[0] & 1) == 0)
  {
    if (!*&v2[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call] || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v28 = sub_1C2F761FC();
      __swift_project_value_buffer(v28, qword_1EDEBC5D8);
      v19 = sub_1C2F761DC();
      v29 = sub_1C2F769DC();
      if (!os_log_type_enabled(v19, v29))
      {
        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C2EF2000, v19, v29, "Current call is ended", v30, 2u);
      v22 = v30;
LABEL_18:
      MEMORY[0x1C6929E80](v22, -1, -1);
LABEL_19:

      return;
    }

    v54 = Strong;
    sub_1C2F7628C();
    if (aBlock[0])
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v24 = sub_1C2F761FC();
      __swift_project_value_buffer(v24, qword_1EDEBC5D8);
      v25 = sub_1C2F761DC();
      v26 = sub_1C2F769DC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1C2EF2000, v25, v26, "Translation has started in remote", v27, 2u);
        MEMORY[0x1C6929E80](v27, -1, -1);
      }

      return;
    }

    if (v2[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_guardOnLockState] != 1 || (type metadata accessor for DeviceConditions(), inited = swift_initStaticObject(), sub_1C2F25CF4(), sub_1C2F7628C(), , LOBYTE(aBlock[0]) != 1))
    {
      v40 = v54;
      sub_1C2EFFCF0(a1, a2, v54);

      return;
    }

    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = *(v55 + 16);
    v31(v16, a1, v5);
    v31(v14, a2, v5);
    v31(v11, v16, v5);
    v31(v8, v14, v5);
    v32 = v55;
    v33 = *(v55 + 80);
    v34 = (v33 + 24) & ~v33;
    v51 = (v6 + v33 + v34) & ~v33;
    v50 = (v6 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    v36 = *(v32 + 32);
    v36(v35 + v34, v16, v5);
    v36(v35 + v51, v14, v5);
    v37 = v54;
    *(v35 + v50) = v54;
    v38 = v37;

    if (sub_1C2F25A48())
    {
      aBlock[4] = sub_1C2F094C8;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C2F07C9C;
      aBlock[3] = &block_descriptor;
      v39 = _Block_copy(aBlock);

      SBSRequestPasscodeUnlockUI();
      _Block_release(v39);
    }

    else
    {
      swift_beginAccess();
      v41 = swift_unknownObjectWeakLoadStrong();
      if (!v41)
      {
        v44 = v55;
        if (qword_1EDEBC5D0 != -1)
        {
          swift_once();
        }

        v45 = sub_1C2F761FC();
        __swift_project_value_buffer(v45, qword_1EDEBC5D8);
        v46 = sub_1C2F761DC();
        v47 = sub_1C2F769DC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1C2EF2000, v46, v47, "Translation has started because device is still locked.", v48, 2u);
          MEMORY[0x1C6929E80](v48, -1, -1);
        }

        v49 = *(v44 + 8);
        v49(v8, v5);
        v49(v11, v5);
        goto LABEL_29;
      }

      v42 = v41;
      sub_1C2EFFCF0(v11, v8, v38);
    }

    v43 = *(v55 + 8);
    v43(v8, v5);
    v43(v11, v5);
LABEL_29:

    return;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C2F761FC();
  __swift_project_value_buffer(v17, qword_1EDEBC5D8);
  v18 = v2;
  v19 = sub_1C2F761DC();
  v20 = sub_1C2F769EC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    sub_1C2F7628C();
    *(v21 + 4) = LOBYTE(aBlock[0]);

    _os_log_impl(&dword_1C2EF2000, v19, v20, "Translation already started. Remote start: %{BOOL}d", v21, 8u);
    v22 = v21;
    goto LABEL_18;
  }
}

void sub_1C2EFFCF0(uint64_t a1, uint64_t a2, void *a3)
{
  v117 = a3;
  v118 = a2;
  v5 = sub_1C2F75C8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v109 = &v95[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v95[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v95[-v13];
  v103 = sub_1C2F75C6C();
  v100 = *(v103 - 8);
  v14 = MEMORY[0x1EEE9AC00](v103);
  v98 = &v95[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v95[-v16];
  v104 = sub_1C2F75B3C();
  v114 = *(v104 - 8);
  v18 = MEMORY[0x1EEE9AC00](v104);
  v97 = &v95[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v95[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v95[-v22];
  LOBYTE(aBlock[0]) = 1;
  sub_1C2F7627C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  v25 = *(v24 + 48);
  v111 = v6;
  v26 = *(v6 + 16);
  v116 = a1;
  v26(v23, a1, v5);
  v115 = v5;
  v105 = v26;
  v102 = v6 + 16;
  v26(&v23[v25], v118, v5);
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_1C2F7627C();
  sub_1C2F0A8D8(v23, &qword_1EC075D08, &qword_1C2F78BA0);
  v112 = v3;
  v110 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_videoCall);
  if (v110)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  if (v110)
  {
    v28 = 1;
  }

  else
  {
    v28 = 3;
  }

  v106 = v28;
  v107 = v27;
  v29 = [v117 provider];
  v30 = [v29 identifier];

  v31 = sub_1C2F766CC();
  v33 = v32;

  if (v31 == 0xD00000000000003BLL && 0x80000001C2F7E3A0 == v33)
  {

    v34 = 3;
  }

  else
  {
    v35 = sub_1C2F76EFC();

    if (v35)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }
  }

  v96 = v34;
  v36 = [v117 remoteParticipantHandles];
  sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
  sub_1C2F0A6F8(&qword_1EC076008, &qword_1EC076000, 0x1E69D8C00);
  v37 = sub_1C2F7697C();

  v39 = sub_1C2F009F8(v37, v38);

  sub_1C2F75C7C();
  v40 = v101;
  sub_1C2F75C0C();
  v41 = *(v100 + 8);
  v42 = v103;
  v41(v17, v103);
  v43 = v114;
  v44 = *(v114 + 48);
  v45 = v104;
  if (v44(v40, 1, v104) == 1)
  {
    sub_1C2F0A8D8(v40, &unk_1EC076030, qword_1C2F7C380);
  }

  else
  {
    v100 = v39;
    v101 = *(v43 + 32);
    (v101)(v113, v40, v45);
    v46 = v98;
    sub_1C2F75C7C();
    v47 = v99;
    sub_1C2F75C0C();
    v41(v46, v42);
    if (v44(v47, 1, v45) == 1)
    {
      (*(v114 + 8))(v113, v45);
      sub_1C2F0A8D8(v47, &unk_1EC076030, qword_1C2F7C380);
      v48 = v109;
      v39 = v100;
      goto LABEL_19;
    }

    v49 = v97;
    (v101)(v97, v47, v45);
    v103 = __swift_project_boxed_opaque_existential_1((v112 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_biomeLanguageController), *(v112 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_biomeLanguageController + 24));
    v50 = v113;
    v51 = sub_1C2F75B1C();
    v53 = v52;
    v54 = sub_1C2F75B1C();
    v56 = v55;
    v57 = off_1F42B47B0[0];
    type metadata accessor for CallTranslationBiomeLanguageController(0);
    v58 = v51;
    v59 = v100;
    v57(v58, v53, v54, v56, v100, v96);
    v39 = v59;

    v60 = *(v114 + 8);
    v60(v49, v45);
    v60(v50, v45);
  }

  v48 = v109;
LABEL_19:
  v61 = v108;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v62 = sub_1C2F761FC();
  __swift_project_value_buffer(v62, qword_1EDEBC5D8);
  v63 = v115;
  v64 = v105;
  v105(v61, v116, v115);
  v64(v48, v118, v63);

  v65 = sub_1C2F761DC();
  v66 = sub_1C2F769CC();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    aBlock[0] = v114;
    *v67 = 136315650;
    sub_1C2EF7384(&qword_1EC076AA0, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    v68 = v39;
    LODWORD(v113) = v66;
    v69 = v115;
    v70 = sub_1C2F76EEC();
    v72 = v71;
    v73 = *(v111 + 8);
    v73(v61, v69);
    v74 = sub_1C2EFAB28(v70, v72, aBlock);

    *(v67 + 4) = v74;
    *(v67 + 12) = 2080;
    v75 = sub_1C2F76EEC();
    v77 = v76;
    v73(v48, v69);
    v78 = sub_1C2EFAB28(v75, v77, aBlock);

    *(v67 + 14) = v78;
    *(v67 + 22) = 2080;
    v79 = MEMORY[0x1C6928DD0](v68, MEMORY[0x1E69E6158]);
    v81 = v80;

    v82 = sub_1C2EFAB28(v79, v81, aBlock);

    *(v67 + 24) = v82;
    _os_log_impl(&dword_1C2EF2000, v65, v113, "Start translation %s -> %s, handles: %s", v67, 0x20u);
    v83 = v114;
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v83, -1, -1);
    MEMORY[0x1C6929E80](v67, -1, -1);
  }

  else
  {

    v84 = *(v111 + 8);
    v85 = v48;
    v86 = v115;
    v84(v85, v115);
    v84(v61, v86);
  }

  v87 = v112;
  v88 = objc_allocWithZone(MEMORY[0x1E69D8AC0]);
  v89 = sub_1C2F75B6C();
  v90 = sub_1C2F75B6C();
  v91 = [v88 initWithCall:v117 localLocale:v89 remoteLocale:v90 translationLinks:v106 remoteAudioMode:0 translationMode:v107];

  v92 = *(v87 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter);
  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C2F0A888;
  aBlock[5] = v93;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F02584;
  aBlock[3] = &block_descriptor_99;
  v94 = _Block_copy(aBlock);

  [v92 performTranslationRequest:v91 completion:v94];
  _Block_release(v94);
  if ((v110 & 1) == 0)
  {
    sub_1C2F025F0(0);
  }
}

void sub_1C2F008BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      sub_1C2EFFCF0(a3, a4, a5);
      goto LABEL_9;
    }
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2F761FC();
  __swift_project_value_buffer(v11, qword_1EDEBC5D8);
  v10 = sub_1C2F761DC();
  v12 = sub_1C2F769DC();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C2EF2000, v10, v12, "Translation has started because device is still locked.", v13, 2u);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

LABEL_9:
}

uint64_t sub_1C2F009F8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C2F76B7C();
    sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
    sub_1C2F0A6F8(&qword_1EC076008, &qword_1EC076000, 0x1E69D8C00);
    sub_1C2F769AC();
    result = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
    v6 = v28;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(result + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1C2F0AAB8(v23);
      return v10;
    }

    while (1)
    {
      v16 = [v15 value];
      v17 = sub_1C2F766CC();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1C2F1C2F0(0, *(v10 + 2) + 1, 1, v10);
      }

      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        v10 = sub_1C2F1C2F0((v20 > 1), v21 + 1, 1, v10);
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v5 = v13;
      v6 = v14;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C2F76BDC())
      {
        sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
        swift_dynamicCast();
        v15 = v29;
        v13 = v5;
        v14 = v6;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C2F00C94(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v5;
    v8 = a1;

    sub_1C2F09DA0(sub_1C2F0A8D0, v7);
  }

  return result;
}

void sub_1C2F00D90(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-v4];
  if (a1)
  {
    v6 = a1;
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);
    v8 = a1;
    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769DC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1C2F76F3C();
      v15 = sub_1C2EFAB28(v13, v14, v30);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C2EF2000, v9, v10, "Not able to start translation. %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1C6929E80](v12, -1, -1);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;

      LOBYTE(v30[0]) = 0;
      sub_1C2F7627C();
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      sub_1C2F7627C();

      sub_1C2F0A8D8(v5, &qword_1EC075D08, &qword_1C2F78BA0);
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      sub_1C2EF6A3C(v21 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v30, &qword_1EC075DE0, &qword_1C2F78BD8);

      v23 = v31;
      if (v31)
      {
        v24 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v24 + 16))(v23, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
      }

      else
      {
        sub_1C2F0A8D8(v30, &qword_1EC075DE0, &qword_1C2F78BD8);
      }
    }

    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;

      v29[47] = 0;
      sub_1C2F7627C();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_1C2F011A0();
    }
  }
}

void sub_1C2F011A0()
{
  v1 = sub_1C2F75C8C();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v153 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v152 = &v141 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076080, &unk_1C2F79010);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v154 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v141 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076088, &qword_1C2F7D430);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v150 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v156 = &v141 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v157 = &v141 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v141 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v141 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v141 - v23;
  v25 = sub_1C2F75AEC();
  v158 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v151 = &v141 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v155 = &v141 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v141 - v33;
  if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v36 = Strong;
  v149 = v28;
  v37 = [Strong translationSession];
  if (!v37)
  {
LABEL_7:

LABEL_8:
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v39 = sub_1C2F761FC();
    __swift_project_value_buffer(v39, qword_1EDEBC5D8);
    v158 = sub_1C2F761DC();
    v40 = sub_1C2F769DC();
    if (os_log_type_enabled(v158, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C2EF2000, v158, v40, "Not able to start transcripts session", v41, 2u);
      MEMORY[0x1C6929E80](v41, -1, -1);
    }

    v42 = v158;

    return;
  }

  v38 = v37;
  v148 = v25;
  if (![v37 translationState] || objc_msgSend(v38, sel_translationState) == 5)
  {

    goto LABEL_7;
  }

  v147 = v38;
  v43 = v36;
  v44 = [v36 provider];
  v45 = [v44 isTelephonyProvider];

  if (v45)
  {
    v46 = 1;
  }

  else
  {
    v47 = [v43 provider];
    v48 = [v47 isFaceTimeProvider];

    if (v48)
    {
      if ([v43 isVideo])
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }
    }

    else
    {
      v46 = 4;
    }
  }

  v145 = v46;
  v49 = v43;
  v50 = v147;
  v51 = v148;
  if (([v147 translationLinks] & 1) == 0)
  {
    v52 = 0;
    v53 = v157;
    v54 = v158;
    v55 = v50;
LABEL_49:
    v91 = v156;
    goto LABEL_50;
  }

  v146 = v49;
  v56 = [v50 downlinkTranslatorIdentifier];
  if (!v56)
  {
    goto LABEL_42;
  }

  v57 = v56;
  sub_1C2F75ACC();

  v142 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions;
  v58 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions);
  if (v58)
  {
    v59 = v158;
    isa = v158[2].isa;
    v60 = &v158[2] & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (isa)(v24, v58 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier, v51);
    v143 = v59[7].isa;
    (v143)(v24, 0, 1, v51);
    v61 = isa;
  }

  else
  {
    v62 = v158;
    v143 = v158[7].isa;
    (v143)(v24, 1, 1, v51);
    v61 = v62[2].isa;
    v60 = &v62[2] & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  isa = v61;
  v141 = v60;
  (v61)(v22, v34, v51);
  (v143)(v22, 0, 1, v51);
  v63 = v51;
  v64 = *(v5 + 48);
  sub_1C2EF6A3C(v24, v9, &unk_1EC076088, &qword_1C2F7D430);
  v143 = v64;
  sub_1C2EF6A3C(v22, v64 + v9, &unk_1EC076088, &qword_1C2F7D430);
  v65 = v158[6].isa;
  if ((v65)(v9, 1, v63) == 1)
  {
    sub_1C2F0A8D8(v22, &unk_1EC076088, &qword_1C2F7D430);
    sub_1C2F0A8D8(v24, &unk_1EC076088, &qword_1C2F7D430);
    if ((v65)(v143 + v9, 1, v63) == 1)
    {
      sub_1C2F0A8D8(v9, &unk_1EC076088, &qword_1C2F7D430);
      (v158[1].isa)(v34, v148);
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  sub_1C2EF6A3C(v9, v19, &unk_1EC076088, &qword_1C2F7D430);
  if ((v65)(v143 + v9, 1, v63) != 1)
  {
    v82 = v155;
    (v158[4].isa)(v155, v143 + v9, v63);
    sub_1C2EF7384(&unk_1EDEBD710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    LODWORD(v143) = sub_1C2F7662C();
    v83 = v82;
    v84 = v158[1].isa;
    (v84)(v83, v63);
    sub_1C2F0A8D8(v22, &unk_1EC076088, &qword_1C2F7D430);
    sub_1C2F0A8D8(v24, &unk_1EC076088, &qword_1C2F7D430);
    (v84)(v19, v63);
    sub_1C2F0A8D8(v9, &unk_1EC076088, &qword_1C2F7D430);
    if ((v143 & 1) == 0)
    {
      goto LABEL_34;
    }

    (v84)(v34, v148);
LABEL_42:
    v53 = v157;
    if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions))
    {
      v52 = 0;
      v49 = v146;
      v55 = v147;
      v54 = v158;
    }

    else
    {
      v85 = v0;
      v54 = v158;
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v86 = sub_1C2F761FC();
      __swift_project_value_buffer(v86, qword_1EDEBC5D8);
      v87 = sub_1C2F761DC();
      v88 = sub_1C2F769DC();
      v89 = os_log_type_enabled(v87, v88);
      v55 = v147;
      if (v89)
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1C2EF2000, v87, v88, "Not able to find downlink translation client identifier", v90, 2u);
        MEMORY[0x1C6929E80](v90, -1, -1);
      }

      v52 = 0;
      v0 = v85;
      v49 = v146;
    }

    goto LABEL_49;
  }

  sub_1C2F0A8D8(v22, &unk_1EC076088, &qword_1C2F7D430);
  sub_1C2F0A8D8(v24, &unk_1EC076088, &qword_1C2F7D430);
  (v158[1].isa)(v19, v63);
LABEL_33:
  sub_1C2F0A8D8(v9, &qword_1EC076080, &unk_1C2F79010);
LABEL_34:
  v66 = v155;
  (isa)(v155, v34, v148);
  v67 = [v146 uniqueProxyIdentifierUUID];
  v68 = v151;
  sub_1C2F75ACC();

  v55 = v147;
  v69 = [v147 localLocale];
  v70 = v152;
  sub_1C2F75B9C();

  v71 = [v55 remoteLocale];
  v72 = v153;
  sub_1C2F75B9C();

  v73 = swift_allocObject();
  v74 = v0;
  swift_unknownObjectWeakInit();
  v52 = sub_1C2F330CC(v66, v68, v145, 1, v70, v72, sub_1C2F0A970, v73);
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v75 = sub_1C2F761FC();
  __swift_project_value_buffer(v75, qword_1EDEBC5D8);
  v76 = sub_1C2F761DC();
  v77 = sub_1C2F769EC();
  v78 = os_log_type_enabled(v76, v77);
  v54 = v158;
  if (v78)
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_1C2EF2000, v76, v77, "Created Downlink Captions Clients", v79, 2u);
    MEMORY[0x1C6929E80](v79, -1, -1);
  }

  v80 = *&v142[v74];
  *&v142[v74] = v52;
  v81 = v148;
  if (v80)
  {
    swift_retain_n();
    sub_1C2F31844();
    v0 = v74;
  }

  else
  {
    v0 = v74;
  }

  v49 = v146;
  v91 = v156;
  (v54[1].isa)(v34, v81);
  v53 = v157;
LABEL_50:
  if (([v55 translationLinks] & 2) == 0)
  {
    goto LABEL_76;
  }

  v92 = [v55 uplinkTranslatorIdentifier];
  if (!v92)
  {
LABEL_70:
    if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions))
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v130 = sub_1C2F761FC();
      __swift_project_value_buffer(v130, qword_1EDEBC5D8);
      v131 = sub_1C2F761DC();
      v132 = sub_1C2F769DC();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = v49;
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_1C2EF2000, v131, v132, "Not able to find uplink translation client identifier", v134, 2u);
        v135 = v134;
        v49 = v133;
        MEMORY[0x1C6929E80](v135, -1, -1);
      }
    }

LABEL_76:
    v115 = 0;
    if (v52)
    {
      goto LABEL_77;
    }

    goto LABEL_83;
  }

  isa = v52;
  v146 = v49;
  v93 = v92;
  sub_1C2F75ACC();

  v143 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions;
  v94 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions);
  if (v94)
  {
    v95 = v54[2].isa;
    v96 = v148;
    (v95)(v53, v94 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier, v148);
    v97 = v54[7].isa;
    v97(v53, 0, 1, v96);
  }

  else
  {
    v97 = v54[7].isa;
    v96 = v148;
    v97(v53, 1, 1, v148);
    v95 = v54[2].isa;
  }

  v142 = v95;
  (v95)(v91, v149, v96);
  v97(v91, 0, 1, v96);
  v98 = *(v5 + 48);
  v99 = v154;
  sub_1C2EF6A3C(v53, v154, &unk_1EC076088, &qword_1C2F7D430);
  sub_1C2EF6A3C(v91, v99 + v98, &unk_1EC076088, &qword_1C2F7D430);
  v100 = v54[6].isa;
  if (v100(v99, 1, v96) == 1)
  {
    sub_1C2F0A8D8(v91, &unk_1EC076088, &qword_1C2F7D430);
    v101 = v148;
    v102 = v154;
    sub_1C2F0A8D8(v53, &unk_1EC076088, &qword_1C2F7D430);
    if (v100(v102 + v98, 1, v101) == 1)
    {
      sub_1C2F0A8D8(v102, &unk_1EC076088, &qword_1C2F7D430);
      v49 = v146;
      (v158[1].isa)(v149, v101);
LABEL_69:
      v55 = v147;
      v52 = isa;
      goto LABEL_70;
    }

    goto LABEL_60;
  }

  v103 = v150;
  sub_1C2EF6A3C(v99, v150, &unk_1EC076088, &qword_1C2F7D430);
  if (v100(v99 + v98, 1, v96) == 1)
  {
    sub_1C2F0A8D8(v156, &unk_1EC076088, &qword_1C2F7D430);
    v102 = v154;
    sub_1C2F0A8D8(v157, &unk_1EC076088, &qword_1C2F7D430);
    (v158[1].isa)(v103, v148);
LABEL_60:
    sub_1C2F0A8D8(v102, &qword_1EC076080, &unk_1C2F79010);
    v49 = v146;
    v104 = v149;
    goto LABEL_61;
  }

  v124 = v158;
  v125 = v99 + v98;
  v126 = v99;
  v127 = v155;
  (v158[4].isa)(v155, v125, v96);
  sub_1C2EF7384(&unk_1EDEBD710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v128 = sub_1C2F7662C();
  v129 = v124[1].isa;
  v129(v127, v96);
  sub_1C2F0A8D8(v156, &unk_1EC076088, &qword_1C2F7D430);
  sub_1C2F0A8D8(v157, &unk_1EC076088, &qword_1C2F7D430);
  v129(v103, v96);
  sub_1C2F0A8D8(v126, &unk_1EC076088, &qword_1C2F7D430);
  v49 = v146;
  v104 = v149;
  if (v128)
  {
    v129(v149, v148);
    goto LABEL_69;
  }

LABEL_61:
  v105 = v155;
  (v142)(v155, v104, v148);
  v106 = [v49 uniqueProxyIdentifierUUID];
  v107 = v151;
  sub_1C2F75ACC();

  v108 = v147;
  v109 = [v147 localLocale];
  v110 = v152;
  sub_1C2F75B9C();

  v111 = [v108 remoteLocale];
  v112 = v153;
  sub_1C2F75B9C();

  v113 = swift_allocObject();
  v114 = v0;
  swift_unknownObjectWeakInit();
  v115 = sub_1C2F330CC(v105, v107, v145, 0, v110, v112, sub_1C2F0A938, v113);
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v116 = sub_1C2F761FC();
  __swift_project_value_buffer(v116, qword_1EDEBC5D8);
  v117 = sub_1C2F761DC();
  v118 = sub_1C2F769EC();
  v119 = os_log_type_enabled(v117, v118);
  v120 = v158;
  v121 = isa;
  if (v119)
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_1C2EF2000, v117, v118, "Created Uplink Captions Clients", v122, 2u);
    MEMORY[0x1C6929E80](v122, -1, -1);
  }

  v123 = *(v143 + v114);
  *(v143 + v114) = v115;
  if (v123)
  {
    swift_retain_n();
    sub_1C2F31844();
  }

  else
  {
  }

  v49 = v146;
  v55 = v147;
  (v120[1].isa)(v149, v148);
  if (v121)
  {
LABEL_77:
    sub_1C2F31834();
    if (!v115)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_83:
  if (v115)
  {
LABEL_84:
    sub_1C2F31834();

LABEL_85:

    return;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v136 = sub_1C2F761FC();
  __swift_project_value_buffer(v136, qword_1EDEBC5D8);
  v137 = sub_1C2F761DC();
  v138 = sub_1C2F769CC();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = v49;
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_1C2EF2000, v137, v138, "Not creating new captions clients.", v140, 2u);
    MEMORY[0x1C6929E80](v140, -1, -1);
  }

  else
  {
  }
}

void sub_1C2F02584(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1C2F025F0(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v46 = Strong;
  if ([Strong status]!= 1)
  {

LABEL_8:
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);
    v46 = sub_1C2F761DC();
    v8 = sub_1C2F769EC();
    if (os_log_type_enabled(v46, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C2EF2000, v46, v8, "invalid tuCall status", v9, 2u);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v4 = [v46 provider];
  v5 = [v4 isFaceTimeProvider];

  if (!v5)
  {
    v11 = [v46 remoteParticipantHandles];
    sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
    sub_1C2F0A6F8(&qword_1EC076008, &qword_1EC076000, 0x1E69D8C00);
    v12 = sub_1C2F7697C();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = sub_1C2F76BBC();
    }

    else
    {
      v13 = *(v12 + 16);
    }

    if (v13 == 1 && (v19 = [v46 remoteParticipantHandles], v20 = sub_1C2F7697C(), v19, v21 = sub_1C2F2DEE8(v20), , v21))
    {
      sub_1C2F7611C();
      sub_1C2F7610C();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v46;
      *(v23 + 24) = v22;
      v46 = v46;

      sub_1C2F760FC();
    }

    else
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v24 = sub_1C2F761FC();
      __swift_project_value_buffer(v24, qword_1EDEBC5D8);
      v46 = v46;
      v25 = sub_1C2F761DC();
      v26 = sub_1C2F769EC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        v28 = [v46 remoteParticipantHandles];
        v29 = sub_1C2F7697C();

        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = sub_1C2F76BBC();
        }

        else
        {
          v30 = *(v29 + 16);
        }

        *(v27 + 4) = v30;

        _os_log_impl(&dword_1C2EF2000, v25, v26, "remoteParticipantHandles count is %ld", v27, 0xCu);
        MEMORY[0x1C6929E80](v27, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_12;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v14 = [*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter) activeConversationForCall_];
    if (!v14)
    {
LABEL_39:
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v37 = sub_1C2F761FC();
      __swift_project_value_buffer(v37, qword_1EDEBC5D8);
      v38 = sub_1C2F761DC();
      v39 = sub_1C2F769EC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C2EF2000, v38, v39, "Not starting translation session because of invalid conversation/active remote participants", v40, 2u);
        MEMORY[0x1C6929E80](v40, -1, -1);
      }

LABEL_12:
      v10 = v46;
      goto LABEL_13;
    }

    v6 = v14;
  }

  v15 = a1;
  v16 = [v6 activeRemoteParticipants];
  sub_1C2EF5A14(0, &qword_1EC076010, 0x1E69D8B90);
  sub_1C2F0A6F8(&qword_1EC076018, &qword_1EC076010, 0x1E69D8B90);
  v17 = sub_1C2F7697C();

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_1C2F76BBC();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  if (v18 != 1)
  {

    goto LABEL_39;
  }

  v31 = [v6 activeRemoteParticipants];
  v32 = sub_1C2F7697C();

  v45 = sub_1C2F2DED4(v32);

  if (v45)
  {
    v33 = [v45 capabilities];
    v34 = [v33 isTranslationAvailable];

    if (v34)
    {
      sub_1C2EF6A3C(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v47, &qword_1EC075DE0, &qword_1C2F78BD8);
      v35 = v48;
      if (v48)
      {
        v36 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        (*(v36 + 8))(v35, v36);

        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      else
      {

        sub_1C2F0A8D8(v47, &qword_1EC075DE0, &qword_1C2F78BD8);
      }

      return;
    }
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v41 = sub_1C2F761FC();
  __swift_project_value_buffer(v41, qword_1EDEBC5D8);
  v42 = sub_1C2F761DC();
  v43 = sub_1C2F769EC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1C2EF2000, v42, v43, "Not starting translation session because remote doesn't support translation", v44, 2u);
    MEMORY[0x1C6929E80](v44, -1, -1);
  }

  v10 = v45;
LABEL_13:
}

Swift::Void __swiftcall CallTranslationService.stopTranslation()()
{
  v1 = v0;
  sub_1C2F7628C();
  if (v27 == 1)
  {
    if (*&v0[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = [Strong translationSession];
        if (v4)
        {

          if (qword_1EDEBC5D0 != -1)
          {
            swift_once();
          }

          v5 = sub_1C2F761FC();
          __swift_project_value_buffer(v5, qword_1EDEBC5D8);
          v6 = sub_1C2F761DC();
          v7 = sub_1C2F769CC();
          if (os_log_type_enabled(v6, v7))
          {
            v8 = swift_slowAlloc();
            *v8 = 0;
            _os_log_impl(&dword_1C2EF2000, v6, v7, "Stop Translation", v8, 2u);
            MEMORY[0x1C6929E80](v8, -1, -1);
          }

          LOBYTE(v27) = 0;
          sub_1C2F7627C();
          sub_1C2EF724C();
          v9 = [objc_allocWithZone(MEMORY[0x1E69D8AC8]) initWithCall_];
          v10 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter];
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v29 = sub_1C2F09590;
          v30 = v11;
          *&v27 = MEMORY[0x1E69E9820];
          *(&v27 + 1) = 1107296256;
          *&v28 = sub_1C2F02584;
          *(&v28 + 1) = &block_descriptor_12;
          v12 = _Block_copy(&v27);

          [v10 performTranslationRequest:v9 completion:v12];
          _Block_release(v12);
          v29 = 0;
          v27 = 0u;
          v28 = 0u;
          sub_1C2F7627C();
          if ((v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_videoCall] & 1) == 0)
          {
            sub_1C2EF6A3C(&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController], &v27, &qword_1EC075DE0, &qword_1C2F78BD8);
            v13 = *(&v28 + 1);
            if (*(&v28 + 1))
            {
              v14 = v29;
              __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
              (*(v14 + 2))(v13, v14);
              __swift_destroy_boxed_opaque_existential_1Tm(&v27);
            }

            else
            {
              sub_1C2F0A8D8(&v27, &qword_1EC075DE0, &qword_1C2F78BD8);
            }
          }

          *(*&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_mockTranscripts] + 16) = 0;

          *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptCancellable] = 0;

          v29 = 0;
          v27 = 0u;
          v28 = 0u;
          sub_1C2F7627C();
        }

        else
        {
          if (qword_1EDEBC5D0 != -1)
          {
            swift_once();
          }

          v23 = sub_1C2F761FC();
          __swift_project_value_buffer(v23, qword_1EDEBC5D8);
          v24 = sub_1C2F761DC();
          v25 = sub_1C2F769DC();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_1C2EF2000, v24, v25, "Trying to stop translation without translation session.", v26, 2u);
            MEMORY[0x1C6929E80](v26, -1, -1);
          }
        }

        goto LABEL_29;
      }
    }

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C2F761FC();
    __swift_project_value_buffer(v20, qword_1EDEBC5D8);
    v3 = sub_1C2F761DC();
    v21 = sub_1C2F769DC();
    if (!os_log_type_enabled(v3, v21))
    {
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v21, "Current call is ended", v22, 2u);
    v19 = v22;
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C2F761FC();
    __swift_project_value_buffer(v15, qword_1EDEBC5D8);
    v16 = v0;
    v3 = sub_1C2F761DC();
    v17 = sub_1C2F769EC();
    if (!os_log_type_enabled(v3, v17))
    {

      return;
    }

    v18 = swift_slowAlloc();
    *v18 = 67109120;
    sub_1C2F7628C();
    *(v18 + 4) = v27;

    _os_log_impl(&dword_1C2EF2000, v3, v17, "Translation already stopped. Remote start: %{BOOL}d", v18, 8u);
    v19 = v18;
  }

  MEMORY[0x1C6929E80](v19, -1, -1);
LABEL_29:
}

void *sub_1C2F03374(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = a1;

    sub_1C2F09DA0(sub_1C2F0A828, v6);
  }

  return result;
}

void sub_1C2F03420(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
      v5 = Strong;
      v6 = a1;

      if (v4)
      {
        v7 = swift_unknownObjectWeakLoadStrong();

        if (v7)
        {
          v8 = [v7 translationSession];

          if (v8)
          {
            v9 = [v8 translationState];

            v10 = v9 == 3;
LABEL_16:
            if (qword_1EDEBC5D0 != -1)
            {
              swift_once();
            }

            v15 = sub_1C2F761FC();
            __swift_project_value_buffer(v15, qword_1EDEBC5D8);
            v16 = a1;
            v17 = sub_1C2F761DC();
            v18 = sub_1C2F769DC();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              *v19 = 138412546;
              v21 = a1;
              v22 = _swift_stdlib_bridgeErrorToNSError();
              *(v19 + 4) = v22;
              *v20 = v22;
              *(v19 + 12) = 1024;
              *(v19 + 14) = v10;
              _os_log_impl(&dword_1C2EF2000, v17, v18, "Not able to stop translation. %@. final state: %{BOOL}d", v19, 0x12u);
              sub_1C2F0A8D8(v20, &unk_1EC076070, &qword_1C2F7A190);
              MEMORY[0x1C6929E80](v20, -1, -1);
              MEMORY[0x1C6929E80](v19, -1, -1);
            }

            swift_beginAccess();
            v23 = swift_unknownObjectWeakLoadStrong();
            if (v23)
            {
              v24 = v23;

              sub_1C2F7627C();
            }

            else
            {
            }

            return;
          }
        }
      }
    }

    else
    {
      v14 = a1;
    }

    v10 = 0;
    goto LABEL_16;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2F761FC();
  __swift_project_value_buffer(v11, qword_1EDEBC5D8);
  oslog = sub_1C2F761DC();
  v12 = sub_1C2F769CC();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C2EF2000, oslog, v12, "stopped translation", v13, 2u);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }
}

Swift::Void __swiftcall CallTranslationService.requestRemoteTranscripts()()
{
  v1 = v0;
  sub_1C2F7628C();
  if (v17[0])
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C2F761FC();
    __swift_project_value_buffer(v2, qword_1EDEBC5D8);
    v3 = sub_1C2F761DC();
    v4 = sub_1C2F769EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C2EF2000, v3, v4, "Already requested remote transcripts", v5, 2u);
      MEMORY[0x1C6929E80](v5, -1, -1);
    }
  }

  else
  {
    LOBYTE(v17[0]) = 1;
    sub_1C2F7627C();
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C2F761FC();
    __swift_project_value_buffer(v6, qword_1EDEBC5D8);
    v7 = sub_1C2F761DC();
    v8 = sub_1C2F769EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C2EF2000, v7, v8, "requestRemoteTranscripts", v9, 2u);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    v10 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController;
    sub_1C2EF6A3C(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v17, &qword_1EC075DE0, &qword_1C2F78BD8);
    v11 = v18;
    sub_1C2F0A8D8(v17, &qword_1EC075DE0, &qword_1C2F78BD8);
    if (!v11)
    {
      v12 = sub_1C2F761DC();
      v13 = sub_1C2F769EC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1C2EF2000, v12, v13, "invalid interactionController", v14, 2u);
        MEMORY[0x1C6929E80](v14, -1, -1);
      }
    }

    sub_1C2EF6A3C(v1 + v10, v17, &qword_1EC075DE0, &qword_1C2F78BD8);
    v15 = v18;
    if (v18)
    {
      v16 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v16 + 32))(v15, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      sub_1C2F0A8D8(v17, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }
}

Swift::Void __swiftcall CallTranslationService.stopRemoteTranscripts(remoteLeaves:)(Swift::Bool remoteLeaves)
{
  v2 = v1;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EDEBC5D8);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = remoteLeaves;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "stopRemoteTranscripts, remoteLeaves: %{BOOL}d", v7, 8u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  if (remoteLeaves)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_1C2F7627C();
  }

  sub_1C2F7628C();
  if (v13 == 1)
  {
    LOBYTE(v13) = 0;
    sub_1C2F7627C();
    sub_1C2EF6A3C(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v13, &qword_1EC075DE0, &qword_1C2F78BD8);
    v8 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      (*(v9 + 24))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    }

    else
    {
      sub_1C2F0A8D8(&v13, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }

  else
  {
    v10 = sub_1C2F761DC();
    v11 = sub_1C2F769EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C2EF2000, v10, v11, "Remote transcripts already stopped", v12, 2u);
      MEMORY[0x1C6929E80](v12, -1, -1);
    }
  }
}

uint64_t sub_1C2F03CC8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 424) = a1;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1C2F03DF0, v4, v3);
}

uint64_t sub_1C2F03DF0()
{
  v1 = v0[51];

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[37];
    v61 = v0[51] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v60 = (v0[29] + 8);
    v6 = v0[16];
    v59 = (v6 + 48);
    v48 = (v6 + 32);
    v49 = (v6 + 8);
    v62 = v5;
    v7 = (v5 + 8);
    v51 = v0[18];
    v52 = (v5 + 8);
    v58 = v1;
    v50 = *(v1 + 16);
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v7;
      v9 = v0[32];
      v10 = v0[28];
      v11 = v0[24];
      v12 = v0[15];
      v63 = v4;
      (*(v62 + 16))(v0[38], v61 + *(v62 + 72) * v4, v0[36]);
      sub_1C2F75C7C();
      sub_1C2F75C0C();
      v13 = *v60;
      (*v60)(v9, v10);
      v14 = *v59;
      v15 = (*v59)(v11, 1, v12);
      sub_1C2F0A8D8(v11, &unk_1EC076030, qword_1C2F7C380);
      if (v15 != 1)
      {
        break;
      }

      v7 = v8;
      v1 = v58;
LABEL_4:
      v4 = v63 + 1;
      result = (*v7)(v0[38], v0[36]);
      if (v3 == v63 + 1)
      {
        goto LABEL_19;
      }
    }

    v56 = v14;
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[28];
    v19 = v0[23];
    v53 = v0[22];
    v54 = v0[19];
    v55 = v0[15];
    sub_1C2F75C7C();
    sub_1C2F75C0C();
    v13(v16, v18);
    sub_1C2F75C7C();
    sub_1C2F75C0C();
    v13(v17, v18);
    v20 = *(v51 + 48);
    sub_1C2EF6A3C(v19, v54, &unk_1EC076030, qword_1C2F7C380);
    sub_1C2EF6A3C(v53, v54 + v20, &unk_1EC076030, qword_1C2F7C380);
    v21 = v56(v54, 1, v55);
    v22 = v0[15];
    if (v21 == 1)
    {
      v23 = v0[23];
      sub_1C2F0A8D8(v0[22], &unk_1EC076030, qword_1C2F7C380);
      sub_1C2F0A8D8(v23, &unk_1EC076030, qword_1C2F7C380);
      v7 = v52;
      if (v56(v54 + v20, 1, v22) == 1)
      {
        v24 = v0[19];
        v25 = &unk_1EC076030;
        v26 = qword_1C2F7C380;
LABEL_15:
        sub_1C2F0A8D8(v24, v25, v26);
LABEL_16:
        v1 = v58;
        v3 = v50;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1C2EF6A3C(v0[19], v0[21], &unk_1EC076030, qword_1C2F7C380);
      v27 = v56(v54 + v20, 1, v22);
      v29 = v0[22];
      v28 = v0[23];
      v30 = v0[21];
      if (v27 != 1)
      {
        v57 = v0[19];
        v37 = v0[17];
        v38 = v0[15];
        (*v48)(v37, v54 + v20, v38);
        sub_1C2EF7384(&unk_1EC076050, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v39 = sub_1C2F7662C();
        v40 = *v49;
        (*v49)(v37, v38);
        sub_1C2F0A8D8(v29, &unk_1EC076030, qword_1C2F7C380);
        sub_1C2F0A8D8(v28, &unk_1EC076030, qword_1C2F7C380);
        v40(v30, v38);
        sub_1C2F0A8D8(v57, &unk_1EC076030, qword_1C2F7C380);
        v7 = v52;
        if (v39)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v31 = v0[15];
      sub_1C2F0A8D8(v0[22], &unk_1EC076030, qword_1C2F7C380);
      sub_1C2F0A8D8(v28, &unk_1EC076030, qword_1C2F7C380);
      (*v49)(v30, v31);
      v7 = v52;
    }

    sub_1C2F0A8D8(v0[19], &qword_1EC076028, &unk_1C2F78FE0);
LABEL_13:
    v32 = v0[53];
    v33 = v0[38];
    v34 = v0[14];
    *(swift_task_alloc() + 16) = v33;
    sub_1C2F37E3C(sub_1C2F0A808, v32, v34);

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) != 1)
    {
      v44 = v0[38];
      v45 = v0[36];
      v46 = v0[14];
      v47 = v0[10];

      sub_1C2F09460(v46, v47, &unk_1EC075E20, &unk_1C2F78C00);
      (*(v36 + 56))(v47, 0, 1, v35);
      (*v7)(v44, v45);
      goto LABEL_20;
    }

    v24 = v0[14];
    v25 = &unk_1EC076020;
    v26 = &unk_1C2F78FD8;
    goto LABEL_15;
  }

LABEL_19:
  v41 = v0[10];

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
LABEL_20:

  v43 = v0[1];

  return v43();
}

uint64_t sub_1C2F0458C(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v3 = sub_1C2F75C6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  sub_1C2EF6A3C(a1, v19 - v12, &unk_1EC075E20, &unk_1C2F78C00);
  v14 = *(v11 + 56);
  sub_1C2F75C7C();
  v15 = sub_1C2F75C8C();
  (*(*(v15 - 8) + 8))(v13, v15);
  sub_1C2F75C7C();
  LOBYTE(v11) = sub_1C2F75C3C();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  v17 = sub_1C2F75E3C();
  (*(*(v17 - 8) + 8))(&v13[v14], v17);
  return v11 & 1;
}

void sub_1C2F047B0(char a1, id a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);
    oslog = sub_1C2F761DC();
    v8 = sub_1C2F769EC();
    if (!os_log_type_enabled(oslog, v8))
    {
      goto LABEL_15;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Not starting translation session for telephony call because remote doesn't support translation";
    goto LABEL_14;
  }

  if ([a2 status] == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1C2EF6A3C(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v13, &qword_1EC075DE0, &qword_1C2F78BD8);

      v5 = v14;
      if (v14)
      {
        v6 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v6 + 8))(v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
      }

      else
      {
        sub_1C2F0A8D8(v13, &qword_1EC075DE0, &qword_1C2F78BD8);
      }
    }

    return;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2F761FC();
  __swift_project_value_buffer(v11, qword_1EDEBC5D8);
  oslog = sub_1C2F761DC();
  v8 = sub_1C2F769EC();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Do not start translation session because call is inactive";
LABEL_14:
    _os_log_impl(&dword_1C2EF2000, oslog, v8, v10, v9, 2u);
    MEMORY[0x1C6929E80](v9, -1, -1);
  }

LABEL_15:
}

uint64_t sub_1C2F04A10(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = a2 + 2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = v10;
    v12 = v9;
    v13 = v8;
    v14 = v6;
    v15 = v7;
    v16 = Strong;

    v7 = v15;
    v17 = 0x100000000;
    if ((v4 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = v17 | v3;
    v19 = 0x10000000000;
    if ((v5 & 1) == 0)
    {
      v19 = 0;
    }

    *&v59 = v18 | v19;
    *(&v59 + 1) = v14;
    *&v60 = v13;
    *(&v60 + 1) = v12;
    v61 = v56;
    sub_1C2F09740(a2, v58);
    sub_1C2F7627C();

    sub_1C2F0A6B4(v59, *(&v59 + 1), v60, *(&v60 + 1), v61);
  }

  v20 = *(a2 + 1);
  v59 = *a2;
  v60 = v20;
  v61 = *(a2 + 4);
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call), v23 = v21, , v23, v22))
  {
    v24 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v24 = 0;
  }

  type metadata accessor for CallTranslationRTTHelper();
  swift_initStaticObject();
  sub_1C2F402BC(&v59, v24);

  if (*(a2 + 4))
  {
    v57 = *(a2 + 3);
    v25 = *(a2 + 4);
  }

  else
  {
    v57 = 0;
    v25 = 0xE000000000000000;
  }

  v54 = *(a2 + 4);
  v55 = *a2;
  v26 = *(a2 + 5);
  v62 = *v7;
  v27 = *(&v62 + 1);
  v53 = v62;
  sub_1C2F0A9B4(&v62, &v59);
  v28 = qword_1EDEBC5D0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = (v26 & 1) == 0;
  v30 = sub_1C2F761FC();
  __swift_project_value_buffer(v30, qword_1EDEBC5D8);
  sub_1C2F09740(a2, &v59);

  v31 = sub_1C2F761DC();
  v32 = sub_1C2F769EC();
  sub_1C2F0AA10(a2);

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v58[0] = v34;
    *v33 = 136315394;
    v35 = *(a2 + 1);
    v59 = *a2;
    v60 = v35;
    v61 = *(a2 + 4);
    v36 = CallTranslationTranscript.description.getter();
    v38 = sub_1C2EFAB28(v36, v37, v58);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    LODWORD(v59) = v55;
    BYTE4(v59) = v54 & 1;
    BYTE5(v59) = v29;
    *(&v59 + 1) = v53;
    *&v60 = v27;
    *(&v60 + 1) = v57;
    v61 = v25;
    v39 = CallTranslationTranscript.description.getter();
    v41 = sub_1C2EFAB28(v39, v40, v58);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1C2EF2000, v31, v32, "downlink: transcripts: %s, message: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v34, -1, -1);
    MEMORY[0x1C6929E80](v33, -1, -1);
  }

  v42 = v29;
  swift_beginAccess();
  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    sub_1C2EF6A3C(v43 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v59, &qword_1EC075DE0, &qword_1C2F78BD8);

    if (*(&v60 + 1))
    {
      sub_1C2F0A8D8(&v59, &qword_1EC075DE0, &qword_1C2F78BD8);
      goto LABEL_25;
    }
  }

  else
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
  }

  sub_1C2F0A8D8(&v59, &qword_1EC075DE0, &qword_1C2F78BD8);
  v45 = sub_1C2F761DC();
  v46 = sub_1C2F769EC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1C2EF2000, v45, v46, "interactionController is nil", v47, 2u);
    MEMORY[0x1C6929E80](v47, -1, -1);
  }

LABEL_25:
  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    sub_1C2EF6A3C(v48 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v59, &qword_1EC075DE0, &qword_1C2F78BD8);

    v50 = *(&v60 + 1);
    if (*(&v60 + 1))
    {
      v51 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      LODWORD(v58[0]) = v55;
      BYTE4(v58[0]) = v54 & 1;
      BYTE5(v58[0]) = v42;
      v58[1] = v53;
      v58[2] = v27;
      v58[3] = v57;
      v58[4] = v25;
      (*(v51 + 56))(v58, v50, v51);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    }

    else
    {

      return sub_1C2F0A8D8(&v59, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }

  else
  {
  }
}

void *sub_1C2F04FE0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v12 = *a1;
  v13 = v6;
  v14 = *(a1 + 4);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = v13;
    *(v9 + 24) = v12;
    *(v9 + 40) = v10;
    *(v9 + 56) = v14;

    sub_1C2F09740(&v12, &v11);
    sub_1C2F09DA0(a4, v9);
  }

  return result;
}

uint64_t sub_1C2F050A4(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = a2 + 2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = v9;
    v12 = v8;
    v13 = v7;
    v14 = Strong;

    v15 = 0x100000000;
    if ((v4 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = v15 | v3;
    v17 = 0x10000000000;
    if ((v5 & 1) == 0)
    {
      v17 = 0;
    }

    *&v46 = v16 | v17;
    *(&v46 + 1) = v13;
    *&v47 = v12;
    *(&v47 + 1) = v43;
    v48 = v10;
    sub_1C2F09740(a2, v45);
    sub_1C2F7627C();

    sub_1C2F0A6B4(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
    v10 = *(a2 + 4);
  }

  if (v10)
  {
    v44 = *(a2 + 3);
    v18 = v10;
  }

  else
  {
    v44 = 0;
    v18 = 0xE000000000000000;
  }

  v41 = *(a2 + 4);
  v42 = *a2;
  v19 = *(a2 + 5);
  v49 = *v6;
  v20 = *(&v49 + 1);
  v40 = v49;
  sub_1C2F0A9B4(&v49, &v46);
  v21 = qword_1EDEBC5D0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = (v19 & 1) == 0;
  v23 = sub_1C2F761FC();
  __swift_project_value_buffer(v23, qword_1EDEBC5D8);
  sub_1C2F09740(a2, &v46);

  v24 = sub_1C2F761DC();
  v25 = sub_1C2F769EC();
  sub_1C2F0AA10(a2);

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45[0] = v27;
    *v26 = 136315394;
    v28 = *(a2 + 1);
    v46 = *a2;
    v47 = v28;
    v48 = *(a2 + 4);
    v29 = CallTranslationTranscript.description.getter();
    v31 = sub_1C2EFAB28(v29, v30, v45);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    LODWORD(v46) = v42;
    BYTE4(v46) = v41 & 1;
    BYTE5(v46) = (v19 & 1) == 0;
    *(&v46 + 1) = v40;
    *&v47 = v20;
    *(&v47 + 1) = v44;
    v48 = v18;
    v32 = CallTranslationTranscript.description.getter();
    v34 = sub_1C2EFAB28(v32, v33, v45);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_1C2EF2000, v24, v25, "uplink: transcripts: %s, message: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v27, -1, -1);
    MEMORY[0x1C6929E80](v26, -1, -1);
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    sub_1C2EF6A3C(v35 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v46, &qword_1EC075DE0, &qword_1C2F78BD8);

    v37 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v38 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      LODWORD(v45[0]) = v42;
      BYTE4(v45[0]) = v41 & 1;
      BYTE5(v45[0]) = v22;
      v45[1] = v40;
      v45[2] = v20;
      v45[3] = v44;
      v45[4] = v18;
      (*(v38 + 56))(v45, v37, v38);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    }

    else
    {

      return sub_1C2F0A8D8(&v46, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }

  else
  {
  }
}

uint64_t sub_1C2F054CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1C2F7687C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1C2F0A860();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1C2F76C6C();
    MEMORY[0x1C6928D30](0xD00000000000003FLL, 0x80000001C2F7E360);
    v12 = sub_1C2F7705C();
    MEMORY[0x1C6928D30](v12);

    MEMORY[0x1C6928D30](46, 0xE100000000000000);
    result = sub_1C2F76D4C();
    __break(1u);
  }

  return result;
}

void sub_1C2F05654(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
    v4 = Strong;

    if (v3)
    {
      v5 = swift_unknownObjectWeakLoadStrong();

      if (v5)
      {
        v6 = [v5 provider];

        v7 = [v6 isFaceTimeProvider];
        if (v7)
        {
          swift_beginAccess();
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = v8;
            swift_beginAccess();
            v10 = swift_unknownObjectWeakLoadStrong();
            if (v10)
            {
              v11 = *(v10 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
              v12 = v10;

              if (v11)
              {
                v13 = swift_unknownObjectWeakLoadStrong();

                v11 = [v13 translationSession];
              }
            }

            else
            {
              v11 = 0;
            }

            sub_1C2F0A0F8(v11);
          }
        }
      }
    }
  }
}

void sub_1C2F057C4(uint64_t a1, uint64_t a2)
{
  sub_1C2F7599C();
  if (v26)
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v2 = v24;
      v3 = [v24 uniqueProxyIdentifier];
      v4 = sub_1C2F766CC();
      v6 = v5;

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v8 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call), v9 = Strong, , v9, v8))
      {
        v11 = *(v8 + 24);
        v10 = *(v8 + 32);

        if (v4 == v11 && v6 == v10)
        {

LABEL_20:
          if (qword_1EDEBC5D0 != -1)
          {
            swift_once();
          }

          v17 = sub_1C2F761FC();
          __swift_project_value_buffer(v17, qword_1EDEBC5D8);
          v18 = sub_1C2F761DC();
          v19 = sub_1C2F769EC();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_1C2EF2000, v18, v19, "TUCallTranslationStateChanged", v20, 2u);
            MEMORY[0x1C6929E80](v20, -1, -1);
          }

          swift_beginAccess();
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = [v24 translationSession];
            sub_1C2F0A0F8(v23);
          }

          goto LABEL_18;
        }

        v13 = sub_1C2F76EFC();

        if (v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C2F0A8D8(v25, &qword_1EC075D38, &qword_1C2F78BB0);
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C2F761FC();
  __swift_project_value_buffer(v14, qword_1EDEBC5D8);
  v2 = sub_1C2F761DC();
  v15 = sub_1C2F769EC();
  if (os_log_type_enabled(v2, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C2EF2000, v2, v15, "Couldn't find call", v16, 2u);
    MEMORY[0x1C6929E80](v16, -1, -1);
  }

LABEL_18:
}

id CallTranslationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2F05BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0, MEMORY[0x1E695BD38]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C2F05E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1C2EF7414(a6, a4, a5, MEMORY[0x1E695BFB0]);
  return sub_1C2F762AC();
}

uint64_t sub_1C2F05EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075E18, &qword_1C2F78BF0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D88, &unk_1C2F78BC0);
  sub_1C2EF7414(&unk_1EDEBC560, &qword_1EC075D88, &unk_1C2F78BC0, MEMORY[0x1E695BFB0]);
  sub_1C2F762BC();

  sub_1C2EF7414(&unk_1EDEBC5A8, &qword_1EC075E18, &qword_1C2F78BF0, MEMORY[0x1E695BC80]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C2F06080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06110;

  return CallTranslationService.availableLanguages()();
}

uint64_t sub_1C2F06110(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C2F0629C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F06348;

  return CallTranslationService.availableRemoteLanguage(for:)(a1, a2);
}

uint64_t sub_1C2F06348()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1C2F0643C()
{
  if (!*(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    v4 = sub_1C2F766CC();
    return v4;
  }

  return result;
}

void *sub_1C2F064C8()
{
  if (!*(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result translationAvailability];

    return (v3 == 3);
  }

  return result;
}

uint64_t sub_1C2F0652C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1C2F06574(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

id _s20CommunicationsUICore17AudioRouteServiceCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2F06760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C2F7688C();
  *(v4 + 24) = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F067F8, v6, v5);
}

uint64_t sub_1C2F067F8()
{
  v1 = *(v0 + 16);

  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call) && (Strong = swift_unknownObjectWeakLoadStrong(), v3 = [Strong translationSession], Strong, v3))
  {

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EDEBC5D8);
    v5 = sub_1C2F761DC();
    v6 = sub_1C2F769DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C2EF2000, v5, v6, "Remote is trying to start with existing translation. What to do?", v7, 2u);
      MEMORY[0x1C6929E80](v7, -1, -1);
    }
  }

  else
  {
    *(v0 + 32) = 1;
    sub_1C2F7627C();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C2F06978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C2EF6A3C(a3, v25 - v10, &unk_1EC076AB0, &qword_1C2F78C20);
  v12 = sub_1C2F768AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2F0A8D8(v11, &unk_1EC076AB0, &qword_1C2F78C20);
  }

  else
  {
    sub_1C2F7689C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2F7684C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C2F7672C() + 32;
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

      sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);

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

  sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);
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

uint64_t sub_1C2F06C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C2EF6A3C(a3, v25 - v10, &unk_1EC076AB0, &qword_1C2F78C20);
  v12 = sub_1C2F768AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2F0A8D8(v11, &unk_1EC076AB0, &qword_1C2F78C20);
  }

  else
  {
    sub_1C2F7689C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2F7684C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C2F7672C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075FF8, &qword_1C2F78F90);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);

      return v22;
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

  sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075FF8, &qword_1C2F78F90);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C2F06F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C2EF6A3C(a3, v25 - v10, &unk_1EC076AB0, &qword_1C2F78C20);
  v12 = sub_1C2F768AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2F0A8D8(v11, &unk_1EC076AB0, &qword_1C2F78C20);
  }

  else
  {
    sub_1C2F7689C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2F7684C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1C2F7672C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1C2F7623C();

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

      sub_1C2F0A8D8(v25[0], &unk_1EC076AB0, &qword_1C2F78C20);

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

  sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1C2F7623C();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C2F072C0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBC5D8);
  v11 = sub_1C2F761DC();
  v12 = sub_1C2F769EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C2EF2000, v11, v12, a1, v13, 2u);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

  v14 = sub_1C2F768AC();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1C2F7688C();
  v15 = v6;
  v16 = sub_1C2F7687C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_1C2F06978(0, 0, v9, a3, v17);
}

uint64_t sub_1C2F0749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C2F7688C();
  *(v4 + 24) = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F07534, v6, v5);
}

uint64_t sub_1C2F07534()
{
  v1 = *(v0 + 16);

  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call) && (v2 = swift_unknownObjectWeakLoadStrong(), v3 = [v2 translationSession], v2, v3))
  {

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EDEBC5D8);
    v5 = sub_1C2F761DC();
    v6 = sub_1C2F769DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C2EF2000, v5, v6, "Remote is trying to end with existing translation. Trying to ensure we respect local state.", v7, 2u);
      MEMORY[0x1C6929E80](v7, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = [Strong translationSession];

    sub_1C2F0A0F8(v9);
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C2F761FC();
    __swift_project_value_buffer(v10, qword_1EDEBC5D8);
    v11 = sub_1C2F761DC();
    v12 = sub_1C2F769EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C2EF2000, v11, v12, "Initiator stops translation, receiver also needs to stop the transcripts", v13, 2u);
      MEMORY[0x1C6929E80](v13, -1, -1);
    }

    CallTranslationService.stopRemoteTranscripts(remoteLeaves:)(1);
  }

  *(v0 + 32) = 0;
  sub_1C2F7627C();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t CallTranslationService.passRemoteMessage(_:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18 = *(a1 + 4);
  v7 = sub_1C2F768AC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1C2F7688C();
  v8 = v1;
  sub_1C2F09740(&v16, v15);
  v9 = sub_1C2F7687C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  v12 = v17;
  *(v10 + 40) = v16;
  *(v10 + 56) = v12;
  *(v10 + 72) = v18;
  sub_1C2F06978(0, 0, v5, &unk_1C2F78C50, v10);
}

uint64_t sub_1C2F07904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 152) = *a5;
  *(v5 + 156) = *(a5 + 4);
  v6 = *(a5 + 16);
  *(v5 + 112) = *(a5 + 8);
  *(v5 + 120) = v6;
  *(v5 + 128) = *(a5 + 24);
  sub_1C2F7688C();
  *(v5 + 144) = sub_1C2F7687C();
  v8 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F079BC, v8, v7);
}

uint64_t sub_1C2F079BC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v11 = *(v0 + 112);
  v3 = *(v0 + 157);
  v4 = *(v0 + 156);
  v5 = *(v0 + 152);
  v6 = *(v0 + 104);

  v7 = 0x100000000;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if ((v3 & 1) == 0)
  {
    v8 = 0;
  }

  *(v0 + 16) = v8 | v5 | v7;
  *(v0 + 24) = v11;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  sub_1C2F09740(v6, v0 + 56);
  sub_1C2F7627C();
  sub_1C2F0A6B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C2F07ABC(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18 = *(a1 + 4);
  v7 = sub_1C2F768AC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1C2F7688C();
  v8 = v1;
  sub_1C2F09740(&v16, v15);
  v9 = sub_1C2F7687C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  v12 = v17;
  *(v10 + 40) = v16;
  *(v10 + 56) = v12;
  *(v10 + 72) = v18;
  sub_1C2F06978(0, 0, v5, &unk_1C2F78FA0, v10);
}

uint64_t sub_1C2F07C18()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC5D8);
  __swift_project_value_buffer(v0, qword_1EDEBC5D8);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F07C9C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

BOOL sub_1C2F07D08(void *a1, uint64_t *a2)
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

uint64_t sub_1C2F07D6C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1C2F07DB8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C2F07EB0;

  return v6(a1);
}

uint64_t sub_1C2F07EB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C2F07FA8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1C2F07FD8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_1C2F07FF8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C2F08030(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1C2EFAB28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_1C2F0808C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C2F080D8(a1, a2);
  sub_1C2F08208(&unk_1F42B2C90);
  return v3;
}

void *sub_1C2F080D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C2F082F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C2F76CDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C2F7677C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C2F082F4(v10, 0);
        result = sub_1C2F76C5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C2F08208(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C2F08368(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C2F082F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0760A0, &qword_1C2F79028);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C2F08368(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0760A0, &qword_1C2F79028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C2F084B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1C2F1C0BC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2F085E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1C2F1C2C8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1C2F75C8C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C2F08714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2F577BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C2F08734(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2F577E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2F08754(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2F579EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2F08774(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2F57AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C2F08794(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C2F08888;

  return v5(v2 + 32);
}

uint64_t sub_1C2F08888()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C2F0899C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C2F08A90;

  return v5(v2 + 16);
}

uint64_t sub_1C2F08A90()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

id sub_1C2F08BC0(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session) = 0;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask) = 0;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 0;
  v9 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076098, &qword_1C2F79020);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + v9) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionCancellables) = MEMORY[0x1E69E7CC0];
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers) = v11;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted) = 0;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask) = 0;
  if (qword_1EDEBC648 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v12 = sub_1C2F761FC();
    __swift_project_value_buffer(v12, qword_1EDEBC650);

    v13 = sub_1C2F761DC();
    v14 = sub_1C2F769EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v67[0] = v16;
      *v15 = 136315138;
      v63 = a2;
      v17 = a3;
      v18 = ObjectType;
      v20 = *(a1 + 24);
      v19 = *(a1 + 32);

      v21 = sub_1C2EFAB28(v20, v19, v67);

      *(v15 + 4) = v21;
      ObjectType = v18;
      a3 = v17;
      a2 = v63;
      _os_log_impl(&dword_1C2EF2000, v13, v14, "init TranslationInteractionController for call %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1C6929E80](v16, -1, -1);
      MEMORY[0x1C6929E80](v15, -1, -1);
    }

    *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_call) = a1;
    *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_callCenter) = a2;
    *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_featureFlags) = a3;
    v66.receiver = a4;
    v66.super_class = ObjectType;

    v22 = a3;
    v23 = objc_msgSendSuper2(&v66, sel_init);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v32 = v23;
      v33 = v23;
      goto LABEL_41;
    }

    v62 = Strong;
    v25 = *(a2 + 16);
    v61 = v23;
    v60 = v23;
    v26 = v25;
    v27 = v62;
    v28 = [v26 activeConversationForCall_];
    if (!v28)
    {
      goto LABEL_36;
    }

    v59 = v22;
    v58 = v28;
    v29 = [v28 systemActivitySessions];
    sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
    sub_1C2F0A6F8(&qword_1EDEBC4E0, &qword_1EDEBC4F0, 0x1E69D8B58);
    a3 = sub_1C2F7697C();

    v64 = a2;
    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1C2F76B7C();
      sub_1C2F769AC();
      a4 = v67[0];
      a1 = v67[1];
      v30 = v67[2];
      ObjectType = v67[3];
      v31 = v67[4];
    }

    else
    {
      v34 = -1 << *(a3 + 32);
      a4 = a3;
      a1 = a3 + 56;
      v30 = ~v34;
      v35 = -v34;
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v31 = v36 & *(a3 + 56);

      ObjectType = 0;
    }

    a2 = (v30 + 64) >> 6;
    if (a4 < 0)
    {
      break;
    }

LABEL_14:
    v37 = ObjectType;
    v38 = v31;
    if (v31)
    {
LABEL_18:
      v39 = (v38 - 1) & v38;
      v40 = *(*(a4 + 48) + ((ObjectType << 9) | (8 * __clz(__rbit64(v38)))));
      if (v40)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    while (1)
    {
      ObjectType = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (ObjectType >= a2)
      {
        v40 = 0;
        goto LABEL_33;
      }

      v38 = *(a1 + 8 * ObjectType);
      ++v37;
      if (v38)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (sub_1C2F76BDC())
  {
    swift_dynamicCast();
    v40 = v65;
    v39 = v31;
    if (!v65)
    {
      goto LABEL_33;
    }

LABEL_22:
    v41 = [v40 activity];
    v42 = [v41 activityIdentifier];

    v43 = sub_1C2F766CC();
    a3 = v44;

    if (qword_1EC075CB0 != -1)
    {
      swift_once();
    }

    if (v43 == qword_1EC07B920 && a3 == *algn_1EC07B928)
    {

      goto LABEL_33;
    }

    v46 = sub_1C2F76EFC();

    if (v46)
    {
      goto LABEL_33;
    }

    v31 = v39;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

  v40 = 0;
LABEL_33:
  sub_1C2F0AAB8(a4);

  v47 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession;
  v48 = *&v60[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession];
  *&v60[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession] = v40;

  v49 = *&v60[v47];
  a2 = v64;
  if (v49)
  {
    v22 = v59;
    v27 = v62;
    if ([v49 isLocallyInitiated])
    {

LABEL_36:
      v33 = v61;
      goto LABEL_41;
    }

    v50 = sub_1C2F761DC();
    v51 = sub_1C2F769EC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C2EF2000, v50, v51, "found previous remote session, need to notify delegate", v52, 2u);
      v53 = v52;
      v27 = v62;
      MEMORY[0x1C6929E80](v53, -1, -1);
    }

    v33 = v61;
    v60[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted] = 1;
  }

  else
  {

    v22 = v59;
    v33 = v61;
  }

LABEL_41:
  v54 = [*(a2 + 16) conversationManager];
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v55 = v33;
  v56 = sub_1C2F76A2C();
  [v54 addDelegate:v55 queue:v56];

  return v55;
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

uint64_t sub_1C2F09348(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C2F09460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1C2F094C8(char a1)
{
  v3 = *(sub_1C2F75C8C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);

  sub_1C2F008BC(a1, v9, v1 + v5, v1 + v7, v8);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F09598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F06760(a1, v4, v5, v6);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2F0968C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06348;

  return sub_1C2F0749C(a1, v4, v5, v6);
}

uint64_t sub_1C2F0979C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F07904(a1, v4, v5, v6, (v1 + 5));
}

uint64_t dispatch thunk of CallTranslationServicing.availableLanguages()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F06110;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CallTranslationServicing.availableRemoteLanguage(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C2F0AC48;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C2F09C28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F09C48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C2F09CE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F0AC48;

  return sub_1C2F08794(a1, v4);
}

uint64_t sub_1C2F09DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F764EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2F7651C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v12 = sub_1C2F7688C();
    MEMORY[0x1EEE9AC00](v12);
    *(&v16 - 2) = a1;
    *(&v16 - 1) = a2;
    return sub_1C2F054CC(sub_1C2F0A830, (&v16 - 4), "CommunicationsUICore/CallTranslationService.swift", 49, 2u, 638);
  }

  else
  {
    sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
    v17 = v8;
    v16 = sub_1C2F76A2C();
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2F40688;
    aBlock[3] = &block_descriptor_92;
    v14 = _Block_copy(aBlock);

    sub_1C2F764FC();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C2EF7384(&qword_1EC076700, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
    sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
    sub_1C2F76B3C();
    v15 = v16;
    MEMORY[0x1C6929010](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v17);
  }
}

void sub_1C2F0A0F8(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
    sub_1C2EF6AA4(a1);
    sub_1C2F7628C();
    if (LOBYTE(v11[0]) == 1)
    {
      sub_1C2F025F0(0);
    }

    else
    {
      sub_1C2EF6A3C(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v11, &qword_1EC075DE0, &qword_1C2F78BD8);
      v9 = v12;
      if (v12)
      {
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v10 + 16))(v9, v10);

        __swift_destroy_boxed_opaque_existential_1Tm(v11);
      }

      else
      {

        sub_1C2F0A8D8(v11, &qword_1EC075DE0, &qword_1C2F78BD8);
      }
    }
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EDEBC5D8);
    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C2EF2000, v6, v7, "Couldn't find translation session", v8, 2u);
      MEMORY[0x1C6929E80](v8, -1, -1);
    }

    LOBYTE(v11[0]) = 0;
    sub_1C2F7627C();
    sub_1C2EF724C();
  }
}

void sub_1C2F0A2D8(void *a1)
{
  v3 = sub_1C2F75AEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_call))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_callCenter);
      v19[0] = v11;
      v13 = [v12 activeConversationForCall_];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 UUID];
        sub_1C2F75ACC();

        v16 = [a1 UUID];
        sub_1C2F75ACC();

        LOBYTE(v16) = sub_1C2F75ABC();
        v17 = *(v4 + 8);
        v17(v7, v3);
        v17(v9, v3);
        if (v16)
        {
          v19[1] = a1;
          sub_1C2F7625C();
        }

        else
        {
        }
      }

      else
      {
        v18 = v19[0];
      }
    }
  }
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2F0A544(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F0AC48;

  return sub_1C2F0899C(a1, v4);
}

uint64_t sub_1C2F0A5FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F06348;

  return sub_1C2F0899C(a1, v4);
}

void sub_1C2F0A6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1C2F0A6F8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C2EF5A14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2F0A750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F0AC48;

  return sub_1C2F07DB8(a1, v4);
}

uint64_t objectdestroy_88Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2F0A8D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_107Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C2F0AAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1C2F0AB90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F0ABB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1C2F0ABEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t String.init(_localized:table:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v15 = a5;
  v7 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1C2F7669C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v13 = sub_1C2F766EC();
  (*(v9 + 8))(a1, v8);
  return v13;
}

id sub_1C2F0AE78(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    v3 = sub_1C2F766CC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C2F0AEE4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0762F0, &unk_1C2F791A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = sub_1C2F75E5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E7CD0];
  v4[6] = 0;
  v4[7] = v16;
  v4[8] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076098, &qword_1C2F79020);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v4[9] = v17;
  v4[4] = a3;
  (*(v13 + 104))(v15, *MEMORY[0x1E696B268], v12);
  sub_1C2F75EAC();
  swift_allocObject();
  v18 = a3;

  v19 = sub_1C2F75E9C();
  v4[2] = a1;
  v4[3] = v19;
  swift_unknownObjectUnownedInit();
  sub_1C2F0C770();
  sub_1C2F0C7C4();

  sub_1C2F75E8C();

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C2F0C954;
  *(v21 + 24) = v20;
  sub_1C2EF7414(&qword_1EC0762F8, &qword_1EC0762F0, &unk_1C2F791A0, MEMORY[0x1E696B270]);
  v22 = sub_1C2F7631C();

  (*(v9 + 8))(v11, v8);
  v4[6] = v22;

  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v23 = sub_1C2F761FC();
  __swift_project_value_buffer(v23, qword_1EC0762C0);

  v24 = sub_1C2F761DC();
  v25 = sub_1C2F769EC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = a1;
    v35 = v27;
    *v26 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
    v33 = v18;
    sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
    v28 = sub_1C2F76EEC();
    v30 = sub_1C2EFAB28(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1C2EF2000, v24, v25, "init TranslationInteractionSession for %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1C6929E80](v27, -1, -1);
    MEMORY[0x1C6929E80](v26, -1, -1);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1C2F0B398(int *a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = sub_1C2F75FCC();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = v13;
    sub_1C2F75E6C();
    sub_1C2F0B4E8(&v17);

    return (*(v4 + 8))(v6, v16);
  }

  return result;
}

uint64_t sub_1C2F0B4E8(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v11 = *(a1 + 6);
  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v6 = sub_1C2F761FC();
  __swift_project_value_buffer(v6, qword_1EC0762C0);
  v7 = sub_1C2F761DC();
  v8 = sub_1C2F769EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C2EF2000, v7, v8, "get remote message", v9, 2u);
    MEMORY[0x1C6929E80](v9, -1, -1);
  }

  LODWORD(v12[0]) = v1;
  BYTE4(v12[0]) = v2;
  BYTE5(v12[0]) = v3;
  v12[1] = v4;
  v12[2] = v5;
  v13 = v11;
  return sub_1C2F0B94C(v12);
}

uint64_t sub_1C2F0B620()
{
  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2F761FC();
  __swift_project_value_buffer(v1, qword_1EC0762C0);

  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
    sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0, MEMORY[0x1E696B310]);
    v6 = sub_1C2F76EEC();
    v8 = sub_1C2EFAB28(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "Invalidating translation interaction session: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1C6929E80](v5, -1, -1);
    MEMORY[0x1C6929E80](v4, -1, -1);
  }

  if (*(v0 + 48))
  {

    sub_1C2F7622C();
  }

  return sub_1C2F75F0C();
}

uint64_t sub_1C2F0B7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s20CommunicationsUICore12WeakDelegateCMa_0();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = swift_beginAccess();
  MEMORY[0x1C6928DA0](v6);
  if (*((*(a1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2F7680C();
  }

  sub_1C2F7682C();
  return swift_endAccess();
}

uint64_t sub_1C2F0B8E0(uint64_t result, void (*a2)(uint64_t, uint64_t))
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v5 = *v4;
      v6 = swift_unknownObjectRetain();
      a2(v6, v5);
      result = swift_unknownObjectRelease();
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C2F0B94C(void *a1)
{
  v2 = v1;
  v4 = sub_1C2F764EC();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C2F7651C();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 1);
  v42[0] = *a1;
  v42[1] = v7;
  v43 = a1[4];
  if (qword_1EC075C60 != -1)
  {
LABEL_23:
    swift_once();
  }

  v8 = sub_1C2F761FC();
  __swift_project_value_buffer(v8, qword_1EC0762C0);
  v9 = sub_1C2F761DC();
  v10 = sub_1C2F769EC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C2EF2000, v9, v10, "receivedRemoteMessage", v11, 2u);
    MEMORY[0x1C6929E80](v11, -1, -1);
  }

  v12 = swift_allocObject();
  v13 = *(a1 + 1);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  v14 = a1[4];
  v34 = v12;
  *(v12 + 48) = v14;
  v15 = *(v2 + 72);
  sub_1C2F09740(v42, aBlock);
  v33 = v15;
  os_unfair_lock_lock(v15 + 4);
  swift_beginAccess();
  v16 = *(v2 + 64);
  if (v16 >> 62)
  {
    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  a1 = MEMORY[0x1E69E7CC0];
  while (v2 != v17)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C6929250](v17, v16);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v18 = *(v16 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = *(v18 + 24);

    ++v17;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1C2F1C3FC(0, a1[2] + 1, 1, a1);
      }

      v23 = a1[2];
      v22 = a1[3];
      if (v23 >= v22 >> 1)
      {
        a1 = sub_1C2F1C3FC((v22 > 1), v23 + 1, 1, a1);
      }

      a1[2] = v23 + 1;
      v24 = &a1[2 * v23];
      v24[4] = Strong;
      v24[5] = v21;
      v17 = v19;
    }
  }

  os_unfair_lock_unlock(v33 + 4);
  sub_1C2F0CA5C();
  v25 = sub_1C2F76A2C();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = sub_1C2F0C9F0;
  v26[4] = v34;
  aBlock[4] = sub_1C2F0CAA8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);

  v28 = v35;
  sub_1C2F764FC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2F0CACC(&qword_1EC076700, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000, MEMORY[0x1E69E6328]);
  v29 = v37;
  v30 = v40;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v28, v29, v27);
  _Block_release(v27);

  (*(v39 + 8))(v29, v30);
  return (*(v36 + 8))(v28, v38);
}

uint64_t sub_1C2F0BEC8(__int128 *a1, uint64_t a2)
{
  v4 = sub_1C2F75FEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2F75FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v40 = *a1;
  v41 = v12;
  v42 = *(a1 + 4);
  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v13 = sub_1C2F761FC();
  __swift_project_value_buffer(v13, qword_1EC0762C0);
  (*(v9 + 16))(v11, a2, v8);
  sub_1C2F09740(&v40, &v37);
  v14 = sub_1C2F761DC();
  v15 = sub_1C2F769EC();
  sub_1C2F0AA10(&v40);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35 = v4;
    v19 = v18;
    v36[0] = v18;
    *v17 = 136315394;
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v20 = CallTranslationTranscript.description.getter();
    v22 = sub_1C2EFAB28(v20, v21, v36);
    v33[1] = a2;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    sub_1C2F0CACC(&qword_1EC0762E8, MEMORY[0x1E696B330], MEMORY[0x1E696B348]);
    v24 = sub_1C2F76EEC();
    v26 = v25;
    (*(v9 + 8))(v11, v8);
    v27 = sub_1C2EFAB28(v24, v26, v36);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1C2EF2000, v14, v15, "send transcript %s to remote participant %s", v17, 0x16u);
    swift_arrayDestroy();
    v28 = v19;
    v4 = v35;
    MEMORY[0x1C6929E80](v28, -1, -1);
    v29 = v17;
    v5 = v34;
    MEMORY[0x1C6929E80](v29, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v37 = v40;
  v38 = v41;
  v39 = v42;
  sub_1C2F75FDC();
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 16) = v40;
  *(v30 + 32) = v31;
  *(v30 + 48) = v42;
  sub_1C2F09740(&v40, v36);
  sub_1C2F0C770();
  sub_1C2F0C7C4();
  sub_1C2F75E7C();

  return (*(v5 + 8))(v7, v4);
}

void sub_1C2F0C2F4(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EC075C60 != -1)
    {
      swift_once();
    }

    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EC0762C0);
    v5 = a1;
    oslog = sub_1C2F761DC();
    v6 = sub_1C2F769EC();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1C2EF2000, oslog, v6, "Failed to send message error: %@", v7, 0xCu);
      sub_1C2F0C8EC(v8);
      MEMORY[0x1C6929E80](v8, -1, -1);
      MEMORY[0x1C6929E80](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a1;
    }
  }

  else
  {
    if (qword_1EC075C60 != -1)
    {
      swift_once();
    }

    v13 = sub_1C2F761FC();
    __swift_project_value_buffer(v13, qword_1EC0762C0);
    sub_1C2F09740(a2, v24);
    v14 = sub_1C2F761DC();
    v15 = sub_1C2F769EC();
    sub_1C2F0AA10(a2);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = *(a2 + 16);
      v24[0] = *a2;
      v24[1] = v18;
      v25 = *(a2 + 32);
      v19 = CallTranslationTranscript.description.getter();
      v21 = sub_1C2EFAB28(v19, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C2EF2000, v14, v15, "sent transcript %s successfully", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1C6929E80](v17, -1, -1);
      MEMORY[0x1C6929E80](v16, -1, -1);
    }
  }
}

uint64_t sub_1C2F0C5D8()
{

  swift_unknownObjectUnownedDestroy();

  return v0;
}

uint64_t sub_1C2F0C630()
{
  sub_1C2F0C5D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F0C68C()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC0762C0);
  __swift_project_value_buffer(v0, qword_1EC0762C0);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F0C70C()
{
  sub_1C2F0CB14(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1C2F0C770()
{
  result = qword_1EC0762D8;
  if (!qword_1EC0762D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0762D8);
  }

  return result;
}

unint64_t sub_1C2F0C7C4()
{
  result = qword_1EC0762E0;
  if (!qword_1EC0762E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0762E0);
  }

  return result;
}

uint64_t sub_1C2F0C818(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1C2F0C878(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1C2F0C8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076070, &qword_1C2F7A190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F0C95C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076308, &qword_1C2F791B8);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2F0C9F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v7[0] = *(v2 + 16);
  v7[1] = v5;
  v8 = *(v2 + 48);
  return (*(a2 + 8))(v7, ObjectType, a2);
}

unint64_t sub_1C2F0CA5C()
{
  result = qword_1EDEBC510;
  if (!qword_1EDEBC510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBC510);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F0CACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1C2F0CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v90 = *v3;
  v8 = sub_1C2F761FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = v10;
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = &v82 - v12;
  v13 = sub_1C2F75D6C();
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076310, &qword_1C2F791C8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v82 - v18;
  v19 = type metadata accessor for IntelligenceActivityAttributes(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v22 = MEMORY[0x1EEE9AC00](v91);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v82 - v25;
  v27 = &v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver];
  *v27 = 0;
  *(v27 + 1) = 0;
  v89 = v27 + 8;
  v98 = v9;
  v28 = *(v9 + 16);
  v88 = OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger;
  v103 = v8;
  v84 = v9 + 16;
  v83 = v28;
  v28(&v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_logger], a3, v8);
  v102 = a2;
  sub_1C2F0E650(a2, v26, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v99 = a1;
  sub_1C2F0E650(a1, v21, type metadata accessor for IntelligenceActivityAttributes);
  v104 = a3;
  v29 = sub_1C2F761DC();
  v30 = sub_1C2F769EC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v82 = v4;
    v32 = v31;
    v33 = swift_slowAlloc();
    v105 = v33;
    *v32 = 136315394;
    v34 = IntelligenceActivityAttributes.ContentState.description.getter();
    v36 = v35;
    sub_1C2F101E4(v26, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    v37 = sub_1C2EFAB28(v34, v36, &v105);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = IntelligenceActivityAttributes.description.getter();
    v40 = v39;
    sub_1C2F101E4(v21, type metadata accessor for IntelligenceActivityAttributes);
    v41 = sub_1C2EFAB28(v38, v40, &v105);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_1C2EF2000, v29, v30, "Requesting Activity with contentState: %s and with attrbutes: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v33, -1, -1);
    v42 = v32;
    v4 = v82;
    MEMORY[0x1C6929E80](v42, -1, -1);
  }

  else
  {

    sub_1C2F101E4(v21, type metadata accessor for IntelligenceActivityAttributes);
    sub_1C2F101E4(v26, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  }

  v43 = v102;
  sub_1C2F0E650(v102, v24, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v44 = sub_1C2F75A8C();
  (*(*(v44 - 8) + 56))(v92, 1, 1, v44);
  sub_1C2F0FE6C(&qword_1EC076320, type metadata accessor for IntelligenceActivityAttributes.ContentState, &protocol conformance descriptor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076328, type metadata accessor for IntelligenceActivityAttributes.ContentState, &protocol conformance descriptor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076330, type metadata accessor for IntelligenceActivityAttributes.ContentState, &protocol conformance descriptor for IntelligenceActivityAttributes.ContentState);
  v45 = v100;
  sub_1C2F75D8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076360, &qword_1C2F79318);
  v46 = sub_1C2F75D2C();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C2F78B90;
  (*(v47 + 104))(v49 + v48, *MEMORY[0x1E6959C00], v46);
  v50 = v101;
  sub_1C2F75D3C();
  sub_1C2F75D5C();
  sub_1C2F75D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076368, &qword_1C2F79320);
  v51 = v99;
  v52 = v93;
  v53 = sub_1C2F75CFC();
  v93 = v52;
  if (v52)
  {
    v54 = *(v98 + 8);
    v55 = v103;
    v54(v104, v103);
    sub_1C2F101E4(v43, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    sub_1C2F101E4(v51, type metadata accessor for IntelligenceActivityAttributes);
    (*(v96 + 8))(v50, v97);
    (*(v94 + 8))(v45, v95);
    v54(&v4[v88], v55);
    sub_1C2F0A8D8(v89, &qword_1EC076340, qword_1C2F791E8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 2) = v53;

    v57 = sub_1C2F75CDC();
    v91 = v58;
    v92 = v57;

    v59 = sub_1C2F761DC();
    v60 = sub_1C2F769EC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v4;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v105 = v63;
      *v62 = 136315138;

      v64 = ActivityWrapper.description.getter();
      v66 = v65;

      v67 = sub_1C2EFAB28(v64, v66, &v105);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1C2EF2000, v59, v60, "Recieved Activity: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1C6929E80](v63, -1, -1);
      v68 = v62;
      v4 = v61;
      v51 = v99;
      MEMORY[0x1C6929E80](v68, -1, -1);
    }

    v69 = sub_1C2F768AC();
    v70 = v85;
    (*(*(v69 - 8) + 56))(v85, 1, 1, v69);
    v71 = v87;
    v83(v87, v104, v103);
    sub_1C2F7688C();

    v72 = sub_1C2F7687C();
    v73 = v98;
    v74 = (*(v98 + 80) + 56) & ~*(v98 + 80);
    v75 = swift_allocObject();
    v76 = MEMORY[0x1E69E85E0];
    *(v75 + 2) = v72;
    *(v75 + 3) = v76;
    v77 = v91;
    *(v75 + 4) = v92;
    *(v75 + 5) = v77;
    *(v75 + 6) = v56;
    v78 = v71;
    v79 = v103;
    (*(v73 + 32))(&v75[v74], v78, v103);
    sub_1C2F06978(0, 0, v70, &unk_1C2F79330, v75);
    v80 = &v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver];
    os_unfair_lock_lock(&v4[OBJC_IVAR____TtC20CommunicationsUICore15ActivityWrapper_activityObserver]);

    sub_1C2F7623C();
    swift_allocObject();

    *(v80 + 1) = sub_1C2F7624C();
    os_unfair_lock_unlock(v80);

    (*(v73 + 8))(v104, v79);
    sub_1C2F101E4(v102, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    sub_1C2F101E4(v51, type metadata accessor for IntelligenceActivityAttributes);
    (*(v96 + 8))(v101, v97);
    (*(v94 + 8))(v100, v95);
  }

  return v4;
}

uint64_t sub_1C2F0D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1C2F7688C();
  v7[3] = sub_1C2F7687C();
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_1C2F0D804;

  return sub_1C2F0D9A0(a4, a5, a6, a7);
}

uint64_t sub_1C2F0D804()
{

  v1 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F0D940, v1, v0);
}

uint64_t sub_1C2F0D940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F0D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1C2F7700C();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_1C2F75D7C();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076370, &qword_1C2F79340);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076378, &qword_1C2F79348);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076380, &unk_1C2F79350);
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2F0DBD4, 0, 0);
}

uint64_t sub_1C2F0DBD4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_1C2F75CCC();
  sub_1C2F75C9C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1C2EF7414(qword_1EC076388, &qword_1EC076380, &unk_1C2F79350, MEMORY[0x1E6959B60]);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1C2F0DCFC;
  v6 = v0[26];
  v7 = v0[22];

  return MEMORY[0x1EEE6D8C8](v7, v6, v4);
}

uint64_t sub_1C2F0DCFC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1C2F0E368;
  }

  else
  {
    v2 = sub_1C2F0DE10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C2F0DE2C()
{
  v50 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769EC();
    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[17];
      v6 = v0[18];
      v8 = v0[15];
      v9 = v0[16];
      v10 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v10 = 136315138;
      v0[5] = v6;
      __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_1C2F75CBC();
      sub_1C2F76FFC();
      v11 = sub_1C2F76EEC();
      v13 = v12;

      (*(v9 + 8))(v7, v8);
      v14 = sub_1C2EFAB28(v11, v13, &v49);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "Recieved Activity observation ending with state update: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1C6929E80](v47, -1, -1);
      MEMORY[0x1C6929E80](v10, -1, -1);
    }

    else
    {
    }

    v35 = v0[1];

    return v35();
  }

  else
  {
    v16 = v0[20];
    v15 = v0[21];
    (*(v3 + 32))(v15, v1, v2);
    v17 = *(v3 + 16);
    v17(v16, v15, v2);

    v18 = sub_1C2F761DC();
    v19 = sub_1C2F769EC();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[18];
    v24 = v0[19];
    if (v20)
    {
      log = v18;
      v48 = v0[21];
      v45 = v19;
      v26 = v0[16];
      v25 = v0[17];
      v27 = v0[11];
      v42 = v0[12];
      v43 = v0[15];
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v28 = 136315394;
      *(v28 + 4) = sub_1C2EFAB28(v27, v42, &v49);
      *(v28 + 12) = 2080;
      v0[9] = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
      v17(boxed_opaque_existential_0, v22, v23);
      sub_1C2F76FFC();
      v30 = sub_1C2F76EEC();
      v32 = v31;
      (*(v26 + 8))(v25, v43);
      v33 = *(v24 + 8);
      v33(v22, v23);
      v34 = sub_1C2EFAB28(v30, v32, &v49);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_1C2EF2000, log, v45, "Recieved Activity state update: %s: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v44, -1, -1);
      MEMORY[0x1C6929E80](v28, -1, -1);

      v33(v48, v23);
    }

    else
    {

      v37 = *(v24 + 8);
      v37(v22, v23);
      v37(v21, v23);
    }

    v38 = sub_1C2EF7414(qword_1EC076388, &qword_1EC076380, &unk_1C2F79350, MEMORY[0x1E6959B60]);
    v39 = swift_task_alloc();
    v0[29] = v39;
    *v39 = v0;
    v39[1] = sub_1C2F0DCFC;
    v40 = v0[26];
    v41 = v0[22];

    return MEMORY[0x1EEE6D8C8](v41, v40, v38);
  }
}

uint64_t sub_1C2F0E368()
{
  *(v0 + 80) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t static ActivityWrapper.== infix(_:_:)()
{
  v0 = sub_1C2F75CDC();
  v2 = v1;
  if (v0 == sub_1C2F75CDC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C2F76EFC();
  }

  return v5 & 1;
}

char *static ActivityWrapper.request(attributes:contentState:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F761FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntelligenceActivityAttributes(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2F0E650(a1, v15, type metadata accessor for IntelligenceActivityAttributes);
  sub_1C2F0E650(a2, v12, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  (*(v7 + 16))(v9, a3, v6);
  swift_allocObject();
  return sub_1C2F0CB3C(v15, v12, v9);
}

uint64_t sub_1C2F0E650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityWrapper.update(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076310, &qword_1C2F791C8);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076318, &qword_1C2F791D0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_1C2F7688C();
  v2[11] = sub_1C2F7687C();
  v5 = sub_1C2F7684C();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C2F0E82C, v5, v4);
}

uint64_t sub_1C2F0E82C()
{
  v21 = v0;
  sub_1C2F0E650(v0[2], v0[10], type metadata accessor for IntelligenceActivityAttributes.ContentState);

  v1 = sub_1C2F761DC();
  v2 = sub_1C2F769EC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315394;
    v7 = ActivityWrapper.description.getter();
    v9 = sub_1C2EFAB28(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = IntelligenceActivityAttributes.ContentState.description.getter();
    v12 = v11;
    sub_1C2F101E4(v4, type metadata accessor for IntelligenceActivityAttributes.ContentState);
    v13 = sub_1C2EFAB28(v10, v12, &v20);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1C2EF2000, v1, v2, "Updating Activity(%s) with contentState: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  else
  {

    sub_1C2F101E4(v4, type metadata accessor for IntelligenceActivityAttributes.ContentState);
  }

  v14 = v0[4];
  sub_1C2F0E650(v0[2], v0[9], type metadata accessor for IntelligenceActivityAttributes.ContentState);
  v15 = sub_1C2F75A8C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1C2F0FE6C(&qword_1EC076320, type metadata accessor for IntelligenceActivityAttributes.ContentState, &protocol conformance descriptor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076328, type metadata accessor for IntelligenceActivityAttributes.ContentState, &protocol conformance descriptor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F0FE6C(&qword_1EC076330, type metadata accessor for IntelligenceActivityAttributes.ContentState, &protocol conformance descriptor for IntelligenceActivityAttributes.ContentState);
  sub_1C2F75D8C();
  v19 = (*MEMORY[0x1E6959B70] + MEMORY[0x1E6959B70]);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_1C2F0EB9C;
  v17 = v0[7];

  return v19(v17);
}