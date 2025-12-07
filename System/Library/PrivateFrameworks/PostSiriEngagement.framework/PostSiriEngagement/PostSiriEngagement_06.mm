uint64_t UISessionSignalBuilder.init(siriUISession:index:collector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v10 = type metadata accessor for SiriUISession(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v12 = v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0;
  outlined init with take of SiriUISession(a1, v8);
  v11(v8, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of SiriUISession?(v8, v3 + v9);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a3;
  return v3;
}

uint64_t UISessionSignalBuilder.init(collector:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v5 = v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  *(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a1;
  return v1;
}

uint64_t outlined consume of PSEBiomeEventsSource?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (result)
  {
  }

  return result;
}

uint64_t UISessionSignalBuilder.buildSignalsAndTaskFeatureSets(task:completion:)(void *a1, void (*a2)(void **), uint64_t a3)
{
  v4 = v3;
  v98 = a1;
  v7 = type metadata accessor for ReliabilityCategory();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v94 - v11;
  v99 = 0;
  v13 = type metadata accessor for SiriUISession(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 112))(v15);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of Date?(v12, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    v113 = 0;
    v114 = 0uLL;
    return (a2)(&v113);
  }

  v94[1] = a3;
  v95 = a2;
  v19 = outlined init with take of SiriUISession(v12, v17);
  v20 = (*(*v3 + 160))(&v105, v19);
  if (!v105)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.engagement);
    v113 = 0;
    *&v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(123);
    MEMORY[0x25F8CE090](0xD000000000000078, 0x800000025ED81270);
    v27 = *(v13 + 32);
    v94[0] = v17;
    MEMORY[0x25F8CE090](*&v17[v27], *&v17[v27 + 8]);
    MEMORY[0x25F8CE090](46, 0xE100000000000000);
    v29 = v113;
    v28 = v114;
    v30 = *MEMORY[0x277D615D8];
    v31 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v31 - 8) + 104))(v9, v30, v31);
    v33 = v96;
    v32 = v97;
    (*(v96 + 104))(v9, *MEMORY[0x277D616A8], v97);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v113 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v113);
      _os_log_impl(&dword_25ECEC000, v34, v35, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x25F8CEE50](v37, -1, -1);
      MEMORY[0x25F8CEE50](v36, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v38 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v38, v39);

    (*(v33 + 8))(v9, v32);
    v113 = 0;
    v114 = 0uLL;
    v95(&v113);
    v40 = v94[0];
    return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v40, type metadata accessor for SiriUISession);
  }

  v113 = v105;
  v118 = v110;
  v119 = v111;
  v120 = v112;
  v114 = v106;
  v115 = v107;
  v116 = v108;
  v117 = v109;
  v21 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v22 = (*v98 + 280);
  v23 = *v22;
  v24 = v98;
  if ((*v22)(v20) == 0xD000000000000014 && 0x800000025ED7FA70 == v25)
  {

    goto LABEL_13;
  }

  v97 = v22;
  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_13:
    v42 = v116;
    v43 = v24;
    if (*(v116 + 16))
    {
      type metadata accessor for AppIntentTranscriptSignalFactory();
      swift_allocObject();
      AppIntentTranscriptSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v42, v17, &v100);

      specialized Array.append<A>(contentsOf:)(v44);

      specialized Array.append<A>(contentsOf:)(v45);
    }

    if (*(*(&v116 + 1) + 16) || *(v117 + 16) || *(*(&v117 + 1) + 16) || *(v118 + 16) || *(*(&v118 + 1) + 16) || *(v119 + 16) || *(*(&v119 + 1) + 16) || *(v120 + 16) || *(*(&v120 + 1) + 16))
    {
      type metadata accessor for PhotosSignalFactory();
      swift_allocObject();
      PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(&v113, &v100);

LABEL_25:

      specialized Array.append<A>(contentsOf:)(v46);

      specialized Array.append<A>(contentsOf:)(v47);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v94[0] = v17;
  v59 = *(v114 + 16);
  v43 = v24;
  if (v59)
  {
    v60 = v114;
    v61 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector);
    v100 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v96 = v60;
    v62 = (v60 + 32);
    v63 = (v60 + 32);
    do
    {
      v64 = *v63;
      v63 += 2;
      v65 = v64;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v66 = specialized ContiguousArray._endMutation()();
      --v59;
    }

    while (v59);
    v67 = v100;
    v43 = v98;
    v68 = v23(v66);
    v69 = v99;
    v71 = (*(*v61 + 280))(v67, v68, v70);
    if (v69)
    {

      v99 = 0;
    }

    else
    {
      v72 = v71;
      v99 = 0;

      if (v72)
      {
        v73 = *(v96 + 16);
        v74 = MEMORY[0x277D84F90];
        if (v73)
        {
          v100 = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          do
          {
            v75 = *v62;
            v62 += 2;
            v76 = v75;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v73;
          }

          while (v73);
          v74 = v100;
        }

        (*(*v72 + 96))(&v100, v74, v94[0]);

        specialized Array.append<A>(contentsOf:)(v77);

        specialized Array.append<A>(contentsOf:)(v78);
      }
    }
  }

  v79 = *(&v114 + 1);
  v17 = v94[0];
  if (*(*(&v114 + 1) + 16))
  {
    type metadata accessor for ExtendedAlarmSignalFactory();
    swift_allocObject();
    ExtendedAlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v79, v17, &v100);

    specialized Array.append<A>(contentsOf:)(v80);

    specialized Array.append<A>(contentsOf:)(v81);
  }

  v21 = MEMORY[0x277D84F90];
  if (*(*(&v115 + 1) + 16))
  {
    type metadata accessor for HomeKitAccessoryControlSignalFactory();
    swift_allocObject();
    HomeKitAccessoryControlSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v17, &v100);

    specialized Array.append<A>(contentsOf:)(v82);

    specialized Array.append<A>(contentsOf:)(v83);
  }

  v84 = v113;
  if (v113[2] && ((*(*v4 + 288))(v43) & 1) != 0)
  {
    type metadata accessor for NowPlayingSignalFactory(0);
    v85 = swift_allocObject();
    v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(&outlined read-only object #0 of NowPlayingSignalFactory.init());
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MRPlaybackStateV_SStMd, &_sSo15MRPlaybackStateV_SStMR);
    swift_arrayDestroy();
    *(v85 + 16) = v86;
    v87 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
    v88 = type metadata accessor for Date();
    (*(*(v88 - 8) + 56))(v85 + v87, 1, 1, v88);
    v89 = *(v84 + 16);
    v90 = MEMORY[0x277D84F90];
    if (v89)
    {
      v100 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v91 = (v84 + 32);
      do
      {
        v92 = *v91;
        v91 += 2;
        v93 = v92;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v89;
      }

      while (v89);
      v90 = v100;
      v21 = MEMORY[0x277D84F90];
    }

    NowPlayingSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v90, v17, &v100);

    goto LABEL_25;
  }

LABEL_26:
  v48 = v115;
  v49 = *(v115 + 16);
  if (v49)
  {
    type metadata accessor for AppLaunchSignalFactory();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_25ED7CDB0;
    *(v50 + 32) = 0xD00000000000002BLL;
    *(v50 + 40) = 0x800000025ED80060;
    *(v50 + 48) = 0xD000000000000031;
    *(v50 + 56) = 0x800000025ED80090;
    *(v50 + 64) = 0xD00000000000002DLL;
    *(v50 + 72) = 0x800000025ED800D0;
    v100 = v21;
    specialized ContiguousArray.reserveCapacity(_:)();
    v51 = (v48 + 32);
    do
    {
      v52 = *v51;
      v51 += 2;
      v53 = v52;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v49;
    }

    while (v49);
    outlined destroy of Date?(&v105, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
    AppLaunchSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v100, v17, &v100);

    specialized Array.append<A>(contentsOf:)(v54);

    specialized Array.append<A>(contentsOf:)(v55);
  }

  else
  {
    outlined destroy of Date?(&v105, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  }

  v100 = specialized Array._copyToContiguousArray()(v56);
  v57 = v99;
  specialized MutableCollection<>.sort(by:)(&v100);
  if (!v57)
  {

    v58 = v100;
    v100 = v43;
    v101 = v58;
    v102 = v103;

    v95(&v100);
    outlined consume of PSETask?(v100, v101, v102);
    v40 = v17;
    return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v40, type metadata accessor for SiriUISession);
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x25F8CE500](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x25F8CE500](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t UISessionSignalBuilder.fetchDataStreams(taskIndex:completion:)(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v91 = a3;
  v92 = a2;
  v90 = a1;
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v89 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v81 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v80 = v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v86 = v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v71 - v24;
  v26 = type metadata accessor for SiriUISession(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 112))(v28);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    outlined destroy of Date?(v25, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    return v92(v3);
  }

  outlined init with take of SiriUISession(v25, v30);
  v32 = v7[2];
  v32(v22, v30, v6);
  v78 = *(v26 + 24);
  v85 = v20;
  v33 = v20;
  v34 = v32;
  v35 = v32(v33, &v30[v78], v6);
  v36 = *(*v4 + 136);
  v83 = *v4 + 136;
  v84 = v36;
  v37 = v36(v35);
  v82 = v30;
  if (v37 >> 62)
  {
    v68 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v37 < 0)
    {
      v68 = v37;
    }

    v38 = MEMORY[0x25F8CE500](v68);
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38 < 2)
  {
    goto LABEL_32;
  }

  v40 = v84(v39);
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x25F8CE460](v90, v40);
  }

  else
  {
    if ((v90 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v90)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v41 = *(v40 + 8 * v90 + 32);
  }

  v43 = v86;
  (*(*v41 + 352))(v42);
  v73 = v7[1];
  v74 = v7 + 1;
  v73(v22, v6);
  v76 = v7;
  v77 = v22;
  v44 = v7[4];
  v7 += 4;
  v86 = v44;
  v45 = (v44)(v22, v43, v6);
  v22 = (*v41 + 376);
  v30 = v87;
  v72 = *v22;
  v46 = v72(v45);
  v40 = v84(v46);
  v75 = v32;
  if (!(v40 >> 62))
  {
    v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_39:
  v69 = v40 & 0xFFFFFFFFFFFFFF8;
  if (v40 < 0)
  {
    v69 = v40;
  }

  v47 = MEMORY[0x25F8CE500](v69);
LABEL_12:

  v34 = v90 + 1;
  if (__OFADD__(v90, 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v47 != v34)
  {
    v40 = v84(v40);
    if (!(v40 >> 62))
    {
      v50 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_44:
    v70 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v40 < 0)
    {
      v70 = v40;
    }

    v50 = MEMORY[0x25F8CE500](v70);
LABEL_17:

    if (v34 >= v50)
    {
      v49 = v85;
      v73(v85, v6);

      v34 = v75;
      goto LABEL_30;
    }

    result = v84(v51);
    v71[1] = v7;
    v71[0] = v22;
    if ((result & 0xC000000000000001) == 0)
    {
      if (v34 < 0)
      {
        __break(1u);
      }

      else
      {
        v49 = v85;
        if (v34 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v52 = *(result + 8 * v34 + 32);

LABEL_22:

          v54 = v79;
          v55 = v72(v53);
          v56 = v81;
          (*(*v52 + 352))(v55);
          lazy protocol witness table accessor for type Date and conformance Date();
          LODWORD(v90) = dispatch thunk of static Comparable.>= infix(_:_:)();

          v57 = v73;
          v73(v30, v6);
          v57(v49, v6);
          if (v90)
          {
            v58 = v54;
          }

          else
          {
            v58 = v56;
          }

          if (v90)
          {
            v59 = v56;
          }

          else
          {
            v59 = v54;
          }

          v57(v58, v6);
          v60 = v80;
          v61 = v59;
          v62 = v86;
          (v86)(v80, v61, v6);
          v62(v30, v60, v6);
          v34 = v75;
          goto LABEL_31;
        }
      }

      __break(1u);
      return result;
    }

    v52 = MEMORY[0x25F8CE460](v34, result);
    v49 = v85;
    goto LABEL_22;
  }

  v48 = v73;
  v73(v30, v6);
  v49 = v85;
  v48(v85, v6);
  v34 = v75;
  v75(v30, &v82[v78], v6);
LABEL_30:
  v62 = v86;
LABEL_31:
  v62(v49, v30, v6);
  v7 = v76;
  v22 = v77;
LABEL_32:
  v63 = v22;
  v64 = v89;
  (v34)(v89, v22, v6);
  v65 = v85;
  (v34)(v64 + *(Configuration + 20), v85, v6);
  v66 = *(**(v4 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 304);

  v66(v64, partial apply for closure #1 in UISessionSignalBuilder.fetchDataStreams(taskIndex:completion:), v4);

  v92(v4);
  _s18PostSiriEngagement0B9UISessionVWOhTm_0(v64, type metadata accessor for PSEBiomeFetchConfiguration);
  v67 = v7[1];
  v67(v65, v6);
  v67(v63, v6);
  return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v82, type metadata accessor for SiriUISession);
}

uint64_t UISessionSignalBuilder.fetchDataStreams(taskIndex:endDate:)(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v48 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v46 = v43 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v43 - v17;
  v19 = *(*v2 + 136);
  v20 = v19(v16);
  v49 = Configuration;
  if ((v20 & 0xC000000000000001) != 0)
  {
    Configuration = MEMORY[0x25F8CE460](a1, v20);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    Configuration = *(v20 + 8 * a1 + 32);
  }

  v22 = *(*Configuration + 376);
  v43[1] = *Configuration + 376;
  v44 = v22;
  v23 = v22(v21);
  v20 = v19(v23);
  if (!(v20 >> 62))
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

LABEL_27:
  v41 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 < 0)
  {
    v41 = v20;
  }

  v43[0] = v20;
  v24 = MEMORY[0x25F8CE500](v41);
LABEL_7:

  if (__OFADD__(a1++, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v24 == a1)
  {
    (*(v8 + 8))(v18, v7);
    v26 = (*(v8 + 16))(v18, v47, v7);
LABEL_24:
    v39 = v48;
    (*(*Configuration + 352))(v26);
    (*(v8 + 16))(v39 + *(v49 + 20), v18, v7);
    v40 = *(**(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 304);

    v40(v39, partial apply for closure #1 in UISessionSignalBuilder.fetchDataStreams(taskIndex:endDate:), v3);

    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v39, type metadata accessor for PSEBiomeFetchConfiguration);
    return (*(v8 + 8))(v18, v7);
  }

  v20 = v19(v20);
  if (!(v20 >> 62))
  {
    v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_32:
  v42 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 < 0)
  {
    v42 = v20;
  }

  v47 = v20;
  v27 = MEMORY[0x25F8CE500](v42);
LABEL_12:

  if (a1 >= v27)
  {
    goto LABEL_24;
  }

  result = v19(v26);
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x25F8CE460](a1, result);
    goto LABEL_17;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(result + 8 * a1 + 32);

LABEL_17:

    v31 = v44(v30);
    v32 = v45;
    (*(*v29 + 352))(v31);
    lazy protocol witness table accessor for type Date and conformance Date();
    v33 = dispatch thunk of static Comparable.>= infix(_:_:)();

    v34 = *(v8 + 8);
    v34(v18, v7);
    if (v33)
    {
      v35 = v13;
    }

    else
    {
      v35 = v32;
    }

    if (v33)
    {
      v36 = v32;
    }

    else
    {
      v36 = v13;
    }

    v34(v35, v7);
    v37 = *(v8 + 32);
    v38 = v46;
    v37(v46, v36, v7);
    v26 = (v37)(v18, v38, v7);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in UISessionSignalBuilder.fetchDataStreams(taskIndex:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = a2[3];
    v5 = a2[4];
    v8 = a2[5];
    v7 = a2[6];
    v9 = a2[7];
    v10 = a2[8];
    v41 = a2[10];
    v28 = a2[9];
    v30 = a2[11];
    v31 = a2[12];
    v32 = a2[13];
    v34 = a2[14];
    v11 = a2[2];
    *&v53[0] = a2[1];

    specialized MutableCollection<>.sort(by:)(v53, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMAppIntent);

    v36 = *&v53[0];
    v52[0] = v11;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMClockAlarm);

    v40 = v52[0];
    v52[0] = v6;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMAppInFocus);

    v39 = v52[0];
    v52[0] = v4;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMMediaNowPlaying);

    v12 = v52[0];
    v52[0] = v5;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMHomeKitClientAccessory);

    v38 = v52[0];
    v52[0] = v8;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMAppIntentInvocation);

    v13 = v52[0];
    v52[0] = v7;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosEngagement);

    v14 = v52[0];
    v52[0] = v9;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosEdit);

    v15 = v52[0];
    v52[0] = v10;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosSearch);

    v16 = v52[0];
    v52[0] = v28;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosFavorite);

    v29 = v52[0];
    v52[0] = v41;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosShare);

    v42 = v52[0];
    v52[0] = v30;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosPicker);
    v17 = a3;

    v18 = v52[0];
    v52[0] = v31;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosDelete);

    v19 = v52[0];
    v52[0] = v32;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosMemoriesViewed);

    v20 = v52[0];
    v52[0] = v34;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for ExtendedBMPhotosMemoriesShared);

    v21 = v52[0];
    v22 = v36;
    v23 = v29;
    v24 = v42;
  }

  else
  {
    v17 = a3;
    v12 = MEMORY[0x277D84F90];
    swift_bridgeObjectRelease_n();
    v22 = v12;
    v39 = v12;
    v40 = v12;
    v38 = v12;
    v13 = v12;
    v14 = v12;
    v15 = v12;
    v16 = v12;
    v23 = v12;
    v24 = v12;
    v18 = v12;
    v19 = v12;
    v20 = v12;
    v21 = v12;
  }

  v43 = v24;
  v33 = v15;
  v35 = v20;
  v37 = v21;
  *&v44 = v12;
  *(&v44 + 1) = v22;
  *&v45 = v40;
  *(&v45 + 1) = v39;
  *&v46 = v38;
  *(&v46 + 1) = v13;
  *&v47 = v14;
  *(&v47 + 1) = v15;
  *&v48 = v16;
  *(&v48 + 1) = v23;
  *&v49 = v24;
  *(&v49 + 1) = v18;
  *&v50 = v19;
  *(&v50 + 1) = v20;
  v51 = v21;
  v53[2] = v46;
  v53[3] = v47;
  v53[0] = v44;
  v53[1] = v45;
  v54 = v21;
  v53[5] = v49;
  v53[6] = v50;
  v53[4] = v48;
  v25 = *(*v17 + 168);
  v26 = v22;
  outlined init with copy of PSEBiomeEventsSource(&v44, v52);
  v25(v53);
  v52[0] = v12;
  v52[1] = v26;
  v52[2] = v40;
  v52[3] = v39;
  v52[4] = v38;
  v52[5] = v13;
  v52[6] = v14;
  v52[7] = v33;
  v52[8] = v16;
  v52[9] = v23;
  v52[10] = v43;
  v52[11] = v18;
  v52[12] = v19;
  v52[13] = v35;
  v52[14] = v37;
  return outlined destroy of PSEBiomeEventsSource(v52);
}

