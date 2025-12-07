uint64_t specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(uint64_t a1, unint64_t a2, uint64_t (**a3)(char *, uint64_t))
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized static DBWriter._latestSnapshotSequence(generation:context:nilFallback:loadedSuggestionCount:)(a1, a2, a3, 1, 0, v31);
  if (v3)
  {
    return v4;
  }

  v12 = v33;
  v4 = v33 + 1;
  if (v33 == -1)
  {
    __break(1u);
  }

  else
  {
    v30 = 0;
    if (v32)
    {

      return v4;
    }

    if (one-time initialization token for Log == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v13 = __swift_project_value_buffer(v8, static DBWriter.Log);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = v16;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v17 = 136447234;
    v28 = v15;
    swift_beginAccess();
    v18 = StaticString.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v34);
    v26 = v14;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000021657FBC0, &v34);
    *(v17 + 22) = 2050;
    *(v17 + 24) = v27;
    *(v17 + 32) = 2080;
    *(v17 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
    *(v17 + 42) = 2050;
    *(v17 + 44) = v4;
    v22 = v26;
    _os_log_impl(&dword_21607C000, v26, v28, "%{public}s.%{public}s Migrating from legacy nil generation snapshot: (nil, %{public}llu) -> (%s, %{public}llu", v17, 0x34u);
    v23 = v29;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v23, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  return v4;
}

double specialized closure #1 in DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(uint64_t a1, uint64_t a2, uint64_t (**a3)(char *, uint64_t), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v77 = a3;
  v71 = a6;
  v72 = a5;
  v75 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMd, &_s9SwiftData17HistoryDescriptorVyAA07DefaultC11TransactionVGMR);
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  MEMORY[0x28223BE20](v10);
  v70 = &v63 - v12;
  v13 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v73 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  *a4 = a1;
  v24 = v75;
  a4[1] = v75;
  v25 = v77;

  v26 = v76;
  specialized static DBWriter.draftSnapshot(context:)();
  if (!v26)
  {
    v29 = v24;
    v66 = v18;
    v67 = v15;
    v30 = v73;
    v31 = v74;
    if (v27)
    {
      v76 = v27;
      v32 = v29;
      v64 = specialized static DBWriter._newSnapshotSequenceNumber(generation:context:)(v23, v29, v25);
      v65 = 0;
      if (v64 == 1)
      {
        UUID.init()();
        v33 = UUID.uuidString.getter();
        v35 = v34;
        (*(v20 + 8))(v22, v19);
        v36 = v72;
        v75 = v33;
        *v72 = v33;
        v36[1] = v35;

        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v37 = __swift_project_value_buffer(v16, static DBWriter.Log);
        swift_beginAccess();
        v38 = v30;
        v39 = *(v30 + 16);
        v40 = v66;
        v39(v66, v37, v16);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();

        v43 = v35;
        if (os_log_type_enabled(v41, v42))
        {
          v44 = v38;
          v45 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v78 = v63;
          *v45 = 136446722;
          v46 = v42;
          swift_beginAccess();
          v47 = StaticString.description.getter();
          v49 = v16;
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v78);

          *(v45 + 4) = v50;
          *(v45 + 12) = 2082;
          *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000021657F9F0, &v78);
          *(v45 + 22) = 2080;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v43, &v78);

          *(v45 + 24) = v51;
          _os_log_impl(&dword_21607C000, v41, v46, "%{public}s.%{public}s Rotating new snapshot generation: %s", v45, 0x20u);
          v52 = v63;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v52, -1, -1);
          MEMORY[0x21CE94770](v45, -1, -1);

          (*(v44 + 8))(v40, v49);
          v31 = v74;
        }

        else
        {

          (*(v38 + 8))(v40, v16);
        }

        v55 = v68;
        v54 = v69;
        v53 = v72;
      }

      else
      {
        v53 = v72;
        *v72 = v23;
        v53[1] = v32;

        v55 = v68;
        v54 = v69;
      }

      v57 = *v53;
      v56 = v53[1];
      v58 = v76;
      v59 = *(*v76 + 264);

      v59(v57, v56);
      (*(*v58 + 312))(v64);
      specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)();
      v60 = v67;
      Date.init(timeIntervalSinceNow:)();
      (*(*v58 + 416))(v60);
      *v71 = v58;

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMd, &_s10Foundation9PredicateVy9SwiftData25DefaultHistoryTransactionV_QPGMR);
      (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      type metadata accessor for DefaultHistoryTransaction();
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DefaultHistoryTransaction and conformance DefaultHistoryTransaction, 255, MEMORY[0x277CDD588], MEMORY[0x277CDD580]);
      v62 = v70;
      HistoryDescriptor.init(predicate:)();
      dispatch thunk of ModelContext.deleteHistory<A>(_:)();
      (*(v54 + 8))(v62, v55);
    }
  }

  return result;
}

uint64_t specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a2;
  *(v5 + 40) = a4;
  *(v5 + 153) = a3;
  *(v5 + 24) = a1;
  v7 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent(0);
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 154) = *a5;

  return MEMORY[0x2822009F8](specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:), 0, 0);
}

uint64_t specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:)()
{
  v46 = v0;
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.analytics);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 154);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v45 = v6;
    *v5 = 136446722;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000021657FC60, &v45);
    *(v5 + 12) = 2080;
    if (v4 == 7)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      *(v0 + 152) = *(v0 + 154);
      v8 = String.init<A>(describing:)();
      v7 = v9;
    }

    v10 = *(v0 + 24);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v45);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10DBSnapshotCSgMd, &_s9MomentsUI10DBSnapshotCSgMR);
    v12 = Optional.debugDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v45);

    *(v5 + 24) = v14;
    _os_log_impl(&dword_21607C000, v2, v3, "[DBWriter.%{public}s] creating snapshot event: snapshotEventReason=%s, snapshot=%s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    if (!*(v0 + 24))
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!*(v0 + 24))
    {
      goto LABEL_15;
    }
  }

  v15 = *(v0 + 153);
  if (v15)
  {

    v16 = *(v0 + 32);
  }

  else
  {
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);
    v20 = *(v0 + 32);

    Date.init()();
    Date.timeIntervalSince(_:)();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
    v16 = v20 + v22;
    v15 = *(v0 + 153);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  LOBYTE(v45) = *(v0 + 154);

  DBSnapshotAnalytics.SnapshotEvent.init(snapshot:reason:processingTime:)(v27, &v45, *&v16, v15 & 1, v23);
  outlined init with copy of DateInterval?(v23, v24, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR);
  v28 = (*(v25 + 48))(v24, 1, v26);
  v29 = *(v0 + 88);
  if (v28 == 1)
  {
    outlined destroy of UTType?(*(v0 + 96), &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR);

    outlined destroy of UTType?(v29, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR);
LABEL_15:

    v30 = *(v0 + 8);

    return v30();
  }

  v32 = *(v0 + 154);
  outlined init with take of DBSnapshotAnalytics.SnapshotEvent(*(v0 + 88), *(v0 + 72));
  if (v32 != 5)
  {
    outlined init with copy of DBSnapshotAnalytics.SnapshotEvent(*(v0 + 72), *(v0 + 64));
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 64);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446466;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000021657FC60, &v45);
      *(v37 + 12) = 2080;
      v39 = DBSnapshotAnalytics.SnapshotEvent.description.getter();
      v41 = v40;
      outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v36);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v45);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_21607C000, v33, v34, "[DBWriter.%{public}s] Sending snapshot event to analytics\n%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v38, -1, -1);
      MEMORY[0x21CE94770](v37, -1, -1);
    }

    else
    {

      outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v36);
    }

    DBSnapshotAnalytics.SnapshotEvent.send()();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v43 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  v44 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbSnapshotEventSubject;
  *(v0 + 128) = v43;
  *(v0 + 136) = v44;

  return MEMORY[0x2822009F8](specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:), v43, 0);
}

{
  v0[18] = *(v0[16] + v0[17]);
  return MEMORY[0x2822009F8](specialized static DBWriter._snapshotAnalytics(_:_:_:snapshotEventReason:), 0, 0);
}

{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  outlined init with copy of DBSnapshotAnalytics.SnapshotEvent(v3, v2);
  (*(v5 + 56))(v2, 0, 1, v4);
  PassthroughSubject.send(_:)();

  outlined destroy of UTType?(v2, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR);
  outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v3);
  outlined destroy of UTType?(v1, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR);

  v6 = v0[1];

  return v6();
}

unint64_t specialized static DBWriter.fetchedSuggestion(uuid:context:)(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  v19[4] = a1;
  v19[7] = type metadata accessor for DBSuggestion(0);
  Predicate.init(_:)();
  (*(v11 + 16))(v5, v13, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  v14 = v19[1];
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v14)
  {
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    return v6;
  }

  v16 = v6;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v6 = 0;
    goto LABEL_11;
  }

  v17 = result;
  v18 = __CocoaSet.count.getter();
  result = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CE93180](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);

LABEL_8:

LABEL_11:
    (*(v7 + 8))(v9, v16);
    (*(v11 + 8))(v13, v10);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in DBWriter.latestSnapshots()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.latestSnapshots()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #2 in DBWriter.pruneSnapshotsTo(_:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.pruneSnapshotsTo(_:)(a1, a2, v2);
}

unint64_t lazy protocol witness table accessor for type DBWriter.FetchError and conformance DBWriter.FetchError()
{
  result = lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError;
  if (!lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError;
  if (!lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBWriter.FetchError and conformance DBWriter.FetchError);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in closure #1 in DBWriter.latestSuggestions(uiLaunch:allowDraft:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.addSnapshotMain(expiry:recommended:recent:processingTime:)(a1, a2, v2);
}

uint64_t partial apply for closure #2 in DBWriter.deleteSnapshotsMain(snapshots:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBWriter.pruneSnapshotsTo(_:)(a1, a2, v2);
}

uint64_t partial apply for closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(a1, a2, a3, v6, v7, v8, v9, v10);
}

uint64_t specialized static DBWriter._mapAssetData(_:context:)(unint64_t a1, uint64_t a2)
{
  v15 = type metadata accessor for PersistentIdentifier();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_23:
  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v16 = a2;
  v17 = a1 & 0xC000000000000001;
  v14 = (v4 + 1);
  result = MEMORY[0x277D84F90];
  do
  {
    v13 = result;
    for (i = v8; ; ++i)
    {
      if (v17)
      {
        MEMORY[0x21CE93180](i, a1);
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(v18 + 16))
        {
          goto LABEL_22;
        }

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      a2 = v7;
      type metadata accessor for DBAssetData(0);
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, 255, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
      if (!PersistentModel.modelContext.getter())
      {
        break;
      }

      result = PersistentModel.modelContext.getter();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;

      if (v11 == v16)
      {
        break;
      }

      PersistentModel.persistentModelID.getter();
      v4 = dispatch thunk of ModelContext.model(for:)();

      (*v14)(v6, v15);
      if (swift_dynamicCastClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      if (v8 == v7)
      {
        return v13;
      }
    }

    v4 = &v19;
    MEMORY[0x21CE92260]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v19;
  }

  while (v8 != v7);
  return result;
}

uint64_t specialized static DBWriter._mapSuggestions(_:context:)(unint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for PersistentIdentifier();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_26:
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v8 = 0;
  v24 = a2;
  v25 = a1 & 0xC000000000000001;
  v22 = (v4 + 1);
  result = MEMORY[0x277D84F90];
  do
  {
    v21 = result;
    for (i = v8; ; ++i)
    {
      if (v25)
      {
        v11 = MEMORY[0x21CE93180](i, a1);
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (i >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      a2 = v7;
      type metadata accessor for DBSuggestion(0);
      _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, 255, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
      if (!PersistentModel.modelContext.getter())
      {
        break;
      }

      v12 = PersistentModel.modelContext.getter();
      if (v12)
      {
        v27 = v24;
        v28 = v12;
        type metadata accessor for ModelContext();
        _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ModelContext and conformance ModelContext, 255, MEMORY[0x277CDD490], MEMORY[0x277CDD498]);
        v13 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_20;
        }
      }

      PersistentModel.persistentModelID.getter();
      v4 = dispatch thunk of ModelContext.model(for:)();
      (*v22)(v6, v23);
      v15 = swift_dynamicCastClass();

      if (v15)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v7 = a2;
      if (v8 == a2)
      {
        return v21;
      }
    }

    v16 = *(*v11 + 1160);

    v18 = v16(v17);
    if (v18)
    {
      v19 = specialized static DBWriter._mapAssetData(_:context:)(v18, v24);

      (*(*v11 + 1168))(v19);
    }

LABEL_20:
    v4 = &v29;
    MEMORY[0x21CE92260](v14);
    v7 = a2;
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = a2;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v29;
  }

  while (v8 != v7);
  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR, MEMORY[0x277CC8EB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGATGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGATGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGATGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ANG_QPGATGMR, lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>);
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMd, &_s10Foundation20PredicateExpressionsO0B8EvaluateVy_AC5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGAC8VariableVy_ALG_QPGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA0B0Vy9MomentsUI12DBSuggestionC_QPGGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Predicate<Pack{DBSuggestion}> and conformance Predicate<Pack{repeat A}>, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR, MEMORY[0x277CC9B50]);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Predicate<Pack{DBSuggestion}> and conformance Predicate<Pack{repeat A}>, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR, MEMORY[0x277CC9B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAKy_SuGGSbGAUy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAKy_SuGGSbGAUy_SbGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGSuAC16SequenceContainsVy_AC5ValueVy_SaySuGGAIy_SuGGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?>, UInt, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSuSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UInt?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySuGGAC8VariableVy_SuGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UInt> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SuGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[UInt]>, PredicateExpressions.Variable<UInt>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySuGGMR);
    lazy protocol witness table accessor for type [UInt] and conformance <A> [A]();
    lazy protocol witness table accessor for type [UInt] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<[UInt]> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySuGMd, &_sSaySuGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UInt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySuGMd, &_sSaySuGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AKy_SiGAC5ValueVy_SiGGSbGAVy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AKy_SiGAC5ValueVy_SiGGSbGAVy_SbGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC8NotEqualVy_AIy_SiGAC5ValueVy_SiGGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC8VariableVy_SiGAC5ValueVy_SiGGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR, MEMORY[0x277CC90F0]);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.Variable<Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.NotEqual<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGs6UInt64VGAC5ValueVy_A0_GGGSbGA3_y_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGs6UInt64VGAC5ValueVy_A0_GGGSbGA3_y_SbGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGs6UInt64VGAC5ValueVy_AZGGGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMd, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGs6UInt64VGAC5ValueVy_ASGGGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMR, MEMORY[0x277CC90F0]);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAKy_SiGGSbGAUy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAKy_SiGGSbGAUy_SbGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSiSgGSiAC16SequenceContainsVy_AC5ValueVy_SaySiGGAIy_SiGGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Int?>, Int, PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_SaySiGGAC8VariableVy_SiGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Int> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SiGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[Int]>, PredicateExpressions.Variable<Int>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SaySiGGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<[Int]> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAqC10ComparisonVy_AKy_AQGAC5ValueVy_AQGGSbGAXy_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAqC10ComparisonVy_AKy_AQGAC5ValueVy_AQGGSbGAXy_SbGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGAoC10ComparisonVy_AIy_AOGAC5ValueVy_AOGGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?>, Date, PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4DateVSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Date?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC8VariableVy_AA4DateVGAC5ValueVy_AIGGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Date> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4DateVGMR, MEMORY[0x277CC90F0]);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.Variable<Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR);
    v1 = MEMORY[0x277CC9578];
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    _s9MomentsUI8DBWriterCACScAAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, 255, v1, MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAqGy_AIy_AOSayAL10DBSnapshotCGSgGAvC11ConjunctionVy_AC5EqualVy_AKy_AQGAC5ValueVy_AQGGAC21SequenceContainsWhereVy_AKy_AVGA0_y_AIy_AKy_AUGs6UInt64VGA3_y_A11_GGGGSbGSbGA3_y_SbGGMd, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAqGy_AIy_AOSayAL10DBSnapshotCGSgGAvC11ConjunctionVy_AC5EqualVy_AKy_AQGAC5ValueVy_AQGGAC21SequenceContainsWhereVy_AKy_AVGA0_y_AIy_AKy_AUGs6UInt64VGA3_y_A11_GGGGSbGSbGA3_y_SbGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGAoEy_AGy_AMSayAJ10DBSnapshotCGSgGAtC11ConjunctionVy_AC5EqualVy_AIy_AOGAC5ValueVy_AOGGAC21SequenceContainsWhereVy_AIy_ATGAZy_AGy_AIy_ASGs6UInt64VGA1_y_A9_GGGGSbGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?>, UUID, PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApC11ConjunctionVy_AC5EqualVy_AIy_AA4UUIDVGAC5ValueVy_AXGGAC21SequenceContainsWhereVy_AIy_APGAVy_AGy_AIy_AOGs6UInt64VGA_y_A7_GGGGSbGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AKGGAC21SequenceContainsWhereVy_AIy_Say9MomentsUI10DBSnapshotCGGAGy_AC7KeyPathVy_AIy_AUGs6UInt64VGANy_A0_GGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>>, PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSnapshot]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_AA4UUIDVGAC5ValueVy_AIGGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UUID> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMR, MEMORY[0x277CC90F0]);
    lazy protocol witness table accessor for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

