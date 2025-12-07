uint64_t sub_1D55662E8(uint64_t a1, char *a2)
{
  v4 = v2;
  v136 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = v123 - v7;
  v135 = type metadata accessor for TVEpisode(0);
  v8 = MEMORY[0x1EEE9AC00](v135);
  v129 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v123 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v123 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v123 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v132 = v123 - v19;
  *(v2 + *(*v2 + 152)) = 0;
  v20 = *(*v2 + 176);
  *(v4 + v20) = [objc_opt_self() sharedContentTasteController];
  v21 = *(*v4 + 184);
  v130 = objc_opt_self();
  *(v4 + v21) = [v130 sharedLibraryTransientStateController];
  v22 = *(*v4 + 192);
  sub_1D56129F8();
  swift_allocObject();
  *(v4 + v22) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v23 = *(*v4 + 224);
  type metadata accessor for MusicTaskCoalescer(0);
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  v25 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v26 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v24 + v25, 1, 1, v26);
  __swift_storeEnumTagSinglePayload(v24 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v26);
  *(v4 + v23) = v24;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v134 = v18;
  v27 = v136;
  sub_1D55AC65C(v136, v4 + *(*v4 + 136));
  v28 = *(*v4 + 144);
  sub_1D55AC65C(v27, v4 + v28);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  sub_1D55AC65C(v4 + v28, v132);

  v29 = sub_1D556B980();
  sub_1D55AC6B4();
  v30 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v31 = *(*v4 + 160);
  *(v4 + v31) = v30;
  v32 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v127 = v29;
  v33 = [v32 initWithIdentifyingModelObject_];
  v34 = *(*v4 + 168);
  *(v4 + v34) = v33;
  v35 = [*(v4 + v31) currentStatus];
  [*(v4 + v34) currentStatus];
  v36 = aBlock;
  v3 = v139;
  v37 = sub_1D560F0C8();
  v124 = *(&v36 + 1);
  v125 = v36;
  v123[1] = v35;
  if (v37)
  {
    swift_beginAccess();
    LOBYTE(v142[0]) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    *&v142[0] = 0;
    BYTE8(v142[0]) = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v38 = v135;
  }

  else
  {
    v133 = v12;
    v39 = v135;
    *(&v139 + 1) = v135;
    v40 = sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v140 = v40;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v128 = v15;
    v42 = v136;
    sub_1D55AC65C(v136, boxed_opaque_existential_0);

    sub_1D518AB68(v35, &aBlock, v142);
    v43 = v142[0];
    swift_beginAccess();
    LOBYTE(v144) = v43;
    v38 = v39;
    v12 = v133;
    sub_1D560C8B8();
    swift_endAccess();
    *(&v139 + 1) = v38;
    v140 = v40;
    v44 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v45 = v42;
    v15 = v128;
    sub_1D55AC65C(v45, v44);

    sub_1D50A911C(v36, *(&v36 + 1), &aBlock, v142, v3);
    v46 = *&v142[0];
    v47 = BYTE8(v142[0]);
    swift_beginAccess();
    v144 = v46;
    v145 = v47;
    sub_1D560C8B8();
    swift_endAccess();
  }

  *(&v139 + 1) = v38;
  v140 = &protocol witness table for TVEpisode;
  v48 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v49 = v136;
  sub_1D55AC65C(v136, v48);
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v139 + 1));
  v50 = sub_1D5592108();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  *&v142[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v49, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v51 = *(&v139 + 1);
    v52 = v140;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v139 + 1));
    (v52[2])(v142, v51, v52);
    v53 = v142[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v140 = 0;
    aBlock = 0u;
    v139 = 0u;
    sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v53 = 0;
  }

  swift_beginAccess();
  LOBYTE(v142[0]) = v53;
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v136, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v142, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v139 + 1));
    sub_1D4F60168();
    v54 = v144;
    swift_beginAccess();
    v137 = v54;
    sub_1D560C8B8();
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v143 = 0;
    memset(v142, 0, sizeof(v142));
    sub_1D4E50004(v142, &qword_1EC7EC500, &unk_1D5621030);
    swift_beginAccess();
    LOBYTE(v142[0]) = 0;
    sub_1D560C8B8();
    swift_endAccess();
  }

  v128 = a2;
  v55 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v55;
  v133 = sub_1D4F636B4();
  v23 = v56;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v57 = sub_1D560C758();
  v58 = __swift_project_value_buffer(v57, qword_1EDD76AA8);
  sub_1D55AC65C(v136, v12);

  v126 = v58;
  v59 = sub_1D560C738();
  v60 = sub_1D56156E8();

  v61 = os_log_type_enabled(v59, v60);
  v134 = v23;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v142[0] = v63;
    *v62 = 136446978;
    *(v62 + 4) = sub_1D4E6835C(v133, v134, v142);
    *(v62 + 12) = 2082;
    sub_1D55AC65C(v12, v132);
    v64 = sub_1D5614DB8();
    v66 = v65;
    sub_1D55AC6B4();
    v67 = sub_1D4E6835C(v64, v66, v142);

    *(v62 + 14) = v67;
    *(v62 + 22) = 2082;
    v68 = sub_1D4F5E0F8();
    v70 = sub_1D4E6835C(v68, v69, v142);

    *(v62 + 24) = v70;
    *(v62 + 32) = 2082;
    *&aBlock = v125;
    *(&aBlock + 1) = v124;
    *&v139 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v71 = sub_1D5614DB8();
    v73 = sub_1D4E6835C(v71, v72, v142);
    v23 = v134;

    *(v62 + 34) = v73;
    _os_log_impl(&dword_1D4E3F000, v59, v60, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v62, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v63, -1, -1);
    MEMORY[0x1DA6ED200](v62, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(v136, v129);
  swift_retain_n();

  v74 = sub_1D560C738();
  v75 = sub_1D56156E8();

  if (os_log_type_enabled(v74, v75))
  {
    LODWORD(v132) = v75;
    v76 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v142[0] = v129;
    *v76 = 136446978;
    v77 = sub_1D4E6835C(v133, v23, v142);
    *(v76 + 4) = v77;
    *(v76 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v77);
    v78 = v135;
    v123[-2] = v135;
    v79 = sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v123[-1] = v79;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v123[-2] = v78;
    v123[-1] = v79;
    swift_getKeyPath();
    sub_1D560C8F8();

    v81 = v144;
    v82 = v144 >> 6;
    if (v82)
    {
      if (v82 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v81 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v84 = *(&aBlock + 1);
        v83 = aBlock;
      }

      else
      {

        v84 = 0xE600000000000000;
        v83 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v81)
      {
        v83 = 0x656C62616464612ELL;
      }

      else
      {
        v83 = 0xD000000000000028;
      }

      if (v81)
      {
        v84 = 0xED0000296C696E28;
      }

      else
      {
        v84 = 0x80000001D567FDB0;
      }
    }

    v85 = sub_1D4E6835C(v83, v84, v142);

    *(v76 + 14) = v85;
    *(v76 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v86);
    v87 = v135;
    v123[-2] = v135;
    v123[-1] = v79;
    v88 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v88);
    v123[-2] = v87;
    v123[-1] = v79;
    swift_getKeyPath();
    sub_1D560C8F8();

    v89 = MusicLibrary.DownloadStatus.description.getter();
    v91 = v90;

    v92 = sub_1D4E6835C(v89, v91, v142);

    *(v76 + 24) = v92;
    *(v76 + 32) = 2082;
    v93 = sub_1D556E0B0();
    v95 = v94;
    sub_1D55AC6B4();
    v96 = sub_1D4E6835C(v93, v95, v142);

    *(v76 + 34) = v96;
    _os_log_impl(&dword_1D4E3F000, v74, v132, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v76, 0x2Au);
    v97 = v129;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v76, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v98 = *(v4 + *(*v4 + 160));
  v99 = swift_allocObject();
  swift_weakInit();
  v140 = sub_1D55AB87C;
  v141 = v99;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1D5570C18;
  *(&v139 + 1) = &block_descriptor_779;
  v100 = _Block_copy(&aBlock);

  v101 = v98;

  [v101 setStatusBlock_];
  _Block_release(v100);

  v102 = *(v4 + *(*v4 + 168));
  v103 = swift_allocObject();
  swift_weakInit();
  v140 = sub_1D55AB8BC;
  v141 = v103;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1D5571B7C;
  *(&v139 + 1) = &block_descriptor_783;
  v104 = _Block_copy(&aBlock);
  v105 = v102;

  [v105 setStatusBlock_];
  _Block_release(v104);

  sub_1D5611CC8();
  v106 = objc_opt_self();
  v107 = [v106 canShowCloudDownloadButtonsDidChangeNotificationName];
  v108 = [v106 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v109 = sub_1D5611CB8();

  *(v4 + *(*v4 + 208)) = v109;

  v110 = [v130 didChangeNotificationName];
  v111 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v112 = v111;

  v113 = sub_1D5611CB8();

  *(v4 + *(*v4 + 216)) = v113;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  v116 = v133;
  v115[2] = v114;
  v115[3] = v116;
  v117 = v134;
  v115[4] = v134;

  sub_1D56129D8();

  sub_1D56129B8();

  sub_1D560EFA8();
  v118 = sub_1D5615458();
  v119 = v131;
  __swift_storeEnumTagSinglePayload(v131, 1, 1, v118);
  v120 = swift_allocObject();
  swift_weakInit();

  v121 = swift_allocObject();
  v121[2] = 0;
  v121[3] = 0;
  v121[4] = v120;
  v121[5] = v116;
  v121[6] = v117;
  sub_1D51EC8B4(0, 0, v119, &unk_1D5672DD8, v121);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D55678C4(uint64_t a1, char *a2)
{
  v4 = v2;
  v136 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = v123 - v7;
  v135 = type metadata accessor for MusicMovie(0);
  v8 = MEMORY[0x1EEE9AC00](v135);
  v129 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v123 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v123 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v123 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v132 = v123 - v19;
  *(v2 + *(*v2 + 152)) = 0;
  v20 = *(*v2 + 176);
  *(v4 + v20) = [objc_opt_self() sharedContentTasteController];
  v21 = *(*v4 + 184);
  v130 = objc_opt_self();
  *(v4 + v21) = [v130 sharedLibraryTransientStateController];
  v22 = *(*v4 + 192);
  sub_1D56129F8();
  swift_allocObject();
  *(v4 + v22) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v23 = *(*v4 + 224);
  type metadata accessor for MusicTaskCoalescer(0);
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  v25 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v26 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v24 + v25, 1, 1, v26);
  __swift_storeEnumTagSinglePayload(v24 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v26);
  *(v4 + v23) = v24;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_12;
  }

  v134 = v18;
  v27 = v136;
  sub_1D55AC65C(v136, v4 + *(*v4 + 136));
  v28 = *(*v4 + 144);
  sub_1D55AC65C(v27, v4 + v28);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  sub_1D55AC65C(v4 + v28, v132);

  v29 = sub_1D556BDB0();
  sub_1D55AC6B4();
  v30 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v31 = *(*v4 + 160);
  *(v4 + v31) = v30;
  v32 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v127 = v29;
  v33 = [v32 initWithIdentifyingModelObject_];
  v34 = *(*v4 + 168);
  *(v4 + v34) = v33;
  v35 = [*(v4 + v31) currentStatus];
  [*(v4 + v34) currentStatus];
  v36 = aBlock;
  v3 = v139;
  v37 = sub_1D560F0C8();
  v124 = *(&v36 + 1);
  v125 = v36;
  v123[1] = v35;
  if (v37)
  {
    swift_beginAccess();
    LOBYTE(v142[0]) = 71;
    sub_1D560C8B8();
    swift_endAccess();
    swift_beginAccess();
    *&v142[0] = 0;
    BYTE8(v142[0]) = 2;
    sub_1D560C8B8();
    swift_endAccess();
    v38 = v135;
  }

  else
  {
    v133 = v12;
    v39 = v135;
    *(&v139 + 1) = v135;
    v40 = sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v140 = v40;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v128 = v15;
    v42 = v136;
    sub_1D55AC65C(v136, boxed_opaque_existential_0);

    sub_1D518AB68(v35, &aBlock, v142);
    v43 = v142[0];
    swift_beginAccess();
    LOBYTE(v144) = v43;
    v38 = v39;
    v12 = v133;
    sub_1D560C8B8();
    swift_endAccess();
    *(&v139 + 1) = v38;
    v140 = v40;
    v44 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    v45 = v42;
    v15 = v128;
    sub_1D55AC65C(v45, v44);

    sub_1D50A911C(v36, *(&v36 + 1), &aBlock, v142, v3);
    v46 = *&v142[0];
    v47 = BYTE8(v142[0]);
    swift_beginAccess();
    v144 = v46;
    v145 = v47;
    sub_1D560C8B8();
    swift_endAccess();
  }

  *(&v139 + 1) = v38;
  v140 = &protocol witness table for MusicMovie;
  v48 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v49 = v136;
  sub_1D55AC65C(v136, v48);
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v139 + 1));
  v50 = sub_1D5592D00();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  *&v142[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v49, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v51 = *(&v139 + 1);
    v52 = v140;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v139 + 1));
    (v52[2])(v142, v51, v52);
    v53 = v142[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v140 = 0;
    aBlock = 0u;
    v139 = 0u;
    sub_1D4E50004(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v53 = 0;
  }

  swift_beginAccess();
  LOBYTE(v142[0]) = v53;
  sub_1D560C8B8();
  swift_endAccess();
  sub_1D55AC65C(v136, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v142, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v139 + 1));
    sub_1D4F60168();
    v54 = v144;
    swift_beginAccess();
    v137 = v54;
    sub_1D560C8B8();
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v143 = 0;
    memset(v142, 0, sizeof(v142));
    sub_1D4E50004(v142, &qword_1EC7EC500, &unk_1D5621030);
    swift_beginAccess();
    LOBYTE(v142[0]) = 0;
    sub_1D560C8B8();
    swift_endAccess();
  }

  v128 = a2;
  v55 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v55;
  v133 = sub_1D4F636B4();
  v23 = v56;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_30;
  }

