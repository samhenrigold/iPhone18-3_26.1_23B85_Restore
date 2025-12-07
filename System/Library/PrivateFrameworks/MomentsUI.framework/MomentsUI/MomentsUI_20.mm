uint64_t (*static DBManager.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static DBManager.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBManager@<X0>(uint64_t a1@<X8>)
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

uint64_t one-time initialization function for wiped()
{
  result = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216580300);
  static DBManager.wiped = result;
  return result;
}

id static DBManager.wiped.getter()
{
  if (one-time initialization token for wiped != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DBManager.wiped;

  return v0;
}

void static DBManager.wiped.setter(uint64_t a1)
{
  if (one-time initialization token for wiped != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DBManager.wiped;
  static DBManager.wiped = a1;
}

uint64_t (*static DBManager.wiped.modify(uint64_t a1))()
{
  if (one-time initialization token for wiped != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

id key path getter for static DBManager.wiped : DBManager.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for wiped != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DBManager.wiped;
  *a1 = static DBManager.wiped;

  return v2;
}

void key path setter for static DBManager.wiped : DBManager.Type(id *a1)
{
  v1 = one-time initialization token for wiped;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DBManager.wiped;
  static DBManager.wiped = v2;
}

Swift::Int DBManager.DBError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t DBManager._modelConfiguration.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DBManager.snapshotGeneration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path setter for DBManager.$snapshotGeneration : DBManager(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t DBManager.setSnapshotGeneration(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](DBManager.setSnapshotGeneration(_:), v2, 0);
}

uint64_t DBManager.setSnapshotGeneration(_:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v0 + 2);

  v1 = v0[3];
  v2 = v0[5];
  if (!v1)
  {
    goto LABEL_7;
  }

  if (v0[2] == v0[4] && v1 == v2)
  {

    goto LABEL_8;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
LABEL_7:
    v5 = v0[6];
    v6 = v0[4];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[2] = v6;
    v0[3] = v2;

    static Published.subscript.setter();

    v3.n128_f64[0] = specialized BTask.init(name:operation:)(0xD000000000000023, 0x8000000216580010, &async function pointer to partial apply for closure #1 in DBManager.setSnapshotGeneration(_:), v5);
  }

LABEL_8:
  v7 = v0[1];

  return v7(v3);
}

uint64_t closure #1 in DBManager.setSnapshotGeneration(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return DBManager.cleanup(wait:)(0);
}

Swift::String __swiftcall DBManager.getSnapshotGeneration()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v27);

  v8 = v28;
  if (v28)
  {
    v9 = v27;
  }

  else
  {
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v8 = v10;
    (*(v5 + 8))(v7, v4);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v0, static DBManager.Log);
    swift_beginAccess();
    (*(v1 + 16))(v3, v11, v0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = v13;
      v15 = v14;
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v15 = 136446722;
      swift_beginAccess();
      v16 = StaticString.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v26);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000216580040, v26);
      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v26);
      _os_log_impl(&dword_21607C000, v12, v24, "%{public}s.%{public}s Rotating new snapshot generation: %s", v15, 0x20u);
      v19 = v25;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v26[0] = v9;
    v26[1] = v8;

    static Published.subscript.setter();
  }

  v20 = v9;
  v21 = v8;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t DBManager.mainWriter.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter;
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter);
  }

  else
  {
    type metadata accessor for DBWriter();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = v0;
    *(v0 + v1) = v2;
  }

  return v2;
}

double DBManager.mainWriter.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter) = a1;

  return result;
}

double (*DBManager.mainWriter.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DBManager.mainWriter.getter();
  return DBManager.mainWriter.modify;
}

double DBManager.mainWriter.modify(uint64_t *a1)
{
  *(a1[1] + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter) = *a1;

  return result;
}

uint64_t DBManager.pendingDBChanges.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*DBManager.pendingDBChanges.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.startPoint.modify;
}

uint64_t key path setter for DBManager.$pendingDBChanges : DBManager(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t DBManager.$pendingDBChanges.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DBManager.$pendingDBChanges.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingDBChanges;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$pendingDBChanges.modify;
}

Swift::Void __swiftcall DBManager.addSnapshotEnd(sequence:suggestions:)(Swift::UInt64_optional sequence, Swift::UInt64_optional suggestions)
{
  v3 = v2;
  is_nil = suggestions.is_nil;
  value = suggestions.value;
  v5 = sequence.is_nil;
  v6 = sequence.value;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v12 = v11 == 1;
  v13 = v11 < 1;
  v14 = v11 - 1;
  if (!v13)
  {
    *(v3 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v14;
    v15 = v6;
    v16 = !v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v16;
    v6 = v15;

    static Published.subscript.setter();
  }

  if (!v5 && !is_nil)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v7, static DBManager.Log);
    swift_beginAccess();
    (*(v8 + 16))(v10, v17, v7);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 134218498;
      *(v20 + 4) = v6;
      *(v20 + 12) = 2048;
      *(v20 + 14) = value;
      *(v20 + 22) = 2080;
      type metadata accessor for UUID();
      v26 = v6;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v28);

      *(v20 + 24) = v24;
      _os_log_impl(&dword_21607C000, v18, v19, "[addSnapshotEnd] sequence=%llu, suggestions=%llu, uuid=%s", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);

      (*(v8 + 8))(v10, v7);
      v25 = v26;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      v25 = v6;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v25;
    v28[1] = value;
    v29 = 0;

    static Published.subscript.setter();
  }
}

void DBManager.addSnapshotStart()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v3;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

Swift::Void __swiftcall DBManager.runFullProcessingEnd()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v2 = v1 < 1;
  v3 = v1 - 1;
  if (!v2)
  {
    *(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v3;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }
}

Swift::Void __swiftcall DBManager.cloudDownloadStart()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, static DBManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21607C000, v7, v8, "[cloudDownloadStart]", v9, 2u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v12;
    v13 = v12 > 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v14[7] = v13;

    static Published.subscript.setter();
  }
}

Swift::Void __swiftcall DBManager.cloudDownloadEnd()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, static DBManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21607C000, v7, v8, "[cloudDownloadEnd]", v9, 2u);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount);
  v11 = v10 == 1;
  v12 = v10 < 1;
  v13 = v10 - 1;
  if (!v12)
  {
    *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = v13;
    v14 = !v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v15[7] = v14;

    static Published.subscript.setter();
  }
}

double key path getter for DBManager.latestLocalSnapshotSequence : DBManager@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 17) = v4;
  return result;
}

uint64_t key path setter for DBManager.latestLocalSnapshotSequence : DBManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t DBManager.latestLocalSnapshotSequence.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t DBManager.latestLocalSnapshotSequence.setter(uint64_t a1, uint64_t a2, __int16 a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*DBManager.latestLocalSnapshotSequence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.locations.modify;
}

uint64_t key path getter for DBManager.$snapshotGeneration : DBManager(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for DBManager.$latestLocalSnapshotSequence : DBManager(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd, &_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t DBManager.$snapshotGeneration.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DBManager.$latestLocalSnapshotSequence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd, &_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DBManager.$latestLocalSnapshotSequence.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI9DBManager__latestLocalSnapshotSequence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd, &_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$latestLocalSnapshotSequence.modify;
}

void DBManager.$pendingDBChanges.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

Swift::Void __swiftcall DBManager.setLatestLocalSnapshotSequence(_:_:)(Swift::UInt64 a1, Swift::UInt64_optional a2)
{
  is_nil = a2.is_nil;
  value = a2.value;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if ((v7 & 0x100) != 0 || v5 != a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    v6 = value;
    v7 = is_nil;
    goto LABEL_7;
  }

  if (!is_nil && v7 & 1 | (v6 != value))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    v6 = value;
    v7 = 0;
LABEL_7:

    static Published.subscript.setter();
  }
}