uint64_t _s9MomentsUI8DBWriterCACScAAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{DBSuggestion}>>, Pack{PredicateExpressions.Variable<DBSuggestion>}>> and conformance <> PredicateExpressions.Conjunction<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.Comparison<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t closure #1 in DBWriter.publishDraft(rendered:total:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in DBWriter.publishDraft(rendered:total:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with take of DBSnapshotAnalytics.SnapshotEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DBMotionActivityModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unint64_t a13, unsigned __int8 *a14)
{
  v59 = a8;
  v69 = a7;
  v62 = a6;
  v63 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v53 - v19;
  v55 = type metadata accessor for DateInterval();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v68 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v56 = *a14;
  v60 = v23;
  v27 = *(v23 + 16);
  v57 = &v53 - v28;
  v66 = a1;
  v27();
  v58 = v26;
  v65 = a2;
  v61 = v22;
  (v27)(v26, a2, v22);
  v29 = a3;
  if (a3)
  {
    v54 = a3;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v54 = static ScreenSize.zero;
  }

  v30 = v59;
  v31 = v67;
  v32 = *(a4 + 16);
  v64 = v29;
  if (v32)
  {
    v71 = MEMORY[0x277D84F90];
    v33 = v29;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v34 = v71;
    v35 = *(v71 + 16);
    v36 = 32;
    do
    {
      v37 = *(a4 + v36);
      v71 = v34;
      v38 = *(v34 + 24);
      if (v35 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v35 + 1, 1);
        v34 = v71;
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + v35 + 32) = v37;
      ++v36;
      ++v35;
      --v32;
    }

    while (v32);

    v31 = v67;
  }

  else
  {
    v39 = v29;

    v34 = MEMORY[0x277D84F90];
  }

  outlined init with copy of DateInterval?(v69, v20);
  v40 = v53;
  v41 = *(v53 + 48);
  v42 = v55;
  if (v41(v20, 1, v55) == 1)
  {
    DateInterval.init()();
    if (v41(v20, 1, v42) != 1)
    {
      outlined destroy of UTType?(v20, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }
  }

  else
  {
    (*(v40 + 32))(v68, v20, v42);
  }

  if (v30)
  {
    v43 = v30;
    v44 = specialized static DBAssetModel.baseImage2DB(_:)(v30);
  }

  else
  {
    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v43 = 0;
  }

  v45 = 0xE000000000000000;
  if (v62)
  {
    v46 = v62;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  if (v62)
  {
    v47 = v63;
  }

  else
  {
    v47 = 0;
  }

  if (a13)
  {
    v48 = a12;
  }

  else
  {
    v48 = 0;
  }

  if (a13)
  {
    v45 = a13;
  }

  v70 = v56;
  v49 = (*(v31 + 424))(v57, v58, v54, v34, v47, v46, v68, v44, a9, a10, a11 & 1, v48, v45, &v70);

  outlined destroy of UTType?(v69, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v50 = v61;
  v51 = *(v60 + 8);
  v51(v65, v61);
  v51(v66, v50);
  return v49;
}

uint64_t static DBMotionActivityModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
  v3 = *(a1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
  result = *(a2 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
  if ((v3 & 1) == 0)
  {
    return (*v2 == *(a2 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue)) & ~result;
  }

  return result;
}

void DBMotionActivityModel.motionActivity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t DBMotionActivityModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);

  return v1;
}

MomentsUI::DBMotionActivityModel::CodingKeys_optional __swiftcall DBMotionActivityModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMotionActivityModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t DBMotionActivityModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7370657473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x656C746974627573;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBMotionActivityModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000002165764C0;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000002165764C0;
  }

  else
  {
    v3 = 0x656C746974627573;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7370657473;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x656C746974627573;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7370657473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBMotionActivityModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DBMotionActivityModel.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBMotionActivityModel.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBMotionActivityModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMotionActivityModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBMotionActivityModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x80000002165764C0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x656C746974627573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7370657473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DBMotionActivityModel.CodingKeys()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7370657473;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBMotionActivityModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMotionActivityModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBMotionActivityModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBMotionActivityModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBMotionActivityModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI21DBMotionActivityModelC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9MomentsUI21DBMotionActivityModelC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBMotionActivityModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    *(v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v17[0]) = 1;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue;
    *v10 = v9;
    *(v10 + 8) = v11 & 1;
    LOBYTE(v17[0]) = 2;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = (v1 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
    *v14 = v12;
    v14[1] = v15;
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(v17);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBMotionActivityModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI21DBMotionActivityModelC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI21DBMotionActivityModelC10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v9[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    LOBYTE(v9[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v9[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v9);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int DBMotionActivityModel.metadataHash.getter()
{
  Hasher.init()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
    Hasher._combine(_:)(1u);
    MEMORY[0x21CE937C0](v1);
  }

  return Hasher.finalize()();
}

uint64_t DBMotionActivityModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t, __n128), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, void (**a13)(void), unsigned __int8 *a14)
{
  swift_allocObject();
  v19 = specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14);

  return v19;
}

uint64_t DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t, __n128), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, void (**a13)(void), unsigned __int8 *a14)
{
  v15 = specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13, a14);

  return v15;
}

uint64_t DBMotionActivityModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBMotionActivityModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t, __n128), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unsigned __int8 a11, uint64_t a12, void (**a13)(void), unsigned __int8 *a14)
{
  v15 = v14;
  *&v127 = a8;
  v116 = a7;
  *&v128 = a6;
  v122 = a5;
  v121 = a4;
  v120 = a3;
  v118 = a13;
  v117 = a12;
  LODWORD(v114) = a11;
  v112 = a10;
  v125 = *v15;
  v108 = type metadata accessor for Date();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v126 = &v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v124 = &v97 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMR);
  v111 = *(v123 - 8);
  v23 = MEMORY[0x28223BE20](v123);
  v99 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = &v97 - v25;
  v26 = type metadata accessor for DateInterval();
  v115 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v113 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UUID();
  v30 = MEMORY[0x28223BE20](v29);
  v119 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v97 - v35;
  LODWORD(v110) = *a14;
  *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps) = a9;
  v37 = v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue;
  *v37 = v112;
  *(v37 + 8) = v114 & 1;
  v38 = (v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
  v39 = v118;
  *v38 = v117;
  v38[1] = v39;
  v114 = v40;
  v41 = *(v40 + 16);
  v106 = a1;
  v41(&v97 - v35, a1, v29);
  v105 = a2;
  v41(v34, a2, v29);
  v117 = type metadata accessor for DBAssetModel(0);
  static DBAssetModel.subscript.getter(v125, &v130);
  LODWORD(v118) = v130;
  v103 = v27;
  v42 = *(v27 + 16);
  v43 = v113;
  v42(v113, v116, v26);
  *(v15 + 16) = 0;
  v112 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v101 = v36;
  v41((v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v36, v29);
  v109 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v102 = v34;
  v125 = v29;
  v41((v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v34, v29);
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v118;
  v44 = v120;
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v120;
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v121;
  v45 = (v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v46 = v128;
  *v45 = v122;
  v45[1] = v46;
  v42((v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v43, v115);
  v47 = v44;
  specialized Dictionary.compactMapValues<A>(_:)(v127);
  v100 = 0;
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v48;
  v112 = MEMORY[0x277D84F90];
  *(v15 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v49 = v48;
  swift_beginAccess();
  v109 = v15;
  *(v15 + 16) = v110;
  v50 = v127 + 64;
  v51 = 1 << *(v127 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v127 + 64);
  v54 = (v51 + 63) >> 6;
  v122 = (v114 + 48);
  v118 = (v114 + 32);
  v121 = (v111 + 56);
  v120 = (v111 + 48);
  v110 = v49;

  v55 = 0;
  v56 = v126;
  v117 = v54;
  while (v53)
  {
    v57 = v55;
LABEL_9:
    v58 = __clz(__rbit64(v53)) | (v57 << 6);
    v59 = *(*(v127 + 56) + 8 * v58);
    v60 = *(*v59 + 192);
    *&v128 = *(*(v127 + 48) + 16 * v58 + 8);

    v60(v61);
    v62 = v125;
    if ((*v122)(v56, 1, v125) == 1)
    {
      outlined destroy of UTType?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v63 = v124;
      v64 = v123;
      (*v121)(v124, 1, 1, v123);
    }

    else
    {
      v65 = *v118;
      (*v118)(v119, v126, v62);
      v64 = v123;
      v66 = *(v123 + 48);
      v54 = v117;
      v63 = v124;
      v65();
      v56 = v126;
      *(v63 + v66) = v59;
      (*v121)(v63, 0, 1, v64);
    }

    v53 &= v53 - 1;

    if ((*v120)(v63, 1, v64) == 1)
    {
      outlined destroy of UTType?(v63, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR);
      v55 = v57;
    }

    else
    {
      v67 = v98;
      outlined init with take of (UUID, DBAssetData)(v63, v98);
      outlined init with take of (UUID, DBAssetData)(v67, v99);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112[2] + 1, 1, v112);
      }

      v69 = v112[2];
      v68 = v112[3];
      v70 = v111;
      if (v69 >= v68 >> 1)
      {
        v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v112);
        v70 = v111;
        v112 = v72;
      }

      v71 = v112;
      v112[2] = v69 + 1;
      outlined init with take of (UUID, DBAssetData)(v99, v71 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69);
      v55 = v57;
    }
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);

      v95 = *(v114 + 8);
      v96 = v125;
      v95(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR + v112, v125);
      v95(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR + v109, v96);

      (*(v103 + 8))(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR + v50, v115);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_25;
    }

    if (v57 >= v54)
    {
      break;
    }

    v53 = *(v50 + 8 * v57);
    ++v55;
    if (v53)
    {
      goto LABEL_9;
    }
  }

  v73 = v114;
  if (v112[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMR);
    v74 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v74 = MEMORY[0x277D84F98];
  }

  v75 = v109;
  v129 = v74;

  v77 = v100;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v76, 1, &v129);
  if (!v77)
  {

    v78 = v129;
    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    v80 = (v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v80 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v80[1] = v79;
    v81 = swift_allocObject();
    *(v81 + 16) = v78;
    v82 = (v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v82 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v82[1] = v81;
    v83 = (v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v83 = closure #3 in DBAssetModel.init(from:);
    v83[1] = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = v110;
    swift_beginAccess();
    v128 = *v80;
    swift_beginAccess();
    v127 = *v82;
    swift_beginAccess();
    v85 = *v83;
    v86 = v83[1];
    v87 = v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v87 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v87 + 8) = v84;
    v88 = v127;
    *(v87 + 16) = v128;
    *(v87 + 32) = v88;
    *(v87 + 48) = v85;
    *(v87 + 56) = v86;

    v89 = v104;
    static Date.now.getter();
    v90 = *(v103 + 8);
    v91 = v115;
    v90(v116, v115);
    v92 = *(v73 + 8);
    v93 = v125;
    v92(v105, v125);
    v92(v106, v93);
    v90(v113, v91);
    v92(v102, v93);
    v92(v101, v93);
    (*(v107 + 32))(v75 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v89, v108);
    return v75;
  }

LABEL_25:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t specialized DBMotionActivityModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMotionActivityModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMotionActivityModel.CodingKeys and conformance DBMotionActivityModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBMotionActivityModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBMotionActivityModel;
  if (!type metadata singleton initialization cache for DBMotionActivityModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11MapLocationCG_AF0F9ViewModel_ps5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v18;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CE93180](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v7 + 32);
      }

      v16 = v10;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v17;
      v18 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v14;
        v8 = v18;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 16 * v13 + 32) = v11;
      ++v7;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So10CKRecordIDCs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v26[2] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = v5 + 56;
    v6 = _HashTable.startBucket.getter();
    v7 = 0;
    v8 = *(v5 + 36);
    v21 = v5 + 64;
    v22 = v4;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v24 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v11 = (*(v5 + 48) + 16 * v6);
      v12 = v11[1];
      v25[0] = *v11;
      v25[1] = v12;

      (a1)(v26, v25);
      if (v3)
      {
        goto LABEL_27;
      }

      v13 = v5;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v5 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v24 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            outlined consume of Set<UIScene>.Index._Variant(v6, v8, 0);
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_19;
          }
        }

        outlined consume of Set<UIScene>.Index._Variant(v6, v8, 0);
LABEL_19:
        v5 = v13;
      }

      ++v7;
      v6 = v9;
      v3 = 0;
      if (v7 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOs5NeverOTg5(void (*a1)(void *, __n128), uint64_t a2, unint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v34 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  MEMORY[0x28223BE20](v34);
  v39 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  if (v7)
  {
    v42 = MEMORY[0x277D84F90];
    v8 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v40 = v42;
    v38 = a3 + 56;
    v9 = _HashTable.startBucket.getter();
    v10 = 0;
    v32 = v8 + 32;
    v33 = v8;
    v30 = a3 + 64;
    v31 = v7;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a3 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v38 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v14 = *(a3 + 36);
      v15 = a3;
      v16 = (*(a3 + 48) + 16 * v9);
      v17 = v16[1];
      v41[0] = *v16;
      v41[1] = v17;

      v35(v41);
      v37 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v18 = v40;
      v42 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v42;
      }

      *(v18 + 16) = v20 + 1;
      v21 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v40 = v18;
      (*(v33 + 32))(v18 + v21 + *(v33 + 72) * v20, v39, v34);
      v11 = 1 << *(v15 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v22 = *(v38 + 8 * v13);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v15;
      if (v14 != *(v15 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v31;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v12 = v31;
        v26 = (v30 + 8 * v13);
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            outlined consume of Set<UIScene>.Index._Variant(v9, v14, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        outlined consume of Set<UIScene>.Index._Variant(v9, v14, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      v3 = v37;
      if (v10 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }
}

uint64_t static MapsUtilities.canFitIn(viewStyle:mapViewModels:)(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v10 = 6;
  v3 = static MapsUtilities.normalizedPositionsWithin(viewStyle:mapViewModels:)(&v10, a2);
  if (!v3)
  {
    return 2;
  }

  if (v2 <= 3)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        goto LABEL_6;
      }

LABEL_10:

      return 0;
    }

LABEL_11:
    v4 = specialized closure #1 in _NativeDictionary.filter(_:);
    v5 = specialized closure #1 in _NativeDictionary.filter(_:);
    goto LABEL_13;
  }

  if (v2 == 4)
  {
    v4 = specialized closure #1 in _NativeDictionary.filter(_:);
    v5 = specialized closure #1 in _NativeDictionary.filter(_:);
    goto LABEL_13;
  }

  if (v2 == 5)
  {
    goto LABEL_11;
  }

  if (v2 != 6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v4 = specialized closure #1 in _NativeDictionary.filter(_:);
  v5 = specialized closure #1 in _NativeDictionary.filter(_:);
LABEL_13:
  v7 = v3;
  v8 = *(specialized _NativeDictionary.filter(_:)(v3, v4, v5) + 2);

  v9 = v7[2];

  return v8 == v9;
}

void static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(_BYTE *a1, uint64_t a2, double a3, double a4)
{
  if (!a2)
  {
    return;
  }

  v5 = *(a2 + 16);
  if (v5 < 2)
  {
    return;
  }

  LOBYTE(v92) = *a1;
  static MapsUtilities.viewportRegion(for:mapViewModels:)(&v92, a2, &v93);
  if (v95)
  {
    return;
  }

  v87 = v94;
  v90 = v93;
  v8 = MEMORY[0x277D84F90];
  v9 = 0;
  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI18HashableCoordinateV_AC12MapViewModel_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  do
  {
    v93 = *(a2 + 32 + 16 * v9);
    v10 = v93;
    closure #1 in static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(&v92, &v93);
    ++v9;
  }

  while (v5 != v9);
  v11 = v92;
  v93 = v90;
  v94 = v87;
  v92 = v8;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v12 = v92;
  v13 = (a2 + 40);
  do
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 32);
    v18 = v14;
    v19 = v17(ObjectType, v15);
    v20 = (*(*v19 + 168))(v19);
    v21 = (*(*v19 + 192))();

    v92 = v12;
    v23 = *(v12 + 16);
    v22 = *(v12 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v12 = v92;
    }

    *(v12 + 16) = v23 + 1;
    v24 = v12 + 16 * v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    v13 += 2;
    --v5;
  }

  while (v5);
  v25 = specialized static MapsUtilities.normalizedPositionsWithin(region:coordinates:)(&v93, v12);

  v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI18HashableCoordinateV_SD4KeysVyAFSo7CGPointV_GTt0g5(v26);
  v92 = v27;
  v28 = (v27 + 16);
  if (!*(v27 + 16))
  {
    v85 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v29 = 25.0 / a3;
  v85 = MEMORY[0x277D84F90];
  v30 = &unk_2811A6000;
  v31 = 25.0 / a4;
  do
  {
    while (1)
    {
      v32 = _HashTable.startBucket.getter();
      if (v32 == 1 << *(v27 + 32))
      {
        goto LABEL_47;
      }

      specialized Set.subscript.getter(v32, *(v27 + 36), v27, &v93);
      if (!*v28)
      {
        goto LABEL_77;
      }

      v33 = v93;
      v34 = _HashTable.startBucket.getter();
      specialized Set._Variant.remove(at:)(v34, *(v27 + 36), &v93);
      if (v25[2])
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(*&v33, *(&v33 + 1));
        if (v36)
        {
          break;
        }
      }

      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static CommonLogger.viewModel);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        v93 = v33;
        *(v40 + 4) = HashableCoordinate.hashValue.getter();
        _os_log_impl(&dword_21607C000, v38, v39, "[dedupedConsolidatedMapViewModels] coordinate has invalid valu hash=%ld", v40, 0xCu);
        MEMORY[0x21CE94770](v40, -1, -1);
      }

      v27 = v92;
      v28 = (v92 + 16);
      if (!*(v92 + 16))
      {
        goto LABEL_47;
      }
    }

    v41 = (v25[7] + 16 * v35);
    v42 = *v41;
    v43 = v41[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_21658CA50;
    *(v44 + 32) = v33;
    v84 = v44;
    v45 = v92 + 56;
    v46 = 1 << *(v92 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & *(v92 + 56);
    v49 = (v46 + 63) >> 6;
    v88 = v92;

    v50 = 0;
    while (v48)
    {
LABEL_35:
      v55 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v61 = *(*(v88 + 48) + ((v50 << 10) | (16 * v55)));
      v56 = *(*(v88 + 48) + ((v50 << 10) | (16 * v55)) + 8);
      if (!v25[2])
      {
        goto LABEL_29;
      }

      v86 = *(*(v88 + 48) + ((v50 << 10) | (16 * v55)));
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(*&v61, *(&v61 + 1));
      v61 = v86;
      if ((v58 & 1) == 0)
      {
        goto LABEL_29;
      }

      v59 = (v25[7] + 16 * v57);
      if (vabdd_f64(v42, *v59) < v29 && vabdd_f64(v43, v59[1]) < v31)
      {
        v52 = *(v84 + 16);
        v51 = *(v84 + 24);
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v84);
          v53 = v52 + 1;
          v61 = v86;
          v84 = v60;
        }

        *(v84 + 16) = v53;
        *(v84 + 16 * v52 + 32) = v61;
LABEL_29:
        specialized Set._Variant.remove(_:)(&v93, *&v61, v56);
      }
    }

    while (1)
    {
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_78;
      }

      if (v54 >= v49)
      {
        break;
      }

      v48 = *(v45 + 8 * v54);
      ++v50;
      if (v48)
      {
        v50 = v54;
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
    }

    v63 = v85[2];
    v62 = v85[3];
    if (v63 >= v62 >> 1)
    {
      v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v85);
    }

    v85[2] = v63 + 1;
    v85[v63 + 4] = v84;
    v27 = v92;
    v28 = (v92 + 16);
  }

  while (*(v92 + 16));