LABEL_12:
  v57 = sub_1D560C758();
  v58 = __swift_project_value_buffer(v57, qword_1EDD76AA8);
  sub_1D55AC65C(v136, v12);

  v126 = v58;
  v59 = sub_1D560C738();
  v60 = sub_1D56156E8();

  v61 = os_log_type_enabled(v59, v60);
  v134 = v23;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v142[0] = v63;
    *v62 = 136446978;
    *(v62 + 4) = sub_1D4E6835C(v133, v134, v142);
    *(v62 + 12) = 2082;
    sub_1D55AC65C(v12, v132);
    v64 = sub_1D5614DB8();
    v66 = v65;
    sub_1D55AC6B4();
    v67 = sub_1D4E6835C(v64, v66, v142);

    *(v62 + 14) = v67;
    *(v62 + 22) = 2082;
    v68 = sub_1D4F5E0F8();
    v70 = sub_1D4E6835C(v68, v69, v142);

    *(v62 + 24) = v70;
    *(v62 + 32) = 2082;
    *&aBlock = v125;
    *(&aBlock + 1) = v124;
    *&v139 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v71 = sub_1D5614DB8();
    v73 = sub_1D4E6835C(v71, v72, v142);
    v23 = v134;

    *(v62 + 34) = v73;
    _os_log_impl(&dword_1D4E3F000, v59, v60, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v62, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v63, -1, -1);
    MEMORY[0x1DA6ED200](v62, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  sub_1D55AC65C(v136, v129);
  swift_retain_n();

  v74 = sub_1D560C738();
  v75 = sub_1D56156E8();

  if (os_log_type_enabled(v74, v75))
  {
    LODWORD(v132) = v75;
    v76 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v142[0] = v129;
    *v76 = 136446978;
    v77 = sub_1D4E6835C(v133, v23, v142);
    *(v76 + 4) = v77;
    *(v76 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v77);
    v78 = v135;
    v123[-2] = v135;
    v79 = sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v123[-1] = v79;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v123[-2] = v78;
    v123[-1] = v79;
    swift_getKeyPath();
    sub_1D560C8F8();

    v81 = v144;
    v82 = v144 >> 6;
    if (v82)
    {
      if (v82 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v81 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v84 = *(&aBlock + 1);
        v83 = aBlock;
      }

      else
      {

        v84 = 0xE600000000000000;
        v83 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v81)
      {
        v83 = 0x656C62616464612ELL;
      }

      else
      {
        v83 = 0xD000000000000028;
      }

      if (v81)
      {
        v84 = 0xED0000296C696E28;
      }

      else
      {
        v84 = 0x80000001D567FDB0;
      }
    }

    v85 = sub_1D4E6835C(v83, v84, v142);

    *(v76 + 14) = v85;
    *(v76 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v86);
    v87 = v135;
    v123[-2] = v135;
    v123[-1] = v79;
    v88 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v88);
    v123[-2] = v87;
    v123[-1] = v79;
    swift_getKeyPath();
    sub_1D560C8F8();

    v89 = MusicLibrary.DownloadStatus.description.getter();
    v91 = v90;

    v92 = sub_1D4E6835C(v89, v91, v142);

    *(v76 + 24) = v92;
    *(v76 + 32) = 2082;
    v93 = sub_1D556EA88();
    v95 = v94;
    sub_1D55AC6B4();
    v96 = sub_1D4E6835C(v93, v95, v142);

    *(v76 + 34) = v96;
    _os_log_impl(&dword_1D4E3F000, v74, v132, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v76, 0x2Au);
    v97 = v129;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v76, -1, -1);
  }

  else
  {

    sub_1D55AC6B4();
  }

  v98 = *(v4 + *(*v4 + 160));
  v99 = swift_allocObject();
  swift_weakInit();
  v140 = sub_1D55AB3DC;
  v141 = v99;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1D5570C18;
  *(&v139 + 1) = &block_descriptor_729;
  v100 = _Block_copy(&aBlock);

  v101 = v98;

  [v101 setStatusBlock_];
  _Block_release(v100);

  v102 = *(v4 + *(*v4 + 168));
  v103 = swift_allocObject();
  swift_weakInit();
  v140 = sub_1D55AB41C;
  v141 = v103;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1D5571B7C;
  *(&v139 + 1) = &block_descriptor_733;
  v104 = _Block_copy(&aBlock);
  v105 = v102;

  [v105 setStatusBlock_];
  _Block_release(v104);

  sub_1D5611CC8();
  v106 = objc_opt_self();
  v107 = [v106 canShowCloudDownloadButtonsDidChangeNotificationName];
  v108 = [v106 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v109 = sub_1D5611CB8();

  *(v4 + *(*v4 + 208)) = v109;

  v110 = [v130 didChangeNotificationName];
  v111 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v112 = v111;

  v113 = sub_1D5611CB8();

  *(v4 + *(*v4 + 216)) = v113;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  v116 = v133;
  v115[2] = v114;
  v115[3] = v116;
  v117 = v134;
  v115[4] = v134;

  sub_1D56129D8();

  sub_1D56129B8();

  sub_1D560EFA8();
  v118 = sub_1D5615458();
  v119 = v131;
  __swift_storeEnumTagSinglePayload(v131, 1, 1, v118);
  v120 = swift_allocObject();
  swift_weakInit();

  v121 = swift_allocObject();
  v121[2] = 0;
  v121[3] = 0;
  v121[4] = v120;
  v121[5] = v116;
  v121[6] = v117;
  sub_1D51EC8B4(0, 0, v119, &unk_1D5672D38, v121);

  sub_1D55AC6B4();
  return v4;
}

uint64_t sub_1D5568EA0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v160 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v155 = &v142 - v7;
  v8 = sub_1D56128E8();
  v158 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v151 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v142 - v11;
  v12 = sub_1D5613EF8();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v156 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v153 = &v142 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v152 = &v142 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v142 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v142 - v22;
  *(v2 + *(*v2 + 152)) = 0;
  v24 = *(*v2 + 176);
  *(v4 + v24) = [objc_opt_self() sharedContentTasteController];
  v25 = *(*v4 + 184);
  v154 = objc_opt_self();
  *(v4 + v25) = [v154 sharedLibraryTransientStateController];
  v26 = *(*v4 + 192);
  sub_1D56129F8();
  swift_allocObject();
  *(v4 + v26) = sub_1D56129E8();
  *(v4 + *(*v4 + 208)) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  v27 = *(*v4 + 224);
  type metadata accessor for MusicTaskCoalescer(0);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  v29 = OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_runningPrioritizedTask;
  v30 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  __swift_storeEnumTagSinglePayload(v28 + v29, 1, 1, v30);
  __swift_storeEnumTagSinglePayload(v28 + OBJC_IVAR____TtC16MusicKitInternal18MusicTaskCoalescer_latestPrioritizedTask, 1, 1, v30);
  *&v27[v4] = v28;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_18;
  }

  v149 = v8;
  v31 = v13[2];
  v29 = v160;
  (v31)(v4 + *(*v4 + 136), v160, v12);
  v32 = *(*v4 + 144);
  (v31)(v4 + v32, v29, v12);
  *(v4 + *(*v4 + 232)) = a2;
  swift_beginAccess();
  v163 = (v13 + 2);
  (v31)(v23, v4 + v32, v12);

  sub_1D556A5AC();
  v34 = v33;
  v35 = v13[1];
  v144 = v23;
  v161 = v35;
  v162 = (v13 + 1);
  v35(v23, v12);
  v36 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v37 = *(*v4 + 160);
  *(v4 + v37) = v36;
  v38 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v150 = v34;
  v39 = [v38 initWithIdentifyingModelObject_];
  v40 = *(*v4 + 168);
  *(v4 + v40) = v39;
  v41 = [*(v4 + v37) currentStatus];
  [*(v4 + v40) currentStatus];
  v147 = aBlock;
  v146 = v167;
  v3 = v168;
  v159 = a2;
  v42 = sub_1D560F0C8();
  v143 = v41;
  if (v42)
  {
    swift_beginAccess();
    v43 = 71;
  }

  else
  {
    (v31)(v145, v29, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v44 = MEMORY[0x1E6976EF8];
      v169 = v12;
      v170 = MEMORY[0x1E6976EF8];
      v45 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v31)(v45, v29, v12);
      v27 = v31;

      sub_1D518AB68(v41, &aBlock, &v173);
      v46 = v173;
      swift_beginAccess();
      LOBYTE(v164) = v46;
      sub_1D560C8B8();
      swift_endAccess();
      v169 = v12;
      v170 = v44;
      v47 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v31)(v47, v29, v12);

      sub_1D50A911C(v147, v146, &aBlock, &v173, v3);
      v48 = v173;
      v49 = v174;
      swift_beginAccess();
      v164 = v48;
      v165 = v49;
      sub_1D560C8B8();
      swift_endAccess();
      goto LABEL_8;
    }

    swift_beginAccess();
    v43 = 68;
  }

  LOBYTE(v173) = v43;
  sub_1D560C8B8();
  swift_endAccess();
  swift_beginAccess();
  v173 = 0;
  v174 = 2;
  sub_1D560C8B8();
  swift_endAccess();
  v27 = v31;
LABEL_8:
  v50 = v149;
  v51 = v157;
  v52 = v152;
  v53 = sub_1D556C428();
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v173 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F0, &qword_1D565B520);
  sub_1D560C8B8();
  swift_endAccess();
  (v27)(v52, v29, v12);
  sub_1D5613DB8();
  v55 = v158;
  v56 = v151;
  (*(v158 + 16))(v151, v51, v50);
  v57 = (*(v55 + 88))(v56, v50);
  if (v57 == *MEMORY[0x1E69765E8])
  {
    v58 = 0;
  }

  else if (v57 == *MEMORY[0x1E69765F8])
  {
    v58 = 1;
  }

  else
  {
    if (v57 != *MEMORY[0x1E69765F0])
    {
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v58 = 2;
  }

  (*(v55 + 8))(v51, v50);
  v161(v52, v12);
  swift_beginAccess();
  LOBYTE(v173) = v58;
  sub_1D560C8B8();
  swift_endAccess();
  v169 = v12;
  v170 = &protocol witness table for Artist;
  v59 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  (v27)(v59, v29, v12);
  v60 = __swift_project_boxed_opaque_existential_1(&aBlock, v169);
  sub_1D4E5A1CC();
  v13 = v12;
  sub_1D5329168();

  sub_1D55950B8(v60, MEMORY[0x1E6976F28], &protocol witness table for Artist, sub_1D55ACE98, v61, v62, v63, v64, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);

  v65 = v164;
  swift_beginAccess();
  v172 = v65;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v66 = *(sub_1D4E5A1CC() + 40);

  *(v4 + *(*v4 + 200)) = v66;
  v157 = sub_1D4F636B4();
  v8 = v67;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_36;
  }

LABEL_18:
  v68 = sub_1D560C758();
  v69 = __swift_project_value_buffer(v68, qword_1EDD76AA8);
  v70 = v153;
  (v27)(v153, v29, v13);

  v152 = v69;
  v71 = sub_1D560C738();
  LODWORD(v69) = sub_1D56156E8();

  LODWORD(v151) = v69;
  v72 = os_log_type_enabled(v71, v69);
  v73 = v13;
  v158 = v8;
  if (v72)
  {
    v74 = v13;
    v75 = v27;
    v76 = v70;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v173 = v78;
    *v77 = 136446978;
    *(v77 + 4) = sub_1D4E6835C(v157, v158, &v173);
    *(v77 + 12) = 2082;
    (v75)(v144, v76, v13);
    v79 = sub_1D5614DB8();
    v81 = v80;
    v82 = v76;
    v27 = v75;
    v161(v82, v74);
    v83 = sub_1D4E6835C(v79, v81, &v173);

    *(v77 + 14) = v83;
    *(v77 + 22) = 2082;
    v84 = sub_1D4F5E0F8();
    v86 = sub_1D4E6835C(v84, v85, &v173);

    *(v77 + 24) = v86;
    *(v77 + 32) = 2082;
    v29 = v160;
    aBlock = v147;
    v167 = v146;
    v168 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v87 = sub_1D5614DB8();
    v89 = sub_1D4E6835C(v87, v88, &v173);

    *(v77 + 34) = v89;
    _os_log_impl(&dword_1D4E3F000, v71, v151, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v77, 0x2Au);
    swift_arrayDestroy();
    v90 = v78;
    v8 = v158;
    MEMORY[0x1DA6ED200](v90, -1, -1);
    v73 = v74;
    MEMORY[0x1DA6ED200](v77, -1, -1);
  }

  else
  {

    v161(v70, v13);
  }

  v91 = v156;
  (v27)(v156, v29, v73);
  swift_retain_n();

  v92 = sub_1D560C738();
  v93 = sub_1D56156E8();

  v94 = os_log_type_enabled(v92, v93);
  v148 = v73;
  if (v94)
  {
    v95 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v173 = v163;
    *v95 = 136446978;
    v96 = sub_1D4E6835C(v157, v8, &v173);
    *(v95 + 4) = v96;
    *(v95 + 12) = 2082;
    MEMORY[0x1EEE9AC00](v96);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v98 = v73;
    swift_getKeyPath();
    sub_1D560C8F8();

    v99 = v164;
    v100 = v164 >> 6;
    if (v100)
    {
      if (v100 == 1)
      {
        aBlock = 0;
        v167 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v99 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v101 = aBlock;
        v102 = v167;
      }

      else
      {

        v102 = 0xE600000000000000;
        v101 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v99)
      {
        v101 = 0x656C62616464612ELL;
      }

      else
      {
        v101 = 0xD000000000000028;
      }

      if (v99)
      {
        v102 = 0xED0000296C696E28;
      }

      else
      {
        v102 = 0x80000001D567FDB0;
      }
    }

    v104 = sub_1D4E6835C(v101, v102, &v173);

    *(v95 + 14) = v104;
    *(v95 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v105);
    v106 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v106);
    swift_getKeyPath();
    sub_1D560C8F8();

    v107 = MusicLibrary.DownloadStatus.description.getter();
    v109 = v108;

    v110 = sub_1D4E6835C(v107, v109, &v173);

    *(v95 + 24) = v110;
    *(v95 + 32) = 2082;
    v111 = v156;
    v112 = sub_1D556F460();
    v114 = v113;
    v103 = v161;
    v161(v111, v98);
    v115 = sub_1D4E6835C(v112, v114, &v173);

    *(v95 + 34) = v115;
    _os_log_impl(&dword_1D4E3F000, v92, v93, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v95, 0x2Au);
    v116 = v163;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v116, -1, -1);
    MEMORY[0x1DA6ED200](v95, -1, -1);
  }

  else
  {

    v103 = v161;
    v161(v91, v73);
  }

  v117 = *(v4 + *(*v4 + 160));
  v118 = swift_allocObject();
  swift_weakInit();
  v170 = sub_1D55AA15C;
  v171 = v118;
  aBlock = MEMORY[0x1E69E9820];
  v167 = 1107296256;
  v168 = sub_1D5570C18;
  v169 = &block_descriptor_678;
  v119 = _Block_copy(&aBlock);

  v120 = v117;

  [v120 setStatusBlock_];
  _Block_release(v119);

  v121 = *(v4 + *(*v4 + 168));
  v122 = swift_allocObject();
  swift_weakInit();
  v170 = sub_1D55AA19C;
  v171 = v122;
  aBlock = MEMORY[0x1E69E9820];
  v167 = 1107296256;
  v168 = sub_1D5571B7C;
  v169 = &block_descriptor_682;
  v123 = _Block_copy(&aBlock);
  v124 = v121;

  [v124 setStatusBlock_];
  _Block_release(v123);

  sub_1D5611CC8();
  v125 = objc_opt_self();
  v126 = [v125 canShowCloudDownloadButtonsDidChangeNotificationName];
  v127 = [v125 sharedCloudController];
  swift_allocObject();
  swift_weakInit();

  v128 = sub_1D5611CB8();

  *(v4 + *(*v4 + 208)) = v128;

  v129 = [v154 didChangeNotificationName];
  v130 = *(v4 + *(*v4 + 184));
  swift_allocObject();
  swift_weakInit();
  v131 = v130;

  v132 = sub_1D5611CB8();

  *(v4 + *(*v4 + 216)) = v132;

  v133 = swift_allocObject();
  swift_weakInit();
  v134 = swift_allocObject();
  v135 = v157;
  v134[2] = v133;
  v134[3] = v135;
  v136 = v158;
  v134[4] = v158;

  sub_1D56129D8();

  sub_1D56129B8();

  sub_1D560EFA8();
  v137 = sub_1D5615458();
  v138 = v155;
  __swift_storeEnumTagSinglePayload(v155, 1, 1, v137);
  v139 = swift_allocObject();
  swift_weakInit();

  v140 = swift_allocObject();
  v140[2] = 0;
  v140[3] = 0;
  v140[4] = v139;
  v140[5] = v135;
  v140[6] = v136;
  sub_1D51EC8B4(0, 0, v138, &unk_1D5672CA0, v140);

  v103(v160, v148);
  return v4;
}