double DBManager._setUIActiveCount(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__uiActiveCount);
  if (v2 != a1)
  {
    *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__uiActiveCount) = a1;
    if (v2)
    {
      if (a1 || *(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupPending) != 1)
      {
        return result;
      }

      v3 = specialized static BTask.detached(name:operation:)(0xD00000000000001FLL, 0x80000002165802A0, &async function pointer to partial apply for closure #1 in DBManager._setUIActiveCount(_:), v1);
      v4 = OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask;
      if (*(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask))
      {

        MEMORY[0x21CE92450](v5, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(v1 + v4) = v3;
    }

    else
    {
      if (!*(v1 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask))
      {
        return result;
      }

      MEMORY[0x21CE92450](v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }
  }

  return result;
}

uint64_t DBManager.pendingDBChanges.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t *DBManager.init(configuration:snapshotGeneration:isProtectedDataAvailable:)(char *a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v278 = a4;
  v248 = a2;
  v285 = a1;
  v254 = *v4;
  v255 = a3;
  v272 = type metadata accessor for CocoaError.Code();
  *&v274 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v271 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for Logger();
  v287 = *(v283 - 8);
  v7 = MEMORY[0x28223BE20](v283);
  v237 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v280 = &v230 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v281 = &v230 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v238 = &v230 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v247 = &v230 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v236 = &v230 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v232 = &v230 - v20;
  MEMORY[0x28223BE20](v19);
  v277 = &v230 - v21;
  v269 = type metadata accessor for URL();
  v267 = *(v269 - 8);
  v22 = MEMORY[0x28223BE20](v269);
  v263 = &v230 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v251 = &v230 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v252 = &v230 - v27;
  MEMORY[0x28223BE20](v26);
  v284 = &v230 - v28;
  v282 = type metadata accessor for ModelConfiguration();
  v253 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v286 = &v230 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for UUID();
  v256 = *(v258 - 8);
  v30 = MEMORY[0x28223BE20](v258);
  v235 = &v230 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v261 = &v230 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd, &_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMR);
  v249 = *(v33 - 8);
  v250 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v230 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v230 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v230 - v42;
  swift_defaultActor_initialize();
  v242 = OBJC_IVAR____TtC9MomentsUI9DBManager__latestSnapshotSubscription;
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__latestSnapshotSubscription) = 0;
  v44 = OBJC_IVAR____TtC9MomentsUI9DBManager__snapshotGeneration;
  v291 = 0;
  v292 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  v243 = v41;
  v244 = v40;
  (*(v41 + 32))(v5 + v44, v43, v40);
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager____lazy_storage___mainWriter) = 0;
  v45 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingDBChanges;
  LOBYTE(v291) = 0;
  Published.init(initialValue:)();
  v245 = v37;
  v46 = *(v37 + 32);
  v46(v5 + v45, v39, v36);
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingAddSnapshotCount) = 0;
  v47 = OBJC_IVAR____TtC9MomentsUI9DBManager__latestLocalSnapshotSequence;
  v291 = 0;
  v292 = 0;
  v293 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V8sequence_ABSg11suggestionstSgMd, &_ss6UInt64V8sequence_ABSg11suggestionstSgMR);
  Published.init(initialValue:)();
  v48 = v5 + v47;
  v49 = v283;
  (*(v249 + 32))(v48, v35, v250);
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__uiActiveCount) = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__uiActiveCountSubscription) = 0;
  v50 = OBJC_IVAR____TtC9MomentsUI9DBManager___cleanupActive;
  LOBYTE(v291) = 0;
  Published.init(initialValue:)();
  v246 = v36;
  v46(v5 + v50, v39, v36);
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupPending) = 0;
  *(v5 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask) = 0;
  v257 = v5;
  v51 = v261;
  UUID.init()();
  v52 = v256 + 16;
  v53 = *(v256 + 16);
  v241 = OBJC_IVAR____TtC9MomentsUI9DBManager_uuid;
  v54 = v5 + OBJC_IVAR____TtC9MomentsUI9DBManager_uuid;
  v55 = v258;
  v53(v54, v51, v258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2165965F0;
  v57 = v253 + 16;
  v58 = *(v253 + 16);
  v58(v286, v285, v282);
  v59 = String.init<A>(describing:)();
  v60 = MEMORY[0x277D837D0];
  v61 = MEMORY[0x277D83838];
  *(v56 + 56) = MEMORY[0x277D837D0];
  *(v56 + 64) = v61;
  *(v56 + 32) = v59;
  *(v56 + 40) = v62;
  *(v56 + 96) = v60;
  *(v56 + 104) = v61;
  v63 = 7104878;
  if (v255)
  {
    v63 = v248;
  }

  v64 = 0xE300000000000000;
  if (v255)
  {
    v64 = v255;
  }

  *(v56 + 72) = v63;
  *(v56 + 80) = v64;
  v65 = MEMORY[0x277D839D8];
  *(v56 + 136) = MEMORY[0x277D839B0];
  *(v56 + 144) = v65;
  *(v56 + 112) = v278;
  *(v56 + 176) = v55;
  v231 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *(v56 + 184) = v231;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v56 + 152));
  v233 = v53;
  v234 = v52;
  v53(boxed_opaque_existential_1, v261, v55);

  static CloudLog.LogBeginInfo(_:_:)(v56, "init(configuration:snapshotGeneration:isProtectedDataAvailable:)", 64, 2, v254, &protocol witness table for DBManager);

  v240 = OBJC_IVAR____TtC9MomentsUI9DBManager__modelConfiguration;
  v67 = v257;
  v275 = v58;
  v276 = v57;
  v68 = (v58)(v257 + OBJC_IVAR____TtC9MomentsUI9DBManager__modelConfiguration, v285, v282);
  MEMORY[0x21CE91D10](v68);
  v69 = URL.pathExtension.getter();
  v71 = v70;
  URL.deletingPathExtension()();
  v291 = v69;
  v292 = v71;

  MEMORY[0x21CE92100](0x626F6C622DLL, 0xE500000000000000);
  v72 = v277;

  v73 = v251;
  URL.appendingPathExtension(_:)();

  v75 = v267 + 16;
  v74 = *(v267 + 16);
  v239 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
  v262 = v74;
  v74(v67 + OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL, v73, v269);
  v76 = 0;
  v267 = v75;
  v265 = (v75 - 8);
  v286 = (v287 + 2);
  ++v287;
  v279 = "getSnapshotGeneration()";
  v270 = (v274 + 8);
  v274 = xmmword_21658E190;
  *(&v77 + 1) = 2;
  v273 = xmmword_21658CA50;
  *&v77 = 136446722;
  v266 = v77;
  *&v77 = 136446466;
  v264 = v77;
  while (1)
  {
    if ((ModelConfiguration.isStoredInMemoryOnly.getter() & 1) == 0)
    {
      v268 = 0;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v78 = __swift_project_value_buffer(v49, static DBManager.Log);
      swift_beginAccess();
      v259 = *v286;
      v260 = v78;
      v259(v72, v78, v49);
      v79 = v263;
      v80 = v269;
      v262(v263, v284, v269);
      v81 = v72;
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v290[0] = v85;
        *v84 = v266;
        swift_beginAccess();
        v86 = StaticString.description.getter();
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v290);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2082;
        *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v290);
        *(v84 + 22) = 2080;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v92 = v80;
        v93 = *v265;
        (*v265)(v79, v92);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v290);
        v49 = v283;

        *(v84 + 24) = v94;
        _os_log_impl(&dword_21607C000, v82, v83, "%{public}s.%{public}s Setting background assertions for: %s", v84, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v85, -1, -1);
        MEMORY[0x21CE94770](v84, -1, -1);
      }

      else
      {

        v95 = v80;
        v93 = *v265;
        (*v265)(v79, v95);
      }

      v96 = *v287;
      (*v287)(v81, v49);
      swift_beginAccess();
      v97 = _s9MomentsUI10CloudSubDBPAAE15bgAssertDBFiles5dbURL9className11mustAcquireSb10Foundation0J0V_s12StaticStringVSbtFZAA0c4SyncE0C_Tt2g5(v284, static DBManager.Class, qword_27CA91498, byte_27CA914A0, 0);
      v76 = v268;
      if ((v97 & 1) == 0)
      {
        v281 = v93;

        v182 = v232;
        v259(v232, v260, v49);
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v186 = v49;
          v187 = swift_slowAlloc();
          v290[0] = v187;
          *v185 = v264;
          v188 = StaticString.description.getter();
          v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v189, v290);

          *(v185 + 4) = v190;
          *(v185 + 12) = 2082;
          *(v185 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v290);
          _os_log_impl(&dword_21607C000, v183, v184, "%{public}s.%{public}s Device locked, database pre-check failed", v185, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v187, -1, -1);
          MEMORY[0x21CE94770](v185, -1, -1);

          v191 = v182;
          v192 = v186;
        }

        else
        {

          v191 = v182;
          v192 = v49;
        }

        v96(v191, v192);
        v225 = v269;
        v202 = v281;
        (v281)(v251, v269);
        v202(v252, v225);
        v202(v284, v225);
        v156 = v258;
        goto LABEL_48;
      }
    }

    type metadata accessor for ModelContainer();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMR);
    v98 = swift_allocObject();
    *(v98 + 16) = v274;
    v99 = type metadata accessor for DBSnapshot(0);
    v100 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
    *(v98 + 32) = v99;
    *(v98 + 40) = v100;
    v101 = type metadata accessor for DBSuggestion(0);
    v102 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    *(v98 + 48) = v101;
    *(v98 + 56) = v102;
    v103 = type metadata accessor for DBAssetData(0);
    v104 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
    *(v98 + 64) = v103;
    *(v98 + 72) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMd, &_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMR);
    v105 = swift_allocObject();
    *(v105 + 16) = v273;
    v106 = v282;
    *(v105 + 56) = v282;
    *(v105 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type ModelConfiguration and conformance ModelConfiguration, MEMORY[0x277CDD500], MEMORY[0x277CDD4F8]);
    v107 = __swift_allocate_boxed_opaque_existential_1((v105 + 32));
    v275(v107, v285, v106);
    v108 = ModelContainer.__allocating_init(for:configurations:)();
    if (!v76)
    {
      break;
    }

    v109 = v76;
    v110 = v271;
    static CocoaError.fileReadUnknown.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608], MEMORY[0x277CC8600]);
    v111 = v272;
    v112 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v113 = *v270;
    (*v270)(v110, v111);
    if (v112 & 1) != 0 || (v114 = v76, static CocoaError.fileWriteUnknown.getter(), v115 = static _ErrorCodeProtocol.~= infix(_:_:)(), v76, v113(v110, v111), (v115))
    {

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v141 = __swift_project_value_buffer(v49, static DBManager.Log);
      swift_beginAccess();
      v142 = v238;
      (*v286)(v238, v141, v49);
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();
      v145 = os_log_type_enabled(v143, v144);
      v146 = v49;
      v147 = v269;
      if (v145)
      {
        v148 = v142;
        v149 = swift_slowAlloc();
        v150 = v147;
        v151 = swift_slowAlloc();
        v290[0] = v151;
        *v149 = v264;
        swift_beginAccess();
        v152 = StaticString.description.getter();
        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v290);

        *(v149 + 4) = v154;
        *(v149 + 12) = 2082;
        *(v149 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v290);
        _os_log_impl(&dword_21607C000, v143, v144, "%{public}s.%{public}s Device locked, database unavailable", v149, 0x16u);
        swift_arrayDestroy();
        v155 = v151;
        v147 = v150;
        MEMORY[0x21CE94770](v155, -1, -1);
        MEMORY[0x21CE94770](v149, -1, -1);

        (*v287)(v148, v146);
      }

      else
      {

        (*v287)(v142, v49);
      }

LABEL_42:
      v156 = v258;
      v157 = v247;
LABEL_43:

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v193 = v283;
      v194 = __swift_project_value_buffer(v283, static DBManager.Log);
      swift_beginAccess();
      (*v286)(v157, v194, v193);
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v289 = v198;
        *v197 = v264;
        swift_beginAccess();
        v199 = StaticString.description.getter();
        v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v200, &v289);
        v156 = v258;

        *(v197 + 4) = v201;
        *(v197 + 12) = 2082;
        *(v197 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, &v289);
        _os_log_impl(&dword_21607C000, v195, v196, "%{public}s.%{public}s Failed to create the model container, not creating DBManager", v197, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v198, -1, -1);
        MEMORY[0x21CE94770](v197, -1, -1);

        (*v287)(v157, v193);
        v202 = *v265;
        v203 = v269;
        (*v265)(v251, v269);
        v202(v252, v203);
        v202(v284, v203);
      }

      else
      {

        (*v287)(v157, v193);
        v202 = *v265;
        (*v265)(v251, v147);
        v202(v252, v147);
        v202(v284, v147);
      }

LABEL_48:
      static CloudLog.LogEndInfo(_:)("init(configuration:snapshotGeneration:isProtectedDataAvailable:)", 64, 2, v254, &protocol witness table for DBManager);
      v204 = *(v256 + 8);
      v204(v261, v156);
      v205 = *(v253 + 8);
      v206 = v257;
      v207 = v156;
      v208 = v282;
      v205(v257 + v240, v282);

      v204(v206 + v241, v207);
      v202(v206 + v239, v269);
      (*(v243 + 8))(v206 + OBJC_IVAR____TtC9MomentsUI9DBManager__snapshotGeneration, v244);

      v209 = v246;
      v210 = *(v245 + 8);
      v210(v206 + OBJC_IVAR____TtC9MomentsUI9DBManager__pendingDBChanges, v246);
      (*(v249 + 8))(v206 + OBJC_IVAR____TtC9MomentsUI9DBManager__latestLocalSnapshotSequence, v250);

      v210(v206 + OBJC_IVAR____TtC9MomentsUI9DBManager___cleanupActive, v209);

      type metadata accessor for DBManager(0);
      swift_defaultActor_destroy();
      v205(v285, v208);
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v116 = __swift_project_value_buffer(v49, static DBManager.Log);
    swift_beginAccess();
    v117 = *v286;
    v118 = v281;
    (*v286)(v281, v116, v49);
    v119 = v76;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v268 = v117;
      v123 = v122;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v290[0] = v125;
      *v123 = v266;
      swift_beginAccess();
      v126 = StaticString.description.getter();
      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v290);
      v49 = v283;

      *(v123 + 4) = v128;
      *(v123 + 12) = 2082;
      *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v290);
      *(v123 + 22) = 2112;
      v129 = v76;
      v130 = _swift_stdlib_bridgeErrorToNSError();
      *(v123 + 24) = v130;
      *v124 = v130;
      _os_log_impl(&dword_21607C000, v120, v121, "%{public}s.%{public}s Failed to create the model container: %@", v123, 0x20u);
      outlined destroy of UTType?(v124, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x21CE94770](v124, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v125, -1, -1);
      v131 = v123;
      v117 = v268;
      MEMORY[0x21CE94770](v131, -1, -1);

      v132 = *v287;
      (*v287)(v281, v49);
    }

    else
    {

      v132 = *v287;
      (*v287)(v118, v49);
    }

    v133 = v280;
    if ((v278 & 1) == 0)
    {
      v171 = v132;
      v172 = v237;
      v117(v237, v116, v49);
      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v290[0] = v176;
        *v175 = v264;
        swift_beginAccess();
        v177 = StaticString.description.getter();
        v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v178, v290);

        *(v175 + 4) = v179;
        *(v175 + 12) = 2082;
        *(v175 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v290);
        _os_log_impl(&dword_21607C000, v173, v174, "%{public}s.%{public}s Defer deleting corrupted database in case it is just a file protection issue", v175, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v176, -1, -1);
        MEMORY[0x21CE94770](v175, -1, -1);

        v180 = v172;
        v181 = v283;
      }

      else
      {

        v180 = v172;
        v181 = v49;
      }

      v171(v180, v181);
      v147 = v269;
      goto LABEL_42;
    }

    v117(v280, v116, v49);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v290[0] = v137;
      *v136 = v264;
      swift_beginAccess();
      v138 = StaticString.description.getter();
      v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, v290);

      *(v136 + 4) = v140;
      v49 = v283;
      *(v136 + 12) = 2082;
      *(v136 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v290);
      _os_log_impl(&dword_21607C000, v134, v135, "%{public}s.%{public}s Deleting corrupted database", v136, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v137, -1, -1);
      MEMORY[0x21CE94770](v136, -1, -1);

      v132(v280, v49);
    }

    else
    {

      v132(v133, v49);
    }

    v72 = v277;
    swift_beginAccess();
    _s9MomentsUI10CloudSubDBPAAE13deleteDBFiles5dbURL9classNamey10Foundation0I0V_s12StaticStringVtFZAA0c11SuggestionsE0C_Tt1g5(v284, static DBManager.Class, qword_27CA91498, byte_27CA914A0);

    v76 = 0;
  }

  v147 = v269;
  v156 = v258;
  v157 = v247;
  if (!v108)
  {
    goto LABEL_43;
  }

  *(v257 + OBJC_IVAR____TtC9MomentsUI9DBManager_modelContainer) = v108;
  v158 = one-time initialization token for viewModel;
  swift_retain_n();
  if (v158 != -1)
  {
    swift_once();
  }

  v159 = v283;
  __swift_project_value_buffer(v283, static CommonLogger.viewModel);
  v160 = v235;
  v233(v235, v261, v156);
  v161 = Logger.logObject.getter();
  v162 = v156;
  v163 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v161, v163))
  {
    v164 = v160;
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v290[0] = v166;
    *v165 = 136315138;
    v167 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v168;
    v281 = *(v256 + 8);
    (v281)(v164, v162);
    v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, v290);
    v159 = v283;

    *(v165 + 4) = v170;
    _os_log_impl(&dword_21607C000, v161, v163, "[DBManager.self] %s created", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v166);
    MEMORY[0x21CE94770](v166, -1, -1);
    MEMORY[0x21CE94770](v165, -1, -1);
  }

  else
  {

    v281 = *(v256 + 8);
    (v281)(v160, v162);
  }

  v212 = v162;
  v213 = v236;
  v214 = v265;
  if (v255)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v215 = __swift_project_value_buffer(v159, static DBManager.Log);
    swift_beginAccess();
    (*v286)(v213, v215, v159);
    v216 = v255;

    v217 = Logger.logObject.getter();
    v218 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      v288[0] = v286;
      *v219 = v266;
      swift_beginAccess();
      v220 = StaticString.description.getter();
      v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v221, v288);

      *(v219 + 4) = v222;
      *(v219 + 12) = 2082;
      *(v219 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, v279 | 0x8000000000000000, v288);
      *(v219 + 22) = 2080;
      v223 = v248;
      *(v219 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v248, v216, v288);
      _os_log_impl(&dword_21607C000, v217, v218, "%{public}s.%{public}s Using snapshot generation: %s", v219, 0x20u);
      v224 = v286;
      swift_arrayDestroy();
      v212 = v258;
      MEMORY[0x21CE94770](v224, -1, -1);
      MEMORY[0x21CE94770](v219, -1, -1);

      (*v287)(v236, v283);
    }

    else
    {

      (*v287)(v213, v159);
      v223 = v248;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v288[0] = v223;
    v288[1] = v216;

    static Published.subscript.setter();

    v228 = *v265;
    v229 = v269;
    (*v265)(v251, v269);
    v228(v252, v229);
    v228(v284, v229);
  }

  else
  {

    v226 = *v214;
    v227 = v269;
    (*v214)(v251, v269);
    v226(v252, v227);
    v226(v284, v227);
  }

  static CloudLog.LogEndInfo(_:)("init(configuration:snapshotGeneration:isProtectedDataAvailable:)", 64, 2, v254, &protocol witness table for DBManager);
  (*(v253 + 8))(v285, v282);
  (v281)(v261, v212);
  return v257;
}