LABEL_47:

  v64 = v85;
  v89 = v85[2];
  if (!v89)
  {
LABEL_75:

    return;
  }

  v65 = 0;
  v30 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v65 < v64[2])
    {
      v67 = v85[v65 + 4];
      v68 = *(v67 + 16);
      if (v68 != 1)
      {
        goto LABEL_58;
      }

      if (v11[2])
      {
        v69 = specialized __RawDictionaryStorage.find<A>(_:)(*(v67 + 32), *(v67 + 40));
        if (v70)
        {
          v71 = v11[7] + 16 * v69;
          v72 = *(v71 + 8);
          v73 = *v71;
          goto LABEL_71;
        }

        v68 = *(v67 + 16);
LABEL_58:
        if (v68)
        {
LABEL_59:

          v74 = (v67 + 40);
          v75 = MEMORY[0x277D84F90];
          do
          {
            if (v11[2])
            {
              v76 = specialized __RawDictionaryStorage.find<A>(_:)(*(v74 - 1), *v74);
              if (v77)
              {
                v91 = *(v11[7] + 16 * v76);
                v78 = v91;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
                }

                v80 = v75[2];
                v79 = v75[3];
                if (v80 >= v79 >> 1)
                {
                  v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v75);
                }

                v75[2] = v80 + 1;
                *&v75[2 * v80 + 4] = v91;
              }
            }

            v74 += 2;
            --v68;
          }

          while (v68);

          v64 = v85;
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        v73 = static MapsUtilities.combinedMapViewModels(_:)(v75);
        v72 = v81;

        if (v73)
        {
LABEL_71:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          }

          v83 = v30[2];
          v82 = v30[3];
          if (v83 >= v82 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v30);
          }

          v30[2] = v83 + 1;
          v66 = &v30[2 * v83];
          v66[4] = v73;
          v66[5] = v72;
        }

        if (++v65 == v89)
        {
          goto LABEL_75;
        }

        continue;
      }

      v68 = 1;
      goto LABEL_59;
    }

    break;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);

  __break(1u);
}

void *static MapsUtilities.normalizedPositionsWithin(viewStyle:mapViewModels:)(unsigned __int8 *a1, void *a2)
{
  if (a2 && (v3 = a2[2]) != 0)
  {
    v4 = *a1;
    if (v3 == 1)
    {
      v5 = a2[4];
      v6 = a2[5];
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);

      v9 = v5;
      v10 = v8(ObjectType, v6);

      (*(*v10 + 168))();

      v11 = v9;
      v12 = v8(ObjectType, v6);

      (*(*v12 + 192))();

LABEL_15:
      v18 = MEMORY[0x277D84F98];
      v25 = a2 + 5;
      v90 = v4;
      while (1)
      {
        v28 = *(v25 - 1);
        v27 = *v25;
        if (v4 == 2)
        {
          break;
        }

        if (v4 == 5)
        {
          v49 = swift_getObjectType();
          v50 = *(v27 + 32);
          v31 = v28;
          v51 = v50(v49, v27);
          v52 = v50(v49, v27);
          v53 = (*(*v52 + 168))(v52);
          v54 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v53 longitude:(*(*v52 + 192))()];

          [v54 coordinate];

          destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
          v37 = v55;
          v39 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v18;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
          v59 = v18[2];
          v60 = (v58 & 1) == 0;
          v45 = __OFADD__(v59, v60);
          v61 = v59 + v60;
          if (v45)
          {
            goto LABEL_58;
          }

          v62 = v58;
          if (v18[3] < v61)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, isUniquelyReferenced_nonNull_native);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
            v4 = v90;
            if ((v62 & 1) != (v63 & 1))
            {
              goto LABEL_63;
            }

LABEL_39:
            v18 = v91;
            if ((v62 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_16;
          }

          v4 = v90;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_39;
          }

          v87 = v41;
          specialized _NativeDictionary.copy()();
          v41 = v87;
          v18 = v91;
          if ((v62 & 1) == 0)
          {
LABEL_40:
            v18[(v41 >> 6) + 8] |= 1 << v41;
            *(v18[6] + 8 * v41) = v51;
            v82 = (v18[7] + 16 * v41);
            *v82 = v37;
            v82[1] = v39;

            v83 = v18[2];
            v45 = __OFADD__(v83, 1);
            v81 = v83 + 1;
            if (v45)
            {
              goto LABEL_61;
            }

            goto LABEL_46;
          }
        }

        else
        {
          if (v4 == 4)
          {
            break;
          }

          v64 = swift_getObjectType();
          v65 = *(v27 + 32);
          v31 = v28;
          v66 = v65(v64, v27);
          v67 = v65(v64, v27);
          v68 = (*(*v67 + 168))(v67);
          v69 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v68 longitude:(*(*v67 + 192))()];

          [v69 coordinate];

          destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
          v37 = v70;
          v39 = v71;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v18;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
          v74 = v18[2];
          v75 = (v73 & 1) == 0;
          v45 = __OFADD__(v74, v75);
          v76 = v74 + v75;
          if (v45)
          {
            goto LABEL_57;
          }

          v77 = v73;
          if (v18[3] < v76)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v72);
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
            v4 = v90;
            if ((v77 & 1) != (v78 & 1))
            {
LABEL_63:
              type metadata accessor for MapLocation(0);
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

LABEL_44:
            v18 = v91;
            if ((v77 & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_16;
          }

          v4 = v90;
          if (v72)
          {
            goto LABEL_44;
          }

          v88 = v41;
          specialized _NativeDictionary.copy()();
          v41 = v88;
          v18 = v91;
          if ((v77 & 1) == 0)
          {
LABEL_45:
            v18[(v41 >> 6) + 8] |= 1 << v41;
            *(v18[6] + 8 * v41) = v66;
            v84 = (v18[7] + 16 * v41);
            *v84 = v37;
            v84[1] = v39;

            v85 = v18[2];
            v45 = __OFADD__(v85, 1);
            v81 = v85 + 1;
            if (v45)
            {
              goto LABEL_60;
            }

            goto LABEL_46;
          }
        }

LABEL_16:
        v26 = (v18[7] + 16 * v41);
        *v26 = v37;
        v26[1] = v39;

LABEL_17:
        v25 += 2;
        if (!--v3)
        {

          return v18;
        }
      }

      v29 = swift_getObjectType();
      v30 = *(v27 + 32);
      v31 = v28;
      v32 = v30(v29, v27);
      v33 = v30(v29, v27);
      v34 = (*(*v33 + 168))(v33);
      v35 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v34 longitude:(*(*v33 + 192))()];

      [v35 coordinate];

      destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
      v37 = v36;
      v39 = v38;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v18;
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
      v43 = v18[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v47 = v42;
      if (v18[3] < v46)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, v40);
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
        v4 = v90;
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_63;
        }

LABEL_34:
        v18 = v91;
        if ((v47 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_16;
      }

      v4 = v90;
      if (v40)
      {
        goto LABEL_34;
      }

      v86 = v41;
      specialized _NativeDictionary.copy()();
      v41 = v86;
      v18 = v91;
      if ((v47 & 1) == 0)
      {
LABEL_35:
        v18[(v41 >> 6) + 8] |= 1 << v41;
        *(v18[6] + 8 * v41) = v32;
        v79 = (v18[7] + 16 * v41);
        *v79 = v37;
        v79[1] = v39;

        v80 = v18[2];
        v45 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v45)
        {
          goto LABEL_59;
        }

LABEL_46:
        v18[2] = v81;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    static MapsUtilities.boundingRegion(for:)(&v91, v19);
    if ((v92 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static CommonLogger.viewModel);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v91 = v24;
      *v23 = 136446466;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000021657FCF0, &v91);
      *(v23 + 12) = 2048;

      *(v23 + 14) = v3;

      _os_log_impl(&dword_21607C000, v21, v22, "MapsUtilities.%{public}s: Unable to set a bounding region (mapViewModels count=%ld. Returning nil", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x21CE94770](v24, -1, -1);
      MEMORY[0x21CE94770](v23, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
LABEL_62:
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static CommonLogger.viewModel);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v91 = v17;
      *v16 = 136446210;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000021657FCF0, &v91);
      _os_log_impl(&dword_21607C000, v14, v15, "MapsUtilities.%{public}s: No map view models provided. Returning nil.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CE94770](v17, -1, -1);
      MEMORY[0x21CE94770](v16, -1, -1);
    }
  }

  return 0;
}

double MapsUtilities.BoundingRegion.topLeftCoordinate.getter()
{
  __asm { FMOV            V2.2D, #0.5 }

  *&result = *&vaddq_f64(*v0, vmulq_f64(vabsq_f64(v0[1]), _Q2));
  return result;
}

CGPoint __swiftcall MapsUtilities.BoundingRegion.normalizedPositionFromTopLeft(coordinate:)(__C::CLLocationCoordinate2D coordinate)
{
  destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
  result.y = v2;
  result.x = v1;
  return result;
}

MomentsUI::MapsUtilities::BoundingRegion __swiftcall MapsUtilities.BoundingRegion.multipliedLongitudeBy(_:)(Swift::Double a1)
{
  v3 = v2[2];
  v4 = v2[3] * a1;
  v5 = *v2;
  *v1 = *v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  result.latitudeDelta = *&v5;
  result.centerLongitude = v3;
  result.centerLatitude = v4;
  return result;
}

MomentsUI::MapsUtilities::BoundingRegion __swiftcall MapsUtilities.BoundingRegion.init(centerLatitude:centerLongitude:latitudeDelta:longitudeDelta:)(Swift::Double centerLatitude, Swift::Double centerLongitude, Swift::Double latitudeDelta, Swift::Double longitudeDelta)
{
  *v4 = centerLatitude;
  v4[1] = centerLongitude;
  v4[2] = latitudeDelta;
  v4[3] = longitudeDelta;
  result.longitudeDelta = longitudeDelta;
  result.latitudeDelta = latitudeDelta;
  result.centerLongitude = centerLongitude;
  result.centerLatitude = centerLatitude;
  return result;
}

void static MapsUtilities.boundingRegion(for:)(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  static MapsUtilities.naiveBoundingRegion(for:)(a2, v14);
  v4 = v14[0];
  v3 = v14[1];
  v6 = v15;
  v5 = v16;
  v7 = v17;
  if (v17)
  {
    *a1 = v14[0];
    *(a1 + 8) = v3;
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
  }

  else
  {
    if (v15 > v16)
    {
      v8 = v15;
    }

    else
    {
      v8 = v16;
    }

    if (v8 >= 0.003)
    {
      *a1 = *v14 + v8 * -0.125;
      *(a1 + 8) = v3;
      *(a1 + 16) = v8 * 1.4 * 1.125;
      *(a1 + 24) = v8 * 1.4;
    }

    else
    {
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static CommonLogger.viewModel);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14[0] = v13;
        *v12 = 136446722;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000021657FD30, v14);
        *(v12 + 12) = 2048;
        *(v12 + 14) = v8;
        *(v12 + 22) = 2048;
        *(v12 + 24) = 0x3F689374BC6A7EFALL;
        _os_log_impl(&dword_21607C000, v10, v11, "MapsUtilities.%{public}s Auto-selected span length(%f) is shorter than minimum zoom length (%f). Setting zoom length to the minimum.", v12, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x21CE94770](v13, -1, -1);
        MEMORY[0x21CE94770](v12, -1, -1);
      }

      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = xmmword_21659B070;
    }
  }

  *(a1 + 32) = v7;
}

void static MapsUtilities.naiveBoundingRegion(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (v2 = *(a1 + 16), v2 >= 2))
  {
    v3 = (a1 + 40);
    v4 = MEMORY[0x277D84F90];
    v25 = *(a1 + 16);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      v9 = v5;
      v10 = v8(ObjectType, v6);
      v11 = (*(*v10 + 168))(v10);
      v12 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:(*(*v10 + 192))()];

      [v12 coordinate];
      v14 = v13;
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v18 = *(v4 + 2);
      v17 = *(v4 + 3);
      if (v18 >= v17 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
      }

      *(v4 + 2) = v18 + 1;
      v19 = &v4[16 * v18 + 32];
      *v19 = v14;
      *(v19 + 1) = v16;
      v3 += 2;
      --v2;
    }

    while (v2);
    v20 = [objc_opt_self() polygonWithCoordinates:v4 + 32 count:v25];

    [v20 boundingMapRect];
    v28 = MKCoordinateRegionForMapRect(v27);
    latitude = v28.center.latitude;
    longitude = v28.center.longitude;
    latitudeDelta = v28.span.latitudeDelta;
    longitudeDelta = v28.span.longitudeDelta;

    *a2 = latitude;
    *(a2 + 8) = longitude;
    *(a2 + 16) = latitudeDelta;
    *(a2 + 24) = longitudeDelta;
    *(a2 + 32) = 0;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }
}

void static MapsUtilities.viewportRegion(for:mapViewModels:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2 || *(a2 + 16) < 2uLL)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    return;
  }

  v4 = *a1;
  static MapsUtilities.boundingRegion(for:)(v10, a2);
  v5 = v10[1];
  v7 = *&v10[2];
  v6 = v11;
  if (v12)
  {
    *a3 = v10[0];
    *(a3 + 8) = v5;
    *(a3 + 16) = v7;
    *(a3 + 24) = v6;
    *(a3 + 32) = 1;
    return;
  }

  v8 = v11 * 1.3;
  if (v4 != 2)
  {
    if (v4 == 5)
    {
      v9 = 0.25;
      goto LABEL_11;
    }

    if (v4 != 4)
    {
      *a3 = v10[0];
      *(a3 + 8) = v5;
      *(a3 + 16) = v7;
      goto LABEL_13;
    }
  }

  v9 = 0.5;
LABEL_11:
  *a3 = v10[0];
  *(a3 + 8) = v5;
  *(a3 + 16) = v7 * v9;
LABEL_13:
  *(a3 + 24) = v8;
  *(a3 + 32) = 0;
}