void sub_1D556A5AC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_8();
  v10 = v5(0);
  OUTLINED_FUNCTION_4();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v14 = *(v12 + 16);
  v14(&v21 - v15, v0, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    v22 = v3;
    sub_1D4E48324(&v25, &v28);
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    OUTLINED_FUNCTION_333_0();
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v31, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v23, &v25);
      sub_1D4E48324(&v25, v31);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      goto LABEL_7;
    }

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1D4E50004(v23, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v3 = v22;
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1D4E50004(&v25, &qword_1EC7EC520, &unk_1D5621050);
  }

  v29 = v10;
  v30 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
  v14(boxed_opaque_existential_0, v0, v10);
  sub_1D4E50004(v31, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v28, v31);
LABEL_7:
  sub_1D4E69970(v31, &v25, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v26 + 1))
  {
    sub_1D4E48324(&v25, &v28);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    (*(v8 + 104))(v1, *MEMORY[0x1E6976988], v6);
    sub_1D5159364(v1, v17, v18);
    v19 = OUTLINED_FUNCTION_98();
    v20(v19);
    sub_1D4E50004(v31, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v28);
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D4E50004(&v25, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_53_9();
    v21 = 467;
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    __break(1u);
  }
}

id sub_1D556A980()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v5 = sub_1D5613D28();
  v18 = v5;
  v19 = MEMORY[0x1E6976E20];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  v7 = *(*(v5 - 8) + 16);
  v7(boxed_opaque_existential_0, v0, v5);
  __swift_project_boxed_opaque_existential_1(&v17, v18);
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    sub_1D4E48324(v13, &v15);
    sub_1D4E48324(&v15, v20);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1D4E50004(v13, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    v18 = v5;
    v19 = MEMORY[0x1E6976E58];
    v8 = __swift_allocate_boxed_opaque_existential_0(&v17);
    v7(v8, v0, v5);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    sub_1D4E48324(&v17, v20);
  }

  sub_1D4E69970(v20, &v15, &unk_1EC7ED400, &qword_1D5620CF0);
  if (v16)
  {
    sub_1D4E48324(&v15, &v17);
    v9 = v18;
    v10 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v2 + 104))(v4, *MEMORY[0x1E6976988], v1);
    v11 = sub_1D5159364(v4, v9, v10);
    (*(v2 + 8))(v4, v1);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v11;
  }

  else
  {
    sub_1D4E50004(&v15, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D556ACF0()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1D55AC65C(v0, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v12, &v14);
      sub_1D4E48324(&v14, v20);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      goto LABEL_7;
    }

    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D4E50004(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EC520, &unk_1D5621050);
  }

  v18 = v5;
  v19 = sub_1D55ACD00(&qword_1EC7EA590, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v17, v20);
LABEL_7:
  sub_1D4E69970(v20, &v14, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v15 + 1))
  {
    sub_1D4E48324(&v14, &v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v2 + 104))(v4, *MEMORY[0x1E6976988], v1);
    v10 = sub_1D5159364(v4, v8, v9);
    (*(v2 + 8))(v4, v1);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v10;
  }

  else
  {
    sub_1D4E50004(&v14, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D556B120()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1D55AC65C(v0, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v12, &v14);
      sub_1D4E48324(&v14, v20);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      goto LABEL_7;
    }

    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D4E50004(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EC520, &unk_1D5621050);
  }

  v18 = v5;
  v19 = sub_1D55ACD00(&qword_1EC7EA588, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v17, v20);
LABEL_7:
  sub_1D4E69970(v20, &v14, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v15 + 1))
  {
    sub_1D4E48324(&v14, &v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v2 + 104))(v4, *MEMORY[0x1E6976988], v1);
    v10 = sub_1D5159364(v4, v8, v9);
    (*(v2 + 8))(v4, v1);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v10;
  }

  else
  {
    sub_1D4E50004(&v14, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D556B550()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1D55AC65C(v0, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v12, &v14);
      sub_1D4E48324(&v14, v20);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      goto LABEL_7;
    }

    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D4E50004(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EC520, &unk_1D5621050);
  }

  v18 = v5;
  v19 = sub_1D55ACD00(&qword_1EC7EA480, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v17, v20);
LABEL_7:
  sub_1D4E69970(v20, &v14, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v15 + 1))
  {
    sub_1D4E48324(&v14, &v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v2 + 104))(v4, *MEMORY[0x1E6976988], v1);
    v10 = sub_1D5159364(v4, v8, v9);
    (*(v2 + 8))(v4, v1);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v10;
  }

  else
  {
    sub_1D4E50004(&v14, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D556B980()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1D55AC65C(v0, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v12, &v14);
      sub_1D4E48324(&v14, v20);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      goto LABEL_7;
    }

    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D4E50004(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EC520, &unk_1D5621050);
  }

  v18 = v5;
  v19 = sub_1D55ACD00(&qword_1EC7EA578, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v17, v20);