uint64_t UISessionSignalBuilder.buildSiriExecutionTasks(nextUISession:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for SiriUISession(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v9);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    outlined init with take of SiriUISession(v6, v11);
    v12 = (*(*v1 + 264))(a1);
    if (v12 >> 62)
    {
      v19 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v12 < 0)
      {
        v19 = v12;
      }

      v20 = v12;
      v21 = MEMORY[0x25F8CE500](v19);
      v12 = v20;
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v13 = v12;
    type metadata accessor for SiriExecutionTaskFactory();
    swift_allocObject();
    v14 = SiriExecutionTaskFactory.processBiomeEventsToTask(siriExecutionEvents:)(v13);

    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v22 = v14;
      }

      else
      {
        v22 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x25F8CE500](v22))
      {
        goto LABEL_7;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v15 = SiriExecutionTaskFactory.loadTaskEntities(steps:siriUISessionId:)(v14, *&v11[*(v7 + 32)], *&v11[*(v7 + 32) + 8]);

      v16 = (*(*v2 + 144))(v15);
      v17 = (*(*v2 + 136))(v16);

      _s18PostSiriEngagement0B9UISessionVWOhTm_0(v11, type metadata accessor for SiriUISession);
      return v17;
    }

LABEL_17:

    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v11, type metadata accessor for SiriUISession);
    return MEMORY[0x277D84F90];
  }

  outlined destroy of Date?(v6, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  return MEMORY[0x277D84F90];
}

uint64_t UISessionSignalBuilder.buildSiriExecutionTasks(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(a1, a2);
  if (v9 >> 62)
  {
    v20 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 < 0)
    {
      v20 = v9;
    }

    v21 = v9;
    v22 = MEMORY[0x25F8CE500](v20);
    v9 = v21;
    if (!v22)
    {
      goto LABEL_15;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  v10 = v2;
  v11 = v9;
  type metadata accessor for SiriExecutionTaskFactory();
  swift_allocObject();
  v12 = SiriExecutionTaskFactory.processBiomeEventsToTask(siriExecutionEvents:)(v11);

  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v23 = v12;
    }

    else
    {
      v23 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x25F8CE500](v23))
    {
      goto LABEL_5;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = SiriExecutionTaskFactory.loadTaskEntities(steps:siriUISessionId:)(v12, v13, v15);

    v17 = (*(*v10 + 144))(v16);
    v18 = (*(*v10 + 136))(v17);

    return v18;
  }

LABEL_15:

  return MEMORY[0x277D84F90];
}

uint64_t UISessionSignalBuilder.fetchSiriExecutionEvents(nextUISession:)(uint64_t a1)
{
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SiriUISession(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v11);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    outlined destroy of Date?(v8, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    return MEMORY[0x277D84F90];
  }

  else
  {
    v26 = Configuration;
    outlined init with take of SiriUISession(v8, v13);
    v16 = *(**(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 296);

    v16(v13, a1);

    v17 = (*(*v1 + 128))(v27);
    v19 = v18;
    if (v14(v18, 1, v9))
    {
      v17(v27, 0);
      v20 = v26;
    }

    else
    {
      v20 = v26;
      v21 = *(v26 + 20);
      v22 = *(v9 + 24);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 24))(v19 + v22, &v5[v21], v23);
      v17(v27, 0);
    }

    v24 = specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(v5, &v5[*(v20 + 20)]);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v5, type metadata accessor for PSEBiomeFetchConfiguration);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v13, type metadata accessor for SiriUISession);
    return v24;
  }
}

uint64_t UISessionSignalBuilder.buildTranscriptTasks(nextUISession:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SiriUISession(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    outlined init with take of SiriUISession(v5, v10);
    v11 = (*(*v1 + 280))(a1);
    if (v11 >> 62)
    {
      v14 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v11 < 0)
      {
        v14 = v11;
      }

      v15 = v11;
      v16 = MEMORY[0x25F8CE500](v14);
      v11 = v15;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v12 = specialized TranscriptSignalFactory.buildTranscriptTasks(siriUISessionId:bmEvents:)(*&v10[*(v6 + 28)], *&v10[*(v6 + 28) + 8], v11);

      _s18PostSiriEngagement0B9UISessionVWOhTm_0(v10, type metadata accessor for SiriUISession);
      return v12;
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.engagement);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25ECEC000, v18, v19, "No Assistant/Siri Transcript event found from IntelligenceFlowTranscriptDatastream", v20, 2u);
      MEMORY[0x25F8CEE50](v20, -1, -1);
    }

    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v10, type metadata accessor for SiriUISession);
    return MEMORY[0x277D84F90];
  }

  outlined destroy of Date?(v5, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  return MEMORY[0x277D84F90];
}

uint64_t UISessionSignalBuilder.fetchSiriTranscriptEvents(nextUISession:)(uint64_t a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SiriUISession(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v13);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    outlined destroy of Date?(v10, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    return MEMORY[0x277D84F90];
  }

  else
  {
    v32 = Configuration;
    outlined init with take of SiriUISession(v10, v15);
    v18 = *(**(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 296);

    v18(v15, v33);

    v19 = (*(*v1 + 128))(v34);
    v21 = v20;
    if (v16(v20, 1, v11))
    {
      v19(v34, 0);
      v22 = v32;
    }

    else
    {
      v23 = v32;
      v24 = *(v32 + 20);
      v25 = *(v11 + 24);
      v26 = type metadata accessor for Date();
      v27 = &v7[v24];
      v22 = v23;
      (*(*(v26 - 8) + 24))(v21 + v25, v27, v26);
      v19(v34, 0);
    }

    type metadata accessor for PSEBiomeEventsSourceFetcher();
    v28 = *(v22 + 20);
    v29 = type metadata accessor for Date();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v4, &v7[v28], v29);
    (*(v30 + 56))(v4, 0, 1, v29);
    v31 = static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:)(v7, v4);
    outlined destroy of Date?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v7, type metadata accessor for PSEBiomeFetchConfiguration);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v15, type metadata accessor for SiriUISession);
    return v31;
  }
}

uint64_t UISessionSignalBuilder.isSiriMusicTask(task:)(uint64_t a1)
{
  v2 = (*(*a1 + 256))();
  v22._countAndFlagsBits = 0x6C7070612E6D6F63;
  v22._object = 0xEF636973754D2E65;
  v20[2] = &v22;
  v3 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v20, v2);

  if (v3 & 1) != 0 || (v5 = (*a1 + 280), v6 = *v5, (*v5)(v4), v7 = String.lowercased()(), , v22 = v7, v21 = String.lowercased()(), lazy protocol witness table accessor for type String and conformance String(), v8 = StringProtocol.contains<A>(_:)(), , v9 = , (v8) || (v6(v9), v10 = String.lowercased()(), , v22 = v10, v21 = String.lowercased()(), v11 = StringProtocol.contains<A>(_:)(), , , (v11))
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      v16 = 1;
      goto LABEL_10;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25ECEC000, v13, v14, "We have a Music Siri task for the donated Now playing events.", v15, 2u);
    v16 = 1;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.engagement);
    v13 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v19))
    {
      v16 = 0;
      goto LABEL_10;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25ECEC000, v13, v19, "No Music Siri task found for the donated Now playing events. Most likely a background music is playing. Drop the noise.", v15, 2u);
    v16 = 0;
  }

  MEMORY[0x25F8CEE50](v15, -1, -1);
LABEL_10:

  return v16;
}

uint64_t UISessionSignalBuilder.deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");

  outlined consume of PSEBiomeEventsSource?(*(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 8), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 16), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 24), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 32), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 40), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 48), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 56), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 64), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 72), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 80), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 88), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 96), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 104), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 112));

  return v0;
}

uint64_t UISessionSignalBuilder.__deallocating_deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");

  outlined consume of PSEBiomeEventsSource?(*(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 8), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 16), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 24), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 32), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 40), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 48), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 56), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 64), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 72), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 80), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 88), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 96), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 104), *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 112));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = a2(v5);
  }

  v6 = *(v5 + 16);
  v20[0] = v5 + 32;
  v20[1] = v6;
  result = _minimumMergeRunLength(_:)(v6);
  if (result >= v6)
  {
    if (v6 >= 2)
    {
      v11 = (v5 + 48);
      v12 = -1;
      for (i = 1; i != v6; ++i)
      {
        v14 = *(v5 + 32 + 16 * i + 8);
        v15 = v12;
        v16 = v11;
        do
        {
          if (v14 >= *(v16 - 1))
          {
            break;
          }

          v17 = *v16;
          *v16 = *(v16 - 1);
          *(v16 - 1) = v14;
          *(v16 - 2) = v17;
          v16 -= 2;
        }

        while (!__CFADD__(v15++, 1));
        v11 += 2;
        --v12;
      }
    }
  }

  else
  {
    v8 = result;
    v9 = v6 >> 1;
    if (v6 >= 2)
    {
      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v19[0] = v10 + 32;
    v19[1] = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v21, v20, v8);
    *(v10 + 16) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x25F8CE500](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t outlined consume of PSETask?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [Signal] and conformance [A], &_sSay18PostSiriEngagement6SignalCGMd, &_sSay18PostSiriEngagement6SignalCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement6SignalCGMd, &_sSay18PostSiriEngagement6SignalCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Signal();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [SiriExecutionStep] and conformance [A], &_sSay18PostSiriEngagement0B13ExecutionStepCGMd, &_sSay18PostSiriEngagement0B13ExecutionStepCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement0B13ExecutionStepCGMd, &_sSay18PostSiriEngagement0B13ExecutionStepCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriExecutionStep(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [SiriExecutionTask] and conformance [A], &_sSay18PostSiriEngagement0B13ExecutionTaskCGMd, &_sSay18PostSiriEngagement0B13ExecutionTaskCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement0B13ExecutionTaskCGMd, &_sSay18PostSiriEngagement0B13ExecutionTaskCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriExecutionTask(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [TranscriptTask] and conformance [A], &_sSay18PostSiriEngagement14TranscriptTaskCGMd, &_sSay18PostSiriEngagement14TranscriptTaskCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement14TranscriptTaskCGMd, &_sSay18PostSiriEngagement14TranscriptTaskCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TranscriptTask(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMR, type metadata accessor for SiriUISession);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMR, MEMORY[0x277D614D0]);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR, &type metadata for ExtendedBMHomeKitClientAccessory);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesSharedVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesSharedVGMR, &type metadata for ExtendedBMPhotosMemoriesShared);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesViewedVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesViewedVGMR, &type metadata for ExtendedBMPhotosMemoriesViewed);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosDeleteVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosDeleteVGMR, &type metadata for ExtendedBMPhotosDelete);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosPickerVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosPickerVGMR, &type metadata for ExtendedBMPhotosPicker);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement21ExtendedBMPhotosShareVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement21ExtendedBMPhotosShareVGMR, &type metadata for ExtendedBMPhotosShare);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement24ExtendedBMPhotosFavoriteVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement24ExtendedBMPhotosFavoriteVGMR, &type metadata for ExtendedBMPhotosFavorite);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosSearchVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosSearchVGMR, &type metadata for ExtendedBMPhotosSearch);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMPhotosEditVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMPhotosEditVGMR, &type metadata for ExtendedBMPhotosEdit);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement016ExtendedBMPhotosF0VGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement016ExtendedBMPhotosF0VGMR, &type metadata for ExtendedBMPhotosEngagement);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement29ExtendedBMAppIntentInvocationVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement29ExtendedBMAppIntentInvocationVGMR, &type metadata for ExtendedBMAppIntentInvocation);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement25ExtendedBMMediaNowPlayingVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement25ExtendedBMMediaNowPlayingVGMR, &type metadata for ExtendedBMMediaNowPlaying);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMAppInFocusVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMAppInFocusVGMR, &type metadata for ExtendedBMAppInFocus);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMClockAlarmVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMClockAlarmVGMR, &type metadata for ExtendedBMClockAlarm);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement19ExtendedBMAppIntentVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement19ExtendedBMAppIntentVGMR, &type metadata for ExtendedBMAppIntent);
}