char *static MapsUtilities.combinedMapViewModels(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v65 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  static MapsUtilities.naiveBoundingRegion(for:)(a1, v82);
  if (v83)
  {
    return 0;
  }

  v18 = a1[2];
  if (!v18)
  {
    return 0;
  }

  v73 = v4;
  v71 = v9;
  v77 = v15;
  v74 = v12;
  v19 = v82[0];
  v20 = a1[4];
  v21 = a1[5];
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 32);
  v78 = v20;
  *&v75 = ObjectType;
  v24 = ObjectType;
  v25 = v6;
  *&v76 = v21;
  v26 = v23(v24, v21);
  (*(*v26 + 216))();

  DateInterval.init()();
  type metadata accessor for MapLocation(0);
  v27 = swift_allocObject();
  UUID.init()();
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  v79 = v5;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = 1;
  v28 = (v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  *v29 = 0;
  v29[1] = 0;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = v19;
  *(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = *(&v19 + 1);
  v72 = *(v6 + 16);
  v72(v27 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v17, v79);
  v30 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  swift_beginAccess();
  *(v27 + v30) = 0;
  v31 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  *(v27 + v31) = 4;
  v32 = v78;

  v33 = *(v6 + 8);
  v33(v17, v79);
  v34 = *&v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
  if (!v34 || (v70 = v6 + 16, (v35 = *&v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles]) == 0))
  {

    return 0;
  }

  v67 = v33;
  v68 = v6 + 8;
  v36 = *(v76 + 8);
  v37 = *(v36 + 24);
  v69 = v34;

  v38 = v73;
  v37(v75, v36);
  v39 = v79;
  if ((*(v25 + 48))(v38, 1, v79) == 1)
  {

    outlined destroy of DateInterval?(v38);
    return 0;
  }

  v66 = v35;
  (*(v25 + 32))(v77, v38, v39);
  (*(v76 + 56))(v82, v75);
  v75 = v82[1];
  v76 = v82[0];
  v42 = v83;
  *&v80[0] = MEMORY[0x277D84F90];
  v43 = a1 + 5;
  do
  {
    v44 = *(v43 - 1);
    v45 = *v43;
    v46 = swift_getObjectType();
    v47 = *(v45 + 32);
    v48 = v44;
    v47(v46, v45);

    MEMORY[0x21CE92260]();
    if (*((*&v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v43 += 2;
    --v18;
  }

  while (v18);
  v49 = *&v80[0];
  v50 = v74;
  v51 = v79;
  v52 = v72;
  v72(v74, v77, v79);
  if (v49 >> 62)
  {
    v53 = __CocoaSet.count.getter();
  }

  else
  {
    v53 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v69;
  if (v53 <= 0)
  {

    v40 = 0;
    v61 = v67;
  }

  else
  {
    v55 = v71;
    v52(v71, v50, v51);
    v80[1] = v75;
    v80[0] = v76;
    v81 = v42;
    v56 = objc_allocWithZone(type metadata accessor for MutableMapViewModel(0));
    v57 = v50;
    v58 = v54;
    v59 = v66;

    v40 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v58, v59, v27, v55, 0, v80);

    if (v53 == 1)
    {
    }

    else
    {
      MEMORY[0x28223BE20](v60);
      *(&v65 - 4) = v58;
      *(&v65 - 3) = v59;
      *(&v65 - 2) = v57;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MomentsUI11MapLocationCG_AF0F9ViewModel_ps5NeverOTg5(partial apply for closure #1 in MutableMapViewModel.init(viewport:styles:representativeLocation:represenativeColor:locations:dateInterval:), (&v65 - 6), v49);
      v63 = v62;

      v64 = OBJC_IVAR____TtC9MomentsUI19MutableMapViewModel_mapViewModels;
      swift_beginAccess();
      *&v40[v64] = v63;
      v51 = v79;
    }

    v61 = v67;

    MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();
  }

  v61(v77, v51);
  v61(v74, v51);
  return v40;
}

void closure #1 in static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 32);
  v7 = v6(ObjectType, v4);
  v8 = (*(*v7 + 168))(v7);
  v9 = (*(*v7 + 192))();

  v10 = *a1;
  if (*(*a1 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    if (v12)
    {
      v13 = *(v10 + 56) + 16 * v11;
      v29 = *(v13 + 8);
      v14 = one-time initialization token for viewModel;
      v15 = *v13;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static CommonLogger.viewModel);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        v20 = swift_getObjectType();
        v28 = v19;
        v21 = (*(v29 + 32))(v20);
        (*(*v21 + 168))(v21);
        (*(*v21 + 192))();

        *(v27 + 4) = HashableCoordinate.hashValue.getter();

        _os_log_impl(&dword_21607C000, v18, v28, "[dedupedConsolidatedMapViewModels] Duplicate pin location detected at coordinate hash=%ld", v27, 0xCu);
        MEMORY[0x21CE94770](v27, -1, -1);
      }

      else
      {

        v18 = v17;
      }
    }
  }

  v22 = v6(ObjectType, v4);
  v23 = (*(*v22 + 168))(v22);
  v24 = (*(*v22 + 192))();

  v25 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v4, isUniquelyReferenced_nonNull_native, v23, v24);
  *a1 = v30;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy9MomentsUI11MapLocationCSo7CGPointVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_9i4UI11kl5C_So7M4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s9i106UI13MapsUtilitiesV8canFitIn9viewStyle13mapViewModelsSbSgAA05AssetK5ModelC0I0O_SayAA03MapkN0_pGSgtFZSbAA0O8l6C3key_vM16V5valuet_tXEfU1_Tf1nnc_nTm(v12, v7, v5, a3);
  result = MEMORY[0x21CE94770](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a5 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    v16 = *(*(a5 + 56) + 16 * v13 + 8);
    if (v16 > 0.375 && v16 < 0.625)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a4, v6, a5);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a4, v6, a5);
    }

    v15 = *(a5 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a5 + 64);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    v15 = *(*(a5 + 56) + 16 * v12 + 8);
    if (v15 > 0.25 && v15 < 0.45)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a4, v6, a5);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a4, v6, a5);
    }

    v14 = *(a5 + 64 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a5 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    v16 = *(*(a5 + 56) + 16 * v13 + 8);
    if (v16 > 0.1 && v16 < 0.75)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a4, v6, a5);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a4, v6, a5);
    }

    v15 = *(a5 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy9MomentsUI11MapLocationCSo7CGPointVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_9i4UI11kl5C_So7M4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s9i106UI13MapsUtilitiesV8canFitIn9viewStyle13mapViewModelsSbSgAA05AssetK5ModelC0I0O_SayAA03MapkN0_pGSgtFZSbAA0O8l6C3key_vM16V5valuet_tXEfU1_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCSo7CGPointVGMd, &_ss18_DictionaryStorageCy9MomentsUI11MapLocationCSo7CGPointVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    Hasher.init(_seed:)();
    v21 = *(*v17 + 264);

    v21(v34);
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v17;
    v30 = (*(v9 + 56) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t specialized Set._Variant.remove(at:)@<X0>(int64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v9 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    specialized _NativeSet.copy()();
    v9 = v11;
  }

  *a3 = *(*(v9 + 48) + 16 * a1);
  result = specialized _NativeSet._delete(at:)(a1);
  *v4 = v11;
  return result;
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 16 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x21CE93070](a1, a2, v7);
      type metadata accessor for UIScene();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for UIScene();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void *specialized static MapsUtilities.normalizedPositionsWithin(region:coordinates:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (a2 + 40);
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(v3 - 1);
    v7 = *v3;
    destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
    v9 = v8;
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v25;
    if (v19)
    {
LABEL_3:
      v5 = (v4[7] + 16 * v13);
      *v5 = v9;
      v5[1] = v11;
      goto LABEL_4;
    }

LABEL_11:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v4[6] + 16 * v13);
    *v21 = v6;
    v21[1] = v7;
    v22 = (v4[7] + 16 * v13);
    *v22 = v9;
    v22[1] = v11;
    v23 = v4[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_18;
    }

    v4[2] = v24;
LABEL_4:
    v3 += 2;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

void *LabeledImageView.init(viewModel:style:)(void *a1, char *a2)
{
  swift_getObjectType();
  v5 = *a2;
  v6 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for RoundImageView()) init];
  v8 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v9 setContentMode_];
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for RouteSpotlightView()) init];
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView] = 0;
  v11 = *MEMORY[0x277D76560];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v39._object = 0x800000021657FD50;
  v14._countAndFlagsBits = 0x7974697669746341;
  v14._object = 0xEE00746573734120;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD00000000000002ELL;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v39);

  v17 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v18 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v19 = a1;
  *&v2[v17] = [v18 init];
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 56))(&v2[v20], 1, 1, v21);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v5;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for AssetView(0);
  v22 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = MEMORY[0x277D85000];
  v24 = *((*MEMORY[0x277D85000] & *v22) + 0xE8);
  v25 = v22;
  v24();
  AssetView.setFallBackView()();
  [v25 setIsAccessibilityElement_];
  v26 = [v25 accessibilityTraits];
  if ((v11 & ~v26) != 0)
  {
    v27 = v11;
  }

  else
  {
    v27 = 0;
  }

  [v25 setAccessibilityTraits_];
  v28 = MEMORY[0x21CE91FC0](v16._countAndFlagsBits, v16._object);

  [v25 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21658CA50;
  v30 = type metadata accessor for UITraitUserInterfaceStyle();
  v31 = MEMORY[0x277D74BF0];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = v25;
  MEMORY[0x21CE92C30](v29, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v32 handleTraitChange];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  [v32 setClipsToBounds_];
  v37 = v5;
  v33 = *((*v23 & *v19) + 0x108);
  v34 = v32;
  v35 = v33(&v37);
  (*((*v23 & *v34) + 0x260))(v35);
  LabeledImageView.addConstraints()();
  (*((*v23 & *v34) + 0x270))();

  return v22;
}

uint64_t LabeledImageView.updateViews(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](LabeledImageView.updateViews(for:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](LabeledImageView.updateViews(for:), v4, v3);
}

uint64_t LabeledImageView.updateViews(for:)()
{
  v1 = v0[3];
  v0[7] = *(v1 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView);
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x278);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = LabeledImageView.updateViews(for:);
  v4 = v0[2];

  return v6(v4);
}

{
  v1 = v0[9];
  v2 = v0[7];

  v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (v1)
  {
    v1 = v0[9];
    v4 = v3;
    v5 = [v1 imageWithRenderingMode_];
  }

  else
  {
    v6 = v3;
    v5 = 0;
  }

  [v3 setImage_];

  v7 = v0[1];

  return v7();
}

double LabeledImageView.handleTraitLight()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, a2, v9);

  return result;
}

Swift::Void __swiftcall LabeledImageView.hideViews()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))(v1);
  [v2 setHidden_];
}

Swift::Void __swiftcall LabeledImageView.showViews()()
{
  AssetView.showViews()();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
  [v1 setHidden_];
}

uint64_t LabeledImageView.updateAndShowViews()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](LabeledImageView.updateAndShowViews(), v3, v2);
}

{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
  v3 = MEMORY[0x277D85000];
  if (v2)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0x188);
    v5 = v2;
    v6 = v4();
    if (v7)
    {
      v8 = MEMORY[0x21CE91FC0](v6);
    }

    else
    {
      v8 = 0;
    }

    [v5 setText_];

    v9 = v0[2];
  }

  else
  {
    v9 = v0[2];
  }

  v0[6] = v1;
  v10 = (*((*v3 & *v9) + 0x1B8))();
  if (v10)
  {
    v11 = v10;
    v12 = *(v0[2] + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
    if (v12)
    {
      v13 = v12;
      [v13 setAttributedText_];
    }
  }

  v14 = (*((*v3 & *v0[2]) + 0x1B0))();
  if (v15)
  {
    v16 = v15;
    v17 = *(v0[2] + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
    if (v17)
    {
      v18 = v14;
      v19 = v17;
      v20 = MEMORY[0x21CE91FC0](v18, v16);

      [v19 setText_];
    }

    else
    {
    }
  }

  v21 = v0[2];
  v22 = *(v21 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel);
  if (v22)
  {
    v23 = *((*v3 & *v21) + 0x1E8);
    v24 = v22;
    v25 = v23();
    if (v26)
    {
      v27 = MEMORY[0x21CE91FC0](v25);
    }

    else
    {
      v27 = 0;
    }

    [v24 setText_];

    v21 = v0[2];
  }

  v28 = [v21 traitCollection];
  v29 = [v28 userInterfaceStyle];

  v30 = *((*v3 & *v21) + 0x280);
  v33 = (v30 + *v30);
  v31 = swift_task_alloc();
  v0[7] = v31;
  *v31 = v0;
  v31[1] = LabeledImageView.updateAndShowViews();

  return v33(v29);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](LabeledImageView.updateAndShowViews(), v3, v2);
}

{
  v1 = *(v0 + 16);

  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v2);
  v3 = *(v0 + 8);

  return v3();
}

id LabeledImageView.contentView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void LabeledImageView.primaryLabelConfiguration.getter()
{
  v0 = [objc_opt_self() labelColor];
  [v0 colorWithAlphaComponent_];

  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  if (v2)
  {
    [objc_opt_self() fontWithDescriptor:v2 size:0.0];
  }

  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

void LabeledImageView.secondaryLabelConfiguration.getter(SEL *a1)
{
  [objc_opt_self() *a1];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    specialized static CommonTheme.Font.subheadlineMedium.getter();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall LabeledImageView.addSubViews()()
{
  [v0 addSubview_];
  v1 = [v0 addSubview_];
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v4 = (v3)(v1);
  [v0 addSubview_];

  v5 = v3();
  [v5 addSubview_];

  v6 = *((*v2 & *v0) + 0x268);

  v6();
}

Swift::Void __swiftcall LabeledImageView.updateStackView()()
{
  v2 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView;
  v3 = [*(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView) removeFromSuperview];
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = v5(&v105, v3);
  if (((1 << v105) & 0x34) == 0)
  {
    if (((1 << v105) & 0x83) != 0)
    {
      v7 = *&v2[v0];
      if (v7)
      {
        [v7 setHidden_];
      }

      v8 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      if (v8)
      {
        [v8 setHidden_];
      }

      v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
      if (v9)
      {

        [v9 setHidden_];
      }

      return;
    }

    if ((*((*v4 & *v0) + 0x1C8))(v6))
    {
      v33 = (*((*v4 & *v0) + 0x190))();
      v103 = v34;
      v104 = v33;
      v25 = v35;
      v37 = v36;
      v38 = (v5)(&v105);
      v39 = v25;
      if (v105 != 6)
      {
        v5(&v105, v38);
        if (v105 == 8)
        {
          v39 = v25;
        }

        else
        {
          v39 = v103;
        }
      }

      v40 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
      [v40 setFont_];
      [v40 setTextColor_];
      [v40 setPreferredVibrancy_];
      [v40 setLineBreakMode_];
      [v40 setNumberOfLines_];
      [v40 setTextAlignment_];
      [v40 setAdjustsFontForContentSizeCategory_];
      [v40 setMaximumContentSizeCategory_];
      v41 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v40;
      v42 = v40;

      v43 = *((*v4 & *v0) + 0x158);
      v44 = v43();
      v102 = v42;
      [v44 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658CA60;
      *(inited + 32) = (*((*v4 & *v0) + 0x1C0))();
      *(inited + 40) = v46;
      *(inited + 48) = v47;
      *(inited + 56) = v48;
      *(inited + 64) = (*((*v4 & *v0) + 0x1F0))();
      *(inited + 72) = v49;
      *(inited + 80) = v50;
      *(inited + 88) = v51;
      v52 = specialized static LabeledImageView.createVerticalLabelStack(with:alignment:)(inited, 3);
      v1 = v53;
      swift_setDeallocating();
      v54 = swift_arrayDestroy();
      v55 = (v43)(v54);
      [v55 addSubview_];

      v56 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack) = v52;
      v26 = v52;

      if (v1 >> 62)
      {
        goto LABEL_59;
      }

      v57 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
LABEL_86:
        v59 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        v96 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = 0;

        goto LABEL_87;
      }

LABEL_26:
      if ((v1 & 0xC000000000000001) != 0)
      {
LABEL_66:
        v86 = MEMORY[0x21CE93180](0, v1);
        v59 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        v87 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v86;

        if (v57 != 1)
        {
          v63 = MEMORY[0x21CE93180](1, v1);
          goto LABEL_31;
        }

        goto LABEL_87;
      }

      v19 = v1 & 0xFFFFFFFFFFFFFF8;
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v58 = *(v1 + 32);
        v59 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        v60 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
        *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v58;
        v61 = v58;

        if (v57 != 1)
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v63 = *(v1 + 40);
LABEL_31:
            v64 = v63;

LABEL_88:
            v97 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel);
            *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel) = v64;

            if (*v59)
            {
              v98 = *v59;
              [v98 setHidden_];
            }

            goto LABEL_91;
          }

LABEL_73:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_75:
            v22 = v62;
            if (!v62)
            {
              goto LABEL_76;
            }

LABEL_13:
            if ((v19 & 0xC000000000000001) != 0)
            {
              goto LABEL_56;
            }

            v26 = (v19 & 0xFFFFFFFFFFFFFF8);
            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v27 = *(v19 + 32);
              v28 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
              v29 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
              *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v27;
              v30 = v27;

              if (v22 == 1)
              {
                goto LABEL_77;
              }

              if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
              {
                v31 = *(v19 + 40);
                goto LABEL_18;
              }

              goto LABEL_69;
            }

            __break(1u);
LABEL_59:
            v84 = __CocoaSet.count.getter();
            if ((v84 & 0x8000000000000000) == 0)
            {
              v57 = v84;
              if (v84)
              {
                goto LABEL_26;
              }

              goto LABEL_86;
            }

            __break(1u);
LABEL_61:
            v19 = __CocoaSet.count.getter();
            if (!v19)
            {
              goto LABEL_62;
            }

LABEL_37:
            v22 = 0;
            v57 = v25 & 0xC000000000000001;
            v1 = v25 & 0xFFFFFFFFFFFFFF8;
            v2 = &unk_27821E000;
            do
            {
              if (v57)
              {
                v74 = MEMORY[0x21CE93180](v22, v25);
              }

              else
              {
                if (v22 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_53;
                }

                v74 = *(v25 + 8 * v22 + 32);
              }

              v75 = v74;
              v76 = (v22 + 1);
              if (__OFADD__(v22, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              v26 = (*((*MEMORY[0x277D85000] & *v0) + 0x158))();
              [v26 addSubview_];

              ++v22;
            }

            while (v76 != v19);
            if ((v19 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_66;
            }

            v2 = v101;
            if (v57)
            {
              goto LABEL_70;
            }

            if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_73;
            }

            v77 = *(v25 + 32);
            v78 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
            *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v77;
            v79 = v77;

            if (v19 == 1)
            {
              goto LABEL_63;
            }

            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
            {
              v80 = *(v25 + 40);
              goto LABEL_51;
            }
          }
        }

LABEL_87:

        v64 = 0;
        goto LABEL_88;
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v88 = MEMORY[0x21CE93180](0, v25);
      v89 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v88;

      if (v19 != 1)
      {
        v80 = MEMORY[0x21CE93180](1, v25);
LABEL_51:
        v81 = v80;

        goto LABEL_64;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMR);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_21658CA60;
      *(v65 + 32) = (*((*v4 & *v0) + 0x190))();
      *(v65 + 40) = v66;
      *(v65 + 48) = v67;
      *(v65 + 56) = v68;
      *(v65 + 64) = (*((*v4 & *v0) + 0x1C0))();
      *(v65 + 72) = v69;
      *(v65 + 80) = v70;
      *(v65 + 88) = v71;
      v72 = (v5)(&v105);
      if (v105 == 6)
      {
        v73 = 1;
      }

      else
      {
        v5(&v105, v72);
        v73 = v105 == 8;
      }

      v25 = specialized static LabeledImageView.createLabels(with:preferLargeFont:centered:)(v65, v73, 1);
      swift_setDeallocating();
      swift_arrayDestroy();
      v101 = v2;
      if (v25 >> 62)
      {
        goto LABEL_61;
      }

      v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_37;
      }

LABEL_62:
      v85 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
      *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = 0;

      v2 = v101;
    }

LABEL_63:

    v81 = 0;
LABEL_64:
    v25 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
    *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v81;
LABEL_91:

    v99 = *&v2[v0];
    if (v99)
    {
      [v99 setHidden_];
    }

    v100 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
    if (v100)
    {
      [v100 setHidden_];
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI18LabelConfigurationVGMR);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_21658CA60;
  *(v10 + 32) = (*((*v4 & *v0) + 0x190))();
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 56) = v13;
  *(v10 + 64) = (*((*v4 & *v0) + 0x1C0))();
  *(v10 + 72) = v14;
  *(v10 + 80) = v15;
  *(v10 + 88) = v16;
  v17 = specialized static LabeledImageView.createVerticalLabelStack(with:alignment:)(v10, 1);
  v19 = v18;
  swift_setDeallocating();
  v20 = swift_arrayDestroy();
  v21 = (*((*v4 & *v0) + 0x158))(v20);
  v22 = v17;
  [v21 addSubview_];

  v23 = *&v2[v0];
  *&v2[v0] = v22;

  v24 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack);
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack) = v22;
  v25 = v22;

  if (!(v19 >> 62))
  {
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_76:
    v28 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
    v90 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
    *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = 0;

    goto LABEL_77;
  }