LABEL_7:
  sub_1D4E69970(v20, &v14, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v15 + 1))
  {
    sub_1D4E48324(&v14, &v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v2 + 104))(v4, *MEMORY[0x1E6976988], v1);
    v10 = sub_1D5159364(v4, v8, v9);
    (*(v2 + 8))(v4, v1);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v10;
  }

  else
  {
    sub_1D4E50004(&v14, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D556BDB0()
{
  v1 = sub_1D56131C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1D55AC65C(v0, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    sub_1D560D078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(v12, &v14);
      sub_1D4E48324(&v14, v20);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      goto LABEL_7;
    }

    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D4E50004(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1D4E50004(&v14, &qword_1EC7EC520, &unk_1D5621050);
  }

  v18 = v5;
  v19 = sub_1D55ACD00(&qword_1EC7EA580, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_1D55AC65C(v0, boxed_opaque_existential_0);
  sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(&v17, v20);
LABEL_7:
  sub_1D4E69970(v20, &v14, &unk_1EC7ED400, &qword_1D5620CF0);
  if (*(&v15 + 1))
  {
    sub_1D4E48324(&v14, &v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v2 + 104))(v4, *MEMORY[0x1E6976988], v1);
    v10 = sub_1D5159364(v4, v8, v9);
    (*(v2 + 8))(v4, v1);
    sub_1D4E50004(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v10;
  }

  else
  {
    sub_1D4E50004(&v14, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D556C258()
{
  OUTLINED_FUNCTION_269_2();
  v0(0);
  OUTLINED_FUNCTION_178_7();
  OUTLINED_FUNCTION_331_2();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_64_5();
  return sub_1D560C908();
}

uint64_t sub_1D556C2F4()
{
  v1 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D55AC65C(v0, v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC560, &qword_1D56210A8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = sub_1D5370A10(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D4E50004(v7, qword_1EC7EC568, &unk_1D56210B0);
    return 0;
  }

  return v5;
}

uint64_t sub_1D556C428()
{
  v1 = sub_1D5613EF8();
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 16))(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC560, &qword_1D56210A8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = sub_1D5370A10(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D4E50004(v8, qword_1EC7EC568, &unk_1D56210B0);
    return 0;
  }

  return v6;
}

void sub_1D556C584()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_272_3();
  v0 = OUTLINED_FUNCTION_116_9();
  v1(v0);
  OUTLINED_FUNCTION_178_7();
  OUTLINED_FUNCTION_331_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_440();
  swift_getKeyPath();

  OUTLINED_FUNCTION_64_5();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D556C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_64_4();
  v22(0);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_366_0();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D556C8C0()
{
  OUTLINED_FUNCTION_47();
  v67 = v1;
  v64 = v2;
  v62 = v3;
  v5 = v4;
  v7 = v6;
  v57 = v0;
  v66 = sub_1D560D838();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v65 = v10 - v9;
  v63 = sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v61 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  OUTLINED_FUNCTION_9_0();
  v78 = 0xD000000000000018;
  v79 = v28;
  v29 = v7(0);
  v76 = v29;
  v77 = v5;
  __swift_allocate_boxed_opaque_existential_0(&v74);
  OUTLINED_FUNCTION_24_0();
  v59 = *(v30 + 16);
  v60 = v30 + 16;
  v59();
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v72 = 0xD000000000000015;
  v73 = v31;
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_217_6();
  sub_1D560DB28();
  v32 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v32);

  MEMORY[0x1DA6EAC70](v72, v73);

  OUTLINED_FUNCTION_420();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v72 = 0xD00000000000001CLL;
  v73 = v33;
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_217_6();
  sub_1D560DB18();
  v34 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v34);

  MEMORY[0x1DA6EAC70](v72, v73);

  OUTLINED_FUNCTION_420();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v72 = 0xD00000000000001ELL;
  v73 = v35;
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_217_6();
  sub_1D560DB38();
  v36 = sub_1D5615898();
  v38 = v37;
  sub_1D4E50004(v27, &qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1DA6EAC70](v36, v38);

  MEMORY[0x1DA6EAC70](v72, v73);

  OUTLINED_FUNCTION_420();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v72 = 0xD00000000000001ELL;
  v73 = v39;
  v40 = v58;
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_217_6();
  sub_1D560DB48();
  sub_1D56158A8();
  sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
  v41 = OUTLINED_FUNCTION_70();
  MEMORY[0x1DA6EAC70](v41);
  v42 = v57;

  MEMORY[0x1DA6EAC70](v72, v73);

  OUTLINED_FUNCTION_420();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v72 = 0xD000000000000025;
  v73 = v43;
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_217_6();
  sub_1D560DB58();
  sub_1D56158B8();
  v44 = OUTLINED_FUNCTION_357_2();
  sub_1D4E50004(v44, &qword_1EC7EC528, &unk_1D5621070);
  v45 = OUTLINED_FUNCTION_46_1();
  MEMORY[0x1DA6EAC70](v45);
  OUTLINED_FUNCTION_418_0();

  OUTLINED_FUNCTION_455();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  v76 = v29;
  v77 = v62;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
  (v59)(boxed_opaque_existential_0, v42, v29);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v72 = v23;
  v73 = v47;
  OUTLINED_FUNCTION_381_0();
  v64();
  v48 = v63;
  (*(v12 + 16))(v61, v40, v63);
  v49 = OUTLINED_FUNCTION_71();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x1E69765E8] || v51 == *MEMORY[0x1E69765F8] || v51 == *MEMORY[0x1E69765F0])
  {
    (*(v12 + 8))(v40, v48);
    v52 = OUTLINED_FUNCTION_98();
    MEMORY[0x1DA6EAC70](v52);

    OUTLINED_FUNCTION_455();

    __swift_destroy_boxed_opaque_existential_1(&v74);
    MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = v23 - 2;
    v75 = v53;
    sub_1D560EC98();
    v72 = sub_1D5614DD8();
    v73 = v54;
    v70 = 10;
    v71 = 0xE100000000000000;
    v68 = 2105354;
    v69 = 0xE300000000000000;
    sub_1D4F53278();
    OUTLINED_FUNCTION_146();
    sub_1D5615968();
    OUTLINED_FUNCTION_357_2();

    v55 = OUTLINED_FUNCTION_46_1();
    MEMORY[0x1DA6EAC70](v55);

    OUTLINED_FUNCTION_455();

    MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    v56 = 66;
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    __break(1u);
  }
}

void sub_1D556D06C()
{
  OUTLINED_FUNCTION_47();
  v59 = v4;
  v60 = v5;
  v58 = v6;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_418_0();
  v11 = sub_1D560D838();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v57 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v55 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9();
  v10(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  v71 = v1 + 3;
  v72 = v27;
  v28 = OUTLINED_FUNCTION_71();
  sub_1D55AC65C(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v65, &v68);
    OUTLINED_FUNCTION_268_4();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *&v65 = v1;
    *(&v65 + 1) = v30;
    v55 = v8;
    OUTLINED_FUNCTION_382_0();
    OUTLINED_FUNCTION_0_6();
    sub_1D560DB28();
    v31 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v31);

    OUTLINED_FUNCTION_276_3();

    OUTLINED_FUNCTION_268_4();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *&v65 = v1 + 7;
    *(&v65 + 1) = v32;
    OUTLINED_FUNCTION_382_0();
    OUTLINED_FUNCTION_0_6();
    sub_1D560DB18();
    v33 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v33);

    OUTLINED_FUNCTION_276_3();

    OUTLINED_FUNCTION_268_4();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v1 = v11;
    *&v65 = 0xD00000000000001ELL;
    *(&v65 + 1) = v34;
    OUTLINED_FUNCTION_382_0();
    OUTLINED_FUNCTION_0_6();
    sub_1D560DB38();
    v35 = sub_1D5615898();
    v37 = v36;
    sub_1D4E50004(v3, &qword_1EC7EC538, &unk_1D5621080);
    MEMORY[0x1DA6EAC70](v35, v37);

    OUTLINED_FUNCTION_276_3();

    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *&v65 = 0xD00000000000001ELL;
    *(&v65 + 1) = v38;
    OUTLINED_FUNCTION_418_0();
    OUTLINED_FUNCTION_382_0();
    OUTLINED_FUNCTION_0_6();
    sub_1D560DB48();
    v39 = sub_1D56158A8();
    v41 = v40;
    sub_1D4E50004(v2, &qword_1EC7EC530, &unk_1D5632150);
    MEMORY[0x1DA6EAC70](v39, v41);

    OUTLINED_FUNCTION_276_3();

    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *&v65 = v11 + 16;
    *(&v65 + 1) = v42;
    OUTLINED_FUNCTION_382_0();
    v43 = v56;
    OUTLINED_FUNCTION_70();
    sub_1D560DB58();
    sub_1D56158B8();
    sub_1D4E50004(v43, &qword_1EC7EC528, &unk_1D5621070);
    v44 = OUTLINED_FUNCTION_70();
    MEMORY[0x1DA6EAC70](v44);

    OUTLINED_FUNCTION_276_3();

    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_1D4E50004(&v65, &qword_1EC7EC548, &qword_1D5621090);
  }

  sub_1D55AC65C(v0, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v65, &v68);
    OUTLINED_FUNCTION_268_4();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *&v65 = v1;
    *(&v65 + 1) = v45;
    v46 = v70;
    OUTLINED_FUNCTION_382_0();
    v47 = OUTLINED_FUNCTION_0_6();
    v48(v47, v46);
    v49 = 0xEA00000000006465;
    v50 = 0x7469726F7661662ELL;
    if (v63 != 1)
    {
      v50 = 0x656B696C7369642ELL;
      v49 = 0xE900000000000064;
    }

    if (v63)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0x6C61727475656E2ELL;
    }

    if (v63)
    {
      v1 = v49;
    }

    else
    {
      v1 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v51, v1);

    OUTLINED_FUNCTION_276_3();

    __swift_destroy_boxed_opaque_existential_1(&v68);
    OUTLINED_FUNCTION_418_0();
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_1D4E50004(&v65, &qword_1EC7EC510, &unk_1D5621040);
  }

  MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v68 = v1 - 2;
  v69 = v52;
  sub_1D55ACD00(v58, v59, v60);
  sub_1D560EC98();
  *&v65 = sub_1D5614DD8();
  *(&v65 + 1) = v53;
  v63 = 10;
  v64 = 0xE100000000000000;
  v61 = 2105354;
  v62 = 0xE300000000000000;
  sub_1D4F53278();
  OUTLINED_FUNCTION_146();
  sub_1D5615968();
  OUTLINED_FUNCTION_357_2();

  v54 = OUTLINED_FUNCTION_46_1();
  MEMORY[0x1DA6EAC70](v54);

  OUTLINED_FUNCTION_455();

  MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D556D79C()
{
  v36 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v36);
  v35[1] = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v2);
  v37 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v35 - v11;
  v49 = 0xD000000000000018;
  v50 = 0x80000001D56800B0;
  v47 = v2;
  v48 = sub_1D55ACD00(&qword_1EC7F82F0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v13 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v39 = v0;
  sub_1D55AC65C(v0, v13);
  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v43[0] = 0xD000000000000015;
  *(&v43[0] + 1) = 0x80000001D5680110;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  if (qword_1EC7E8B98 != -1)
  {
    swift_once();
  }

  v14 = sub_1D55ACD00(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D55ACD00(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D560EC28();
  v15 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v15);

  MEMORY[0x1DA6EAC70](*&v43[0], *(&v43[0] + 1));

  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v43[0] = 0xD00000000000001CLL;
  *(&v43[0] + 1) = 0x80000001D5680130;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  if (qword_1EC7E8BA0 != -1)
  {
    swift_once();
  }

  v38 = v14;
  sub_1D560EC28();
  v16 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v16);

  MEMORY[0x1DA6EAC70](*&v43[0], *(&v43[0] + 1));

  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v43[0] = 0xD00000000000001ELL;
  *(&v43[0] + 1) = 0x80000001D5680150;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  sub_1D560DB38();
  v17 = sub_1D5615898();
  v19 = v18;
  sub_1D4E50004(v12, &qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1DA6EAC70](v17, v19);

  MEMORY[0x1DA6EAC70](*&v43[0], *(&v43[0] + 1));

  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v43[0] = 0xD00000000000001ELL;
  *(&v43[0] + 1) = 0x80000001D5680170;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  sub_1D560DB48();
  v20 = sub_1D56158A8();
  v22 = v21;
  sub_1D4E50004(v9, &qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1DA6EAC70](v20, v22);

  MEMORY[0x1DA6EAC70](*&v43[0], *(&v43[0] + 1));

  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v43[0] = 0xD000000000000025;
  *(&v43[0] + 1) = 0x80000001D5680190;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  sub_1D560DB58();
  v23 = sub_1D56158B8();
  v25 = v24;
  sub_1D4E50004(v6, &qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1DA6EAC70](v23, v25);

  MEMORY[0x1DA6EAC70](*&v43[0], *(&v43[0] + 1));

  __swift_destroy_boxed_opaque_existential_1(&v45);
  sub_1D55AC65C(v39, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v43, &v45);
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v43[0] = 0xD000000000000015;
    *(&v43[0] + 1) = 0x80000001D56800F0;
    v26 = v47;
    v27 = v48;
    __swift_project_boxed_opaque_existential_1(&v45, v47);
    (*(v27 + 16))(v42, v26, v27);
    if (LOBYTE(v42[0]))
    {
      if (LOBYTE(v42[0]) == 1)
      {
        v28 = 0xEA00000000006465;
        v29 = 0x7469726F7661662ELL;
      }

      else
      {
        v28 = 0xE900000000000064;
        v29 = 0x656B696C7369642ELL;
      }
    }

    else
    {
      v28 = 0xE800000000000000;
      v29 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v29, v28);

    MEMORY[0x1DA6EAC70](*&v43[0], *(&v43[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_1D4E50004(v43, &qword_1EC7EC510, &unk_1D5621040);
  }

  MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1D5615B68();

  v45 = 0xD000000000000013;
  v46 = 0x80000001D56800D0;
  sub_1D560EC98();
  *&v43[0] = sub_1D5614DD8();
  *(&v43[0] + 1) = v30;
  v42[0] = 10;
  v42[1] = 0xE100000000000000;
  v40 = 2105354;
  v41 = 0xE300000000000000;
  sub_1D4F53278();
  v31 = sub_1D5615968();
  v33 = v32;

  MEMORY[0x1DA6EAC70](v31, v33);

  MEMORY[0x1DA6EAC70](v45, v46);

  MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
  return v49;
}

unint64_t sub_1D556E0B0()
{
  v39 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v50 = 0xD000000000000018;
  v51 = 0x80000001D56800B0;
  v48 = v2;
  v49 = sub_1D55ACD00(&qword_1EC7F82F8, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v13 = __swift_allocate_boxed_opaque_existential_0(&v46);
  v40 = v0;
  sub_1D55AC65C(v0, v13);
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD000000000000015;
  *(&v44[0] + 1) = 0x80000001D5680110;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EC7E91C8 != -1)
  {
    swift_once();
  }

  v37 = v2;
  sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D55ACD00(&qword_1EC7EC490, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D560EC28();
  v14 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v14);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD00000000000001CLL;
  *(&v44[0] + 1) = 0x80000001D5680130;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EC7E91D0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v15 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v15);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD00000000000001ELL;
  *(&v44[0] + 1) = 0x80000001D5680150;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EC7E91D8 != -1)
  {
    swift_once();
  }

  sub_1D5613178();
  sub_1D560EC28();
  v16 = sub_1D5615898();
  v18 = v17;
  sub_1D4E50004(v12, &qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1DA6EAC70](v16, v18);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD00000000000001ELL;
  *(&v44[0] + 1) = 0x80000001D5680170;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EC7E91E0 != -1)
  {
    swift_once();
  }

  sub_1D5613198();
  sub_1D560EC28();
  v19 = sub_1D56158A8();
  v21 = v20;
  sub_1D4E50004(v9, &qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1DA6EAC70](v19, v21);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD000000000000025;
  *(&v44[0] + 1) = 0x80000001D5680190;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v22 = v40;
  if (qword_1EC7E91E8 != -1)
  {
    swift_once();
  }

  sub_1D56134E8();
  sub_1D560EC28();
  v23 = sub_1D56158B8();
  v25 = v24;
  sub_1D4E50004(v6, &qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1DA6EAC70](v23, v25);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_1D55AC65C(v22, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v44, &v46);
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v44[0] = 0xD000000000000015;
    *(&v44[0] + 1) = 0x80000001D56800F0;
    v26 = v48;
    v27 = v49;
    __swift_project_boxed_opaque_existential_1(&v46, v48);
    (*(v27 + 16))(v43, v26, v27);
    if (LOBYTE(v43[0]))
    {
      if (LOBYTE(v43[0]) == 1)
      {
        v28 = 0xEA00000000006465;
        v29 = 0x7469726F7661662ELL;
      }

      else
      {
        v28 = 0xE900000000000064;
        v29 = 0x656B696C7369642ELL;
      }
    }

    else
    {
      v28 = 0xE800000000000000;
      v29 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v29, v28);

    MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1D4E50004(v44, &qword_1EC7EC510, &unk_1D5621040);
  }

  MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1D5615B68();

  v46 = 0xD000000000000013;
  v47 = 0x80000001D56800D0;
  sub_1D560EC98();
  *&v44[0] = sub_1D5614DD8();
  *(&v44[0] + 1) = v30;
  v43[0] = 10;
  v43[1] = 0xE100000000000000;
  v41 = 2105354;
  v42 = 0xE300000000000000;
  sub_1D4F53278();
  v31 = sub_1D5615968();
  v33 = v32;

  MEMORY[0x1DA6EAC70](v31, v33);

  MEMORY[0x1DA6EAC70](v46, v47);

  MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
  return v50;
}

unint64_t sub_1D556EA88()
{
  v39 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v50 = 0xD000000000000018;
  v51 = 0x80000001D56800B0;
  v48 = v2;
  v49 = sub_1D55ACD00(&qword_1EC7F8320, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v13 = __swift_allocate_boxed_opaque_existential_0(&v46);
  v40 = v0;
  sub_1D55AC65C(v0, v13);
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD000000000000015;
  *(&v44[0] + 1) = 0x80000001D5680110;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EDD542C0 != -1)
  {
    swift_once();
  }

  v37 = v2;
  sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D55ACD00(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D560EC28();
  v14 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v14);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD00000000000001CLL;
  *(&v44[0] + 1) = 0x80000001D5680130;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EDD54218 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v15 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v15);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD00000000000001ELL;
  *(&v44[0] + 1) = 0x80000001D5680150;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EDD54210 != -1)
  {
    swift_once();
  }

  sub_1D5613178();
  sub_1D560EC28();
  v16 = sub_1D5615898();
  v18 = v17;
  sub_1D4E50004(v12, &qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1DA6EAC70](v16, v18);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD00000000000001ELL;
  *(&v44[0] + 1) = 0x80000001D5680170;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  if (qword_1EDD54208 != -1)
  {
    swift_once();
  }

  sub_1D5613198();
  sub_1D560EC28();
  v19 = sub_1D56158A8();
  v21 = v20;
  sub_1D4E50004(v9, &qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1DA6EAC70](v19, v21);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v44[0] = 0xD000000000000025;
  *(&v44[0] + 1) = 0x80000001D5680190;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v22 = v40;
  if (qword_1EDD54200 != -1)
  {
    swift_once();
  }

  sub_1D56134E8();
  sub_1D560EC28();
  v23 = sub_1D56158B8();
  v25 = v24;
  sub_1D4E50004(v6, &qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1DA6EAC70](v23, v25);

  MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_1D55AC65C(v22, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v44, &v46);
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v44[0] = 0xD000000000000015;
    *(&v44[0] + 1) = 0x80000001D56800F0;
    v26 = v48;
    v27 = v49;
    __swift_project_boxed_opaque_existential_1(&v46, v48);
    (*(v27 + 16))(v43, v26, v27);
    if (LOBYTE(v43[0]))
    {
      if (LOBYTE(v43[0]) == 1)
      {
        v28 = 0xEA00000000006465;
        v29 = 0x7469726F7661662ELL;
      }

      else
      {
        v28 = 0xE900000000000064;
        v29 = 0x656B696C7369642ELL;
      }
    }

    else
    {
      v28 = 0xE800000000000000;
      v29 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v29, v28);

    MEMORY[0x1DA6EAC70](*&v44[0], *(&v44[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1D4E50004(v44, &qword_1EC7EC510, &unk_1D5621040);
  }

  MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1D5615B68();

  v46 = 0xD000000000000013;
  v47 = 0x80000001D56800D0;
  sub_1D560EC98();
  *&v44[0] = sub_1D5614DD8();
  *(&v44[0] + 1) = v30;
  v43[0] = 10;
  v43[1] = 0xE100000000000000;
  v41 = 2105354;
  v42 = 0xE300000000000000;
  sub_1D4F53278();
  v31 = sub_1D5615968();
  v33 = v32;

  MEMORY[0x1DA6EAC70](v31, v33);

  MEMORY[0x1DA6EAC70](v46, v47);

  MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
  return v50;
}

unint64_t sub_1D556F460()
{
  v49 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D56128E8();
  v2 = *(v47 - 8);
  v3 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_1D5613EF8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v61 = 0xD000000000000018;
  v62 = 0x80000001D56800B0;
  v19 = *(v17 + 16);
  v50 = v0;
  v45 = v19;
  v19((&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)), v0, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v55, &v57);
    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v55[0] = 0xD000000000000015;
    *(&v55[0] + 1) = 0x80000001D5680110;
    v44 = v9;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    sub_1D560DB28();
    v20 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v20);

    MEMORY[0x1DA6EAC70](*&v55[0], *(&v55[0] + 1));

    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v55[0] = 0xD00000000000001CLL;
    *(&v55[0] + 1) = 0x80000001D5680130;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    sub_1D560DB18();
    v21 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v21);

    MEMORY[0x1DA6EAC70](*&v55[0], *(&v55[0] + 1));

    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v55[0] = 0xD00000000000001ELL;
    *(&v55[0] + 1) = 0x80000001D5680150;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    sub_1D560DB38();
    v22 = sub_1D5615898();
    v24 = v23;
    sub_1D4E50004(v15, &qword_1EC7EC538, &unk_1D5621080);
    MEMORY[0x1DA6EAC70](v22, v24);

    MEMORY[0x1DA6EAC70](*&v55[0], *(&v55[0] + 1));

    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v55[0] = 0xD00000000000001ELL;
    *(&v55[0] + 1) = 0x80000001D5680170;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    sub_1D560DB48();
    v25 = sub_1D56158A8();
    v27 = v26;
    sub_1D4E50004(v12, &qword_1EC7EC530, &unk_1D5632150);
    MEMORY[0x1DA6EAC70](v25, v27);

    MEMORY[0x1DA6EAC70](*&v55[0], *(&v55[0] + 1));

    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v55[0] = 0xD000000000000025;
    *(&v55[0] + 1) = 0x80000001D5680190;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    v28 = v44;
    sub_1D560DB58();
    v29 = sub_1D56158B8();
    v31 = v30;
    sub_1D4E50004(v28, &qword_1EC7EC528, &unk_1D5621070);
    MEMORY[0x1DA6EAC70](v29, v31);

    MEMORY[0x1DA6EAC70](*&v55[0], *(&v55[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_1D4E50004(v55, &qword_1EC7EC548, &qword_1D5621090);
  }

  v59 = v16;
  v60 = &protocol witness table for Artist;
  v32 = __swift_allocate_boxed_opaque_existential_0(&v57);
  v45(v32, v50, v16);
  *&v55[0] = 0;
  *(&v55[0] + 1) = 0xE000000000000000;
  sub_1D5615B68();

  *&v55[0] = 0xD000000000000015;
  *(&v55[0] + 1) = 0x80000001D56800F0;
  __swift_project_boxed_opaque_existential_1(&v57, v59);
  sub_1D5613DB8();
  v33 = v46;
  v34 = v47;
  (*(v2 + 16))(v46, v6, v47);
  v35 = (*(v2 + 88))(v33, v34);
  if (v35 == *MEMORY[0x1E69765E8])
  {
    v36 = 0xE800000000000000;
    v37 = 0x6C61727475656E2ELL;
LABEL_10:
    (*(v2 + 8))(v6, v34);
    MEMORY[0x1DA6EAC70](v37, v36);

    MEMORY[0x1DA6EAC70](*&v55[0], *(&v55[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v57);
    MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1D5615B68();

    v57 = 0xD000000000000013;
    v58 = 0x80000001D56800D0;
    sub_1D560EC98();
    *&v55[0] = sub_1D5614DD8();
    *(&v55[0] + 1) = v38;
    v53 = 10;
    v54 = 0xE100000000000000;
    v51 = 2105354;
    v52 = 0xE300000000000000;
    sub_1D4F53278();
    v39 = sub_1D5615968();
    v41 = v40;

    MEMORY[0x1DA6EAC70](v39, v41);

    MEMORY[0x1DA6EAC70](v57, v58);

    MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
    return v61;
  }

  if (v35 == *MEMORY[0x1E69765F8])
  {
    v36 = 0xEA00000000006465;
    v37 = 0x7469726F7661662ELL;
    goto LABEL_10;
  }

  if (v35 == *MEMORY[0x1E69765F0])
  {
    v36 = 0xE900000000000064;
    v37 = 0x656B696C7369642ELL;
    goto LABEL_10;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D556FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v7 = sub_1D5615458();
  OUTLINED_FUNCTION_452(v7);
  OUTLINED_FUNCTION_40_13();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();
  OUTLINED_FUNCTION_333_0();

  v9 = sub_1D56153B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;

  OUTLINED_FUNCTION_366_0();
  sub_1D51ECB60(v12, v13, v14, v15, v10);
}

uint64_t sub_1D556FF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D556FFA8, v6, v5);
}

uint64_t sub_1D556FFA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_311_1();
    sub_1D5580C44();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5570050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55700E8, v6, v5);
}