uint64_t _s18PostSiriEngagement0B9UISessionVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized UISessionSignalBuilder.buildSignalsAndTaskFeatureSets(task:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v100 = a3;
  v103 = a1;
  v6 = type metadata accessor for ReliabilityCategory();
  v99 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v96 - v10;
  v101 = 0;
  v12 = type metadata accessor for SiriUISession(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 112))(v14);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of Date?(v11, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    swift_beginAccess();
    *a4 = 0;
  }

  v102 = v16;
  v18 = outlined init with take of SiriUISession(v11, v16);
  v19 = (*(*a2 + 160))(&v107, v18);
  v98 = a4;
  if (!v107)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.engagement);
    v115 = 0;
    *&v116 = 0xE000000000000000;
    _StringGuts.grow(_:)(123);
    MEMORY[0x25F8CE090](0xD000000000000078, 0x800000025ED81270);
    MEMORY[0x25F8CE090](*&v102[*(v12 + 32)], *&v102[*(v12 + 32) + 8]);
    MEMORY[0x25F8CE090](46, 0xE100000000000000);
    v26 = v115;
    v25 = v116;
    v27 = *MEMORY[0x277D615D8];
    v28 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v28 - 8) + 104))(v8, v27, v28);
    v29 = v99;
    (v99[13])(v8, *MEMORY[0x277D616A8], v6);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v115 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v115);
      _os_log_impl(&dword_25ECEC000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v34 = v33;
      a4 = v98;
      MEMORY[0x25F8CEE50](v34, -1, -1);
      MEMORY[0x25F8CEE50](v32, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v35 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v35, v36);

    (v29[1])(v8, v6);
    swift_beginAccess();
    *a4 = 0;
    goto LABEL_33;
  }

  v115 = v107;
  v120 = v112;
  v121 = v113;
  v122 = v114;
  v116 = v108;
  v117 = v109;
  v118 = v110;
  v119 = v111;
  v20 = MEMORY[0x277D84F90];
  v105 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v21 = *(*v103 + 280);
  if (v21(v19) == 0xD000000000000014 && 0x800000025ED7FA70 == v22)
  {

    v23 = v102;
    goto LABEL_13;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v23 = v102;
  if (v37)
  {
LABEL_13:
    v38 = v118;
    if (*(v118 + 16))
    {
      type metadata accessor for AppIntentTranscriptSignalFactory();
      swift_allocObject();
      AppIntentTranscriptSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v38, v23, &v104);

      specialized Array.append<A>(contentsOf:)(v39);

      specialized Array.append<A>(contentsOf:)(v40);
    }

    v41 = v101;
    if (*(*(&v118 + 1) + 16) || *(v119 + 16) || *(*(&v119 + 1) + 16) || *(v120 + 16) || *(*(&v120 + 1) + 16) || *(v121 + 16) || *(*(&v121 + 1) + 16) || *(v122 + 16) || *(*(&v122 + 1) + 16))
    {
      type metadata accessor for PhotosSignalFactory();
      swift_allocObject();
      PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(&v115, &v104);

LABEL_25:
      v42 = v98;

      specialized Array.append<A>(contentsOf:)(v43);

      specialized Array.append<A>(contentsOf:)(v44);

      goto LABEL_26;
    }

    goto LABEL_56;
  }

  v61 = v116;
  v62 = *(v116 + 16);
  if (v62)
  {
    v63 = *(a2 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector);
    v104 = MEMORY[0x277D84F90];
    v99 = v63;

    specialized ContiguousArray.reserveCapacity(_:)();
    v97 = v61;
    v64 = (v61 + 32);
    v65 = (v61 + 32);
    do
    {
      v66 = *v65;
      v65 += 2;
      v67 = v66;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 = specialized ContiguousArray._endMutation()();
      --v62;
    }

    while (v62);
    v69 = v104;
    v70 = v21(v68);
    v71 = v101;
    v73 = (*v99)[35](v69, v70, v72);
    if (v71)
    {

      v101 = 0;
    }

    else
    {
      v74 = v73;
      v101 = 0;

      if (v74)
      {
        v75 = *(v97 + 16);
        v76 = MEMORY[0x277D84F90];
        if (v75)
        {
          v104 = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          do
          {
            v77 = *v64;
            v64 += 2;
            v78 = v77;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v75;
          }

          while (v75);
          v76 = v104;
        }

        (*(*v74 + 96))(&v104, v76, v102);

        specialized Array.append<A>(contentsOf:)(v79);

        specialized Array.append<A>(contentsOf:)(v80);
      }
    }
  }

  v81 = *(&v116 + 1);
  v23 = v102;
  if (*(*(&v116 + 1) + 16))
  {
    type metadata accessor for ExtendedAlarmSignalFactory();
    swift_allocObject();
    ExtendedAlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v81, v23, &v104);

    specialized Array.append<A>(contentsOf:)(v82);

    specialized Array.append<A>(contentsOf:)(v83);
  }

  v20 = MEMORY[0x277D84F90];
  if (*(*(&v117 + 1) + 16))
  {
    type metadata accessor for HomeKitAccessoryControlSignalFactory();
    swift_allocObject();
    HomeKitAccessoryControlSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v23, &v104);

    specialized Array.append<A>(contentsOf:)(v84);

    specialized Array.append<A>(contentsOf:)(v85);
  }

  v86 = v115;
  v41 = v101;
  if (v115[2] && ((*(*a2 + 288))(v103) & 1) != 0)
  {
    type metadata accessor for NowPlayingSignalFactory(0);
    v87 = swift_allocObject();
    v88 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(&outlined read-only object #0 of NowPlayingSignalFactory.init());
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MRPlaybackStateV_SStMd, &_sSo15MRPlaybackStateV_SStMR);
    swift_arrayDestroy();
    *(v87 + 16) = v88;
    v89 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
    v90 = type metadata accessor for Date();
    (*(*(v90 - 8) + 56))(v87 + v89, 1, 1, v90);
    v91 = *(v86 + 16);
    v92 = MEMORY[0x277D84F90];
    if (v91)
    {
      v104 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v93 = (v86 + 32);
      do
      {
        v94 = *v93;
        v93 += 2;
        v95 = v94;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v91;
      }

      while (v91);
      v92 = v104;
    }

    NowPlayingSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v92, v23, &v104);

    goto LABEL_25;
  }

LABEL_56:
  v42 = v98;
LABEL_26:
  v45 = v117;
  v46 = *(v117 + 16);
  if (v46)
  {
    type metadata accessor for AppLaunchSignalFactory();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_25ED7CDB0;
    *(v47 + 32) = 0xD00000000000002BLL;
    *(v47 + 40) = 0x800000025ED80060;
    *(v47 + 48) = 0xD000000000000031;
    *(v47 + 56) = 0x800000025ED80090;
    *(v47 + 64) = 0xD00000000000002DLL;
    *(v47 + 72) = 0x800000025ED800D0;
    v104 = v20;
    specialized ContiguousArray.reserveCapacity(_:)();
    v48 = (v45 + 32);
    do
    {
      v49 = *v48;
      v48 += 2;
      v50 = v49;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v46;
    }

    while (v46);
    outlined destroy of Date?(&v107, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
    AppLaunchSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v104, v23, &v104);

    specialized Array.append<A>(contentsOf:)(v51);

    specialized Array.append<A>(contentsOf:)(v52);

    v42 = v98;
  }

  else
  {
    outlined destroy of Date?(&v107, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  }

  v104 = specialized Array._copyToContiguousArray()(v53);
  specialized MutableCollection<>.sort(by:)(&v104);
  if (!v41)
  {

    v54 = v104;
    v55 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement7PSETaskVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement7PSETaskVGMR);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_25ED7C750;
    v57 = v103;
    *(v56 + 32) = v103;
    *(v56 + 40) = v54;
    *(v56 + 48) = v55;
    swift_beginAccess();
    v58 = v42;
    v59 = *v42;
    v60 = *(*v100 + 264);

    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v60(v56, v59);

    swift_beginAccess();
    *v58 = v57;

LABEL_33:

    return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v102, type metadata accessor for SiriUISession);
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for SiriUISession(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for UISessionSignalBuilder(uint64_t a1)
{
  type metadata accessor for SiriUISession?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of UISessionSignalBuilder.postSiriDataStream.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 168);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

void type metadata accessor for SiriUISession?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SiriUISession?)
  {
    type metadata accessor for SiriUISession(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SiriUISession?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [Signal] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t MapsIntentSignalFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = &outlined read-only object #0 of MapsIntentSignalFactory.init();
  return result;
}

unint64_t MapsIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v20 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:
    v13 = MEMORY[0x277D84F90];
LABEL_19:
    v15 = (*(*v3 + 128))(v13, v4);
    v16 = (*(*v3 + 136))(v13);

    *a3 = v15;
    a3[1] = v16;
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    result &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v14 = v4;
  result = MEMORY[0x25F8CE500](result);
  v4 = v14;
  v6 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v18 = *(*v3 + 88);
    v8 = v4 & 0xC000000000000001;
    v17 = MEMORY[0x277D84F90];
    v9 = v4;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x25F8CE460](v7);
      }

      else
      {
        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      if (v18(v10, a2))
      {

        MEMORY[0x25F8CE160](v12);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v17 = v20;
      }

      else
      {
      }

      ++v7;
      v4 = v9;
    }

    while (v6 != v7);
    v13 = v17;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *MapsIntentSignalFactory.transformSignalsToFeatures(signals:)(unint64_t a1)
{
  v111 = type metadata accessor for ProtoTaskFeatureSet();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for ProtoNavigationFollowupType();
  v115 = *(v134 - 8);
  v3 = MEMORY[0x28223BE20](v134);
  v106 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v133 = &v105 - v6;
  MEMORY[0x28223BE20](v5);
  v130 = &v105 - v7;
  v142 = type metadata accessor for ProtoLocationEntitySignal();
  v147 = *(v142 - 8);
  v8 = MEMORY[0x28223BE20](v142);
  v129 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v105 - v10;
  v132 = type metadata accessor for ProtoNavigationUserFollowupContext();
  v114 = *(v132 - 8);
  v11 = MEMORY[0x28223BE20](v132);
  v131 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v143 = &v105 - v13;
  v141 = type metadata accessor for ProtoNavigationFeatures();
  v146 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v135 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ProtoNavigationTaskFeatureSet();
  v15 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v116 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProtoTaskEngagementType();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v112 = *(v113 - 8);
  v21 = MEMORY[0x28223BE20](v113);
  v109 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v105 - v23;
  v25 = type metadata accessor for ReliabilityCategory();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1 >> 62;
  v136 = a1;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    if (one-time initialization token for engagement != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  while (1)
  {
    ProtoTaskEngagementFeatureSet.init()();
    v31 = *(v18 + 13);
    v30 = v18 + 13;
    v31(v20, *MEMORY[0x277D61510], v17);
    ProtoTaskEngagementFeatureSet.engagementType.setter();
    if (v29)
    {
      v29 = v136;
      if (v136 < 0)
      {
        v32 = v136;
      }

      else
      {
        v32 = v136 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = MEMORY[0x25F8CE500](v32);
    }

    else
    {
      v29 = v136;
      v26 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v116;
    if (!v26)
    {
      goto LABEL_17;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x25F8CE460](0, v29);
      v33 = v34;
    }

    else
    {
      if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v33 = *(v29 + 32);
    }

    (*(*v33 + 120))(&v150, v34);

    v35 = *&v150 & 0x7FFFFFFFFFFFFFFFLL;
    if ((*&v150 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v150 <= -1.0)
    {
      __break(1u);
LABEL_67:
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v33, 1, v30);
LABEL_53:
      v20[1](v24, v28);
      v30[2] = v33;
      (v20[4])(v30 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + v20[9] * v25, v29, v28);
      return v30;
    }

    if (v150 >= 1.84467441e19)
    {
      __break(1u);
    }

LABEL_17:
    ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
    ProtoNavigationTaskFeatureSet.init()();
    v18 = &v150;
    v36 = ProtoTaskEngagementFeatureSet.featureSet.modify();
    ProtoTaskFeatureSet.navigationFeatureSet.setter();
    v36(&v150, 0);
    v37 = ProtoTaskEngagementFeatureSet.featureSet.modify();
    v38 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
    ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.setter();
    v38(v149, 0);
    v37(&v150, 0);
    v25 = ProtoTaskEngagementFeatureSet.featureSet.modify();
    v39 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
    ProtoNavigationTaskFeatureSet.isUserFollowup.setter();
    v39(v149, 0);
    (v25)(&v150, 0);
    v28 = v135;
    if (!v26)
    {
LABEL_49:
      v77 = v108;
      ProtoTaskEngagementFeatureSet.featureSet.getter();
      v78 = v116;
      ProtoTaskFeatureSet.navigationFeatureSet.getter();
      v79 = *(v110 + 8);
      v80 = v111;
      v79(v77, v111);
      v81 = ProtoNavigationTaskFeatureSet.isUserFollowup.getter();
      v84 = *(v15 + 8);
      v83 = v15 + 8;
      v82 = v84;
      v85 = v107;
      v84(v78, v107);
      if ((v81 & 1) == 0 || (v128 = v83, ProtoTaskEngagementFeatureSet.featureSet.getter(), ProtoTaskFeatureSet.navigationFeatureSet.getter(), v79(v77, v80), v86 = v131, ProtoNavigationTaskFeatureSet.followupContext.getter(), v82(v78, v85), v87 = v133, ProtoNavigationUserFollowupContext.followupType.getter(), (*(v114 + 8))(v86, v132), v88 = v115, v89 = v106, v90 = v134, (*(v115 + 104))(v106, *MEMORY[0x277D61740], v134), lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType(), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v91 = *(v88 + 8), v91(v89, v90), v91(v87, v90), *&v150 == v149[0]))
      {
        v92 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v93 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
        ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.setter();
        v93(v149, 0);
        v92(&v150, 0);
      }

      v20 = v112;
      v29 = v109;
      v28 = v113;
      (v112[2])(v109, v24, v113);
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v25 = v30[2];
      v35 = v30[3];
      v33 = v25 + 1;
      if (v25 < v35 >> 1)
      {
        goto LABEL_53;
      }

      goto LABEL_67;
    }

    if (v26 < 1)
    {
      goto LABEL_71;
    }

    a1 = 0;
    v25 = 0;
    v139 = *(v148 + 16);
    v140 = v29 & 0xC000000000000001;
    v125 = (v147 + 16);
    v124 = (v115 + 8);
    v123 = *MEMORY[0x277D61740];
    v122 = (v115 + 104);
    v121 = *MEMORY[0x277D61748];
    v120 = (v115 + 16);
    v119 = (v114 + 16);
    v118 = (v147 + 8);
    v117 = (v114 + 8);
    v138 = (v146 + 8);
    v127 = v24;
    v128 = v15;
    v126 = v26;
    while (1)
    {
      if (v140)
      {
        v20 = MEMORY[0x25F8CE460](a1, v29);
      }

      else
      {
        v20 = *(v29 + 8 * a1 + 32);
      }

      v42 = ProtoNavigationFeatures.init()();
      v17 = v20;
      (*(*v20 + 15))(&v150, v42);
      if ((*&v150 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v150 <= -1.0)
      {
        goto LABEL_55;
      }

      if (v150 >= 1.84467441e19)
      {
        goto LABEL_56;
      }

      v43 = ProtoNavigationFeatures.timestampInMs.setter();
      (*(*v20 + 21))(v43);
      v44 = ProtoNavigationFeatures.navigationAction.setter();
      v45 = *(*v20 + 27);
      v148 = *v20 + 216;
      v46 = v45(v44);
      if (*(v46 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(0x79546E6F69746361, 0xEA00000000006570), (v48 & 1) != 0))
      {
        outlined init with copy of Any(*(v46 + 56) + 32 * v47, &v150);

        swift_dynamicCast();
      }

      else
      {
      }

      v49 = ProtoNavigationFeatures.navigationActionType.setter();
      v50 = v45(v49);
      v51 = *(v50 + 16);
      v146 = a1;
      v147 = v45;
      if (v51 && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v53 & 1) != 0))
      {
        outlined init with copy of Any(*(v50 + 56) + 32 * v52, &v150);

        swift_dynamicCast();
      }

      else
      {
      }

      ProtoNavigationFeatures.navigationSource.setter();
      v150 = COERCE_DOUBLE(ProtoNavigationFeatures.navigationAction.getter());
      v151 = v54;
      MEMORY[0x28223BE20](*&v150);
      *(&v105 - 2) = &v150;
      v55 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v105 - 4), v139);
      v145 = v25;

      if (v55)
      {
        ProtoNavigationUserFollowupContext.init()();
        v57 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v58 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
        ProtoNavigationTaskFeatureSet.isUserFollowup.setter();
        v58(v149, 0);
        v57(&v150, 0);
        ProtoNavigationFeatures.navigationAction.getter();
        ProtoNavigationUserFollowupContext.navigationAction.setter();
        ProtoNavigationFeatures.navigationActionType.getter();
        ProtoNavigationUserFollowupContext.navigationActionType.setter();
        v59 = ProtoLocationEntitySignal.init()();
        v60 = v147(v59);
        if (*(v60 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656449696F70, 0xED00007265696669), (v62 & 1) != 0))
        {
          outlined init with copy of Any(*(v60 + 56) + 32 * v61, &v150);

          swift_dynamicCast();
        }

        else
        {
        }

        v63 = v144;
        ProtoLocationEntitySignal.poiIdentifier.setter();
        (*v125)(v129, v63, v142);
        v64 = v143;
        ProtoNavigationUserFollowupContext.locationEntity.setter();
        ProtoNavigationFeatures.timestampInMs.getter();
        v65 = ProtoNavigationUserFollowupContext.timestampInMs.setter();
        v66 = v130;
        MEMORY[0x25F8CDD70](v65);
        v150 = COERCE_DOUBLE(ProtoNavigationFeatures.navigationSource.getter());
        v151 = v67;
        v149[0] = 1936744781;
        v149[1] = 0xE400000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        LOBYTE(v63) = StringProtocol.contains<A>(_:)();

        v137 = *v124;
        v68 = v134;
        v137(v66, v134);
        if (v63)
        {
          v69 = v121;
        }

        else
        {
          v69 = v123;
        }

        (*v122)(v66, v69, v68);
        (*v120)(v133, v66, v68);
        ProtoNavigationUserFollowupContext.followupType.setter();
        v70 = v64;
        v71 = v132;
        (*v119)(v131, v70, v132);
        v24 = v127;
        v72 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v73 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
        v28 = v135;
        ProtoNavigationTaskFeatureSet.followupContext.setter();
        v73(v149, 0);
        v72(&v150, 0);
        v137(v66, v68);
        (*v118)(v144, v142);
        v56 = (*v117)(v143, v71);
        v29 = v136;
        v15 = v128;
        v26 = v126;
      }

      v74 = v147(v56);
      if (*(v74 + 16))
      {
        v75 = specialized __RawDictionaryStorage.find<A>(_:)(0x697461676976616ELL, 0xEE00657079546E6FLL);
        v25 = v145;
        v40 = v146;
        if (v76)
        {
          outlined init with copy of Any(*(v74 + 56) + 32 * v75, &v150);

          swift_dynamicCast();
        }

        else
        {
        }
      }

      else
      {

        v25 = v145;
        v40 = v146;
      }

      a1 = v40 + 1;
      ProtoNavigationFeatures.navigationType.setter();
      ProtoNavigationFeatures.navigationType.getter();
      v18 = v41;

      (*v138)(v28, v141);
      if (v26 == a1)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v94 = a1;
    }

    else
    {
      v94 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x25F8CE500](v94))
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_62:
  v95 = type metadata accessor for Logger();
  __swift_project_value_buffer(v95, static Logger.engagement);
  v96 = *MEMORY[0x277D61640];
  v97 = type metadata accessor for MapsEventDataIssues();
  (*(*(v97 - 8) + 104))(v28, v96, v97);
  (*(v26 + 104))(v28, *MEMORY[0x277D61660], v25);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v150 = *&v101;
    *v100 = 136315138;
    *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000025ED7E8C0, &v150);
    _os_log_impl(&dword_25ECEC000, v98, v99, "%s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x25F8CEE50](v101, -1, -1);
    MEMORY[0x25F8CEE50](v100, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v102 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v28, v102, v103);

  (*(v26 + 8))(v28, v25);
  return MEMORY[0x277D84F90];
}

void MapsIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v210 = a2;
  v209 = type metadata accessor for ReliabilityCategory();
  v207 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v208 = &v198 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v211 = v4;
  v212 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v198 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v198 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v198 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v198 - v25;
  v27 = MEMORY[0x25F8CE7F0](v24);
  v28 = v213;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, v215, &v216);
  if (v28)
  {
    objc_autoreleasePoolPop(v27);
    return;
  }

  v203 = a1;
  v200 = v17;
  v201 = v19;
  v198 = v23;
  v29 = v209;
  v205 = v26;
  v30 = v210;
  v202 = v8;
  v199 = v13;
  v204 = 0;
  objc_autoreleasePoolPop(v27);
  v206 = v216;
  v213 = [v216 intent];
  v31 = [v213 domain];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == 1936744781 && v34 == 0xE400000000000000)
  {

    v35 = v11;
    v36 = v203;
    goto LABEL_7;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = v11;
  v36 = v203;
  if (v37)
  {
LABEL_7:
    v38 = [v213 parametersByName];
    v39 = v202;
    v40 = v201;
    v41 = v200;
    if (v38)
    {
      v42 = v38;
      v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v43 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656D656C65, 0xE700000000000000), (v45 & 1) != 0))
      {
        outlined init with copy of Any(*(v43 + 56) + 32 * v44, &v216);

        if (swift_dynamicCast())
        {
          if (v215[0] == __PAIR128__(0xEE00535554415453, 0x5F56414E5F544547))
          {

            return;
          }

          v195 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v195)
          {

            return;
          }
        }
      }

      else
      {
      }
    }

    v46 = [v36 absoluteTimestamp];
    if (v46)
    {
      v47 = v205;
      v48 = v46;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
      v50 = v212;
    }

    else
    {
      v49 = 1;
      v50 = v212;
      v47 = v205;
    }

    v51 = 1;
    (*(v50 + 56))(v47, v49, 1, v211);
    v52 = [v206 dateInterval];
    if (v52)
    {
      v53 = v52;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    v54 = type metadata accessor for DateInterval();
    v55 = *(v54 - 8);
    (*(v55 + 56))(v41, v51, 1, v54);
    outlined init with take of DateInterval?(v41, v40);
    v56 = 0;
    if (!(*(v55 + 48))(v40, 1, v54))
    {
      DateInterval.duration.getter();
      v56 = v57;
    }

    outlined destroy of Date?(v40, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v58 = v212;
    v59 = *(v212 + 16);
    v60 = v199;
    v61 = v30;
    v62 = v30;
    v63 = v211;
    v59(v199, v62, v211);
    v64 = v61 + *(type metadata accessor for SiriUISession(0) + 20);
    v65 = v63;
    v59(v35, v64, v63);
    v66 = v205;
    v67 = v198;
    outlined init with copy of Date?(v205, v198);
    v68 = (*(v58 + 48))(v67, 1, v63);
    v69 = v213;
    LODWORD(v210) = v68;
    if (v68 == 1)
    {
      v82 = *(v58 + 8);
      v82(v35, v65);
      v82(v60, v65);
      outlined destroy of Date?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of Date?(v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v212 = 0x3FF0000000000000;
      v71 = 0;
      v75 = 0.0;
      v81 = 0.0;
      v56 = 0;
    }

    else
    {
      (*(v58 + 32))(v39, v67, v65);
      Date.timeIntervalSinceReferenceDate.getter();
      v71 = v70;
      Date.timeIntervalSinceReferenceDate.getter();
      v73 = v72;
      Date.timeIntervalSinceReferenceDate.getter();
      v75 = v73 - v74;
      Date.timeIntervalSinceReferenceDate.getter();
      v77 = v76;
      Date.timeIntervalSinceReferenceDate.getter();
      v79 = v78;
      v80 = *(v58 + 8);
      v80(v39, v65);
      v80(v35, v65);
      v80(v60, v65);
      outlined destroy of Date?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v212 = 0;
      v81 = v77 - v79;
    }

    v83 = [v69 typeName];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = MEMORY[0x277D837D0];
    v217 = MEMORY[0x277D837D0];
    *&v216 = v84;
    *(&v216 + 1) = v86;
    outlined init with take of Any(&v216, v215);
    v88 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v214 = v88;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x7954746E65746E69, 0xEE00656D614E6570, isUniquelyReferenced_nonNull_native);
    v90 = v214;
    v91 = [v69 parametersByName];
    if (v91)
    {
      v92 = v91;
      v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v93 + 16) && (v94 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656D656C65, 0xE700000000000000), (v95 & 1) != 0))
      {
        outlined init with copy of Any(*(v93 + 56) + 32 * v94, &v216);

        v96 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v98 = *(&v215[0] + 1);
          v97 = *&v215[0];
          v217 = v96;
          if (*(&v215[0] + 1))
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    v217 = v87;
LABEL_32:
    v97 = 0;
    v98 = 0xE000000000000000;
LABEL_33:
    *&v216 = v97;
    *(&v216 + 1) = v98;
    outlined init with take of Any(&v216, v215);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v214 = v90;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x79546E6F69746361, 0xEA00000000006570, v99);
    v100 = v214;
    v101 = [v69 parametersByName];
    if (v101)
    {
      v102 = v101;
      v103 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v103 + 16) && (v104 = specialized __RawDictionaryStorage.find<A>(_:)(0x697461676976616ELL, 0xEE00657079546E6FLL), (v105 & 1) != 0))
      {
        outlined init with copy of Any(*(v103 + 56) + 32 * v104, &v216);

        v106 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v108 = *(&v215[0] + 1);
          v107 = *&v215[0];
          v217 = v106;
          if (*(&v215[0] + 1))
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v217 = v87;
LABEL_41:
    v107 = 0;
    v108 = 0xE000000000000000;
LABEL_42:
    *&v216 = v107;
    *(&v216 + 1) = v108;
    outlined init with take of Any(&v216, v215);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v214 = v100;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x697461676976616ELL, 0xEE00657079546E6FLL, v109);
    v110 = v214;
    v111 = [v69 parametersByName];
    if (v111)
    {
      v112 = v111;
      v113 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v113 + 16) && (v114 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6564695F76616ELL, 0xEE00726569666974), (v115 & 1) != 0))
      {
        outlined init with copy of Any(*(v113 + 56) + 32 * v114, &v216);

        v116 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v118 = *(&v215[0] + 1);
          v117 = *&v215[0];
          v217 = v116;
          if (*(&v215[0] + 1))
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    v217 = v87;
LABEL_50:
    v117 = 0;
    v118 = 0xE000000000000000;
LABEL_51:
    *&v216 = v117;
    *(&v216 + 1) = v118;
    outlined init with take of Any(&v216, v215);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v214 = v110;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0xD000000000000014, 0x800000025ED80D90, v119);
    v120 = v214;
    v121 = [v69 parametersByName];
    if (v121)
    {
      v122 = v121;
      v123 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v123 + 16) && (v124 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6564695F696F70, 0xEE00726569666974), (v125 & 1) != 0))
      {
        outlined init with copy of Any(*(v123 + 56) + 32 * v124, &v216);

        v126 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v128 = *(&v215[0] + 1);
          v127 = *&v215[0];
          v217 = v126;
          if (*(&v215[0] + 1))
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    v217 = v87;
LABEL_59:
    v127 = 0;
    v128 = 0xE000000000000000;
LABEL_60:
    *&v216 = v127;
    *(&v216 + 1) = v128;
    outlined init with take of Any(&v216, v215);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v214 = v120;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x746E656449696F70, 0xED00007265696669, v129);
    v130 = v214;
    v131 = [v69 parametersByName];
    if (v131)
    {
      v132 = v131;
      v133 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v133 + 16) && (v134 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v135 & 1) != 0))
      {
        outlined init with copy of Any(*(v133 + 56) + 32 * v134, &v216);

        v136 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v138 = *(&v215[0] + 1);
          v137 = *&v215[0];
          v217 = v136;
          if (*(&v215[0] + 1))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    v217 = v87;
LABEL_68:
    v137 = 0;
    v138 = 0xE000000000000000;
LABEL_69:
    *&v216 = v137;
    *(&v216 + 1) = v138;
    outlined init with take of Any(&v216, v215);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v214 = v130;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x656372756F73, 0xE600000000000000, v139);
    v140 = v214;
    v141 = [v69 parametersByName];
    if (v141)
    {
      v142 = v141;
      v143 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v143 + 16) && (v144 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v145 & 1) != 0))
      {
        outlined init with copy of Any(*(v143 + 56) + 32 * v144, &v216);

        if (swift_dynamicCast())
        {
          v147 = *(&v215[0] + 1);
          v146 = *&v215[0];
LABEL_76:
          *&v216 = v146;
          *(&v216 + 1) = v147;
          *&v215[0] = 0x6C7070612E6D6F63;
          *(&v215[0] + 1) = 0xEA00000000002E65;
          lazy protocol witness table accessor for type String and conformance String();
          v148 = StringProtocol.contains<A>(_:)();

          v149 = MEMORY[0x277D839B0];
          v217 = MEMORY[0x277D839B0];
          LOBYTE(v216) = v148 & 1;
          outlined init with take of Any(&v216, v215);
          v150 = swift_isUniquelyReferenced_nonNull_native();
          v214 = v140;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0xD000000000000016, 0x800000025ED7E770, v150);
          v151 = v214;
          v152 = [v213 verb];
          v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v155 = v154;

          if (v153 == 2003789907 && v155 == 0xE400000000000000)
          {
          }

          else
          {
            v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v156 & 1) == 0)
            {
              if (v75 >= 0.0)
              {
                v188 = [v213 parametersByName];
                if (!v188)
                {
                  goto LABEL_82;
                }

                v189 = v188;
                v190 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                if (!*(v190 + 16) || (v191 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v192 & 1) == 0))
                {

                  goto LABEL_82;
                }

                outlined init with copy of Any(*(v190 + 56) + 32 * v191, &v216);

                if ((swift_dynamicCast() & 1) == 0)
                {
LABEL_82:
                  v158 = v210 != 1;
                  v159 = v213;
                  v160 = [v213 domain];
                  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v163 = v162;

                  v164 = [v159 verb];
                  v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v167 = v166;

                  type metadata accessor for Signal();
                  v168 = swift_allocObject();
                  *(v168 + 16) = v71;
                  *(v168 + 24) = v75;
                  *(v168 + 32) = v81;
                  *(v168 + 40) = v56;
                  *(v168 + 48) = v212;
                  *(v168 + 56) = v158;
                  *(v168 + 64) = v161;
                  *(v168 + 72) = v163;
                  *(v168 + 80) = v165;
                  *(v168 + 88) = v167;
                  *(v168 + 96) = 1;
                  *(v168 + 104) = v151;
                  return;
                }

                v193 = String.lowercased()();
                v194 = String.hasSuffix(_:)(v193);

                if (v194)
                {
                }

                else
                {
                  v196._object = 0x800000025ED80D50;
                  v196._countAndFlagsBits = 0xD000000000000011;
                  v197 = String.hasSuffix(_:)(v196);

                  if (!v197)
                  {
                    goto LABEL_82;
                  }
                }
              }

              v217 = v149;
              LOBYTE(v216) = 1;
              outlined init with take of Any(&v216, v215);
              v157 = swift_isUniquelyReferenced_nonNull_native();
              v214 = v151;