LABEL_54:
  v62 = __CocoaSet.count.getter();
  if ((v62 & 0x8000000000000000) == 0)
  {
    goto LABEL_75;
  }

  __break(1u);
LABEL_56:
  v82 = MEMORY[0x21CE93180](0, v19);
  v28 = (v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
  v83 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel);
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = v82;

  if (v22 != 1)
  {
    v31 = MEMORY[0x21CE93180](1, v19);
LABEL_18:
    v32 = v31;

    goto LABEL_78;
  }

LABEL_77:

  v32 = 0;
LABEL_78:
  v91 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel;
  v92 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel);
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = v32;

  v93 = *&v2[v0];
  if (v93)
  {
    [v93 setHidden_];
  }

  if (*v28)
  {
    [*v28 setHidden_];
  }

  v94 = *(v0 + v91);
  if (v94)
  {
    v95 = v94;
    [v95 setHidden_];
  }
}

Swift::Void __swiftcall LabeledImageView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x230))();
  v3 = MEMORY[0x21CE91FC0](v2);

  v4 = [objc_opt_self() _systemImageNamed_];

  [v1 setImage_];
}

uint64_t LabeledImageView.image(style:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v4, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 96) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 128) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 160) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LabeledImageView.image(style:), v6, v5);
}

uint64_t LabeledImageView.image(style:)()
{
  v49 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x70);
  v3 = v2();
  *(v0 + 64) = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = (*(v6 + 72))(ObjectType, v6);
    *(v0 + 72) = v7;
    if (v7)
    {
      v8 = *(v0 + 32);
      v9 = (*((*v1 & *v8) + 0x88))();
      v10 = (*((*v1 & *v8) + 0xD8))(v9);
      v11 = v2();
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
        v13 = v11;
        v14 = v12;
      }

      else
      {
        v12 = 0;
      }

      *(v0 + 80) = v12;
      v22 = swift_task_alloc();
      *(v0 + 88) = v22;
      *v22 = v0;
      v22[1] = LabeledImageView.image(style:);
      v23 = *(v0 + 24);
      v24 = (v0 + 170);
LABEL_30:

      return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(v24, v23, v10, v12, 0x7473286567616D69, 0xED0000293A656C79);
    }

    goto LABEL_16;
  }

  v15 = swift_conformsToProtocol2();
  if (v15)
  {
    v16 = (*(v15 + 120))(ObjectType, v15);
    *(v0 + 104) = v16;
    if (v16)
    {
      v17 = *(v0 + 32);
      v18 = (*((*v1 & *v17) + 0x88))();
      v10 = (*((*v1 & *v17) + 0xD8))(v18);
      v19 = v2();
      if (v19)
      {
        v12 = *(v19 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
        v20 = v19;
        v21 = v12;
      }

      else
      {
        v12 = 0;
      }

      *(v0 + 112) = v12;
      v32 = swift_task_alloc();
      *(v0 + 120) = v32;
      *v32 = v0;
      v32[1] = LabeledImageView.image(style:);
      v23 = *(v0 + 24);
      v24 = (v0 + 169);
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v25 = swift_conformsToProtocol2();
  if (!v25)
  {

LABEL_20:

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 32);
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static CommonLogger.views);
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      v40 = (v2)(v39);
      *(v0 + 16) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14AssetViewModelCSgMd, &_s9MomentsUI14AssetViewModelCSgMR);
      v41 = Optional.debugDescription.getter();
      v43 = v42;

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v48);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_21607C000, v36, v37, "unknown viewModel %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CE94770](v39, -1, -1);
      MEMORY[0x21CE94770](v38, -1, -1);
    }

    goto LABEL_25;
  }

  v26 = (*(v25 + 40))(ObjectType, v25);
  *(v0 + 136) = v26;
  if (v26)
  {
    v27 = *(v0 + 32);
    v28 = (*((*v1 & *v27) + 0x88))();
    v10 = (*((*v1 & *v27) + 0xD8))(v28);
    v29 = v2();
    if (v29)
    {
      v12 = *(v29 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
      v30 = v29;
      v31 = v12;
    }

    else
    {
      v12 = 0;
    }

    *(v0 + 144) = v12;
    v47 = swift_task_alloc();
    *(v0 + 152) = v47;
    *v47 = v0;
    v47[1] = LabeledImageView.image(style:);
    v23 = *(v0 + 24);
    v24 = (v0 + 168);
    goto LABEL_30;
  }

LABEL_16:

LABEL_25:
  v45 = *(v0 + 8);

  return v45(0);
}

{
  v1 = v0[8];

  v2 = v0[12];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[8];

  v2 = v0[16];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[8];

  v2 = v0[20];
  v3 = v0[1];

  return v3(v2);
}

uint64_t LabeledImageView.title.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0xD0))();

  return v4;
}

void key path setter for LabeledImageView.contentView : LabeledImageView(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

Swift::Void __swiftcall LabeledImageView.addConstraints()()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [*&v0[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView] setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v5 = (v4)(v2);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = *((*v3 & *v0) + 0x88);
  v7 = v6((&v92 + 4));
  v8 = dbl_21659B2A8[SBYTE4(v92)];
  v9 = dbl_21659B2F0[SBYTE4(v92)];
  v10 = (v4)(v7);
  UIView.fillSuper(horizontalMargin:verticalMargin:)(v8, v9);

  v11 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView];
  v12 = (v6)((&v92 + 3), [v11 setTranslatesAutoresizingMaskIntoConstraints_]);
  if (!BYTE3(v92))
  {
    goto LABEL_4;
  }

  v12 = (v6)((&v92 + 2), v12);
  v13 = BYTE2(v92);
  if (BYTE2(v92) == 1)
  {
    goto LABEL_6;
  }

  v12 = (v6)((&v92 + 1), v12);
  if (BYTE1(v92) != 7)
  {
    v87 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21658E180;
    v15 = [v11 widthAnchor];
    v16 = [v11 heightAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [v11 widthAnchor];
    v19 = v4();
    v20 = [v19 widthAnchor];

    v21 = [v18 constraintLessThanOrEqualToAnchor_];
    *(v14 + 40) = v21;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v87 activateConstraints_];

    v13 = 0;
  }

  else
  {
LABEL_4:
    v13 = 1;
  }

LABEL_6:
  v23 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack];
  if (v23)
  {
    v24 = v23;
    v25 = [v11 superview];
    v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v25)
    {
      v27 = v25;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v28 = [v11 leadingAnchor];
      v29 = [v27 leadingAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      [v30 setConstant_];
      if (v30)
      {
        [v30 setActive_];
      }
    }

    v31 = [v11 superview];
    if (v31)
    {
      v32 = v31;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v33 = [v11 centerYAnchor];
      v34 = [v32 centerYAnchor];
      v35 = [v33 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      [v35 setConstant_];
      if (v35)
      {
        [v35 setActive_];
      }
    }

    v36 = [v11 superview];
    if (v36)
    {
      v37 = v36;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v38 = [v11 topAnchor];
      v39 = [v37 topAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      [v40 setConstant_];
      if (v40)
      {
        [v40 setActive_];
      }
    }

    v41 = [v11 superview];
    if (v41)
    {
      v42 = v41;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v43 = [v11 bottomAnchor];
      v44 = [v42 bottomAnchor];
      v45 = [v43 constraintEqualToAnchor_];

      v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      if (v45)
      {
        [v45 setConstant_];
        [v45 setActive_];
      }
    }

    v46 = v24;
    v6(&v89);
    v47 = 8.0;
    if (v89 - 3 <= 5)
    {
      v47 = dbl_21659B338[(v89 - 3)];
    }

    [v46 setTranslatesAutoresizingMaskIntoConstraints_];
    v48 = [v46 leadingAnchor];
    v49 = [v11 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor_];

    [v50 setConstant_];
    [v50 v26[8]];

    v51 = [v46 superview];
    if (v51)
    {
      v52 = v51;
      [v46 setTranslatesAutoresizingMaskIntoConstraints_];
      v53 = [v46 trailingAnchor];
      v54 = [v52 trailingAnchor];
      v55 = [v53 constraintEqualToAnchor_];

      [v55 setConstant_];
      [v55 v26[8]];
    }

    v56 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21658E180;
    v58 = [v11 heightAnchor];
    v59 = [v46 heightAnchor];

    v60 = [v58 constraintGreaterThanOrEqualToAnchor_];
    *(v57 + 32) = v60;
    v61 = [v46 centerYAnchor];

    v62 = [v11 centerYAnchor];
    v63 = [v61 constraintEqualToAnchor_];

    *(v57 + 40) = v63;
    type metadata accessor for NSLayoutConstraint();
    v88 = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints_];
    goto LABEL_32;
  }

  v64 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel;
  v65 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel];
  if (v65)
  {
    v66 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack];
    if (v66)
    {
      v46 = v65;
      v88 = v66;
      [(objc_class *)v88 setAlignment:3];
      v67 = v46;
      v68 = v11;
      v69 = v88;
LABEL_31:
      LabeledImageView.alignLabelImageView(label:viewBelowLabel:viewBelowView:)(v67, v68, v69);
LABEL_32:

      return;
    }
  }

  if (v13)
  {
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    (v6)(&v92, v12);
    if (v92 <= 8u && ((1 << v92) & 0x148) != 0)
    {
      v70 = *&v1[v64];
      if (!v70)
      {
        return;
      }

      v71 = *&v1[OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel];
      if (!v71)
      {
        return;
      }

      v46 = v70;
      v69 = v71;
      v88 = v69;
      v67 = v46;
      v68 = v11;
      goto LABEL_31;
    }

    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static CommonLogger.views);
    v73 = v1;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v91 = v77;
      *v76 = 136315394;
      v78 = [v73 description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v91);

      *(v76 + 4) = v82;
      *(v76 + 12) = 2080;
      (v6)(&v90, v83);
      v84 = String.init<A>(describing:)();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v91);

      *(v76 + 14) = v86;
      _os_log_impl(&dword_21607C000, v74, v75, "[%s] skipping adding constraints for style=%s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v77, -1, -1);
      MEMORY[0x21CE94770](v76, -1, -1);
    }
  }
}

id LabeledImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t closure #1 in LabeledImageView.handleTraitLight()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitLight(), v6, v5);
}

uint64_t closure #1 in LabeledImageView.handleTraitLight()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x280);
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = closure #1 in LabeledImageView.handleTraitLight();

    return v9(v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitLight(), v3, v2);
}

uint64_t closure #1 in LabeledImageView.handleTraitDark()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitDark(), v6, v5);
}

uint64_t closure #1 in LabeledImageView.handleTraitDark()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x280);
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = closure #1 in LabeledImageView.handleTraitDark();

    return v9(v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in LabeledImageView.handleTraitDark(), v3, v2);
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

id LabeledImageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LabeledImageView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView);
}

id LabeledImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabeledImageView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance LabeledImageView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 600))(a1, &v6);
  *a3 = result;
  return result;
}

void LabeledImageView.alignLabelImageView(label:viewBelowLabel:viewBelowView:)(void *a1, void *a2, void *a3)
{
  v7 = [a1 superview];
  v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  if (v7)
  {
    v9 = v7;
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [a1 topAnchor];
    v11 = [v9 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v12 setConstant_];
    if (v12)
    {
      [v12 setActive_];
    }
  }

  v57 = *((*MEMORY[0x277D85000] & *v3) + 0x88);
  v57((&v59 + 5));
  v13 = 6.0;
  if ((BYTE5(v59) - 3) <= 3u)
  {
    v13 = dbl_21659B368[(BYTE5(v59) - 3)];
  }

  v14 = [a1 superview];
  if (v14)
  {
    v15 = v14;
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = [a1 leadingAnchor];
    v17 = [v15 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v18 setConstant_];
    if (v18)
    {
      [v18 setActive_];
    }
  }

  v57((&v59 + 4));
  v19 = 6.0;
  if ((BYTE4(v59) - 3) <= 3u)
  {
    v19 = dbl_21659B368[(BYTE4(v59) - 3)];
  }

  v20 = [a1 superview];
  if (v20)
  {
    v21 = v20;
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    v22 = [a1 trailingAnchor];
    v23 = [v21 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v24 setConstant_];
    if (v24)
    {
      [v24 setActive_];
    }
  }

  (v57)((&v59 + 3), [a1 setTextAlignment_]);
  v25 = 8.0;
  if (BYTE3(v59) - 3 <= 5)
  {
    v25 = dbl_21659B338[(BYTE3(v59) - 3)];
  }

  [a2 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [a2 topAnchor];
  v27 = [a1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  [v28 setConstant_];
  [v28 v8[8]];

  v29 = [a2 superview];
  if (v29)
  {
    v30 = v29;
    [a2 &off_27821E5B8 + 2];
    v31 = [a2 centerXAnchor];
    v32 = [v30 centerXAnchor];
    v33 = [v31 &selRef_safeAreaLayoutGuide + 5];

    [v33 setConstant_];
    [v33 setActive_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  v34 = [a2 widthAnchor];
  v35 = [a2 heightAnchor];
  v36 = [v34 &selRef_safeAreaLayoutGuide + 5];

  [v36 v8[8]];
  v57((&v59 + 2));
  v37 = 8.0;
  if (BYTE2(v59) - 3 <= 5)
  {
    v37 = dbl_21659B338[(BYTE2(v59) - 3)];
  }

  [a3 &off_27821E5B8 + 2];
  v38 = [a3 topAnchor];
  v39 = [a2 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  [v40 setConstant_];
  [v40 v8[8]];

  v41 = [a3 superview];
  if (v41)
  {
    v42 = v41;
    [a3 &off_27821E5B8 + 2];
    v43 = [a3 bottomAnchor];
    v44 = [v42 bottomAnchor];
    v45 = [v43 &selRef_safeAreaLayoutGuide + 5];

    if (v45)
    {
      [v45 setConstant_];
      [v45 v8[8]];
    }
  }

  v57((&v59 + 1));
  v46 = 6.0;
  if ((BYTE1(v59) - 3) <= 3u)
  {
    v46 = dbl_21659B368[(BYTE1(v59) - 3)];
  }

  v47 = [a3 superview];
  if (v47)
  {
    v48 = v47;
    [a3 &off_27821E5B8 + 2];
    v49 = [a3 leadingAnchor];
    v50 = [v48 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    [v51 setConstant_];
    [v51 v8[8]];
  }

  v57(&v59);
  v52 = 6.0;
  if ((v59 - 3) <= 3u)
  {
    v52 = dbl_21659B368[(v59 - 3)];
  }

  v53 = [a3 superview];
  if (v53)
  {
    v58 = v53;
    [a3 &off_27821E5B8 + 2];
    v54 = [a3 trailingAnchor];
    v55 = [v58 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    [v56 setConstant_];
    [v56 v8[8]];
  }
}

uint64_t partial apply for closure #1 in LabeledImageView.handleTraitLight()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in LabeledImageView.handleTraitLight()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LabeledImageView.handleTraitDark()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in LabeledImageView.handleTraitDark()(a1, v4, v5, v6);
}

uint64_t specialized static LabeledImageView.createLabels(with:preferLargeFont:centered:)(uint64_t a1, char a2, char a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 4;
    if (a3)
    {
      v8 = 1;
    }

    v20 = *MEMORY[0x277D76808];
    v21 = v8;
    v9 = (a1 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v14 = objc_allocWithZone(MEMORY[0x277D756B8]);
      v22 = v12;
      v15 = v10;
      v16 = v11;
      v17 = [v14 init];
      v18 = v17;
      if (a2)
      {
        v19 = v12;
      }

      else
      {
        v19 = v11;
      }

      [v17 setFont_];
      [v18 setTextColor_];
      [v18 setPreferredVibrancy_];
      [v18 setLineBreakMode_];
      [v18 setNumberOfLines_];
      [v18 setTextAlignment_];
      [v18 setAdjustsFontForContentSizeCategory_];
      [v18 setMaximumContentSizeCategory_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 4;
      --v4;
    }

    while (v4);
    return v23;
  }

  return result;
}

unint64_t specialized static LabeledImageView.createVerticalLabelStack(with:alignment:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setAlignment_];
  result = specialized static LabeledImageView.createLabels(with:preferLargeFont:centered:)(a1, 0, a2 == 3);
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v4;
  }

  result = __CocoaSet.count.getter();
  v7 = result;
  if (!result)
  {
    return v4;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v4 addArrangedSubview_];
    }

    return v4;
  }

  __break(1u);
  return result;
}

void specialized LabeledImageView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for RoundImageView()) init];
  v3 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_backgroundImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI16LabeledImageView_spotlightView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for RouteSpotlightView()) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_tertiaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_primarySecondaryLabelStack) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_secondaryTertiaryLabelStack) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_reusedStackView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for LabeledImageView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LabeledImageView;
  if (!type metadata singleton initialization cache for LabeledImageView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LabelConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LabelConfiguration(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of LabeledImageView.image(style:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x278);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v7(a1);
}

uint64_t dispatch thunk of LabeledImageView.updateViews(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x280);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1);
}

id Blob.__allocating_init(dataFuture:dataURLFuture:assetClass:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), char *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = v11;
  v13 = *a5;
  if (a1)
  {
    v14 = &v11[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v14 = a1;
    *(v14 + 1) = a2;
    if (!a3)
    {
      a4 = 0;
      a3 = closure #3 in DBAssetModel.init(from:);
    }
  }

  else
  {
    if (!a3)
    {
      swift_deallocPartialClassInstance();
      return 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = &v12[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v16 = partial apply for closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:);
    v16[1] = v15;
  }

  v17 = &v12[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v17 = a3;
  v17[1] = a4;
  v12[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v13;
  v19.receiver = v12;
  v19.super_class = v5;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t Blob._dataFuture.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture);

  return v1;
}

uint64_t Blob.data.getter()
{
  result = (*(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture))();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  return result;
}

uint64_t Blob._dataURLFuture.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture);
  outlined copy of (@escaping @callee_guaranteed () -> (@unowned UInt?))?(v1, *(v0 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture + 8));
  return v1;
}