uint64_t sub_1D55700E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_310_1();
    sub_1D5580C44();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5570190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570228, v6, v5);
}

uint64_t sub_1D5570228()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_309_1();
    sub_1D5580C44();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D55702D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570368, v6, v5);
}

uint64_t sub_1D5570368()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D5580C44();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5570420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55704B8, v6, v5);
}

uint64_t sub_1D55704B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_308_1();
    sub_1D5580C44();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5570560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55705F8, v6, v5);
}

uint64_t sub_1D55705F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D558111C(*(v0 + 48));
  }

  OUTLINED_FUNCTION_50();

  return v1();
}

uint64_t sub_1D5570678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570710, v6, v5);
}

uint64_t sub_1D5570710()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D55817C0(*(v0 + 48));
  }

  OUTLINED_FUNCTION_50();

  return v1();
}

uint64_t sub_1D5570790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570828, v6, v5);
}

uint64_t sub_1D5570828()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D5581E64(*(v0 + 48));
  }

  OUTLINED_FUNCTION_50();

  return v1();
}

uint64_t sub_1D55708A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570940, v6, v5);
}

uint64_t sub_1D5570940()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D5582508(*(v0 + 48));
  }

  OUTLINED_FUNCTION_50();

  return v1();
}

uint64_t sub_1D55709C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570A58, v6, v5);
}

uint64_t sub_1D5570A58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D5582BAC(*(v0 + 48));
  }

  OUTLINED_FUNCTION_50();

  return v1();
}

uint64_t sub_1D5570AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570B70, v6, v5);
}

uint64_t sub_1D5570B70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_342_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_307_2();
    sub_1D5580C44();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5570C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1D5570C6C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9();
  v14 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
  OUTLINED_FUNCTION_40_13();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = sub_1D56153C8();

  sub_1D56153B8();
  OUTLINED_FUNCTION_183();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a4;

  sub_1D51ECB60(0, 0, v7, a7, v17);
}

uint64_t sub_1D5570DCC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570E6C, v8, v7);
}

uint64_t sub_1D5570E6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_261_3();
    sub_1D5583250();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5570F24(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5570FC4, v8, v7);
}

uint64_t sub_1D5570FC4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_261_3();
    sub_1D5583250();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D557107C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D557111C, v8, v7);
}

uint64_t sub_1D557111C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_261_3();
    sub_1D5583250();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D55711D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571274, v8, v7);
}

uint64_t sub_1D5571274()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_261_3();
    sub_1D5583250();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D557132C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55713CC, v8, v7);
}

uint64_t sub_1D55713CC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_261_3();
    sub_1D5583250();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5571484(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571524, v8, v7);
}

uint64_t sub_1D5571524()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_261_3();
    sub_1D558374C(v0, v1, v2);
  }

  OUTLINED_FUNCTION_50();

  return v3();
}

uint64_t sub_1D55715A4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571644, v8, v7);
}

uint64_t sub_1D5571644()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_261_3();
    sub_1D5583D8C(v0, v1, v2);
  }

  OUTLINED_FUNCTION_50();

  return v3();
}

uint64_t sub_1D55716C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571764, v8, v7);
}

uint64_t sub_1D5571764()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_261_3();
    sub_1D55843CC(v0, v1, v2);
  }

  OUTLINED_FUNCTION_50();

  return v3();
}

uint64_t sub_1D55717E4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571884, v8, v7);
}

uint64_t sub_1D5571884()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_261_3();
    sub_1D5584A0C(v0, v1, v2);
  }

  OUTLINED_FUNCTION_50();

  return v3();
}

uint64_t sub_1D5571904(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55719A4, v8, v7);
}

uint64_t sub_1D55719A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_261_3();
    sub_1D558504C(v0, v1, v2);
  }

  OUTLINED_FUNCTION_50();

  return v3();
}

uint64_t sub_1D5571A24(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  sub_1D56153C8();
  *(v6 + 72) = sub_1D56153B8();
  v8 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571AC4, v8, v7);
}

uint64_t sub_1D5571AC4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_341_2();
  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_261_3();
    sub_1D5583250();
  }

  OUTLINED_FUNCTION_50();

  return v0();
}

uint64_t sub_1D5571B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 32);

  v4 = OUTLINED_FUNCTION_71();
  v3(v4, v2);
}

uint64_t sub_1D5571BE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571C7C, v4, v3);
}

uint64_t sub_1D5571C7C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558CC74(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5571CF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571D8C, v4, v3);
}

uint64_t sub_1D5571D8C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558D0E8(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5571E04(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571E9C, v4, v3);
}

uint64_t sub_1D5571E9C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558D55C(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5571F14(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5571FAC, v4, v3);
}

uint64_t sub_1D5571FAC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558D9D0(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572024(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55720BC, v4, v3);
}

uint64_t sub_1D55720BC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558DE44(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572134(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55721CC, v4, v3);
}

uint64_t sub_1D55721CC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558E2B8(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572244(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55722DC, v4, v3);
}

uint64_t sub_1D55722DC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558E6FC(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572354(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55723EC, v4, v3);
}

uint64_t sub_1D55723EC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558EB40(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572464(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55724FC, v4, v3);
}

uint64_t sub_1D55724FC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558EF3C(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572574(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D557260C, v4, v3);
}

uint64_t sub_1D557260C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558F380(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572684(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D557271C, v4, v3);
}

uint64_t sub_1D557271C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_259_3();
    sub_1D558F7C4(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572794(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D557282C, v4, v3);
}

uint64_t sub_1D557282C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558CC74(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D55728A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D557293C, v4, v3);
}

uint64_t sub_1D557293C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558D0E8(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D55729B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5572A4C, v4, v3);
}

uint64_t sub_1D5572A4C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558D55C(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572AC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5572B5C, v4, v3);
}

uint64_t sub_1D5572B5C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558D9D0(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572BD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5572C6C, v4, v3);
}

uint64_t sub_1D5572C6C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558DE44(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572CE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5572D7C, v4, v3);
}

uint64_t sub_1D5572D7C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558E2B8(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572DF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5572E8C, v4, v3);
}

uint64_t sub_1D5572E8C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558E6FC(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5572F04(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5572F9C, v4, v3);
}

uint64_t sub_1D5572F9C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558EB40(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5573014(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55730AC, v4, v3);
}

uint64_t sub_1D55730AC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558EF3C(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5573124(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55731BC, v4, v3);
}

uint64_t sub_1D55731BC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558F380(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5573234(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D55732CC, v4, v3);
}

uint64_t sub_1D55732CC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    v0 = OUTLINED_FUNCTION_257_2();
    sub_1D558F7C4(v0);
  }

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5573344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = sub_1D5615458();
  OUTLINED_FUNCTION_452(v9);
  OUTLINED_FUNCTION_40_13();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = a2;
  v11[6] = a3;

  OUTLINED_FUNCTION_366_0();
  sub_1D51ECB60(v12, v13, v14, v15, v11);
}

uint64_t sub_1D5573460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5573524, 0, 0);
}

uint64_t sub_1D5573524()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C42E0);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5573634()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D55736D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5573794, 0, 0);
}

uint64_t sub_1D5573794()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C45B0);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D55738A4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5573940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5573A04, 0, 0);
}

uint64_t sub_1D5573A04()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C4880);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5573B14()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5573BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5573C74, 0, 0);
}

uint64_t sub_1D5573C74()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C3D40);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5573D84()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5573E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5573EE4, 0, 0);
}

uint64_t sub_1D5573EE4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C4010);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5573FF4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5574090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5574154, 0, 0);
}

uint64_t sub_1D5574154()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C52F8);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5574264()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5574300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55743C4, 0, 0);
}

uint64_t sub_1D55743C4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C5190);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D55744D4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5574570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5574634, 0, 0);
}

uint64_t sub_1D5574634()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C5028);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5574744()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D55747E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55748A4, 0, 0);
}

uint64_t sub_1D55748A4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C4EC0);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D55749B4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5574A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5574B14, 0, 0);
}

uint64_t sub_1D5574B14()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C4D58);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5574C24()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5574CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = sub_1D5615458();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5574D84, 0, 0);
}

uint64_t sub_1D5574D84()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_18_96();
    OUTLINED_FUNCTION_203_5(v3, *(v2 + 224));

    OUTLINED_FUNCTION_343_1();
    OUTLINED_FUNCTION_40_13();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_48_44(v4);
    v5 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_205_7(v5);

    v6 = OUTLINED_FUNCTION_78_11(&unk_1F50C4BF0);
    OUTLINED_FUNCTION_84_22(v6);
    OUTLINED_FUNCTION_339_0();

    OUTLINED_FUNCTION_90_23();
    OUTLINED_FUNCTION_376();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_376();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D5574E94()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_43_44();
  OUTLINED_FUNCTION_204_5();

  v0 = OUTLINED_FUNCTION_7_111();
  v1(v0);

  OUTLINED_FUNCTION_201_7();
  OUTLINED_FUNCTION_92_18();
  OUTLINED_FUNCTION_376();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5574F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5574FD0, 0, 0);
}

uint64_t sub_1D5574FD0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D560EEA8();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D5579468(v5, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D55750A8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA990, &qword_1D561D220);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D557531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55753BC, 0, 0);
}

uint64_t sub_1D55753BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613838();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D5579DE8(v5, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5575494()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA978, &qword_1D5652B10);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5575604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55756A4, 0, 0);
}

uint64_t sub_1D55756A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613AF8();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D557A6A8(v5, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D557577C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EEC30, &unk_1D5620CE0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D55758EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D557598C, 0, 0);
}

uint64_t sub_1D557598C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613D28();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D557B880(v5, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5575A64()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA888, &qword_1D563B8C0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5575BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5575C74, 0, 0);
}

uint64_t sub_1D5575C74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5614898();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D557C138(v5, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5575D4C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &unk_1EC7F1990, &unk_1D561CEF0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5575EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5575F5C, 0, 0);
}

uint64_t sub_1D5575F5C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for UploadedVideo(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557D3C8(v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5576034()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA968, &unk_1D561D1F0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D55761A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5576244, 0, 0);
}

uint64_t sub_1D5576244()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for UploadedAudio(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557DD0C(v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D557631C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA970, &unk_1D5652B00);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D557648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D557652C, 0, 0);
}

uint64_t sub_1D557652C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for TVSeason(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557E650(v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5576604()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA878, &unk_1D5634790);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5576774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5576814, 0, 0);
}

uint64_t sub_1D5576814()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for TVEpisode(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557EF1C(v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D55768EC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA880, &unk_1D561CEE0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5576A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5576AFC, 0, 0);
}

uint64_t sub_1D5576AFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for MusicMovie(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557F7E8(v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5576BD4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA890, &qword_1D5672D40);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5576D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5576DE4, 0, 0);
}

