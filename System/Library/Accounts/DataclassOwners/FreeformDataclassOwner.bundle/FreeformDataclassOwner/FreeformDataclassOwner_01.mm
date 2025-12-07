unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CRLBoardDataStore.SchemaVersion@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CRLBoardDataStore.SchemaVersion.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized CRLStore._schemaVersion()()
{
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v87 = enum case for DispatchPredicate.onQueue(_:);
  v88 = v9;
  v89 = v5 + 104;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v90 = v12;
  v91 = v7;
  v12(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_48;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v15 = specialized SQLiteStatement.init(database:query:)(v14, 0xD000000000000013, 0x8000000000040690);
  v2 = v1;

  if (!v1)
  {
    v16 = *(*(v15 + 16) + 32);
    v17 = v15;
    v7 = v91;
    *v91 = v16;
    v88(v7, v87, v4);
    v18 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    v90(v7, v4);
    if ((v16 & 1) == 0)
    {
      goto LABEL_49;
    }

    type metadata accessor for SQLiteRowIterator();
    v19 = swift_initStackObject();
    v19[4] = 0;
    v19[5] = 1;
    v19[2] = v17;
    v19[3] = 0;
    v20 = SQLiteRowIterator.next()();
    swift_setDeallocating();
    outlined consume of SQLiteError?(v19[3], v19[4], v19[5]);
    v21 = v17;
    if (v20)
    {
      v94 = SQLiteRow.getInt32(at:)(0);
      value = v94.value;
      is_nil = v94.is_nil;

      if (is_nil)
      {
        value = 0;
      }
    }

    else
    {
      value = 0;
    }

    v24 = specialized CRLBoardDataStore.SchemaVersion.init(rawValue:)(value);
    if (v24 == 10)
    {
      v83 = v21;
      v84 = v11;
      v85 = v4;
      v25 = value;
      v26 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_3A860;
      *(v27 + 56) = &type metadata for Int;
      *(v27 + 64) = &protocol witness table for Int;
      *(v27 + 32) = v25;
      v28 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v26, &dword_0, v28, "Invalid schema version detected: %{public}d", 43, 2, v27);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((v27 + 32));
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_3A290;
      v82 = v25;
      *(v29 + 32) = v25;
      v92 = v29 + 32;
      v11 = v29;
      *(v29 + 56) = &type metadata for Int;
      *(v29 + 64) = &protocol witness table for Int;
      v30 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName);
      v31 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName + 8);
      *(v29 + 96) = &type metadata for String;
      v86 = lazy protocol witness table accessor for type String and conformance String();
      v11[13] = v86;
      v11[9] = v30;
      v11[10] = v31;
      v32 = objc_opt_self();

      v81 = v32;
      LODWORD(v3) = [v32 _atomicIncrementAssertCount];
      v93 = [objc_allocWithZone(NSString) init];
      specialized withVaList<A>(_:_:)(v11, &v93, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2u);
      StaticString.description.getter("_schemaVersion()", 16, 2);
      v4 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v33 = String._bridgeToObjectiveC()();

      v34 = [v33 lastPathComponent];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v35;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v36 = static OS_os_log.crlAssert;
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_3AA20;
        *(v37 + 56) = &type metadata for Int32;
        *(v37 + 64) = &protocol witness table for Int32;
        *(v37 + 32) = v3;
        v38 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v37 + 96) = v38;
        v39 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v37 + 72) = v4;
        v40 = v86;
        *(v37 + 136) = &type metadata for String;
        *(v37 + 144) = v40;
        *(v37 + 104) = v39;
        *(v37 + 112) = v7;
        *(v37 + 120) = v2;
        *(v37 + 176) = &type metadata for UInt;
        *(v37 + 184) = &protocol witness table for UInt;
        *(v37 + 152) = 130;
        v41 = v93;
        *(v37 + 216) = v38;
        *(v37 + 224) = v39;
        *(v37 + 192) = v41;
        v42 = v4;
        v43 = v41;
        v44 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v36, &dword_0, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);
        swift_setDeallocating();
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
        swift_arrayDestroy();
        v45 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v36, &dword_0, v45, "Invalid schema version detected: %{public}d for database %{public}@", 67, 2, v11);

        type metadata accessor for __VaListBuilder();
        v46 = swift_allocObject();
        v47 = v11;
        v11 = v46;
        v46[2] = 8;
        v46[3] = 0;
        v48 = v46 + 3;
        v46[4] = 0;
        v46[5] = 0;
        v86 = v47;
        v3 = v47[2];
        if (!v3)
        {
LABEL_39:
          v68 = __VaListBuilder.va_list()();
          StaticString.description.getter("_schemaVersion()", 16, 2);
          v69 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v70 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Invalid schema version detected: %{public}d for database %{public}@", 67, 2);
          v71 = String._bridgeToObjectiveC()();

          [v81 handleFailureInFunction:v69 file:v70 lineNumber:130 isFatal:0 format:v71 args:v68];

          swift_setDeallocating();
          swift_arrayDestroy();
          lazy protocol witness table accessor for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError();
          swift_allocError();
          *v72 = v82;
          swift_willThrow();
          v73 = v83;
          v74 = *(*(v83 + 16) + 32);
          v75 = v91;
          *v91 = v74;
          v76 = v85;
          v88(v75, v87, v85);
          v77 = v74;
          LOBYTE(v74) = _dispatchPreconditionTest(_:)();
          v90(v75, v76);
          if (v74)
          {
            swift_beginAccess();
            v78 = *(v73 + 24);
            inited = v73;
            if (v78)
            {
              sqlite3_finalize(v78);
              *(v73 + 24) = 0;
            }

            goto LABEL_42;
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
        }

        v7 = 0;
        while (1)
        {
          v49 = (v92 + 40 * v7);
          v2 = v49[4];
          __swift_project_boxed_opaque_existential_1(v49, v49[3]);
          v50 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v4 = *v48;
          v51 = *(v50 + 16);
          v52 = __OFADD__(*v48, v51);
          v53 = *v48 + v51;
          if (v52)
          {
            break;
          }

          v54 = v50;
          v55 = v11[4];
          if (v55 >= v53)
          {
            goto LABEL_28;
          }

          if (v55 + 0x4000000000000000 < 0)
          {
            goto LABEL_46;
          }

          v2 = v11[5];
          if (2 * v55 > v53)
          {
            v53 = 2 * v55;
          }

          v11[4] = v53;
          if ((v53 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_47;
          }

          v56 = swift_slowAlloc();
          v11[5] = v56;
          if (v2)
          {
            if (v56 != v2 || v56 >= &v2[8 * v4])
            {
              memmove(v56, v2, 8 * v4);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_28:
            v56 = v11[5];
          }

          if (!v56)
          {
            goto LABEL_53;
          }

          v58 = *(v54 + 16);
          if (v58)
          {
            v59 = (v54 + 32);
            v60 = *v48;
            while (1)
            {
              v61 = *v59++;
              *&v56[8 * v60] = v61;
              v60 = *v48 + 1;
              if (__OFADD__(*v48, 1))
              {
                break;
              }

              *v48 = v60;
              if (!--v58)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:

          if (++v7 == v3)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
      }
    }

    inited = v24;
    v62 = v21;
    v63 = *(*(v21 + 16) + 32);
    v64 = v91;
    *v91 = v63;
    v88(v64, v87, v4);
    v65 = v63;
    v66 = _dispatchPreconditionTest(_:)();
    v90(v64, v4);
    if ((v66 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    swift_beginAccess();
    v67 = *(v62 + 24);
    if (v67)
    {
      sqlite3_finalize(v67);
      *(v62 + 24) = 0;
    }

LABEL_42:
  }

  return inited;
}

uint64_t CRLBoardDataStore._createDatabaseSchema()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = (v3 + 104);
  v60 = *(v3 + 104);
  (v60)(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v58 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v59 = *(v3 + 8);
  (v59)(v5, v2);
  if (v6)
  {
    if (one-time initialization token for boardStore == -1)
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
  v9 = static OS_os_log.boardStore;
  v10 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v10, "Creating schema for a new board database", 40, 2, &_swiftEmptyArrayStorage);
  result = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    return result;
  }

  v12 = result;
  v55 = v7;
  v56 = 0;
  v57 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 32) = v12;
  *(inited + 16) = xmmword_3A290;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 1;
  if (!v12)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayDestroy();
    v14 = *(v57 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v15 = swift_initStackObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;

    SQLTransaction.begin()();
    if (v16)
    {
    }

    v54[1] = v15;
    v56 = v14;
    CRLBoardDataStore._createBoardsTable()();
    CRLBoardDataStore._createBoardsMetadataTable()();
    CRLBoardDataStore._createBoardItemsTable()();
    CRLBoardDataStore._createFreehandDrawingBucketsTable()();
    CRLBoardDataStore._createKeyValueDataTable()();
    CRLBoardDataStore._createAssetsTable()();
    CRLBoardDataStore._createAssetReferencesTable()();
    CRLBoardDataStore._createCommandHistoryItemsTable()();
    CRLBoardDataStore._createCommandHistoryAssetReferencesTable()();
    v17 = 0;
    v19 = v58;
    *v5 = v58;
    (v60)(v5, v55, v2);
    v18 = v19;
    LODWORD(v19) = _dispatchPreconditionTest(_:)();
    (v59)(v5, v2);
    if (v19)
    {
      specialized CRLStore._setRawSchemaVersion(rawVersion:)(1);
      SQLTransaction.commit()();
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = (inited + 32);
  v20 = inited;
  v58 = objc_opt_self();
  LODWORD(v19) = [v58 _atomicIncrementAssertCount];
  v61 = [objc_allocWithZone(NSString) init];
  v59 = v20;
  specialized withVaList<A>(_:_:)(v20, &v61, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
  StaticString.description.getter("_createDatabaseSchema()", 23, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v21 lastPathComponent];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v23;

  if (one-time initialization token for crlAssert != -1)
  {
LABEL_43:
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_3AA20;
  *(v25 + 56) = &type metadata for Int32;
  *(v25 + 64) = &protocol witness table for Int32;
  *(v25 + 32) = v19;
  v26 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  *(v25 + 96) = v26;
  v27 = lazy protocol witness table accessor for type NSString and conformance NSObject();
  *(v25 + 104) = v27;
  *(v25 + 72) = v2;
  *(v25 + 136) = &type metadata for String;
  v28 = lazy protocol witness table accessor for type String and conformance String();
  *(v25 + 112) = v17;
  *(v25 + 120) = v8;
  *(v25 + 176) = &type metadata for UInt;
  *(v25 + 184) = &protocol witness table for UInt;
  *(v25 + 144) = v28;
  *(v25 + 152) = 746;
  v29 = v61;
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = v29;
  v30 = v2;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v24, &dword_0, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);

  v33 = static os_log_type_t.error.getter();
  v34 = v24;
  v35 = v59;
  _CRLLog(_:dso:type:format:_:)(v34, &dword_0, v33, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v59);

  specialized withVaList<A>(_:_:)(v35, "Current schema version %{public}d before migration to %{public}d is unexpected");
  type metadata accessor for __VaListBuilder();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v8 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v17 = v35[2];
  if (!v17)
  {
    goto LABEL_45;
  }

  v36 = 0;
  while (1)
  {
    LODWORD(v19) = __swift_project_boxed_opaque_existential_1(&v60[5 * v36], v60[5 * v36 + 3]);
    v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v38 = *v8;
    v39 = *(v37 + 16);
    v40 = __OFADD__(*v8, v39);
    v41 = *v8 + v39;
    if (v40)
    {
      goto LABEL_39;
    }

    v42 = v37;
    v19 = v2[4];
    if (v19 >= v41)
    {
      goto LABEL_31;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v43 = v2[5];
    if (2 * v19 > v41)
    {
      v41 = 2 * v19;
    }

    v2[4] = v41;
    if ((v41 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v44 = swift_slowAlloc();
    v2[5] = v44;
    if (v43)
    {
      if (v44 != v43 || v44 >= &v43[8 * v38])
      {
        memmove(v44, v43, 8 * v38);
      }

      LODWORD(v19) = v2;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_31:
      v44 = v2[5];
    }

    if (!v44)
    {
      break;
    }

    v46 = *(v42 + 16);
    if (v46)
    {
      v47 = (v42 + 32);
      v48 = *v8;
      while (1)
      {
        v49 = *v47++;
        *&v44[8 * v48] = v49;
        v48 = *v8 + 1;
        if (__OFADD__(*v8, 1))
        {
          break;
        }

        *v8 = v48;
        if (!--v46)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:

    if (++v36 == v17)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_45:
  v50 = __VaListBuilder.va_list()();
  StaticString.description.getter("_createDatabaseSchema()", 23, 2);
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
  v53 = String._bridgeToObjectiveC()();

  [v58 handleFailureInFunction:v51 file:v52 lineNumber:746 isFatal:1 format:v53 args:v50];

  CRLCrashBreakpoint();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CRLBoardDataStore._migrateToMinRequiredVersionForGoodEnoughFidelitySchema()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v64 = *(v4 + 104);
  (v64)(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v62 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v63 = *(v4 + 8);
  (v63)(v6, v3);
  if (v7)
  {
    v61 = v8;
    if (one-time initialization token for boardStore == -1)
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
  v9 = static OS_os_log.boardStore;
  v10 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v10, "Migrating database to minRequiredVersionForGoodEnoughFidelity schema version", 76, 2, &_swiftEmptyArrayStorage);
  result = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    return result;
  }

  v12 = result;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A290;
  *(inited + 32) = v12;
  v14 = (inited + 32);
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 2;
  if (v12 != 1)
  {
LABEL_15:
    v64 = v14;
    v20 = inited;
    v62 = objc_opt_self();
    LODWORD(v21) = [v62 _atomicIncrementAssertCount];
    v65 = [objc_allocWithZone(NSString) init];
    v63 = v20;
    specialized withVaList<A>(_:_:)(v20, &v65, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
    StaticString.description.getter("_migrateToMinRequiredVersionForGoodEnoughFidelitySchema()", 57, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (one-time initialization token for crlAssert != -1)
    {
LABEL_44:
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_3AA20;
    *(v29 + 56) = &type metadata for Int32;
    *(v29 + 64) = &protocol witness table for Int32;
    *(v29 + 32) = v21;
    v30 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    *(v29 + 96) = v30;
    v31 = lazy protocol witness table accessor for type NSString and conformance NSObject();
    *(v29 + 104) = v31;
    *(v29 + 72) = v22;
    *(v29 + 136) = &type metadata for String;
    v32 = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 112) = v25;
    *(v29 + 120) = v27;
    *(v29 + 176) = &type metadata for UInt;
    *(v29 + 184) = &protocol witness table for UInt;
    *(v29 + 144) = v32;
    *(v29 + 152) = 639;
    v33 = v65;
    *(v29 + 216) = v30;
    *(v29 + 224) = v31;
    *(v29 + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v28, &dword_0, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v29);

    v37 = static os_log_type_t.error.getter();
    v38 = v28;
    v39 = v63;
    _CRLLog(_:dso:type:format:_:)(v38, &dword_0, v37, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v63);

    specialized withVaList<A>(_:_:)(v39, "Current schema version %{public}d before migration to %{public}d is unexpected");
    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v27 = v21 + 3;
    v21[4] = 0;
    v21[5] = 0;
    v25 = v39[2];
    if (!v25)
    {
LABEL_46:
      v55 = __VaListBuilder.va_list()();
      StaticString.description.getter("_migrateToMinRequiredVersionForGoodEnoughFidelitySchema()", 57, 2);
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
      v58 = String._bridgeToObjectiveC()();

      [v62 handleFailureInFunction:v56 file:v57 lineNumber:639 isFatal:1 format:v58 args:v55];

      CRLCrashBreakpoint();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v40 = 0;
    while (1)
    {
      v41 = &v64[40 * v40];
      v22 = *(v41 + 3);
      __swift_project_boxed_opaque_existential_1(v41, v22);
      v42 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v43 = *v27;
      v44 = *(v42 + 16);
      v45 = __OFADD__(*v27, v44);
      v46 = *v27 + v44;
      if (v45)
      {
        goto LABEL_41;
      }

      v22 = v42;
      v47 = v21[4];
      if (v47 >= v46)
      {
        goto LABEL_33;
      }

      if (v47 + 0x4000000000000000 < 0)
      {
        goto LABEL_42;
      }

      v48 = v21[5];
      if (2 * v47 > v46)
      {
        v46 = 2 * v47;
      }

      v21[4] = v46;
      if ((v46 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_43;
      }

      v49 = swift_slowAlloc();
      v21[5] = v49;
      if (v48)
      {
        break;
      }

LABEL_34:
      if (!v49)
      {
        __break(1u);
        goto LABEL_46;
      }

      v51 = v22[2];
      if (v51)
      {
        v52 = v22 + 4;
        v53 = *v27;
        while (1)
        {
          v54 = *v52++;
          *&v49[8 * v53] = v54;
          v53 = *v27 + 1;
          if (__OFADD__(*v27, 1))
          {
            break;
          }

          *v27 = v53;
          if (!--v51)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_18:

      if (++v40 == v25)
      {
        goto LABEL_46;
      }
    }

    if (v49 != v48 || v49 >= &v48[8 * v43])
    {
      memmove(v49, v48, 8 * v43);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_33:
    v49 = v21[5];
    goto LABEL_34;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  v14 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v15 = swift_initStackObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0;

  SQLTransaction.begin()();
  if (!v16)
  {
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardsTable()();
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardItemsTable()();
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForBucketToFreehandDrawingBucketsTable()();
    CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForItemsToFreehandDrawingBucketsTable()();
    v60 = 0;
    v17 = v62;
    *v6 = v62;
    (v64)(v6, v61, v3);
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    inited = (v63)(v6, v3);
    if (v17)
    {
      v19 = v60;
      specialized CRLStore._setRawSchemaVersion(rawVersion:)(2);
      if (v19)
      {
        SQLTransaction.rollback()();
        swift_willThrow();
      }

      else
      {
        SQLTransaction.commit()();
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t CRLBoardDataStore._migrateToMinRequiredVersionForFullFidelitySchema()()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v153 = enum case for DispatchPredicate.onQueue(_:);
  v154 = v8;
  v155 = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v152 = v3;
  v156 = v10;
  v157 = (v4 + 8);
  (v10)(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (one-time initialization token for boardStore != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v11 = static OS_os_log.boardStore;
    v12 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Migrating database to minRequiredVersionForFullFidelity schema version", 70, 2, &_swiftEmptyArrayStorage);
    result = specialized CRLStore._schemaVersion()();
    if (v2)
    {
      return result;
    }

    v14 = result;
    v143 = v9;
    v150 = v0;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    v140 = xmmword_3A290;
    *(inited + 16) = xmmword_3A290;
    *(inited + 32) = v14;
    v16 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = 3;
    if (v14 != 2)
    {
      v76 = inited;
      v156 = objc_opt_self();
      LODWORD(v77) = [v156 _atomicIncrementAssertCount];
      v159 = [objc_allocWithZone(NSString) init];
      v157 = v76;
      specialized withVaList<A>(_:_:)(v76, &v159, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
      StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v78 = String._bridgeToObjectiveC()();

      v79 = [v78 lastPathComponent];

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_86;
      }

      while (1)
      {
        v83 = static OS_os_log.crlAssert;
        v84 = swift_initStackObject();
        *(v84 + 16) = xmmword_3AA20;
        *(v84 + 56) = &type metadata for Int32;
        *(v84 + 64) = &protocol witness table for Int32;
        *(v84 + 32) = v77;
        v85 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v84 + 96) = v85;
        v86 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v84 + 104) = v86;
        *(v84 + 72) = v75;
        *(v84 + 136) = &type metadata for String;
        v87 = lazy protocol witness table accessor for type String and conformance String();
        *(v84 + 112) = v80;
        *(v84 + 120) = v82;
        *(v84 + 176) = &type metadata for UInt;
        *(v84 + 184) = &protocol witness table for UInt;
        *(v84 + 144) = v87;
        *(v84 + 152) = 595;
        v88 = v159;
        *(v84 + 216) = v85;
        *(v84 + 224) = v86;
        *(v84 + 192) = v88;
        v89 = v75;
        v90 = v88;
        v91 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v83, &dword_0, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v84);

        v92 = static os_log_type_t.error.getter();
        v93 = v83;
        v94 = v157;
        _CRLLog(_:dso:type:format:_:)(v93, &dword_0, v92, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v157);

        specialized withVaList<A>(_:_:)(v94, "Current schema version %{public}d before migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v75 = swift_allocObject();
        v75[2] = 8;
        v75[3] = 0;
        v80 = v75 + 3;
        v75[4] = 0;
        v75[5] = 0;
        v157 = *(v94 + 16);
        if (!v157)
        {
          goto LABEL_93;
        }

        v82 = 0;
        while (1)
        {
          v95 = (v16 + 40 * v82);
          v74 = v95[4];
          __swift_project_boxed_opaque_existential_1(v95, v95[3]);
          v96 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v97 = *v80;
          v98 = *(v96 + 16);
          v99 = __OFADD__(*v80, v98);
          v100 = *v80 + v98;
          if (v99)
          {
            goto LABEL_57;
          }

          v74 = v96;
          v77 = v75[4];
          if (v77 >= v100)
          {
            goto LABEL_49;
          }

          if (v77 + 0x4000000000000000 < 0)
          {
            goto LABEL_58;
          }

          v101 = v75[5];
          if (2 * v77 > v100)
          {
            v100 = 2 * v77;
          }

          v75[4] = v100;
          if ((v100 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_59;
          }

          v102 = swift_slowAlloc();
          v75[5] = v102;
          if (v101)
          {
            if (v102 != v101 || v102 >= &v101[8 * v97])
            {
              memmove(v102, v101, 8 * v97);
            }

            LODWORD(v77) = v75;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_49:
            v102 = v75[5];
          }

          if (!v102)
          {
            goto LABEL_90;
          }

          v104 = v74[2];
          if (v104)
          {
            break;
          }

LABEL_34:

          if (++v82 == v157)
          {
            goto LABEL_93;
          }
        }

        v105 = v74 + 4;
        v106 = *v80;
        while (1)
        {
          v107 = *v105++;
          *&v102[8 * v106] = v107;
          v106 = *v80 + 1;
          if (__OFADD__(*v80, 1))
          {
            break;
          }

          *v80 = v106;
          if (!--v104)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v156 = objc_opt_self();
        LODWORD(v77) = [v156 _atomicIncrementAssertCount];
        v159 = [objc_allocWithZone(NSString) init];
        v157 = v74;
        specialized withVaList<A>(_:_:)(v74, &v159, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2u);
        StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
        v97 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v108 = String._bridgeToObjectiveC()();

        v109 = [v108 lastPathComponent];

        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v110;

        if (one-time initialization token for crlAssert != -1)
        {
          goto LABEL_91;
        }

        while (2)
        {
          v111 = static OS_os_log.crlAssert;
          v112 = swift_initStackObject();
          *(v112 + 16) = xmmword_3AA20;
          *(v112 + 56) = &type metadata for Int32;
          *(v112 + 64) = &protocol witness table for Int32;
          *(v112 + 32) = v77;
          v113 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
          *(v112 + 96) = v113;
          v114 = lazy protocol witness table accessor for type NSString and conformance NSObject();
          *(v112 + 104) = v114;
          *(v112 + 72) = v97;
          *(v112 + 136) = &type metadata for String;
          v115 = lazy protocol witness table accessor for type String and conformance String();
          *(v112 + 112) = v80;
          *(v112 + 120) = v82;
          *(v112 + 176) = &type metadata for UInt;
          *(v112 + 184) = &protocol witness table for UInt;
          *(v112 + 144) = v115;
          *(v112 + 152) = 629;
          v116 = v159;
          *(v112 + 216) = v113;
          *(v112 + 224) = v114;
          *(v112 + 192) = v116;
          v117 = v97;
          v118 = v116;
          v119 = static os_log_type_t.error.getter();
          _CRLLog(_:dso:type:format:_:)(v111, &dword_0, v119, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v112);

          v120 = static os_log_type_t.error.getter();
          v121 = v111;
          v122 = v157;
          _CRLLog(_:dso:type:format:_:)(v121, &dword_0, v120, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v157);

          specialized withVaList<A>(_:_:)(v122, "Queried schema version %{public}d after migration to %{public}d is unexpected");
          type metadata accessor for __VaListBuilder();
          v97 = swift_allocObject();
          *(v97 + 16) = 8;
          *(v97 + 24) = 0;
          v80 = (v97 + 24);
          *(v97 + 32) = 0;
          *(v97 + 40) = 0;
          v157 = *(v122 + 16);
          if (!v157)
          {
            while (1)
            {
LABEL_95:
              v138 = __VaListBuilder.va_list()();
              StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
              v139 = String._bridgeToObjectiveC()();

              StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
              v136 = String._bridgeToObjectiveC()();

              StaticString.description.getter("Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2);
              v137 = String._bridgeToObjectiveC()();

              [v156 handleFailureInFunction:v139 file:v136 lineNumber:629 isFatal:1 format:v137 args:v138];

LABEL_94:
              CRLCrashBreakpoint();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v82 = 0;
LABEL_64:
          LODWORD(v77) = __swift_project_boxed_opaque_existential_1(&v75[5 * v82], v75[5 * v82 + 3]);
          v123 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v16 = *v80;
          v124 = *(v123 + 16);
          v99 = __OFADD__(*v80, v124);
          v125 = *v80 + v124;
          if (v99)
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            swift_once();
            continue;
          }

          break;
        }

        v126 = v123;
        v77 = *(v97 + 32);
        if (v77 >= v125)
        {
          goto LABEL_78;
        }

        if (v77 + 0x4000000000000000 < 0)
        {
          goto LABEL_88;
        }

        v127 = *(v97 + 40);
        if (2 * v77 > v125)
        {
          v125 = 2 * v77;
        }

        *(v97 + 32) = v125;
        if ((v125 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_89;
        }

        v128 = swift_slowAlloc();
        *(v97 + 40) = v128;
        if (v127)
        {
          if (v128 != v127 || v128 >= &v127[8 * v16])
          {
            memmove(v128, v127, 8 * v16);
          }

          LODWORD(v77) = v97;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_78:
          v128 = *(v97 + 40);
        }

        if (!v128)
        {
          __break(1u);
LABEL_93:
          v134 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
          v135 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
          v136 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
          v137 = String._bridgeToObjectiveC()();

          [v156 handleFailureInFunction:v135 file:v136 lineNumber:595 isFatal:1 format:v137 args:v134];

          goto LABEL_94;
        }

        v130 = *(v126 + 16);
        if (!v130)
        {
LABEL_63:

          if (++v82 == v157)
          {
            goto LABEL_95;
          }

          goto LABEL_64;
        }

        v131 = (v126 + 32);
        v132 = *v80;
        while (1)
        {
          v133 = *v131++;
          *&v128[8 * v132] = v133;
          v132 = *v80 + 1;
          if (__OFADD__(*v80, 1))
          {
            break;
          }

          *v80 = v132;
          if (!--v130)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_86:
        swift_once();
      }
    }

    swift_setDeallocating();
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayDestroy();
    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v17._object = 0xEC00000020454C42;
    v17._countAndFlagsBits = 0x4154205245544C41;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x736472616F62;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x4C4F432044444120;
    v19._object = 0xEC000000204E4D55;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD000000000000026;
    v20._object = 0x80000000000401E0;
    String.append(_:)(v20);
    v21._object = 0x800000000003FE80;
    v21._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v21);
    v148 = 0x1000000000000;
    v158[0] = 0x1000000000000;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 59;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v149 = v159;
    v151 = v160;
    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v24._countAndFlagsBits = 0x4154205245544C41;
    v24._object = 0xEC00000020454C42;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0x74695F6472616F62;
    v25._object = 0xEB00000000736D65;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x4C4F432044444120;
    v26._object = 0xEC000000204E4D55;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0xD000000000000026;
    v27._object = 0x80000000000401E0;
    String.append(_:)(v27);
    v28._object = 0x800000000003FE80;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v28);
    v158[0] = 0x1000000000000;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 59;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v146 = v160;
    v147 = v159;
    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v31._countAndFlagsBits = 0x4154205245544C41;
    v31._object = 0xEC00000020454C42;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD000000000000018;
    v32._object = 0x800000000003F200;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0x4C4F432044444120;
    v33._object = 0xEC000000204E4D55;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0xD000000000000026;
    v34._object = 0x80000000000401E0;
    String.append(_:)(v34);
    v35._object = 0x800000000003FE80;
    v35._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v35);
    v158[0] = 0x1000000000000;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 59;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v144 = v160;
    v145 = v159;
    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v38._countAndFlagsBits = 0x4154205245544C41;
    v38._object = 0xEC00000020454C42;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0x6D5F736472616F62;
    v39._object = 0xEF61746164617465;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x4C4F432044444120;
    v40._object = 0xEC000000204E4D55;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0xD000000000000026;
    v41._object = 0x80000000000401E0;
    String.append(_:)(v41);
    v42._object = 0x800000000003FE80;
    v42._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v42);
    v158[0] = v148;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 59;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = v159;
    v46 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v47 = swift_initStackObject();
    v48 = v150;
    *(v47 + 32) = v149;
    *(v47 + 16) = xmmword_3AA30;
    v49 = v146;
    v50 = v147;
    *(v47 + 40) = v151;
    *(v47 + 48) = v50;
    *(v47 + 56) = v49;
    v51 = v144;
    *(v47 + 64) = v145;
    *(v47 + 72) = v51;
    *(v47 + 80) = v45;
    *(v47 + 88) = v46;
    v2 = *(v48 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v52 = swift_initStackObject();
    *(v52 + 16) = v2;
    *(v52 + 24) = 0;

    SQLTransaction.begin()();
    if (v53)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v149 = v52;
    v151 = type metadata accessor for SQLiteStatement();
    v54 = 0;
LABEL_9:
    v56 = *(v47 + v54 + 32);
    v55 = *(v47 + v54 + 40);
    swift_initStackObject();

    v57 = specialized SQLiteStatement.init(database:query:)(v2, v56, v55);

    v58 = *(*(v57 + 16) + 32);
    *v6 = v58;
    v0 = v152;
    v154(v6, v153, v152);
    v59 = v58;
    v9 = _dispatchPreconditionTest(_:)();
    (v156)(v6, v0);
    if (v9)
    {
      break;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v60 = *(v57 + 16);

  v61 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v60, v57);

  if (v61 != 101)
  {

    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v65 = v61;
    *(v65 + 8) = 0xD000000000000017;
    *(v65 + 16) = 0x8000000000040210;
    swift_willThrow();
    v66 = *(*(v57 + 16) + 32);
    *v6 = v66;
    v154(v6, v153, v0);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    (v156)(v6, v0);
    if (v66)
    {
      swift_beginAccess();
      v68 = *(v57 + 24);
      if (v68)
      {
        sqlite3_finalize(v68);
        *(v57 + 24) = 0;
      }

      SQLTransaction.rollback()();
      swift_willThrow();
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  v62 = *(*(v57 + 16) + 32);
  *v6 = v62;
  v154(v6, v153, v0);
  v63 = v62;
  v9 = _dispatchPreconditionTest(_:)();
  (v156)(v6, v0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v64 = *(v57 + 24);
  if (v64)
  {
    sqlite3_finalize(v64);
    *(v57 + 24) = 0;
  }

  v54 += 16;
  if (v54 != 64)
  {
    goto LABEL_9;
  }

  v69 = v143;
  *v6 = v143;
  v70 = v152;
  v154(v6, v153, v152);
  v71 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  (v156)(v6, v70);
  if ((v69 & 1) == 0)
  {
    goto LABEL_30;
  }

  specialized CRLStore._setRawSchemaVersion(rawVersion:)(3);
  SQLTransaction.commit()();
  if (v72)
  {
  }

  v73 = specialized CRLStore._schemaVersion()();
  v74 = swift_initStackObject();
  *(v74 + 1) = v140;
  v74[4] = v73;
  v75 = v74 + 4;
  v74[7] = &type metadata for Int;
  v74[12] = &type metadata for Int;
  v74[13] = &protocol witness table for Int;
  v74[8] = &protocol witness table for Int;
  v74[9] = 3;
  if (v73 != 3)
  {
    goto LABEL_60;
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t CRLBoardDataStore._migrateToOptimizedSubtreeQuerySchema()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  LODWORD(v119) = enum case for DispatchPredicate.onQueue(_:);
  v120 = v8;
  (v8)(v6);
  v118 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v7)
  {
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Migrating database to optimizeSubtreeQuery schema version", 57, 2, &_swiftEmptyArrayStorage);
  result = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    return result;
  }

  v13 = result;
  v117 = v9;
  v121 = 0;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  v115 = xmmword_3A290;
  *(inited + 16) = xmmword_3A290;
  *(inited + 32) = v13;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 4;
  if (v13 != 3)
  {
    v121 = (inited + 32);
    v46 = inited;
    v119 = objc_opt_self();
    LODWORD(v47) = [v119 _atomicIncrementAssertCount];
    v123 = [objc_allocWithZone(NSString) init];
    v120 = v46;
    specialized withVaList<A>(_:_:)(v46, &v123, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
    StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v48 = String._bridgeToObjectiveC()();

    v49 = [v48 lastPathComponent];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (one-time initialization token for crlAssert != -1)
    {
      goto LABEL_89;
    }

    while (1)
    {
      v53 = static OS_os_log.crlAssert;
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_3AA20;
      *(v54 + 56) = &type metadata for Int32;
      *(v54 + 64) = &protocol witness table for Int32;
      *(v54 + 32) = v47;
      v55 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      *(v54 + 96) = v55;
      v56 = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v54 + 104) = v56;
      *(v54 + 72) = v44;
      *(v54 + 136) = &type metadata for String;
      v57 = lazy protocol witness table accessor for type String and conformance String();
      *(v54 + 112) = v50;
      *(v54 + 120) = v52;
      *(v54 + 176) = &type metadata for UInt;
      *(v54 + 184) = &protocol witness table for UInt;
      *(v54 + 144) = v57;
      *(v54 + 152) = 555;
      v58 = v123;
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v58;
      v59 = v44;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v53, &dword_0, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v54);

      v62 = static os_log_type_t.error.getter();
      v63 = v53;
      v64 = v120;
      _CRLLog(_:dso:type:format:_:)(v63, &dword_0, v62, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v120);

      specialized withVaList<A>(_:_:)(v64, "Current schema version %{public}d before migration to %{public}d is unexpected");
      type metadata accessor for __VaListBuilder();
      v44 = swift_allocObject();
      v44[2] = 8;
      v44[3] = 0;
      v65 = v44 + 3;
      v44[4] = 0;
      v44[5] = 0;
      v52 = v64[2];
      if (!v52)
      {
        goto LABEL_96;
      }

      v66 = 0;
      while (1)
      {
        v67 = &v121[5 * v66];
        v45 = v67[3];
        __swift_project_boxed_opaque_existential_1(v67, v45);
        v68 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v69 = *v65;
        v70 = *(v68 + 16);
        v71 = __OFADD__(*v65, v70);
        v72 = *v65 + v70;
        if (v71)
        {
          goto LABEL_60;
        }

        v45 = v68;
        v47 = v44[4];
        if (v47 >= v72)
        {
          goto LABEL_52;
        }

        if (v47 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v73 = v44[5];
        if (2 * v47 > v72)
        {
          v72 = 2 * v47;
        }

        v44[4] = v72;
        if ((v72 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        v74 = swift_slowAlloc();
        v44[5] = v74;
        if (v73)
        {
          if (v74 != v73 || v74 >= &v73[8 * v69])
          {
            memmove(v74, v73, 8 * v69);
          }

          LODWORD(v47) = v44;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_52:
          v74 = v44[5];
        }

        if (!v74)
        {
          goto LABEL_91;
        }

        v76 = *(v45 + 16);
        if (v76)
        {
          break;
        }

LABEL_37:

        if (++v66 == v52)
        {
          goto LABEL_96;
        }
      }

      v77 = (v45 + 32);
      v78 = *v65;
      while (1)
      {
        v79 = *v77++;
        *&v74[8 * v78] = v79;
        v78 = *v65 + 1;
        if (__OFADD__(*v65, 1))
        {
          break;
        }

        *v65 = v78;
        if (!--v76)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v120 = objc_opt_self();
      LODWORD(v47) = [v120 _atomicIncrementAssertCount];
      v80 = [objc_allocWithZone(NSString) init];
      v121 = v44;
      v122 = v80;
      specialized withVaList<A>(_:_:)(v44, &v122, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2u);
      StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v81 = String._bridgeToObjectiveC()();

      v82 = [v81 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v83;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_94;
      }

      while (2)
      {
        v84 = static OS_os_log.crlAssert;
        v85 = swift_initStackObject();
        *(v85 + 16) = xmmword_3AA20;
        *(v85 + 56) = &type metadata for Int32;
        *(v85 + 64) = &protocol witness table for Int32;
        *(v85 + 32) = v47;
        v86 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v85 + 96) = v86;
        v87 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v85 + 104) = v87;
        *(v85 + 72) = v44;
        *(v85 + 136) = &type metadata for String;
        v88 = lazy protocol witness table accessor for type String and conformance String();
        *(v85 + 112) = v52;
        *(v85 + 120) = v66;
        *(v85 + 176) = &type metadata for UInt;
        *(v85 + 184) = &protocol witness table for UInt;
        *(v85 + 144) = v88;
        *(v85 + 152) = 583;
        v89 = v122;
        *(v85 + 216) = v86;
        *(v85 + 224) = v87;
        *(v85 + 192) = v89;
        v90 = v44;
        v91 = v89;
        v92 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v84, &dword_0, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);

        v93 = static os_log_type_t.error.getter();
        v50 = "Queried schema version %{public}d after migration to %{public}d is unexpected";
        v94 = v121;
        _CRLLog(_:dso:type:format:_:)(v84, &dword_0, v93, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v121);

        specialized withVaList<A>(_:_:)(v94, "Queried schema version %{public}d after migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v44 = swift_allocObject();
        v44[2] = 8;
        v44[3] = 0;
        v52 = v44 + 3;
        v44[4] = 0;
        v44[5] = 0;
        v121 = *(v94 + 16);
        if (!v121)
        {
          while (1)
          {
LABEL_98:
            v110 = __VaListBuilder.va_list()();
            StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
            v111 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
            v112 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2);
            v113 = String._bridgeToObjectiveC()();

            [v120 handleFailureInFunction:v111 file:v112 lineNumber:583 isFatal:1 format:v113 args:v110];

LABEL_97:
            CRLCrashBreakpoint();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        v66 = 0;
LABEL_67:
        LODWORD(v47) = __swift_project_boxed_opaque_existential_1((v45 + 40 * v66), *(v45 + 40 * v66 + 24));
        v95 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v96 = *v52;
        v97 = *(v95 + 16);
        v71 = __OFADD__(*v52, v97);
        v98 = *v52 + v97;
        if (v71)
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          swift_once();
          continue;
        }

        break;
      }

      v99 = v95;
      v47 = v44[4];
      if (v47 >= v98)
      {
        goto LABEL_81;
      }

      if (v47 + 0x4000000000000000 < 0)
      {
        goto LABEL_92;
      }

      v50 = v44[5];
      if (2 * v47 > v98)
      {
        v98 = 2 * v47;
      }

      v44[4] = v98;
      if ((v98 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_93;
      }

      v100 = swift_slowAlloc();
      v44[5] = v100;
      if (v50)
      {
        if (v100 != v50 || v100 >= &v50[8 * v96])
        {
          memmove(v100, v50, 8 * v96);
        }

        LODWORD(v47) = v44;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_81:
        v100 = v44[5];
      }

      if (!v100)
      {
        __break(1u);
LABEL_96:
        v106 = __VaListBuilder.va_list()();
        StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
        v107 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v108 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
        v109 = String._bridgeToObjectiveC()();

        [v119 handleFailureInFunction:v107 file:v108 lineNumber:555 isFatal:1 format:v109 args:v106];

        goto LABEL_97;
      }

      v102 = *(v99 + 16);
      if (!v102)
      {
LABEL_66:

        if (++v66 == v121)
        {
          goto LABEL_98;
        }

        goto LABEL_67;
      }

      v103 = (v99 + 32);
      v104 = *v52;
      while (1)
      {
        v105 = *v103++;
        *&v100[8 * v104] = v105;
        v104 = *v52 + 1;
        if (__OFADD__(*v52, 1))
        {
          break;
        }

        *v52 = v104;
        if (!--v102)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_89:
      swift_once();
    }
  }

  swift_setDeallocating();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  v16 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v17 = swift_initStackObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;

  SQLTransaction.begin()();
  v121 = v18;
  if (v18)
  {
  }

  v114[2] = v15;
  v114[3] = v17;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v20 = v121;
  v21 = specialized SQLiteStatement.init(database:query:)(v19, 0xD000000000000061, 0x80000000000402F0);
  v121 = v20;
  if (v20)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v114[1] = v16;

  v23 = *(*(v22 + 16) + 32);
  *v6 = v23;
  (v120)(v6, v119, v3);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v117(v6, v3);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = *(v22 + 16);

  v26 = v25;
  v27 = v121;
  v28 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v26, v22);

  if (v28 != 101)
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    v34 = swift_allocError();
    *v35 = v28;
    *(v35 + 8) = 0xD00000000000003DLL;
    *(v35 + 16) = 0x8000000000040360;
    v121 = v34;
    swift_willThrow();
    v36 = *(*(v22 + 16) + 32);
    *v6 = v36;
    (v120)(v6, v119, v3);
    v37 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v117(v6, v3);
    if ((v36 & 1) == 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    swift_beginAccess();
    v33 = *(v22 + 24);
    if (v33)
    {
LABEL_16:
      sqlite3_finalize(v33);
      *(v22 + 24) = 0;
    }

LABEL_17:

    SQLTransaction.rollback()();
    swift_willThrow();
  }

  v29 = v118;
  *v6 = v118;
  (v120)(v6, v119, v3);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v117(v6, v3);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  specialized CRLStore._setRawSchemaVersion(rawVersion:)(4);
  v121 = v27;
  if (v27)
  {
    v31 = *(*(v22 + 16) + 32);
    *v6 = v31;
    (v120)(v6, v119, v3);
    v32 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    v117(v6, v3);
    if (v31)
    {
      swift_beginAccess();
      v33 = *(v22 + 24);
      if (!v33)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_32;
  }

  v38 = *(*(v22 + 16) + 32);
  *v6 = v38;
  (v120)(v6, v119, v3);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v117(v6, v3);
  if ((v38 & 1) == 0)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v40 = *(v22 + 24);
  if (v40)
  {
    sqlite3_finalize(v40);
    *(v22 + 24) = 0;
  }

  SQLTransaction.commit()();
  if (v41)
  {
    v121 = v41;
  }

  v42 = specialized CRLStore._schemaVersion()();
  v121 = 0;
  v43 = v42;
  v44 = swift_initStackObject();
  *(v44 + 1) = v115;
  v44[4] = v43;
  v45 = (v44 + 4);
  v44[7] = &type metadata for Int;
  v44[12] = &type metadata for Int;
  v44[13] = &protocol witness table for Int;
  v44[8] = &protocol witness table for Int;
  v44[9] = 4;
  if (v43 != 4)
  {
    goto LABEL_63;
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(uint64_t a1, char *a2, char *a3)
{
  v108 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a1;
  v110 = v3;
  v11 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v35 = v103;
    v108 = a3;
    v36 = objc_opt_self();

    *&v106 = v36;
    LODWORD(v29) = [v36 _atomicIncrementAssertCount];
    v109[0] = [objc_allocWithZone(NSString) init];
    v107 = v10;
    specialized withVaList<A>(_:_:)(v10, v109, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2u);
    StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (one-time initialization token for crlAssert != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v43 = static OS_os_log.crlAssert;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3AA20;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v29;
      v45 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      *(inited + 96) = v45;
      v46 = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(inited + 72) = v37;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v35;
      *(inited + 104) = v46;
      *(inited + 112) = v40;
      *(inited + 120) = v42;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 152) = 211;
      v47 = v109[0];
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = v47;
      v48 = v37;
      v49 = v47;
      v50 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v43, &dword_0, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v51 = static os_log_type_t.error.getter();
      v52 = v107;
      _CRLLog(_:dso:type:format:_:)(v43, &dword_0, v51, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2, v107);

      specialized withVaList<A>(_:_:)(v52, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v53 = swift_allocObject();
      v53[2] = 8;
      v53[3] = 0;
      v35 = v53 + 3;
      v53[4] = 0;
      v53[5] = 0;
      v40 = *(v52 + 2);
      if (!v40)
      {
        goto LABEL_71;
      }

      v42 = 0;
      while (1)
      {
        v54 = &v108[40 * v42];
        v37 = *(v54 + 3);
        LODWORD(v29) = __swift_project_boxed_opaque_existential_1(v54, v37);
        v55 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v56 = *v35;
        v57 = *(v55 + 16);
        v58 = __OFADD__(*v35, v57);
        v59 = *v35 + v57;
        if (v58)
        {
          goto LABEL_61;
        }

        v37 = v55;
        v29 = v53[4];
        if (v29 >= v59)
        {
          goto LABEL_27;
        }

        if (v29 + 0x4000000000000000 < 0)
        {
          goto LABEL_62;
        }

        v60 = v53[5];
        if (2 * v29 > v59)
        {
          v59 = 2 * v29;
        }

        v53[4] = v59;
        if ((v59 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_63;
        }

        v28 = swift_slowAlloc();
        v53[5] = v28;
        if (v60)
        {
          if (v28 != v60 || v28 >= v60 + 8 * v56)
          {
            memmove(v28, v60, 8 * v56);
          }

          v29 = v53;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
          v28 = v53[5];
        }

        if (!v28)
        {
          __break(1u);
LABEL_69:
          swift_once();
          goto LABEL_36;
        }

        v62 = v37[2];
        if (v62)
        {
          break;
        }

LABEL_12:

        if (++v42 == v40)
        {
          goto LABEL_71;
        }
      }

      v63 = v37 + 4;
      v30 = *v35;
      while (1)
      {
        v64 = *v63++;
        *(v28 + 8 * v30) = v64;
        v30 = *v35 + 1;
        if (__OFADD__(*v35, 1))
        {
          break;
        }

        *v35 = v30;
        if (!--v62)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      v108 = v29;
      v35 = v30;
      v65 = v28;
      v66 = objc_opt_self();

      *&v106 = v66;
      LODWORD(v29) = [v66 _atomicIncrementAssertCount];
      v109[0] = [objc_allocWithZone(NSString) init];
      v107 = v65;
      specialized withVaList<A>(_:_:)(v65, v109, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2u);
      StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
      v67 = String._bridgeToObjectiveC()();

      v68 = [v67 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v69;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_69;
      }

LABEL_36:
      v70 = static OS_os_log.crlAssert;
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_3AA20;
      *(v71 + 56) = &type metadata for Int32;
      *(v71 + 64) = &protocol witness table for Int32;
      *(v71 + 32) = v29;
      v72 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
      *(v71 + 96) = v72;
      v73 = lazy protocol witness table accessor for type NSString and conformance NSObject();
      *(v71 + 72) = v37;
      *(v71 + 136) = &type metadata for String;
      *(v71 + 144) = v35;
      *(v71 + 104) = v73;
      *(v71 + 112) = v40;
      *(v71 + 120) = v42;
      *(v71 + 176) = &type metadata for UInt;
      *(v71 + 184) = &protocol witness table for UInt;
      *(v71 + 152) = 230;
      v74 = v109[0];
      *(v71 + 216) = v72;
      *(v71 + 224) = v73;
      *(v71 + 192) = v74;
      v75 = v37;
      v76 = v74;
      v77 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v70, &dword_0, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);

      v78 = static os_log_type_t.error.getter();
      v79 = v107;
      _CRLLog(_:dso:type:format:_:)(v70, &dword_0, v78, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2, v107);

      specialized withVaList<A>(_:_:)(v79, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v80 = swift_allocObject();
      v80[2] = 8;
      v80[3] = 0;
      v35 = v80 + 3;
      v80[4] = 0;
      v80[5] = 0;
      v40 = *(v79 + 2);
      if (!v40)
      {
        while (1)
        {
LABEL_73:
          v97 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2);
          v96 = String._bridgeToObjectiveC()();

          [v106 handleFailureInFunction:v94 file:v95 lineNumber:230 isFatal:1 format:v96 args:v97];
LABEL_72:

          CRLCrashBreakpoint();
          v99 = 0;
          v98 = (&stru_158 + 4);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v42 = 0;
      while (2)
      {
        v81 = &v108[40 * v42];
        v37 = *(v81 + 3);
        LODWORD(v29) = __swift_project_boxed_opaque_existential_1(v81, v37);
        v82 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v83 = *v35;
        v84 = *(v82 + 16);
        v58 = __OFADD__(*v35, v84);
        v85 = *v35 + v84;
        if (v58)
        {
          goto LABEL_64;
        }

        v37 = v82;
        v29 = v80[4];
        if (v29 >= v85)
        {
LABEL_53:
          v87 = v80[5];
        }

        else
        {
          if (v29 + 0x4000000000000000 < 0)
          {
            goto LABEL_65;
          }

          v86 = v80[5];
          if (2 * v29 > v85)
          {
            v85 = 2 * v29;
          }

          v80[4] = v85;
          if ((v85 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_66;
          }

          v87 = swift_slowAlloc();
          v80[5] = v87;
          if (v86)
          {
            if (v87 != v86 || v87 >= &v86[8 * v83])
            {
              memmove(v87, v86, 8 * v83);
            }

            LODWORD(v29) = v80;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_53;
          }
        }

        if (!v87)
        {
          __break(1u);
LABEL_71:
          v93 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)", 61, 2);
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLStore.swift", 80, 2);
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2);
          v96 = String._bridgeToObjectiveC()();

          [v106 handleFailureInFunction:v94 file:v95 lineNumber:211 isFatal:1 format:v96 args:v93];
          goto LABEL_72;
        }

        v89 = v37[2];
        if (!v89)
        {
LABEL_38:

          if (++v42 == v40)
          {
            goto LABEL_73;
          }

          continue;
        }

        break;
      }

      v90 = v37 + 4;
      v91 = *v35;
      while (1)
      {
        v92 = *v90++;
        *&v87[8 * v91] = v92;
        v91 = *v35 + 1;
        if (__OFADD__(*v35, 1))
        {
          break;
        }

        *v35 = v91;
        if (!--v89)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      swift_once();
    }
  }

  v107 = a3;
  v13 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_initStackObject();
  v106 = xmmword_3A860;
  *(v15 + 16) = xmmword_3A860;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  v16 = a1;
  *(v15 + 32) = a1;
  v17 = v13;
  v18 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v17, &dword_0, v18, "Migrating database to schema version %{public}d", 47, 2, v15);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v15 + 32));
  result = specialized CRLStore._schemaVersion()();
  if (v4)
  {
    return result;
  }

  v20 = result;
  v100 = v17;
  v102 = a1;
  v104 = v14;
  v105 = 0;
  v10 = swift_initStackObject();
  *(v10 + 1) = xmmword_3AA30;
  *(v10 + 4) = v20;
  a3 = v10 + 32;
  *(v10 + 7) = &type metadata for Int;
  v111 = v20;
  *(v10 + 12) = &type metadata for Int;
  *(v10 + 13) = &protocol witness table for Int;
  v21 = v108;
  v22 = v108;
  *(v10 + 8) = &protocol witness table for Int;
  *(v10 + 9) = v22;
  *(v10 + 17) = &type metadata for Int;
  *(v10 + 18) = &protocol witness table for Int;
  *(v10 + 14) = v16;
  v24 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName);
  v23 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName + 8);
  *(v10 + 22) = &type metadata for String;
  v103 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 23) = v103;
  v101 = v24;
  *(v10 + 19) = v24;
  *(v10 + 20) = v23;
  if (v111 != v21)
  {
    goto LABEL_9;
  }

  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  v25 = swift_arrayDestroy();
  __chkstk_darwin(v25);
  *(&v100 - 4) = v107;
  *(&v100 - 3) = &v110;
  v98 = &v112;
  v26 = v105;
  result = specialized CRLStore._performWithTransaction(_:)(partial apply for specialized closure #1 in CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:), (&v100 - 6));
  if (!v26)
  {
    v27 = specialized CRLStore._schemaVersion()();
    v105 = 0;
    v28 = swift_initStackObject();
    *(v28 + 32) = v27;
    v29 = v28 + 32;
    *(v28 + 16) = xmmword_3A890;
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 96) = &type metadata for Int;
    *(v28 + 104) = &protocol witness table for Int;
    *(v28 + 72) = v16;
    v30 = v103;
    *(v28 + 136) = &type metadata for String;
    *(v28 + 144) = v30;
    v31 = v102;
    *(v28 + 112) = v101;
    *(v28 + 120) = v23;
    if (v27 != v31)
    {
      goto LABEL_35;
    }

    swift_setDeallocating();

    swift_arrayDestroy();
    v32 = swift_initStackObject();
    *(v32 + 16) = v106;
    *(v32 + 56) = &type metadata for Int;
    *(v32 + 64) = &protocol witness table for Int;
    *(v32 + 32) = v27;
    v33 = v100;
    v34 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v33, &dword_0, v34, "Successfully migrated database to schema version %{public}d", 59, 2, v32);

    swift_setDeallocating();
    return __swift_destroy_boxed_opaque_existential_0((v32 + 32));
  }

  return result;
}

unint64_t CRLBoardDataStore.Table.sqlString.getter(char a1)
{
  result = 0x736472616F62;
  switch(a1)
  {
    case 1:
      result = 0x74695F6472616F62;
      break;
    case 2:
      result = 0x756C61765F79656BLL;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0x6D5F736472616F62;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x64726F6365726B63;
      break;
    case 10:
      result = 0x635F656E6F7A6B63;
      break;
    case 12:
      result = 0x737265646C6F66;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

id @objc CRLBoardDataStore.storeName.getter(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Adding MinRequiredVersionForGoodEnoughFidelity to the boards table", 66, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x736472616F62;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  v15._object = 0x8000000000040070;
  String.append(_:)(v15);
  v16._object = 0x800000000003FE80;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = specialized SQLiteStatement.init(database:query:)(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000020;
    *(v30 + 16) = 0x8000000000040120;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityToBoardItemsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Adding MinRequiredVersionForGoodEnoughFidelity to the board items table", 71, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  v15._object = 0x8000000000040070;
  String.append(_:)(v15);
  v16._object = 0x800000000003FE80;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = specialized SQLiteStatement.init(database:query:)(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000025;
    *(v30 + 16) = 0x80000000000400A0;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForBucketToFreehandDrawingBucketsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Adding MinRequiredVersionForGoodEnoughFidelityForBucket to the freehand drawing buckets table", 93, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._object = 0x800000000003F200;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000038;
  v15._object = 0x800000000003FF70;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x800000000003FE80;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = specialized SQLiteStatement.init(database:query:)(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000065;
    *(v30 + 16) = 0x800000000003FFB0;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._addMinRequiredVersionForGoodEnoughFidelityForItemsToFreehandDrawingBucketsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Adding MinRequiredVersionForGoodEnoughFidelityForItems to the freehand drawing buckets table", 92, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._object = 0x800000000003F200;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000037;
  v15._object = 0x800000000003FE40;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x800000000003FE80;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = specialized SQLiteStatement.init(database:query:)(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000064;
    *(v30 + 16) = 0x800000000003FEA0;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createBoardsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v8 = v3 + 104;
  v7 = *(v3 + 104);
  v93 = enum case for DispatchPredicate.onQueue(_:);
  v94 = v7;
  v7(v5);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v13 = *(v3 + 8);
  v12 = v3 + 8;
  v11 = v13;
  v13(v5, v2);
  if (v10)
  {
    v96 = v0;
    v97 = v1;
    v91 = v2;
    v92 = v8;
    v89 = v11;
    v90 = v12;
    if (one-time initialization token for boardStore == -1)
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
  v14 = 0xD000000000000010;
  v15 = static OS_os_log.boardStore;
  v16 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v15, &dword_0, v16, "Creating schema for the boards table", 36, 2, &_swiftEmptyArrayStorage);
  v98 = 0;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(479);
  v17._countAndFlagsBits = 0x5420455441455243;
  v17._object = 0xED000020454C4241;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x736472616F62;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._object = 0x800000000003F290;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v21._object = 0x800000000003F5D0;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x616E5F72656E776FLL;
  v22._object = 0xEA0000000000656DLL;
  String.append(_:)(v22);
  v23._object = 0x800000000003F3A0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x656E6961746E6F63;
  v24._object = 0xEE00646975755F72;
  String.append(_:)(v24);
  v25._object = 0x800000000003F2B0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v95 = "for the boards table";
  v26._countAndFlagsBits = 0xD000000000000018;
  v26._object = 0x800000000003FBC0;
  String.append(_:)(v26);
  v27._object = 0x800000000003F2B0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 1635017060;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C424F4C4220;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000012;
  v30._object = 0x800000000003FBE0;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C4C41455220;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  v32._object = 0xEA00000000006465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x800000000003F3C0;
  String.append(_:)(v33);
  v34._object = 0x800000000003F3E0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x800000000003F710;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD000000000000018;
  v36._object = 0x800000000003FC00;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000014;
  v37._object = 0x800000000003FC20;
  String.append(_:)(v37);
  v38._object = 0xE900000000000061;
  v38._countAndFlagsBits = 0x7461645F636E7973;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x202C424F4C4220;
  v39._object = 0xE700000000000000;
  String.append(_:)(v39);
  v40._object = 0xEE00657461645F65;
  v40._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x202C4C41455220;
  v41._object = 0xE700000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x800000000003FC40;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000013;
  v43._object = 0x800000000003F3C0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x5F65726168736B63;
  v44._object = 0xEC00000061746164;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x202C424F4C4220;
  v45._object = 0xE700000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD000000000000014;
  v46._object = 0x800000000003F8F0;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD00000000000001DLL;
  v47._object = 0x800000000003F710;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x61637369645F7369;
  v48._object = 0xEE00656C62616472;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD000000000000020;
  v49._object = 0x800000000003FC60;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x656E6961746E6F63;
  v50._object = 0xEE00646975755F72;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 8236;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v52._object = 0x800000000003F290;
  v52._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x4552454645522029;
  v53._object = 0xED0000205345434ELL;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x74695F6472616F62;
  v54._object = 0xEB00000000736D65;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 10272;
  v55._object = 0xE200000000000000;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0x6975755F6D657469;
  v56._object = 0xE900000000000064;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 8236;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  v58._object = 0x800000000003F290;
  v58._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0xD000000000000040;
  v59._object = 0x800000000003FC90;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0xD000000000000018;
  v60._object = (v95 | 0x8000000000000000);
  String.append(_:)(v60);
  v61._countAndFlagsBits = 8236;
  v61._object = 0xE200000000000000;
  String.append(_:)(v61);
  v62._object = 0x800000000003F290;
  v62._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0x4552454645522029;
  v63._object = 0xED0000205345434ELL;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0x74695F6472616F62;
  v64._object = 0xEB00000000736D65;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 10272;
  v65._object = 0xE200000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0x6975755F6D657469;
  v66._object = 0xE900000000000064;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 8236;
  v67._object = 0xE200000000000000;
  String.append(_:)(v67);
  v68._object = 0x800000000003F290;
  v68._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 0xD000000000000033;
  v69._object = 0x800000000003FCE0;
  String.append(_:)(v69);
  v70 = v98;
  v71 = v99;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v73 = v97;
  v74 = specialized SQLiteStatement.init(database:query:)(v72, v70, v71);

  if (v73)
  {
    return result;
  }

  v76 = *(*(v74 + 16) + 32);
  *v5 = v76;
  v77 = v91;
  v94(v5, v93, v91);
  v78 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v79 = v89;
  v89(v5, v77);
  if ((v76 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v80 = *(v74 + 16);

  v81 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v80, v74);

  if (v81 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v83 = v81;
    *(v83 + 8) = v14 + 17;
    *(v83 + 16) = 0x800000000003FD20;
    swift_willThrow();
    v84 = *(*(v74 + 16) + 32);
    *v5 = v84;
    v94(v5, v93, v77);
    v85 = v84;
    v86 = _dispatchPreconditionTest(_:)();
    v79(v5, v77);
    if (v86)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v14 = *(*(v74 + 16) + 32);
  *v5 = v14;
  v94(v5, v93, v77);
  v82 = v14;
  v81 = _dispatchPreconditionTest(_:)();
  v79(v5, v77);
  if ((v81 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v87 = *(v74 + 24);
  if (v87)
  {
    sqlite3_finalize(v87);
    *(v74 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createBoardsMetadataTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v56 = v1;
    v53 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = 0xD000000000000010;
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Creating schema for the boards metadata table", 45, 2, &_swiftEmptyArrayStorage);
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x6D5F736472616F62;
  v14._object = 0xEF61746164617465;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._object = 0x800000000003F290;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000026;
  v17._object = 0x800000000003FAC0;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x736472616F62;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._object = 0x800000000003F290;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000015;
  v21._object = 0x800000000003EFC0;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x7461645F74647263;
  v22._object = 0xE900000000000061;
  String.append(_:)(v22);
  v23._object = 0x800000000003F2B0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x726F7661665F7369;
  v24._object = 0xEB00000000657469;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000013;
  v25._object = 0x800000000003F3C0;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  v26._object = 0x800000000003FAF0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x800000000003F3C0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6174735F77656976;
  v28._object = 0xEF617461645F6574;
  String.append(_:)(v28);
  v29._object = 0x800000000003F2B0;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0x800000000003FB10;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000020;
  v31._object = 0x800000000003FB30;
  String.append(_:)(v31);
  v32._object = 0x800000000003F3E0;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD00000000000001DLL;
  v33._object = 0x800000000003F710;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x7461645F636E7973;
  v34._object = 0xE900000000000061;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x2920424F4C4220;
  v35._object = 0xE700000000000000;
  String.append(_:)(v35);
  v36 = v57;
  v37 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v39 = v56;
  v40 = specialized SQLiteStatement.init(database:query:)(v38, v36, v37);

  if (v39)
  {
    return result;
  }

  v42 = *(*(v40 + 16) + 32);
  *v5 = v42;
  v55(v5, v54, v2);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v44 = v53;
  v53(v5, v2);
  if ((v42 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v45 = *(v40 + 16);

  v46 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v45, v40);

  if (v46 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v49 = v46;
    *(v49 + 8) = v10 + 26;
    *(v49 + 16) = 0x800000000003FB60;
    swift_willThrow();
    v50 = *(*(v40 + 16) + 32);
    *v5 = v50;
    v55(v5, v54, v2);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v53(v5, v2);
    if (v50)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v47 = *(*(v40 + 16) + 32);
  *v5 = v47;
  v55(v5, v54, v2);
  v48 = v47;
  v10 = _dispatchPreconditionTest(_:)();
  v44(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v52 = *(v40 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    *(v40 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createBoardItemsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v84 = enum case for DispatchPredicate.onQueue(_:);
  v85 = v7;
  v86 = v3 + 104;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v87 = *(v3 + 8);
  v87(v5, v2);
  if (v6)
  {
    v89 = v0;
    v90 = v1;
    if (one-time initialization token for boardStore == -1)
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
  v9 = 0xD000000000000010;
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Creating schema for the board items table", 41, 2, &_swiftEmptyArrayStorage);
  v88 = "(item_uuid, board_identifier)";
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(328);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6975755F6D657469;
  v15._object = 0xE900000000000064;
  String.append(_:)(v15);
  v16._object = 0x800000000003F2B0;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x755F746E65726170;
  v17._object = 0xEB00000000646975;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C424F4C4220;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._object = 0x800000000003F290;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  v20._object = 0x800000000003EF80;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 10272;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._object = 0x800000000003F290;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000015;
  v24._object = 0x800000000003EFC0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x7079745F6D657469;
  v25._object = 0xE900000000000065;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000013;
  v26._object = 0x800000000003F3C0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v27._object = 0xEB00000000617461;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x202C424F4C4220;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6369666963657073;
  v29._object = 0xED0000617461645FLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C424F4C4220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x6E6F7473626D6F74;
  v31._object = 0xEA00000000006465;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000013;
  v32._object = 0x800000000003F3C0;
  String.append(_:)(v32);
  v33._object = 0x800000000003F3E0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x800000000003F710;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x7461645F636E7973;
  v35._object = 0xE900000000000061;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x202C424F4C4220;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000014;
  v37._object = 0x800000000003F8F0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD00000000000001DLL;
  v38._object = 0x800000000003F710;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v39._object = 0xEE00736E6F697470;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000029;
  v40._object = 0x800000000003F910;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD00000000000001DLL;
  v41._object = 0x800000000003F8B0;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x474945524F460A2CLL;
  v42._object = 0xEE002059454B204ELL;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD00000000000001FLL;
  v43._object = (v88 | 0x8000000000000000);
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x4E45524546455220;
  v44._object = 0xEC00000020534543;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x74695F6472616F62;
  v45._object = 0xEB00000000736D65;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 32;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD00000000000001DLL;
  v47._object = 0x800000000003F8B0;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD000000000000014;
  v48._object = 0x800000000003F940;
  String.append(_:)(v48);
  v49 = v91;
  v50 = v92;
  v51 = *(v89 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v53 = v90;
  v54 = specialized SQLiteStatement.init(database:query:)(v52, v49, v50);
  if (v53)
  {
  }

  v55 = v54;

  v56 = *(*(v55 + 16) + 32);
  *v5 = v56;
  v85(v5, v84, v2);
  v57 = v56;
  v58 = _dispatchPreconditionTest(_:)();
  v87(v5, v2);
  if ((v58 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v59 = *(v55 + 16);

  v60 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v59, v55);

  if (v60 == 101)
  {
    v61 = specialized static SQLiteStatement.execute(database:query:)(v51, 0xD000000000000035, 0x800000000003F990);
    if (v61 == 101)
    {
      v62 = specialized static SQLiteStatement.execute(database:query:)(v51, 0xD00000000000004FLL, 0x800000000003FA10);
      if (v62 == 101)
      {
        v63 = *(*(v55 + 16) + 32);
        *v5 = v63;
        v85(v5, v84, v2);
        v64 = v63;
        LOBYTE(v63) = _dispatchPreconditionTest(_:)();
        v87(v5, v2);
        if (v63)
        {
          swift_beginAccess();
          v65 = *(v55 + 24);
          if (v65)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v66 = v60;
    *(v66 + 8) = 0xD000000000000026;
    *(v66 + 16) = 0x800000000003F960;
    swift_willThrow();
    v67 = *(*(v55 + 16) + 32);
    *v5 = v67;
    v85(v5, v84, v2);
    v68 = v67;
    v9 = _dispatchPreconditionTest(_:)();
    v61 = (v87)(v5, v2);
    if (v9)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v69 = v61;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v70 = v69;
  *(v70 + 8) = v9 + 40;
  *(v70 + 16) = 0x800000000003F9D0;
  swift_willThrow();
  v71 = *(*(v55 + 16) + 32);
  *v5 = v71;
  v85(v5, v84, v2);
  v72 = v71;
  v9 = _dispatchPreconditionTest(_:)();
  v62 = (v87)(v5, v2);
  if (v9)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v73 = v62;
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v74._countAndFlagsBits = v9 + 7;
  v74._object = 0x800000000003F830;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0x74695F6472616F62;
  v75._object = 0xEB00000000736D65;
  String.append(_:)(v75);
  v76._countAndFlagsBits = v9 + 27;
  v76._object = 0x800000000003FA60;
  String.append(_:)(v76);
  v77 = v91;
  v78 = v92;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v79 = v73;
  *(v79 + 8) = v77;
  *(v79 + 16) = v78;
  swift_willThrow();
  v80 = *(*(v55 + 16) + 32);
  *v5 = v80;
  v85(v5, v84, v2);
  v81 = v80;
  LOBYTE(v80) = _dispatchPreconditionTest(_:)();
  v87(v5, v2);
  if ((v80 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v65 = *(v55 + 24);
  if (v65)
  {
LABEL_17:
    sqlite3_finalize(v65);
    *(v55 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createFreehandDrawingBucketsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v76 = v7;
  v77 = v3 + 104;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v78 = v10;
  v10(v5, v2);
  if (v6)
  {
    v79 = v0;
    v80 = v1;
    v73 = v9;
    v74 = v2;
    if (one-time initialization token for boardStore == -1)
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
  v11 = 0xD000000000000010;
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v13, "Creating schema for the board drawings table", 44, 2, &_swiftEmptyArrayStorage);
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000018;
  v72 = "asset_references";
  v15._object = 0x800000000003F200;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000011;
  v17._object = 0x800000000003F6F0;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x800000000003EF80;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x736472616F62;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._object = 0x800000000003F290;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000015;
  v22._object = 0x800000000003EFC0;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x695F74656B637562;
  v23._object = 0xEC0000007865646ELL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000013;
  v24._object = 0x800000000003F3C0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x645F74656B637562;
  v25._object = 0xEB00000000617461;
  String.append(_:)(v25);
  v26._object = 0x800000000003F2B0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._object = 0x800000000003F3E0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD00000000000001DLL;
  v28._object = 0x800000000003F710;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x7461645F636E7973;
  v29._object = 0xE900000000000061;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C424F4C4220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v31._object = 0x800000000003F730;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C424F4C4220;
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD00000000000001FLL;
  v33._object = 0x800000000003F750;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x800000000003F710;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  v35._object = 0x800000000003F770;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD000000000000024;
  v36._object = 0x800000000003F400;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000011;
  v37._object = 0x800000000003F6F0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 44;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x695F74656B637562;
  v39._object = 0xEC0000007865646ELL;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 10537;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  v41 = v81;
  v42 = v82;
  v43 = *(v79 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v45 = v80;
  v46 = specialized SQLiteStatement.init(database:query:)(v44, v41, v42);

  if (v45)
  {
    return result;
  }

  v48 = *(*(v46 + 16) + 32);
  *v5 = v48;
  v49 = v74;
  v76(v5, v75, v74);
  v50 = v48;
  v51 = _dispatchPreconditionTest(_:)();
  v78(v5, v49);
  if ((v51 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v52 = *(v46 + 16);

  v53 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v52, v46);

  if (v53 == 101)
  {
    v54 = specialized static SQLiteStatement.execute(database:query:)(v43, 0xD00000000000006ALL, 0x800000000003F7C0);
    if (v54 == 101)
    {
      v55 = *(*(v46 + 16) + 32);
      *v5 = v55;
      v76(v5, v75, v49);
      v56 = v55;
      v57 = _dispatchPreconditionTest(_:)();
      v78(v5, v49);
      if (v57)
      {
        swift_beginAccess();
        v58 = *(v46 + 24);
        if (v58)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v59 = v53;
    *(v59 + 8) = 0xD000000000000029;
    *(v59 + 16) = 0x800000000003F790;
    swift_willThrow();
    v60 = *(*(v46 + 16) + 32);
    *v5 = v60;
    v76(v5, v75, v49);
    v61 = v60;
    v11 = _dispatchPreconditionTest(_:)();
    v54 = (v78)(v5, v49);
    if (v11)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v62 = v54;
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v63._countAndFlagsBits = v11 + 7;
  v63._object = 0x800000000003F830;
  String.append(_:)(v63);
  v64._countAndFlagsBits = v11 + 8;
  v64._object = (v72 | 0x8000000000000000);
  String.append(_:)(v64);
  v65._countAndFlagsBits = v11 + 30;
  v65._object = 0x800000000003F850;
  String.append(_:)(v65);
  v66 = v81;
  v67 = v82;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v68 = v62;
  *(v68 + 8) = v66;
  *(v68 + 16) = v67;
  swift_willThrow();
  v69 = *(*(v46 + 16) + 32);
  *v5 = v69;
  v76(v5, v75, v49);
  v70 = v69;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  v78(v5, v49);
  if ((v67 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  swift_beginAccess();
  v58 = *(v46 + 24);
  if (v58)
  {
LABEL_14:
    sqlite3_finalize(v58);
    *(v46 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createKeyValueDataTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v3 + 104);
  v38(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v37 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Creating schema for the key/value table", 39, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x756C61765F79656BLL;
  v13._object = 0xEE00617461645F65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 7955819;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x800000000003F670;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x65756C6176;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18._object = 0x800000000003F3A0;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E695F6172747865;
  v19._object = 0xEA00000000006F66;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x29205458455420;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21 = v39;
  v22 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = specialized SQLiteStatement.init(database:query:)(v23, v21, v22);

  if (v1)
  {
    return result;
  }

  v26 = *(*(v24 + 16) + 32);
  *v5 = v26;
  v38(v5, v7, v2);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = v37;
  v37(v5, v2);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v24 + 16);

  LODWORD(v30) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v29, v24);

  if (v30 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0xD000000000000024;
    *(v32 + 16) = 0x800000000003F690;
    swift_willThrow();
    v33 = *(*(v24 + 16) + 32);
    *v5 = v33;
    v38(v5, v7, v2);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v37(v5, v2);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v30 = *(*(v24 + 16) + 32);
  *v5 = v30;
  v38(v5, v7, v2);
  v31 = v30;
  v7 = _dispatchPreconditionTest(_:)();
  v28(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v24 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v24 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createAssetsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v3 + 104);
  v38(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v37 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Creating schema for the assets table", 36, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x737465737361;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x75755F7465737361;
  v15._object = 0xEA00000000006469;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x800000000003F5D0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6F69736E65747865;
  v17._object = 0xE90000000000006ELL;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C5458455420;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E6F7473626D6F74;
  v19._object = 0xEE00657461645F65;
  String.append(_:)(v19);
  v20._object = 0x800000000003F5F0;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21 = v39;
  v22 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = specialized SQLiteStatement.init(database:query:)(v23, v21, v22);

  if (v1)
  {
    return result;
  }

  v26 = *(*(v24 + 16) + 32);
  *v5 = v26;
  v38(v5, v7, v2);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = v37;
  v37(v5, v2);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v24 + 16);

  LODWORD(v30) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v29, v24);

  if (v30 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0xD000000000000021;
    *(v32 + 16) = 0x800000000003F610;
    swift_willThrow();
    v33 = *(*(v24 + 16) + 32);
    *v5 = v33;
    v38(v5, v7, v2);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v37(v5, v2);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v30 = *(*(v24 + 16) + 32);
  *v5 = v30;
  v38(v5, v7, v2);
  v31 = v30;
  v7 = _dispatchPreconditionTest(_:)();
  v28(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v24 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v24 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createAssetReferencesTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v62 = v8;
  v60[1] = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v63 = *(v4 + 8);
  v63(v6, v3);
  if (v7)
  {
    v64 = v1;
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Creating schema for the asset_references table", 46, 2, &_swiftEmptyArrayStorage);
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(146);
  v12._countAndFlagsBits = 0x5420455441455243;
  v12._object = 0xED000020454C4241;
  String.append(_:)(v12);
  v13._object = 0x800000000003F1E0;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x800000000003F360;
  String.append(_:)(v15);
  v16._object = 0x800000000003F2B0;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._object = 0x800000000003F290;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x202C424F4C4220;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = 0x800000000003F380;
  String.append(_:)(v19);
  v20._object = 0x800000000003F3A0;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x75755F7465737361;
  v21._object = 0xEA00000000006469;
  String.append(_:)(v21);
  v22._object = 0x800000000003F2B0;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x7265727265666572;
  v23._object = 0xED0000657079745FLL;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000013;
  v24._object = 0x800000000003F3C0;
  String.append(_:)(v24);
  v25._object = 0x800000000003F3E0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000024;
  v26._object = 0x800000000003F400;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x800000000003F360;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 44;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x800000000003F380;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 10537;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31 = v65;
  v32 = v66;
  v33 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = v64;
  v36 = specialized SQLiteStatement.init(database:query:)(v34, v31, v32);
  if (v35)
  {
  }

  v37 = v36;

  v38 = *(*(v37 + 16) + 32);
  *v6 = v38;
  v62(v6, v61, v3);
  v39 = v38;
  v40 = _dispatchPreconditionTest(_:)();
  v63(v6, v3);
  if ((v40 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v41 = *(v37 + 16);

  v42 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v41, v37);

  if (v42 == 101)
  {
    v43 = specialized static SQLiteStatement.execute(database:query:)(v33, 0xD00000000000004ELL, 0x800000000003F460);
    if (v43 == 101)
    {
      v44 = specialized static SQLiteStatement.execute(database:query:)(v33, 0xD00000000000004DLL, 0x800000000003F500);
      v45 = 0xD000000000000010;
      if (v44 == 101)
      {
        v46 = *(*(v37 + 16) + 32);
        *v6 = v46;
        v62(v6, v61, v3);
        v47 = v46;
        LOBYTE(v46) = _dispatchPreconditionTest(_:)();
        v63(v6, v3);
        if (v46)
        {
          swift_beginAccess();
          v48 = *(v37 + 24);
          if (v48)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v49 = v42;
    *(v49 + 8) = 0xD00000000000002BLL;
    *(v49 + 16) = 0x800000000003F430;
    swift_willThrow();
    v50 = *(*(v37 + 16) + 32);
    *v6 = v50;
    v62(v6, v61, v3);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v43 = (v63)(v6, v3);
    if (v50)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v45 = v43;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v52 = v45;
  *(v52 + 8) = 0xD000000000000044;
  *(v52 + 16) = 0x800000000003F4B0;
  swift_willThrow();
  v53 = *(*(v37 + 16) + 32);
  *v6 = v53;
  v62(v6, v61, v3);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v44 = (v63)(v6, v3);
  if (v53)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v55 = v44;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v56 = v55;
  *(v56 + 8) = v45 + 48;
  *(v56 + 16) = 0x800000000003F550;
  swift_willThrow();
  v57 = *(*(v37 + 16) + 32);
  *v6 = v57;
  v62(v6, v61, v3);
  v58 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  v63(v6, v3);
  if ((v57 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v48 = *(v37 + 24);
  if (v48)
  {
LABEL_17:
    sqlite3_finalize(v48);
    *(v37 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createCommandHistoryItemsTable()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v48 = enum case for DispatchPredicate.onQueue(_:);
  v49 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v50 = v1;
    v47 = v9;
    if (one-time initialization token for boardStore == -1)
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
  v10 = 0xD000000000000010;
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Creating schema for the command_history_items table", 51, 2, &_swiftEmptyArrayStorage);
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(167);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x800000000003EFA0;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x64695F6D657469;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x800000000003F260;
  String.append(_:)(v17);
  v18._object = 0x800000000003F290;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x800000000003EF80;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._object = 0x800000000003F290;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x800000000003EFC0;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x6975755F6D657469;
  v24._object = 0xE900000000000064;
  String.append(_:)(v24);
  v25._object = 0x800000000003F2B0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x7461645F6D657469;
  v26._object = 0xE900000000000061;
  String.append(_:)(v26);
  v27._object = 0x800000000003F2B0;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x616C665F6F646E75;
  v28._object = 0xE900000000000067;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x800000000003F2D0;
  String.append(_:)(v29);
  v30 = v51;
  v31 = v52;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = v50;
  v34 = specialized SQLiteStatement.init(database:query:)(v32, v30, v31);

  if (v33)
  {
    return result;
  }

  v36 = *(*(v34 + 16) + 32);
  *v5 = v36;
  v49(v5, v48, v2);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v38 = v47;
  v47(v5, v2);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = *(v34 + 16);

  v40 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v39, v34);

  if (v40 != 101)
  {
LABEL_8:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v10 + 32;
    *(v43 + 16) = 0x800000000003F2F0;
    swift_willThrow();
    v44 = *(*(v34 + 16) + 32);
    *v5 = v44;
    v49(v5, v48, v2);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v47(v5, v2);
    if (v44)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v41 = *(*(v34 + 16) + 32);
  *v5 = v41;
  v49(v5, v48, v2);
  v42 = v41;
  v10 = _dispatchPreconditionTest(_:)();
  v38(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v46 = *(v34 + 24);
  if (v46)
  {
    sqlite3_finalize(v46);
    *(v34 + 24) = 0;
  }
}

uint64_t CRLBoardDataStore._createCommandHistoryAssetReferencesTable()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v69 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v8;
  v71 = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v68 = v3;
  (v10)(v6, v3);
  if (v7)
  {
    v67 = v10;
    if (one-time initialization token for boardStore == -1)
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
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Creating schema for the command_history_asset_references table", 62, 2, &_swiftEmptyArrayStorage);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(105);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000020;
  v14._object = 0x800000000003EF30;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._object = 0x800000000003EF60;
  v16._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x800000000003EF80;
  String.append(_:)(v17);
  v18._object = 0x800000000003EFA0;
  v18._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x64695F6D657469;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._object = 0x800000000003EFC0;
  v21._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x75755F7465737361;
  v22._object = 0xEA00000000006469;
  String.append(_:)(v22);
  v23._object = 0x800000000003EFE0;
  v23._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v23);
  v24._object = 0x800000000003EF60;
  v24._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x75755F7465737361;
  v26._object = 0xEA00000000006469;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 10537;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28 = v72;
  v29 = v73;
  v30 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v32 = specialized SQLiteStatement.init(database:query:)(v31, v28, v29);
  if (v1)
  {
  }

  v33 = v32;

  v34 = *(*(v33 + 16) + 32);
  *v6 = v34;
  v35 = v68;
  v70(v6, v69, v68);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v37 = v35;
  v38 = v67;
  (v67)(v6, v37);
  if ((v34 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v39 = *(v33 + 16);

  v40 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v39, v33);

  if (v40 == 101)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v41._countAndFlagsBits = 0xD00000000000002ELL;
    v41._object = 0x800000000003F040;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000020;
    v42._object = 0x800000000003EF30;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 10272;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);
    v44._object = 0x800000000003EF60;
    v44._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v44);
    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v38 = v73;
    v46 = specialized static SQLiteStatement.execute(database:query:)(v30, v72, v73);

    if (v46 == 101)
    {
      v47 = specialized static SQLiteStatement.execute(database:query:)(v30, 0xD00000000000006DLL, 0x800000000003F0D0);
      v30 = v67;
      v38 = 0xD000000000000017;
      if (v47 == 101)
      {
        v48 = *(*(v33 + 16) + 32);
        *v6 = v48;
        v49 = v68;
        v70(v6, v69, v68);
        v50 = v48;
        LOBYTE(v48) = _dispatchPreconditionTest(_:)();
        (v30)(v6, v49);
        if (v48)
        {
          swift_beginAccess();
          v51 = *(v33 + 24);
          if (v51)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v52 = v40;
    *(v52 + 8) = 0xD00000000000003BLL;
    *(v52 + 16) = 0x800000000003F000;
    swift_willThrow();
    v53 = *(*(v33 + 16) + 32);
    *v6 = v53;
    v54 = v68;
    v70(v6, v69, v68);
    v55 = v53;
    v46 = _dispatchPreconditionTest(_:)();
    (v38)(v6, v54);
    if (v46)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v56 = v46;
  *(v56 + 8) = 0xD00000000000005FLL;
  *(v56 + 16) = 0x800000000003F070;
  swift_willThrow();
  v57 = *(*(v33 + 16) + 32);
  *v6 = v57;
  v58 = v68;
  v70(v6, v69, v68);
  v59 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  v47 = (v67)(v6, v58);
  if (v57)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v60 = v47;
  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v61 = v60;
  *(v61 + 8) = v38 + 57;
  *(v61 + 16) = 0x800000000003F140;
  swift_willThrow();
  v62 = *(*(v33 + 16) + 32);
  *v6 = v62;
  v63 = v68;
  v70(v6, v69, v68);
  v64 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  (v30)(v6, v63);
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v51 = *(v33 + 24);
  if (v51)
  {
LABEL_17:
    sqlite3_finalize(v51);
    *(v33 + 24) = 0;
  }
}

uint64_t type metadata accessor for CRLBoardDataStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for CRLBoardDataStore;
  if (!type metadata singleton initialization cache for CRLBoardDataStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CRLBoardDataStore(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t specialized CRLBoardDataStore._fetchValue(for:valueExtractor:extraInfoExtractor:)(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, Swift::String_optional *a5)
{
  v42 = a5;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = *(v10 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v14;
  v14(v12);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v45 = *(v10 + 8);
  v45(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v40 = a3;
  v41 = a2;
  v16 = "rForCarmelDataclassAccountKey";
  v17 = "CloudSharedSyncMetadata";
  v18 = " or update a value for key: ";
  v19 = 0xD000000000000017;
  if (a1 != 3)
  {
    v19 = 0xD000000000000024;
    v18 = "Leaving data behind.";
  }

  if (a1 == 2)
  {
    v19 = 0xD000000000000011;
  }

  else
  {
    v17 = v18;
  }

  v20 = 0xD00000000000002DLL;
  if (a1)
  {
    v16 = "CloudSyncMetadata";
  }

  else
  {
    v20 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v46 = v21;
  if (a1 > 1u)
  {
    v16 = v17;
  }

  a1 = (v16 | 0x8000000000000000);
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v23 = v47;
  v24 = specialized SQLiteStatement.init(database:query:)(v22, 0xD00000000000003ALL, 0x8000000000040E10);
  v47 = v23;
  if (v23)
  {

    if (one-time initialization token for boardStore == -1)
    {
LABEL_17:
      v25 = static OS_os_log.boardStore;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v46;
      *(inited + 40) = a1;
      v27 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v25, &dword_0, v27, "Failed to fetch value for key %@", 32, 2, inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      return swift_willThrow();
    }

LABEL_28:
    swift_once();
    goto LABEL_17;
  }

  v29 = v24;

  v30._countAndFlagsBits = v46;
  v30._object = a1;
  SQLiteStatement.bind(_:at:)(v30, 1);

  v31 = *(*(v29 + 16) + 32);
  *v12 = v31;
  v32 = v44;
  v33 = v43;
  v43(v12, v44, v9);
  v34 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  result = (v45)(v12, v9);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteRowIterator();
  v35 = swift_initStackObject();
  v35[4] = 0;
  v35[5] = 1;
  v35[2] = v29;
  v35[3] = 0;
  v36 = SQLiteRowIterator.next()();
  swift_setDeallocating();
  outlined consume of SQLiteError?(v35[3], v35[4], v35[5]);
  if (v36)
  {

    *v42 = SQLiteRow.getString(at:)(0);

    if (v41)
    {
      v41(v36, 1);
    }
  }

  v37 = *(*(v29 + 16) + 32);
  *v12 = v37;
  v33(v12, v32, v9);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  result = (v45)(v12, v9);
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v39 = *(v29 + 24);
  if (v39)
  {
    sqlite3_finalize(v39);
    *(v29 + 24) = 0;
  }
}

uint64_t specialized CRLBoardDataStore._saveValue(for:valueBinder:extraInfoBinder:)(unsigned __int8 a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v53 = a3;
  v54 = a5;
  v55 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = *(v11 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v58 = v15;
  v15(v13);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v59 = *(v11 + 8);
  result = v59(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v60 = a6;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v65 = "CloudSyncMetadata";
      v18 = 0xD00000000000002DLL;
    }

    else
    {
      v65 = "rForCarmelDataclassAccountKey";
      v18 = 0xD000000000000012;
    }
  }

  else if (a1 == 2)
  {
    v65 = "CloudSharedSyncMetadata";
    v18 = 0xD000000000000011;
  }

  else if (a1 == 3)
  {
    v65 = " or update a value for key: ";
    v18 = 0xD000000000000017;
  }

  else
  {
    v65 = "Leaving data behind.";
    v18 = 0xD000000000000024;
  }

  v56 = v18;
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x8000000000040820;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x756C61765F79656BLL;
  v20._object = 0xEE00617461645F65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 7955819;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x65756C6176;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6E695F6172747865;
  v26._object = 0xEA00000000006F66;
  String.append(_:)(v26);
  v27._object = 0x8000000000040840;
  v27._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v27);
  v28 = v63;
  v29 = v64;
  type metadata accessor for SQLiteStatement();
  swift_allocObject();

  v31 = specialized SQLiteStatement.init(database:query:)(v30, v28, v29);
  if (v6)
  {
  }

  v32 = v31;

  v33._object = (v65 | 0x8000000000000000);
  v33._countAndFlagsBits = v56;
  SQLiteStatement.bind(_:at:)(v33, 1);
  v34._countAndFlagsBits = v54;
  v34._object = v60;
  SQLiteStatement.bind(_:at:)(v34, 2);
  v35 = v55;
  if (v55)
  {
    v36 = v53;

    v35(v32, 3);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SQLiteStatement, @unowned Int) -> ())?(v35, v36);
    goto LABEL_17;
  }

  v37 = *(*(v32 + 16) + 32);
  *v13 = v37;
  v58(v13, v57, v10);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  result = v59(v13, v10);
  if (v37)
  {
    swift_beginAccess();
    sqlite3_bind_null(*(v32 + 24), 3);
LABEL_17:
    v39 = *(*(v32 + 16) + 32);
    *v13 = v39;
    v58(v13, v57, v10);
    v40 = v39;
    LOBYTE(v39) = _dispatchPreconditionTest(_:)();
    result = v59(v13, v10);
    if (v39)
    {
      v41 = *(v32 + 16);

      v42 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v41, v32);

      if (v42 != 101)
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v61 = 0xD00000000000002CLL;
        v62 = 0x8000000000040860;
        v46._object = (v65 | 0x8000000000000000);
        v46._countAndFlagsBits = v56;
        String.append(_:)(v46);

        v47 = v61;
        v48 = v62;
        lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
        swift_allocError();
        *v49 = v42;
        *(v49 + 8) = v47;
        *(v49 + 16) = v48;
        swift_willThrow();
        v50 = *(*(v32 + 16) + 32);
        *v13 = v50;
        v58(v13, v57, v10);
        v51 = v50;
        LOBYTE(v50) = _dispatchPreconditionTest(_:)();
        result = v59(v13, v10);
        if (v50)
        {
          swift_beginAccess();
          v52 = *(v32 + 24);
          if (v52)
          {
            sqlite3_finalize(v52);
            *(v32 + 24) = 0;
          }

          goto LABEL_26;
        }

        goto LABEL_31;
      }

      v43 = *(*(v32 + 16) + 32);
      *v13 = v43;
      v58(v13, v57, v10);
      v44 = v43;
      LOBYTE(v43) = _dispatchPreconditionTest(_:)();
      result = v59(v13, v10);
      if (v43)
      {
        swift_beginAccess();
        v45 = *(v32 + 24);
        if (v45)
        {
          sqlite3_finalize(v45);
          *(v32 + 24) = 0;
        }

LABEL_26:
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t CRLBoardDataStore._fetchStringValue(for:)(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11.value._countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0;
    specialized CRLBoardDataStore._fetchValue(for:valueExtractor:extraInfoExtractor:)(a1, 0, 0, v1, &v11);
    if (v2)
    {
    }

    else
    {
      return v11.value._countAndFlagsBits;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized CRLStore._performWithTransaction(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2;
  v9 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    *(&v15 - 4) = __chkstk_darwin(inited);
    *(&v15 - 3) = a1;
    *(&v15 - 2) = a2;
    *(&v15 - 1) = &v16;
    swift_retain_n();
    v14 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(partial apply for specialized closure #1 in CRLStore._performWithTransaction(_:), (&v15 - 6));

    swift_setDeallocating();

    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRLBoardDataStore._saveAccountIdentifierForFreeformDataclassAccount(accountIdentifier:)(uint64_t a1, void *a2)
{
  v19 = a2;
  v17 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  result = v12(v6, v3);
  if (v11)
  {
    *v6 = v10;
    v9(v6, v8, v3);
    v14 = _dispatchPreconditionTest(_:)();
    result = v12(v6, v3);
    if (v14)
    {
      v15 = v19;

      return specialized CRLBoardDataStore._saveValue(for:valueBinder:extraInfoBinder:)(1u, 0, 0, v18, v17, v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CRLBoardDataStore._removeAllData(from:)(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v42 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v10;
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = v5;
  v41 = v12;
  strcpy(v44, "DELETE FROM ");
  BYTE5(v44[1]) = 0;
  HIWORD(v44[1]) = -5120;
  v13._countAndFlagsBits = CRLBoardDataStore.Table.sqlString.getter(a1);
  countAndFlagsBits = v13._countAndFlagsBits;
  object = v13._object;
  String.append(_:)(v13);

  v16._countAndFlagsBits = 59;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17 = v44[0];
  v18 = v44[1];
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v20 = specialized SQLiteStatement.init(database:query:)(v19, v17, v18);

  if (v2)
  {
    return result;
  }

  v39 = countAndFlagsBits;
  v22 = *(*(v20 + 16) + 32);
  *v8 = v22;
  v23 = v40;
  v43(v8, v42, v40);
  v24 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = v41;
  v41(v8, v23);
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v20 + 16);

  v27 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v26, v20);

  if (v27 != 101)
  {
    goto LABEL_7;
  }

  object = *(*(v20 + 16) + 32);
  *v8 = object;
  v43(v8, v42, v23);
  v28 = object;
  v29 = _dispatchPreconditionTest(_:)();
  v25(v8, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v44[0] = 0xD000000000000021;
    v44[1] = 0x8000000000040960;
    v30._countAndFlagsBits = v39;
    v30._object = object;
    String.append(_:)(v30);

    v31 = v44[0];
    v32 = v44[1];
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v33 = v27;
    *(v33 + 8) = v31;
    *(v33 + 16) = v32;
    swift_willThrow();
    v34 = *(*(v20 + 16) + 32);
    *v8 = v34;
    v43(v8, v42, v23);
    v35 = v34;
    v36 = _dispatchPreconditionTest(_:)();
    v41(v8, v23);
    if (v36)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v37 = *(v20 + 24);
  if (v37)
  {
    sqlite3_finalize(v37);
    *(v20 + 24) = 0;
  }
}

void CRLBoardDataStore._sync_removeAllAccountData()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue];
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for boardStore == -1)
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
  v8 = static OS_os_log.boardStore;
  v9 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v8, &dword_0, v9, "Removing all assets.", 20, 2, &_swiftEmptyArrayStorage);
  v10 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager;
  v12 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  if (v12)
  {
    v13 = *&v1[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v15 = v1;
    v16 = specialized CRLAssetFileManager.init(store:)(v15);

    v17 = *&v1[v11];
    *&v1[v11] = v16;
    v13 = v16;

    v12 = 0;
  }

  v18 = *(v10 + 16);
  v19 = v12;
  os_unfair_lock_unlock(v18);
  CRLAssetFileManager.purgeAllAssetsFromDisk()();

  if (!v20)
  {
    v21 = 0;
    v35 = 0x800000000003F1A0;
    v32 = 0x800000000003EF30;
    v33 = 0x800000000003F1C0;
    v30 = 0x800000000003F1E0;
    v31 = 0x800000000003EFA0;
    v29 = 0x800000000003F200;
    v34 = xmmword_3A860;
    do
    {
      v22 = *(&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + v21++ + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v34;
      v24 = 0xE600000000000000;
      v25 = 0x736472616F62;
      v26 = inited;
      switch(v22)
      {
        case 1:
          v25 = 0x74695F6472616F62;
          v24 = 0xEB00000000736D65;
          break;
        case 2:
          v25 = 0x756C61765F79656BLL;
          v24 = 0xEE00617461645F65;
          break;
        case 3:
          v25 = 0x737465737361;
          break;
        case 4:
          v25 = 0xD000000000000010;
          v24 = v30;
          break;
        case 5:
          v25 = 0xD000000000000015;
          v24 = v31;
          break;
        case 6:
          v25 = 0xD000000000000020;
          v24 = v32;
          break;
        case 7:
          v25 = 0x6D5F736472616F62;
          v24 = 0xEF61746164617465;
          break;
        case 8:
          v25 = 0xD000000000000018;
          v24 = v29;
          break;
        case 9:
          v25 = 0x64726F6365726B63;
          v24 = 0xEE0065686361635FLL;
          break;
        case 10:
          v25 = 0x635F656E6F7A6B63;
          v24 = 0xEC00000065686361;
          break;
        case 11:
          v25 = 0xD000000000000015;
          v24 = v33;
          break;
        case 12:
          v24 = 0xE700000000000000;
          v25 = 0x737265646C6F66;
          break;
        case 13:
          v25 = 0xD000000000000010;
          v24 = v35;
          break;
        default:
          break;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v26 + 32) = v25;
      *(v26 + 40) = v24;
      v27 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v8, &dword_0, v27, "Removing data for table: %@", 27, 2, v26);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((v26 + 32));
      CRLBoardDataStore._removeAllData(from:)(v22);
    }

    while (v21 != 14);
  }
}

uint64_t CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(__int16 a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(62);
  v6._countAndFlagsBits = 0x6144736168A18EE2;
  v6._object = 0xAC000000203A6174;
  String.append(_:)(v6);
  if ((a1 & 0x100) != 0)
  {
    v7 = 8756450;
  }

  else
  {
    v7 = 2879037424;
  }

  if ((a1 & 0x100) != 0)
  {
    v8 = 0xA300000000000000;
  }

  else
  {
    v8 = 0xA400000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._object = 0x800000000003E9E0;
  v10._countAndFlagsBits = 0x1000000000000015;
  String.append(_:)(v10);
  if (a1)
  {
    v11 = 8756450;
  }

  else
  {
    v11 = 2879037424;
  }

  if (a1)
  {
    v12 = 0xA300000000000000;
  }

  else
  {
    v12 = 0xA400000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x1000000000000017;
  v14._object = 0x800000000003EA00;
  String.append(_:)(v14);
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    a2 = 7104878;
    v15 = 0xE300000000000000;
  }

  v16._countAndFlagsBits = a2;
  v16._object = v15;
  String.append(_:)(v16);

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CRLBoardDataStore.CRLBoardDataStoreMetadata()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(v1 | *v0, *(v0 + 1), *(v0 + 2));
}

unint64_t lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion()
{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table()
{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table;
  if (!lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CRLBoardDataStore.Table(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CRLBoardDataStore.Table and conformance CRLBoardDataStore.Table();
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CRLBoardDataStore.SchemaVersion(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion();
  a1[2] = lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion();
  result = lazy protocol witness table accessor for type CRLBoardDataStore.SchemaVersion and conformance CRLBoardDataStore.SchemaVersion();
  a1[3] = result;
  return result;
}

uint64_t closure #1 in static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)@<X0>(uint64_t a1@<X8>)
{
  result = CRLBoardDataStore._openDatabase(isReadOnlyMode:)(1);
  if (!v1)
  {
    BoardDataStore = CRLBoardDataStore._fetchBoardDataStoreMetadata()();
    *a1 = BoardDataStore & 1;
    *(a1 + 1) = HIBYTE(BoardDataStore) & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    return specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)();
  }

  return result;
}

uint64_t CRLBoardDataStore._fetchBoardDataStoreMetadata()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v21 = *(v3 + 104);
  v21(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v20 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = CRLBoardDataStore._checkHasUnsyncedChanges()();
  if (v1)
  {
    return result;
  }

  v19 = result;
  if (result)
  {
    v18 = 1;
  }

  else
  {
    v11 = CRLBoardDataStore._checkHasData()();
    v18 = v11;
  }

  v13 = v20;
  v12 = v21;
  *v5 = v20;
  v12(v5, v7, v2);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = v9(v5, v2);
  if ((v15 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  CRLBoardDataStore._fetchStringValue(for:)(&dword_0 + 1);
  if (v18)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 0xFFFFFFFE | v19 & 1;
}

uint64_t CRLBoardDataStore._checkHasUnsyncedChanges()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v76 = enum case for DispatchPredicate.onQueue(_:);
  v78 = v4 + 104;
  v77 = v8;
  v8(v6);
  v9 = v7;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v80 = v4 + 8;
  v79 = v11;
  v11(v6, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v75 = v3;
  v83 = 0;
  v84 = 0xE000000000000000;
  _StringGuts.grow(_:)(234);
  v82 = v1;
  v12._countAndFlagsBits = 0xD00000000000001DLL;
  v12._object = 0x8000000000040EE0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v81 = v2;
  v14._countAndFlagsBits = 0x20455245485720;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x74695F6472616F62;
  v15._object = 0xEB00000000736D65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._object = 0x800000000003F3E0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x8000000000040F00;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x736472616F62;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x20455245485720;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._object = 0x800000000003F3E0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x20524F2030203E20;
  v24._object = 0xE800000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x736472616F62;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000018;
  v27._object = 0x800000000003FC00;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD00000000000001DLL;
  v28._object = 0x8000000000040F00;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6D5F736472616F62;
  v29._object = 0xEF61746164617465;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x20455245485720;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x6D5F736472616F62;
  v31._object = 0xEF61746164617465;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._object = 0x800000000003F3E0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x8000000000040F00;
  String.append(_:)(v34);
  v35._object = 0x800000000003F1E0;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x20455245485720;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  v37._object = 0x800000000003F1E0;
  v37._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 46;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._object = 0x800000000003F3E0;
  v39._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD00000000000001DLL;
  v40._object = 0x8000000000040F00;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000018;
  v41._object = 0x800000000003F200;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x20455245485720;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000018;
  v43._object = 0x800000000003F200;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45._object = 0x800000000003F3E0;
  v45._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x292030203E20;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47 = v83;
  v48 = v84;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v50 = v82;
  v51 = specialized SQLiteStatement.init(database:query:)(v49, v47, v48);
  if (!v50)
  {
    v58 = v51;

    v59 = *(*(v58 + 16) + 32);
    *v6 = v59;
    v60 = v75;
    v77(v6, v76, v75);
    v61 = v59;
    v62 = _dispatchPreconditionTest(_:)();
    v79(v6, v60);
    if (v62)
    {
      type metadata accessor for SQLiteRowIterator();
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 1;
      inited[2] = v58;
      inited[3] = 0;

      if (SQLiteRowIterator.next()())
      {
        v85 = SQLiteRow.getInt32(at:)(0);
        value = v85.value;
        is_nil = v85.is_nil;

        swift_setDeallocating();
        outlined consume of SQLiteError?(inited[3], inited[4], inited[5]);
        if (!is_nil)
        {
          v66 = *(*(v58 + 16) + 32);
          *v6 = v66;
          v77(v6, v76, v60);
          v67 = v66;
          v68 = _dispatchPreconditionTest(_:)();
          v79(v6, v60);
          if (v68)
          {
            LOBYTE(v54) = value > 0;
            v69 = (v58 + 24);
            swift_beginAccess();
            v70 = *(v58 + 24);
            if (!v70)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_21:
          __break(1u);
        }
      }

      else
      {

        swift_setDeallocating();
        outlined consume of SQLiteError?(inited[3], inited[4], inited[5]);
      }

      v71 = *(*(v58 + 16) + 32);
      *v6 = v71;
      v77(v6, v76, v60);
      v72 = v71;
      v73 = _dispatchPreconditionTest(_:)();
      v79(v6, v60);
      if (v73)
      {
        v69 = (v58 + 24);
        swift_beginAccess();
        LOBYTE(v54) = 0;
        v70 = *(v58 + 24);
        if (!v70)
        {
LABEL_15:

          return v54 & 1;
        }

LABEL_14:
        sqlite3_finalize(v70);
        *v69 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for boardStore != -1)
  {
LABEL_18:
    swift_once();
  }

  v52 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_3A860;
  swift_getErrorValue();
  v54 = Error.localizedDescription.getter();
  v56 = v55;
  *(v53 + 56) = &type metadata for String;
  *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  v57 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v52, &dword_0, v57, "Failed to check if database has unsynced changes with error: %@", 63, 2, v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v53 + 32));
  swift_willThrow();
  return v54 & 1;
}

uint64_t CRLBoardDataStore._checkHasData()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v63 = v3 + 104;
  v62 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v65 = v5;
  v64 = v10;
  v10(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v66 = v0;
  v67 = v1;
  v59[1] = v9;
  v60 = v2;
  v11 = 0;
  countAndFlagsBits = &_swiftEmptyArrayStorage;
  do
  {
    v15 = *(&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + v11 + 32);
    if (v15 > 0xB || ((1 << v15) & 0xE64) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76._countAndFlagsBits = countAndFlagsBits;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, countAndFlagsBits[2] + 1, 1);
        countAndFlagsBits = v76._countAndFlagsBits;
      }

      v14 = countAndFlagsBits[2];
      v13 = countAndFlagsBits[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        countAndFlagsBits = v76._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v14 + 1;
      *(countAndFlagsBits + v14 + 32) = v15;
    }

    ++v11;
  }

  while (v11 != 14);
  v74 = 0xD000000000000011;
  v75 = 0x8000000000040E80;
  v18 = countAndFlagsBits[2];
  if (v18)
  {
    v19 = 0;
    v73 = 0x800000000003F1A0;
    v72 = 0x800000000003F1C0;
    v71 = 0x800000000003EF30;
    v70 = 0x800000000003EFA0;
    v69 = 0x800000000003F1E0;
    v68 = 0x800000000003F200;
    while (1)
    {
      v20 = *(countAndFlagsBits + v19++ + 32);
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(&v76, "SELECT 1 FROM ");
      HIBYTE(v76._object) = -18;
      v21 = 0xE600000000000000;
      v22 = 0x736472616F62;
      switch(v20)
      {
        case 1:
          v22 = 0x74695F6472616F62;
          v21 = 0xEB00000000736D65;
          break;
        case 2:
          v22 = 0x756C61765F79656BLL;
          v21 = 0xEE00617461645F65;
          break;
        case 3:
          v22 = 0x737465737361;
          break;
        case 4:
          v22 = 0xD000000000000010;
          v23 = &v78;
          goto LABEL_31;
        case 5:
          v22 = 0xD000000000000015;
          v23 = &v79;
          goto LABEL_31;
        case 6:
          v22 = 0xD000000000000020;
          v23 = &v80;
          goto LABEL_31;
        case 7:
          v22 = 0x6D5F736472616F62;
          v21 = 0xEF61746164617465;
          break;
        case 8:
          v22 = 0xD000000000000018;
          v23 = &v77;
          goto LABEL_31;
        case 9:
          v22 = 0x64726F6365726B63;
          v21 = 0xEE0065686361635FLL;
          break;
        case 10:
          v22 = 0x635F656E6F7A6B63;
          v21 = 0xEC00000065686361;
          break;
        case 11:
          v22 = 0xD000000000000015;
          v23 = &v81;
          goto LABEL_31;
        case 12:
          v21 = 0xE700000000000000;
          v22 = 0x737265646C6F66;
          break;
        case 13:
          v22 = 0xD000000000000010;
          v23 = &v82;
LABEL_31:
          v21 = *(v23 - 32);
          break;
        default:
          break;
      }

      v24 = v21;
      String.append(_:)(*&v22);

      v25._countAndFlagsBits = 32;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      String.append(_:)(v76);

      if (v18 > countAndFlagsBits[2])
      {
        break;
      }

      if (v20 != *(countAndFlagsBits + v18 + 31))
      {
        v26._countAndFlagsBits = 0x4C41204E4F494E55;
        v26._object = 0xEA0000000000204CLL;
        String.append(_:)(v26);
      }

      if (v18 == v19)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_35:

  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28 = v74;
  v29 = v75;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v31 = v67;
  v32 = specialized SQLiteStatement.init(database:query:)(v30, v28, v29);
  if (!v31)
  {
    v39 = v32;

    v40 = *(*(v39 + 16) + 32);
    v41 = v65;
    *v65 = v40;
    v42 = v60;
    v62(v41, v61, v60);
    v43 = v40;
    v44 = _dispatchPreconditionTest(_:)();
    v64(v41, v42);
    if (v44)
    {
      type metadata accessor for SQLiteRowIterator();
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 1;
      inited[2] = v39;
      inited[3] = 0;

      if (SQLiteRowIterator.next()())
      {
        v83 = SQLiteRow.getInt32(at:)(0);
        value = v83.value;
        is_nil = v83.is_nil;

        swift_setDeallocating();
        outlined consume of SQLiteError?(inited[3], inited[4], inited[5]);
        if (!is_nil)
        {
          v48 = *(*(v39 + 16) + 32);
          v49 = v65;
          *v65 = v48;
          v62(v49, v61, v42);
          v50 = v48;
          v51 = _dispatchPreconditionTest(_:)();
          v64(v49, v42);
          if (v51)
          {
            LOBYTE(v35) = value > 0;
            v52 = (v39 + 24);
            swift_beginAccess();
            v53 = *(v39 + 24);
            if (!v53)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

LABEL_55:
          __break(1u);
        }
      }

      else
      {

        swift_setDeallocating();
        outlined consume of SQLiteError?(inited[3], inited[4], inited[5]);
      }

      v54 = *(*(v39 + 16) + 32);
      v55 = v65;
      *v65 = v54;
      v62(v55, v61, v42);
      v56 = v54;
      v57 = _dispatchPreconditionTest(_:)();
      v64(v55, v42);
      if (v57)
      {
        v52 = (v39 + 24);
        swift_beginAccess();
        LOBYTE(v35) = 0;
        v53 = *(v39 + 24);
        if (!v53)
        {
LABEL_48:

          return v35 & 1;
        }

LABEL_47:
        sqlite3_finalize(v53);
        *v52 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_55;
  }

  if (one-time initialization token for boardStore != -1)
  {
LABEL_52:
    swift_once();
  }

  v33 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_3A860;
  swift_getErrorValue();
  v35 = Error.localizedDescription.getter();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  v38 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v33, &dword_0, v38, "Failed to check if database has data with error: %@", 51, 2, v34);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v34 + 32));
  swift_willThrow();
  return v35 & 1;
}

uint64_t closure #1 in static CRLBoardDataStore.performWriteWithDatabase(at:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = CRLBoardDataStore._openDatabase(isReadOnlyMode:)(0);
  if (!v3)
  {
    v10[7] = a3;
    __chkstk_darwin(result);
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v9 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CRLBoardDataStore and conformance CRLBoardDataStore, type metadata accessor for CRLBoardDataStore, &protocol conformance descriptor for CRLBoardDataStore);
    CRLStore._performWithTransaction(_:)(partial apply for closure #1 in closure #1 in static CRLBoardDataStore.performWriteWithDatabase(at:block:), v10, ObjectType, v9);
    return specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)();
  }

  return result;
}

void closure #3 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:)(uint64_t a1, uint64_t a2, void *a3)
{
  CRLBoardDataStore._sync_removeAllAccountData()();
  if (!v3)
  {
    CRLBoardDataStore._saveAccountIdentifierForFreeformDataclassAccount(accountIdentifier:)(a2, a3);
  }
}

uint64_t specialized CRLStore._setRawSchemaVersion(rawVersion:)(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v30 = *(v5 + 104);
  v30(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  v32 = 0;
  v33 = 0xE000000000000000;

  _StringGuts.grow(_:)(24);

  v32 = 0xD000000000000016;
  v33 = 0x800000000003EED0;
  v31 = a1;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = v32;
  v14 = v33;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v15 = specialized SQLiteStatement.init(database:query:)(v11, v13, v14);

  if (v2)
  {
    return result;
  }

  v17 = *(*(v15 + 16) + 32);
  *v7 = v17;
  v30(v7, v9, v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = v29;
  v29(v7, v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);

  LODWORD(v21) = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v20, v15);

  if (v21 != 101)
  {
    goto LABEL_7;
  }

  v21 = *(*(v15 + 16) + 32);
  *v7 = v21;
  v30(v7, v9, v4);
  v22 = v21;
  v9 = _dispatchPreconditionTest(_:)();
  v19(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    v24 = *(*(v15 + 16) + 32);
    *v7 = v24;
    v30(v7, v9, v4);
    v25 = v24;
    v26 = _dispatchPreconditionTest(_:)();
    v19(v7, v4);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v27 = *(v15 + 24);
  if (v27)
  {
    sqlite3_finalize(v27);
    *(v15 + 24) = 0;
  }
}

uint64_t specialized closure #1 in CRLStore._performWithTransaction(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  SQLTransaction.begin()();
  if (v6)
  {
    goto LABEL_2;
  }

  if ((a2() & 1) == 0)
  {
    v17 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
    v18 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v17, &dword_0, v18, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, &_swiftEmptyArrayStorage);
    SQLTransaction.rollback()();
    v14 = 0;
    return v14 & 1;
  }

  SQLTransaction.commit()();
  if (v16)
  {
LABEL_2:
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v7 = SQLiteError.localizedDescription.getter(v19, v20, v21);
      v9 = v8;
    }

    else
    {
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = v10;
    }

    v11 = *(a4 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v13 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v13, "Failed transactional database operation with error %@", 53, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    SQLTransaction.rollback()();
    swift_willThrow();
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t specialized closure #1 in CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = type metadata accessor for DispatchPredicate();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v48 = enum case for DispatchPredicate.onQueue(_:);
  if (!v11)
  {
    v30 = *(v8 + 104);
    goto LABEL_16;
  }

  v41 = v8;
  v42 = a3;
  v44 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database;
  v12 = v8 + 104;
  v47 = (v8 + 8);
  v43 = type metadata accessor for SQLiteStatement();
  v13 = (a1 + 40);
  v46 = v12;
  v40 = v12 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  while (1)
  {
    v15 = *(v13 - 1);
    v14 = *v13;
    swift_initStackObject();

    v17 = specialized SQLiteStatement.init(database:query:)(v16, v15, v14);

    if (v4)
    {
      return 1;
    }

    v18 = a2;
    v19 = *(*(v17 + 16) + 32);
    *v10 = v19;
    v20 = v49;
    v45 = *v46;
    v45(v10, v48, v49);
    v21 = v19;
    v22 = _dispatchPreconditionTest(_:)();
    v23 = *v47;
    (*v47)(v10, v20);
    if ((v22 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v24 = *(v17 + 16);

    v25 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v24, v17);

    if (v25 != 101)
    {
      break;
    }

    v26 = *(*(v17 + 16) + 32);
    *v10 = v26;
    v27 = v49;
    v45(v10, v48, v49);
    v28 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    v23(v10, v27);
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v29 = *(v17 + 24);
    if (v29)
    {
      sqlite3_finalize(v29);
      *(v17 + 24) = 0;
    }

    v13 += 2;
    --v11;
    a2 = v18;
    if (!v11)
    {
      v8 = v41;
      LOBYTE(a3) = v42;
      v30 = v45;
LABEL_16:
      v36 = *(a2 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
      *v10 = v36;
      v37 = v49;
      v30(v10, v48, v49);
      v38 = v36;
      LOBYTE(v36) = _dispatchPreconditionTest(_:)();
      (*(v8 + 8))(v10, v37);
      if (v36)
      {
        specialized CRLStore._setRawSchemaVersion(rawVersion:)(a3);
        return 1;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
  swift_allocError();
  *v31 = v25;
  *(v31 + 8) = 0xD000000000000020;
  *(v31 + 16) = 0x8000000000040660;
  swift_willThrow();
  v32 = *(*(v17 + 16) + 32);
  *v10 = v32;
  v33 = v49;
  v45(v10, v48, v49);
  v34 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v23(v10, v33);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v35 = *(v17 + 24);
  if (v35)
  {
    sqlite3_finalize(v35);
    *(v17 + 24) = 0;
  }

  return 1;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id specialized CRLBoardDataStore.init(dataDirectory:temporaryDirectory:sideStoreProvider:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v189 = a5;
  v200 = a2;
  v201 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URL();
  v202 = *(v7 - 8);
  v203 = v7;
  v8 = __chkstk_darwin(v7);
  v196 = v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v197 = v182 - v10;
  v199 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v195 = *(v199 - 8);
  __chkstk_darwin(v199);
  v194 = v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v192);
  v193 = v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v190 = v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_hasAttemptedVacuum] = 0;
  v15 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_logCategory;
  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.boardStore;
  *&a6[v15] = static OS_os_log.boardStore;
  v17 = &a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_storeName];
  *v17 = 0x7461446472616F62;
  *(v17 + 1) = 0xE900000000000061;
  v191 = v17;
  v18 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_userDefaults;
  v19 = objc_opt_self();
  v20 = v16;
  *&a6[v18] = [v19 standardUserDefaults];
  v21 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManagerLock;
  type metadata accessor for CRLUnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *v23 = 0;
  *(v22 + 16) = v23;
  atomic_thread_fence(memory_order_acq_rel);
  *&a6[v21] = v22;
  *&a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager] = 0;
  v188 = &a6[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersTableCreationSQLQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(241);
  v185 = "com.apple.freeform.store";
  v204 = a6;
  v24._object = 0x8000000000040A60;
  v24._countAndFlagsBits = 0xD000000000000011;
  v184 = 0xD000000000000011;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x737265646C6F66;
  v25._object = 0xE700000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x202020202820;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x696669746E656469;
  v27._object = 0xEA00000000007265;
  String.append(_:)(v27);
  v187 = "    CREATE TABLE ";
  v28._countAndFlagsBits = 0xD000000000000020;
  v28._object = 0x8000000000040A80;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 1635017060;
  v29._object = 0xE400000000000000;
  String.append(_:)(v29);
  v186 = "Y NOT NULL,     ";
  v30._object = 0x8000000000040AB0;
  v30._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x5F65726168736B63;
  v31._object = 0xEC00000061746164;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x20202C424F4C4220;
  v32._object = 0xEB00000000202020;
  String.append(_:)(v32);
  v33._object = 0x8000000000040AD0;
  v33._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x20202C424F4C4220;
  v34._object = 0xEB00000000202020;
  String.append(_:)(v34);
  v35._object = 0x800000000003F8F0;
  v35._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001ALL;
  v36._object = 0x800000000003FE80;
  String.append(_:)(v36);
  v206 = 0x4000000000000;
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x20202020202CLL;
  v38._object = 0xE600000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD00000000000002DLL;
  v39._object = 0x8000000000040070;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x800000000003FE80;
  String.append(_:)(v40);
  v206 = 0x4000000000000;
  v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x20202020202CLL;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000026;
  v43._object = 0x80000000000401E0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD00000000000001ALL;
  v44._object = 0x800000000003FE80;
  String.append(_:)(v44);
  v206 = 0x4000000000000;
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x20202020202CLL;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x656C746974;
  v47._object = 0xE500000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0x20202C5458455420;
  v48._object = 0xEB00000000202020;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD000000000000012;
  v49._object = 0x800000000003FBE0;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x2020204C41455220;
  v50._object = 0xEB00000000292020;
  String.append(_:)(v50);
  v51 = v208;
  v52 = v188;
  *v188 = v207;
  *(v52 + 1) = v51;
  v53 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(158);
  v54 = v185;
  v55._object = (v185 | 0x8000000000000000);
  v56 = v184;
  v55._countAndFlagsBits = v184;
  String.append(_:)(v55);
  v57._countAndFlagsBits = 0xD000000000000010;
  v188 = 0xD000000000000010;
  v57._object = 0x800000000003F1A0;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0x202020202820;
  v58._object = 0xE600000000000000;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0x696669746E656469;
  v59._object = 0xEA00000000007265;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0xD00000000000002ALL;
  v60._object = 0x8000000000040AF0;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0x737265646C6F66;
  v61._object = 0xE700000000000000;
  String.append(_:)(v61);
  v62._countAndFlagsBits = 10272;
  v62._object = 0xE200000000000000;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0x696669746E656469;
  v63._object = 0xEA00000000007265;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0xD000000000000019;
  v64._object = 0x8000000000040B20;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 1635017060;
  v65._object = 0xE400000000000000;
  String.append(_:)(v65);
  v66 = v186;
  v67._object = (v186 | 0x8000000000000000);
  v67._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 0xD000000000000026;
  v68._object = 0x80000000000401E0;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = 0x800000000003FE80;
  String.append(_:)(v69);
  v206 = 0x4000000000000;
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  v71._countAndFlagsBits = 0x292020202020;
  v71._object = 0xE600000000000000;
  String.append(_:)(v71);
  v72 = v208;
  *v53 = v207;
  *(v53 + 1) = v72;
  v73 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v74._object = (v54 | 0x8000000000000000);
  v74._countAndFlagsBits = v56;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0x64726F6365726B63;
  v75._object = 0xEE0065686361635FLL;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0x202020202820;
  v76._object = 0xE600000000000000;
  String.append(_:)(v76);
  v77._countAndFlagsBits = 0x695F64726F636572;
  v77._object = 0xE900000000000064;
  String.append(_:)(v77);
  v78._countAndFlagsBits = 0xD000000000000020;
  v79 = v187;
  v78._object = (v187 | 0x8000000000000000);
  String.append(_:)(v78);
  v80._countAndFlagsBits = 0x64695F656E6F7ALL;
  v80._object = 0xE700000000000000;
  String.append(_:)(v80);
  v81._object = (v66 | 0x8000000000000000);
  v81._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v81);
  v82._countAndFlagsBits = 0x64726F636572;
  v82._object = 0xE600000000000000;
  String.append(_:)(v82);
  v83._object = 0x8000000000040B40;
  v83._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v83);
  v84 = v208;
  *v73 = v207;
  *(v73 + 1) = v84;
  v85 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  v86._object = (v54 | 0x8000000000000000);
  v86._countAndFlagsBits = v56;
  String.append(_:)(v86);
  v87._countAndFlagsBits = 0x635F656E6F7A6B63;
  v87._object = 0xEC00000065686361;
  String.append(_:)(v87);
  v88._countAndFlagsBits = 0x202020202820;
  v88._object = 0xE600000000000000;
  String.append(_:)(v88);
  v89._countAndFlagsBits = 0x64695F656E6F7ALL;
  v89._object = 0xE700000000000000;
  String.append(_:)(v89);
  v90._countAndFlagsBits = 0xD000000000000020;
  v90._object = (v79 | 0x8000000000000000);
  String.append(_:)(v90);
  v91._countAndFlagsBits = 0x646574656C6564;
  v91._object = 0xE700000000000000;
  String.append(_:)(v91);
  v92._countAndFlagsBits = 0x52454745544E4920;
  v92._object = 0xEE0020202020202CLL;
  String.append(_:)(v92);
  v93._countAndFlagsBits = 0x646567727570;
  v93._object = 0xE600000000000000;
  String.append(_:)(v93);
  v94._countAndFlagsBits = 0x52454745544E4920;
  v94._object = 0xEE0020202020202CLL;
  String.append(_:)(v94);
  v95._countAndFlagsBits = 0xD000000000000028;
  v95._object = 0x8000000000040B60;
  String.append(_:)(v95);
  v96._object = 0xEE00292020202020;
  v96._countAndFlagsBits = 0x52454745544E4920;
  String.append(_:)(v96);
  v97 = v208;
  *v85 = v207;
  *(v85 + 1) = v97;
  v98 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  v99._object = (v54 | 0x8000000000000000);
  v99._countAndFlagsBits = v56;
  String.append(_:)(v99);
  v100._countAndFlagsBits = 0xD000000000000015;
  v100._object = 0x800000000003F1C0;
  String.append(_:)(v100);
  v101._countAndFlagsBits = 0x202020202820;
  v101._object = 0xE600000000000000;
  String.append(_:)(v101);
  v102._countAndFlagsBits = 0x695F64726F636572;
  v102._object = 0xE900000000000064;
  String.append(_:)(v102);
  v103._countAndFlagsBits = 0xD000000000000020;
  v103._object = (v79 | 0x8000000000000000);
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0x64695F656E6F7ALL;
  v104._object = 0xE700000000000000;
  String.append(_:)(v104);
  v105._object = (v66 | 0x8000000000000000);
  v105._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v105);
  v106._countAndFlagsBits = 0x745F64726F636572;
  v106._object = 0xEB00000000657079;
  String.append(_:)(v106);
  v107._object = 0x8000000000040B90;
  v107._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v107);
  v108 = v208;
  *v98 = v207;
  *(v98 + 1) = v108;
  v109 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery];
  *v109 = 0xD00000000000004FLL;
  *(v109 + 1) = 0x8000000000040BB0;
  v110 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery];
  *v110 = 0xD00000000000005DLL;
  *(v110 + 1) = 0x8000000000040C00;
  v111 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  v112._object = 0x8000000000040C60;
  v113 = v188;
  v112._countAndFlagsBits = v188;
  String.append(_:)(v112);
  v114._countAndFlagsBits = 0x736472616F62;
  v114._object = 0xE600000000000000;
  String.append(_:)(v114);
  v115._countAndFlagsBits = 0x4C4F432044444120;
  v115._object = 0xEC000000204E4D55;
  String.append(_:)(v115);
  v116._countAndFlagsBits = 0xD000000000000015;
  v116._object = 0x8000000000040C80;
  String.append(_:)(v116);
  v117._countAndFlagsBits = 0xD00000000000001CLL;
  v117._object = 0x8000000000040CA0;
  String.append(_:)(v117);
  v118 = v208;
  *v111 = v207;
  *(v111 + 1) = v118;
  v119 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v120._object = 0x8000000000040C60;
  v120._countAndFlagsBits = v113;
  String.append(_:)(v120);
  v121._countAndFlagsBits = 0x736472616F62;
  v121._object = 0xE600000000000000;
  String.append(_:)(v121);
  v122._countAndFlagsBits = 0x4C4F432044444120;
  v122._object = 0xEC000000204E4D55;
  String.append(_:)(v122);
  v123._countAndFlagsBits = 0xD00000000000001BLL;
  v123._object = 0x8000000000040CC0;
  String.append(_:)(v123);
  v124._countAndFlagsBits = 0xD00000000000001FLL;
  v124._object = 0x8000000000040CE0;
  String.append(_:)(v124);
  v125 = v208;
  *v119 = v207;
  *(v119 + 1) = v125;
  v126 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v127._object = 0x8000000000040C60;
  v127._countAndFlagsBits = v113;
  String.append(_:)(v127);
  v128._countAndFlagsBits = 0x74695F6472616F62;
  v128._object = 0xEB00000000736D65;
  String.append(_:)(v128);
  v129._countAndFlagsBits = 0x4C4F432044444120;
  v129._object = 0xEC000000204E4D55;
  String.append(_:)(v129);
  v130._countAndFlagsBits = 0xD00000000000001BLL;
  v130._object = 0x8000000000040CC0;
  String.append(_:)(v130);
  v131._countAndFlagsBits = 0xD00000000000001FLL;
  v131._object = 0x8000000000040CE0;
  String.append(_:)(v131);
  v132 = v208;
  *v126 = v207;
  *(v126 + 1) = v132;
  v133 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v134._object = 0x8000000000040C60;
  v134._countAndFlagsBits = v113;
  String.append(_:)(v134);
  v135._countAndFlagsBits = 0xD000000000000018;
  v135._object = 0x800000000003F200;
  String.append(_:)(v135);
  v136._countAndFlagsBits = 0x4C4F432044444120;
  v136._object = 0xEC000000204E4D55;
  String.append(_:)(v136);
  v137._countAndFlagsBits = 0xD00000000000001BLL;
  v137._object = 0x8000000000040CC0;
  String.append(_:)(v137);
  v138._countAndFlagsBits = 0xD00000000000001FLL;
  v138._object = 0x8000000000040CE0;
  String.append(_:)(v138);
  v139 = v208;
  *v133 = v207;
  *(v133 + 1) = v139;
  v140 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery];
  v207 = 0;
  v208 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v141._object = 0x8000000000040C60;
  v141._countAndFlagsBits = v113;
  String.append(_:)(v141);
  v142._countAndFlagsBits = 0x74695F6472616F62;
  v142._object = 0xEB00000000736D65;
  String.append(_:)(v142);
  v143._countAndFlagsBits = 0x4C4F432044444120;
  v143._object = 0xEC000000204E4D55;
  String.append(_:)(v143);
  v144._countAndFlagsBits = 0x6D6574695F627573;
  v144._object = 0xED0000657079745FLL;
  String.append(_:)(v144);
  v145._countAndFlagsBits = 0xD000000000000013;
  v145._object = 0x8000000000040D00;
  String.append(_:)(v145);
  v146 = v208;
  *v140 = v207;
  *(v140 + 1) = v146;
  v147 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery];
  *v147 = 0xD000000000000039;
  *(v147 + 1) = 0x8000000000040D20;
  v148 = v203;
  v149 = &v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery];
  *v149 = 0xD000000000000046;
  *(v149 + 1) = 0x8000000000040D60;
  v150 = *(v202 + 16);
  v188 = (v202 + 16);
  v187 = v150;
  (v150)(&v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_dataDirectory], v201, v148);
  v151 = v200;
  *&v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_temporaryDirectory] = v200;
  v152 = v151;
  *&v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastFetchResultsTime] = 0;
  v153 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue;
  v154 = v189;
  *&v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue] = v189;
  v184 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v155 = v152;
  v156 = v154;
  v207 = OS_dispatch_queue.label.getter();
  v208 = v157;
  v158._countAndFlagsBits = 0x646165722ELL;
  v158._object = 0xE500000000000000;
  String.append(_:)(v158);
  v182[1] = v207;
  v182[0] = v208;
  v159 = *&v204[v153];
  static DispatchQoS.unspecified.getter();
  v207 = &_swiftEmptyArrayStorage;
  v186 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v189 = lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LODWORD(v185) = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v183 = *(v195 + 104);
  v160 = v194;
  v183(v194);
  *&v204[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_readQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v161 = *&v204[v153];
  v162 = OS_dispatch_queue.label.getter();
  v164 = v163;

  v207 = v162;
  v208 = v164;
  v165._countAndFlagsBits = 0x65746972772ELL;
  v165._object = 0xE600000000000000;
  String.append(_:)(v165);
  v195 = v153;
  v166 = *&v204[v153];
  static DispatchQoS.unspecified.getter();
  v207 = &_swiftEmptyArrayStorage;
  v167 = v204;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v183)(v160, v185, v199);
  *&v167[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (v200)
  {
    v168 = v201;
    v169 = v197;
    if (one-time initialization token for inMemoryDatabaseURL != -1)
    {
      swift_once();
    }

    v170 = v203;
    v171 = __swift_project_value_buffer(v203, static SQLiteDatabase.inMemoryDatabaseURL);
    v172 = v187;
    (v187)(v169, v171, v170);
    v173 = v202;
  }

  else
  {
    v169 = v197;
    v168 = v201;
    URL.appendingPathComponent(_:)();
    v173 = v202;
    v170 = v203;
    v172 = v187;
  }

  v174 = *v191;
  v175 = v191[1];
  v176 = v196;
  v172(v196, v169, v170);
  v177 = *&v167[v195];
  type metadata accessor for SQLiteDatabase(0);
  swift_allocObject();

  *&v167[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database] = SQLiteDatabase.init(name:url:accessQueue:)(v174, v175, v176, v177);
  v178 = [objc_opt_self() mainBundle];
  v179 = *(v173 + 8);
  v179(v169, v170);
  *&v167[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_assetBundle] = v178;
  v205.receiver = v167;
  v205.super_class = ObjectType;
  v180 = objc_msgSendSuper2(&v205, "init");
  v179(v168, v170);
  return v180;
}

uint64_t specialized static CRLBoardDataStore.CRLBoardDataStoreMetadata.fromUserDefaults.getter(uint64_t a1)
{
  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.boardStore;
  v2 = static os_log_type_t.default.getter();
  v3 = _CRLLog(_:dso:type:format:_:)(v1, &dword_0, v2, "Populating CRLBoardDataStoreMetadata from userdefaults", 54, 2, &_swiftEmptyArrayStorage);
  v4 = CRLAppBundleIdentifier(v3);
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v6];

  if (v7)
  {
    v8 = [v7 BOOLForKey:@"CRLUserHasUnsyncedDataUserDefault"];
    v9 = @"CRLUserHasDataUserDefault";
    v10 = [v7 BOOLForKey:v9];

    if (v10)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0;
  }

  return v11 | v8;
}

uint64_t specialized static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)(uint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v42);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  outlined init with copy of TaskPriority?(a1, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    v40 = v7;
    type metadata accessor for CRLBoardDataStoreProvider();
    static CRLBoardDataStoreProvider.mainDataDirectory(legacyLocation:)(0, v17);
    v19 = v18(v10, 1, v11);
    v41 = 0;
    if (v19 != 1)
    {
      outlined destroy of TaskPriority?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v41 = 0;
    (*(v12 + 32))(v17, v10, v11);
  }

  (*(v12 + 16))(v15, v17, v11);
  v40 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore(0));
  v22 = specialized CRLBoardDataStore.init(dataDirectory:temporaryDirectory:sideStoreProvider:queue:)(v15, 0, 0, 0, v20, v21);

  __chkstk_darwin(v23);
  *(&v39 - 2) = v22;
  v25 = v24;
  v26 = v41;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v26)
  {
    (*(v12 + 8))(v17, v11);

    if (one-time initialization token for boardStore != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.boardStore;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = v30;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v29;
    *(inited + 40) = v31;
    v32 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v27, &dword_0, v32, "Failed to fetch data store metadata with error: %@", 50, 2, inited);
    swift_setDeallocating();
    v33 = __swift_destroy_boxed_opaque_existential_0((inited + 32));
    v34 = specialized static CRLBoardDataStore.CRLBoardDataStoreMetadata.fromUserDefaults.getter(v33);
    v35 = v34;
    v36 = (v34 >> 8) & 1;
  }

  else
  {
    (*(v12 + 8))(v17, v11);

    v35 = v47;
    v36 = BYTE1(v47);
  }

  if (v36)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  return v37 & 0xFFFFFFFE | v35 & 1;
}

uint64_t specialized static CRLBoardDataStore.dataStoreDataClassAction(_:)(unint64_t a1)
{
  if (a1 < 9)
  {
    return byte_3B066[a1];
  }

  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.dataclassOwner;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A860;
  v9 = a1;
  type metadata accessor for ACDataclassActionType(0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v3, &dword_0, v8, "Unknown action type: %@.", 24, 2, inited, v9);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  return 0;
}

void specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v30);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v29[3] = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v29 - v17;
  outlined init with copy of TaskPriority?(a1, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v18, v11, v12);
LABEL_6:
    (*(v13 + 16))(v16, v18, v12);
    v21 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v29[1] = "nc data was removed.";
    v29[2] = v21;
    static DispatchQoS.unspecified.getter();
    v38 = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
    v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v23 = objc_allocWithZone(type metadata accessor for CRLBoardDataStore(0));
    v24 = specialized CRLBoardDataStore.init(dataDirectory:temporaryDirectory:sideStoreProvider:queue:)(v16, 0, 0, 0, v22, v23);

    __chkstk_darwin(v25);
    v26 = v36;
    v29[-4] = v35;
    v29[-3] = v26;
    v29[-2] = v24;
    v28 = v27;
    OS_dispatch_queue.sync<A>(execute:)();
    (*(v13 + 8))(v18, v12);

    return;
  }

  type metadata accessor for CRLBoardDataStoreProvider();
  v20 = v37;
  static CRLBoardDataStoreProvider.mainDataDirectory(legacyLocation:)(0, v18);
  if (!v20)
  {
    v37 = 0;
    if (v19(v11, 1, v12) != 1)
    {
      outlined destroy of TaskPriority?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    goto LABEL_6;
  }

  if (v19(v11, 1, v12) != 1)
  {
    outlined destroy of TaskPriority?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

void specialized static CRLBoardDataStore.setDefaultToIndicateSyncDataWasRemoved()(uint64_t a1)
{
  v1 = CRLAppBundleIdentifier(a1);
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v8 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v3];

  if (v8)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.dataclassOwner;
    v5 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v4, &dword_0, v5, "Setting the user default to tell the app that sync data was removed.", 68, 2, &_swiftEmptyArrayStorage);
    [v8 setBool:1 forKey:@"CRLSyncDataWasRemovedUserDefault"];
  }

  else
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.dataclassOwner;
    v7 = static os_log_type_t.fault.getter();

    _CRLLog(_:dso:type:format:_:)(v6, &dword_0, v7, "Unable to access Freeform's defaults for setting CRLSyncDataWasRemovedUserDefault.", 82, 2, &_swiftEmptyArrayStorage);
  }
}

void specialized static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = ACAccount.crl_identifier.getter();
      v9 = v8;
      if (one-time initialization token for dataclassOwner != -1)
      {
        swift_once();
      }

      v10 = static OS_os_log.dataclassOwner;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v7;
      *(inited + 40) = v9;

      v12 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v12, "Saving account identifier: %@", 29, 2, inited);
      swift_setDeallocating();
      v13 = __swift_destroy_boxed_opaque_existential_0((inited + 32));
      __chkstk_darwin(v13);
      v25 = v7;
      v26 = v9;
      specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(a3, partial apply for closure #1 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:), v24);
    }

    else
    {
      v17 = ACAccount.crl_identifier.getter();
      v19 = v18;
      if (one-time initialization token for dataclassOwner != -1)
      {
        swift_once();
      }

      v20 = static OS_os_log.dataclassOwner;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_3A860;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;

      v22 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v20, &dword_0, v22, "Removing local data and saving account identifier: %@", 53, 2, v21);
      swift_setDeallocating();
      v23 = __swift_destroy_boxed_opaque_existential_0((v21 + 32));
      __chkstk_darwin(v23);
      v25 = v17;
      v26 = v19;
      specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(a3, partial apply for closure #3 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:), v24);
      if (!v3)
      {

        goto LABEL_19;
      }
    }

    return;
  }

  if (!a1)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.dataclassOwner;
    v6 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v6, "Leaving data behind.", 20, 2, &_swiftEmptyArrayStorage);
    return;
  }

  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.dataclassOwner;
  v15 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v14, &dword_0, v15, "Deleting all sync data.", 23, 2, &_swiftEmptyArrayStorage);
  specialized static CRLBoardDataStore.performWriteWithDatabase(at:block:)(a3, closure #2 in static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:), 0);
  if (!v3)
  {
LABEL_19:
    specialized static CRLBoardDataStore.setDefaultToIndicateSyncDataWasRemoved()(v16);
  }
}

unint64_t specialized CRLBoardDataStore.SchemaVersion.init(rawValue:)(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in CRLBoardDataStore.closeDatabase()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in CRLBoardDataStore.closeDatabase()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t sub_33250()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_25(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t partial apply for closure #1 in CRLBoardDataStore.closeDatabase(completion:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)();
  return v2(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized CRLBoardDataStore._closeDatabase(alsoCloseSideStore:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v4 = v5;
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v2 + 104);
  v7(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  if (v5)
  {
    if (one-time initialization token for boardStore == -1)
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
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v10, &dword_0, v11, "Closing the board database", 26, 2, &_swiftEmptyArrayStorage);
  v12 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  v13 = *(v12 + 32);
  *v4 = v13;
  v7(v4, v6, v1);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (v9)(v4, v1);
  if (v15)
  {

    specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v17, v12);

    result = swift_beginAccess();
    *(v12 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_336FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in CRLBoardDataStore.openDatabase()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return @objc closure #1 in CRLBoardDataStore.openDatabase()(v2, v3);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_32Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CRLBoardDataStore.openDatabase()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in CRLBoardDataStore.openDatabase()(a1);
}

uint64_t objectdestroy_35Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in CRLStore._performWithTransaction(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = specialized closure #1 in CRLStore._performWithTransaction(_:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), **(v1 + 40));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError()
{
  result = lazy protocol witness table cache variable for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError;
  if (!lazy protocol witness table cache variable for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLSQLSchemaVersionError and conformance CRLSQLSchemaVersionError);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed SQLiteStatement, @unowned Int) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for CRLBoardDataStore.Table(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardDataStore.Table(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBoardDataStore.SchemaVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRLBoardDataStore.SchemaVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ACAccount.crl_identifier.getter()
{
  v1 = inited;
  if ([inited aa_isAccountClass:AAAccountClassPrimary])
  {
    v2 = [inited aa_altDSID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    v2 = [v1 accountDescription];
    if (v2)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v6 = v2;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v10;
  *(inited + 32) = v11;
  *(inited + 40) = v8;
  v45 = objc_opt_self();
  LODWORD(v11) = [v45 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  specialized withVaList<A>(_:_:)(inited, &v46, "No stable account identifier found for %{public}@", 49, 2u);
  StaticString.description.getter("crl_identifier", 14, 2);
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/ACAccount_CRLAdditions.swift", 87, 2);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (one-time initialization token for crlAssert != -1)
  {
LABEL_36:
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_3AA20;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v11;
  v20 = type metadata accessor for NSString();
  *(v19 + 96) = v20;
  v21 = lazy protocol witness table accessor for type NSString and conformance NSObject();
  *(v19 + 72) = v12;
  *(v19 + 136) = v9;
  *(v19 + 144) = v10;
  *(v19 + 104) = v21;
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 152) = 17;
  v22 = v46;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v22;
  v23 = v12;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v18, &dword_0, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);

  v26 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v18, &dword_0, v26, "No stable account identifier found for %{public}@", 49, 2, inited);

  specialized withVaList<A>(_:_:)(inited, "No stable account identifier found for %{public}@");
  type metadata accessor for __VaListBuilder();
  v27 = swift_allocObject();
  v27[2] = 8;
  v27[3] = 0;
  v12 = v27 + 3;
  v27[4] = 0;
  v27[5] = 0;
  v28 = *(inited + 16);
  if (v28)
  {
    v15 = 0;
    v17 = inited + 32;
    v9 = (&stru_20 + 8);
    while (1)
    {
      v29 = (v17 + 40 * v15);
      v10 = v29[3];
      v11 = v29[4];
      inited = __swift_project_boxed_opaque_existential_1(v29, v10);
      v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v31 = *v12;
      v32 = *(v30 + 16);
      v33 = __OFADD__(*v12, v32);
      v34 = *v12 + v32;
      if (v33)
      {
        goto LABEL_33;
      }

      v10 = v30;
      inited = v27[4];
      if (inited >= v34)
      {
        goto LABEL_25;
      }

      if (inited + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v11 = v27[5];
      if (2 * inited > v34)
      {
        v34 = 2 * inited;
      }

      v27[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v35 = swift_slowAlloc();
      v27[5] = v35;
      if (v11)
      {
        break;
      }

LABEL_26:
      if (!v35)
      {
        __break(1u);
        goto LABEL_38;
      }

      v37 = *(v10 + 16);
      if (v37)
      {
        v38 = (v10 + 32);
        v39 = *v12;
        while (1)
        {
          v40 = *v38++;
          *&v35[8 * v39] = v40;
          v39 = *v12 + 1;
          if (__OFADD__(*v12, 1))
          {
            break;
          }

          *v12 = v39;
          if (!--v37)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_10:

      if (++v15 == v28)
      {
        goto LABEL_38;
      }
    }

    if (v35 != v11 || v35 >= &v11[8 * v31])
    {
      memmove(v35, v11, 8 * v31);
    }

    inited = v27;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_25:
    v35 = v27[5];
    goto LABEL_26;
  }

LABEL_38:
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter("crl_identifier", 14, 2);
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/ACAccount_CRLAdditions.swift", 87, 2);
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter("No stable account identifier found for %{public}@", 49, 2);
  v44 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v42 file:v43 lineNumber:17 isFatal:1 format:v44 args:v41];

  CRLCrashBreakpoint();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t CRLStore._performWithTransaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = (*(a4 + 48))(a3, a4);
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = *(a4 + 40);
    v16 = v15(a3, a4);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    v18 = v15(a3, a4);
    __chkstk_darwin(v18);
    v20[-6] = a3;
    v20[-5] = a4;
    v20[-4] = inited;
    v20[-3] = a1;
    v20[-2] = a2;
    v20[-1] = v4;
    v19 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(partial apply for closure #1 in CRLStore._performWithTransaction(_:), &v20[-8]);

    swift_setDeallocating();

    return v19 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in CRLStore._performWithTransaction(_:)(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X8>)
{
  SQLTransaction.begin()();
  if (!v8)
  {
    if ((a1() & 1) == 0)
    {
      v17 = (*(a3 + 56))(a2, a3);
      v18 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v17, &dword_0, v18, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, &_swiftEmptyArrayStorage);

      SQLTransaction.rollback()();
      *a4 = 0;
      return;
    }

    SQLTransaction.commit()();
    if (!v16)
    {
      *a4 = 1;
      return;
    }
  }

  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v9 = SQLiteError.localizedDescription.getter(v19, v20, v21);
    v11 = v10;
  }

  else
  {
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = v12;
  }

  v13 = (*(a3 + 56))(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A860;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v15 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v13, &dword_0, v15, "Failed transactional database operation with error %@", 53, 2, inited);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  SQLTransaction.rollback()();
  swift_willThrow();
}

uint64_t getEnumTagSinglePayload for CRLSQLSchemaVersionError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CRLSQLSchemaVersionError(uint64_t result, int a2, int a3)
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

void ___sendCategoryAddedNotification_block_invoke_cold_2(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "void _sendCategoryAddedNotification(NSString *__strong)_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLLog.m";
  v7 = 1024;
  v8 = 151;
  v9 = 2082;
  v10 = "category";
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void ___sendCategoryAddedNotification_block_invoke_cold_4(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void CRLAdjustSelectionRangeForChangedRange_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected selectionRange to start within changingRange", v2, v3, v4, v5);
}

void CRLAdjustSelectionRangeForChangedRange_cold_6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad delta passed to CRLAdjustSelectionRangeForChangedRange", v2, v3, v4, v5);
}

void CRLAdjustSelectionRangeForChangedRange_cold_10()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad selectionRange passed to CRLAdjustSelectionRangeForChangedRange", v2, v3, v4, v5);
}

void CRLAdjustSelectionRangeForChangedRange_cold_14()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0(&dword_0, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad changingRange passed to CRLAdjustSelectionRangeForChangedRange", v2, v3, v4, v5);
}

void CRLVersionFromNSString_cold_2(int a1)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)";
  v5 = 2082;
  OUTLINED_FUNCTION_3_0();
  v6 = 172;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Version should consist of 3 numbers separated by '.'", v2, 0x22u);
}

void CRLVersionFromNSString_cold_4(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, 0x12u);
}

void CRLVersionFromNSString_cold_5()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_18);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_21);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_6()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_11);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_14);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_7()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_31);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_34);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_25);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  }

  OUTLINED_FUNCTION_8();
  if (!v1)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_28);
  }

  if (OUTLINED_FUNCTION_4_1())
  {
    v8 = v0;
    v9 = [OUTLINED_FUNCTION_13() packedBacktraceString];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
  }

  [OUTLINED_FUNCTION_7() stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_12() stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [OUTLINED_FUNCTION_6_0() handleFailureInFunction:? file:? lineNumber:? isFatal:? description:?];
}

void CRLVersionFromNSString_cold_9(void *a1, void *a2)
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_43);
  }

  if (OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_46);
  }

  if (OUTLINED_FUNCTION_9())
  {
    v11 = v2;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
  }

  *a2 = 0;
  *a1 = "Out-of-bounds type assignment was clamped to min";
}

void CRLVersionFromNSString_cold_10(void *a1, void *a2)
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_37);
  }

  if (OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
  }

  OUTLINED_FUNCTION_14();
  if (!v5)
  {
    dispatch_once(&CRLAssertCat_init_token, &__block_literal_global_40);
  }

  if (OUTLINED_FUNCTION_9())
  {
    v11 = v2;
    v12 = +[CRLAssertionHandler packedBacktraceString];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
  }

  *a2 = 0xFFFFFFFFLL;
  *a1 = "Out-of-bounds type assignment was clamped to max";
}

void __CRLAppBundleIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppBundleIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App bundle identifier (%@) has unexpected prefix.", &v0, 0xCu);
}

void __CRLAppGroupIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppGroupIdentifier_identifier;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "App group identifier (%@) has unexpected prefix.", &v0, 0xCu);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}