uint64_t Blob.dataURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture);
  if (v10)
  {
    v10(v7);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) != 1)
    {
      (*(v12 + 32))(v9, v6, v11);
      (*(v12 + 56))(v9, 0, 1, v11);
      goto LABEL_7;
    }
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  type metadata accessor for URL();
  v13 = *(v11 - 8);
  (*(v13 + 56))(v9, 1, 1, v11);
  if ((*(v13 + 48))(v6, 1, v11) != 1)
  {
    outlined destroy of UTType?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

LABEL_7:
  type metadata accessor for URL();
  v14 = *(v11 - 8);
  if ((*(v14 + 48))(v9, 1, v11) == 1)
  {
    outlined destroy of UTType?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v9, v11);
    v15 = 0;
  }

  return (*(v14 + 56))(a1, v15, 1, v11);
}

void Blob.assetClass.getter(BOOL *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI4Blob__assetClass);
  if (v2 == 2)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture) != 0;
  }

  else
  {
    *a1 = v2 & 1;
  }
}

void Blob.AssetDataKeys.init(rawValue:)(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Blob.AssetDataKeys.init(rawValue:), v3);

  *a2 = v5 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Blob.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Blob.AssetDataKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance Blob.AssetDataKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Blob.AssetDataKeys, *a1);

  *a2 = v3 != 0;
}

id Blob.__allocating_init(data:assetClass:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = objc_allocWithZone(v3);
  LOBYTE(a3) = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = &v7[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v9 = partial apply for closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:);
  v9[1] = v8;
  v10 = &v7[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v10 = closure #3 in DBAssetModel.init(from:);
  v10[1] = 0;
  v7[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, sel_init);
}

id Blob.init(data:assetClass:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = &v3[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v8 = closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)partial apply;
  v8[1] = v7;
  v9 = &v3[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v9 = closure #3 in DBAssetModel.init(from:);
  v9[1] = 0;
  v3[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v11, sel_init);
}

id Blob.__allocating_init(dataURL:assetClass:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = objc_allocWithZone(v3);
  v10 = *a2;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = swift_allocObject();
  *(v13 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TA_0;
  *(v13 + 24) = v12;
  v14 = &v9[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v14 = _s10Foundation3URLVIegr_ACSgIegr_TRTA_0;
  v14[1] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TA_0;
  *(v15 + 24) = v12;
  v16 = &v9[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v16 = partial apply for closure #2 in Blob.init(dataURL:assetClass:);
  v16[1] = v15;
  v9[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v10;
  v19.receiver = v9;
  v19.super_class = v3;

  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v7 + 8))(a1, v6);
  return v17;
}

id Blob.init(dataURL:assetClass:)(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *a2;
  (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v11 + 24) = v10;
  v12 = &v2[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v12 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
  v12[1] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v13 + 24) = v10;
  v14 = &v2[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
  *v14 = closure #2 in Blob.init(dataURL:assetClass:)partial apply;
  v14[1] = v13;
  v2[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v8;
  v15 = type metadata accessor for Blob();
  v18.receiver = v2;
  v18.super_class = v15;

  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v6 + 8))(a1, v5);
  return v16;
}

uint64_t closure #2 in Blob.init(dataURL:assetClass:)(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = Data.init(contentsOf:options:)();
  (*(v3 + 8))(v6, v2);
  return v7;
}

id Blob.init(dataFuture:dataURLFuture:assetClass:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), char *a5)
{
  v7 = a3;
  v8 = *a5;
  if (a1)
  {
    v9 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v9 = a1;
    v9[1] = a2;
    if (!a3)
    {
      a4 = 0;
      v7 = closure #3 in DBAssetModel.init(from:);
    }
  }

  else
  {
    if (!a3)
    {
      type metadata accessor for Blob();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = a4;
    v11 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataFuture];
    *v11 = closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:)partial apply;
    v11[1] = v10;
  }

  v12 = &v5[OBJC_IVAR____TtC9MomentsUI4Blob__dataURLFuture];
  *v12 = v7;
  v12[1] = a4;
  v5[OBJC_IVAR____TtC9MomentsUI4Blob__assetClass] = v8;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t closure #1 in Blob.init(dataFuture:dataURLFuture:assetClass:)(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a1(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = Data.init(contentsOf:options:)();
    (*(v6 + 8))(v9, v5);
    return v11;
  }
}

id Blob.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Blob.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Blob();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized static Blob.blob2DB(_:ext:)(void *a1, uint64_t a2, unint64_t a3)
{
  v144 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v127 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v143 = (v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UUID();
  v147 = *(v11 - 8);
  v148 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v146 = v127 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v127 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v127 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v127 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v127 - v29);
  v31 = MEMORY[0x28223BE20](v30);
  v37 = v127 - v36;
  if (a1)
  {
    v135 = v8;
    v136 = v9;
    v131 = v32;
    v139 = a3;
    v141 = v31;
    v145 = v35;
    object = v34;
    v142 = v18;
    v133 = v33;
    v137 = v14;
    v140 = v7;
    v38 = MEMORY[0x277D85000];
    v39 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
    v40 = a1;
    v39();
    v41 = type metadata accessor for URL();
    v42 = *(v41 - 8);
    v43 = *(v42 + 48);
    v44 = v43(v37, 1, v41);
    countAndFlagsBits = v43;
    if (v44 != 1)
    {
      v137 = URL.path.getter();
      v133 = v53;
      v54 = *(v42 + 8);
      v131 = (v42 + 8);
      v129 = v54;
      v55 = (v54)(v37, v41);
      v56 = *((*v38 & *v40) + 0x78);
      v134 = v40;
      v56(&v157, v55);
      v57 = v157;
      v58 = *(v42 + 56);
      v58(v145, 1, 1, v41);
      v59 = v142;
      UUID.init()();
      v58(v28, 1, 1, v41);
      (*(v136 + 104))(v143, *MEMORY[0x277CC91D8], v135);
      v60 = v141;
      URL.init(filePath:directoryHint:relativeTo:)();
      v58(v60, 0, 1, v41);
      v61 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
      v62 = (v61 == 2) | v61;
      v63 = UUID.uuidString.getter();
      LODWORD(v135) = v57;
      v156 = v57;
      v126 = v62 & 1;
      v64 = v145;
      specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v63, v65, 0, 0xF000000000000000, 0, 1, 0, 0xF000000000000000, &v149, v60, v144, v139, &v156, v145, v126, 0);
      v130 = v149;
      v144 = v150;
      v143 = v151;
      v139 = v152;
      v137 = v153;
      v133 = v154;
      v136 = v155;

      outlined init with copy of URL?(v64, v25);
      if (countAndFlagsBits(v25, 1, v41) == 1)
      {
        outlined destroy of UTType?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        v79 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v79._countAndFlagsBits;
        object = v79._object;
        v129(v25, v41);
      }

      v80 = *(v147 + 16);
      v80(v146, v59, v148);
      v81 = type metadata accessor for DBAssetData(0);
      v82 = swift_allocObject();
      *(v82 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_MR);
      v83 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
      v149 = v81;
      v150 = v81;
      v151 = v83;
      v152 = v83;
      *(v82 + 80) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1((v82 + 48));
      static PersistentModel.createBackingData<A>()();
      *(v82 + 16) = 16843009;
      *(v82 + 20) = 257;
      *(v82 + 22) = 1;
      *(v82 + 32) = 0;
      *(v82 + 24) = 0;
      v131 = (v82 + 24);
      __swift_project_boxed_opaque_existential_1((v82 + 48), *(v82 + 72));
      swift_getKeyPath();
      v149 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd, &_sSay9MomentsUI12DBSuggestionCGSgMR);
      type metadata accessor for DBSuggestion(0);
      lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
      dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

      *(v82 + 40) = 0;
      ObservationRegistrar.init()();
      v84 = v140;
      v85 = v148;
      v80(v140, v146, v148);
      (*(v147 + 56))(v84, 0, 1, v85);
      v149 = v82;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v129 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of UTType?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v149 = v82;
      v87 = swift_getKeyPath();
      MEMORY[0x28223BE20](v87);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v149 = v82;
      v88 = swift_getKeyPath();
      MEMORY[0x28223BE20](v88);
      v89 = v144;
      v90 = v143;
      outlined copy of Data._Representation(v144, v143);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Data._Representation(v89, v90);

      v149 = v82;
      v91 = swift_getKeyPath();
      MEMORY[0x28223BE20](v91);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v149 = v82;
      v92 = swift_getKeyPath();
      MEMORY[0x28223BE20](v92);
      v93 = v139;
      v94 = v137;
      outlined copy of Data?(v139, v137);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Data?(v93, v94);

      v149 = v82;
      v95 = swift_getKeyPath();
      MEMORY[0x28223BE20](v95);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v96 = v131;
      swift_beginAccess();
      *v96 = countAndFlagsBits;
      *(v82 + 32) = object;

      DBAssetData.refreshAssetLoaded()();
      outlined consume of Data?(v93, v94);
      outlined consume of Data._Representation(v144, v143);
      v97 = *(v147 + 8);
      v98 = v148;
      v97(v146, v148);
      outlined destroy of UTType?(v141, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v97(v142, v98);
      v99 = v145;
      goto LABEL_28;
    }

    v143 = v41;
    v145 = (v42 + 48);
    v45 = outlined destroy of UTType?(v37, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    result = (*((*v38 & *v40) + 0x68))(v45);
    v48 = result;
    v49 = v47;
    v50 = v47 >> 62;
    if ((v47 >> 62) <= 1)
    {
      if (!v50)
      {
        v51 = BYTE6(v47);
        if (!BYTE6(v47))
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      v100 = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v51 = v100;
        if (v100 <= 0)
        {
          goto LABEL_21;
        }

LABEL_15:
        v68 = *((*v38 & *v40) + 0x78);
        v134 = v40;
        v142 = v51;
        v68(&v157);
        v69 = v157;
        v70 = *(v42 + 56);
        v71 = v133;
        v72 = v143;
        v70(v133, 1, 1, v143);
        UUID.init()();
        v73 = object;
        v70(object, 1, 1, v72);
        v74 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
        LOBYTE(v70) = (v74 == 2) | v74;
        v75 = UUID.uuidString.getter();
        v128 = v69;
        v156 = v69;
        specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v75, v76, 0, 0xF000000000000000, v142, 0, v48, v49, &v149, v73, v144, v139, &v156, v71, v70 & 1, 0);
        v127[1] = v149;
        v144 = v150;
        v142 = v151;
        v139 = v152;
        v135 = v153;
        v129 = v154;
        v130 = v155;

        v77 = v131;
        outlined init with copy of URL?(v71, v131);
        v78 = countAndFlagsBits(v77, 1, v72);
        v141 = v49;
        v136 = v48;
        if (v78 == 1)
        {
          outlined destroy of UTType?(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v145 = 0;
          countAndFlagsBits = 0;
        }

        else
        {
          v106 = URL.path(percentEncoded:)(1);
          v145 = v106._countAndFlagsBits;
          countAndFlagsBits = v106._object;
          (*(v42 + 8))(v77, v72);
        }

        v107 = *(v147 + 16);
        v107(v146, v137, v148);
        v108 = type metadata accessor for DBAssetData(0);
        v82 = swift_allocObject();
        *(v82 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_MR);
        v109 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
        v149 = v108;
        v150 = v108;
        v151 = v109;
        v152 = v109;
        *(v82 + 80) = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1((v82 + 48));
        static PersistentModel.createBackingData<A>()();
        *(v82 + 16) = 16843009;
        *(v82 + 20) = 257;
        *(v82 + 22) = 1;
        *(v82 + 32) = 0;
        *(v82 + 24) = 0;
        v143 = (v82 + 24);
        __swift_project_boxed_opaque_existential_1((v82 + 48), *(v82 + 72));
        swift_getKeyPath();
        v149 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd, &_sSay9MomentsUI12DBSuggestionCGSgMR);
        type metadata accessor for DBSuggestion(0);
        lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
        dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

        *(v82 + 40) = 0;
        ObservationRegistrar.init()();
        v110 = v140;
        v111 = v148;
        v107(v140, v146, v148);
        (*(v147 + 56))(v110, 0, 1, v111);
        v149 = v82;
        v112 = swift_getKeyPath();
        MEMORY[0x28223BE20](v112);
        lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        outlined destroy of UTType?(v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v149 = v82;
        v113 = swift_getKeyPath();
        MEMORY[0x28223BE20](v113);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v149 = v82;
        v114 = swift_getKeyPath();
        MEMORY[0x28223BE20](v114);
        v115 = v144;
        v116 = v142;
        outlined copy of Data._Representation(v144, v142);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data._Representation(v115, v116);

        v149 = v82;
        v117 = swift_getKeyPath();
        MEMORY[0x28223BE20](v117);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v149 = v82;
        v118 = swift_getKeyPath();
        MEMORY[0x28223BE20](v118);
        v119 = v139;
        v120 = v135;
        outlined copy of Data?(v139, v135);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data?(v119, v120);

        v149 = v82;
        v121 = swift_getKeyPath();
        MEMORY[0x28223BE20](v121);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v122 = v143;
        swift_beginAccess();
        *v122 = v145;
        *(v82 + 32) = countAndFlagsBits;

        DBAssetData.refreshAssetLoaded()();
        outlined consume of Data._Representation(v136, v141);
        outlined consume of Data?(v119, v120);
        outlined consume of Data._Representation(v144, v142);
        v123 = *(v147 + 8);
        v124 = v148;
        v123(v146, v148);
        outlined destroy of UTType?(object, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v123(v137, v124);
        v99 = v133;
LABEL_28:
        outlined destroy of UTType?(v99, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9MomentsUI11DBAssetDataCtGMd, &_ss23_ContiguousArrayStorageCySS_9MomentsUI11DBAssetDataCtGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21658CA50;
        *(inited + 32) = 0x626F6C622D2DLL;
        *(inited + 40) = 0xE600000000000000;
        *(inited + 48) = v82;

        v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of UTType?(inited + 32, &_sSS_9MomentsUI11DBAssetDataCtMd, &_sSS_9MomentsUI11DBAssetDataCtMR);

        return v105;
      }

      goto LABEL_31;
    }

    if (v50 == 2)
    {
      v67 = *(result + 16);
      v66 = *(result + 24);
      v51 = v66 - v67;
      if (__OFSUB__(v66, v67))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      if (v51 > 0)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    __swift_project_value_buffer(v101, static CommonLogger.views);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_21607C000, v102, v103, "[blob2DB] unexpected empty blob", v104, 2u);
      MEMORY[0x21CE94770](v104, -1, -1);
    }

    v105 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    outlined consume of Data._Representation(v48, v49);
    return v105;
  }

  v52 = MEMORY[0x277D84F90];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v52);
}

unint64_t lazy protocol witness table accessor for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys()
{
  result = lazy protocol witness table cache variable for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Blob.AssetDataKeys and conformance Blob.AssetDataKeys);
  }

  return result;
}

BOOL DBAsset.fullyRendered.getter()
{
  DBAsset.asMutableAsset.getter();
  if (!v0)
  {
    return 1;
  }

  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
  v2 = v0;

  if (!v1)
  {
    return 1;
  }

  if (v1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D85000];
  do
  {
    v6 = v3 == v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CE93180](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = (*((*v5 & *v7) + 0x1D8))();

    ++v4;
  }

  while ((v9 & 1) != 0);

  return v6;
}

uint64_t Asset.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for DBAsset(0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID, v1);
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0x88);

  v8 = v6(v7);
  return DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(v4, v5, v8, v9 & 1);
}

id DBAsset.asAsset.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DBAsset.asMutableAsset.getter();
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *&v5[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
  v7 = v5;

  if (!v6)
  {
    goto LABEL_15;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    v11 = MEMORY[0x277D85000];
    while (i != v10)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CE93180](v10, v6);
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_28;
      }

      (*((*v11 & *v12) + 0x118))(v35);

      ++v10;
      if (v35[0] != 2)
      {

        return 0;
      }
    }

LABEL_15:
    v14 = *(v1 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
    if (!v14)
    {
      break;
    }

    v32 = v2;
    v15 = MEMORY[0x277D84F90];
    *v35 = MEMORY[0x277D84F90];
    v2 = *(v14 + 16);
    if (!v2)
    {
LABEL_24:
      v18 = *(v3 + 16);
      v20 = v32;
      v19 = v33;
      v21 = v18(v33, v1 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v32);
      v22 = (*(*v1 + 112))(v21);
      v31 = v23;
      v24 = type metadata accessor for Asset(0);
      v25 = objc_allocWithZone(v24);
      v26 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
      *&v25[v26] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v27 = &v25[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
      *v27 = 0;
      v27[8] = 1;
      v18(&v25[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v19, v20);
      *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v15;
      swift_beginAccess();
      *v27 = v22;
      v27[8] = v31 & 1;
      v34.receiver = v25;
      v34.super_class = v24;
      v28 = objc_msgSendSuper2(&v34, sel_init);
      (*(v3 + 8))(v19, v20);
      return v28;
    }

    v16 = 0;
    v6 = 0;
    v8 = v14 + 32;
    while (v16 < *(v14 + 16))
    {
      v37 = *(v8 + 8 * v16);

      closure #1 in DBAsset.asAsset.getter(&v37, &v36);

      if (v36)
      {
        MEMORY[0x21CE92260](v17);
        if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = *v35;
      }

      if (v2 == ++v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return 0;
}

BOOL DBAsset.prepared.getter(uint64_t a1)
{
  DBAsset.asMutableAsset.getter();
  if (!v1)
  {
    return 1;
  }

  v2 = *&v1[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
  v3 = v1;

  if (!v2)
  {
    return 1;
  }

  if (v2 >> 62)
  {
LABEL_19:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D85000];
  do
  {
    v7 = v4 == v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CE93180](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v2 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    (*((*v6 & *v8) + 0x118))(&v11);

    ++v5;
  }

  while (v11 == 2);

  return v7;
}

uint64_t closure #1 in DBAsset.asAsset.getter@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  result = *a1 >> 60;
  switch(result)
  {
    case 1:
      v5 = objc_allocWithZone(type metadata accessor for ClientMapViewModel(0));

      result = specialized ClientMapViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v5);
      break;
    case 2:
      v10 = objc_allocWithZone(type metadata accessor for ClientMotionActivityViewModel(0));

      result = specialized ClientMotionActivityViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v10);
      break;
    case 3:
      v11 = objc_allocWithZone(type metadata accessor for ClientWorkoutViewModel(0));

      result = specialized ClientWorkoutViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v11);
      break;
    case 4:
      v7 = objc_allocWithZone(type metadata accessor for ClientStateOfMindViewModel(0));

      result = specialized ClientStateOfMindViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v7);
      break;
    case 5:
      v13 = objc_allocWithZone(type metadata accessor for ClientMediaFirstPartyViewModel(0));

      result = specialized ClientMediaFirstPartyViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v13);
      break;
    case 6:
      v14 = objc_allocWithZone(type metadata accessor for ClientMediaThirdPartyViewModel(0));

      result = specialized ClientMediaThirdPartyViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v14);
      break;
    case 7:
      v12 = objc_allocWithZone(type metadata accessor for ClientPhotoViewModel(0));

      result = specialized ClientPhotoViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v12);
      break;
    case 8:
      v16 = objc_allocWithZone(type metadata accessor for ClientReflectionViewModel(0));

      result = specialized ClientReflectionViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v16);
      break;
    case 9:
      v9 = objc_allocWithZone(type metadata accessor for ClientLivePhotoViewModel(0));

      result = specialized ClientLivePhotoViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v9);
      break;
    case 10:
      v15 = objc_allocWithZone(type metadata accessor for ClientVideoViewModel(0));

      result = specialized ClientVideoViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v15);
      break;
    case 11:
      v6 = objc_allocWithZone(type metadata accessor for ClientContactViewModel(0));

      result = specialized ClientContactViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v6);
      break;
    case 12:
      v8 = objc_allocWithZone(type metadata accessor for ClientPosterViewModel(0));

      result = specialized ClientPosterViewModel.init(dbObject:)(v2 & 0xFFFFFFFFFFFFFFFLL, v8);
      break;
    default:
      break;
  }

  *a2 = result;
  return result;
}