uint64_t sub_1D5576DE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613EF8();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D55800B4(v5, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5576EBC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA8A8, &qword_1D561CF10);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D557702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55770CC, 0, 0);
}

uint64_t sub_1D55770CC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D560EEA8();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D5579468(v5, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D55771A4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA990, &qword_1D561D220);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5577418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55774B8, 0, 0);
}

uint64_t sub_1D55774B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613838();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D5579DE8(v5, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5577590()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA978, &qword_1D5652B10);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5577700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55777A0, 0, 0);
}

uint64_t sub_1D55777A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613AF8();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D557A6A8(v5, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5577878()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EEC30, &unk_1D5620CE0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D55779E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5577A88, 0, 0);
}

uint64_t sub_1D5577A88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613D28();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D557B880(v5, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5577B60()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA888, &qword_1D563B8C0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5577CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5577D70, 0, 0);
}

uint64_t sub_1D5577D70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5614898();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D557C138(v5, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5577E48()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &unk_1EC7F1990, &unk_1D561CEF0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5577FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5578058, 0, 0);
}

uint64_t sub_1D5578058()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for UploadedVideo(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557D3C8(v6, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5578130()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA968, &unk_1D561D1F0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D55782A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5578340, 0, 0);
}

uint64_t sub_1D5578340()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for UploadedAudio(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557DD0C(v6, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5578418()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA970, &unk_1D5652B00);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5578588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5578628, 0, 0);
}

uint64_t sub_1D5578628()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for TVSeason(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557E650(v6, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5578700()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA878, &unk_1D5634790);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5578870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5578910, 0, 0);
}

uint64_t sub_1D5578910()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for TVEpisode(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557EF1C(v6, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D55789E8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA880, &unk_1D561CEE0);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5578B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5578BF8, 0, 0);
}

uint64_t sub_1D5578BF8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    v1 = OUTLINED_FUNCTION_147();
    v2 = type metadata accessor for MusicMovie(v1);
    OUTLINED_FUNCTION_64_7(v2);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_87_11(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_22_80(v4);

    return sub_1D557F7E8(v6, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D5578CD0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA890, &qword_1D5672D40);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1D5578E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5578EE0, 0, 0);
}

uint64_t sub_1D5578EE0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_185_5(Strong))
  {
    OUTLINED_FUNCTION_147();
    v1 = sub_1D5613EF8();
    OUTLINED_FUNCTION_64_7(v1);
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_87_11(v2);
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_22_80(v3);

    return sub_1D55800B4(v5, 1);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D5578FB8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1D4E50004(v6, &qword_1EC7EA8A8, &qword_1D561CF10);

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_153_1();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

void sub_1D5579238()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_352_1();
  v0(0);
  OUTLINED_FUNCTION_178_7();
  OUTLINED_FUNCTION_331_2();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_222();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D55793CC(void (*a1)(void))
{
  a1(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v2;
}

uint64_t sub_1D5579468(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_1D560EEA8();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 192) = sub_1D56153B8();
  v8 = sub_1D5615338();
  *(v3 + 200) = v8;
  *(v3 + 208) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D5579674, v8, v7);
}

uint64_t sub_1D5579674()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_95_19();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    v6 = OUTLINED_FUNCTION_94_23();
    v7(v6);
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA990, &qword_1D561D220);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_166_7();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_107_15();
  (*(v11 + 104))(v10, *MEMORY[0x1E6975100]);
  v12 = OUTLINED_FUNCTION_77_24();
  v13(v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 216) = v14;
  *v14 = v15;
  v14[1] = sub_1D55797D4;
  OUTLINED_FUNCTION_106_17();
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D55797D4()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5579994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();

  v12 = OUTLINED_FUNCTION_351_2();
  v13(v12);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1D5579DE8(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_1D5613838();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 192) = sub_1D56153B8();
  v8 = sub_1D5615338();
  *(v3 + 200) = v8;
  *(v3 + 208) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D5579FF4, v8, v7);
}

uint64_t sub_1D5579FF4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_95_19();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    v6 = OUTLINED_FUNCTION_94_23();
    v7(v6);
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA978, &qword_1D5652B10);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_166_7();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_107_15();
  (*(v11 + 104))(v10, *MEMORY[0x1E6975100]);
  v12 = OUTLINED_FUNCTION_77_24();
  v13(v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 216) = v14;
  *v14 = v15;
  v14[1] = sub_1D557A154;
  OUTLINED_FUNCTION_106_17();
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D557A154()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557A6A8(uint64_t a1, char a2)
{
  *(v3 + 304) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560C998();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  *(v3 + 112) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_1D560DF28();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  v7 = sub_1D560DF38();
  *(v3 + 168) = v7;
  *(v3 + 176) = *(v7 - 8);
  *(v3 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  *(v3 + 192) = swift_task_alloc();
  v8 = sub_1D5613AF8();
  *(v3 + 200) = v8;
  *(v3 + 208) = *(v8 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 248) = sub_1D56153B8();
  v10 = sub_1D5615338();
  *(v3 + 256) = v10;
  *(v3 + 264) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D557A9B0, v10, v9);
}

uint64_t sub_1D557A9B0()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  sub_1D4E69970(v0[9], v0[24], &qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_16_4();
  if (v1)
  {
    OUTLINED_FUNCTION_15_21(v0[10] + *(*v0[10] + 144));
    v2 = OUTLINED_FUNCTION_94_23();
    v3(v2);
    OUTLINED_FUNCTION_34_66();
    if (!v1)
    {
      sub_1D4E50004(v0[24], &qword_1EC7EEC30, &unk_1D5620CE0);
    }
  }

  else
  {
    (*(v0[26] + 32))(v0[30], v0[24], v0[25]);
  }

  (*(v0[22] + 104))(v0[23], *MEMORY[0x1E6975100], v0[21]);
  v4 = OUTLINED_FUNCTION_77_24();
  v5(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[34] = v6;
  *v6 = v7;
  v6[1] = sub_1D557AB44;
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCF270](v8, v9, v10, v11, v12);
}

uint64_t sub_1D557AB44()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 280) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557B224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v26 = v14[17];
  v27 = v14[14];
  v28 = v14[13];

  v15 = OUTLINED_FUNCTION_351_2();
  v16(v15);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_89();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, a12, a13, a14);
}

uint64_t sub_1D557B308()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_44();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_24_1();
  *v4 = v3;
  *(v6 + 296) = v5;

  v7 = OUTLINED_FUNCTION_128();
  v8(v7);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D557B880(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_1D5613D28();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 192) = sub_1D56153B8();
  v8 = sub_1D5615338();
  *(v3 + 200) = v8;
  *(v3 + 208) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D557BA8C, v8, v7);
}

uint64_t sub_1D557BA8C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_95_19();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    v6 = OUTLINED_FUNCTION_94_23();
    v7(v6);
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA888, &qword_1D563B8C0);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_166_7();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_107_15();
  (*(v11 + 104))(v10, *MEMORY[0x1E6975100]);
  v12 = OUTLINED_FUNCTION_77_24();
  v13(v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 216) = v14;
  *v14 = v15;
  v14[1] = sub_1D557BBEC;
  OUTLINED_FUNCTION_106_17();
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D557BBEC()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557C138(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v4 = sub_1D560C998();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  *(v3 + 144) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  v6 = sub_1D560DF28();
  *(v3 + 176) = v6;
  *(v3 + 184) = *(v6 - 8);
  *(v3 + 192) = swift_task_alloc();
  v7 = sub_1D560DF38();
  *(v3 + 200) = v7;
  *(v3 + 208) = *(v7 - 8);
  *(v3 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  *(v3 + 224) = swift_task_alloc();
  v8 = sub_1D5614898();
  *(v3 + 232) = v8;
  *(v3 + 240) = *(v8 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 280) = sub_1D56153B8();
  v10 = sub_1D5615338();
  *(v3 + 288) = v10;
  *(v3 + 296) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D557C440, v10, v9);
}

uint64_t sub_1D557C440()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  sub_1D4E69970(v0[13], v0[28], &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_16_4();
  if (v1)
  {
    OUTLINED_FUNCTION_15_21(v0[14] + *(*v0[14] + 144));
    v2 = OUTLINED_FUNCTION_94_23();
    v3(v2);
    OUTLINED_FUNCTION_34_66();
    if (!v1)
    {
      sub_1D4E50004(v0[28], &unk_1EC7F1990, &unk_1D561CEF0);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[34], v0[28], v0[29]);
  }

  (*(v0[26] + 104))(v0[27], *MEMORY[0x1E6975100], v0[25]);
  v4 = OUTLINED_FUNCTION_77_24();
  v5(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[38] = v6;
  *v6 = v7;
  v6[1] = sub_1D557C5D4;
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCF270](v8, v9, v10, v11, v12);
}

uint64_t sub_1D557C5D4()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 312) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557C794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v26 = v14[21];
  v27 = v14[18];
  v28 = v14[17];

  v15 = OUTLINED_FUNCTION_351_2();
  v16(v15);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, a12, a13, a14);
}

uint64_t sub_1D557CE4C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_44();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_24_1();
  *v4 = v3;
  *(v6 + 328) = v5;

  v7 = OUTLINED_FUNCTION_128();
  v8(v7);
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D557D3C8(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = type metadata accessor for UploadedVideo(0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 184) = sub_1D56153B8();
  v7 = sub_1D5615338();
  *(v3 + 192) = v7;
  *(v3 + 200) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D557D5A8, v7, v6);
}

uint64_t sub_1D557D5A8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA968, &unk_1D561D1F0);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_30();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    OUTLINED_FUNCTION_26_82();
    OUTLINED_FUNCTION_400_0();
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA968, &unk_1D561D1F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_365_2();
    OUTLINED_FUNCTION_26_82();
    sub_1D55AC9B8(v6, v7);
  }

  v8 = OUTLINED_FUNCTION_107_15();
  (*(v9 + 104))(v8, *MEMORY[0x1E6975100]);
  v10 = OUTLINED_FUNCTION_77_24();
  v11(v10);
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_372_1(v12);
  sub_1D55ACD00(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  OUTLINED_FUNCTION_72_31();
  *v0 = v13;
  OUTLINED_FUNCTION_56_40();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCF270](v14, v15, v16, v17, v18);
}

uint64_t sub_1D557D718()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557D8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_138_12();
  OUTLINED_FUNCTION_82_27();
  sub_1D55AC6B4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D557DD0C(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = type metadata accessor for UploadedAudio(0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 184) = sub_1D56153B8();
  v7 = sub_1D5615338();
  *(v3 + 192) = v7;
  *(v3 + 200) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D557DEEC, v7, v6);
}

uint64_t sub_1D557DEEC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA970, &unk_1D5652B00);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_30();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    OUTLINED_FUNCTION_25_71();
    OUTLINED_FUNCTION_400_0();
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA970, &unk_1D5652B00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_365_2();
    OUTLINED_FUNCTION_25_71();
    sub_1D55AC9B8(v6, v7);
  }

  v8 = OUTLINED_FUNCTION_107_15();
  (*(v9 + 104))(v8, *MEMORY[0x1E6975100]);
  v10 = OUTLINED_FUNCTION_77_24();
  v11(v10);
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_372_1(v12);
  sub_1D55ACD00(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_72_31();
  *v0 = v13;
  OUTLINED_FUNCTION_56_40();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCF270](v14, v15, v16, v17, v18);
}

uint64_t sub_1D557E05C()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_138_12();
  OUTLINED_FUNCTION_80_16();
  sub_1D55AC6B4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D557E650(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = type metadata accessor for TVSeason(0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 184) = sub_1D56153B8();
  v7 = sub_1D5615338();
  *(v3 + 192) = v7;
  *(v3 + 200) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D557E830, v7, v6);
}

uint64_t sub_1D557E830()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_30();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    OUTLINED_FUNCTION_4_160();
    OUTLINED_FUNCTION_400_0();
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA878, &unk_1D5634790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_365_2();
    OUTLINED_FUNCTION_4_160();
    sub_1D55AC9B8(v6, v7);
  }

  v8 = OUTLINED_FUNCTION_107_15();
  (*(v9 + 104))(v8, *MEMORY[0x1E6975100]);
  v10 = OUTLINED_FUNCTION_77_24();
  v11(v10);
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_372_1(v12);
  OUTLINED_FUNCTION_89_22();
  sub_1D55ACD00(v13, v14, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_72_31();
  *v0 = v15;
  OUTLINED_FUNCTION_56_40();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D557E990()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_138_12();
  OUTLINED_FUNCTION_8_137();
  sub_1D55AC6B4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D557EF1C(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = type metadata accessor for TVEpisode(0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 184) = sub_1D56153B8();
  v7 = sub_1D5615338();
  *(v3 + 192) = v7;
  *(v3 + 200) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D557F0FC, v7, v6);
}

uint64_t sub_1D557F0FC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_30();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    OUTLINED_FUNCTION_3_205();
    OUTLINED_FUNCTION_400_0();
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA880, &unk_1D561CEE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_365_2();
    OUTLINED_FUNCTION_3_205();
    sub_1D55AC9B8(v6, v7);
  }

  v8 = OUTLINED_FUNCTION_107_15();
  (*(v9 + 104))(v8, *MEMORY[0x1E6975100]);
  v10 = OUTLINED_FUNCTION_77_24();
  v11(v10);
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_372_1(v12);
  OUTLINED_FUNCTION_87_23();
  sub_1D55ACD00(v13, v14, &protocol conformance descriptor for TVEpisode);
  OUTLINED_FUNCTION_72_31();
  *v0 = v15;
  OUTLINED_FUNCTION_56_40();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D557F25C()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_138_12();
  OUTLINED_FUNCTION_7_148();
  sub_1D55AC6B4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D557F7E8(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = type metadata accessor for MusicMovie(0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 184) = sub_1D56153B8();
  v7 = sub_1D5615338();
  *(v3 + 192) = v7;
  *(v3 + 200) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D557F9C8, v7, v6);
}

uint64_t sub_1D557F9C8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_30();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    OUTLINED_FUNCTION_2_199();
    OUTLINED_FUNCTION_400_0();
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA890, &qword_1D5672D40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_365_2();
    OUTLINED_FUNCTION_2_199();
    sub_1D55AC9B8(v6, v7);
  }

  v8 = OUTLINED_FUNCTION_107_15();
  (*(v9 + 104))(v8, *MEMORY[0x1E6975100]);
  v10 = OUTLINED_FUNCTION_77_24();
  v11(v10);
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_372_1(v12);
  OUTLINED_FUNCTION_86_27();
  sub_1D55ACD00(v13, v14, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_72_31();
  *v0 = v15;
  OUTLINED_FUNCTION_56_40();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D557FB28()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D557FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_138_12();
  OUTLINED_FUNCTION_6_159();
  sub_1D55AC6B4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D55800B4(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_1D560DF28();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_1D560DF38();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_1D5613EF8();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  sub_1D56153C8();
  *(v3 + 192) = sub_1D56153B8();
  v8 = sub_1D5615338();
  *(v3 + 200) = v8;
  *(v3 + 208) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D55802C0, v8, v7);
}