LABEL_81:
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x42646574616E6F64, 0xED00006972695379, v157);
              v151 = v214;
              goto LABEL_82;
            }
          }

          v217 = v149;
          LOBYTE(v216) = v75 < 3.0;
          outlined init with take of Any(&v216, v215);
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v214 = v151;
          goto LABEL_81;
        }
      }

      else
      {
      }
    }

    v146 = 0;
    v147 = 0xE000000000000000;
    goto LABEL_76;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v169 = type metadata accessor for Logger();
  __swift_project_value_buffer(v169, static Logger.engagement);
  *&v216 = 0;
  *(&v216 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
  v170 = v213;
  v171 = [v213 domain];
  v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v174 = v173;

  MEMORY[0x25F8CE090](v172, v174);

  MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED81370);
  v175 = v216;
  v176 = *MEMORY[0x277D616E0];
  v177 = type metadata accessor for AppIntentEventDataIssues();
  v178 = v208;
  (*(*(v177 - 8) + 104))(v208, v176, v177);
  v179 = v207;
  v180 = v29;
  (*(v207 + 104))(v178, *MEMORY[0x277D61678], v29);

  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    *&v216 = v184;
    *v183 = 136315138;
    *(v183 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, *(&v175 + 1), &v216);
    _os_log_impl(&dword_25ECEC000, v181, v182, "%s", v183, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v184);
    MEMORY[0x25F8CEE50](v184, -1, -1);
    v185 = v183;
    v178 = v208;
    MEMORY[0x25F8CEE50](v185, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v186 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v178, v186, v187);

  (*(v179 + 8))(v178, v180);
}

uint64_t MapsIntentSignalFactory.init()()
{
  result = v0;
  *(v0 + 16) = &outlined read-only object #0 of MapsIntentSignalFactory.init();
  return result;
}

uint64_t MapsIntentSignalFactory.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType()
{
  result = lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType)
  {
    type metadata accessor for ProtoNavigationFollowupType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
  }

  return result;
}

void PSEGeoSELFEmitter.emitPSEGeo(geoSignals:appLaunchSignals:task:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v214 = a2;
  v217 = type metadata accessor for ReliabilityCategory();
  v6 = *(v217 - 8);
  v7 = MEMORY[0x28223BE20](v217);
  v9 = (v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v195 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v212 = v195 - v14;
  MEMORY[0x28223BE20](v13);
  v215 = v195 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v213 = v195 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v210 = v195 - v20;
  MEMORY[0x28223BE20](v19);
  v211 = v195 - v21;
  v22 = type metadata accessor for UUID();
  v216 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v209 = v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v207 = v195 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v208 = v195 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = v195 - v29;
  v31 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (!v31)
  {
    goto LABEL_107;
  }

  v32 = v31;
  v206 = a3;
  v205 = v3;
  v33 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
  if (!v33)
  {
LABEL_106:

LABEL_107:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    __swift_project_value_buffer(v99, static Logger.engagement);
    v100 = *MEMORY[0x277D615B0];
    v101 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v101 - 8) + 104))(v9, v100, v101);
    v102 = v217;
    (*(v6 + 104))(v9, *MEMORY[0x277D616A8], v217);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v221[0] = v106;
      *v105 = 136315138;
      *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000025ED81400, v221);
      _os_log_impl(&dword_25ECEC000, v103, v104, "%s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x25F8CEE50](v106, -1, -1);
      MEMORY[0x25F8CEE50](v105, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v107 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v107, v108);

    (*(v6 + 8))(v9, v102);
    return;
  }

  v34 = v33;
  v203 = v30;
  v35 = [objc_allocWithZone(MEMORY[0x277D5A1C8]) init];
  if (!v35)
  {
LABEL_105:

    v32 = v34;
    goto LABEL_106;
  }

  v36 = v35;
  v204 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
  if (!v204)
  {
LABEL_104:

    v32 = v34;
    v34 = v36;
    goto LABEL_105;
  }

  v202 = [objc_allocWithZone(MEMORY[0x277D5A1C0]) init];
  if (!v202)
  {
    v52 = v32;
    v32 = v34;
    v53 = v204;
LABEL_103:

    v34 = v36;
    v36 = v53;
    goto LABEL_104;
  }

  v201 = v36;
  v200 = v34;
  if (a1 >> 62)
  {
    goto LABEL_98;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
LABEL_102:

    v32 = v204;
    v53 = v200;
    v36 = v201;
    v52 = v202;
    goto LABEL_103;
  }

LABEL_8:
  v218 = (a1 & 0xC000000000000001);
  v198 = v22;
  v197 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x25F8CE460](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_118;
    }
  }

  v39 = v38;
  (*(*v38 + 120))(v221);
  v40 = v204;
  v41 = (*(*v39 + 144))([v204 setEventDonationTimeInSecondsSince2001_]);
  v42 = MEMORY[0x25F8CDFC0](v41);

  [v40 setDomain_];

  v43 = (*(*v39 + 168))();
  v9 = v44;
  v45 = MEMORY[0x25F8CDFC0](v43);

  [v40 setAction_];

  v46 = *(*v39 + 216);
  v195[1] = v39;
  v47 = v46();
  if (*(v47 + 16))
  {
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
    v49 = v205;
    if (v50)
    {
      outlined init with copy of Any(*(v47 + 56) + 32 * v48, v221);

      if (swift_dynamicCast())
      {
        v51 = v219;
      }

      else
      {
        v51 = 2;
      }
    }

    else
    {

      v51 = 2;
    }
  }

  else
  {

    v51 = 2;
    v49 = v205;
  }

  v54 = (*(*v49 + 104))(v51);
  [v204 setIsDonatedBySiri_];
  v55 = v214;
  if (v214 >> 62)
  {
    if (v214 < 0)
    {
      v109 = v214;
    }

    else
    {
      v109 = v214 & 0xFFFFFFFFFFFFFF8;
    }

    v56 = MEMORY[0x25F8CE500](v109);
  }

  else
  {
    v56 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v199 = v6;
  v196 = v32;
  if (v56)
  {
    if ((v55 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x25F8CE460](0, v55);
      v57 = v58;
    }

    else
    {
      if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_121;
      }

      v57 = *(v55 + 32);
    }

    (*(*v57 + 120))(v221, v58);
    v59 = (*(*v57 + 216))([v204 setAppLaunchTimeInSecondsSince2001_]);
    if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v61 & 1) != 0))
    {
      outlined init with copy of Any(*(v59 + 56) + 32 * v60, v221);

      v62 = swift_dynamicCast();
      v63 = v62 == 0;
      if (v62)
      {
        v64 = v219;
      }

      else
      {
        v64 = 0;
      }

      if (v63)
      {
        v65 = 0;
      }

      else
      {
        v65 = v220;
      }
    }

    else
    {

      v64 = 0;
      v65 = 0;
    }

    v66 = v205;
    v67 = (*(*v205 + 128))(v64, v65);

    v68 = v204;
    v69 = (*(*v57 + 168))([v204 setAppFollowup_]);
    v70 = (*(*v66 + 136))(v69);

    [v68 setAppLaunchReason_];
  }

  else
  {
    [v204 setAppFollowup_];
  }

  v22 = 0;
  v6 = 2003789907;
  v221[0] = MEMORY[0x277D84F90];
  v32 = (a1 & 0xFFFFFFFFFFFFFF8);
  v12 = 0xE400000000000000;
  do
  {
    if (v218)
    {
      v71 = MEMORY[0x25F8CE460](v22, a1);
      v9 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v71 = *(a1 + 8 * v22 + 32);

      v9 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        if ((a1 & 0x8000000000000000) != 0)
        {
          v98 = a1;
        }

        else
        {
          v98 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v37 = MEMORY[0x25F8CE500](v98);
        if (!v37)
        {
          goto LABEL_102;
        }

        goto LABEL_8;
      }
    }

    if ((*(*v71 + 168))() == 2003789907 && v72 == 0xE400000000000000)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {

        goto LABEL_38;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_38:
    ++v22;
  }

  while (v9 != v37);
  v22 = 0;
  v214 = v221[0];
  v221[0] = MEMORY[0x277D84F90];
  do
  {
    if (v218)
    {
      v6 = MEMORY[0x25F8CE460](v22, a1);
      v9 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v6 = *(a1 + 8 * v22 + 32);

      v9 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_95;
      }
    }

    if ((*(*v6 + 168))() == 0x7261436563616C50 && v76 == 0xEC00000070615464)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {

        goto LABEL_55;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = *(v221[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75 = specialized ContiguousArray._endMutation()();
LABEL_55:
    ++v22;
  }

  while (v9 != v37);
  v37 = v221[0];
  v78 = (*v206 + 328);
  v9 = *v78;
  v6 = v78;
  v79 = (*v78)(v75);
  v80 = (*(*v79 + 104))(v79);

  v81 = v80 == 3;
  v12 = &selRef_recentCallStatus;
  v32 = v202;
  [v202 setIsSiriResultUseful_];
  a1 = v214;
  if ((v214 & 0x8000000000000000) == 0 && (v214 & 0x4000000000000000) == 0)
  {
    v82 = *(v214 + 16);
    goto LABEL_73;
  }

LABEL_118:
  v82 = MEMORY[0x25F8CE500](a1);
LABEL_73:
  v45 = v198;
  v83 = v216;
  v55 = &off_279A51000;
  if (!v82)
  {

    v95 = v204;
    [v204 setHasUserInitiatedFollowup_];
    [v32 setFollowup_];
    v96 = [v95 appFollowup];
    v91 = v200;
    if (v96 == 4)
    {
      v97 = v9([v32 *(v12 + 688)]);
      (*(*v97 + 112))(4);
    }

    goto LABEL_134;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_121:
    v22 = MEMORY[0x25F8CE460](0, a1);
LABEL_77:

    [v204 setHasUserInitiatedFollowup_];
    v84 = [objc_allocWithZone(MEMORY[0x277D5A1D0]) *(v55 + 3488)];
    if (!v84)
    {

      v91 = v200;
      v32 = v202;
      goto LABEL_133;
    }

    a1 = v84;
    [v84 setFollowupType_];
    if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
    {
      goto LABEL_123;
    }

    if (*(v37 + 16))
    {
      goto LABEL_81;
    }

LABEL_124:

    v111 = (*(*v22 + 168))(v110);
    v112 = (*(*v205 + 168))(v111);

    v113 = (*(*v22 + 216))([a1 setMapsAction_]);
    if (*(v113 + 16))
    {
      v114 = specialized __RawDictionaryStorage.find<A>(_:)(0x79546E6F69746361, 0xEA00000000006570);
      v91 = v200;
      if (v115)
      {
        outlined init with copy of Any(*(v113 + 56) + 32 * v114, v221);

        if (swift_dynamicCast())
        {
          v94 = MEMORY[0x25F8CDFC0](v219, v220);

LABEL_131:
          [a1 setMapsActionType_];
          goto LABEL_132;
        }
      }

      else
      {
      }
    }

    else
    {

      v91 = v200;
    }

    v94 = 0;
    goto LABEL_131;
  }

  if (*(a1 + 16))
  {
    v22 = *(a1 + 32);

    goto LABEL_77;
  }

  __break(1u);
LABEL_123:
  if (!MEMORY[0x25F8CE500](v37))
  {
    goto LABEL_124;
  }

LABEL_81:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v85 = v9;
    v86 = MEMORY[0x25F8CE460](0, v37);
    goto LABEL_84;
  }

  if (*(v37 + 16))
  {
    v85 = v9;
    v86 = *(v37 + 32);

LABEL_84:

    v88 = (*(*v86 + 168))(v87);
    v89 = (*(*v205 + 168))(v88);

    v90 = (*(*v86 + 216))([a1 setMapsAction_]);
    v91 = v200;
    if (*(v90 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(0x79546E6F69746361, 0xEA00000000006570), (v93 & 1) != 0))
    {
      outlined init with copy of Any(*(v90 + 56) + 32 * v92, v221);

      if (swift_dynamicCast())
      {
        v94 = MEMORY[0x25F8CDFC0](v219, v220);

        goto LABEL_93;
      }
    }

    else
    {
    }

    v94 = 0;
LABEL_93:
    [a1 setMapsActionType_];

    v9 = v85;
LABEL_132:

    v116 = a1;
    v32 = v202;
    [v202 setFollowup_];

LABEL_133:
    v83 = v216;
LABEL_134:
    v214 = v6;
    v117 = v201;
    [v201 setCommonSignal_];
    [v117 setMapsSignal_];
    v118 = v203;
    UUID.init()();
    v119 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v121 = [v119 initWithNSUUID_];

    v218 = *(v83 + 8);
    v218(v118, v45);
    [v91 setPseId_];

    (*(*v206 + 160))();
    v122 = v211;
    UUID.init(uuidString:)();

    v123 = *(v83 + 48);
    v124 = v123(v122, 1, v45);
    v216 = v83 + 8;
    if (v124 == 1)
    {
      v125 = outlined destroy of UUID?(v122);
    }

    else
    {
      v126 = v208;
      (*(v83 + 32))(v208, v122, v45);
      v127 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v128 = UUID._bridgeToObjectiveC()().super.isa;
      v129 = [v127 initWithNSUUID_];

      [v91 setUiSessionId_];
      v125 = (v218)(v126, v45);
    }

    v130 = ((*(*v206 + 208))(v125) + 16);
    v131 = MEMORY[0x277D616A8];
    if (*v130)
    {

      v132 = v210;
      UUID.init(uuidString:)();

      if (v123(v132, 1, v45) == 1)
      {
        outlined destroy of UUID?(v132);
        goto LABEL_141;
      }

      v149 = v132;
      v150 = v207;
      (*(v83 + 32))(v207, v149, v45);
      v151 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v152 = UUID._bridgeToObjectiveC()().super.isa;
      v153 = [v151 initWithNSUUID_];

      [v91 setOriginalLastRequestId_];
      v147 = (v218)(v150, v45);
      v143 = v213;
      v148 = v195[0];
    }

    else
    {

LABEL_141:
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v133 = v195[0];
      v134 = type metadata accessor for Logger();
      __swift_project_value_buffer(v134, static Logger.engagement);
      v135 = *MEMORY[0x277D615E0];
      v136 = type metadata accessor for EngagementSignalCollectionError();
      v137 = v215;
      (*(*(v136 - 8) + 104))(v215, v135, v136);
      (*(v199 + 104))(v137, *v131, v217);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v221[0] = v141;
        *v140 = 136315138;
        *(v140 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, v221);
        _os_log_impl(&dword_25ECEC000, v138, v139, "%s", v140, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v141);
        v142 = v141;
        v45 = v198;
        MEMORY[0x25F8CEE50](v142, -1, -1);
        MEMORY[0x25F8CEE50](v140, -1, -1);
      }

      v143 = v213;
      type metadata accessor for SiriTaskEngagementUtils();
      v144 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v145 = v215;
      MEMORY[0x25F8CDB30](v215, v144, v146);

      v147 = (*(v199 + 8))(v145, v217);
      v91 = v200;
      v148 = v133;
    }

    (*(*v206 + 184))(v147);
    UUID.init(uuidString:)();

    if (v123(v143, 1, v45) == 1)
    {
      outlined destroy of UUID?(v143);
      v154 = v217;
      v155 = v199;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v156 = type metadata accessor for Logger();
      __swift_project_value_buffer(v156, static Logger.engagement);
      v157 = *MEMORY[0x277D615C8];
      v158 = type metadata accessor for EngagementSignalCollectionError();
      v159 = v212;
      (*(*(v158 - 8) + 104))(v212, v157, v158);
      (*(v155 + 104))(v159, *MEMORY[0x277D616A8], v154);
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v221[0] = v163;
        *v162 = 136315138;
        *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, v221);
        _os_log_impl(&dword_25ECEC000, v160, v161, "%s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v163);
        v164 = v163;
        v45 = v198;
        MEMORY[0x25F8CEE50](v164, -1, -1);
        MEMORY[0x25F8CEE50](v162, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v165 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v166 = v212;
      MEMORY[0x25F8CDB30](v212, v165, v167);

      v168 = (*(v155 + 8))(v166, v154);
      v169 = v196;
    }

    else
    {
      v170 = v209;
      (*(v83 + 32))(v209, v143, v45);
      v171 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v172 = UUID._bridgeToObjectiveC()().super.isa;
      v173 = [v171 initWithNSUUID_];

      [v91 setTaskId_];
      v168 = (v218)(v170, v45);
      v154 = v217;
      v155 = v199;
      v169 = v196;
    }

    v174 = v148(v168);
    v175 = (*(*v174 + 104))(v174);

    v176 = v205;
    v177 = [v91 setSiriEngagementTaskSuccess_];
    [v91 setTriggerOrigin_];
    [v169 setEventMetadata_];
    v178 = v169;
    [v169 setMapsSignalGenerated_];
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v179 = type metadata accessor for Logger();
    __swift_project_value_buffer(v179, static Logger.engagement);
    v180 = *MEMORY[0x277D61610];
    v181 = type metadata accessor for SELFPSELogged();
    v182 = v197;
    (*(*(v181 - 8) + 104))(v197, v180, v181);
    v183 = v182;
    (*(v155 + 104))(v182, *MEMORY[0x277D61658], v154);
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v221[0] = v187;
      *v186 = 136315138;
      *(v186 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x800000025ED81440, v221);
      _os_log_impl(&dword_25ECEC000, v184, v185, "%s", v186, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v187);
      v188 = v187;
      v45 = v198;
      MEMORY[0x25F8CEE50](v188, -1, -1);
      MEMORY[0x25F8CEE50](v186, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v189 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v183, v189, v190);

    (*(v155 + 8))(v183, v154);
    v191 = [objc_opt_self() sharedAnalytics];
    v192 = [v191 defaultMessageStream];

    v193 = v203;
    UUID.init()();
    v194 = UUID._bridgeToObjectiveC()().super.isa;
    v218(v193, v45);
    [v192 emitMessage:v178 isolatedStreamUUID:v194];
  }

  else
  {
    __break(1u);
  }
}

uint64_t PSEGeoSELFEmitter.getFollowupType(firstShowSignal:)(uint64_t a1)
{
  (*(*a1 + 120))(v2);
  if (*&v2[1] <= 3.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t PSEGeoSELFEmitter.getPSEMapsAction(mapsAction:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697461676976614ELL && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x7261436563616C50 && a2 == 0xEC00000070615464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 2003789907 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x694C746C75736552 && a2 == 0xED00007061547473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x61437463656C6553 && a2 == 0xEE0079726F676574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  result = 6;
  if (a1 != 0x686372616553 || a2 != 0xE600000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *Constants.defaultParameters.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultParameters != -1)
  {
    swift_once();
  }

  return &static Constants.defaultParameters;
}

uint64_t static PSEStruct.pseTriggerOrigin.getter()
{
  swift_beginAccess();
  v0 = static PSEStruct.pseTriggerOrigin;

  return v0;
}

uint64_t static PSEStruct.pseTriggerOrigin.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  static PSEStruct.pseTriggerOrigin = a1;
  qword_280FEE450 = a2;
}

uint64_t key path setter for static PSEStruct.pseTriggerOrigin : PSEStruct.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static PSEStruct.pseTriggerOrigin = v2;
  qword_280FEE450 = v1;
}

uint64_t one-time initialization function for defaultParameters()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for defaultParameters);
  result = outlined destroy of (String, [String])(&unk_2870DF7C8);
  static Constants.defaultParameters = v0;
  return result;
}