uint64_t *DBManager.__allocating_init(customDatabaseURL:snapshotGeneration:isProtectedDataAvailable:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v39 = a3;
  v4 = a4;
  v32 = a4;
  v33 = a2;
  v7 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v34 = *(v9 - 8);
  v10 = v34;
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for ModelConfiguration();
  v13 = *(v36 - 8);
  v14 = MEMORY[0x28223BE20](v36);
  v35 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v31[-v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21658E190;
  *(v18 + 56) = v9;
  *(v18 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  v20 = *(v10 + 16);
  v20(boxed_opaque_existential_1, a1, v9);
  v21 = MEMORY[0x277D83838];
  *(v18 + 96) = MEMORY[0x277D837D0];
  *(v18 + 104) = v21;
  v22 = MEMORY[0x277D839B0];
  v23 = v39;
  *(v18 + 72) = a2;
  *(v18 + 80) = v23;
  v24 = MEMORY[0x277D839D8];
  *(v18 + 136) = v22;
  *(v18 + 144) = v24;
  *(v18 + 112) = v4;

  v25 = v38;
  static CloudLog.LogBeginInfo(_:_:)(v18, "init(customDatabaseURL:snapshotGeneration:isProtectedDataAvailable:)", 68, 2, v38, &protocol witness table for DBManager);

  v26 = (v20)(v12, a1, v9);
  MEMORY[0x21CE91CE0](v26);
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  v27 = v35;
  v28 = v36;
  (*(v13 + 16))(v35, v17, v36);
  type metadata accessor for DBManager(0);
  swift_allocObject();
  v29 = DBManager.init(configuration:snapshotGeneration:isProtectedDataAvailable:)(v27, v33, v39, v32);
  (*(v13 + 8))(v17, v28);
  static CloudLog.LogEndInfo(_:)("init(customDatabaseURL:snapshotGeneration:isProtectedDataAvailable:)", 68, 2, v25, &protocol witness table for DBManager);
  (*(v34 + 8))(a1, v9);
  return v29;
}

uint64_t DBManager.initialized()()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMR);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMR);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySi_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySi_GGMR);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](DBManager.initialized(), v0, 0);
}

{
  static CloudLog.LogBeginInfo(_:_:)(0, "initialized()", 13, 2, *(v0 + 72), &protocol witness table for DBManager);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  *(v0 + 176) = v1;

  return MEMORY[0x2822009F8](DBManager.initialized(), v1, 0);
}

{
  v1 = *(v0 + 64);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](DBManager.initialized(), v1, 0);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[8];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Int>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR, MEMORY[0x277CBCEC8]);
  Publisher<>.removeDuplicates()();
  (*(v6 + 8))(v3, v5);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<Int>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySi_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySi_GGMR, MEMORY[0x277CBCBE0]);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v4);
  *(v7 + OBJC_IVAR____TtC9MomentsUI9DBManager__uiActiveCountSubscription) = v8;

  type metadata accessor for MainActor();
  v0[23] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DBManager.initialized(), v10, v9);
}

{

  *(v0 + 192) = DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = DBManager.initialized();

  return DBWriter.latestSnapshotSequence()();
}

{
  v2 = *v1;

  v3 = *(v2 + 64);
  if (v0)
  {

    v4 = DBManager.initialized();
  }

  else
  {

    v4 = DBManager.initialized();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd, &_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V8sequence_AGSg11suggestionstSg_GMR, MEMORY[0x277CBCEC8]);
  Publisher.removeDuplicates(by:)();
  (*(v6 + 8))(v3, v5);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<(sequence: UInt64, suggestions: UInt64?)?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVys6UInt64V8sequence_AKSg11suggestionstSg_GGMR, MEMORY[0x277CBCBE0]);

  v9 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v4);
  *(v8 + OBJC_IVAR____TtC9MomentsUI9DBManager__latestSnapshotSubscription) = v9;

  specialized static BTask.detached(name:operation:)(0xD000000000000017, 0x8000000216580100, &async function pointer to partial apply for closure #4 in DBManager.initialized(), v8);

  static CloudLog.LogEndInfo(_:)("initialized()", 13, 2, v7, &protocol witness table for DBManager);

  v10 = v0[1];

  return v10();
}

double closure #1 in DBManager.initialized()(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in DBManager.initialized(), v9);

  return result;
}

uint64_t closure #1 in closure #1 in DBManager.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in DBManager.initialized(), 0, 0);
}

uint64_t closure #1 in closure #1 in DBManager.initialized()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DBManager.initialized(), Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  DBManager._setUIActiveCount(_:)(*(v0 + 48));

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DBManager.initialized(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #3 in DBManager.initialized()(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static CommonLogger.viewModel);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315650;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    v13 = 999;
    if (!v5)
    {
      v13 = v3;
    }

    *(v8 + 14) = v13;
    *(v8 + 22) = 2048;
    if (v5 & 1) != 0 || (v4)
    {
      v2 = 0;
    }

    *(v8 + 24) = v2;
    _os_log_impl(&dword_21607C000, oslog, v7, "[DBManager.self] %s latestLocalSnapshotSequence: %llu, %llu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }
}

uint64_t closure #4 in DBManager.initialized()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterImage(imageSource:outputURL:);

  return DBManager.cleanup(wait:)(0);
}

uint64_t specialized DBManager.beginMultiThreadedAsyncWrite(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](specialized DBManager.beginMultiThreadedAsyncWrite(_:), a1, 0);
}

{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](specialized DBManager.beginMultiThreadedAsyncWrite(_:), a1, 0);
}

uint64_t specialized DBManager.beginMultiThreadedAsyncWrite(_:)()
{
  type metadata accessor for ModelContext();
  swift_allocObject();

  v1 = ModelContext.init(_:)();
  v0[6] = v1;
  v0[7] = DBManager.getSnapshotGeneration()()._object;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = specialized DBManager.beginMultiThreadedAsyncWrite(_:);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return specialized closure #1 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(v1, v5, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = specialized DBManager.beginMultiThreadedAsyncWrite(_:);
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = specialized DBManager.beginMultiThreadedAsyncWrite(_:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 72);

  dispatch thunk of ModelContext.rollback()();

  v2 = *(v0 + 8);

  return v2();
}