uint64_t sub_1D55802C0()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v3 = OUTLINED_FUNCTION_266_2();
  sub_1D4E69970(v3, v0, &qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_16_4();
  if (v4)
  {
    OUTLINED_FUNCTION_95_19();
    OUTLINED_FUNCTION_15_21(v2 + *(v5 + 144));
    v6 = OUTLINED_FUNCTION_94_23();
    v7(v6);
    OUTLINED_FUNCTION_34_66();
    if (!v4)
    {
      sub_1D4E50004(*(v1 + 136), &qword_1EC7EA8A8, &qword_1D561CF10);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_166_7();
    v9(v8);
  }

  v10 = OUTLINED_FUNCTION_107_15();
  (*(v11 + 104))(v10, *MEMORY[0x1E6975100]);
  v12 = OUTLINED_FUNCTION_77_24();
  v13(v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 216) = v14;
  *v14 = v15;
  v14[1] = sub_1D5580420;
  OUTLINED_FUNCTION_106_17();
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEDCF270](v16, v17, v18, v19, v20);
}

uint64_t sub_1D5580420()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  v4 = OUTLINED_FUNCTION_81_29();
  v5(v4);
  v6 = OUTLINED_FUNCTION_83_27();
  v7(v6);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1D5580968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = v4;
  v8 = a3();
  OUTLINED_FUNCTION_416_0();
  v9 = OUTLINED_FUNCTION_8_111();
  [v9 v10];
  if (sub_1D4E62628(a2))
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_91_0();
    v11 = sub_1D5615158();
    v12 = OUTLINED_FUNCTION_8_111();
    [v12 v13];

    OUTLINED_FUNCTION_416_0();
    OUTLINED_FUNCTION_91_0();
    v14 = sub_1D5615158();
    v15 = OUTLINED_FUNCTION_8_111();
    [v15 v16];
  }

  else
  {
    [*(v6 + *(*v6 + 160)) setIdentifyingModelObject_];
  }

  v17 = *(*v6 + 152);
  v18 = *(v6 + v17);
  *(v6 + v17) = v8;
  v8;

  a4(2);
  OUTLINED_FUNCTION_451();
}

void sub_1D5580AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = v5;
  sub_1D556A5AC();
  v10 = v9;
  OUTLINED_FUNCTION_416_0();
  v11 = OUTLINED_FUNCTION_8_111();
  [v11 v12];
  if (sub_1D4E62628(a2))
  {
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_91_0();
    v13 = sub_1D5615158();
    v14 = OUTLINED_FUNCTION_8_111();
    [v14 v15];

    OUTLINED_FUNCTION_416_0();
    OUTLINED_FUNCTION_91_0();
    v16 = sub_1D5615158();
    v17 = OUTLINED_FUNCTION_8_111();
    [v17 v18];
  }

  else
  {
    [*(v7 + *(*v7 + 160)) setIdentifyingModelObject_];
  }

  v19 = *(*v7 + 152);
  v20 = *(v7 + v19);
  *(v7 + v19) = v10;
  v10;

  a5(2);
  OUTLINED_FUNCTION_451();
}

void sub_1D5580C44()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v12 = v11;
  if ([objc_opt_self() isMainThread])
  {
    v9 = v9(0);
    v42 = v9;
    v43 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v40);
    OUTLINED_FUNCTION_36_57();
    v7 = *(v14 + 136);
    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    OUTLINED_FUNCTION_24_0();
    (*(v15 + 16))(boxed_opaque_existential_0, v10 + v7, v9);
    OUTLINED_FUNCTION_36_57();

    sub_1D518AB68(v12, &v40, &v38);
    v1 = v38;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
LABEL_3:
  v16 = sub_1D560C758();
  __swift_project_value_buffer(v16, qword_1EDD76AA8);
  OUTLINED_FUNCTION_430_0();
  swift_retain_n();
  v17 = sub_1D560C738();
  v18 = sub_1D56156E8();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_86_4();
    v38 = OUTLINED_FUNCTION_198_7();
    *v3 = 136446978;
    v19 = sub_1D4F636B4();
    v21 = v20;
    sub_1D4E6835C(v19, v20, &v38);
    OUTLINED_FUNCTION_38_50();

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    if (v1 >> 6)
    {
      if (v1 >> 6 == 1)
      {
        OUTLINED_FUNCTION_279_3();
        sub_1D502EC78(v1 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v22 = v40;
        v21 = v41;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_433_0();
      }
    }

    else
    {
      if (v1)
      {
        v22 = 0x656C62616464612ELL;
      }

      else
      {
        v22 = 0xD000000000000028;
      }

      if (v1)
      {
        v21 = 0xED0000296C696E28;
      }

      else
      {
        v21 = 0x80000001D567FDB0;
      }
    }

    sub_1D4E6835C(v22, v21, &v38);
    OUTLINED_FUNCTION_38_50();

    *(v3 + 14) = v7;
    *(v3 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_112_16();
    *(v25 - 16) = v9;
    *(v25 - 8) = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_112_16();
    *(v27 - 16) = v9;
    *(v27 - 8) = v5;
    swift_getKeyPath();
    OUTLINED_FUNCTION_387();

    v28 = v39;
    v29 = v39 >> 6;
    if (v29)
    {
      if (v29 == 1)
      {
        OUTLINED_FUNCTION_279_3();
        sub_1D502EC78(v28 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v30 = v40;
        KeyPath = v41;
      }

      else
      {

        v30 = OUTLINED_FUNCTION_433_0();
      }
    }

    else
    {

      if (v28)
      {
        v30 = 0x656C62616464612ELL;
      }

      else
      {
        v30 = 0xD000000000000028;
      }

      if (v28)
      {
        KeyPath = 0xED0000296C696E28;
      }

      else
      {
        KeyPath = 0x80000001D567FDB0;
      }
    }

    sub_1D4E6835C(v30, KeyPath, &v38);
    OUTLINED_FUNCTION_38_50();

    *(v3 + 24) = v28;
    *(v3 + 32) = 2082;
    v31 = sub_1D4F5E0F8();
    sub_1D4E6835C(v31, v32, &v38);
    OUTLINED_FUNCTION_38_50();

    *(v3 + 34) = v28;
    _os_log_impl(&dword_1D4E3F000, v17, v18, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v3, 0x2Au);
    OUTLINED_FUNCTION_319_2(v33, v34, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_37_46();
    OUTLINED_FUNCTION_113_1();
  }

  else
  {

    OUTLINED_FUNCTION_430_0();
  }

  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_112_16();
  *(v35 - 16) = v9;
  *(v35 - 8) = v5;
  v36 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_112_16();
  *(v37 - 16) = v9;
  *(v37 - 8) = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_387();

  LOBYTE(v38) = v40;
  v39 = v1;
  if ((static MusicLibrary.AddStatus.== infix(_:_:)(&v38, &v39) & 1) == 0)
  {
    sub_1D55948B8();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D558111C(uint64_t a1)
{
  v3 = v1;
  if ([objc_opt_self() isMainThread])
  {
    v34 = type metadata accessor for UploadedVideo(0);
    v35 = sub_1D55ACD00(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    v5 = __swift_allocate_boxed_opaque_existential_0(&v32);
    v6 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v6, v5);

    sub_1D518AB68(a1, &v32, &v30);
    v2 = v30;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1D560C758();
  __swift_project_value_buffer(v7, qword_1EDD76AA8);
  swift_retain_n();
  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446978;
    v12 = sub_1D4F636B4();
    v14 = sub_1D4E6835C(v12, v13, &v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v2 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v15 = v32;
        v16 = v33;
      }

      else
      {
        v16 = 0xE600000000000000;
        v15 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v2)
      {
        v15 = 0x656C62616464612ELL;
      }

      else
      {
        v15 = 0xD000000000000028;
      }

      if (v2)
      {
        v16 = 0xED0000296C696E28;
      }

      else
      {
        v16 = 0x80000001D567FDB0;
      }
    }

    v18 = sub_1D4E6835C(v15, v16, &v30);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v19);
    sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v21 = v31;
    v22 = v31 >> 6;
    if (v22)
    {
      if (v22 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v21 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v23 = v32;
        v24 = v33;
      }

      else
      {

        v24 = 0xE600000000000000;
        v23 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v21)
      {
        v23 = 0x656C62616464612ELL;
      }

      else
      {
        v23 = 0xD000000000000028;
      }

      if (v21)
      {
        v24 = 0xED0000296C696E28;
      }

      else
      {
        v24 = 0x80000001D567FDB0;
      }
    }

    v25 = sub_1D4E6835C(v23, v24, &v30);

    *(v10 + 24) = v25;
    *(v10 + 32) = 2082;
    v26 = sub_1D4F5E0F8();
    v28 = sub_1D4E6835C(v26, v27, &v30);

    *(v10 + 34) = v28;
    _os_log_impl(&dword_1D4E3F000, v8, v9, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v11, -1, -1);
    MEMORY[0x1DA6ED200](v10, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v30) = v32;
  v31 = v2;
  if ((static MusicLibrary.AddStatus.== infix(_:_:)(&v30, &v31) & 1) == 0)
  {
    sub_1D556C1E0();
  }
}

void sub_1D55817C0(uint64_t a1)
{
  v3 = v1;
  if ([objc_opt_self() isMainThread])
  {
    v34 = type metadata accessor for UploadedAudio(0);
    v35 = sub_1D55ACD00(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    v5 = __swift_allocate_boxed_opaque_existential_0(&v32);
    v6 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v6, v5);

    sub_1D518AB68(a1, &v32, &v30);
    v2 = v30;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1D560C758();
  __swift_project_value_buffer(v7, qword_1EDD76AA8);
  swift_retain_n();
  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446978;
    v12 = sub_1D4F636B4();
    v14 = sub_1D4E6835C(v12, v13, &v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v2 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v15 = v32;
        v16 = v33;
      }

      else
      {
        v16 = 0xE600000000000000;
        v15 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v2)
      {
        v15 = 0x656C62616464612ELL;
      }

      else
      {
        v15 = 0xD000000000000028;
      }

      if (v2)
      {
        v16 = 0xED0000296C696E28;
      }

      else
      {
        v16 = 0x80000001D567FDB0;
      }
    }

    v18 = sub_1D4E6835C(v15, v16, &v30);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v19);
    sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v21 = v31;
    v22 = v31 >> 6;
    if (v22)
    {
      if (v22 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v21 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v23 = v32;
        v24 = v33;
      }

      else
      {

        v24 = 0xE600000000000000;
        v23 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v21)
      {
        v23 = 0x656C62616464612ELL;
      }

      else
      {
        v23 = 0xD000000000000028;
      }

      if (v21)
      {
        v24 = 0xED0000296C696E28;
      }

      else
      {
        v24 = 0x80000001D567FDB0;
      }
    }

    v25 = sub_1D4E6835C(v23, v24, &v30);

    *(v10 + 24) = v25;
    *(v10 + 32) = 2082;
    v26 = sub_1D4F5E0F8();
    v28 = sub_1D4E6835C(v26, v27, &v30);

    *(v10 + 34) = v28;
    _os_log_impl(&dword_1D4E3F000, v8, v9, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v11, -1, -1);
    MEMORY[0x1DA6ED200](v10, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v30) = v32;
  v31 = v2;
  if ((static MusicLibrary.AddStatus.== infix(_:_:)(&v30, &v31) & 1) == 0)
  {
    sub_1D556C1E0();
  }
}

void sub_1D5581E64(uint64_t a1)
{
  v3 = v1;
  if ([objc_opt_self() isMainThread])
  {
    v34 = type metadata accessor for TVSeason(0);
    v35 = sub_1D55ACD00(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    v5 = __swift_allocate_boxed_opaque_existential_0(&v32);
    v6 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v6, v5);

    sub_1D518AB68(a1, &v32, &v30);
    v2 = v30;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1D560C758();
  __swift_project_value_buffer(v7, qword_1EDD76AA8);
  swift_retain_n();
  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446978;
    v12 = sub_1D4F636B4();
    v14 = sub_1D4E6835C(v12, v13, &v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v2 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v15 = v32;
        v16 = v33;
      }

      else
      {
        v16 = 0xE600000000000000;
        v15 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v2)
      {
        v15 = 0x656C62616464612ELL;
      }

      else
      {
        v15 = 0xD000000000000028;
      }

      if (v2)
      {
        v16 = 0xED0000296C696E28;
      }

      else
      {
        v16 = 0x80000001D567FDB0;
      }
    }

    v18 = sub_1D4E6835C(v15, v16, &v30);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v19);
    sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v21 = v31;
    v22 = v31 >> 6;
    if (v22)
    {
      if (v22 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v21 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v23 = v32;
        v24 = v33;
      }

      else
      {

        v24 = 0xE600000000000000;
        v23 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v21)
      {
        v23 = 0x656C62616464612ELL;
      }

      else
      {
        v23 = 0xD000000000000028;
      }

      if (v21)
      {
        v24 = 0xED0000296C696E28;
      }

      else
      {
        v24 = 0x80000001D567FDB0;
      }
    }

    v25 = sub_1D4E6835C(v23, v24, &v30);

    *(v10 + 24) = v25;
    *(v10 + 32) = 2082;
    v26 = sub_1D4F5E0F8();
    v28 = sub_1D4E6835C(v26, v27, &v30);

    *(v10 + 34) = v28;
    _os_log_impl(&dword_1D4E3F000, v8, v9, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v11, -1, -1);
    MEMORY[0x1DA6ED200](v10, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v30) = v32;
  v31 = v2;
  if ((static MusicLibrary.AddStatus.== infix(_:_:)(&v30, &v31) & 1) == 0)
  {
    sub_1D556C1E0();
  }
}

void sub_1D5582508(uint64_t a1)
{
  v3 = v1;
  if ([objc_opt_self() isMainThread])
  {
    v34 = type metadata accessor for TVEpisode(0);
    v35 = sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v5 = __swift_allocate_boxed_opaque_existential_0(&v32);
    v6 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v6, v5);

    sub_1D518AB68(a1, &v32, &v30);
    v2 = v30;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1D560C758();
  __swift_project_value_buffer(v7, qword_1EDD76AA8);
  swift_retain_n();
  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446978;
    v12 = sub_1D4F636B4();
    v14 = sub_1D4E6835C(v12, v13, &v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v2 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v15 = v32;
        v16 = v33;
      }

      else
      {
        v16 = 0xE600000000000000;
        v15 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v2)
      {
        v15 = 0x656C62616464612ELL;
      }

      else
      {
        v15 = 0xD000000000000028;
      }

      if (v2)
      {
        v16 = 0xED0000296C696E28;
      }

      else
      {
        v16 = 0x80000001D567FDB0;
      }
    }

    v18 = sub_1D4E6835C(v15, v16, &v30);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v19);
    sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v21 = v31;
    v22 = v31 >> 6;
    if (v22)
    {
      if (v22 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v21 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v23 = v32;
        v24 = v33;
      }

      else
      {

        v24 = 0xE600000000000000;
        v23 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v21)
      {
        v23 = 0x656C62616464612ELL;
      }

      else
      {
        v23 = 0xD000000000000028;
      }

      if (v21)
      {
        v24 = 0xED0000296C696E28;
      }

      else
      {
        v24 = 0x80000001D567FDB0;
      }
    }

    v25 = sub_1D4E6835C(v23, v24, &v30);

    *(v10 + 24) = v25;
    *(v10 + 32) = 2082;
    v26 = sub_1D4F5E0F8();
    v28 = sub_1D4E6835C(v26, v27, &v30);

    *(v10 + 34) = v28;
    _os_log_impl(&dword_1D4E3F000, v8, v9, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v11, -1, -1);
    MEMORY[0x1DA6ED200](v10, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v30) = v32;
  v31 = v2;
  if ((static MusicLibrary.AddStatus.== infix(_:_:)(&v30, &v31) & 1) == 0)
  {
    sub_1D556C1E0();
  }
}