uint64_t static Constants.defaultParameters.getter()
{
  if (one-time initialization token for defaultParameters != -1)
  {
    swift_once();
  }
}

uint64_t outlined destroy of (String, [String])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  v4 = a1[6];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(*v2 + 88);
    v7 = (v4 + 40);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      if (v6(v8))
      {

        MEMORY[0x25F8CE160](v10);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v11 = a1[7];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(*v2 + 96);
    v14 = (v11 + 40);
    do
    {
      v15 = *v14;
      v16 = *(v14 - 1);
      if (v13(v15))
      {

        MEMORY[0x25F8CE160](v17);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v14 += 2;
      --v12;
    }

    while (v12);
  }

  v18 = a1[8];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(*v2 + 104);
    v21 = (v18 + 40);
    do
    {
      v22 = *v21;
      v23 = *(v21 - 1);
      if (v20(v22))
      {

        MEMORY[0x25F8CE160](v24);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v21 += 2;
      --v19;
    }

    while (v19);
  }

  v25 = a1[9];
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(*v2 + 112);
    v28 = (v25 + 40);
    do
    {
      v29 = *v28;
      v30 = *(v28 - 1);
      if (v27(v29))
      {

        MEMORY[0x25F8CE160](v31);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v28 += 2;
      --v26;
    }

    while (v26);
  }

  v32 = a1[10];
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = *(*v2 + 120);
    v35 = (v32 + 40);
    do
    {
      v36 = *v35;
      v37 = *(v35 - 1);
      if (v34(v36))
      {

        MEMORY[0x25F8CE160](v38);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v35 += 2;
      --v33;
    }

    while (v33);
  }

  v39 = a1[11];
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = *(*v2 + 128);
    v42 = (v39 + 40);
    do
    {
      v43 = *v42;
      v44 = *(v42 - 1);
      if (v41(v43))
      {

        MEMORY[0x25F8CE160](v45);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v42 += 2;
      --v40;
    }

    while (v40);
  }

  v46 = a1[12];
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = *(*v2 + 136);
    v49 = (v46 + 40);
    do
    {
      v50 = *v49;
      v51 = *(v49 - 1);
      if (v48(v50))
      {

        MEMORY[0x25F8CE160](v52);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v49 += 2;
      --v47;
    }

    while (v47);
  }

  v53 = a1[13];
  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = *(*v2 + 144);
    v56 = (v53 + 40);
    do
    {
      v57 = *v56;
      v58 = *(v56 - 1);
      if (v55(v57))
      {

        MEMORY[0x25F8CE160](v59);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v56 += 2;
      --v54;
    }

    while (v54);
  }

  v60 = a1[14];
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *(*v2 + 152);
    v63 = (v60 + 40);
    do
    {
      v64 = *v63;
      v65 = *(v63 - 1);
      if (v62(v64))
      {

        MEMORY[0x25F8CE160](v66);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v69;
      }

      else
      {
      }

      v63 += 2;
      --v61;
    }

    while (v61);
  }

  *a2 = v3;
  a2[1] = MEMORY[0x277D84F90];
}

uint64_t PhotosSignalFactory.convertPhotosEngagementEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4, uint64_t a5, double a6)
{
  v73 = a4;
  v74 = a5;
  v71 = a3;
  v72 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v79 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v8 + 56))(v22, 0, 1, v7);
  v23 = *(v8 + 16);
  v23(v16, a2, v7);
  v24 = type metadata accessor for SiriUISession(0);
  v23(v14, a2 + *(v24 + 20), v7);
  outlined init with copy of Date?(v22, v20);
  v25 = (*(v8 + 48))(v20, 1, v7);
  if (v25 == 1)
  {
    v39 = *(v8 + 8);
    v39(v14, v7);
    v39(v16, v7);
    outlined destroy of Date?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v37 = 0x3FF0000000000000;
    v27 = 0;
    v31 = 0.0;
    v38 = 0.0;
  }

  else
  {
    (*(v8 + 32))(v11, v20, v7);
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = v26;
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v28;
    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v29 - v30;
    Date.timeIntervalSinceReferenceDate.getter();
    v33 = v32;
    Date.timeIntervalSinceReferenceDate.getter();
    v35 = v34;
    v36 = *(v8 + 8);
    v36(v11, v7);
    v36(v14, v7);
    v36(v16, v7);
    outlined destroy of Date?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v37 = 0;
    v38 = v33 - v35;
  }

  v40 = v72;
  v41 = [v72 identifier];
  v42 = MEMORY[0x277D837D0];
  if (v41)
  {
    v43 = v41;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v78 = v42;
    *&v77 = v44;
    *(&v77 + 1) = v46;
    outlined init with take of Any(&v77, v76);
    v47 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v47;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 0xD000000000000010, 0x800000025ED807D0, isUniquelyReferenced_nonNull_native);
    v49 = v75;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000025ED807D0, &v77);
    outlined destroy of Date?(&v77, &_sypSgMd, &_sypSgMR);
    v49 = v79;
  }

  v50 = [v40 type];
  v51 = v71(v50);
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v78 = v42;
  *&v77 = v52;
  *(&v77 + 1) = v54;
  outlined init with take of Any(&v77, v76);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v49;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 0x7954797469746E65, 0xEA00000000006570, v55);
  v56 = v75;
  v79 = v75;
  v57 = [v40 subset];
  if (v57)
  {
    v58 = v57;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v78 = v42;
    *&v77 = v59;
    *(&v77 + 1) = v61;
    outlined init with take of Any(&v77, v76);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 0x746573627573, 0xE600000000000000, v62);
    v63 = v75;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x746573627573, 0xE600000000000000, &v77);
    outlined destroy of Date?(&v77, &_sypSgMd, &_sypSgMR);
    v63 = v79;
  }

  v64 = MEMORY[0x277D839B0];
  v78 = MEMORY[0x277D839B0];
  LOBYTE(v77) = 0;
  outlined init with take of Any(&v77, v76);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v63;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 0x42646574616E6F64, 0xED00006972695379, v65);
  v66 = v75;
  v78 = v64;
  LOBYTE(v77) = 1;
  outlined init with take of Any(&v77, v76);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v66;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 0xD000000000000016, 0x800000025ED7E770, v67);
  v68 = v75;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v27;
  *(result + 24) = v31;
  *(result + 32) = v38;
  *(result + 40) = 0;
  *(result + 48) = v37;
  *(result + 56) = v25 != 1;
  *(result + 64) = 0x6E65746E49707041;
  *(result + 72) = 0xE900000000000074;
  v70 = v74;
  *(result + 80) = v73;
  *(result + 88) = v70;
  *(result + 96) = 1;
  *(result + 104) = v68;
  return result;
}

uint64_t PhotosSignalFactory.convertPhotoMemoriesViewedEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2, double a3)
{
  v64 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v69 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v5 + 56))(v19, 0, 1, v4);
  v20 = *(v5 + 16);
  v20(v13, a2, v4);
  v21 = type metadata accessor for SiriUISession(0);
  v20(v11, a2 + *(v21 + 20), v4);
  outlined init with copy of Date?(v19, v17);
  v22 = (*(v5 + 48))(v17, 1, v4);
  if (v22 == 1)
  {
    v36 = *(v5 + 8);
    v36(v11, v4);
    v36(v13, v4);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = 0x3FF0000000000000;
    v24 = 0;
    v28 = 0.0;
    v35 = 0.0;
  }

  else
  {
    (*(v5 + 32))(v8, v17, v4);
    Date.timeIntervalSinceReferenceDate.getter();
    v24 = v23;
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v26 - v27;
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    v33 = *(v5 + 8);
    v33(v8, v4);
    v33(v11, v4);
    v33(v13, v4);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = 0;
    v35 = v30 - v32;
  }

  v37 = v64;
  v38 = [v64 identifier];
  v39 = MEMORY[0x277D837D0];
  if (v38)
  {
    v40 = v38;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v68 = v39;
    *&v67 = v41;
    *(&v67 + 1) = v43;
    outlined init with take of Any(&v67, v66);
    v44 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v44;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0xD000000000000010, 0x800000025ED807D0, isUniquelyReferenced_nonNull_native);
    v46 = v65;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000025ED807D0, &v67);
    outlined destroy of Date?(&v67, &_sypSgMd, &_sypSgMR);
    v46 = v69;
  }

  v47 = v22 != 1;
  [v37 viewedDurationBucket];
  v48 = BMPhotosMemoriesViewedDurationAsString();
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v68 = v39;
  *&v67 = v49;
  *(&v67 + 1) = v51;
  outlined init with take of Any(&v67, v66);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v46;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0x6E6F697461727564, 0xE800000000000000, v52);
  v53 = v65;
  v54 = [v37 watchedToEnd];
  v55 = MEMORY[0x277D839B0];
  v68 = MEMORY[0x277D839B0];
  LOBYTE(v67) = v54;
  outlined init with take of Any(&v67, v66);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v53;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0x5464656863746177, 0xEC000000646E456FLL, v56);
  v57 = v65;
  v68 = v55;
  LOBYTE(v67) = 0;
  outlined init with take of Any(&v67, v66);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0x42646574616E6F64, 0xED00006972695379, v58);
  v59 = v65;
  v68 = v55;
  LOBYTE(v67) = 1;
  outlined init with take of Any(&v67, v66);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0xD000000000000016, 0x800000025ED7E770, v60);
  v61 = v65;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v24;
  *(result + 24) = v28;
  *(result + 32) = v35;
  *(result + 40) = 0;
  *(result + 48) = v34;
  *(result + 56) = v47;
  *(result + 64) = 0x6E65746E49707041;
  *(result + 72) = 0xE900000000000074;
  *(result + 80) = 0xD000000000000014;
  *(result + 88) = 0x800000025ED81520;
  *(result + 96) = 1;
  *(result + 104) = v61;
  return result;
}