{
  type metadata accessor for ModelContext();
  swift_allocObject();

  v1 = ModelContext.init(_:)();
  v0[6] = v1;
  v2 = DBManager.getSnapshotGeneration()();
  v0[7] = v2._object;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = specialized DBManager.beginMultiThreadedAsyncWrite(_:);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return closure #2 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:)(v2._countAndFlagsBits, v2._object, v1, v6, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = specialized DBManager.beginMultiThreadedAsyncWrite(_:);
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = specialized DBManager.beginMultiThreadedAsyncWrite(_:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t specialized DBManager.beginMultiThreadedAsyncWrite(_:)(uint64_t a1)
{
  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    v2 = *(v1 + 72);
    dispatch thunk of ModelContext.save()();

    if (v2)
    {
      v3 = *(v1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v3 = *(v1 + 8);
LABEL_6:

  return v3();
}

uint64_t DBManager.beginMultiThreadedAsyncWrite(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](DBManager.beginMultiThreadedAsyncWrite(_:), v2, 0);
}

uint64_t DBManager.beginMultiThreadedAsyncWrite(_:)()
{
  v1 = v0[2];
  type metadata accessor for ModelContext();
  swift_allocObject();

  v2 = ModelContext.init(_:)();
  v0[5] = v2;
  v3 = DBManager.getSnapshotGeneration()();
  v0[6] = v3._object;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = DBManager.beginMultiThreadedAsyncWrite(_:);

  return v6(v3._countAndFlagsBits, v3._object, v2);
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = DBManager.beginMultiThreadedAsyncWrite(_:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = DBManager.beginMultiThreadedAsyncWrite(_:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 64);

  dispatch thunk of ModelContext.rollback()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t DBManager.beginMultiThreadedAsyncWrite(_:)(uint64_t a1)
{
  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    v2 = *(v1 + 64);
    dispatch thunk of ModelContext.save()();

    if (v2)
    {
      v3 = *(v1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v3 = *(v1 + 8);
LABEL_6:

  return v3();
}

void DBManager.beginMultiThreadedWrite(_:)(void (*a1)(uint64_t))
{
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  countAndFlagsBits = DBManager.getSnapshotGeneration()()._countAndFlagsBits;
  a1(countAndFlagsBits);
  if (v1)
  {

    dispatch thunk of ModelContext.rollback()();
  }

  else
  {

    if (dispatch thunk of ModelContext.hasChanges.getter())
    {
      dispatch thunk of ModelContext.save()();
    }
  }
}

void DBManager.beginMainWrite(_:)(uint64_t (*a1)(void))
{
  dispatch thunk of ModelContainer.mainContext.getter();
  a1();
  if (v1)
  {
    dispatch thunk of ModelContext.rollback()();
  }

  else if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();
  }
}

uint64_t specialized DBManager.beginMainWriteAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a2;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = specialized DBManager.beginMainWriteAsync(_:);

  return specialized DBManager.beginMainWriteAsync(_:)(a1, a2, a3, a4);
}

{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](specialized DBManager.beginMainWriteAsync(_:), v6, v5);
}

uint64_t specialized DBManager.beginMainWriteAsync(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  *(v0 + 72) = dispatch thunk of ModelContainer.mainContext.getter();

  return MEMORY[0x2822009F8](specialized DBManager.beginMainWriteAsync(_:), v1, 0);
}

{
  v1 = DBManager.getSnapshotGeneration()();
  v0[10] = v1._object;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = specialized DBManager.beginMainWriteAsync(_:);
  v3 = v0[9];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return closure #1 in DBWriter.mergedSuggestionsInWorking(with:)(v1._countAndFlagsBits, v1._object, v3, v6, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = specialized DBManager.beginMainWriteAsync(_:);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = specialized DBManager.beginMainWriteAsync(_:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    v1 = *(v0 + 96);
    dispatch thunk of ModelContext.save()();

    if (v1)
    {
      v2 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v2 = *(v0 + 8);
LABEL_6:

  return v2();
}

{
  v1 = *(v0 + 96);

  dispatch thunk of ModelContext.rollback()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t DBManager.beginMainWriteAsync(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](DBManager.beginMainWriteAsync(_:), v5, v4);
}

uint64_t DBManager.beginMainWriteAsync(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = dispatch thunk of ModelContainer.mainContext.getter();

  return MEMORY[0x2822009F8](DBManager.beginMainWriteAsync(_:), v1, 0);
}

{
  v1 = v0[2];
  v2 = DBManager.getSnapshotGeneration()();
  v0[9] = v2._object;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = DBManager.beginMainWriteAsync(_:);
  v4 = v0[8];

  return v6(v2._countAndFlagsBits, v2._object, v4);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = DBManager.beginMainWriteAsync(_:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = DBManager.beginMainWriteAsync(_:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    v1 = *(v0 + 88);
    dispatch thunk of ModelContext.save()();

    if (v1)
    {
      v2 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v2 = *(v0 + 8);
LABEL_6:

  return v2();
}

{
  v1 = *(v0 + 88);

  dispatch thunk of ModelContext.rollback()();

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBManager.deleteAll()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DBSnapshot(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  outlined destroy of UTType?(v10, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  if (v1)
  {
  }

  else
  {
    type metadata accessor for DBSuggestion(0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of UTType?(v7, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
    type metadata accessor for DBAssetData(0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMR);
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of UTType?(v4, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
    dispatch thunk of ModelContext.save()();
    v14 = [objc_opt_self() defaultCenter];
    v15 = v14;
    if (one-time initialization token for wiped != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v15 postNotificationName:static DBManager.wiped object:v0];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBManager.deleteAllMain()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  dispatch thunk of ModelContainer.mainContext.getter();
  type metadata accessor for DBSnapshot(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  outlined destroy of UTType?(v10, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  if (v1)
  {
  }

  else
  {
    type metadata accessor for DBSuggestion(0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of UTType?(v7, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
    type metadata accessor for DBAssetData(0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMR);
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of UTType?(v4, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
    dispatch thunk of ModelContext.save()();
    v14 = [objc_opt_self() defaultCenter];
    v15 = v14;
    if (one-time initialization token for wiped != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v15 postNotificationName:static DBManager.wiped object:v0];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBManager.deleteAllSuggestionsAndAssets()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  dispatch thunk of ModelContainer.mainContext.getter();
  type metadata accessor for DBSuggestion(0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  outlined destroy of UTType?(v7, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  if (v1)
  {
  }

  else
  {
    type metadata accessor for DBAssetData(0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMR);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of UTType?(v4, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
    dispatch thunk of ModelContext.save()();
    v10 = [objc_opt_self() defaultCenter];
    v11 = v10;
    if (one-time initialization token for wiped != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v11 postNotificationName:static DBManager.wiped object:v0];
  }
}

uint64_t DBManager.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI9DBManager__modelConfiguration;
  v2 = type metadata accessor for ModelConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9MomentsUI9DBManager_uuid;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9MomentsUI9DBManager__snapshotGeneration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  v9 = OBJC_IVAR____TtC9MomentsUI9DBManager__pendingDBChanges;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v12 = OBJC_IVAR____TtC9MomentsUI9DBManager__latestLocalSnapshotSequence;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd, &_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMR);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  v11(v0 + OBJC_IVAR____TtC9MomentsUI9DBManager___cleanupActive, v10);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DBManager.__deallocating_deinit()
{
  DBManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t DBManager._beginCleanup()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](DBManager._beginCleanup(), v0, 0);
}

{
  v17 = v0;
  if (*(v0[5] + OBJC_IVAR____TtC9MomentsUI9DBManager__uiActiveCount))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[6];
    v4 = __swift_project_value_buffer(v3, static DBManager.Log);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C436E696765625FLL, 0xEF292870756E6165, &v16);
      _os_log_impl(&dword_21607C000, v5, v6, "DBManager.%{public}s Skipping cleanup while the UI is active", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v0 + 10);

  if (v0[10])
  {
LABEL_8:
    *(v0[5] + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupPending) = 1;

    v13 = v0[1];

    return v13(0);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  v0[9] = v15;

  return MEMORY[0x2822009F8](DBManager._beginCleanup(), v15, 0);
}

{
  v1 = *(v0 + 40);
  CloudManager.retainGCActive()();

  return MEMORY[0x2822009F8](DBManager._beginCleanup(), v1, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 81) = 1;

  static Published.subscript.setter();
  *(*(v0 + 40) + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupPending) = 0;

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t closure #2 in DBManager.cleanup(wait:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 16));

  *(v0 + 40) = *(v0 + 16);

  return MEMORY[0x2822009F8](closure #2 in DBManager.cleanup(wait:), 0, 0);
}

{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    specialized static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)(*(*(v0 + 32) + OBJC_IVAR____TtC9MomentsUI9DBManager_modelContainer), *(v0 + 40), *(v0 + 48), *(v0 + 32) + OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL, ClientWorkoutViewModel.clearCache(), 0);

    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);

    return DBManager._endCleanup()();
  }
}

uint64_t DBManager._endCleanup()()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](DBManager._endCleanup(), v0, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 0;

  static Published.subscript.setter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  *(v0 + 48) = v1;

  return MEMORY[0x2822009F8](DBManager._endCleanup(), v1, 0);
}

{
  v1 = *(v0 + 32);
  CloudManager.releaseGCActive()();

  return MEMORY[0x2822009F8](DBManager._endCleanup(), v1, 0);
}

uint64_t DBManager._endCleanup()(__n128 a1)
{
  v2 = v1[4];
  if (*(v2 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupPending) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupPending) = 0;
    v3 = OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask;
    if (*(v2 + OBJC_IVAR____TtC9MomentsUI9DBManager__cleanupTask))
    {

      MEMORY[0x21CE92450](v4, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }

    v5 = v1[4];
    v6 = v1[5];
    *(v2 + v3) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v1 + 2);

    v10 = *(v1 + 1);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v10;
    *(v7 + 40) = v6;

    *(v2 + v3) = specialized static BTask.detached(name:operation:)(0xD000000000000017, 0x8000000216580330, &async function pointer to partial apply for closure #1 in DBManager._endCleanup(), v7);
  }

  v8 = v1[1];

  return v8();
}

uint64_t closure #1 in DBManager._endCleanup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = closure #1 in DBManager._endCleanup();

  return DBManager._beginCleanup()();
}

uint64_t closure #1 in DBManager._endCleanup()(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](closure #1 in DBManager._endCleanup(), 0, 0);
}

uint64_t closure #1 in DBManager._endCleanup()()
{
  if (*(v0 + 72) == 1 && (static Task<>.isCancelled.getter() & 1) == 0)
  {
    specialized static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)(*(*(v0 + 32) + OBJC_IVAR____TtC9MomentsUI9DBManager_modelContainer), *(v0 + 40), *(v0 + 48), *(v0 + 32) + OBJC_IVAR____TtC9MomentsUI9DBManager_blobFolderURL, *(v0 + 16), *(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = closure #1 in DBManager._endCleanup();

    return DBManager._endCleanup()();
  }

  else
  {
    v1 = *(v0 + 8);

    return v1();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void $defer #1 () in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.processing);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v5);
    _os_log_impl(&dword_21607C000, oslog, v1, "DBManager.%{public}s END", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x21CE94770](v3, -1, -1);
    MEMORY[0x21CE94770](v2, -1, -1);
  }
}

uint64_t closure #30 in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v42 = a1;
  v53 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v47 = v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR);
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR);
  v22 = *(v21 - 8);
  v45 = v21;
  v46 = v22;
  MEMORY[0x28223BE20](v21);
  v23 = *v42;
  v41 = v39 - v24;
  v42 = v23;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v25 = *(v15 + 8);
  v39[1] = v15 + 8;
  v40 = v25;
  v25(v17, v14);
  static PredicateExpressions.build_NilLiteral<A>()();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR, MEMORY[0x277CC8EC0]);
  _sSSSgxSgSQsSQRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v26 = v43;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v44 + 8))(v13, v26);
  v27 = *(v56 + 8);
  v56 += 8;
  v27(v20, v18);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v40(v17, v14);
  v57 = v49;
  v58 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v28 = v48;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR, MEMORY[0x277CC9080]);
  v29 = v47;
  v30 = v51;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v52 + 8))(v28, v30);
  v27(v20, v18);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMR);
  v32 = v53;
  v53[3] = v31;
  v32[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v32);
  v33 = MEMORY[0x277CC90E0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR, MEMORY[0x277CC90E0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR, v33);
  v34 = v41;
  v35 = v29;
  v36 = v45;
  v37 = v54;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v55 + 8))(v35, v37);
  return (*(v46 + 8))(v34, v36);
}

uint64_t closure #31 in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)@<X0>(void (*a1)(char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a3;
  v70 = a2;
  v80 = a1;
  v78 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR);
  v5 = *(v4 - 8);
  v74 = v4;
  v75 = v5;
  MEMORY[0x28223BE20](v4);
  v69 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR);
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  MEMORY[0x28223BE20](v7);
  v68 = v50 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR);
  v13 = *(v12 - 8);
  v66 = v12;
  v67 = v13;
  MEMORY[0x28223BE20](v12);
  v81 = v50 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMR);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = v50 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v23 = v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
  v25 = *(v24 - 8);
  v63 = v24;
  v64 = v25;
  MEMORY[0x28223BE20](v24);
  v57 = v50 - v26;
  v79 = *v80;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSnapshot> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v80 = *(v19 + 8);
  (v80)(v21, v18);
  v50[1] = v19 + 8;
  v82 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v27 = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGMR, MEMORY[0x277CC90C0]);
  v53 = MEMORY[0x277CC9080];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UInt64> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_s6UInt64VGMR, MEMORY[0x277CC9080]);
  v28 = v17;
  v29 = v51;
  v30 = v54;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v55 + 8))(v28, v30);
  (*(v52 + 8))(v23, v29);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v31 = v56;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (v80)(v21, v18);
  v32 = v58;
  static PredicateExpressions.build_NilLiteral<A>()();
  v55 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGMR, v27);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR, MEMORY[0x277CC8EC0]);
  _sSSSgxSgSQsSQRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v33 = v59;
  v34 = v61;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v62 + 8))(v32, v34);
  v35 = *(v60 + 8);
  v35(v31, v33);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (v80)(v21, v18);
  v82 = v70;
  v83 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v36 = v69;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSSgGMR, v53);
  v37 = v68;
  v38 = v74;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v75 + 8))(v36, v38);
  v35(v31, v33);
  v39 = MEMORY[0x277CC9070];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR, MEMORY[0x277CC9070]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR, v39);
  v40 = v65;
  v41 = v66;
  v42 = v81;
  v43 = v76;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  (*(v77 + 8))(v37, v43);
  (*(v67 + 8))(v42, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAC11DisjunctionVy_AC0F0Vy_AIy_AOSSSgGAC10NilLiteralVy_SSGGAZy_A0_ATy_A_GGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAC11DisjunctionVy_AC0F0Vy_AIy_AOSSSgGAC10NilLiteralVy_SSGGAZy_A0_ATy_A_GGGGMR);
  v45 = v78;
  v78[3] = v44;
  v45[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v45);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR, MEMORY[0x277CC90E0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance PredicateExpressions.Disjunction<A, B>, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMR, MEMORY[0x277CC8F38]);
  v46 = v57;
  v47 = v63;
  v48 = v71;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v73 + 8))(v40, v48);
  return (*(v64 + 8))(v46, v47);
}