void sub_1D5582BAC(uint64_t a1)
{
  v3 = v1;
  if ([objc_opt_self() isMainThread])
  {
    v34 = type metadata accessor for MusicMovie(0);
    v35 = sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v5 = __swift_allocate_boxed_opaque_existential_0(&v32);
    v6 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v6, v5);

    sub_1D518AB68(a1, &v32, &v30);
    v2 = v30;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1D560C758();
  __swift_project_value_buffer(v7, qword_1EDD76AA8);
  swift_retain_n();
  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446978;
    v12 = sub_1D4F636B4();
    v14 = sub_1D4E6835C(v12, v13, &v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v2 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v15 = v32;
        v16 = v33;
      }

      else
      {
        v16 = 0xE600000000000000;
        v15 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v2)
      {
        v15 = 0x656C62616464612ELL;
      }

      else
      {
        v15 = 0xD000000000000028;
      }

      if (v2)
      {
        v16 = 0xED0000296C696E28;
      }

      else
      {
        v16 = 0x80000001D567FDB0;
      }
    }

    v18 = sub_1D4E6835C(v15, v16, &v30);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v19);
    sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v21 = v31;
    v22 = v31 >> 6;
    if (v22)
    {
      if (v22 == 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        MEMORY[0x1DA6EAC70](0x62616464616E752ELL, 0xEB0000000028656CLL);
        sub_1D502EC78(v21 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v23 = v32;
        v24 = v33;
      }

      else
      {

        v24 = 0xE600000000000000;
        v23 = 0x64656464612ELL;
      }
    }

    else
    {

      if (v21)
      {
        v23 = 0x656C62616464612ELL;
      }

      else
      {
        v23 = 0xD000000000000028;
      }

      if (v21)
      {
        v24 = 0xED0000296C696E28;
      }

      else
      {
        v24 = 0x80000001D567FDB0;
      }
    }

    v25 = sub_1D4E6835C(v23, v24, &v30);

    *(v10 + 24) = v25;
    *(v10 + 32) = 2082;
    v26 = sub_1D4F5E0F8();
    v28 = sub_1D4E6835C(v26, v27, &v30);

    *(v10 + 34) = v28;
    _os_log_impl(&dword_1D4E3F000, v8, v9, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v11, -1, -1);
    MEMORY[0x1DA6ED200](v10, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v17);
  sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  swift_getKeyPath();
  sub_1D560C8F8();

  LOBYTE(v30) = v32;
  v31 = v2;
  if ((static MusicLibrary.AddStatus.== infix(_:_:)(&v30, &v31) & 1) == 0)
  {
    sub_1D556C1E0();
  }
}

uint64_t sub_1D5583250()
{
  OUTLINED_FUNCTION_272_3();
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([objc_opt_self() isMainThread])
  {
    v3 = v5(0);
    v60 = v3;
    v61 = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v57);
    OUTLINED_FUNCTION_36_57();
    v15 = *(v14 + 136);
    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    OUTLINED_FUNCTION_24_0();
    (*(v16 + 16))(boxed_opaque_existential_0, v6 + v15, v3);
    OUTLINED_FUNCTION_36_57();

    v55 = v12;
    v17 = OUTLINED_FUNCTION_176();
    sub_1D50A911C(v17, v18, v19, v20, v8);
    v12 = v62;
    v56 = v63;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
LABEL_3:
  v21 = sub_1D560C758();
  __swift_project_value_buffer(v21, qword_1EDD76AA8);
  OUTLINED_FUNCTION_430_0();
  swift_retain_n();
  v22 = sub_1D560C738();
  v23 = sub_1D56156E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_86_4();
    v62 = COERCE_DOUBLE(swift_slowAlloc());
    *v24 = 136446978;
    v25 = sub_1D4F636B4();
    v54 = v10;
    v27 = sub_1D4E6835C(v25, v26, &v62);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v57 = v12;
    LOBYTE(v58) = v56;
    v28 = MusicLibrary.DownloadStatus.description.getter();
    v30 = sub_1D4E6835C(v28, v29, &v62);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v31);
    OUTLINED_FUNCTION_112_16();
    *(v32 - 16) = v3;
    *(v32 - 8) = v0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_112_16();
    *(v34 - 16) = v3;
    *(v34 - 8) = v0;
    swift_getKeyPath();
    sub_1D560C8F8();

    v35 = MusicLibrary.DownloadStatus.description.getter();
    v37 = v36;

    v38 = sub_1D4E6835C(v35, v37, &v62);

    *(v24 + 24) = v38;
    *(v24 + 32) = 2082;
    v57 = v55;
    v58 = v54;
    v59 = v8;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v39 = sub_1D5614DB8();
    v41 = sub_1D4E6835C(v39, v40, &v62);

    *(v24 + 34) = v41;
    _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v24, 0x2Au);
    OUTLINED_FUNCTION_319_2(v42, v43, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_430_0();
  }

  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_112_16();
  *(v45 - 16) = v3;
  *(v45 - 8) = v0;
  v46 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_112_16();
  *(v47 - 16) = v3;
  *(v47 - 8) = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_387();

  if (v58)
  {
    if (v58 == 1)
    {
      if (v56 != 1 || *&v57 != *&v12)
      {
        return sub_1D5594928();
      }
    }

    else
    {
      switch(*&v57)
      {
        case 1:
          if (v56 != 2 || *&v12 != 1)
          {
            return sub_1D5594928();
          }

          break;
        case 2:
          if (v56 != 2 || *&v12 != 2)
          {
            return sub_1D5594928();
          }

          break;
        case 3:
          if (v56 != 2 || *&v12 != 3)
          {
            return sub_1D5594928();
          }

          break;
        case 4:
          if (v56 != 2 || *&v12 != 4)
          {
            return sub_1D5594928();
          }

          break;
        default:
          if (v56 != 2 || v12 != 0.0)
          {
            return sub_1D5594928();
          }

          break;
      }
    }
  }

  else if (v56 || v57 != v12)
  {
    return sub_1D5594928();
  }

  return result;
}

uint64_t sub_1D558374C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  if ([objc_opt_self() isMainThread])
  {
    v44 = type metadata accessor for UploadedVideo(0);
    v45 = sub_1D55ACD00(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    v10 = *(*v5 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v5 + v10, boxed_opaque_existential_0);

    sub_1D50A911C(a1, a2, &v41, &v46, *&a3);
    v40 = v46;
    v4 = v47;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AA8);
  swift_retain_n();
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = *&v39;
    *v14 = 136446978;
    v15 = sub_1D4F636B4();
    v38 = a2;
    v17 = sub_1D4E6835C(v15, v16, &v46);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v41 = v40;
    LOBYTE(v42) = v4;
    v18 = MusicLibrary.DownloadStatus.description.getter();
    v20 = sub_1D4E6835C(v18, v19, &v46);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v21);
    sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v23 = MusicLibrary.DownloadStatus.description.getter();
    v25 = v24;

    v26 = sub_1D4E6835C(v23, v25, &v46);

    *(v14 + 24) = v26;
    *(v14 + 32) = 2082;
    v41 = *&a1;
    v42 = v38;
    v43 = a3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v27 = sub_1D5614DB8();
    v29 = sub_1D4E6835C(v27, v28, &v46);

    *(v14 + 34) = v29;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v39, -1, -1);
    MEMORY[0x1DA6ED200](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v30);
  sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v31 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v31);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v42)
  {
    if (v42 == 1)
    {
      if (v4 != 1 || *&v41 != *&v40)
      {
        return sub_1D556C258();
      }
    }

    else
    {
      switch(*&v41)
      {
        case 1:
          if (v4 != 2 || *&v40 != 1)
          {
            return sub_1D556C258();
          }

          break;
        case 2:
          if (v4 != 2 || *&v40 != 2)
          {
            return sub_1D556C258();
          }

          break;
        case 3:
          if (v4 != 2 || *&v40 != 3)
          {
            return sub_1D556C258();
          }

          break;
        case 4:
          if (v4 != 2 || *&v40 != 4)
          {
            return sub_1D556C258();
          }

          break;
        default:
          if (v4 != 2 || v40 != 0.0)
          {
            return sub_1D556C258();
          }

          break;
      }
    }
  }

  else if (v4 || v41 != v40)
  {
    return sub_1D556C258();
  }

  return result;
}

uint64_t sub_1D5583D8C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  if ([objc_opt_self() isMainThread])
  {
    v44 = type metadata accessor for UploadedAudio(0);
    v45 = sub_1D55ACD00(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    v10 = *(*v5 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v5 + v10, boxed_opaque_existential_0);

    sub_1D50A911C(a1, a2, &v41, &v46, *&a3);
    v40 = v46;
    v4 = v47;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AA8);
  swift_retain_n();
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = *&v39;
    *v14 = 136446978;
    v15 = sub_1D4F636B4();
    v38 = a2;
    v17 = sub_1D4E6835C(v15, v16, &v46);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v41 = v40;
    LOBYTE(v42) = v4;
    v18 = MusicLibrary.DownloadStatus.description.getter();
    v20 = sub_1D4E6835C(v18, v19, &v46);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v21);
    sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v23 = MusicLibrary.DownloadStatus.description.getter();
    v25 = v24;

    v26 = sub_1D4E6835C(v23, v25, &v46);

    *(v14 + 24) = v26;
    *(v14 + 32) = 2082;
    v41 = *&a1;
    v42 = v38;
    v43 = a3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v27 = sub_1D5614DB8();
    v29 = sub_1D4E6835C(v27, v28, &v46);

    *(v14 + 34) = v29;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v39, -1, -1);
    MEMORY[0x1DA6ED200](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v30);
  sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v31 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v31);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v42)
  {
    if (v42 == 1)
    {
      if (v4 != 1 || *&v41 != *&v40)
      {
        return sub_1D556C258();
      }
    }

    else
    {
      switch(*&v41)
      {
        case 1:
          if (v4 != 2 || *&v40 != 1)
          {
            return sub_1D556C258();
          }

          break;
        case 2:
          if (v4 != 2 || *&v40 != 2)
          {
            return sub_1D556C258();
          }

          break;
        case 3:
          if (v4 != 2 || *&v40 != 3)
          {
            return sub_1D556C258();
          }

          break;
        case 4:
          if (v4 != 2 || *&v40 != 4)
          {
            return sub_1D556C258();
          }

          break;
        default:
          if (v4 != 2 || v40 != 0.0)
          {
            return sub_1D556C258();
          }

          break;
      }
    }
  }

  else if (v4 || v41 != v40)
  {
    return sub_1D556C258();
  }

  return result;
}

uint64_t sub_1D55843CC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  if ([objc_opt_self() isMainThread])
  {
    v44 = type metadata accessor for TVSeason(0);
    v45 = sub_1D55ACD00(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    v10 = *(*v5 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v5 + v10, boxed_opaque_existential_0);

    sub_1D50A911C(a1, a2, &v41, &v46, *&a3);
    v40 = v46;
    v4 = v47;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AA8);
  swift_retain_n();
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = *&v39;
    *v14 = 136446978;
    v15 = sub_1D4F636B4();
    v38 = a2;
    v17 = sub_1D4E6835C(v15, v16, &v46);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v41 = v40;
    LOBYTE(v42) = v4;
    v18 = MusicLibrary.DownloadStatus.description.getter();
    v20 = sub_1D4E6835C(v18, v19, &v46);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v21);
    sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v23 = MusicLibrary.DownloadStatus.description.getter();
    v25 = v24;

    v26 = sub_1D4E6835C(v23, v25, &v46);

    *(v14 + 24) = v26;
    *(v14 + 32) = 2082;
    v41 = *&a1;
    v42 = v38;
    v43 = a3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v27 = sub_1D5614DB8();
    v29 = sub_1D4E6835C(v27, v28, &v46);

    *(v14 + 34) = v29;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v39, -1, -1);
    MEMORY[0x1DA6ED200](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v30);
  sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v31 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v31);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v42)
  {
    if (v42 == 1)
    {
      if (v4 != 1 || *&v41 != *&v40)
      {
        return sub_1D556C258();
      }
    }

    else
    {
      switch(*&v41)
      {
        case 1:
          if (v4 != 2 || *&v40 != 1)
          {
            return sub_1D556C258();
          }

          break;
        case 2:
          if (v4 != 2 || *&v40 != 2)
          {
            return sub_1D556C258();
          }

          break;
        case 3:
          if (v4 != 2 || *&v40 != 3)
          {
            return sub_1D556C258();
          }

          break;
        case 4:
          if (v4 != 2 || *&v40 != 4)
          {
            return sub_1D556C258();
          }

          break;
        default:
          if (v4 != 2 || v40 != 0.0)
          {
            return sub_1D556C258();
          }

          break;
      }
    }
  }

  else if (v4 || v41 != v40)
  {
    return sub_1D556C258();
  }

  return result;
}