uint64_t PhotosSignalFactory.convertPhotoMemoriesSharedEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2, double a3)
{
  v64 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v69 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v5 + 56))(v19, 0, 1, v4);
  v20 = *(v5 + 16);
  v20(v13, a2, v4);
  v21 = type metadata accessor for SiriUISession(0);
  v20(v11, a2 + *(v21 + 20), v4);
  outlined init with copy of Date?(v19, v17);
  v22 = (*(v5 + 48))(v17, 1, v4);
  if (v22 == 1)
  {
    v36 = *(v5 + 8);
    v36(v11, v4);
    v36(v13, v4);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = 0x3FF0000000000000;
    v24 = 0;
    v28 = 0.0;
    v35 = 0.0;
  }

  else
  {
    (*(v5 + 32))(v8, v17, v4);
    Date.timeIntervalSinceReferenceDate.getter();
    v24 = v23;
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v26 - v27;
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    v33 = *(v5 + 8);
    v33(v8, v4);
    v33(v11, v4);
    v33(v13, v4);
    outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = 0;
    v35 = v30 - v32;
  }

  v37 = [v64 identifier];
  v38 = MEMORY[0x277D837D0];
  if (v37)
  {
    v39 = v37;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v68 = v38;
    *&v67 = v40;
    *(&v67 + 1) = v42;
    outlined init with take of Any(&v67, v66);
    v43 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v43;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0xD000000000000010, 0x800000025ED807D0, isUniquelyReferenced_nonNull_native);
    v45 = v65;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000025ED807D0, &v67);
    outlined destroy of Date?(&v67, &_sypSgMd, &_sypSgMR);
    v45 = v69;
  }

  v46 = v64;
  v47 = [v64 isThirdPartyShareDestination];
  v48 = MEMORY[0x277D839B0];
  v68 = MEMORY[0x277D839B0];
  LOBYTE(v67) = v47;
  outlined init with take of Any(&v67, v66);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v45;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0xD00000000000001CLL, 0x800000025ED80DB0, v49);
  v50 = v65;
  v69 = v65;
  v51 = [v46 subset];
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v68 = v38;
    *&v67 = v53;
    *(&v67 + 1) = v55;
    outlined init with take of Any(&v67, v66);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0x746573627573, 0xE600000000000000, v56);
    v57 = v65;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x746573627573, 0xE600000000000000, &v67);
    outlined destroy of Date?(&v67, &_sypSgMd, &_sypSgMR);
    v57 = v69;
  }

  v68 = v48;
  LOBYTE(v67) = 0;
  outlined init with take of Any(&v67, v66);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0x42646574616E6F64, 0xED00006972695379, v58);
  v59 = v65;
  v68 = v48;
  LOBYTE(v67) = 1;
  outlined init with take of Any(&v67, v66);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 0xD000000000000016, 0x800000025ED7E770, v60);
  v61 = v65;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v24;
  *(result + 24) = v28;
  *(result + 32) = v35;
  *(result + 40) = 0;
  *(result + 48) = v34;
  *(result + 56) = v22 != 1;
  *(result + 64) = 0x6E65746E49707041;
  *(result + 72) = 0xE900000000000074;
  *(result + 80) = 0xD000000000000013;
  *(result + 88) = 0x800000025ED81540;
  *(result + 96) = 1;
  *(result + 104) = v61;
  return result;
}

uint64_t dispatch thunk of PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

void PSEAlarmSELFEmitter.emitPSEAlarm(alarmSignals:appLaunchSignals:task:)(uint64_t a1, unint64_t a2, void *a3)
{
  v202 = a1;
  v203 = a3;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v198 = v180 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v195 = v180 - v13;
  MEMORY[0x28223BE20](v12);
  v199 = v180 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v196 = v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v197 = v180 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v180 - v20;
  v22 = type metadata accessor for UUID();
  v200 = *(v22 - 8);
  v201 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v194 = v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v193 = v180 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (v180 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = v180 - v30;
  v32 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v32)
  {
    v33 = v32;
    v192 = v31;
    v34 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v34)
    {
      v35 = v34;
      v191 = [objc_allocWithZone(MEMORY[0x277D5A168]) init];
      if (v191)
      {
        v190 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v190)
        {
          v188 = v3;
          v36 = [objc_allocWithZone(MEMORY[0x277D5A160]) init];
          if (v36)
          {
            v37 = v36;
            v38 = v202;
            v39 = (v202 >> 62);
            if (v202 >> 62)
            {
              if (v202 < 0)
              {
                v168 = v202;
              }

              else
              {
                v168 = v202 & 0xFFFFFFFFFFFFFF8;
              }

              v187 = (v202 >> 62);
              v169 = MEMORY[0x25F8CE500](v168);
              v39 = v187;
              if (v169)
              {
LABEL_8:
                v184 = v38 & 0xC000000000000001;
                v185 = v37;
                v187 = v39;
                if ((v38 & 0xC000000000000001) != 0)
                {
                  v41 = MEMORY[0x25F8CE460](0, v38);
                  v40 = v41;
                }

                else
                {
                  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_106;
                  }

                  v40 = *(v38 + 32);
                }

                v189 = v40;
                (*(*v40 + 120))(&v206, v41);
                v42 = v190;
                v43 = (*(*v40 + 144))([v190 setEventDonationTimeInSecondsSince2001_]);
                v44 = MEMORY[0x25F8CDFC0](v43);

                [v42 setDomain_];

                v45 = (*(*v189 + 168))();
                v46 = MEMORY[0x25F8CDFC0](v45);

                [v42 setAction_];

                v47 = (*(*v189 + 216))();
                if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v49 & 1) != 0))
                {
                  outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v206);

                  if (swift_dynamicCast())
                  {
                    v50 = v204;
                  }

                  else
                  {
                    v50 = 2;
                  }
                }

                else
                {

                  v50 = 2;
                }

                v52 = v185;
                v53 = (*(*v188 + 104))(v50);
                [v190 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if ((a2 & 0x8000000000000000) != 0)
                  {
                    v179 = a2;
                  }

                  else
                  {
                    v179 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  v54 = MEMORY[0x25F8CE500](v179);
                }

                else
                {
                  v54 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v54)
                {
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v57 = MEMORY[0x25F8CE460](0, a2);
                    v56 = v57;
                    v55 = v188;
                  }

                  else
                  {
                    v55 = v188;
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_109;
                    }

                    v56 = *(a2 + 32);
                  }

                  (*(*v56 + 120))(&v206, v57);
                  v58 = (*(*v56 + 216))([v190 setAppLaunchTimeInSecondsSince2001_]);
                  v59 = *(v58 + 16);
                  v180[0] = v5;
                  if (v59 && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v61 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v58 + 56) + 32 * v60, &v206);

                    v62 = swift_dynamicCast();
                    v63 = v204;
                    if (!v62)
                    {
                      v63 = 0;
                    }

                    v182 = v63;
                    if (v62)
                    {
                      v64 = v205;
                    }

                    else
                    {
                      v64 = 0;
                    }
                  }

                  else
                  {

                    v182 = 0;
                    v64 = 0;
                  }

                  v183 = v56;
                  v65 = v203 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
                  v66 = (*(*v203 + 256))();
                  v67 = v66[2];
                  v186 = v65;
                  if (v67)
                  {
                    v68 = v66[5];
                    v181 = v66[4];
                  }

                  else
                  {
                    v181 = 0;
                    v68 = 0;
                  }

                  v73 = (*(*v55 + 120))(v182, v64, v181, v68);

                  v74 = v190;
                  v75 = [v190 setAppFollowup_];
                  v76 = (*(*v183 + 168))(v75);
                  v77 = (*(*v55 + 136))(v76);
                  v69 = v74;

                  [v74 setAppLaunchReason_];

                  v52 = v185;
                  v71 = v203;
                  v72 = v186;
                  v5 = v180[0];
                }

                else
                {
                  v69 = v190;
                  v70 = [v190 setAppFollowup_];
                  v71 = v203;
                  v72 = v203 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
                }

                v78 = *v71;
                v186 = v72;
                v181 = *(v78 + 328);
                v180[1] = v78 + 328;
                v79 = v181(v70);
                v80 = (*(*v79 + 104))(v79);

                [v52 setIsSiriResultUseful_];
                if (v187)
                {
                  v82 = v202;
                  if (v202 < 0)
                  {
                    v84 = v202;
                  }

                  else
                  {
                    v84 = v202 & 0xFFFFFFFFFFFFFF8;
                  }

                  v83 = MEMORY[0x25F8CE500](v84);
                }

                else
                {
                  v82 = v202;
                  v83 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v187 = v35;
                v85 = v192;
                if (v83 >= 2)
                {
                  if (v184)
                  {
                    v86 = MEMORY[0x25F8CE460](1, v82);
                  }

                  else
                  {
                    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                    {
                      __break(1u);
                      return;
                    }

                    v86 = *(v82 + 40);
                  }

                  (*(*v86 + 120))(&v206);

                  v81 = v207;
                  if (v207 <= 30.0)
                  {
                    if (v184)
                    {
                      v87 = MEMORY[0x25F8CE460](1, v202, v207);
                    }

                    else
                    {
                      v87 = *(v202 + 40);
                    }

                    v88 = (*(*v87 + 216))();

                    if (*(v88 + 16) && (v89 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v90 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v88 + 56) + 32 * v89, &v206);

                      if (swift_dynamicCast())
                      {
                        v91 = v202;
                        if ((v204 & 1) == 0)
                        {
                          [v69 setHasUserInitiatedFollowup_];
                          if (v184)
                          {
                            v92 = MEMORY[0x25F8CE460](1, v91);
                          }

                          else
                          {
                            v92 = *(v91 + 40);
                          }

                          v166 = (*(*v188 + 160))(v189, v92);

                          [v52 setFollowUpType_];
LABEL_61:
                          v93 = v191;
                          [v191 setCommonSignal_];
                          [v93 setAlarmSignal_];
                          UUID.init()();
                          v94 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          isa = UUID._bridgeToObjectiveC()().super.isa;
                          v96 = [v94 initWithNSUUID_];

                          v97 = v200;
                          v98 = v200 + 8;
                          v99 = v85;
                          v35 = v201;
                          v202 = *(v200 + 8);
                          (v202)(v99, v201);
                          [v187 setPseId_];

                          (*(*v203 + 160))();
                          UUID.init(uuidString:)();

                          v100 = *(v97 + 48);
                          v183 = v97 + 48;
                          v182 = v100;
                          v101 = v100(v21, 1, v35);
                          v184 = v98;
                          if (v101 == 1)
                          {
                            v102 = outlined destroy of UUID?(v21);
                            v103 = v197;
                            v104 = v202;
                          }

                          else
                          {
                            (*(v97 + 32))(v29, v21, v35);
                            v105 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            v106 = UUID._bridgeToObjectiveC()().super.isa;
                            v107 = [v105 initWithNSUUID_];

                            [v187 setUiSessionId_];
                            v108 = v202;
                            v102 = (v202)(v29, v35);
                            v103 = v197;
                            v104 = v108;
                          }

                          v109 = ((*(*v203 + 208))(v102) + 16);
                          v29 = MEMORY[0x277D616A8];
                          if (*v109)
                          {

                            v35 = v201;

                            UUID.init(uuidString:)();

                            if (v182(v103, 1, v35) != 1)
                            {
                              v124 = v193;
                              (*(v200 + 32))(v193, v103, v35);
                              v125 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                              v126 = UUID._bridgeToObjectiveC()().super.isa;
                              v127 = [v125 initWithNSUUID_];

                              [v187 setOriginalLastRequestId_];
                              v123 = v104(v124, v35);
                              v119 = v196;
                              goto LABEL_74;
                            }

                            outlined destroy of UUID?(v103);
                          }

                          else
                          {
                          }

                          if (one-time initialization token for engagement != -1)
                          {
                            swift_once();
                          }

                          v110 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v110, static Logger.engagement);
                          v111 = *MEMORY[0x277D615E0];
                          v112 = type metadata accessor for EngagementSignalCollectionError();
                          v113 = v199;
                          (*(*(v112 - 8) + 104))(v199, v111, v112);
                          (*(v6 + 104))(v113, *v29, v5);
                          v114 = Logger.logObject.getter();
                          v115 = static os_log_type_t.debug.getter();
                          if (os_log_type_enabled(v114, v115))
                          {
                            v116 = swift_slowAlloc();
                            v117 = swift_slowAlloc();
                            v206 = *&v117;
                            *v116 = 136315138;
                            *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v206);
                            _os_log_impl(&dword_25ECEC000, v114, v115, "%s", v116, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v117);
                            v118 = v117;
                            v35 = v201;
                            MEMORY[0x25F8CEE50](v118, -1, -1);
                            MEMORY[0x25F8CEE50](v116, -1, -1);
                          }

                          v119 = v196;
                          type metadata accessor for SiriTaskEngagementUtils();
                          v120 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                          v121 = v199;
                          MEMORY[0x25F8CDB30](v199, v120, v122);

                          v123 = (*(v6 + 8))(v121, v5);
                          v104 = v202;
LABEL_74:
                          (*(*v203 + 184))(v123);
                          UUID.init(uuidString:)();

                          if (v182(v119, 1, v35) != 1)
                          {
                            v143 = v194;
                            (*(v200 + 32))(v194, v119, v35);
                            v144 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            v145 = UUID._bridgeToObjectiveC()().super.isa;
                            v146 = [v144 initWithNSUUID_];

                            v142 = v187;
                            [v187 setTaskId_];

                            v141 = v104(v143, v35);
                            a2 = v198;
                            v21 = 0xD000000000000024;
                            v138 = v181;
                            goto LABEL_80;
                          }

                          outlined destroy of UUID?(v119);
                          a2 = v198;
                          if (one-time initialization token for engagement == -1)
                          {
LABEL_76:
                            v128 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v128, static Logger.engagement);
                            v129 = *MEMORY[0x277D615C8];
                            v130 = type metadata accessor for EngagementSignalCollectionError();
                            v131 = v195;
                            (*(*(v130 - 8) + 104))(v195, v129, v130);
                            (*(v6 + 104))(v131, *v29, v5);
                            v132 = Logger.logObject.getter();
                            v133 = static os_log_type_t.debug.getter();
                            if (os_log_type_enabled(v132, v133))
                            {
                              v134 = swift_slowAlloc();
                              v135 = swift_slowAlloc();
                              v206 = *&v135;
                              *v134 = 136315138;
                              *(v134 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v206);
                              _os_log_impl(&dword_25ECEC000, v132, v133, "%s", v134, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v135);
                              v136 = v135;
                              v35 = v201;
                              MEMORY[0x25F8CEE50](v136, -1, -1);
                              v137 = v134;
                              v131 = v195;
                              MEMORY[0x25F8CEE50](v137, -1, -1);
                            }

                            v138 = v181;
                            type metadata accessor for SiriTaskEngagementUtils();
                            v139 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                            MEMORY[0x25F8CDB30](v131, v139, v140);

                            v141 = (*(v6 + 8))(v131, v5);
                            v142 = v187;
                            v21 = 0xD000000000000024;
LABEL_80:
                            v147 = v138(v141);
                            v148 = (*(*v147 + 104))(v147);

                            v149 = v188;
                            v150 = [v142 setSiriEngagementTaskSuccess_];
                            [v142 setTriggerOrigin_];
                            [v33 setEventMetadata_];
                            v37 = v191;
                            [v33 setAlarmSignalGenerated_];
                            if (one-time initialization token for engagement == -1)
                            {
LABEL_81:
                              v151 = type metadata accessor for Logger();
                              __swift_project_value_buffer(v151, static Logger.engagement);
                              v152 = *MEMORY[0x277D61618];
                              v153 = type metadata accessor for SELFPSELogged();
                              (*(*(v153 - 8) + 104))(a2, v152, v153);
                              (*(v6 + 104))(a2, *MEMORY[0x277D61658], v5);
                              v154 = Logger.logObject.getter();
                              v155 = static os_log_type_t.debug.getter();
                              if (os_log_type_enabled(v154, v155))
                              {
                                v156 = swift_slowAlloc();
                                v157 = swift_slowAlloc();
                                v206 = *&v157;
                                *v156 = 136315138;
                                *(v156 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)((v21 + 17), 0x800000025ED815C0, &v206);
                                _os_log_impl(&dword_25ECEC000, v154, v155, "%s", v156, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0(v157);
                                v158 = v157;
                                v35 = v201;
                                MEMORY[0x25F8CEE50](v158, -1, -1);
                                v159 = v156;
                                v37 = v191;
                                MEMORY[0x25F8CEE50](v159, -1, -1);
                              }

                              type metadata accessor for SiriTaskEngagementUtils();
                              v160 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                              MEMORY[0x25F8CDB30](a2, v160, v161);

                              (*(v6 + 8))(a2, v5);
                              v162 = [objc_opt_self() sharedAnalytics];
                              v163 = [v162 defaultMessageStream];

                              v164 = v192;
                              UUID.init()();
                              v165 = UUID._bridgeToObjectiveC()().super.isa;
                              (v202)(v164, v35);
                              [v163 emitMessage:v33 isolatedStreamUUID:v165];

                              return;
                            }

LABEL_106:
                            swift_once();
                            goto LABEL_81;
                          }

LABEL_109:
                          swift_once();
                          goto LABEL_76;
                        }
                      }
                    }

                    else
                    {
                    }
                  }
                }

                [v69 setHasUserInitiatedFollowup_];
                goto LABEL_61;
              }
            }

            else if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_8;
            }

            v33 = v190;
          }

          else
          {
            v37 = v33;
            v33 = v35;
            v35 = v190;
          }

          v51 = v35;

          v35 = v191;
        }

        else
        {
          v51 = v191;
        }

        v33 = v35;
        v35 = v51;
      }

      v33 = v35;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v170 = type metadata accessor for Logger();
  __swift_project_value_buffer(v170, static Logger.engagement);
  v171 = *MEMORY[0x277D615B0];
  v172 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v172 - 8) + 104))(v9, v171, v172);
  (*(v6 + 104))(v9, *MEMORY[0x277D616A8], v5);
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v206 = *&v176;
    *v175 = 136315138;
    *(v175 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000025ED81590, &v206);
    _os_log_impl(&dword_25ECEC000, v173, v174, "%s", v175, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v176);
    MEMORY[0x25F8CEE50](v176, -1, -1);
    MEMORY[0x25F8CEE50](v175, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v177 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v9, v177, v178);

  (*(v6 + 8))(v9, v5);
}