uint64_t closure #32 in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)@<X0>(uint64_t *a2@<X8>)
{
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMR);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApGy_AIy_APGSiGSiGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApGy_AIy_APGSiGSiGMR);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v22 - v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGSiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGMd, &_sSay9MomentsUI10DBSnapshotCGMR);
  v15 = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAH10DBSnapshotCGSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGSiGMR, v15);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v28 = 0;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v16 = v23;
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMR);
  v18 = v25;
  v25[3] = v17;
  v18[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v18);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApGy_AIy_APGSiGSiGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApGy_AIy_APGSiGSiGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Int?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Int? and conformance <A> A?();
  v19 = v22;
  v20 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v16, v20);
  return (*(v24 + 8))(v14, v19);
}

uint64_t closure #2 in closure #4 in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCG9SwiftData20PersistentIdentifierVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCG9SwiftData20PersistentIdentifierVGMR);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9SwiftData20PersistentIdentifierVGMd, &_sSay9SwiftData20PersistentIdentifierVGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAJGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAJGGMR);
  a3[4] = lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCG9SwiftData20PersistentIdentifierVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCG9SwiftData20PersistentIdentifierVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [PersistentIdentifier] and conformance [A], &_sSay9SwiftData20PersistentIdentifierVGMd, &_sSay9SwiftData20PersistentIdentifierVGMR, MEMORY[0x277D83970]);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, MEMORY[0x277CDD538], MEMORY[0x277CDD558]);
  v17 = v20;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #7 in static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)@<X0>(uint64_t *a2@<X8>)
{
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMR);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApGy_AIy_APGSiGSiGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApGy_AIy_APGSiGSiGMR);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v22 - v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGSiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGMd, &_sSay9MomentsUI12DBSuggestionCGMR);
  v15 = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGSiGMR, v15);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v10 + 8))(v12, v9);
  v28 = 0;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v16 = v23;
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMR);
  v18 = v25;
  v25[3] = v17;
  v18[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v18);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApGy_AIy_APGSiGSiGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApGy_AIy_APGSiGSiGMR, MEMORY[0x277CC8F70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Int?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Int? and conformance <A> A?();
  v19 = v22;
  v20 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v16, v20);
  return (*(v24 + 8))(v14, v19);
}

uint64_t closure #1 in closure #32 in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(a4, a2, a3, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #3 in closure #2 in static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMR);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9SwiftData20PersistentIdentifierVGMd, &_sSay9SwiftData20PersistentIdentifierVGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI07DBAssetH0CGAJGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI07DBAssetH0CGAJGGMR);
  a3[4] = lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [PersistentIdentifier] and conformance [A], &_sSay9SwiftData20PersistentIdentifierVGMd, &_sSay9SwiftData20PersistentIdentifierVGMR, MEMORY[0x277D83970]);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, MEMORY[0x277CDD538], MEMORY[0x277CDD558]);
  v17 = v20;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #3 in static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v68 = a3;
  v60 = a5;
  v61 = a6;
  v59 = a4;
  v67 = a2;
  v72[2] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMR);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v55 - v12;
  v62 = type metadata accessor for URL.DirectoryHint();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v55 - v24;
  v26 = *a1;
  v27 = a1[1];
  (*(v20 + 56))(v18, 1, 1, v19);
  (*(v13 + 104))(v15, *MEMORY[0x277CC91D8], v62);
  v28 = v70;

  v62 = v26;
  v58 = v27;
  URL.init(filePath:directoryHint:relativeTo:)();
  URL.deletingPathExtension()();
  v30 = *(v20 + 8);
  v29 = v20 + 8;
  v30(v23, v19);
  URL.lastPathComponent.getter();
  v57 = v19;
  v56 = v30;
  v30(v25, v19);
  UUID.init(uuidString:)();

  v71 = v28;
  v72[1] = type metadata accessor for DBAssetData(0);
  v31 = v63;
  Predicate.init(_:)();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMR);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v66;
  v34 = v67;
  FetchDescriptor.predicate.setter();
  v35 = v64;
  v36 = v65;
  (*(v65 + 16))(v64, v34, v33);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
  v37 = v69;
  v38 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  (*(v36 + 8))(v35, v33);
  if (!v37)
  {
    v69 = v29;
    v39 = v60;
    if (!v38)
    {
      v40 = [objc_opt_self() defaultManager];
      URL.appendingPathComponent(_:)();
      URL._bridgeToObjectiveC()(v41);
      v43 = v42;
      v56(v25, v57);
      v72[0] = 0;
      v44 = [v40 removeItemAtURL:v43 error:v72];

      if (v44)
      {
        v45 = v72[0];
      }

      else
      {
        v46 = v72[0];
        v47 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v28 = v70;
    }

    if (static Task<>.isCancelled.getter() & 1) != 0 || (v39())
    {
      v48 = v28;
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static CommonLogger.processing);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v72[0] = v53;
        *v52 = 136446210;
        *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x80000002165803A0, v72);
        _os_log_impl(&dword_21607C000, v50, v51, "DBManager.%{public}s Cleanup Cancelled", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x21CE94770](v53, -1, -1);
        MEMORY[0x21CE94770](v52, -1, -1);
      }

      v28 = v48;
    }
  }

  return outlined destroy of UTType?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t closure #2 in closure #3 in static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMR);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAC5ValueVy_APGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAC5ValueVy_APGGMR);
  a3[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, PredicateExpressions.Value<UUID?>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?(&lazy protocol witness table cache variable for type UUID? and conformance <A> A?, &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9610], MEMORY[0x277D84F50]);
  v16 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

void key path getter for DBManager._cleanupActive : DBManager(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t key path setter for DBManager._cleanupActive : DBManager(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t partial apply for closure #2 in DBManager.cleanup(wait:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBManager.cleanup(wait:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in DBManager.setSnapshotGeneration(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in DBManager.setSnapshotGeneration(_:)();
}

uint64_t type metadata accessor for DBManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBManager;
  if (!type metadata singleton initialization cache for DBManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #4 in DBManager.initialized()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #4 in DBManager.initialized()();
}

unint64_t lazy protocol witness table accessor for type DBManager.DBError and conformance DBManager.DBError()
{
  result = lazy protocol witness table cache variable for type DBManager.DBError and conformance DBManager.DBError;
  if (!lazy protocol witness table cache variable for type DBManager.DBError and conformance DBManager.DBError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBManager.DBError and conformance DBManager.DBError);
  }

  return result;
}

void type metadata completion function for DBManager(uint64_t a1)
{
  type metadata accessor for ModelConfiguration();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd, &_sSSSgMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Bool>();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<(sequence: UInt64, suggestions: UInt64?)?>, &_ss6UInt64V8sequence_ABSg11suggestionstSgMd, &_ss6UInt64V8sequence_ABSg11suggestionstSgMR);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of DBManager.setSnapshotGeneration(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DBManager.initialized()()
{
  v4 = (*(*v0 + 672) + **(*v0 + 672));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of DBManager.beginMultiThreadedAsyncWrite(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 680) + **(*v2 + 680));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DBManager.beginMainWriteAsync(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 704) + **(*v2 + 704));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterImage(imageSource:outputURL:);

  return v8(a1, a2);
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

void type metadata accessor for Published<String?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t partial apply for closure #1 in DBManager._setUIActiveCount(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in DBManager.setSnapshotGeneration(_:)();
}

uint64_t partial apply for closure #1 in closure #1 in DBManager.initialized()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in DBManager.initialized()(a1, v4, v5, v7, v6);
}

void specialized DBManager.beginMultiThreadedWrite(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  type metadata accessor for ModelContext();
  swift_allocObject();

  v8 = ModelContext.init(_:)();
  v9 = DBManager.getSnapshotGeneration()();
  specialized closure #1 in DBWriter.promoteDraftAsLatestSnapshot(processingTime:submitAnalytics:)(v9._countAndFlagsBits, v9._object, v8, a2, a3, a4);
  if (v4)
  {

    dispatch thunk of ModelContext.rollback()();
  }

  else
  {

    if (dispatch thunk of ModelContext.hasChanges.getter())
    {
      dispatch thunk of ModelContext.save()();
    }
  }
}

uint64_t specialized static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v77[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMR);
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v7, 1, 1, v11);
  v15 = type metadata accessor for DBAssetData(0);
  v16 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData, &protocol conformance descriptor for DBAssetData);
  FetchDescriptor.init(predicate:sortBy:)();
  v77[1] = v15;
  Predicate.init(_:)();
  v13(v7, 0, 1, v11);
  FetchDescriptor.predicate.setter();
  v65 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  v69 = v14;
  v70 = v13;
  v71 = v11;
  v17 = MEMORY[0x21CE93DB0]();
  FetchDescriptor.fetchLimit.setter();
  v18 = dispatch thunk of ModelContext.fetchIdentifiers<A>(_:)();
  v19 = v18;
  v73 = v16;
  v74 = v17;
  v66 = "URL:hasCancelled:)";
  *&v20 = 136446722;
  v62 = v20;
  *&v20 = 136446210;
  v61 = v20;
  v63 = v10;
  v64 = v8;
  v21 = a1;
  v67 = a1;
  v22 = v75;
  v23 = v76;
  v24 = &unk_2811A6000;
  while (*(v19 + 16))
  {
    v72 = &v61;
    MEMORY[0x28223BE20](v18);
    *(&v61 - 2) = v19;
    Predicate.init(_:)();
    v70(v22, 0, 1, v71);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of UTType?(v22, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMR);
    if (v24[216] != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static CommonLogger.processing);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v77[0] = v30;
      *v29 = v62;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, v66 | 0x8000000000000000, v77);
      *(v29 + 12) = 2048;
      v31 = *(v19 + 16);

      *(v29 + 14) = v31;

      *(v29 + 22) = 2048;
      *(v29 + 24) = v65;
      _os_log_impl(&dword_21607C000, v27, v28, "DBManager.%{public}s Deleting stale asset data batch %ld of %ld", v29, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v25 = v67;
      MEMORY[0x21CE94770](v30, -1, -1);
      v32 = v29;
      v23 = v76;
      MEMORY[0x21CE94770](v32, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v25 = v21;
    }

    dispatch thunk of ModelContext.save()();
    v22 = v75;
    if (static Task<>.isCancelled.getter())
    {
      v33 = v25;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v77[0] = v37;
        *v36 = v61;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, v66 | 0x8000000000000000, v77);
        _os_log_impl(&dword_21607C000, v34, v35, "DBManager.%{public}s Cleanup Cancelled", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v38 = v67;
        MEMORY[0x21CE94770](v37, -1, -1);
        v39 = v36;
        v22 = v75;
        MEMORY[0x21CE94770](v39, -1, -1);

        v25 = v38;
      }

      else
      {

        v25 = v33;
      }
    }

    objc_autoreleasePoolPop(v74);
    v74 = MEMORY[0x21CE93DB0]();
    FetchDescriptor.fetchLimit.setter();
    v21 = v25;
    v18 = dispatch thunk of ModelContext.fetchIdentifiers<A>(_:)();
    v19 = v18;
    v24 = &unk_2811A6000;
  }

  objc_autoreleasePoolPop(v74);
  FetchDescriptor.includePendingChanges.setter();
  FetchDescriptor.fetchLimit.setter();
  v40 = v68;
  v41 = URL.path(percentEncoded:)(1);
  v42 = [objc_opt_self() defaultManager];
  v43 = MEMORY[0x21CE91FC0](v41._countAndFlagsBits, v41._object);
  v77[0] = 0;
  v44 = [v42 contentsOfDirectoryAtPath:v43 error:v77];

  v45 = v77[0];
  if (v44)
  {
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v45;
  }

  else
  {
    v48 = v77[0];
    v49 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v46 = MEMORY[0x277D84F90];
  }

  if (v24[216] != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static CommonLogger.processing);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77[0] = v54;
    *v53 = v62;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, v66 | 0x8000000000000000, v77);
    *(v53 + 12) = 2048;
    *(v53 + 14) = *(v46 + 16);

    *(v53 + 22) = 2080;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41._countAndFlagsBits, v41._object, v77);

    *(v53 + 24) = v55;
    _os_log_impl(&dword_21607C000, v51, v52, "DBManager.%{public}s Checking %ld stale asset BLOBs from %s", v53, 0x20u);
    swift_arrayDestroy();
    v56 = v54;
    v40 = v68;
    MEMORY[0x21CE94770](v56, -1, -1);
    MEMORY[0x21CE94770](v53, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v57);
  v58 = v63;
  v59 = v67;
  *(&v61 - 6) = v63;
  *(&v61 - 5) = v59;
  *(&v61 - 4) = v40;
  *(&v61 - 3) = ClientWorkoutViewModel.clearCache();
  *(&v61 - 2) = 0;
  specialized Sequence.forEach(_:)(partial apply for closure #3 in static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:), (&v61 - 4), v46);

  return (*(v23 + 8))(v58, v64);
}