void DBAsset.asMutableAsset.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  if (v5)
  {
    v16 = v0;
    v6 = MEMORY[0x277D84F90];
    v18[0] = MEMORY[0x277D84F90];
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        v20 = *(v5 + 32 + 8 * v8);

        closure #1 in DBAsset.asMutableAsset.getter(&v20, &v19);

        if (v19)
        {
          MEMORY[0x21CE92260](v9);
          if (*((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v15 = *((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = v18[0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);

      __break(1u);
    }

    else
    {
LABEL_10:
      v10 = *(v2 + 16);
      v10(v4, v16 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v1);
      v11 = type metadata accessor for Asset(0);
      v12 = objc_allocWithZone(v11);
      v13 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
      *&v12[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v14 = &v12[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
      *v14 = 0;
      v14[8] = 1;
      v10(&v12[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v4, v1);
      *&v12[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v6;
      swift_beginAccess();
      *v14 = 0;
      v14[8] = 1;
      v17.receiver = v12;
      v17.super_class = v11;
      objc_msgSendSuper2(&v17, sel_init);
      (*(v2 + 8))(v4, v1);
    }
  }
}

void *closure #1 in DBAsset.asMutableAsset.getter@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  switch(*a1 >> 60)
  {
    case 1uLL:
      v18 = objc_allocWithZone(type metadata accessor for MutableMapViewModel(0));

      result = specialized MutableMapViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v18);
      break;
    case 2uLL:
      v15 = objc_allocWithZone(type metadata accessor for MutableMotionActivityViewModel(0));

      result = specialized MutableMotionActivityViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v15);
      break;
    case 3uLL:
      v16 = objc_allocWithZone(type metadata accessor for MutableWorkoutViewModel(0));

      result = specialized MutableWorkoutViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v16);
      break;
    case 4uLL:
      v12 = objc_allocWithZone(type metadata accessor for MutableStateOfMindViewModel(0));

      result = specialized MutableStateOfMindViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v12);
      break;
    case 5uLL:
      v19 = objc_allocWithZone(type metadata accessor for MutableMediaFirstPartyViewModel(0));

      result = specialized MutableMediaFirstPartyViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v19);
      break;
    case 6uLL:
      v20 = objc_allocWithZone(type metadata accessor for MutableMediaThirdPartyViewModel(0));

      result = specialized MutableMediaThirdPartyViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v20);
      break;
    case 7uLL:
      v17 = objc_allocWithZone(type metadata accessor for MutablePhotoViewModel(0));

      result = specialized MutablePhotoViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v17);
      break;
    case 8uLL:
      v22 = objc_allocWithZone(type metadata accessor for MutableReflectionViewModel(0));

      result = specialized MutableReflectionViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v22);
      break;
    case 9uLL:
      v14 = objc_allocWithZone(type metadata accessor for MutableLivePhotoViewModel(0));

      result = specialized MutableLivePhotoViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v14);
      break;
    case 0xAuLL:
      v21 = objc_allocWithZone(type metadata accessor for MutableVideoViewModel(0));

      result = specialized MutableVideoViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v21);
      break;
    case 0xBuLL:
      v11 = objc_allocWithZone(type metadata accessor for MutableContactViewModel(0));

      result = specialized MutableContactViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v11);
      break;
    case 0xCuLL:
      v13 = objc_allocWithZone(type metadata accessor for MutablePosterViewModel(0));

      result = specialized MutablePosterViewModel.init(dbObject:)(v3 & 0xFFFFFFFFFFFFFFFLL, v13);
      break;
    default:
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static CommonLogger.processing);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        *v8 = 136315138;
        *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000021657FF00, &v23);
        _os_log_impl(&dword_21607C000, v6, v7, "[asMutableAsset] nil model, %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x21CE94770](v9, -1, -1);
        MEMORY[0x21CE94770](v8, -1, -1);
      }

      result = 0;
      break;
  }

  *a2 = result;
  return result;
}

id specialized MutablePosterViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v21[3] = type metadata accessor for DBPosterModel(0);
  v21[4] = &protocol witness table for DBAssetModel;
  v21[0] = a1;
  v4 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_entityData;
  v5 = type metadata accessor for EntityData(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_attributedTitle;
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_startDate;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(&a2[v8], 1, 1, v9);
  v10(&a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_endDate], 1, 1, v9);
  a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_isHost] = 2;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_locationDisplayName];
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v12 = *(v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier + 8);
    v13 = &a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_spotlightIdentifier];
    *v13 = *(v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier);
    v13[1] = v12;
    swift_weakAssign();
    v14 = *(v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID + 8);
    v15 = &a2[OBJC_IVAR____TtC9MomentsUI22MutablePosterViewModel_bundleID];
    *v15 = *(v19 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_bundleID);
    v15[1] = v14;

    v17 = specialized AssetViewModel.init(dbObject:)(v19, a2, v16);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v17;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableReflectionViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for DBReflectionModel(0);
  v22[4] = &protocol witness table for DBAssetModel;
  v5 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts;
  *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts] = 0;
  v6 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor] = 0;
  v22[3] = v4;
  v22[0] = a1;
  v7 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v20 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
    swift_beginAccess();
    *&a2[v5] = v8;

    *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex] = 0;
    if (*(v20 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
    {
      v10 = [objc_opt_self() whiteColor];
    }

    else
    {
      v9 = (v20 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
      v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v9 green:v9[1] blue:v9[2] alpha:v9[3]];
    }

    v11 = v10;
    swift_beginAccess();
    v12 = *&a2[v6];
    *&a2[v6] = v11;

    if (*(v20 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32))
    {
      v14 = [objc_opt_self() whiteColor];
    }

    else
    {
      v13 = (v20 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
      v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v13 green:v13[1] blue:v13[2] alpha:v13[3]];
    }

    v15 = v14;
    swift_beginAccess();
    v16 = *&a2[v7];
    *&a2[v7] = v15;

    swift_weakAssign();
    v18 = specialized AssetViewModel.init(dbObject:)(v20, a2, v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v18;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableContactViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v12[3] = type metadata accessor for DBContactModel(0);
  v12[4] = &protocol witness table for DBAssetModel;
  v12[0] = a1;
  *&a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  outlined init with copy of DBObject(v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v10 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier + 8);
    v5 = &a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
    *v5 = *(v10 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier);
    v5[1] = v4;
    *&a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = v10;

    v8 = specialized AssetViewModel.init(dbObject:)(v6, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized MutableVideoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v21[3] = type metadata accessor for DBVideoModel(0);
  v21[4] = &protocol witness table for DBAssetModel;
  v21[0] = a1;
  *&a2[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v4 = &a2[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v4 = 0;
  v4[8] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v6 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v5, a2);
    v8 = *(v19 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v7 = *(v19 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v9 = &v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v9 = v8;
    *(v9 + 1) = v7;
    v10 = v6;

    v11 = v10;

    v13 = *(v19 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v12 = *(v19 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v14 = &v11[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v14 = v13;
    *(v14 + 1) = v12;

    v15 = DBAssetModel.baseVideo.getter();

    __swift_destroy_boxed_opaque_existential_1(v21);
    v16 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
    swift_beginAccess();
    v17 = *&v11[v16];
    *&v11[v16] = v15;

    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized MutableLivePhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v19[4] = &protocol witness table for DBAssetModel;
  v19[3] = type metadata accessor for DBLivePhotoModel(0);
  v19[0] = a1;
  *&a2[OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v5 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v4, a2);
    v7 = *(v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v6 = *(v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v8 = &v5[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 1) = v6;
    v9 = v5;

    v10 = v9;

    v12 = *(v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v11 = *(v17 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v13 = &v10[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v13 = v12;
    *(v13 + 1) = v11;

    v14 = DBAssetModel.basePairedPhotoVideo.getter();

    __swift_destroy_boxed_opaque_existential_1(v19);
    v15 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
    swift_beginAccess();
    *&v10[v15] = v14;

    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized MutablePhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v16[3] = type metadata accessor for DBPhotoModel(0);
  v16[4] = &protocol witness table for DBAssetModel;
  v16[0] = a1;
  swift_weakInit();
  outlined init with copy of DBObject(v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v5 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v4, a2);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v7 = *(v14 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v6 = *(v14 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v8 = &v5[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 1) = v6;
    v9 = v5;

    v11 = *(v14 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v10 = *(v14 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v12 = &v9[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v12 = v11;
    *(v12 + 1) = v10;

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for DBMediaThirdPartyModel(0);
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v23[3] = v4;
  v23[4] = &protocol witness table for DBAssetModel;
  v5 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v23[0] = a1;
  v6 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle];
  *v7 = 0;
  v7[1] = 0;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString];
  *v9 = 0;
  v9[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v11 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
    v10 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle + 8);
    swift_beginAccess();
    *v7 = v11;
    v7[1] = v10;

    if (*(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v12 = 3;
    }

    else if (*(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue) >= 3uLL)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    }

    swift_beginAccess();
    a2[v5] = v12;
    v14 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier);
    v13 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier + 8);
    swift_beginAccess();
    *v8 = v14;
    v8[1] = v13;

    v15 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
    v19 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
    v20 = *(v21 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
    swift_beginAccess();
    *v6 = v20;
    *(v6 + 1) = v19;
    v6[32] = v15;
    swift_weakAssign();
    v17 = specialized AssetViewModel.init(dbObject:)(v21, a2, v16);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v17;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *specialized MutableMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v24[3] = type metadata accessor for DBMediaFirstPartyModel(0);
  v24[4] = &protocol witness table for DBAssetModel;
  v24[0] = a1;
  v4 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_subtitle];
  *v4 = 0;
  v4[1] = 0;
  v5 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_mediaCategory] = 4;
  swift_weakInit();
  *&a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener] = 0;
  outlined init with copy of DBObject(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);
    v7 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle + 8);
    swift_beginAccess();
    *v4 = v8;
    v4[1] = v7;

    v10 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
    v9 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier + 8);
    swift_beginAccess();
    *v5 = v10;
    v5[1] = v9;

    if (*(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue + 8))
    {
      v11 = 4;
    }

    else if (*(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue) >= 4uLL)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue);
    }

    swift_beginAccess();
    a2[v6] = v11;
    swift_weakAssign();

    v14 = specialized AssetViewModel.init(dbObject:)(v12, a2, v13);
    v15 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_trackIdentifier];
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 1);
    type metadata accessor for MediaPlaybackListener();
    v18 = swift_allocObject();
    *(v18 + 48) = 0;
    *(v18 + 52) = 0;
    *(v18 + 24) = 0;
    *(v18 + 16) = 0;
    *(v18 + 56) = MEMORY[0x277D84F90];
    swift_beginAccess();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    *(v18 + 32) = v14;
    *(v18 + 40) = &protocol witness table for MutableMediaFirstPartyViewModel;
    v19 = OBJC_IVAR____TtC9MomentsUI31MutableMediaFirstPartyViewModel_listener;
    swift_beginAccess();
    *&v14[v19] = v18;
    v20 = v14;

    MutableMediaFirstPartyViewModel.registerForPlaybackUpdates()();

    __swift_destroy_boxed_opaque_existential_1(v24);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableStateOfMindViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd, &_s9MomentsUI11StateOfMindVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v50[3] = type metadata accessor for DBStateOfMindModel(0);
  v50[4] = &protocol witness table for DBAssetModel;
  v50[0] = a1;
  v7 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind;
  *&a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMind] = 0;
  v8 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_stateOfMindUUID;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);
  v45 = v8;
  v10(&a2[v8], 1, 1, v9);
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortTitle];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subtitle];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_shortSubtitle];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_subheading];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors;
  *&a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_lightBackgroundColors] = 0;
  v43 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors;
  *&a2[OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_darkBackgroundColors] = 0;
  v44 = OBJC_IVAR____TtC9MomentsUI27MutableStateOfMindViewModel_dbStateOfMindModel;
  swift_weakInit();
  outlined init with copy of DBObject(v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v16 = v48;
    outlined init with copy of StateOfMind?(v48 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, v6);
    v17 = type metadata accessor for StateOfMind(0);
    if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
    {
      outlined destroy of StateOfMind?(v6);
      v18 = 0;
    }

    else
    {
      v18 = StateOfMind.hkStateOfMind.getter();
      outlined destroy of StateOfMind(v6);
    }

    swift_beginAccess();
    v19 = *&a2[v7];
    *&a2[v7] = v18;

    v21 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);
    v20 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle + 8);
    swift_beginAccess();
    *v11 = v21;
    v11[1] = v20;

    v23 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);
    v22 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle + 8);
    swift_beginAccess();
    *v12 = v23;
    v12[1] = v22;

    v25 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);
    v24 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle + 8);
    swift_beginAccess();
    *v13 = v25;
    v13[1] = v24;

    v27 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);
    v26 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading + 8);
    swift_beginAccess();
    *v14 = v27;
    v14[1] = v26;

    v28 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v47[0] = MEMORY[0x277D84F90];
      v30 = *(v28 + 16);
      if (v30)
      {
        v31 = (v28 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v31 - 3) green:*(v31 - 2) blue:*(v31 - 1) alpha:*v31];
          MEMORY[0x21CE92260]();
          if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v42 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v31 += 4;
          --v30;
        }

        while (v30);
        v32 = v47[0];
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v32 = 0;
    }

    swift_beginAccess();
    *&a2[v15] = v32;

    v33 = *(v16 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors);
    if (v33)
    {
      v46[0] = v29;
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = (v33 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v35 - 3) green:*(v35 - 2) blue:*(v35 - 1) alpha:*v35];
          MEMORY[0x21CE92260]();
          if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v35 += 4;
          --v34;
        }

        while (v34);
        v29 = v46[0];
      }
    }

    else
    {
      v29 = 0;
    }

    v36 = v43;
    swift_beginAccess();
    *&a2[v36] = v29;

    v37 = OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID;
    v38 = v45;
    swift_beginAccess();
    outlined assign with copy of UUID?(v16 + v37, &a2[v38]);
    swift_endAccess();
    swift_weakAssign();
    v40 = specialized AssetViewModel.init(dbObject:)(v16, a2, v39);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return v40;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableMotionActivityViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v15[3] = type metadata accessor for DBMotionActivityModel(0);
  v15[4] = &protocol witness table for DBAssetModel;
  v15[0] = a1;
  v4 = &a2[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle];
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v13 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
    v6 = *(v13 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
    if (v6)
    {
      v5 = 0;
    }

    v7 = &a2[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity];
    *v7 = v5;
    v7[8] = v6;
    *&a2[OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps] = *(v13 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps);
    v9 = *(v13 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
    v8 = *(v13 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle + 8);
    swift_beginAccess();
    *v4 = v9;
    v4[1] = v8;

    swift_weakAssign();
    v11 = specialized AssetViewModel.init(dbObject:)(v13, a2, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of StateOfMind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd, &_s9MomentsUI11StateOfMindVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StateOfMind?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd, &_s9MomentsUI11StateOfMindVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *DBManager.__allocating_init(configuration:snapshotGeneration:isProtectedDataAvailable:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_allocObject();
  return DBManager.init(configuration:snapshotGeneration:isProtectedDataAvailable:)(a1, a2, a3, v4);
}

uint64_t _s9MomentsUI10CloudSubDBPAAE13deleteDBFiles5dbURL9classNamey10Foundation0I0V_s12StaticStringVtFZAA0c11SuggestionsE0C_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v243 = a4;
  v242 = a3;
  v241 = a2;
  v259 = *MEMORY[0x277D85DE8];
  v246 = type metadata accessor for CocoaError.Code();
  v254 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v245 = &v210[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v226 = type metadata accessor for URL.DirectoryHint();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v224 = &v210[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v251 = type metadata accessor for URL();
  v7 = *(v251 - 8);
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v251);
  v238 = &v210[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v234 = &v210[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v249 = &v210[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v248 = &v210[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v214 = &v210[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v227 = &v210[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v237 = &v210[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v231 = &v210[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v210[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v210[-v28];
  v30 = URL.pathExtension.getter();
  v32 = v31;
  URL.deletingPathExtension()();
  *&v228 = URL.lastPathComponent.getter();
  *(&v228 + 1) = v33;
  v230 = v27;
  URL.deletingLastPathComponent()();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
  v35 = *(v7 + 72);
  v36 = *(v7 + 80);
  v37 = (v36 + 32) & ~v36;
  v217 = 3 * v35;
  v218 = v36;
  v220 = v34;
  v38 = swift_allocObject();
  v219 = v37;
  v216 = v38;
  v39 = v38 + v37;
  v40 = *(v8 + 16);
  v8 += 16;
  v252 = v40;
  v41 = v251;
  v40((v38 + v37), a1, v251);
  *&v257 = v30;
  *(&v257 + 1) = v32;

  MEMORY[0x21CE92100](1818326829, 0xE400000000000000);
  URL.appendingPathExtension(_:)();

  v222 = v30;
  *&v257 = v30;
  *(&v257 + 1) = v32;
  v221 = v32;

  MEMORY[0x21CE92100](1835561773, 0xE400000000000000);
  v223 = 2 * v35;
  v42 = v237;
  v229 = v29;
  URL.appendingPathExtension(_:)();
  v43 = v231;
  v44 = v41;

  v250 = objc_opt_self();
  v253 = (v8 - 8);
  v236 = *MEMORY[0x277CCA1C0];
  v240 = "DBManager._setUIActiveCount(_:)";
  v212 = "deleteDBFiles(dbURL:className:)";
  v244 = (v254 + 8);
  v45 = 3;
  *&v46 = 136446978;
  v233 = v46;
  *&v46 = 136446722;
  v239 = v46;
  v215 = v39;
  v247 = v8;
  v235 = v35;
  do
  {
    v48 = v44;
    v252(v43, v39, v44);
    v49 = [v250 defaultManager];
    v50 = v43;
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v52 = MEMORY[0x21CE91FC0](countAndFlagsBits);

    *&v257 = 0;
    v53 = [v49 attributesOfItemAtPath:v52 error:&v257];

    v54 = v257;
    if (v53)
    {
      type metadata accessor for NSFileAttributeKey(0);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
      v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v54;

      if (!*(v55 + 16) || (v57 = specialized __RawDictionaryStorage.find<A>(_:)(), (v58 & 1) == 0))
      {

LABEL_14:
        v43 = v50;
        v44 = v48;
        v254 = *v253;
        (v254)(v50, v48);
        goto LABEL_3;
      }

      outlined init with copy of Any(*(v55 + 56) + 32 * v57, &v257);

      type metadata accessor for NSNumber();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v59 = v255;
      v43 = v50;
      v44 = v48;
      if ([v255 longLongValue] <= 0)
      {
        v254 = *v253;
        (v254)(v50, v48);

        goto LABEL_3;
      }

      v232 = v59;
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      v61 = __swift_project_value_buffer(v60, static CommonLogger.database);
      v252(v42, v50, v44);
      v62 = Logger.logObject.getter();
      v63 = v44;
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v213 = v61;
        v67 = v66;
        *&v257 = v66;
        *v65 = v239;
        v68 = StaticString.description.getter();
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v257);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2082;
        *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
        *(v65 + 22) = 2080;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v254 = *v253;
        (v254)(v42, v251);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v257);
        v35 = v235;

        *(v65 + 24) = v74;
        _os_log_impl(&dword_21607C000, v62, v64, "%{public}s.%{public}s Deleting old DB: %s", v65, 0x20u);
        swift_arrayDestroy();
        v44 = v251;
        MEMORY[0x21CE94770](v67, -1, -1);
        MEMORY[0x21CE94770](v65, -1, -1);
      }

      else
      {

        v254 = *v253;
        (v254)(v42, v63);
        v44 = v63;
      }

      v104 = [v250 defaultManager];
      URL._bridgeToObjectiveC()(v105);
      v107 = v106;
      *&v257 = 0;
      v108 = [v104 removeItemAtURL:v106 error:&v257];

      if (v108)
      {
        v109 = one-time initialization token for momentsUI;
        v110 = v257;
        if (v109 != -1)
        {
          swift_once();
        }

        v111 = static DefaultsManager.momentsUI;
        v112 = v214;
        if (static DefaultsManager.momentsUI)
        {
          v113 = MEMORY[0x21CE91FC0](0xD000000000000017, v212 | 0x8000000000000000);
          v114 = [v111 objectForKey_];

          if (v114)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v255 = 0u;
            v256 = 0u;
          }

          v257 = v255;
          v258 = v256;
          if (*(&v256 + 1))
          {
            if (swift_dynamicCast())
            {
              v116 = *&v255;
              goto LABEL_39;
            }

LABEL_38:
            v116 = 86400.0;
LABEL_39:
            v117 = objc_opt_self();
            URL._bridgeToObjectiveC()(v118);
            v120 = v119;
            LODWORD(v117) = [v117 acquireBackgroundProcessingPermissionForURL:v119 duration:0 mustAcquire:v116];

            if (v117)
            {
              v252(v227, v50, v44);
              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v213 = swift_slowAlloc();
                *&v257 = v213;
                *v123 = v233;
                v124 = StaticString.description.getter();
                v211 = v122;
                v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v257);

                *(v123 + 4) = v126;
                *(v123 + 12) = 2082;
                *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
                *(v123 + 22) = 2080;
                _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v127 = dispatch thunk of CustomStringConvertible.description.getter();
                v129 = v128;
                v130 = v254;
                (v254)(v227, v251);
                v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v257);
                v132 = v251;

                *(v123 + 24) = v131;
                *(v123 + 32) = 2048;
                *(v123 + 34) = v116;
                v133 = v211;
                v134 = v121;
                v135 = "%{public}s.%{public}s Acquired background assertion for: %s (%f seconds)";
                v136 = v123;
                v137 = 42;
LABEL_44:
                _os_log_impl(&dword_21607C000, v134, v133, v135, v136, v137);
                v147 = v213;
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v147, -1, -1);
                v148 = v123;
                v44 = v132;
                MEMORY[0x21CE94770](v148, -1, -1);

                v130(v50, v132);
LABEL_48:
                v42 = v237;
                v43 = v50;
                goto LABEL_3;
              }

              v149 = v227;
            }

            else
            {
              v252(v112, v50, v44);
              v121 = Logger.logObject.getter();
              v138 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v121, v138))
              {
                v123 = swift_slowAlloc();
                v213 = swift_slowAlloc();
                *&v257 = v213;
                *v123 = v239;
                v139 = StaticString.description.getter();
                v211 = v138;
                v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v257);

                *(v123 + 4) = v141;
                *(v123 + 12) = 2082;
                *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
                *(v123 + 22) = 2080;
                _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v142 = dispatch thunk of CustomStringConvertible.description.getter();
                v144 = v143;
                v145 = v112;
                v130 = v254;
                (v254)(v145, v251);
                v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, &v257);
                v132 = v251;

                *(v123 + 24) = v146;
                v133 = v211;
                v134 = v121;
                v135 = "%{public}s.%{public}s Error setting background assertion for: %s";
                v136 = v123;
                v137 = 32;
                goto LABEL_44;
              }

              v149 = v112;
            }

            v150 = v254;
            (v254)(v149, v44);
            v150(v50, v44);
            goto LABEL_48;
          }
        }

        else
        {
          v257 = 0u;
          v258 = 0u;
        }

        outlined destroy of UTType?(&v257, &_sypSgMd, &_sypSgMR);
        goto LABEL_38;
      }

      v48 = v44;
      v115 = v257;
      v76 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v75 = v257;
      v76 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v77 = v76;
    v78 = v245;
    static CocoaError.fileNoSuchFile.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608], MEMORY[0x277CC8600]);
    v79 = v246;
    v80 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*v244)(v78, v79);
    if (v80)
    {
      v43 = v50;
      v44 = v48;
      v254 = *v253;
      (v254)(v50, v48);
    }

    else
    {
      v81 = v48;
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, static CommonLogger.database);
      v83 = v50;
      v252(v238, v50, v81);
      v84 = v76;
      v85 = v81;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v86, v87))
      {

        v47 = *v253;
        (*v253)(v238, v85);
        v254 = v47;
        (v47)(v83, v85);
        v42 = v237;
        v43 = v83;
        v44 = v85;
        goto LABEL_3;
      }

      v88 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      *&v257 = v254;
      *v88 = v233;
      v89 = StaticString.description.getter();
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v257);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2082;
      *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
      *(v88 + 22) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v95 = *v253;
      (*v253)(v238, v251);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v257);

      *(v88 + 24) = v96;
      *(v88 + 32) = 2112;
      v97 = v76;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v88 + 34) = v98;
      v99 = v232;
      *v232 = v98;
      _os_log_impl(&dword_21607C000, v86, v87, "%{public}s.%{public}s Error deleting old DB: %s (%@)", v88, 0x2Au);
      outlined destroy of UTType?(v99, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v100 = v99;
      v101 = v251;
      MEMORY[0x21CE94770](v100, -1, -1);
      v102 = v254;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v102, -1, -1);
      v103 = v88;
      v35 = v235;
      MEMORY[0x21CE94770](v103, -1, -1);

      v44 = v101;
      v43 = v231;
      v254 = v95;
      (v95)(v231, v44);
    }

    v42 = v237;