uint64_t PSEAlarmSELFEmitter.getPSEAlarmFollowupAction(siriAlarm:userAlarm:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 168);
  v38 = v4();
  v39 = v5;
  v40 = 0x657461647055;
  v41 = 0xE600000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.contains<A>(_:)();

  if (v6)
  {
    v8 = (*(*a2 + 216))(v7);
    if (!*(v8 + 16))
    {
      goto LABEL_33;
    }

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
    if ((v10 & 1) == 0)
    {
      goto LABEL_33;
    }

    outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v38);

    v11 = swift_dynamicCast();
    if ((v11 & 1) == 0)
    {
      return 2;
    }

    v14 = v40;
    v13 = v41;
    v15 = (*(*a1 + 216))(v11, v12);
    if (*(v15 + 16))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
      if (v17)
      {
        outlined init with copy of Any(*(v15 + 56) + 32 * v16, &v38);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v18 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v18 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          v19 = HIBYTE(v13) & 0xF;
          if ((v13 & 0x2000000000000000) == 0)
          {
            v19 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            if (v40 == v14 && v41 == v13)
            {

              return 1;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              return 1;
            }

            return 2;
          }
        }
      }
    }

LABEL_33:

    return 2;
  }

  v38 = (v4)(v7);
  v39 = v21;
  v40 = 0x6574656C6544;
  v41 = 0xE600000000000000;
  v22 = StringProtocol.contains<A>(_:)();

  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v24 = (*(*a2 + 216))(v23);
  if (!*(v24 + 16))
  {
    goto LABEL_36;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
  if ((v26 & 1) == 0)
  {
    goto LABEL_36;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v25, &v38);

  v27 = swift_dynamicCast();
  if ((v27 & 1) == 0)
  {
    return 4;
  }

  v30 = v40;
  v29 = v41;
  v31 = (*(*a1 + 216))(v27, v28);
  if (!*(v31 + 16))
  {
    goto LABEL_39;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
  if ((v33 & 1) == 0)
  {
    goto LABEL_39;
  }

  outlined init with copy of Any(*(v31 + 56) + 32 * v32, &v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v34 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v34 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v35 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
LABEL_39:

LABEL_36:

    return 4;
  }

  if (v40 == v30 && v41 == v29)
  {

    return 3;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    return 4;
  }

  return 3;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void *a1)
{
  v2 = *(type metadata accessor for ProtoTaskEngagementFeatureSet() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v117 = a1;
  v9 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v10 = MEMORY[0x28223BE20](v9);
  v121 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v131 = &v114 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v137 = &v114 - v15;
  result = MEMORY[0x28223BE20](v14);
  v136 = &v114 - v18;
  v19 = a3[1];
  v126 = v17;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v126;
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v21 = result;
    }

    v139 = v21;
    v110 = *(v21 + 2);
    if (v110 >= 2)
    {
      while (*a3)
      {
        v111 = *&v21[16 * v110];
        v112 = *&v21[16 * v110 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v9 + 72) * v111, *a3 + *(v9 + 72) * *&v21[16 * v110 + 16], *a3 + *(v9 + 72) * v112, v5);
        if (v6)
        {
        }

        if (v112 < v111)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v110 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v113 = &v21[16 * v110];
        *v113 = v111;
        *(v113 + 1) = v112;
        v139 = v21;
        result = specialized Array.remove(at:)(v110 - 1);
        v21 = v139;
        v110 = *(v139 + 2);
        if (v110 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v115 = a4;
  v20 = 0;
  v134 = (v17 + 8);
  v135 = v17 + 16;
  v133 = (v17 + 32);
  v21 = MEMORY[0x277D84F90];
  v119 = a3;
  v138 = v9;
  while (1)
  {
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v128 = v19;
      v116 = v6;
      v22 = *a3;
      v118 = v20;
      v23 = v126[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v132 = v22;
      v25 = v9;
      v26 = v126[2];
      v27 = v136;
      v26(v136, v5, v25);
      v28 = &v24[v23 * v20];
      v29 = v137;
      v124 = v26;
      v26(v137, v28, v25);
      v129 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v125 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v30 = v126[1];
      v30(v29, v25);
      v123 = v30;
      result = (v30)(v27, v25);
      v31 = v118 + 2;
      v130 = v23;
      v32 = &v132[v23 * (v118 + 2)];
      while (1)
      {
        v33 = v128;
        if (v128 == v31)
        {
          break;
        }

        v34 = v124;
        LODWORD(v132) = v129 < v125;
        v35 = v136;
        v36 = v138;
        (v124)(v136, v32, v138);
        v37 = v137;
        v34(v137, v5, v36);
        v38 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v39 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v40 = v123;
        (v123)(v37, v36);
        result = v40(v35, v36);
        v21 = v127;
        ++v31;
        v32 += v130;
        v5 += v130;
        if (((v132 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v116;
      v20 = v118;
      a3 = v119;
      v9 = v138;
      if (v129 < v125)
      {
        if (v33 < v118)
        {
          goto LABEL_123;
        }

        if (v118 < v33)
        {
          v41 = v130 * (v33 - 1);
          v5 = v33 * v130;
          v128 = v33;
          v42 = v33;
          v43 = v118;
          v44 = v118 * v130;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v133;
              (*v133)(v121, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v46)(&v45[v41], v121, v9);
              a3 = v119;
              v21 = v127;
            }

            ++v43;
            v41 -= v130;
            v5 -= v130;
            v44 += v130;
          }

          while (v43 < v42);
          v6 = v116;
          v20 = v118;
          v33 = v128;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v115)
      {
        if (__OFADD__(v20, v115))
        {
          goto LABEL_124;
        }

        if (v20 + v115 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v115;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v117;
    if (!*v117)
    {
      goto LABEL_131;
    }

    v122 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v126[9] * v91, *a3 + v126[9] * *&v21[16 * v5 + 32], *a3 + v126[9] * v92, v52);
        if (v6)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v139 = v21;
        result = specialized Array.remove(at:)(v5);
        v21 = v139;
        v50 = *(v139 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v122;
    if (v122 >= v19)
    {
      goto LABEL_94;
    }
  }

  v116 = v6;
  v94 = *a3;
  v95 = v126[9];
  v132 = v126[2];
  v96 = &v94[v95 * (v33 - 1)];
  v129 = -v95;
  v130 = v94;
  v118 = v20;
  v97 = (v20 - v33);
  v120 = v95;
  v98 = &v94[v33 * v95];
  v122 = v5;
LABEL_85:
  v128 = v33;
  v123 = v98;
  v124 = v97;
  v125 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v136;
    v101 = v132;
    (v132)(v136, v98, v9);
    v102 = v137;
    v101(v137, v99, v138);
    v103 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
    v104 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
    v105 = *v134;
    v106 = v102;
    v9 = v138;
    (*v134)(v106, v138);
    result = v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v128 + 1;
      v96 = v125 + v120;
      v97 = v124 - 1;
      v5 = v122;
      v98 = &v123[v120];
      if (v128 + 1 != v122)
      {
        goto LABEL_85;
      }

      v6 = v116;
      v20 = v118;
      a3 = v119;
      v21 = v127;
      if (v122 < v118)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v107 = *v133;
    v108 = v131;
    (*v133)(v131, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v129;
    v98 += v129;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t specialized static SiriTaskEngagementFeatureDonator.donate(siriTask:previousTask:taskFeatureSets:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v100 = a2;
  v101 = a3;
  v4 = type metadata accessor for ReliabilityCategory();
  v107 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v85 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v85 - v11;
  v13 = type metadata accessor for JSONEncodingOptions();
  v99 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v102 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProtoTaskFeatureSet();
  v95 = *(v17 - 8);
  v96 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v90 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v85 - v21;
  MEMORY[0x28223BE20](v20);
  v94 = &v85 - v22;
  v23 = type metadata accessor for ProtoSiriTaskEvaluationSummary();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = type metadata accessor for ProtoTaskEngagementType();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ProtoSiriTaskEngagement();
  MEMORY[0x28223BE20](v104);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v87 = v13;
    v89 = v27;
    v98 = v12;
    type metadata accessor for PSEFeatureStoreManager();

    static PSEFeatureStoreManager.shared.getter();
    static PSEFeatureStoreStreamIdConstants.SiriTaskEngagementStreamId.getter();
    v30 = PSEFeatureStoreManager.getStream(streamId:)();

    v103 = v4;
    v88 = v30;
    if (v30)
    {
      v31 = ProtoSiriTaskEngagement.init()();
      v32 = (*a1 + 184);
      v86 = *v32;
      v85 = v32;
      v86(v31);
      ProtoSiriTaskEngagement.taskID.setter();
      type metadata accessor for Utils();
      v33 = (*(*a1 + 280))();
      specialized static Utils.formulateIntentTypeName(intentTypeName:)(v33, v34);

      ProtoSiriTaskEngagement.taskName.setter();
      v35 = ProtoSiriTaskEngagement.taskName.getter();
      static Utils.deriveEngagmentType(from:)(v35, v36, v26);

      ProtoSiriTaskEngagement.engagementType.setter();
      SiriExecutionTask.toProto()();
      ProtoSiriTaskEngagement.evaluationSummary.setter();
      ProtoSiriTaskEngagement.followupTimeWindowInMs.setter();
      if (v100)
      {
        v37 = *(*v100 + 184);

        v37(v38);
        ProtoSiriTaskEngagement.previousTaskID.setter();
      }

      v106 = v101;

      v39 = v105;
      specialized MutableCollection<>.sort(by:)(&v106);
      v40 = v102;
      if (!v39)
      {
        v41 = v106;
        v42 = *(*a1 + 328);

        v44 = v42(v43);
        v45 = (*(*v44 + 184))(v44);

        if (v45 & 1) != 0 || (v47 = v42(v46), v48 = (*(*v47 + 192))(v47), v49 = , (v48) || (v50 = v42(v49), v51 = (*(*v50 + 240))(v50), , (v51) || (v75 = *(v41 + 16)) == 0)
        {

LABEL_10:
          ProtoSiriTaskEngagement.followupUserInitatedEngagements.setter();
          JSONEncodingOptions.init()();
          lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement();
          Message.jsonString(options:)();
          v73 = (*(v99 + 8))(v40, v87);
          v86(v73);
          dispatch thunk of PSEFeatureStoreDonator.writeFeature(interactionId:jsonStr:)();
          (*(v89 + 8))(v29, v104);
        }

        v76 = v91;
        v77 = v92;
        v78 = *(v92 + 16);
        v101 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v79 = v93;
        v105 = v75;
        v78(v91, v41 + v101, v93);
        ProtoTaskEngagementFeatureSet.featureSet.getter();
        (*(v77 + 8))(v76, v79);
        v80 = v94;
        v81 = v95;
        v82 = v96;
        (*(v95 + 32))(v94, v97, v96);
        (*(v81 + 16))(v90, v80, v82);
        ProtoSiriTaskEngagement.siriTaskFeatureSet.setter();
        v83 = *(v41 + 16);

        v84 = v105;
        if (v83 < v105)
        {
          __break(1u);
        }

        else if (*(v41 + 16) == v105 - 1)
        {
LABEL_24:
          (*(v95 + 8))(v94, v96);
          goto LABEL_10;
        }

        specialized _copyCollectionToContiguousArray<A>(_:)(v41, v41 + v101, 1, (2 * v84) | 1);

        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.engagement);
      v63 = *MEMORY[0x277D61588];
      v64 = type metadata accessor for EngagementFeaturizationError();
      (*(*(v64 - 8) + 104))(v10, v63, v64);
      v65 = v107;
      (*(v107 + 104))(v10, *MEMORY[0x277D616A0], v103);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v106 = v69;
        *v68 = 136315138;
        *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x800000025ED816B0, &v106);
        _os_log_impl(&dword_25ECEC000, v66, v67, "%s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        v70 = v69;
        v65 = v107;
        MEMORY[0x25F8CEE50](v70, -1, -1);
        MEMORY[0x25F8CEE50](v68, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v71 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v10, v71, v72);

      return (*(v65 + 8))(v10, v103);
    }
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.engagement);
    v53 = *MEMORY[0x277D61590];
    v54 = type metadata accessor for EngagementFeaturizationError();
    (*(*(v54 - 8) + 104))(v7, v53, v54);
    v55 = v107;
    (*(v107 + 104))(v7, *MEMORY[0x277D616A0], v4);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v106 = v59;
      *v58 = 136315138;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000025ED81670, &v106);
      _os_log_impl(&dword_25ECEC000, v56, v57, "%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x25F8CEE50](v59, -1, -1);
      MEMORY[0x25F8CEE50](v58, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v60 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v7, v60, v61);

    return (*(v55 + 8))(v7, v4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement()
{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement)
  {
    type metadata accessor for ProtoSiriTaskEngagement();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement);
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAD0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}