void specialized static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v194 = a6;
  v195 = a5;
  v196 = a4;
  v193 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v184 = v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v171 - v10;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  v180 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = v171 - v12;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI10DBSnapshotCGMR);
  *&v181 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v186 = (v171 - v13);
  v14 = type metadata accessor for String.StandardComparator();
  *&v183 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v182 = v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v171 - v17;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMd, &_s10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGMR);
  v185 = *(v188 - 8);
  v19 = MEMORY[0x28223BE20](v188);
  v189 = v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v190 = v171 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = (v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = v171 - v26;
  if (one-time initialization token for processing != -1)
  {
LABEL_116:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static CommonLogger.processing);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v198 = v29;
  v179 = v11;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v199 = v34;
    *v33 = 136446210;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    _os_log_impl(&dword_21607C000, v30, v31, "DBManager.%{public}s BEGIN", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x21CE94770](v34, -1, -1);
    MEMORY[0x21CE94770](v33, -1, -1);
  }

  type metadata accessor for ModelContext();
  swift_allocObject();

  v35 = ModelContext.init(_:)();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v199 = v39;
    *v38 = 136446210;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    _os_log_impl(&dword_21607C000, v36, v37, "DBManager.%{public}s Initial asset cleanup", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x21CE94770](v39, -1, -1);
    MEMORY[0x21CE94770](v38, -1, -1);
  }

  specialized static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)(v35, v196);
  if (static Task<>.isCancelled.getter() & 1) != 0 || (v195())
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v199 = v43;
      *v42 = 136446210;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
      _os_log_impl(&dword_21607C000, v40, v41, "DBManager.%{public}s Cleanup Cancelled", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21CE94770](v43, -1, -1);
      MEMORY[0x21CE94770](v42, -1, -1);
    }

    $defer #1 () in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)();
    return;
  }

  if (!v193)
  {
    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_79;
    }

LABEL_78:
    if ((v195() & 1) == 0)
    {
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v199 = v128;
        *v127 = 136446210;
        *(v127 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
        _os_log_impl(&dword_21607C000, v125, v126, "DBManager.%{public}s Trimming suggestions", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v128);
        MEMORY[0x21CE94770](v128, -1, -1);
        MEMORY[0x21CE94770](v127, -1, -1);
      }

      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
      v130 = *(v129 - 8);
      v131 = *(v130 + 56);
      v132 = v130 + 56;
      v133 = v179;
      v131(v179, 1, 1, v129);
      v134 = type metadata accessor for DBSuggestion(0);
      v135 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
      FetchDescriptor.init(predicate:sortBy:)();
      v199 = v134;
      Predicate.init(_:)();
      v131(v133, 0, 1, v129);
      FetchDescriptor.predicate.setter();
      v182 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
      v189 = v134;
      v190 = v135;
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.default.getter();
      v138 = os_log_type_enabled(v136, v137);
      v186 = v131;
      v187 = v129;
      v185 = v132;
      if (v138)
      {
        v139 = v35;
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v201 = v141;
        *v140 = 136446466;
        v188 = 0x8000000216580350;
        *(v140 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v201);
        *(v140 + 12) = 2048;
        *(v140 + 14) = v182;
        _os_log_impl(&dword_21607C000, v136, v137, "DBManager.%{public}s Found %ld unreferenced suggestions", v140, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v141);
        MEMORY[0x21CE94770](v141, -1, -1);
        v142 = v140;
        v35 = v139;
        MEMORY[0x21CE94770](v142, -1, -1);
      }

      else
      {

        v188 = 0x8000000216580350;
      }

      v149 = v184;
      *&v143 = 136446210;
      v183 = v143;
      *&v143 = 136446722;
      v181 = v143;
      do
      {
        v150 = MEMORY[0x21CE93DB0]();
        FetchDescriptor.fetchLimit.setter();
        v151 = v35;
        v152 = dispatch thunk of ModelContext.fetchIdentifiers<A>(_:)();
        v153 = v152;
        v154 = *(v152 + 16);
        if (v154)
        {
          v193 = v171;
          MEMORY[0x28223BE20](v152);
          v171[-2] = v153;
          Predicate.init(_:)();
          v186(v149, 0, 1, v187);
          dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
          outlined destroy of UTType?(v149, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);

          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v201 = v158;
            *v157 = v181;
            *(v157 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, v188, &v201);
            *(v157 + 12) = 2048;
            v159 = *(v153 + 16);

            *(v157 + 14) = v159;

            *(v157 + 22) = 2048;
            *(v157 + 24) = v182;
            _os_log_impl(&dword_21607C000, v155, v156, "DBManager.%{public}s Deleting stale suggestions batch %ld of %ld", v157, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v158);
            MEMORY[0x21CE94770](v158, -1, -1);
            v160 = v157;
            v149 = v184;
            MEMORY[0x21CE94770](v160, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v35 = v151;
          dispatch thunk of ModelContext.save()();
        }

        else
        {

          v35 = v151;
        }

        objc_autoreleasePoolPop(v150);
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v201 = v164;
          *v163 = v183;
          *(v163 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, v188, &v201);
          _os_log_impl(&dword_21607C000, v161, v162, "DBManager.%{public}s Trimming assets unreferenced by suggestions", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          MEMORY[0x21CE94770](v164, -1, -1);
          v165 = v163;
          v149 = v184;
          MEMORY[0x21CE94770](v165, -1, -1);
        }

        specialized static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)(v35, v196);
      }

      while (v154);
      (*(v180 + 8))(v191, v192);
      if ((static Task<>.isCancelled.getter() & 1) == 0 && (v195() & 1) == 0)
      {
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v201 = v170;
          *v169 = 136446210;
          *(v169 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v201);
          _os_log_impl(&dword_21607C000, v167, v168, "DBManager.%{public}s Final asset cleanup", v169, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v170);
          MEMORY[0x21CE94770](v170, -1, -1);
          MEMORY[0x21CE94770](v169, -1, -1);
        }

        specialized static DBManager._cleanupAssets(context:blobFolderURL:hasCancelled:)(v35, v196);
        goto LABEL_83;
      }

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v201 = v123;
        *v122 = 136446210;
        v124 = &v201;
        goto LABEL_81;
      }

LABEL_82:

LABEL_83:

      $defer #1 () in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)();
      return;
    }

LABEL_79:
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v199 = v123;
      *v122 = 136446210;
      v124 = &v199;
LABEL_81:
      *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, v124);
      _os_log_impl(&dword_21607C000, v120, v121, "DBManager.%{public}s Cleanup Cancelled", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x21CE94770](v123, -1, -1);
      MEMORY[0x21CE94770](v122, -1, -1);
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  v173 = v14;
  v178 = a2;
  v44 = v193;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v172 = v25;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v199 = v49;
    *v48 = 136446466;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    *(v48 + 12) = 2080;
    v50 = v178;
    *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v44, &v199);
    _os_log_impl(&dword_21607C000, v45, v46, "DBManager.%{public}s Cleaning up snapshots not from %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v49, -1, -1);
    MEMORY[0x21CE94770](v48, -1, -1);
  }

  else
  {

    v50 = v178;
  }

  v51 = type metadata accessor for DBSnapshot(0);
  v171[1] = v171;
  v52 = MEMORY[0x28223BE20](v51);
  v171[-2] = v50;
  v171[-1] = v44;
  v201 = v52;
  Predicate.init(_:)();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGMR);
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v176 = v53;
  v177 = v55;
  v171[2] = v54 + 56;
  (v55)(v27, 0, 1);
  v175 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  v174 = v51;
  v56 = v173;
  outlined destroy of UTType?(v27, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI10DBSnapshotC_QPGSgMR);
  v57 = v193;

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  v60 = os_log_type_enabled(v58, v59);
  v61 = v178;
  v197 = v35;
  if (v60)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v199 = v63;
    *v62 = 136446466;
    *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    *(v62 + 12) = 2080;
    *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v57, &v199);
    _os_log_impl(&dword_21607C000, v58, v59, "DBManager.%{public}s Deleting snapshots not from %s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v63, -1, -1);
    MEMORY[0x21CE94770](v62, -1, -1);
  }

  if (dispatch thunk of ModelContext.hasChanges.getter())
  {
    dispatch thunk of ModelContext.save()();
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v64, v65);
  v173 = 0;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v199 = v68;
    *v67 = 136446210;
    *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    _os_log_impl(&dword_21607C000, v64, v65, "DBManager.%{public}s Trimming snapshots", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x21CE94770](v68, -1, -1);
    MEMORY[0x21CE94770](v67, -1, -1);
  }

  v69 = v185;
  v70 = v189;
  swift_getKeyPath();
  static String.StandardComparator.localizedStandard.getter();
  v71 = v183;
  (*(v183 + 16))(v182, v18, v56);
  v72 = v190;
  SortDescriptor.init(_:comparator:order:)();
  (*(v71 + 8))(v18, v56);
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  v73 = v172;
  v177(v172, 1, 1, v176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy9MomentsUI10DBSnapshotCGGMR);
  v74 = v70;
  v75 = *(v69 + 72);
  v76 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_21658CA60;
  v78 = v77 + v76;
  v79 = *(v69 + 16);
  v80 = v72;
  v81 = v188;
  v79(v78, v80, v188);
  v79(v78 + v75, v74, v81);
  v82 = v186;
  FetchDescriptor.init(predicate:sortBy:)();
  v83 = v187;
  v84 = FetchDescriptor.includePendingChanges.setter();
  v85 = v69;
  *&v183 = v171;
  MEMORY[0x28223BE20](v84);
  v86 = v193;
  v171[-2] = v178;
  v171[-1] = v86;
  Predicate.init(_:)();
  v177(v73, 0, 1, v176);
  FetchDescriptor.predicate.setter();
  v87 = v173;
  v88 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v11 = v87;
  if (v87)
  {
    (*(v181 + 8))(v82, v83);
    v89 = *(v85 + 8);
    v89(v189, v81);
    v89(v190, v81);
    v112 = v87;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v199 = v117;
      *v115 = 136446466;
      *(v115 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
      *(v115 + 12) = 2112;
      v118 = v87;
      v119 = _swift_stdlib_bridgeErrorToNSError();
      *(v115 + 14) = v119;
      *v116 = v119;
      _os_log_impl(&dword_21607C000, v113, v114, "DBManager.%{public}s ERROR: Deleting stale snapshots %@", v115, 0x16u);
      outlined destroy of UTType?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x21CE94770](v116, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x21CE94770](v117, -1, -1);
      MEMORY[0x21CE94770](v115, -1, -1);
    }

    else
    {
    }