LABEL_3:
    v39 += v35;
    --v45;
  }

  while (v45);
  swift_setDeallocating();
  v151 = 3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v152 = v219;
  v232 = swift_allocObject();
  v153 = &v232[v152];
  *&v257 = v222;
  *(&v257 + 1) = v221;
  MEMORY[0x21CE92100](0x626F6C622DLL, 0xE500000000000000);
  v236 = v153;
  URL.appendingPathExtension(_:)();

  *&v257 = 46;
  *(&v257 + 1) = 0xE100000000000000;
  MEMORY[0x21CE92100](v228, *(&v228 + 1));
  MEMORY[0x21CE92100](0x54524F505055535FLL, 0xE800000000000000);
  v154 = *MEMORY[0x277CC91D8];
  v155 = v225;
  v238 = *(v225 + 104);
  v156 = v224;
  v157 = v226;
  (v238)(v224, v154, v226);
  v237 = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  v158 = *(v155 + 8);
  v158(v156, v157);

  v257 = v228;
  MEMORY[0x21CE92100](0x74657373416B635FLL, 0xE900000000000073);
  (v238)(v156, v154, v157);
  v159 = v236;
  v160 = v235;
  URL.appending<A>(path:directoryHint:)();
  v158(v156, v157);
  v161 = v251;

  v162 = v159;
  v163 = v248;
  v164 = v249;
  do
  {
    v165 = v252;
    v252(v163, v162, v161);
    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    __swift_project_value_buffer(v166, static CommonLogger.database);
    v165(v164, v163, v161);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&v257 = v170;
      *v169 = v239;
      v171 = StaticString.description.getter();
      v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v172, &v257);

      *(v169 + 4) = v173;
      *(v169 + 12) = 2082;
      *(v169 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
      *(v169 + 22) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v174 = dispatch thunk of CustomStringConvertible.description.getter();
      v176 = v175;
      (v254)(v249, v251);
      v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v176, &v257);
      v161 = v251;

      *(v169 + 24) = v177;
      _os_log_impl(&dword_21607C000, v167, v168, "%{public}s.%{public}s Deleting old DB: %s", v169, 0x20u);
      swift_arrayDestroy();
      v178 = v170;
      v164 = v249;
      MEMORY[0x21CE94770](v178, -1, -1);
      MEMORY[0x21CE94770](v169, -1, -1);
    }

    else
    {

      (v254)(v164, v161);
    }

    v179 = [v250 defaultManager];
    v163 = v248;
    URL._bridgeToObjectiveC()(v180);
    v182 = v181;
    *&v257 = 0;
    v183 = [v179 removeItemAtURL:v181 error:&v257];

    v184 = v257;
    if (v183)
    {
      (v254)(v163, v161);
    }

    else
    {
      v185 = v184;
      v186 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v187 = v186;
      v188 = v245;
      static CocoaError.fileNoSuchFile.getter();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608], MEMORY[0x277CC8600]);
      v189 = v246;
      LOBYTE(v185) = static _ErrorCodeProtocol.~= infix(_:_:)();

      (*v244)(v188, v189);
      if (v185)
      {
        v163 = v248;
        (v254)(v248, v161);
      }

      else
      {
        v190 = v234;
        v191 = v248;
        v252(v234, v248, v161);
        v192 = v186;
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v237 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          *&v257 = v238;
          *v195 = v233;
          v196 = StaticString.description.getter();
          v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v197, &v257);

          *(v195 + 4) = v198;
          *(v195 + 12) = 2082;
          *(v195 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v240 | 0x8000000000000000, &v257);
          *(v195 + 22) = 2080;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v199 = dispatch thunk of CustomStringConvertible.description.getter();
          v201 = v200;
          (v254)(v190, v251);
          v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v201, &v257);
          v160 = v235;

          *(v195 + 24) = v202;
          *(v195 + 32) = 2112;
          v203 = v186;
          v204 = _swift_stdlib_bridgeErrorToNSError();
          *(v195 + 34) = v204;
          v205 = v237;
          *v237 = v204;
          _os_log_impl(&dword_21607C000, v193, v194, "%{public}s.%{public}s Error deleting old DB: %s (%@)", v195, 0x2Au);
          outlined destroy of UTType?(v205, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v161 = v251;
          MEMORY[0x21CE94770](v205, -1, -1);
          v206 = v238;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v206, -1, -1);
          MEMORY[0x21CE94770](v195, -1, -1);

          v163 = v248;
          (v254)(v248, v161);
        }

        else
        {

          v207 = v254;
          (v254)(v190, v161);
          v207(v191, v161);
          v163 = v191;
        }

        v164 = v249;
      }
    }

    v162 += v160;
    --v151;
  }

  while (v151);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v208 = v254;
  (v254)(v230, v161);
  return v208(v229, v161);
}

uint64_t DBManager.cleanup(wait:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 289) = a1;
  *(v2 + 96) = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR);
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 184) = v6;
  *(v2 + 192) = *(v6 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v2 + 224) = v7;
  *v7 = v2;
  v7[1] = DBManager.cleanup(wait:);

  return DBManager._beginCleanup()();
}

{
  *(*v1 + 290) = a1;

  return MEMORY[0x2822009F8](DBManager.cleanup(wait:), 0, 0);
}

uint64_t DBManager.cleanup(wait:)()
{
  v35 = v0;
  if (*(v0 + 290))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;

    *(v0 + 272) = specialized static BTask.detached(name:operation:)(0xD000000000000018, 0x800000021657FFF0, &async function pointer to partial apply for closure #2 in DBManager.cleanup(wait:), v3);
    v4 = DBManager.cleanup(wait:);
    v5 = v1;
LABEL_9:

    return MEMORY[0x2822009F8](v4, v5, 0);
  }

  if (*(v0 + 289) == 1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 216);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = __swift_project_value_buffer(v7, static DBManager.Log);
    *(v0 + 232) = v9;
    swift_beginAccess();
    v10 = *(v8 + 16);
    *(v0 + 240) = v10;
    *(v0 + 248) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136446210;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2870756E61656C63, 0xEE00293A74696177, &v34);
      _os_log_impl(&dword_21607C000, v11, v12, "DBManager.%{public}s Waiting for existing cleanup to complete", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x21CE94770](v18, -1, -1);
      MEMORY[0x21CE94770](v17, -1, -1);
    }

    v19 = *(v16 + 8);
    v19(v14, v15);
    *(v0 + 256) = v19;
    v5 = *(v0 + 88);
    v4 = DBManager.cleanup(wait:);
    goto LABEL_9;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 184);
  v23 = __swift_project_value_buffer(v22, static DBManager.Log);
  swift_beginAccess();
  (*(v21 + 16))(v20, v23, v22);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v26 = os_log_type_enabled(v24, v25);
  v28 = *(v0 + 192);
  v27 = *(v0 + 200);
  v29 = *(v0 + 184);
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136446210;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2870756E61656C63, 0xEE00293A74696177, &v34);
    _os_log_impl(&dword_21607C000, v24, v25, "DBManager.%{public}s Previous cleanup already running", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x21CE94770](v31, -1, -1);
    MEMORY[0x21CE94770](v30, -1, -1);
  }

  (*(v28 + 8))(v27, v29);

  v32 = *(v0 + 8);

  return v32();
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](DBManager.cleanup(wait:), 0, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x277CBCEC8]);
  MEMORY[0x21CE912F0](v3, v8);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR, MEMORY[0x277CBCDE0]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR, MEMORY[0x277CBCDD0]);
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = DBManager.cleanup(wait:);
  v11 = v0[13];

  return MEMORY[0x282200308](v0 + 36, v11, v9);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[14];
    v3 = v2[15];
    v5 = v2[13];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = DBManager.cleanup(wait:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 288);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *(v0 + 184);
    v9 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v11 + 8))(v9, v10);
    v5(v7, v6, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 256);
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2870756E61656C63, 0xEE00293A74696177, &v34);
      _os_log_impl(&dword_21607C000, v12, v13, "DBManager.%{public}s Cleanup complete", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);
    }

    v15(v16, v17);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v22 = *(v0 + 184);
    v23 = __swift_project_value_buffer(v22, static DBManager.Log);
    swift_beginAccess();
    (*(v20 + 16))(v21, v23, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 184);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136446210;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2870756E61656C63, 0xEE00293A74696177, &v34);
      _os_log_impl(&dword_21607C000, v24, v25, "DBManager.%{public}s Previous cleanup already running", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x21CE94770](v31, -1, -1);
      MEMORY[0x21CE94770](v30, -1, -1);
    }

    (*(v27 + 8))(v28, v29);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR, MEMORY[0x277CBCDD0]);
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = DBManager.cleanup(wait:);
    v4 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 288, v4, v2);
  }
}

{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask;
  v3 = MEMORY[0x277D84F78];
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask))
  {

    MEMORY[0x21CE92450](v4, v3 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  *(v1 + v2) = v0[34];

  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = DBManager.cleanup(wait:);

  return MEMORY[0x282200460]();
}

{

  return MEMORY[0x2822009F8](DBManager.cleanup(wait:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static DBManager.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBManager.Class = a1;
  qword_27CA91498 = a2;
  byte_27CA914A0 = a3;
  return result;
}

uint64_t DBManager.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBManager.Log);
}

uint64_t static DBManager.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBManager.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBManager.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBManager.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}