LABEL_77:
    v35 = v197;
    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v90 = v88;
  v200 = v88;
  v25 = (v88 >> 62);
  if (v88 >> 62)
  {
LABEL_119:
    a2 = __CocoaSet.count.getter();
  }

  else
  {
    a2 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v92 = os_log_type_enabled(v91, v18);
  v27 = v175;
  if (v92)
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v199 = v94;
    *v93 = 136446722;
    *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    *(v93 + 12) = 2048;
    if (v25)
    {
      v95 = __CocoaSet.count.getter();
    }

    else
    {
      v95 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v93 + 14) = v95;
    *(v93 + 22) = 2048;
    *(v93 + 24) = 2;
    _os_log_impl(&dword_21607C000, v91, v18, "DBManager.%{public}s local snapshots n=%ld, target count=%ld", v93, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x21CE94770](v94, -1, -1);
    MEMORY[0x21CE94770](v93, -1, -1);
  }

  while (1)
  {
    v14 = v90 & 0x8000000000000000;
    v25 = (v90 >> 62);
    if (v90 >> 62)
    {
      if (__CocoaSet.count.getter() < 3)
      {
        goto LABEL_66;
      }

      swift_beginAccess();
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_121;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 2uLL)
      {
        goto LABEL_66;
      }

      swift_beginAccess();
      if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }
    }

    if ((v90 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE93180](0, v90);
      v96 = v90 & 0xFFFFFFFFFFFFFF8;
      if (!v25)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

      v96 = v90 & 0xFFFFFFFFFFFFFF8;
      if (!v25)
      {
LABEL_41:
        v97 = *(v96 + 16);
        if (!v97)
        {
          goto LABEL_117;
        }

        goto LABEL_51;
      }
    }

    if (!__CocoaSet.count.getter())
    {
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_118;
    }

    v97 = __CocoaSet.count.getter();
LABEL_51:
    v98 = v97 - 1;
    if (__OFSUB__(v97, 1))
    {
      goto LABEL_115;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v25)
      {
        v25 = (v90 & 0xFFFFFFFFFFFFFF8);
        if (v98 <= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

LABEL_57:
      __CocoaSet.count.getter();
      goto LABEL_58;
    }

    if (v25)
    {
      goto LABEL_57;
    }

LABEL_58:
    v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v25 = (v90 & 0xFFFFFFFFFFFFFF8);
LABEL_59:

    if (!(v90 >> 62))
    {
      v18 = v25[2];
      memmove(v25 + 4, v25 + 5, 8 * v18 - 8);
      v99 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        break;
      }

      goto LABEL_61;
    }

    v100 = __CocoaSet.count.getter();
    if (__OFSUB__(v100, 1))
    {
      goto LABEL_123;
    }

    memmove(v25 + 4, v25 + 5, 8 * (v100 - 1));
    v18 = __CocoaSet.count.getter();
    v99 = v18 - 1;
    if (__OFSUB__(v18, 1))
    {
      break;
    }

LABEL_61:
    v25[2] = v99;
    v200 = v90;
    swift_endAccess();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  __break(1u);
LABEL_66:

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v199 = v104;
    *v103 = 136446466;
    *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    *(v103 + 12) = 2048;
    if (v25)
    {
      v105 = __CocoaSet.count.getter();
    }

    else
    {
      v105 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v109 = __OFSUB__(a2, v105);
    v110 = a2 - v105;
    v107 = v187;
    v106 = v188;
    v108 = v186;
    if (v109)
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      return;
    }

    *(v103 + 14) = v110;

    _os_log_impl(&dword_21607C000, v101, v102, "DBManager.%{public}s Deleting %ld stale snapshots", v103, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x21CE94770](v104, -1, -1);
    MEMORY[0x21CE94770](v103, -1, -1);
  }

  else
  {

    v107 = v187;
    v106 = v188;
    v108 = v186;
  }

  dispatch thunk of ModelContext.save()();
  v111 = v190;
  if ((static Task<>.isCancelled.getter() & 1) == 0 && (v195() & 1) == 0)
  {
    (*(v181 + 8))(v108, v107);
    v166 = *(v185 + 8);
    v166(v189, v106);
    v166(v111, v106);

    goto LABEL_77;
  }

  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v199 = v147;
    *v146 = 136446210;
    *(v146 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x8000000216580350, &v199);
    _os_log_impl(&dword_21607C000, v144, v145, "DBManager.%{public}s Cleanup Cancelled", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v147);
    MEMORY[0x21CE94770](v147, -1, -1);
    MEMORY[0x21CE94770](v146, -1, -1);
  }

  (*(v181 + 8))(v108, v107);
  v148 = *(v185 + 8);
  v148(v189, v106);
  v148(v111, v106);

  $defer #1 () in static DBManager._cleanup(container:snapshotGeneration:blobFolderURL:hasCancelled:)();
}

uint64_t objectdestroy_90Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

uint64_t partial apply for closure #1 in DBManager._endCleanup()(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in DBManager._endCleanup()(a1, a2, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAC11DisjunctionVy_AC0F0Vy_AIy_AOSSSgGAC10NilLiteralVy_SSGGAZy_A0_ATy_A_GGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AQGGAC11DisjunctionVy_AC0F0Vy_AIy_AOSSSgGAC10NilLiteralVy_SSGGAZy_A0_ATy_A_GGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.NotEqual<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Disjunction<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>>, PredicateExpressions.Disjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.NotEqual<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.NotEqual<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.NotEqual<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGs6UInt64VGAC5ValueVy_AOGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<UInt64> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, UInt64>, PredicateExpressions.Value<UInt64>> and conformance <> PredicateExpressions.NotEqual<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.NotEqual<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<String> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMd, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SSGMR, MEMORY[0x277CC8EB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSSSgxSgSQsSQRzlWlTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGAGy_AqC5ValueVy_APGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.NotEqual<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>> and conformance <> PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC10NilLiteralVy_SSGGMR, MEMORY[0x277CC90D8]);
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.NotEqual<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.NilLiteral<String>>, PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.NotEqual<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.NotEqual<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.NotEqual<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI10DBSnapshotCGSSSgGAC5ValueVy_ANGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSnapshot>, String?>, PredicateExpressions.Value<String?>> and conformance <> PredicateExpressions.NotEqual<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAJGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAJGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_Say9SwiftData20PersistentIdentifierVGGMR);
    lazy protocol witness table accessor for type [PersistentIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [PersistentIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, MEMORY[0x277CDD560], MEMORY[0x277D83978]);
    lazy protocol witness table accessor for type [PersistentIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [PersistentIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, MEMORY[0x277CDD540], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PersistentIdentifier] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9SwiftData20PersistentIdentifierVGMd, &_sSay9SwiftData20PersistentIdentifierVGMR);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(a2, MEMORY[0x277CDD538], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCG9SwiftData20PersistentIdentifierVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCG9SwiftData20PersistentIdentifierVGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAL10DBSnapshotCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Int?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApGy_AIy_APGSiGSiGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSayAJ10DBSnapshotCGSgGApGy_AIy_APGSiGSiGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, [DBSnapshot]?>, [DBSnapshot], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI10DBSnapshotCGGSiGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSnapshot]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI10DBSnapshotCGGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSnapshot]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Int?> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Int?> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Int?> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiSgGMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?();
    lazy protocol witness table accessor for type Int? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Int?> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, PredicateExpressions.Value<UUID?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, PredicateExpressions.Value<UUID?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, PredicateExpressions.Value<UUID?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAC5ValueVy_APGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAC5ValueVy_APGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<UUID?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, PredicateExpressions.Value<UUID?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<UUID?> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID?> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID?> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMR);
    lazy protocol witness table accessor for type UUID? and conformance <A> A?(&lazy protocol witness table cache variable for type UUID? and conformance <A> A?, &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9618], MEMORY[0x277D84F58]);
    lazy protocol witness table accessor for type UUID? and conformance <A> A?(&lazy protocol witness table cache variable for type UUID? and conformance <A> A?, &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID?> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI07DBAssetH0CGAJGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_Say9SwiftData20PersistentIdentifierVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI07DBAssetH0CGAJGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<[PersistentIdentifier]> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<[PersistentIdentifier]>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArIy_AKy_ARGSiGSiGAC5ValueVy_SiSgGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Int?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int>, PredicateExpressions.Value<Int?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApGy_AIy_APGSiGSiGMd, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApGy_AIy_APGSiGSiGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int>, Int> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGSiGMR);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSuggestion]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<[DBSuggestion]>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

uint64_t keypath_get_118Tm@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    *a2 = result;
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *a2 = result;
  }

  return result;
}

double static DefaultsManager.SheetTransfer.simulateSlowExifFiltering.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216577380);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.0;
}

uint64_t static DefaultsManager.Cloud.automaticallySync.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x80000002165782C0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Cloud.guessAssetClass.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0x7373417373657547, 0xEF7373616C437465);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Cloud.lazyCKAssetDownload.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216578740);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Database.sha256BufferSize.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0x100000;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x80000002165787F0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0x100000;
}

uint64_t static DefaultsManager.Cloud.inlineCloudAssetThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    v3 = 700000;
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    return v3;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165787B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 700000;
  }
}

double static DefaultsManager.Cloud.suggestionTTL.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2419200.0;
  }

  v1 = MEMORY[0x21CE91FC0](0x6974736567677553, 0xED00004C54546E6FLL);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 2419200.0;
}

double static DefaultsManager.Processing.videoDurationSecondsMaximum.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 300.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000025, 0x8000000216579A50);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 300.0;
}

BOOL static DefaultsManager.Processing.isDateWithinFreshnessTolerance(date:)(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6 < specialized static DefaultsManager.Processing.assetRenderFreshnessTolerance.getter();
}

uint64_t static DefaultsManager.Notifications.notificationScheduleType.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x800000021657AE90);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationScheduleDays.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x800000021657AEE0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if (swift_dynamicCast())
  {
    v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

    return v3;
  }

  return 0;
}

uint64_t static DefaultsManager.SheetTransfer.mosaicTransferMode.getter()
{
  v0 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = v0;
  }

  if (v2 >= 5)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double static DefaultsManager.SheetTransfer.simulateSlowSheetTransfer.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x800000021657C4B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.0;
}

void static DefaultsManager.Onboarding.dismissedPrivacyAlert(bundleID:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    MEMORY[0x21CE92100]();
    v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x800000021657DAB0);

    [v0 setBool:1 forKey:v1];
  }
}

uint64_t static DefaultsManager.Notifications.notificationTCCDelayCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x800000021657DB00);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void one-time initialization function for momentsUI()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216581540);
  v2 = [v0 initWithSuiteName_];

  static DefaultsManager.momentsUI = v2;
}

uint64_t DefaultsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  DefaultsManager.setupTrial()();
  return v0;
}

uint64_t *DefaultsManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DefaultsManager.shared;
}

uint64_t static DefaultsManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void *DefaultsManager.trialClient.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void DefaultsManager.trialClient.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

double DefaultsManager.trialFactorNames.getter()
{
  swift_beginAccess();

  return result;
}

double DefaultsManager.trialFactorNames.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t DefaultsManager.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  DefaultsManager.setupTrial()();
  return v0;
}

uint64_t DefaultsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static DefaultsManager.Processing.shouldSkipMaps.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216580660);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v3 = specialized static DefaultsManager.getTrialBoolValue(for:)(0xD000000000000018, 0x8000000216580660);
    return v3 & 1;
  }

  v3 = v5;
  return v3 & 1;
}

uint64_t static DefaultsManager.Processing.shouldSkipWorkouts.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216580740);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipMotionActivity.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000022, 0x8000000216580760);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipFirstPartyMedia.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216580680);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v3 = specialized static DefaultsManager.getTrialBoolValue(for:)(0xD000000000000023, 0x8000000216580680);
    return v3 & 1;
  }

  v3 = v5;
  return v3 & 1;
}

uint64_t static DefaultsManager.Processing.shouldSkipThirdPartyMedia.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216580790);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipStateOfMind.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165807C0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipPhotos.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x80000002165807E0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipLivePhotos.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580800);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipVideos.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216580820);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldSkipContacts.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216580840);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000033, 0x80000002165805F0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000033, 0x80000002165805F0);
  if (v5)
  {
    return 2419200.0;
  }

  else
  {
    return *&v4;
  }
}

double static DefaultsManager.Processing.deferralMinimumThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000028, 0x8000000216580590);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000028, 0x8000000216580590);
  if (v5)
  {
    return 1209600.0;
  }

  else
  {
    return *&v4;
  }
}

double static DefaultsManager.Processing.deferralReconsiderationThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000002ALL, 0x8000000216580630);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD00000000000002ALL, 0x8000000216580630);
  if (v5)
  {
    return specialized static DefaultsManager.Processing.deferralMaximumThreshold.getter();
  }

  else
  {
    return *&v4;
  }
}

uint64_t static DefaultsManager.Processing.shouldDropSuggestionsWithNoAssets.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000002BLL, 0x8000000216580860);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Processing.shouldUseIncremental.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580890);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Processing.shouldPruneSnapshotsEverytime.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000027, 0x80000002165808B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Processing.shouldOpportunisticallyRunWhileBrowsing.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000031, 0x80000002165808E0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

uint64_t static DefaultsManager.Processing.pruneSnapshotsCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580920);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 2;
}

uint64_t static DefaultsManager.Processing.lastSuccessfulRun.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165803E0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.MomentsUIDomain.dateValueFor(_:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0]();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Processing.setLastSuccessfulRun(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v12[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  outlined init with copy of Any?(v12, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v4 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      __swift_project_boxed_opaque_existential_1(&v10, v11);
      v5 = _bridgeAnythingToObjectiveC<A>(_:)();
      v6 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165803E0);
      [v4 setObject:v5 forKey:v6];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  return outlined destroy of UTType?(v12, &_sypSgMd, &_sypSgMR);
}

uint64_t static DefaultsManager.Processing.deferredRunDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216580400);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Processing.setDeferredRunDate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v12[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  outlined init with copy of Any?(v12, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v4 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      __swift_project_boxed_opaque_existential_1(&v10, v11);
      v5 = _bridgeAnythingToObjectiveC<A>(_:)();
      v6 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216580400);
      [v4 setObject:v5 forKey:v6];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  return outlined destroy of UTType?(v12, &_sypSgMd, &_sypSgMR);
}

uint64_t static DefaultsManager.Processing.deferredRunScheduledDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000025, 0x8000000216580420);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Processing.setDeferredRunScheduledDate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v12[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  outlined init with copy of Any?(v12, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v4 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      __swift_project_boxed_opaque_existential_1(&v10, v11);
      v5 = _bridgeAnythingToObjectiveC<A>(_:)();
      v6 = MEMORY[0x21CE91FC0](0xD000000000000025, 0x8000000216580420);
      [v4 setObject:v5 forKey:v6];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  return outlined destroy of UTType?(v12, &_sypSgMd, &_sypSgMR);
}

double static DefaultsManager.Processing.minimumInterval.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 300.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216580450);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 300.0;
}

double static DefaultsManager.Processing.expeditedSnapshotInterval.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 604800.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216580470);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 604800.0;
}

uint64_t static DefaultsManager.Processing.draftBatchSaveCountHighPriority.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 20;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000029, 0x80000002165804A0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 20;
}

uint64_t static DefaultsManager.Processing.numberOfAssetsMaxCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 13;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165804D0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 13;
}

uint64_t static DefaultsManager.ViewService.shouldViewServiceTerminateOnLock.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216580940);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

double static DefaultsManager.ViewService.photoCropReasonablePercentageWidthThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0.5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000002BLL, 0x800000021657E720);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

double static DefaultsManager.ViewService.photoCropReasonablePercentageHeightThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0.25;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000002CLL, 0x800000021657E750);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.25;
}

uint64_t static DefaultsManager.Notifications.notificationScheduleHour.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216580970);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationScheduleMinute.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216580990);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.olderNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x80000002165809B0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Notifications.lastNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x80000002165809D0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Notifications.olderSuggestionNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x80000002165809F0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Notifications.lastSuggestionNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A10);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Notifications.setDateDefault(with:date:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v4 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v6 = MEMORY[0x21CE91FC0](a1, a2);
    [v4 setObject:isa forKey:v6];
  }
}

uint64_t static DefaultsManager.Notifications.notificationWeeklyReset.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580A30);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static DefaultsManager.Notifications.setNotificationWeeklyReset(_:)()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580A30);
    [v0 setValue:isa forKey:v2];
  }
}

uint64_t static DefaultsManager.Notifications.suggestionNotificationWeeklyCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Notifications.smartNotificationWeeklyCount.getter()
{
  v0 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  result = v2 + v5;
  if (__OFADD__(v2, v5))
  {
    __break(1u);
  }

  return result;
}

uint64_t static DefaultsManager.Notifications.genericNotificationWeeklyCount.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

void static DefaultsManager.Notifications.clearSuggestionNotificationWeeklyCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580A50);
    [v0 setValue:isa forKey:v2];
  }
}

void static DefaultsManager.Notifications.clearGenericNotificationWeeklyCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v2 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580A80);
    [v0 setValue:isa forKey:v2];
  }
}

double static DefaultsManager.Notifications.goodnessScoreThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580AA0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v6;
  }

LABEL_12:
  v4 = COERCE_DOUBLE(specialized static DefaultsManager.getTrialDoubleValue(for:)(0xD000000000000026, 0x8000000216580AC0));
  result = 0.1;
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  return result;
}

uint64_t static DefaultsManager.Notifications.notificationRetryCountThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216580AF0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void static DefaultsManager.Notifications.resetRetryCount()()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216580B10);
    [v0 setInteger:0 forKey:v1];
  }
}

uint64_t static DefaultsManager.Notifications.lastNotificationServicingDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v3 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580B30);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of UTType?(&v11, &_sypSgMd, &_sypSgMR);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t static DefaultsManager.Notifications.setNotificationServicingDate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v12[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  outlined init with copy of Any?(v12, &v8);
  if (v9)
  {
    outlined init with take of Any(&v8, &v10);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v4 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      __swift_project_boxed_opaque_existential_1(&v10, v11);
      v5 = _bridgeAnythingToObjectiveC<A>(_:)();
      v6 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580B30);
      [v4 setObject:v5 forKey:v6];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    outlined destroy of UTType?(&v8, &_sypSgMd, &_sypSgMR);
  }

  return outlined destroy of UTType?(v12, &_sypSgMd, &_sypSgMR);
}

double static DefaultsManager.Notifications.minimumNotificationServicingInterval.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 3600.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000024, 0x8000000216580B50);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 3600.0;
}

uint64_t static DefaultsManager.Notifications.notificationRetryDelayMinutes.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580B80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckWindow.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216580BA0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckMotionWorkoutDurationThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000037, 0x8000000216580BC0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckMotionAutomotiveDurationThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000003ALL, 0x8000000216580C00);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckTravelDistanceThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000030, 0x8000000216580C40);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsUsingPrimaryJournalApp.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000031, 0x8000000216580C80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsInWorkOutSessionBasedOnHealthKit.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000003BLL, 0x8000000216580CC0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsInWorkOutSessionBasedOnMotion.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000038, 0x8000000216580D00);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsInAutomotiveSessionBasedOnMotion.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000003BLL, 0x8000000216580D40);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckNoVisit.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216580D80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsInVisit.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000022, 0x8000000216580DB0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsAtHome.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x8000000216580DE0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsTravelling.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000025, 0x8000000216580E10);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.notificationRealTimeCheckIsAtPlacesEligibleForJournaling.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000038, 0x8000000216580E40);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t static DefaultsManager.Notifications.suggestionIDForNotification.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580E80);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Cloud.disableSync.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0x53656C6261736944, 0xEB00000000636E79);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t static DefaultsManager.Cloud.forceDevelopmentEnvironment.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580EA0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double static DefaultsManager.Cloud.deviceTTL.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 2419200.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x8000000216580EC0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 2419200.0;
}

double static DefaultsManager.Cloud.deviceModificationUpdateInterval.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 3000.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x8000000216580EE0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 3000.0;
}

uint64_t static DefaultsManager.Cloud.largeSuggestionThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216580F10);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Cloud.largeSuggestionDropPolicy.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216580F30);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static DefaultsManager.Cloud.fetchRemoteSnapshotChunkSize.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216580F50);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 5;
}

uint64_t static DefaultsManager.Cloud.fetchRemoteSuggestionChunkSize.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 100;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001ELL, 0x8000000216580F70);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 100;
}

uint64_t static DefaultsManager.Cloud.fetchRemoteAssetDataChunkSize.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 20;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001DLL, 0x8000000216580F90);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 20;
}

uint64_t static DefaultsManager.Cloud.concurrentAssetBatchSize.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 5;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216580FB0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 5;
}

uint64_t static DefaultsManager.Cloud.abdicateOnZonePurge.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216580FD0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 1;
}

double static DefaultsManager.Cloud.staleNominationWarningThreshold.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 7200.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x8000000216580FF0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 7200.0;
}

uint64_t static DefaultsManager.Cloud.freeSpaceThresholdSoft.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0x40000000;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216581010);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0x40000000;
}

uint64_t static DefaultsManager.Cloud.freeSpaceThresholdHard.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 0x40000000;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216581030);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0x40000000;
}

double static DefaultsManager.Cloud.timeBetweenSpaceAlerts.getter()
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v0 = static DefaultsManager.momentsUI;
  if (!static DefaultsManager.momentsUI)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of UTType?(&v6, &_sypSgMd, &_sypSgMR);
    return 86400.0;
  }

  v1 = MEMORY[0x21CE91FC0](0xD000000000000016, 0x8000000216581050);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 86400.0;
}

uint64_t static DefaultsManager.Cloud.lastLowSpaceAlertDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v9 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  static Date.distantPast.getter();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path getter for static DefaultsManager.Cloud.lastLowSpaceAlertDate : DefaultsManager.Cloud.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v9 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  static Date.distantPast.getter();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path setter for static DefaultsManager.Cloud.lastLowSpaceAlertDate : DefaultsManager.Cloud.Type(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v6 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216581070);
    [v6 setObject:isa forKey:v8];
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t static DefaultsManager.Cloud.lastLowSpaceAlertDate.setter(uint64_t a1)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v4 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216581070);
    [v2 setObject:isa forKey:v4];
  }

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*static DefaultsManager.Cloud.lastLowSpaceAlertDate.modify(uint64_t *a1))(void ***a1, char a2)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v2)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *v4 = v6;
  v8 = type metadata accessor for Date();
  v4[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[2] = v9;
  v11 = *(v9 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[4] = v12;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(v7);
  v14 = *(v10 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    static Date.distantPast.getter();
    if (v14(v7, 1, v8) != 1)
    {
      outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return static DefaultsManager.Cloud.lastLowSpaceAlertDate.modify;
}

void static DefaultsManager.Cloud.lastLowSpaceAlertDate.modify(void ***a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    (*(v2[2] + 2))(v2[3], v2[4], v2[1]);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v3 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v5 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216581070);
      [v3 setObject:isa forKey:v5];
    }

    v7 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v9 = *v2;
    v10 = *(v2[2] + 1);
    v10(v7, v8);
    v10(v6, v8);
  }

  else
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v11 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v12 = Date._bridgeToObjectiveC()().super.isa;
      v13 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x8000000216581070);
      [v11 setObject:v12 forKey:v13];
    }

    v7 = v2[3];
    v6 = v2[4];
    v9 = *v2;
    (*(v2[2] + 1))(v6, v2[1]);
  }

  free(v6);
  free(v7);
  free(v9);

  free(v2);
}

uint64_t static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v9 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  static Date.distantPast.getter();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path getter for static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate : DefaultsManager.Cloud.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(&v9 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  static Date.distantPast.getter();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t key path setter for static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate : DefaultsManager.Cloud.Type(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v6 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216581090);
    [v6 setObject:isa forKey:v8];
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.setter(uint64_t a1)
{
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v2 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v4 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216581090);
    [v2 setObject:isa forKey:v4];
  }

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.modify(uint64_t *a1))(void ***a1, char a2)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v2)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *v4 = v6;
  v8 = type metadata accessor for Date();
  v4[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[2] = v9;
  v11 = *(v9 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[4] = v12;
  static DefaultsManager.MomentsUIDomain.dateValueFor(_:)(v7);
  v14 = *(v10 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    static Date.distantPast.getter();
    if (v14(v7, 1, v8) != 1)
    {
      outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.modify;
}