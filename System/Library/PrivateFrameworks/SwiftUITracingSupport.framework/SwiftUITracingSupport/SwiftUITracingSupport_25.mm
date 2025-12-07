void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, unsigned __int8 a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(70, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1174405120;
    }

    else
    {
      v35 = v16 | 0x46000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_TransactionAppend(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v42 = v50;
            v43 = v51;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v40, v42, v45, &protocol witness table for T_TransactionAppend, v43);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_TransactionAppend);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 70;
  }

  else
  {
    v20 = 2118;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 21)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(69, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1157627904;
    }

    else
    {
      v35 = v16 | 0x45000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_TransactionEnqueue(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v42 = v50;
            v43 = v51;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v40, v42, v45, &protocol witness table for T_TransactionEnqueue, v43);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_TransactionEnqueue);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 69;
  }

  else
  {
    v20 = 2117;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 21)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v58 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v49[0] = -1;
    pthread_threadid_np(0, v49);
    v10 = v49[0];
    if (v49[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v49[0] != v2[8])
    {
      v2[8] = v49[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(84, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v49[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1409286144;
    }

    else
    {
      v35 = v16 | 0x54000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_AnimationBegin(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 40)
        {
          v42 = *(result + 16);
          v56[0] = *result;
          v56[1] = v42;
          v57 = *(result + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v54, v49);
            v43 = v51;
            v44 = v52;
            v45 = __swift_project_boxed_opaque_existential_1(v49, v51);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v6, &type metadata for Trace.SwiftUI, v40, v43, v46, &protocol witness table for T_AnimationBegin, v44);
            __swift_destroy_boxed_opaque_existential_1(v49);
            goto LABEL_54;
          }

          v55 = 0;
          memset(v54, 0, sizeof(v54));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v54, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_AnimationBegin);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 84;
  }

  else
  {
    v20 = 2132;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v48 = v5;
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v56[0] = v47;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v49 = xmmword_26C32DAD0;
      v50 = 1;
      v51 = 0;
      v52 = 0;
      v53 = 512;
      v24 = T_TracepointID.describe(state:)(v49, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v56);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D69EAB0](v47, -1, -1);
      v27 = v23;
      v5 = v48;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 57)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v58 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v49[0] = -1;
    pthread_threadid_np(0, v49);
    v10 = v49[0];
    if (v49[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v49[0] != v2[8])
    {
      v2[8] = v49[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(89, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v49[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1493172224;
    }

    else
    {
      v35 = v16 | 0x59000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_AnimationRetarget(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 40)
        {
          v42 = *(result + 16);
          v56[0] = *result;
          v56[1] = v42;
          v57 = *(result + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v54, v49);
            v43 = v51;
            v44 = v52;
            v45 = __swift_project_boxed_opaque_existential_1(v49, v51);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v6, &type metadata for Trace.SwiftUI, v40, v43, v46, &protocol witness table for T_AnimationRetarget, v44);
            __swift_destroy_boxed_opaque_existential_1(v49);
            goto LABEL_54;
          }

          v55 = 0;
          memset(v54, 0, sizeof(v54));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v54, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_AnimationRetarget);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 89;
  }

  else
  {
    v20 = 2137;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v48 = v5;
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v56[0] = v47;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v49 = xmmword_26C32DAD0;
      v50 = 1;
      v51 = 0;
      v52 = 0;
      v53 = 512;
      v24 = T_TracepointID.describe(state:)(v49, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v56);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D69EAB0](v47, -1, -1);
      v27 = v23;
      v5 = v48;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 57)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(29, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 486539264;
    }

    else
    {
      v35 = v16 | 0x1D000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_GraphNeedsUpdate(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v42 = v50;
            v43 = v51;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v40, v42, v45, &protocol witness table for T_GraphNeedsUpdate, v43);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_GraphNeedsUpdate);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 29;
  }

  else
  {
    v20 = 2077;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 25)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(47, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 788529152;
    }

    else
    {
      v35 = v16 | 0x2F000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_NodeMarkValue(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v42 = v50;
            v43 = v51;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v40, v42, v45, &protocol witness table for T_NodeMarkValue, v43);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_NodeMarkValue);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 47;
  }

  else
  {
    v20 = 2095;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 21)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t result, unsigned __int8 a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    return;
  }

  v6 = v2;
  if ((*(v2[3] + 49) & 1) == 0)
  {
    return;
  }

  v8 = a2;
  v9 = v2[14];
  if ((a2 & 4) == 0)
  {
    v48[0] = -1;
    pthread_threadid_np(0, v48);
    v10 = v48[0];
    if (v48[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v2[9] & 1) != 0 || v48[0] != v2[8])
    {
      v2[8] = v48[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v10);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v11 = mach_continuous_time();
    }

    else
    {
      v11 = mach_absolute_time();
    }

    v9 = v11;
  }

  if (*(v2[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v3 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v3 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v13 = v2[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v2 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(80, 1, v13, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v48[0];
  }

  v15 = v6[14];
  v16 = v9 - v15;
  v17 = v9 < v15;
  if (*(v6[3] + 49) != 1)
  {
    if (v17)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
      v35 = 1342177280;
    }

    else
    {
      v35 = v16 | 0x50000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v9;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_ActionEnqueue(0);
      v40 = v39;
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        if (v40 && (*(v41 + 24))(v40, v41) != 8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v53, v48);
            v42 = v50;
            v43 = v51;
            v44 = __swift_project_boxed_opaque_existential_1(v48, v50);
            v45 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v44, v6, &type metadata for Trace.SwiftUI, v40, v42, v45, &protocol witness table for T_ActionEnqueue, v43);
            __swift_destroy_boxed_opaque_existential_1(v48);
            goto LABEL_54;
          }

          v54 = 0;
          memset(v53, 0, sizeof(v53));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v53, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_ActionEnqueue);
LABEL_54:
    ++v6[7];
    return;
  }

  if (v17)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v2 = v6[7];
  if ((v8 & 1) != 0 && v16)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v5 = v19;
  LOBYTE(v4) = v18;
  if ((v8 & 2) != 0)
  {
    v20 = 80;
  }

  else
  {
    v20 = 2128;
  }

  v8 = v20 & 0xFFF00FFF | (v18 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v21 = readingDebugLog;
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v47 = v5;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v53[0] = v46;
      *v23 = 134218498;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2080;
      *v48 = xmmword_26C32DAD0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      v52 = 512;
      v24 = T_TracepointID.describe(state:)(v48, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v53);

      *(v23 + 14) = v26;
      *(v23 + 22) = 1024;
      *(v23 + 24) = v3;
      _os_log_impl(&dword_26C161000, v21, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69EAB0](v46, -1, -1);
      v27 = v23;
      v5 = v47;
      MEMORY[0x26D69EAB0](v27, -1, -1);
    }

LABEL_33:
    v2 = v6[4];
    if (!v2[7])
    {
      break;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_46;
    }

    v28 = v2[4];
    LODWORD(v29) = *(v2 + 12);
    v30 = v29 | (*(v2 + 52) << 32);
    if (!v28)
    {
      if (*(v2 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v34 = CircularBuffer.Transaction.begin()() + 4;
      v29 = *(v2 + 12);
      v30 = v29 | (*(v2 + 52) << 32);
      goto LABEL_47;
    }

    v31 = v2[5] - v28;
    v32 = v31 < v29;
    v33 = v31 - v29;
    if (v32)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v33 < 25)
    {
      goto LABEL_45;
    }

    v34 = 4;
LABEL_47:
    if (BYTE4(v30) == 2)
    {
      goto LABEL_71;
    }

    *(v2[4] + v29) = v8;
    *(v2 + 12) = v29 + 4;
    v36 = CircularBuffer.Transaction.write(size:)(v5, v4) + v34;
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(v2 + 52) == 2)
    {
      goto LABEL_72;
    }

    v37 = *(v2 + 12);
    *(v2[4] + v37) = v3;
    *(v2 + 12) = v37 + 4;
    v38 = __OFADD__(v36, 4);
    v36 += 4;
    if (!v38)
    {
LABEL_51:
      v6[15] += v36;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

{
  v47[1] = *MEMORY[0x277D85DE8];
  if (*v2 == 1)
  {
    v5 = v2;
    if (*(v2[3] + 49) != 1)
    {
      v6 = a2;
      v7 = v2[14];
      if (!prepareTrace && (a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v8 = mach_continuous_time();
        }

        else
        {
          v8 = mach_absolute_time();
        }

        v7 = v8;
      }

      if (*(v2[3] + 49) == 1 && (v6 & 2) == 0)
      {
        v10 = specialized Trace_Handle.writtenBacktrace()();
      }

      else
      {
        v10 = 0;
      }

      v11 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      if (tracepointAssertion.value._rawValue)
      {
        v3 = v2[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v42 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(41, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v42;
      }

      v13 = v2[14];
      v14 = v7 - v13;
      v15 = v7 < v13;
      if (*(v2[3] + 49) == 1)
      {
        if (!v15)
        {
          v3 = v2[7];
          if ((v6 & 1) == 0 || !v14)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v17;
            LOBYTE(v11) = v16;
            if ((v6 & 2) != 0)
            {
              v18 = 41;
            }

            else
            {
              v18 = 2089;
            }

            v6 = v18 & 0xFFF00FFF | (v16 << 12);
            if (!readingDebug)
            {
LABEL_28:
              v26 = v5[4];
              if (!*(v26 + 56))
              {
                __break(1u);
                goto LABEL_59;
              }

              if (*(v26 + 52) == 2)
              {
                goto LABEL_41;
              }

              v27 = *(v26 + 32);
              LODWORD(v28) = *(v26 + 48);
              v29 = v28 | (*(v26 + 52) << 32);
              if (v27)
              {
                v30 = *(v26 + 40) - v27;
                v31 = v30 < v28;
                v32 = v30 - v28;
                if (!v31)
                {
                  if (v32 >= 25)
                  {
                    v33 = 4;
                    goto LABEL_42;
                  }

                  goto LABEL_40;
                }

                __break(1u);
              }

              else if (!*(v26 + 48))
              {
LABEL_40:
                CircularBuffer.Transaction.commit()();
LABEL_41:
                v33 = CircularBuffer.Transaction.begin()() + 4;
                v28 = *(v26 + 48);
                v29 = v28 | (*(v26 + 52) << 32);
LABEL_42:
                if (BYTE4(v29) != 2)
                {
                  *(*(v26 + 32) + v28) = v6;
                  *(v26 + 48) = v28 + 4;
                  v36 = CircularBuffer.Transaction.write(size:)(v4, v11) + v33;
                  if (!v10)
                  {
                    goto LABEL_48;
                  }

                  v35 = result;
                  if (*(v26 + 52) != 2)
                  {
                    v37 = *(v26 + 48);
                    *(*(v26 + 32) + v37) = v10;
                    *(v26 + 48) = v37 + 4;
                    v38 = __OFADD__(v36, 4);
                    v36 += 4;
                    if (!v38)
                    {
                      goto LABEL_49;
                    }

                    __break(1u);
LABEL_48:
                    v35 = result;
LABEL_49:
                    v5[15] += v36;
LABEL_50:
                    v5[14] = v7;
                    specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_NodeSetValueExtendedV0);
                    ++v5[7];
                    return;
                  }

LABEL_60:
                  __break(1u);
                  return;
                }

LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

              __break(1u);
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_26:
              v19 = readingDebugLog;
              v20 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v19, v20))
              {
                v40 = v4;
                v21 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                v47[0] = v39;
                *v21 = 134218498;
                *(v21 + 4) = v3;
                *(v21 + 12) = 2080;
                v42 = xmmword_26C32DAD0;
                v43 = 1;
                v44 = 0;
                v45 = 0;
                v46 = 512;
                v22 = T_TracepointID.describe(state:)(&v42, v6);
                v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v47);

                *(v21 + 14) = v24;
                *(v21 + 22) = 1024;
                *(v21 + 24) = v10;
                _os_log_impl(&dword_26C161000, v19, v20, "w %ld: %s, back: %u", v21, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v25 = v21;
                v4 = v40;
                MEMORY[0x26D69EAB0](v25, -1, -1);
              }

              goto LABEL_28;
            }

LABEL_55:
            swift_once();
            goto LABEL_26;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        __break(1u);
      }

      else if (!v15)
      {
        if (v14 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v34 = 687865856;
        }

        else
        {
          v34 = v14 | 0x29000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v34, type metadata accessor for T_TracepointIDV0);
        v35 = result;
        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_54;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t result, uint64_t a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(81, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x51;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1358954496;
        }

        else
        {
          v31 = v13 | 0x51000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_ActionStart(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_ActionStart, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_ActionStart);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(82, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x52;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1375731712;
        }

        else
        {
          v31 = v13 | 0x52000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_ActionFinish(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_ActionFinish, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_ActionFinish);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(83, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x53;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 25)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1392508928;
        }

        else
        {
          v31 = v13 | 0x53000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_ActionGestureAttribute(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 8)
            {
              v48 = result;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_ActionGestureAttribute, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, type metadata accessor for T_ActionGestureAttribute);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v6 = v2[3];
    if (*(v6 + 49))
    {
      v8 = v2[14];
      if (prepareTrace)
      {
        v9 = v2[14];
      }

      else
      {
        v9 = v2[14];
        if ((a2 & 1) == 0)
        {
          v10 = a2;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v9 = v11;
          a2 = v10;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v3 = v5[7];
        v4 = a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v41 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(95, 1, v3, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v41;

        LOBYTE(a2) = v4;
      }

      v13 = v9 - v8;
      if (*(v6 + 49) == 1)
      {
        if (v9 >= v8)
        {
          v3 = v5[7];
          if ((a2 & 1) == 0 || !v13)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v14;
            LOBYTE(v6) = v15;
            LODWORD(v8) = (v15 << 12) | 0x5F;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v16 = readingDebugLog;
              v17 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v17))
              {
                v40 = v4;
                v18 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v46[0] = v39;
                *v18 = 134218498;
                *(v18 + 4) = v3;
                *(v18 + 12) = 2080;
                v41 = xmmword_26C32DAD0;
                v42 = 1;
                v43 = 0;
                v44 = 0;
                v45 = 512;
                v19 = T_TracepointID.describe(state:)(&v41, v8);
                v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v46);

                *(v18 + 14) = v21;
                *(v18 + 22) = 1024;
                *(v18 + 24) = 0;
                _os_log_impl(&dword_26C161000, v16, v17, "w %ld: %s, back: %u", v18, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v39);
                MEMORY[0x26D69EAB0](v39, -1, -1);
                v22 = v18;
                v4 = v40;
                MEMORY[0x26D69EAB0](v22, -1, -1);
              }

LABEL_20:
              v23 = v5[4];
              if (*(v23 + 56))
              {
                if (*(v23 + 52) == 2)
                {
LABEL_33:
                  v30 = CircularBuffer.Transaction.begin()() + 4;
                  v25 = *(v23 + 48);
                  v26 = v25 | (*(v23 + 52) << 32);
LABEL_34:
                  if (BYTE4(v26) != 2)
                  {
                    *(*(v23 + 32) + v25) = v8;
                    *(v23 + 48) = v25 + 4;
                    v5[15] += CircularBuffer.Transaction.write(size:)(v4, v6) + v30;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v24 = *(v23 + 32);
                LODWORD(v25) = *(v23 + 48);
                v26 = v25 | (*(v23 + 52) << 32);
                if (v24)
                {
                  v27 = *(v23 + 40) - v24;
                  v28 = v27 < v25;
                  v29 = v27 - v25;
                  if (!v28)
                  {
                    if (v29 >= 23)
                    {
                      v30 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v23 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v9 >= v8)
      {
        if (v13 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v9, type metadata accessor for T_TimeSync);
          v31 = 1593835520;
        }

        else
        {
          v31 = v13 | 0x5F000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v31, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v5[14] = v9;
        if ((*(v5[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_RecordNamedProperty(0);
          v33 = v32;
          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            if (v33 && (*(v34 + 24))(v33, v34) != 6)
            {
              v48 = result;
              v49 = result >> 16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v46, &v41);
                v35 = v43;
                v36 = v44;
                v37 = __swift_project_boxed_opaque_existential_1(&v41, v43);
                v38 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v37, v5, &type metadata for Trace.SwiftUI, v33, v35, v38, &protocol witness table for T_RecordNamedProperty, v36);
                __swift_destroy_boxed_opaque_existential_1(&v41);
                goto LABEL_38;
              }

              v47 = 0;
              memset(v46, 0, sizeof(v46));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result & 0xFFFFFFFFFFFFLL);
LABEL_38:
        ++v5[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(__uint64_t result, __int16 a2, unsigned __int8 a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v50[0] = result;
  LOWORD(v50[1]) = a2;
  if (*v3 != 1)
  {
    return;
  }

  v6 = v3;
  if ((*(v3[3] + 49) & 1) == 0)
  {
    return;
  }

  v7 = result;
  v8 = a3;
  v9 = *(v50 + 2);
  v10 = v3[14];
  if ((a3 & 4) == 0)
  {
    v50[0] = -1;
    pthread_threadid_np(0, v50);
    v11 = v50[0];
    if (v50[0] == -1)
    {
      __break(1u);
      goto LABEL_63;
    }

    if ((v3[9] & 1) != 0 || v50[0] != v3[8])
    {
      v3[8] = v50[0];
      *(v3 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v11);
    }
  }

  if (!prepareTrace && (v8 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v12 = mach_continuous_time();
    }

    else
    {
      v12 = mach_absolute_time();
    }

    v10 = v12;
  }

  if (*(v3[3] + 49) == 1 && (v8 & 2) == 0)
  {
    v4 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v4 = 0;
  }

  v5 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v14 = v3[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    v3 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(72, 1, v14, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v50[0];
  }

  v16 = v6[14];
  v17 = v10 - v16;
  v18 = v10 < v16;
  if (*(v6[3] + 49) != 1)
  {
    if (v18)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v17 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
      v36 = 1207959552;
    }

    else
    {
      v36 = v17 | 0x48000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v36, type metadata accessor for T_TracepointIDV0);
LABEL_52:
    v6[14] = v10;
    if ((*(v6[3] + 49) & 1) == 0)
    {
      type metadata accessor for T_ViewGraphRootValueChangeV2(0);
      v41 = v40;
      v42 = swift_conformsToProtocol2();
      if (v42)
      {
        if (v41 && (*(v42 + 24))(v41, v42) != 10)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v55, v50);
            v43 = v52;
            v44 = v53;
            v45 = __swift_project_boxed_opaque_existential_1(v50, v52);
            v46 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v45, v6, &type metadata for Trace.SwiftUI, v41, v43, v46, &protocol witness table for T_ViewGraphRootValueChangeV2, v44);
            __swift_destroy_boxed_opaque_existential_1(v50);
            goto LABEL_54;
          }

          v56 = 0;
          memset(v55, 0, sizeof(v55));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v55, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    LOWORD(v50[0]) = v7;
    *(v50 + 2) = v9;
    specialized Trace_Handle.write<A>(struct:)(v50[0], SHIWORD(v9));
LABEL_54:
    ++v6[7];
    return;
  }

  if (v18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v3 = v6[7];
  if ((v8 & 1) != 0 && v17)
  {
    goto LABEL_66;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v49 = v20;
  LOBYTE(v5) = v19;
  if ((v8 & 2) != 0)
  {
    v21 = 72;
  }

  else
  {
    v21 = 2120;
  }

  v8 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v48 = v9;
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v55[0] = v47;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v50 = xmmword_26C32DAD0;
      v51 = 1;
      v52 = 0;
      v53 = 0;
      v54 = 512;
      v25 = T_TracepointID.describe(state:)(v50, v8);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v55);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v4;
      _os_log_impl(&dword_26C161000, v22, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x26D69EAB0](v47, -1, -1);
      v28 = v24;
      v9 = v48;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_33:
    v3 = v6[4];
    if (!v3[7])
    {
      break;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_46;
    }

    v29 = v3[4];
    LODWORD(v30) = *(v3 + 12);
    v31 = v30 | (*(v3 + 52) << 32);
    if (!v29)
    {
      if (*(v3 + 12))
      {
        goto LABEL_69;
      }

LABEL_45:
      CircularBuffer.Transaction.commit()();
LABEL_46:
      v35 = CircularBuffer.Transaction.begin()() + 4;
      v30 = *(v3 + 12);
      v31 = v30 | (*(v3 + 52) << 32);
      goto LABEL_47;
    }

    v32 = v3[5] - v29;
    v33 = v32 < v30;
    v34 = v32 - v30;
    if (v33)
    {
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v34 < 27)
    {
      goto LABEL_45;
    }

    v35 = 4;
LABEL_47:
    if (BYTE4(v31) == 2)
    {
      goto LABEL_71;
    }

    *(v3[4] + v30) = v8;
    *(v3 + 12) = v30 + 4;
    v37 = CircularBuffer.Transaction.write(size:)(v49, v5) + v35;
    if (!v4)
    {
      goto LABEL_51;
    }

    if (*(v3 + 52) == 2)
    {
      goto LABEL_72;
    }

    v38 = *(v3 + 12);
    *(v3[4] + v38) = v4;
    *(v3 + 12) = v38 + 4;
    v39 = __OFADD__(v37, 4);
    v37 += 4;
    if (!v39)
    {
LABEL_51:
      v6[15] += v37;
      goto LABEL_52;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, int a2, uint64_t a3)
{
  *&v43 = result;
  DWORD2(v43) = a2;
  if (*v3 == 1)
  {
    v6 = v3;
    v7 = v3[3];
    if (*(v7 + 49))
    {
      v8 = result;
      v9 = *(&v43 + 4);
      v10 = v3[14];
      if (prepareTrace)
      {
        v11 = v3[14];
      }

      else
      {
        v11 = v3[14];
        if ((a3 & 1) == 0)
        {
          v12 = a3;
          if (kdebug_using_continuous_time())
          {
            v13 = mach_continuous_time();
          }

          else
          {
            v13 = mach_absolute_time();
          }

          v11 = v13;
          a3 = v12;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v4 = v6[7];
        v5 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v43 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(87, 1, v4, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v43;

        LOBYTE(a3) = v5;
      }

      v15 = v11 - v10;
      if (*(v7 + 49) == 1)
      {
        if (v11 >= v10)
        {
          v4 = v6[7];
          if ((a3 & 1) == 0 || !v15)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v5 = v16;
            LOBYTE(v7) = v17;
            LODWORD(v10) = (v17 << 12) | 0x57;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v18 = readingDebugLog;
              v19 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v18, v19))
              {
                v42 = v5;
                v20 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                *&v48[0] = v41;
                *v20 = 134218498;
                *(v20 + 4) = v4;
                *(v20 + 12) = 2080;
                v43 = xmmword_26C32DAD0;
                v44 = 1;
                v45 = 0;
                v46 = 0;
                v47 = 512;
                v21 = T_TracepointID.describe(state:)(&v43, v10);
                v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v48);

                *(v20 + 14) = v23;
                *(v20 + 22) = 1024;
                *(v20 + 24) = 0;
                _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v41);
                MEMORY[0x26D69EAB0](v41, -1, -1);
                v24 = v20;
                v5 = v42;
                MEMORY[0x26D69EAB0](v24, -1, -1);
              }

LABEL_20:
              v25 = v6[4];
              if (*(v25 + 56))
              {
                if (*(v25 + 52) == 2)
                {
LABEL_33:
                  v32 = CircularBuffer.Transaction.begin()() + 4;
                  v27 = *(v25 + 48);
                  v28 = v27 | (*(v25 + 52) << 32);
LABEL_34:
                  if (BYTE4(v28) != 2)
                  {
                    *(*(v25 + 32) + v27) = v10;
                    *(v25 + 48) = v27 + 4;
                    v6[15] += CircularBuffer.Transaction.write(size:)(v5, v7) + v32;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v26 = *(v25 + 32);
                LODWORD(v27) = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
                if (v26)
                {
                  v29 = *(v25 + 40) - v26;
                  v30 = v29 < v27;
                  v31 = v29 - v27;
                  if (!v30)
                  {
                    if (v31 >= 29)
                    {
                      v32 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v25 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v11 >= v10)
      {
        if (v15 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
          v33 = 1459617792;
        }

        else
        {
          v33 = v15 | 0x57000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v6[14] = v11;
        if ((*(v6[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationScheduleTick(0);
          v35 = v34;
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            if (v35 && (*(v36 + 24))(v35, v36) != 12)
            {
              v50 = v8;
              v51 = v9;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v48, &v43);
                v37 = v45;
                v38 = v46;
                v39 = __swift_project_boxed_opaque_existential_1(&v43, v45);
                v40 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v39, v6, &type metadata for Trace.SwiftUI, v35, v37, v40, &protocol witness table for T_AnimationScheduleTick, v38);
                __swift_destroy_boxed_opaque_existential_1(&v43);
                goto LABEL_38;
              }

              v49 = 0;
              memset(v48, 0, sizeof(v48));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v48, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        LODWORD(v43) = v8;
        *(&v43 + 4) = v9;
        specialized Trace_Handle.write<A>(struct:)(v43, SHIDWORD(v9));
LABEL_38:
        ++v6[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, char a2, uint64_t a3)
{
  *&v43 = result;
  BYTE8(v43) = a2;
  if (*v3 == 1)
  {
    v6 = v3;
    v7 = v3[3];
    if (*(v7 + 49))
    {
      v8 = result;
      v9 = *(&v43 + 1);
      v10 = v3[14];
      if (prepareTrace)
      {
        v11 = v3[14];
      }

      else
      {
        v11 = v3[14];
        if ((a3 & 1) == 0)
        {
          v12 = a3;
          if (kdebug_using_continuous_time())
          {
            v13 = mach_continuous_time();
          }

          else
          {
            v13 = mach_absolute_time();
          }

          v11 = v13;
          a3 = v12;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v4 = v6[7];
        v5 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v43 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(88, 1, v4, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v43;

        LOBYTE(a3) = v5;
      }

      v15 = v11 - v10;
      if (*(v7 + 49) == 1)
      {
        if (v11 >= v10)
        {
          v4 = v6[7];
          if ((a3 & 1) == 0 || !v15)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v5 = v16;
            LOBYTE(v7) = v17;
            LODWORD(v10) = (v17 << 12) | 0x58;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v18 = readingDebugLog;
              v19 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v18, v19))
              {
                v42 = v5;
                v20 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                *&v48[0] = v41;
                *v20 = 134218498;
                *(v20 + 4) = v4;
                *(v20 + 12) = 2080;
                v43 = xmmword_26C32DAD0;
                v44 = 1;
                v45 = 0;
                v46 = 0;
                v47 = 512;
                v21 = T_TracepointID.describe(state:)(&v43, v10);
                v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v48);

                *(v20 + 14) = v23;
                *(v20 + 22) = 1024;
                *(v20 + 24) = 0;
                _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v41);
                MEMORY[0x26D69EAB0](v41, -1, -1);
                v24 = v20;
                v5 = v42;
                MEMORY[0x26D69EAB0](v24, -1, -1);
              }

LABEL_20:
              v25 = v6[4];
              if (*(v25 + 56))
              {
                if (*(v25 + 52) == 2)
                {
LABEL_33:
                  v32 = CircularBuffer.Transaction.begin()() + 4;
                  v27 = *(v25 + 48);
                  v28 = v27 | (*(v25 + 52) << 32);
LABEL_34:
                  if (BYTE4(v28) != 2)
                  {
                    *(*(v25 + 32) + v27) = v10;
                    *(v25 + 48) = v27 + 4;
                    v6[15] += CircularBuffer.Transaction.write(size:)(v5, v7) + v32;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v26 = *(v25 + 32);
                LODWORD(v27) = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
                if (v26)
                {
                  v29 = *(v25 + 40) - v26;
                  v30 = v29 < v27;
                  v31 = v29 - v27;
                  if (!v30)
                  {
                    if (v31 >= 26)
                    {
                      v32 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v25 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v11 >= v10)
      {
        if (v15 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
          v33 = 1476395008;
        }

        else
        {
          v33 = v15 | 0x58000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v6[14] = v11;
        if ((*(v6[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_AnimationTick(0);
          v35 = v34;
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            if (v35 && (*(v36 + 24))(v35, v36) != 9)
            {
              v50 = v8;
              v51 = v9;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v48, &v43);
                v37 = v45;
                v38 = v46;
                v39 = __swift_project_boxed_opaque_existential_1(&v43, v45);
                v40 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v39, v6, &type metadata for Trace.SwiftUI, v35, v37, v40, &protocol witness table for T_AnimationTick, v38);
                __swift_destroy_boxed_opaque_existential_1(&v43);
                goto LABEL_38;
              }

              v49 = 0;
              memset(v48, 0, sizeof(v48));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v48, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        LOBYTE(v43) = v8;
        *(&v43 + 1) = v9;
        specialized Trace_Handle.write<A>(struct:)(v43, SHIBYTE(v9));
LABEL_38:
        ++v6[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, __int128 *a3)
{
  if (*v3 == 1)
  {
    v5 = v3;
    v6 = *(v3 + 3);
    if (*(v6 + 49) != 1)
    {
      v7 = a2;
      v9 = *(v3 + 14);
      if (prepareTrace)
      {
        v10 = *(v3 + 14);
      }

      else
      {
        v10 = *(v3 + 14);
        if ((a3 & 1) == 0)
        {
          v3 = a3;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v10 = v11;
          a3 = v3;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v12 = *(v5 + 7);
        v4 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v35 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        v3 = &v35;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(20, 1, v12, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v35;

        LOBYTE(a3) = v4;
      }

      v14 = v10 - v9;
      if (*(v6 + 49))
      {
        if (v10 >= v9)
        {
          v3 = *(v5 + 7);
          if ((a3 & 1) == 0 || !v14)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v15;
            LOBYTE(v6) = v16;
            LODWORD(v9) = (v16 << 12) | 0x14;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v17 = readingDebugLog;
              v18 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v17, v18))
              {
                v34 = v4;
                v19 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v40 = v33;
                *v19 = 134218498;
                *(v19 + 4) = v3;
                *(v19 + 12) = 2080;
                v35 = xmmword_26C32DAD0;
                v36 = 1;
                v37 = 0;
                v38 = 0;
                v39 = 512;
                v20 = T_TracepointID.describe(state:)(&v35, v9);
                v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

                *(v19 + 14) = v22;
                *(v19 + 22) = 1024;
                *(v19 + 24) = 0;
                _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v33);
                MEMORY[0x26D69EAB0](v33, -1, -1);
                v23 = v19;
                v4 = v34;
                MEMORY[0x26D69EAB0](v23, -1, -1);
              }

LABEL_20:
              v24 = *(v5 + 4);
              if (*(v24 + 56))
              {
                if (*(v24 + 52) == 2)
                {
LABEL_33:
                  v31 = CircularBuffer.Transaction.begin()() + 4;
                  v26 = *(v24 + 48);
                  v27 = v26 | (*(v24 + 52) << 32);
LABEL_34:
                  if (BYTE4(v27) != 2)
                  {
                    *(*(v24 + 32) + v26) = v9;
                    *(v24 + 48) = v26 + 4;
                    *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v4, v6) + v31;
LABEL_36:
                    *(v5 + 14) = v10;
                    specialized Trace_Handle.write<A>(struct:)(result, v7, type metadata accessor for T_EndGraphUpdateV0);
                    ++*(v5 + 7);
                    return;
                  }

LABEL_45:
                  __break(1u);
                  return;
                }

                v25 = *(v24 + 32);
                LODWORD(v26) = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
                if (v25)
                {
                  v28 = *(v24 + 40) - v25;
                  v29 = v28 < v26;
                  v30 = v28 - v26;
                  if (!v29)
                  {
                    if (v30 >= 29)
                    {
                      v31 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v24 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_41:
            swift_once();
            goto LABEL_18;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        __break(1u);
      }

      else if (v10 >= v9)
      {
        if (v14 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
          v32 = 335544320;
        }

        else
        {
          v32 = v14 | 0x14000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_40;
    }
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v6 = *(v3 + 3);
    if (*(v6 + 49) != 1)
    {
      v7 = a2;
      v9 = *(v3 + 14);
      if (prepareTrace)
      {
        v10 = *(v3 + 14);
      }

      else
      {
        v10 = *(v3 + 14);
        if ((a3 & 1) == 0)
        {
          v3 = a3;
          if (kdebug_using_continuous_time())
          {
            v11 = mach_continuous_time();
          }

          else
          {
            v11 = mach_absolute_time();
          }

          v10 = v11;
          a3 = v3;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v12 = *(v5 + 7);
        v4 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v35 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        v3 = &v35;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(29, 1, v12, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v35;

        LOBYTE(a3) = v4;
      }

      v14 = v10 - v9;
      if (*(v6 + 49) == 1)
      {
        if (v10 >= v9)
        {
          v3 = *(v5 + 7);
          if ((a3 & 1) == 0 || !v14)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v4 = v15;
            LOBYTE(v6) = v16;
            LODWORD(v9) = (v16 << 12) | 0x1D;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v17 = readingDebugLog;
              v18 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v17, v18))
              {
                v34 = v4;
                v19 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                v40 = v33;
                *v19 = 134218498;
                *(v19 + 4) = v3;
                *(v19 + 12) = 2080;
                v35 = xmmword_26C32DAD0;
                v36 = 1;
                v37 = 0;
                v38 = 0;
                v39 = 512;
                v20 = T_TracepointID.describe(state:)(&v35, v9);
                v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

                *(v19 + 14) = v22;
                *(v19 + 22) = 1024;
                *(v19 + 24) = 0;
                _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v33);
                MEMORY[0x26D69EAB0](v33, -1, -1);
                v23 = v19;
                v4 = v34;
                MEMORY[0x26D69EAB0](v23, -1, -1);
              }

LABEL_20:
              v24 = *(v5 + 4);
              if (*(v24 + 56))
              {
                if (*(v24 + 52) == 2)
                {
LABEL_33:
                  v31 = CircularBuffer.Transaction.begin()() + 4;
                  v26 = *(v24 + 48);
                  v27 = v26 | (*(v24 + 52) << 32);
LABEL_34:
                  if (BYTE4(v27) != 2)
                  {
                    *(*(v24 + 32) + v26) = v9;
                    *(v24 + 48) = v26 + 4;
                    *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v4, v6) + v31;
LABEL_36:
                    *(v5 + 14) = v10;
                    specialized Trace_Handle.write<A>(struct:)(result, v7, type metadata accessor for T_GraphNeedsUpdateV0);
                    ++*(v5 + 7);
                    return;
                  }

LABEL_45:
                  __break(1u);
                  return;
                }

                v25 = *(v24 + 32);
                LODWORD(v26) = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
                if (v25)
                {
                  v28 = *(v24 + 40) - v25;
                  v29 = v28 < v26;
                  v30 = v28 - v26;
                  if (!v29)
                  {
                    if (v30 >= 29)
                    {
                      v31 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v24 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_41:
            swift_once();
            goto LABEL_18;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        __break(1u);
      }

      else if (v10 >= v9)
      {
        if (v14 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
          v32 = 486539264;
        }

        else
        {
          v32 = v14 | 0x1D000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_40;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(unint64_t result, unint64_t a2, unint64_t a3, __int128 *a4)
{
  if (*v4 == 1)
  {
    v5 = v4;
    v6 = *(v4 + 3);
    if (*(v6 + 49))
    {
      v10 = *(v4 + 14);
      if (prepareTrace)
      {
        v11 = *(v4 + 14);
      }

      else
      {
        v11 = *(v4 + 14);
        if ((a4 & 1) == 0)
        {
          v4 = a4;
          if (kdebug_using_continuous_time())
          {
            v12 = mach_continuous_time();
          }

          else
          {
            v12 = mach_absolute_time();
          }

          v11 = v12;
          LOBYTE(a4) = v4;
        }
      }

      v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      if (tracepointAssertion.value._rawValue)
      {
        v14 = *(v5 + 7);
        v47 = result;
        v15 = a2;
        v16 = a3;
        v17 = v11;
        v18 = a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        v4 = &v49;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(63, 1, v14, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v49;

        LOBYTE(a4) = v18;
        v11 = v17;
        a3 = v16;
        a2 = v15;
        result = v47;
      }

      v20 = v11 - v10;
      if (*(v6 + 49))
      {
        if (v11 >= v10)
        {
          v4 = *(v5 + 7);
          if ((a4 & 1) == 0 || !v20)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v13 = v21;
            LOBYTE(v6) = v22;
            LODWORD(v10) = (v22 << 12) | 0x3F;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v23 = readingDebugLog;
              v48 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v23, v48))
              {
                log = v23;
                v24 = swift_slowAlloc();
                v44 = swift_slowAlloc();
                *&v54[0] = v44;
                *v24 = 134218498;
                *(v24 + 4) = v4;
                *(v24 + 12) = 2080;
                v49 = xmmword_26C32DAD0;
                v50 = 1;
                v51 = 0;
                v52 = 0;
                v53 = 512;
                v25 = T_TracepointID.describe(state:)(&v49, v10);
                v46 = v6;
                v6 = v13;
                v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v54);

                *(v24 + 14) = v27;
                v13 = v6;
                *(v24 + 22) = 1024;
                *(v24 + 24) = 0;
                LOBYTE(v6) = v46;
                _os_log_impl(&dword_26C161000, log, v48, "w %ld: %s, back: %u", v24, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v44);
                MEMORY[0x26D69EAB0](v44, -1, -1);
                MEMORY[0x26D69EAB0](v24, -1, -1);
              }

LABEL_20:
              v28 = *(v5 + 4);
              if (*(v28 + 56))
              {
                if (*(v28 + 52) == 2)
                {
LABEL_33:
                  v35 = CircularBuffer.Transaction.begin()() + 4;
                  v30 = *(v28 + 48);
                  v31 = v30 | (*(v28 + 52) << 32);
LABEL_34:
                  if (BYTE4(v31) != 2)
                  {
                    *(*(v28 + 32) + v30) = v10;
                    *(v28 + 48) = v30 + 4;
                    *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v6) + v35;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v29 = *(v28 + 32);
                LODWORD(v30) = *(v28 + 48);
                v31 = v30 | (*(v28 + 52) << 32);
                if (v29)
                {
                  v32 = *(v28 + 40) - v29;
                  v33 = v32 < v30;
                  v34 = v32 - v30;
                  if (!v33)
                  {
                    if (v34 >= 41)
                    {
                      v35 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v28 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v11 >= v10)
      {
        if (v20 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
          v36 = 1056964608;
        }

        else
        {
          v36 = v20 | 0x3F000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v36, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        *(v5 + 14) = v11;
        if ((*(*(v5 + 3) + 49) & 1) == 0)
        {
          type metadata accessor for T_CompareFailed(0);
          v38 = v37;
          v39 = swift_conformsToProtocol2();
          if (v39)
          {
            if (v38 && (*(v39 + 24))(v38, v39) != 24)
            {
              v56 = result;
              v57 = a2;
              v58 = a3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v54, &v49);
                v40 = v51;
                v41 = v52;
                v42 = __swift_project_boxed_opaque_existential_1(&v49, v51);
                v43 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v42, v5, &type metadata for Trace.SwiftUI, v38, v40, v43, &protocol witness table for T_CompareFailed, v41);
                __swift_destroy_boxed_opaque_existential_1(&v49);
                goto LABEL_38;
              }

              v55 = 0;
              memset(v54, 0, sizeof(v54));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v54, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(result, a2, a3);
LABEL_38:
        ++*(v5 + 7);
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

double protocol witness for Interpreter_Handle.init() in conformance TestingSupport.TraceHandle@<D0>(_OWORD *a1@<X8>)
{
  Trace_Handle_Storage.init()(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double protocol witness for static Trace_Handle.types.getter in conformance TestingSupport.TraceHandle@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_26C32F2A0;
  *(v2 + 32) = &type metadata for TestingSupport.TestEvent;
  *(v2 + 40) = &protocol witness table for TestingSupport.TestEvent;
  *(v2 + 48) = &type metadata for TestingSupport.TestEventWBacktrace;
  *(v2 + 56) = &protocol witness table for TestingSupport.TestEventWBacktrace;
  *a1 = v2;
  return result;
}

void ReferenceAccessor<>.doWriteTest(opt:bigTest:)(char a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 30000000;
  }

  else
  {
    v3 = 100000;
  }

  type metadata accessor for OS_os_log();
  v4 = OS_os_log.init(subsystem:category:)();
  info = 0;
  mach_timebase_info(&info);
  mach_absolute_time();
  if (info.denom)
  {
    while (1)
    {
LABEL_7:
      if (a1)
      {
        v5 = 0;
        pthread_threadid_np(0, &v5);
        if ((a1 & 2) != 0)
        {
LABEL_12:
          mach_absolute_time();
          if ((a1 & 4) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      else if ((a1 & 2) != 0)
      {
        goto LABEL_12;
      }

      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      specialized Trace_Handle.write<A>(_:omit:)(0);
      if (!--v3)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_6:
  specialized Trace_Handle.write<A>(_:omit:)();
  if (--v3)
  {
    goto LABEL_7;
  }

LABEL_14:
  mach_absolute_time();

  if (!info.denom)
  {
    __break(1u);
  }
}

uint64_t specialized Trace_Handle.writtenBacktrace()()
{
  v1 = type metadata accessor for SHA256();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SHA256Digest();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  backtrace()();
  v39 = v16;
  v40 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v4 + 56);
  v21(v14, 1, 1, v3);
  v22 = *(v0 + 24);
  if (*(v22 + 49) != 1 || (*(v22 + 1) & 1) == 0)
  {
    goto LABEL_9;
  }

  result = SHA256.init()();
  if (v18 < 0)
  {
    __break(1u);
  }

  else if ((v18 * v20) >> 64 == (v18 * v20) >> 63)
  {
    v34 = v0;
    MEMORY[0x26D69C930](v40, &v40[v18 * v20]);
    SHA256.finalize()();
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v14, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    (*(v4 + 16))(v14, v7, v3);
    v21(v14, 0, 1, v3);
    v24 = v7;
    v25 = v34;
    v26 = **(v34 + 104);
    if (*(v26 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 4 * v27);
        (*(v4 + 8))(v24, v3);
        (*(v35 + 8))(v38, v36);
        goto LABEL_12;
      }
    }

    (*(v4 + 8))(v7, v3);
    (*(v35 + 8))(v38, v36);
    v0 = v25;
LABEL_9:
    v29 = specialized Trace_Handle.write<A>(attachment:)(v40, v18, v39, v20);
    outlined init with copy of SHA256Digest?(v14, v12);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v14, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      v30 = v12;
LABEL_13:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v30, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      return v29;
    }

    v31 = v37;
    (*(v4 + 32))(v37, v12, v3);
    v32 = *(v0 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v32;
    *v32 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, isUniquelyReferenced_nonNull_native);
    *v32 = v41;

    (*(v4 + 8))(v31, v3);
LABEL_12:
    v30 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  v1 = type metadata accessor for SHA256();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SHA256Digest();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  backtrace()();
  v39 = v16;
  v40 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v4 + 56);
  v21(v14, 1, 1, v3);
  v22 = *(v0 + 24);
  if (*(v22 + 49) != 1 || (*(v22 + 1) & 1) == 0)
  {
    goto LABEL_9;
  }

  result = SHA256.init()();
  if (v18 < 0)
  {
    __break(1u);
  }

  else if ((v18 * v20) >> 64 == (v18 * v20) >> 63)
  {
    v34 = v0;
    MEMORY[0x26D69C930](v40, v40 + v18 * v20);
    SHA256.finalize()();
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v14, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    (*(v4 + 16))(v14, v7, v3);
    v21(v14, 0, 1, v3);
    v24 = v7;
    v25 = v34;
    v26 = **(v34 + 104);
    if (*(v26 + 16))
    {
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 4 * v27);
        (*(v4 + 8))(v24, v3);
        (*(v35 + 8))(v38, v36);
        goto LABEL_12;
      }
    }

    (*(v4 + 8))(v7, v3);
    (*(v35 + 8))(v38, v36);
    v0 = v25;
LABEL_9:
    v29 = specialized Trace_Handle.write<A>(attachment:)(v40, v18, v39, v20);
    outlined init with copy of SHA256Digest?(v14, v12);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v14, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      v30 = v12;
LABEL_13:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v30, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
      return v29;
    }

    v31 = v37;
    (*(v4 + 32))(v37, v12, v3);
    v32 = *(v0 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v32;
    *v32 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, isUniquelyReferenced_nonNull_native);
    *v32 = v41;

    (*(v4 + 8))(v31, v3);
LABEL_12:
    v30 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, unint64_t a2, int a3)
{
  v4 = v3;
  v6 = a2;
  v7 = result;
  v8 = HIDWORD(result);
  v9 = HIDWORD(a2);
  if (readingDebug)
  {
    v10 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v11 = readingDebugLog;
    v12 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v11, v12);
    if (result)
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v13 = 134218242;
      *(v13 + 4) = v10;
      *(v13 + 12) = 2080;
      type metadata accessor for T_ModeDecl(0);
      v14 = String.init<A>(describing:)();
      log = v11;
      v16 = v9;
      v17 = v8;
      v18 = a3;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

      *(v13 + 14) = v19;
      a3 = v18;
      LODWORD(v8) = v17;
      LODWORD(v9) = v16;
      _os_log_impl(&dword_26C161000, log, v12, "w %ld: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D69EAB0](v30, -1, -1);
      result = MEMORY[0x26D69EAB0](v13, -1, -1);
    }
  }

  v20 = *(v4 + 32);
  if (!*(v20 + 56))
  {
    goto LABEL_19;
  }

  if (*(v20 + 52) != 2)
  {
    v21 = *(v20 + 32);
    LODWORD(v22) = *(v20 + 48);
    v23 = v22 | (*(v20 + 52) << 32);
    if (v21)
    {
      v24 = *(v20 + 40) - v21;
      v25 = v24 < v22;
      v26 = v24 - v22;
      if (!v25)
      {
        if (v26 >= 20)
        {
          v27 = 20;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v20 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v27 = result + 20;
  v22 = *(v20 + 48);
  v23 = v22 | (*(v20 + 52) << 32);
LABEL_15:
  if (BYTE4(v23) != 2)
  {
    v28 = (*(v20 + 32) + v22);
    *v28 = v7;
    v28[1] = v8;
    v28[2] = v6;
    v28[3] = v9;
    v28[4] = a3;
    *(v20 + 48) = v22 + 20;
    *(v4 + 120) += v27;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      type metadata accessor for T_TypeDecl(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v22);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 36)
        {
          v19 = 36;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 36;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    v20 = *(v12 + 32) + v14;
    v21 = *(v3 + 16);
    *v20 = *v3;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(v3 + 32);
    *(v12 + 48) = v14 + 36;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      type metadata accessor for T_TracepointIDV0(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 4)
        {
          v19 = 4;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 4;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    *(*(v12 + 32) + v14) = v3;
    *(v12 + 48) = v14 + 4;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      type metadata accessor for T_ExecutionContext(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 8)
        {
          v19 = 8;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 8;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    *(*(v12 + 32) + v14) = v3;
    *(v12 + 48) = v14 + 8;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  if (readingDebug)
  {
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      v22 = v8;
      type metadata accessor for T_Header(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v22);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_19;
  }

  if (*(v12 + 52) != 2)
  {
    v13 = *(v12 + 32);
    LODWORD(v14) = *(v12 + 48);
    v15 = v14 | (*(v12 + 52) << 32);
    if (v13)
    {
      v16 = *(v12 + 40) - v13;
      v17 = v16 < v14;
      v18 = v16 - v14;
      if (!v17)
      {
        if (v18 >= 56)
        {
          v19 = 56;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v12 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 56;
  v14 = *(v12 + 48);
  v15 = v14 | (*(v12 + 52) << 32);
LABEL_15:
  if (BYTE4(v15) != 2)
  {
    v20 = *(v12 + 32) + v14;
    v21 = *(v3 + 16);
    *v20 = *v3;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(v3 + 32);
    *(v20 + 48) = *(v3 + 48);
    *(v12 + 48) = v14 + 56;
    *(v2 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  if (readingDebug)
  {
    v3 = result;
    v4 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v5 = readingDebugLog;
    v6 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v5, v6);
    if (result)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v4;
      *(v7 + 12) = 2080;
      v3(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_26C161000, v5, v6, "w %ld: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D69EAB0](v8, -1, -1);
      result = MEMORY[0x26D69EAB0](v7, -1, -1);
    }
  }

  v12 = *(v2 + 32);
  if (!*(v12 + 56))
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 48) | (*(v12 + 52) << 32);
  if ((v13 & 0xFF00000000) == 0x200000000)
  {
    result = CircularBuffer.Transaction.begin()();
    v13 = *(v12 + 48) | (*(v12 + 52) << 32);
    goto LABEL_14;
  }

  v14 = *(v12 + 32);
  if (!v14)
  {
LABEL_12:
    if (!v13)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v12 + 40) - v14 < *(v12 + 48))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  result = 0;
LABEL_14:
  if ((v13 & 0xFF00000000) != 0x200000000)
  {
    *(v2 + 120) += result;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = HIDWORD(result);
  if (readingDebug)
  {
    v5 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v6 = readingDebugLog;
    v7 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v6, v7);
    if (result)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2080;
      type metadata accessor for T_AnyAttachmentV0(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26C161000, v6, v7, "w %ld: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69EAB0](v9, -1, -1);
      result = MEMORY[0x26D69EAB0](v8, -1, -1);
    }
  }

  v13 = *(v2 + 32);
  if (!*(v13 + 56))
  {
    goto LABEL_19;
  }

  if (*(v13 + 52) != 2)
  {
    v14 = *(v13 + 32);
    LODWORD(v15) = *(v13 + 48);
    v16 = v15 | (*(v13 + 52) << 32);
    if (v14)
    {
      v17 = *(v13 + 40) - v14;
      v18 = v17 < v15;
      v19 = v17 - v15;
      if (!v18)
      {
        if (v19 >= 8)
        {
          v20 = 8;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v13 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v20 = result + 8;
  v15 = *(v13 + 48);
  v16 = v15 | (*(v13 + 52) << 32);
LABEL_15:
  if (BYTE4(v16) != 2)
  {
    v21 = (*(v13 + 32) + v15);
    *v21 = v3;
    v21[1] = v4;
    *(v13 + 48) = v15 + 8;
    *(v2 + 120) += v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  v4 = result >> 16;
  if (readingDebug)
  {
    v5 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v6 = readingDebugLog;
    v7 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v6, v7);
    if (result)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2080;
      type metadata accessor for T_RecordNamedProperty(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26C161000, v6, v7, "w %ld: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69EAB0](v9, -1, -1);
      result = MEMORY[0x26D69EAB0](v8, -1, -1);
    }
  }

  v13 = *(v2 + 32);
  if (!*(v13 + 56))
  {
    goto LABEL_19;
  }

  if (*(v13 + 52) != 2)
  {
    v14 = *(v13 + 32);
    LODWORD(v15) = *(v13 + 48);
    v16 = v15 | (*(v13 + 52) << 32);
    if (v14)
    {
      v17 = *(v13 + 40) - v14;
      v18 = v17 < v15;
      v19 = v17 - v15;
      if (!v18)
      {
        if (v19 >= 6)
        {
          v20 = 6;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v13 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v20 = result + 6;
  v15 = *(v13 + 48);
  v16 = v15 | (*(v13 + 52) << 32);
LABEL_15:
  if (BYTE4(v16) != 2)
  {
    v21 = *(v13 + 32) + v15;
    *v21 = v3;
    *(v21 + 2) = v4;
    *(v13 + 48) = v15 + 6;
    *(v2 + 120) += v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = result;
  v4 = HIDWORD(result);
  if (readingDebug)
  {
    v5 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v6 = readingDebugLog;
    v7 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v6, v7);
    if (result)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2080;
      type metadata accessor for T_EndNodeUpdate(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_26C161000, v6, v7, "w %ld: %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69EAB0](v9, -1, -1);
      result = MEMORY[0x26D69EAB0](v8, -1, -1);
    }
  }

  v13 = *(v2 + 32);
  if (!*(v13 + 56))
  {
    goto LABEL_19;
  }

  if (*(v13 + 52) != 2)
  {
    v14 = *(v13 + 32);
    LODWORD(v15) = *(v13 + 48);
    v16 = v15 | (*(v13 + 52) << 32);
    if (v14)
    {
      v17 = *(v13 + 40) - v14;
      v18 = v17 < v15;
      v19 = v17 - v15;
      if (!v18)
      {
        if (v19 >= 6)
        {
          v20 = 6;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v13 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v20 = result + 6;
  v15 = *(v13 + 48);
  v16 = v15 | (*(v13 + 52) << 32);
LABEL_15:
  if (BYTE4(v16) != 2)
  {
    v21 = *(v13 + 32) + v15;
    *v21 = v3;
    *(v21 + 4) = v4;
    *(v13 + 48) = v15 + 6;
    *(v2 + 120) += v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

void specialized Trace_Handle.write<A>(struct:)(uint64_t result)
{
  v2 = v1;
  if (readingDebug)
  {
    v3 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v4 = readingDebugLog;
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 134218242;
      *(v6 + 4) = v3;
      *(v6 + 12) = 2080;
      v8 = String.init<A>(describing:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_26C161000, v4, v5, "w %ld: %s", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D69EAB0](v7, -1, -1);
      MEMORY[0x26D69EAB0](v6, -1, -1);
    }
  }

  v11 = *(v2 + 32);
  if (!*(v11 + 56))
  {
    goto LABEL_17;
  }

  v12 = *(v11 + 48) | (*(v11 + 52) << 32);
  if ((v12 & 0xFF00000000) == 0x200000000)
  {
    v13 = CircularBuffer.Transaction.begin()();
    v12 = *(v11 + 48) | (*(v11 + 52) << 32);
    goto LABEL_14;
  }

  v14 = *(v11 + 32);
  if (!v14)
  {
LABEL_12:
    if (!v12)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v11 + 40) - v14 < *(v11 + 48))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  if ((v12 & 0xFF00000000) != 0x200000000)
  {
    *(v2 + 120) += v13;
    return;
  }

LABEL_18:
  __break(1u);
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v6 = HIDWORD(result);
  v7 = HIDWORD(a2);
  if (readingDebug)
  {
    v8 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v9 = readingDebugLog;
    v10 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v11 = 134218242;
      *(v11 + 4) = v8;
      *(v11 + 12) = 2080;
      type metadata accessor for T_KeypathDecl(0);
      v12 = String.init<A>(describing:)();
      v14 = v6;
      v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

      *(v11 + 14) = v6;
      LODWORD(v6) = v14;
      _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D69EAB0](v24, -1, -1);
      result = MEMORY[0x26D69EAB0](v11, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 16)
        {
          v22 = 16;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 16;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = (*(v15 + 32) + v17);
    *v23 = v5;
    v23[1] = v6;
    v23[2] = v4;
    v23[3] = v7;
    *(v15 + 48) = v17 + 16;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v6 = a2 >> 16;
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      type metadata accessor for T_HeaderV0(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 14)
        {
          v22 = 14;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 14;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v5;
    *(v23 + 8) = v4;
    *(v23 + 10) = v6;
    *(v15 + 48) = v17 + 14;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = result;
  *&v25 = result;
  *(&v25 + 1) = a2;
  v5 = *(&v25 + 4);
  v6 = HIDWORD(a2);
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      LODWORD(v25) = v4;
      *(&v25 + 4) = v5;
      HIDWORD(v25) = v6;
      type metadata accessor for T_IndirectNodeAdded(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 16)
        {
          v22 = 16;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 16;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v4;
    *(v23 + 4) = v5;
    *(v23 + 12) = v6;
    *(v15 + 48) = v17 + 16;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = result;
  v6 = HIDWORD(a2);
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      type metadata accessor for T_SubgraphTreeUpdate(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 13)
        {
          v22 = 13;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 13;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v5;
    *(v23 + 8) = v4;
    *(v23 + 12) = v6;
    *(v15 + 48) = v17 + 13;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = result;
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      a2(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      v19 = v18 < v16;
      v20 = v18 - v16;
      if (!v19)
      {
        if (v20 >= 8)
        {
          v21 = 8;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v21 = result + 8;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    *(*(v14 + 32) + v16) = v4;
    *(v14 + 48) = v16 + 8;
    *(v3 + 120) += v21;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = result;
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      a2(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      v19 = v18 < v16;
      v20 = v18 - v16;
      if (!v19)
      {
        if (v20 >= 4)
        {
          v21 = 4;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v21 = result + 4;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    *(*(v14 + 32) + v16) = v4;
    *(v14 + 48) = v16 + 4;
    *(v3 + 120) += v21;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = result;
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      v24 = v10;
      a2(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      v19 = v18 < v16;
      v20 = v18 - v16;
      if (!v19)
      {
        if (v20 >= 40)
        {
          v21 = 40;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v21 = result + 40;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    v22 = *(v14 + 32) + v16;
    v23 = *(v4 + 16);
    *v22 = *v4;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(v4 + 32);
    *(v14 + 48) = v16 + 40;
    *(v3 + 120) += v21;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = result;
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      a2(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      if (v18 >= v16)
      {
        if (v18 > v16)
        {
          v19 = 1;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v19 = result + 1;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    *(*(v14 + 32) + v16) = v4;
    *(v14 + 48) = v16 + 1;
    *(v3 + 120) += v19;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v8 = result;
  if (readingDebug)
  {
    v10 = *(v4 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v11 = readingDebugLog;
    v12 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v11, v12);
    if (result)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 134218242;
      *(v13 + 4) = v10;
      *(v13 + 12) = 2080;
      a4(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_26C161000, v11, v12, "w %ld: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D69EAB0](v14, -1, -1);
      result = MEMORY[0x26D69EAB0](v13, -1, -1);
    }
  }

  v18 = *(v5 + 32);
  if (!*(v18 + 56))
  {
    goto LABEL_19;
  }

  if (*(v18 + 52) != 2)
  {
    v19 = *(v18 + 32);
    LODWORD(v20) = *(v18 + 48);
    v21 = v20 | (*(v18 + 52) << 32);
    if (v19)
    {
      v22 = *(v18 + 40) - v19;
      v23 = v22 < v20;
      v24 = v22 - v20;
      if (!v23)
      {
        if (v24 >= 24)
        {
          v25 = 24;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v18 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v25 = result + 24;
  v20 = *(v18 + 48);
  v21 = v20 | (*(v18 + 52) << 32);
LABEL_15:
  if (BYTE4(v21) != 2)
  {
    v26 = (*(v18 + 32) + v20);
    *v26 = v8;
    v26[1] = a2;
    v26[2] = a3;
    *(v18 + 48) = v20 + 24;
    *(v5 + 120) += v25;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, int a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v6 = result;
  if (readingDebug)
  {
    v8 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v9 = readingDebugLog;
    v10 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v8;
      *(v11 + 12) = 2080;
      a3(0);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D69EAB0](v12, -1, -1);
      result = MEMORY[0x26D69EAB0](v11, -1, -1);
    }
  }

  v16 = *(v4 + 32);
  if (!*(v16 + 56))
  {
    goto LABEL_19;
  }

  if (*(v16 + 52) != 2)
  {
    v17 = *(v16 + 32);
    LODWORD(v18) = *(v16 + 48);
    v19 = v18 | (*(v16 + 52) << 32);
    if (v17)
    {
      v20 = *(v16 + 40) - v17;
      v21 = v20 < v18;
      v22 = v20 - v18;
      if (!v21)
      {
        if (v22 >= 12)
        {
          v23 = 12;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v16 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v23 = result + 12;
  v18 = *(v16 + 48);
  v19 = v18 | (*(v16 + 52) << 32);
LABEL_15:
  if (BYTE4(v19) != 2)
  {
    v24 = *(v16 + 32) + v18;
    *v24 = v6;
    *(v24 + 8) = a2;
    *(v16 + 48) = v18 + 12;
    *(v4 + 120) += v23;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = result;
  v5 = HIDWORD(result);
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      a2(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 8)
        {
          v22 = 8;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 8;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = (*(v15 + 32) + v17);
    *v23 = v4;
    v23[1] = v5;
    *(v15 + 48) = v17 + 8;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = result;
  v5 = HIDWORD(result);
  if (readingDebug)
  {
    v7 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v8 = readingDebugLog;
    v9 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v8, v9);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v7;
      *(v10 + 12) = 2080;
      a2(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_26C161000, v8, v9, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D69EAB0](v11, -1, -1);
      result = MEMORY[0x26D69EAB0](v10, -1, -1);
    }
  }

  v15 = *(v3 + 32);
  if (!*(v15 + 56))
  {
    goto LABEL_19;
  }

  if (*(v15 + 52) != 2)
  {
    v16 = *(v15 + 32);
    LODWORD(v17) = *(v15 + 48);
    v18 = v17 | (*(v15 + 52) << 32);
    if (v16)
    {
      v19 = *(v15 + 40) - v16;
      v20 = v19 < v17;
      v21 = v19 - v17;
      if (!v20)
      {
        if (v21 >= 5)
        {
          v22 = 5;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v15 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v22 = result + 5;
  v17 = *(v15 + 48);
  v18 = v17 | (*(v15 + 52) << 32);
LABEL_15:
  if (BYTE4(v18) != 2)
  {
    v23 = *(v15 + 32) + v17;
    *v23 = v4;
    *(v23 + 4) = v5;
    *(v15 + 48) = v17 + 5;
    *(v3 + 120) += v22;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v6 = result;
  if (readingDebug)
  {
    v8 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v9 = readingDebugLog;
    v10 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v8;
      *(v11 + 12) = 2080;
      a3(0);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D69EAB0](v12, -1, -1);
      result = MEMORY[0x26D69EAB0](v11, -1, -1);
    }
  }

  v16 = *(v4 + 32);
  if (!*(v16 + 56))
  {
    goto LABEL_19;
  }

  if (*(v16 + 52) != 2)
  {
    v17 = *(v16 + 32);
    LODWORD(v18) = *(v16 + 48);
    v19 = v18 | (*(v16 + 52) << 32);
    if (v17)
    {
      v20 = *(v16 + 40) - v17;
      v21 = v20 < v18;
      v22 = v20 - v18;
      if (!v21)
      {
        if (v22 >= 16)
        {
          v23 = 16;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v16 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v23 = result + 16;
  v18 = *(v16 + 48);
  v19 = v18 | (*(v16 + 52) << 32);
LABEL_15:
  if (BYTE4(v19) != 2)
  {
    v24 = (*(v16 + 32) + v18);
    *v24 = v6;
    v24[1] = a2;
    *(v16 + 48) = v18 + 16;
    *(v4 + 120) += v23;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v9 = result;
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  if (readingDebug)
  {
    v12 = *(v4 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v13 = readingDebugLog;
    v14 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v13, v14);
    if (result)
    {
      v29 = v11;
      v11 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v11 = 134218242;
      *(v11 + 4) = v12;
      *(v11 + 12) = 2080;
      type metadata accessor for T_NodeAdded(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v30);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_26C161000, v13, v14, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D69EAB0](v28, -1, -1);
      v18 = v11;
      LODWORD(v11) = v29;
      result = MEMORY[0x26D69EAB0](v18, -1, -1);
    }
  }

  v19 = *(v5 + 32);
  if (!*(v19 + 56))
  {
    goto LABEL_19;
  }

  if (*(v19 + 52) != 2)
  {
    v20 = *(v19 + 32);
    LODWORD(v21) = *(v19 + 48);
    v22 = v21 | (*(v19 + 52) << 32);
    if (v20)
    {
      v23 = *(v19 + 40) - v20;
      v24 = v23 < v21;
      v25 = v23 - v21;
      if (!v24)
      {
        if (v25 >= 32)
        {
          v26 = 32;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v19 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v26 = result + 32;
  v21 = *(v19 + 48);
  v22 = v21 | (*(v19 + 52) << 32);
LABEL_15:
  if (BYTE4(v22) != 2)
  {
    v27 = *(v19 + 32) + v21;
    *v27 = v9;
    *(v27 + 8) = a2;
    *(v27 + 16) = v7;
    *(v27 + 20) = v10;
    *(v27 + 24) = v6;
    *(v27 + 28) = v11;
    *(v19 + 48) = v21 + 32;
    *(v5 + 120) += v26;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, int a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v6 = result;
  v7 = HIDWORD(result);
  if (readingDebug)
  {
    v9 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v10 = readingDebugLog;
    v11 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v10, v11);
    if (result)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 134218242;
      *(v12 + 4) = v9;
      *(v12 + 12) = 2080;
      a3(0);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_26C161000, v10, v11, "w %ld: %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D69EAB0](v13, -1, -1);
      result = MEMORY[0x26D69EAB0](v12, -1, -1);
    }
  }

  v17 = *(v4 + 32);
  if (!*(v17 + 56))
  {
    goto LABEL_19;
  }

  if (*(v17 + 52) != 2)
  {
    v18 = *(v17 + 32);
    LODWORD(v19) = *(v17 + 48);
    v20 = v19 | (*(v17 + 52) << 32);
    if (v18)
    {
      v21 = *(v17 + 40) - v18;
      v22 = v21 < v19;
      v23 = v21 - v19;
      if (!v22)
      {
        if (v23 >= 12)
        {
          v24 = 12;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v17 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v24 = result + 12;
  v19 = *(v17 + 48);
  v20 = v19 | (*(v17 + 52) << 32);
LABEL_15:
  if (BYTE4(v20) != 2)
  {
    v25 = (*(v17 + 32) + v19);
    *v25 = v6;
    v25[1] = v7;
    v25[2] = a2;
    *(v17 + 48) = v19 + 12;
    *(v4 + 120) += v24;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, __int16 a2)
{
  v3 = v2;
  v4 = result;
  *v24 = result;
  *&v24[8] = a2;
  v5 = *&v24[2];
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      *v24 = v4;
      *&v24[2] = v5;
      type metadata accessor for T_ViewGraphRootValueChangeV2(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      v19 = v18 < v16;
      v20 = v18 - v16;
      if (!v19)
      {
        if (v20 >= 10)
        {
          v21 = 10;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v21 = result + 10;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    v22 = *(v14 + 32) + v16;
    *v22 = v4;
    *(v22 + 2) = v5;
    *(v14 + 48) = v16 + 10;
    *(v3 + 120) += v21;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, char a2)
{
  v3 = v2;
  v4 = result;
  *v24 = result;
  v24[8] = a2;
  v5 = *&v24[1];
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      v24[0] = v4;
      *&v24[1] = v5;
      type metadata accessor for T_AnimationTick(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      v19 = v18 < v16;
      v20 = v18 - v16;
      if (!v19)
      {
        if (v20 >= 9)
        {
          v21 = 9;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v21 = result + 9;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    v22 = *(v14 + 32) + v16;
    *v22 = v4;
    *(v22 + 1) = v5;
    *(v14 + 48) = v16 + 9;
    *(v3 + 120) += v21;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, int a2)
{
  v3 = v2;
  v4 = result;
  *v24 = result;
  *&v24[8] = a2;
  v5 = *&v24[4];
  if (readingDebug)
  {
    v6 = *(v2 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      *v24 = v4;
      *&v24[4] = v5;
      type metadata accessor for T_AnimationScheduleTick(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      result = MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v14 = *(v3 + 32);
  if (!*(v14 + 56))
  {
    goto LABEL_19;
  }

  if (*(v14 + 52) != 2)
  {
    v15 = *(v14 + 32);
    LODWORD(v16) = *(v14 + 48);
    v17 = v16 | (*(v14 + 52) << 32);
    if (v15)
    {
      v18 = *(v14 + 40) - v15;
      v19 = v18 < v16;
      v20 = v18 - v16;
      if (!v19)
      {
        if (v20 >= 12)
        {
          v21 = 12;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v14 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v21 = result + 12;
  v16 = *(v14 + 48);
  v17 = v16 | (*(v14 + 52) << 32);
LABEL_15:
  if (BYTE4(v17) != 2)
  {
    v22 = *(v14 + 32) + v16;
    *v22 = v4;
    *(v22 + 4) = v5;
    *(v14 + 48) = v16 + 12;
    *(v3 + 120) += v21;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = v4;
  v9 = result;
  if (readingDebug)
  {
    v10 = *(v4 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v11 = readingDebugLog;
    v12 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v11, v12);
    if (result)
    {
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v13 = 134218242;
      *(v13 + 4) = v10;
      *(v13 + 12) = 2080;
      type metadata accessor for T_AssignRootSubgraph(0);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v27);

      *(v13 + 14) = v16;
      _os_log_impl(&dword_26C161000, v11, v12, "w %ld: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26D69EAB0](v26, -1, -1);
      result = MEMORY[0x26D69EAB0](v13, -1, -1);
    }
  }

  v17 = *(v5 + 32);
  if (!*(v17 + 56))
  {
    goto LABEL_19;
  }

  if (*(v17 + 52) != 2)
  {
    v18 = *(v17 + 32);
    LODWORD(v19) = *(v17 + 48);
    v20 = v19 | (*(v17 + 52) << 32);
    if (v18)
    {
      v21 = *(v17 + 40) - v18;
      v22 = v21 < v19;
      v23 = v21 - v19;
      if (!v22)
      {
        if (v23 >= 26)
        {
          v24 = 26;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v17 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v24 = result + 26;
  v19 = *(v17 + 48);
  v20 = v19 | (*(v17 + 52) << 32);
LABEL_15:
  if (BYTE4(v20) != 2)
  {
    v25 = *(v17 + 32) + v19;
    *v25 = v9;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    *(v17 + 48) = v19 + 26;
    *(v5 + 120) += v24;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, char a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v6 = result;
  v7 = HIDWORD(result);
  if (readingDebug)
  {
    v9 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v10 = readingDebugLog;
    v11 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v10, v11);
    if (result)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 134218242;
      *(v12 + 4) = v9;
      *(v12 + 12) = 2080;
      a3(0);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_26C161000, v10, v11, "w %ld: %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D69EAB0](v13, -1, -1);
      result = MEMORY[0x26D69EAB0](v12, -1, -1);
    }
  }

  v17 = *(v4 + 32);
  if (!*(v17 + 56))
  {
    goto LABEL_19;
  }

  if (*(v17 + 52) != 2)
  {
    v18 = *(v17 + 32);
    LODWORD(v19) = *(v17 + 48);
    v20 = v19 | (*(v17 + 52) << 32);
    if (v18)
    {
      v21 = *(v17 + 40) - v18;
      v22 = v21 < v19;
      v23 = v21 - v19;
      if (!v22)
      {
        if (v23 >= 9)
        {
          v24 = 9;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v17 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v24 = result + 9;
  v19 = *(v17 + 48);
  v20 = v19 | (*(v17 + 52) << 32);
LABEL_15:
  if (BYTE4(v20) != 2)
  {
    v25 = *(v17 + 32) + v19;
    *v25 = v6;
    *(v25 + 4) = v7;
    *(v25 + 8) = a2;
    *(v17 + 48) = v19 + 9;
    *(v4 + 120) += v24;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = result;
  if (readingDebug)
  {
    v8 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v9 = readingDebugLog;
    v10 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v8;
      *(v11 + 12) = 2080;
      type metadata accessor for T_ReuseCacheItemWithID(0);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D69EAB0](v12, -1, -1);
      result = MEMORY[0x26D69EAB0](v11, -1, -1);
    }
  }

  v16 = *(v4 + 32);
  if (!*(v16 + 56))
  {
    goto LABEL_19;
  }

  if (*(v16 + 52) != 2)
  {
    v17 = *(v16 + 32);
    LODWORD(v18) = *(v16 + 48);
    v19 = v18 | (*(v16 + 52) << 32);
    if (v17)
    {
      v20 = *(v16 + 40) - v17;
      v21 = v20 < v18;
      v22 = v20 - v18;
      if (!v21)
      {
        if (v22 >= 17)
        {
          v23 = 17;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v16 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v23 = result + 17;
  v18 = *(v16 + 48);
  v19 = v18 | (*(v16 + 52) << 32);
LABEL_15:
  if (BYTE4(v19) != 2)
  {
    v24 = *(v16 + 32) + v18;
    *v24 = v7;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
    *(v16 + 48) = v18 + 17;
    *(v4 + 120) += v23;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Trace_Handle.write<A>(struct:)(uint64_t result, char a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v6 = result;
  if (readingDebug)
  {
    v8 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v9 = readingDebugLog;
    v10 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v8;
      *(v11 + 12) = 2080;
      a3(0);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D69EAB0](v12, -1, -1);
      result = MEMORY[0x26D69EAB0](v11, -1, -1);
    }
  }

  v16 = *(v4 + 32);
  if (!*(v16 + 56))
  {
    goto LABEL_19;
  }

  if (*(v16 + 52) != 2)
  {
    v17 = *(v16 + 32);
    LODWORD(v18) = *(v16 + 48);
    v19 = v18 | (*(v16 + 52) << 32);
    if (v17)
    {
      v20 = *(v16 + 40) - v17;
      v21 = v20 < v18;
      v22 = v20 - v18;
      if (!v21)
      {
        if (v22 >= 9)
        {
          v23 = 9;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v16 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v23 = result + 9;
  v18 = *(v16 + 48);
  v19 = v18 | (*(v16 + 52) << 32);
LABEL_15:
  if (BYTE4(v19) != 2)
  {
    v24 = *(v16 + 32) + v18;
    *v24 = v6;
    *(v24 + 8) = a2;
    *(v16 + 48) = v18 + 9;
    *(v4 + 120) += v23;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized Trace_Handle.write<A>(struct:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v7 = result;
  v8 = HIDWORD(result);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  if (readingDebug)
  {
    v11 = *(v3 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v12 = readingDebugLog;
    v13 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(v12, v13);
    if (result)
    {
      v32 = v10;
      v10 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v10 = 134218242;
      *(v10 + 4) = v11;
      *(v10 + 12) = 2080;
      type metadata accessor for T_CompareFailed(0);
      v14 = String.init<A>(describing:)();
      v31 = v5;
      v16 = v12;
      v17 = v9;
      v18 = v8;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v33);

      *(v10 + 14) = v8;
      LODWORD(v8) = v18;
      LODWORD(v9) = v17;
      v19 = v16;
      v5 = v31;
      _os_log_impl(&dword_26C161000, v19, v13, "w %ld: %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D69EAB0](v30, -1, -1);
      v20 = v10;
      LODWORD(v10) = v32;
      result = MEMORY[0x26D69EAB0](v20, -1, -1);
    }
  }

  v21 = *(v4 + 32);
  if (!*(v21 + 56))
  {
    goto LABEL_19;
  }

  if (*(v21 + 52) != 2)
  {
    v22 = *(v21 + 32);
    LODWORD(v23) = *(v21 + 48);
    v24 = v23 | (*(v21 + 52) << 32);
    if (v22)
    {
      v25 = *(v21 + 40) - v22;
      v26 = v25 < v23;
      v27 = v25 - v23;
      if (!v26)
      {
        if (v27 >= 24)
        {
          v28 = 24;
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!*(v21 + 48))
    {
LABEL_13:
      CircularBuffer.Transaction.commit()();
      goto LABEL_14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  result = CircularBuffer.Transaction.begin()();
  v28 = result + 24;
  v23 = *(v21 + 48);
  v24 = v23 | (*(v21 + 52) << 32);
LABEL_15:
  if (BYTE4(v24) != 2)
  {
    v29 = (*(v21 + 32) + v23);
    *v29 = v7;
    v29[1] = v8;
    v29[2] = v6;
    v29[3] = v9;
    v29[4] = v5;
    v29[5] = v10;
    *(v21 + 48) = v23 + 24;
    *(v4 + 120) += v28;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

void specialized Trace_Handle.write<A>(v0:)(__int128 *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (readingDebug)
  {
    v3 = *(v1 + 56);
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v4 = readingDebugLog;
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17[0] = v7;
      *v6 = 134218498;
      *(v6 + 4) = v3;
      *(v6 + 12) = 2080;
      v8 = a1[1];
      v13 = *a1;
      v14 = v8;
      v15 = *(a1 + 8);
      type metadata accessor for T_TypeDecl(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v17);

      *(v6 + 14) = v11;
      *(v6 + 22) = 1049088;
      _os_log_impl(&dword_26C161000, v4, v5, "w %ld: %s (FIRST: %hu)", v6, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D69EAB0](v7, -1, -1);
      MEMORY[0x26D69EAB0](v6, -1, -1);
    }
  }

  v12 = a1[1];
  v13 = *a1;
  v14 = v12;
  v15 = *(a1 + 8);
  specialized closure #1 in Trace_Handle.write<A>(v0:)(&v13, &v16, v1);
}

void specialized Trace_Handle.write<A>(v0:)(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = HIDWORD(a2);
  if (readingDebug)
  {
    v6 = v2[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v7 = readingDebugLog;
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19[0] = v10;
      *v9 = 134218498;
      *(v9 + 4) = v6;
      *(v9 + 12) = 2080;
      v16 = a1;
      v17 = v3;
      v18[0] = v5;
      type metadata accessor for T_SubgraphTreeUpdate(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v19);

      *(v9 + 14) = v13;
      *(v9 + 22) = 786944;
      _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s (FIRST: %hu)", v9, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  v16 = a1;
  v17 = v3;
  v18[0] = v5;
  v14 = v2[4];
  if (!*(v14 + 56))
  {
    __break(1u);
  }

  specialized static CircularBuffer.Transaction.write(buffer:transaction:)(&v16, v18, v14);
  v2[15] += v15;
}

void specialized closure #1 in Trace_Handle.write<A>(v0:)(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (*(v3 + 56))
  {
    v4 = result;
    v5 = 0;
    if (!result)
    {
LABEL_30:
      *(a3 + 120) += v5;
      return;
    }

    v6 = 16;
    while (1)
    {
      if (*(v3 + 52) == 2)
      {
        v10 = CircularBuffer.Transaction.begin()();
        v11 = *(v3 + 48) | (*(v3 + 52) << 32);
        v12 = *(v3 + 48);
      }

      else
      {
        v10 = 0;
        v12 = *(v3 + 48);
        v11 = v12 | (*(v3 + 52) << 32);
      }

      if (BYTE4(v11) == 2)
      {
        break;
      }

      v13 = *(v3 + 32);
      if (v13)
      {
        v14 = *(v3 + 40) - v13;
        v15 = v14 - v12;
        if (v14 < v12)
        {
          goto LABEL_36;
        }

        if (v6 >= v15)
        {
          v16 = v14 - v12;
        }

        else
        {
          v16 = v6;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }

        memmove((v13 + v12), v4, v16);
        if (HIDWORD(v16))
        {
          goto LABEL_32;
        }

        v17 = &v4[v16];
        v18 = *(v3 + 48);
        v19 = __CFADD__(v18, v16);
        v20 = v18 + v16;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v12)
        {
          goto LABEL_37;
        }

        v15 = 0;
        v16 = 0;
        v17 = v4;
        v20 = 0;
      }

      *(v3 + 48) = v20;
      v21 = v10 + v16;
      if (__OFADD__(v10, v16))
      {
        goto LABEL_34;
      }

      v22 = __OFADD__(v5, v21);
      v5 += v21;
      if (v22)
      {
        goto LABEL_35;
      }

      if (v15 < v6)
      {
        if ((*(v3 + 4) & 1) == 0 && ((*(v3 + 48) | (*(v3 + 52) << 32)) & 0xFF00000000) != 0x200000000)
        {
          *(*(v3 + 32) + 4) = *(v3 + 48);
        }

        if (readingDebug)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_26C328DC0;
          *(v23 + 56) = MEMORY[0x277D837D0];
          *(v23 + 32) = 0x54494D4D4F432077;
          *(v23 + 40) = 0xEA00000000002021;
          print(_:separator:terminator:)();
        }

        v7 = *(v3 + 8);
        v8 = *(v3 + 16);
        v25[0] = *v3;
        v25[1] = v8;
        v9 = *(v3 + 48);
        v25[2] = *(v3 + 32);
        v25[3] = v9;
        v25[4] = v7;
        CircularBuffer.commit(_:)(v25);
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 52) = 2;
        *(v3 + 48) = 0;
      }

      v6 = &v4[v6] - v17;
      v4 = v17;
      if (v6 <= 0)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized TestingSupport.TestEventWBacktrace.model(within:)(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 72);
  v10[0] = *(a1 + 56);
  v10[1] = v2;
  v11[0] = *(a1 + 88);
  *(v11 + 9) = *(a1 + 97);
  v3 = (a1 + 88);
  v4 = (a1 + 100);
  v5 = (a1 + 104);
  v6 = *(a1 + 116);
  while (1)
  {
    v7 = *v5;
    if (v6 < *v4)
    {
      v8 = (*v3 + 8 * v6);
      if ((v8[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v7)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v10);
    }

    v3 = (v7 + 32);
    v4 = (v7 + 44);
    v5 = (v7 + 48);
    v1 = v7;
  }

  v9 = *v1;
  if (v9)
  {
    specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(*(*(v9 + 24 * *v8) + 32), 0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result)
{
  if (*v1 == 1)
  {
    v2 = v1;
    v3 = v1[3];
    if ((*(v3 + 49) & 1) == 0)
    {
      v4 = result;
      if (!tracepointAssertion.value._rawValue || (v5 = v1[14], v6 = v1[7], isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), *&v25 = tracepointAssertion.value._rawValue, tracepointAssertion.value._rawValue = 0x8000000000000000, specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 0, v6, isUniquelyReferenced_nonNull_native), tracepointAssertion.value._rawValue = v25, result = , *(v3 + 49) != 1))
      {
        specialized Trace_Handle.write<A>(struct:)(0);
        result = v4;
LABEL_22:
        result = specialized Trace_Handle.write<A>(struct:)(result);
        ++v2[7];
        return result;
      }

      if (readingDebug)
      {
        v8 = v1[7];
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v9 = readingDebugLog;
        v10 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v9, v10);
        if (result)
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v30 = v12;
          *v11 = 134218498;
          *(v11 + 4) = v8;
          *(v11 + 12) = 2080;
          v25 = xmmword_26C32DAD0;
          v26 = 1;
          v27 = 0;
          v28 = 0;
          v29 = 512;
          v13 = T_TracepointID.describe(state:)(&v25, 0);
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v30);

          *(v11 + 14) = v15;
          *(v11 + 22) = 1024;
          *(v11 + 24) = 0;
          _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s, back: %u", v11, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x26D69EAB0](v12, -1, -1);
          result = MEMORY[0x26D69EAB0](v11, -1, -1);
        }
      }

      v16 = v2[4];
      if (*(v16 + 56))
      {
        if (*(v16 + 52) == 2)
        {
LABEL_19:
          v23 = CircularBuffer.Transaction.begin()() + 4;
          v18 = *(v16 + 48);
          v19 = v18 | (*(v16 + 52) << 32);
          result = v4;
LABEL_20:
          if (BYTE4(v19) != 2)
          {
            *(*(v16 + 32) + v18) = 0;
            *(v16 + 48) = v18 + 4;
            v24 = v2[15] + v23;
            v2[14] = v5;
            v2[15] = v24;
            goto LABEL_22;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        v17 = *(v16 + 32);
        LODWORD(v18) = *(v16 + 48);
        v19 = v18 | (*(v16 + 52) << 32);
        if (v17)
        {
          v20 = *(v16 + 40) - v17;
          v21 = v20 < v18;
          v22 = v20 - v18;
          if (!v21)
          {
            if (v22 > 24)
            {
              result = v4;
              v23 = 4;
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          __break(1u);
        }

        else if (!*(v16 + 48))
        {
LABEL_18:
          CircularBuffer.Transaction.commit()();
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  return result;
}

{
  if (*v1 != 1)
  {
    return result;
  }

  v2 = v1;
  v3 = result;
  v4 = v1[3];
  v5 = v1[14];
  result = tracepointAssertion.value._rawValue;
  if (tracepointAssertion.value._rawValue)
  {
    v6 = v1[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, 0, v6, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v31;
  }

  if (*(v4 + 49))
  {
    if (readingDebug)
    {
      v8 = v1[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v9 = readingDebugLog;
      v10 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v9, v10);
      if (result)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v36[0] = v12;
        *v11 = 134218498;
        *(v11 + 4) = v8;
        *(v11 + 12) = 2080;
        v31 = xmmword_26C32DAD0;
        v32 = 1;
        v33 = 0;
        v34 = 0;
        v35 = 512;
        v13 = T_TracepointID.describe(state:)(&v31, 3u);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v36);

        *(v11 + 14) = v15;
        *(v11 + 22) = 1024;
        *(v11 + 24) = 0;
        _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s, back: %u", v11, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x26D69EAB0](v12, -1, -1);
        result = MEMORY[0x26D69EAB0](v11, -1, -1);
      }
    }

    v16 = v2[4];
    if (*(v16 + 56))
    {
      if (*(v16 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v23 = result + 4;
        v18 = *(v16 + 48);
        v19 = v18 | (*(v16 + 52) << 32);
LABEL_20:
        if (BYTE4(v19) != 2)
        {
          *(*(v16 + 32) + v18) = 3;
          *(v16 + 48) = v18 + 4;
          v24 = v2[15] + v23;
          v2[14] = v5;
          v2[15] = v24;
          goto LABEL_22;
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = *(v16 + 32);
      LODWORD(v18) = *(v16 + 48);
      v19 = v18 | (*(v16 + 52) << 32);
      if (v17)
      {
        v20 = *(v16 + 40) - v17;
        v21 = v20 < v18;
        v22 = v20 - v18;
        if (!v21)
        {
          if (v22 >= 53)
          {
            v23 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v16 + 48))
      {
LABEL_18:
        CircularBuffer.Transaction.commit()();
        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  specialized Trace_Handle.write<A>(struct:)(50331648);
LABEL_22:
  if (*(v2[3] + 49) == 1)
  {
    result = specialized Trace_Handle.write<A>(struct:)(v3);
  }

  else
  {
    type metadata accessor for T_TypeDecl(0);
    v26 = v25;
    v33 = v25;
    v34 = &protocol witness table for T_TypeDecl;
    v27 = swift_allocObject();
    *&v31 = v27;
    v28 = *(v3 + 16);
    *(v27 + 16) = *v3;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(v3 + 32);
    v29 = __swift_project_boxed_opaque_existential_1(&v31, v26);
    v30 = *(v29 + 1);
    v36[0] = *v29;
    v36[1] = v30;
    v37 = *(v29 + 8);
    specialized Trace_Handle.write<A>(v0:)(v36);
    result = __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  ++v2[7];
  return result;
}

{
  if (*v1 == 1)
  {
    v2 = v1;
    v3 = v1[3];
    if (*(v3 + 49) != 1)
    {
      v4 = result;
      if (!tracepointAssertion.value._rawValue || (v5 = v1[14], v6 = v1[7], isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), *&v25 = tracepointAssertion.value._rawValue, tracepointAssertion.value._rawValue = 0x8000000000000000, specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 2, v6, isUniquelyReferenced_nonNull_native), tracepointAssertion.value._rawValue = v25, result = , (*(v3 + 49) & 1) == 0))
      {
        specialized Trace_Handle.write<A>(struct:)(0);
        result = v4;
LABEL_22:
        result = specialized Trace_Handle.write<A>(struct:)(result);
        ++v2[7];
        return result;
      }

      if (readingDebug)
      {
        v8 = v1[7];
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v9 = readingDebugLog;
        v10 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v9, v10);
        if (result)
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v30 = v12;
          *v11 = 134218498;
          *(v11 + 4) = v8;
          *(v11 + 12) = 2080;
          v25 = xmmword_26C32DAD0;
          v26 = 1;
          v27 = 0;
          v28 = 0;
          v29 = 512;
          v13 = T_TracepointID.describe(state:)(&v25, 0);
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v30);

          *(v11 + 14) = v15;
          *(v11 + 22) = 1024;
          *(v11 + 24) = 0;
          _os_log_impl(&dword_26C161000, v9, v10, "w %ld: %s, back: %u", v11, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x26D69EAB0](v12, -1, -1);
          result = MEMORY[0x26D69EAB0](v11, -1, -1);
        }
      }

      v16 = v2[4];
      if (*(v16 + 56))
      {
        if (*(v16 + 52) == 2)
        {
LABEL_19:
          v23 = CircularBuffer.Transaction.begin()() + 4;
          v18 = *(v16 + 48);
          v19 = v18 | (*(v16 + 52) << 32);
          result = v4;
LABEL_20:
          if (BYTE4(v19) != 2)
          {
            *(*(v16 + 32) + v18) = 0;
            *(v16 + 48) = v18 + 4;
            v24 = v2[15] + v23;
            v2[14] = v5;
            v2[15] = v24;
            goto LABEL_22;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        v17 = *(v16 + 32);
        LODWORD(v18) = *(v16 + 48);
        v19 = v18 | (*(v16 + 52) << 32);
        if (v17)
        {
          v20 = *(v16 + 40) - v17;
          v21 = v20 < v18;
          v22 = v20 - v18;
          if (!v21)
          {
            if (v22 >= 25)
            {
              result = v4;
              v23 = 4;
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          __break(1u);
        }

        else if (!*(v16 + 48))
        {
LABEL_18:
          CircularBuffer.Transaction.commit()();
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  return result;
}

{
  if (*v1 == 1)
  {
    v2 = v1;
    v3 = v1[3];
    if (*(v3 + 49))
    {
      v4 = result;
      v5 = v1[14];
      result = tracepointAssertion.value._rawValue;
      if (tracepointAssertion.value._rawValue)
      {
        v7 = v1 + 7;
        v6 = v1[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v33 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(6, 2, v6, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v33;

        if ((*(v3 + 49) & 1) == 0)
        {
          specialized Trace_Handle.write<A>(struct:)(100663296);
LABEL_23:
          if ((*(v2[3] + 49) & 1) == 0)
          {
            type metadata accessor for T_ExecutionContext(0);
            v27 = v26;
            v28 = swift_conformsToProtocol2();
            if (v28)
            {
              if (v27 && (*(v28 + 24))(v27, v28) != 8)
              {
                v40 = v4;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
                if (swift_dynamicCast())
                {
                  outlined init with take of Inspectable(v38, &v33);
                  v29 = v35;
                  v30 = v36;
                  v31 = __swift_project_boxed_opaque_existential_1(&v33, v35);
                  v32 = lazy protocol witness table accessor for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle();
                  project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v31, v2, &type metadata for TestingSupport.TraceHandle, v27, v29, v32, &protocol witness table for T_ExecutionContext, v30);
                  result = __swift_destroy_boxed_opaque_existential_1(&v33);
                  goto LABEL_25;
                }

                v39 = 0;
                memset(v38, 0, sizeof(v38));
                outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v38, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
              }
            }
          }

          result = specialized Trace_Handle.write<A>(struct:)(v4);
LABEL_25:
          ++*v7;
          return result;
        }
      }

      else
      {
        v7 = v1 + 7;
      }

      if (readingDebug)
      {
        v9 = *v7;
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v10 = readingDebugLog;
        v11 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v10, v11);
        if (result)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *&v38[0] = v13;
          *v12 = 134218498;
          *(v12 + 4) = v9;
          *(v12 + 12) = 2080;
          v33 = xmmword_26C32DAD0;
          v34 = 1;
          v35 = 0;
          v36 = 0;
          v37 = 512;
          v14 = T_TracepointID.describe(state:)(&v33, 6u);
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v38);

          *(v12 + 14) = v16;
          *(v12 + 22) = 1024;
          *(v12 + 24) = 0;
          _os_log_impl(&dword_26C161000, v10, v11, "w %ld: %s, back: %u", v12, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x26D69EAB0](v13, -1, -1);
          result = MEMORY[0x26D69EAB0](v12, -1, -1);
        }
      }

      v17 = v2[4];
      if (*(v17 + 56))
      {
        if (*(v17 + 52) == 2)
        {
LABEL_20:
          result = CircularBuffer.Transaction.begin()();
          v24 = result + 4;
          v19 = *(v17 + 48);
          v20 = v19 | (*(v17 + 52) << 32);
LABEL_21:
          if (BYTE4(v20) != 2)
          {
            *(*(v17 + 32) + v19) = 6;
            *(v17 + 48) = v19 + 4;
            v25 = v2[15] + v24;
            v2[14] = v5;
            v2[15] = v25;
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return result;
        }

        v18 = *(v17 + 32);
        LODWORD(v19) = *(v17 + 48);
        v20 = v19 | (*(v17 + 52) << 32);
        if (v18)
        {
          v21 = *(v17 + 40) - v18;
          v22 = v21 < v19;
          v23 = v21 - v19;
          if (!v22)
          {
            if (v23 >= 25)
            {
              v24 = 4;
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          __break(1u);
        }

        else if (!*(v17 + 48))
        {
LABEL_19:
          CircularBuffer.Transaction.commit()();
          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_36;
    }
  }

  return result;
}

{
  if (*v1 == 1)
  {
    v2 = v1;
    v3 = v1[3];
    if (*(v3 + 49))
    {
      v4 = result;
      v5 = v1[14];
      result = tracepointAssertion.value._rawValue;
      if (tracepointAssertion.value._rawValue)
      {
        v7 = v1 + 7;
        v6 = v1[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v33 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(6, 1, v6, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v33;

        if ((*(v3 + 49) & 1) == 0)
        {
          specialized Trace_Handle.write<A>(struct:)(100663296, type metadata accessor for T_TracepointIDV0);
LABEL_23:
          if ((*(v2[3] + 49) & 1) == 0)
          {
            type metadata accessor for T_ExecutionContext(0);
            v27 = v26;
            v28 = swift_conformsToProtocol2();
            if (v28)
            {
              if (v27 && (*(v28 + 24))(v27, v28) != 8)
              {
                v40 = v4;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
                if (swift_dynamicCast())
                {
                  outlined init with take of Inspectable(v38, &v33);
                  v29 = v35;
                  v30 = v36;
                  v31 = __swift_project_boxed_opaque_existential_1(&v33, v35);
                  v32 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                  project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v31, v2, &type metadata for Trace.SwiftUI, v27, v29, v32, &protocol witness table for T_ExecutionContext, v30);
                  result = __swift_destroy_boxed_opaque_existential_1(&v33);
                  goto LABEL_25;
                }

                v39 = 0;
                memset(v38, 0, sizeof(v38));
                outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v38, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
              }
            }
          }

          result = specialized Trace_Handle.write<A>(struct:)(v4, type metadata accessor for T_ExecutionContext);
LABEL_25:
          ++*v7;
          return result;
        }
      }

      else
      {
        v7 = v1 + 7;
      }

      if (readingDebug)
      {
        v9 = *v7;
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v10 = readingDebugLog;
        v11 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v10, v11);
        if (result)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *&v38[0] = v13;
          *v12 = 134218498;
          *(v12 + 4) = v9;
          *(v12 + 12) = 2080;
          v33 = xmmword_26C32DAD0;
          v34 = 1;
          v35 = 0;
          v36 = 0;
          v37 = 512;
          v14 = T_TracepointID.describe(state:)(&v33, 6u);
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v38);

          *(v12 + 14) = v16;
          *(v12 + 22) = 1024;
          *(v12 + 24) = 0;
          _os_log_impl(&dword_26C161000, v10, v11, "w %ld: %s, back: %u", v12, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x26D69EAB0](v13, -1, -1);
          result = MEMORY[0x26D69EAB0](v12, -1, -1);
        }
      }

      v17 = v2[4];
      if (*(v17 + 56))
      {
        if (*(v17 + 52) == 2)
        {
LABEL_20:
          result = CircularBuffer.Transaction.begin()();
          v24 = result + 4;
          v19 = *(v17 + 48);
          v20 = v19 | (*(v17 + 52) << 32);
LABEL_21:
          if (BYTE4(v20) != 2)
          {
            *(*(v17 + 32) + v19) = 6;
            *(v17 + 48) = v19 + 4;
            v25 = v2[15] + v24;
            v2[14] = v5;
            v2[15] = v25;
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return result;
        }

        v18 = *(v17 + 32);
        LODWORD(v19) = *(v17 + 48);
        v20 = v19 | (*(v17 + 52) << 32);
        if (v18)
        {
          v21 = *(v17 + 40) - v18;
          v22 = v21 < v19;
          v23 = v21 - v19;
          if (!v22)
          {
            if (v23 >= 25)
            {
              v24 = 4;
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          __break(1u);
        }

        else if (!*(v17 + 48))
        {
LABEL_19:
          CircularBuffer.Transaction.commit()();
          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_36;
    }
  }

  return result;
}

{
  if (*v1 == 1)
  {
    v2 = v1;
    v3 = v1[3];
    if (*(v3 + 49))
    {
      v4 = result;
      v5 = v1[14];
      result = tracepointAssertion.value._rawValue;
      if (tracepointAssertion.value._rawValue)
      {
        v7 = v1 + 7;
        v6 = v1[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v33 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(96, 1, v6, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v33;

        if ((*(v3 + 49) & 1) == 0)
        {
          specialized Trace_Handle.write<A>(struct:)(1610612736, type metadata accessor for T_TracepointIDV0);
LABEL_23:
          if ((*(v2[3] + 49) & 1) == 0)
          {
            type metadata accessor for T_DynamicPropertiesChanged(0);
            v27 = v26;
            v28 = swift_conformsToProtocol2();
            if (v28)
            {
              if (v27 && (*(v28 + 24))(v27, v28) != 5)
              {
                v40 = v4;
                v41 = BYTE4(v4);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
                if (swift_dynamicCast())
                {
                  outlined init with take of Inspectable(v38, &v33);
                  v29 = v35;
                  v30 = v36;
                  v31 = __swift_project_boxed_opaque_existential_1(&v33, v35);
                  v32 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                  project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v31, v2, &type metadata for Trace.SwiftUI, v27, v29, v32, &protocol witness table for T_DynamicPropertiesChanged, v30);
                  result = __swift_destroy_boxed_opaque_existential_1(&v33);
                  goto LABEL_25;
                }

                v39 = 0;
                memset(v38, 0, sizeof(v38));
                outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v38, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
              }
            }
          }

          result = specialized Trace_Handle.write<A>(struct:)(v4 & 0xFFFFFFFFFFLL, type metadata accessor for T_DynamicPropertiesChanged);
LABEL_25:
          ++*v7;
          return result;
        }
      }

      else
      {
        v7 = v1 + 7;
      }

      if (readingDebug)
      {
        v9 = *v7;
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v10 = readingDebugLog;
        v11 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v10, v11);
        if (result)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *&v38[0] = v13;
          *v12 = 134218498;
          *(v12 + 4) = v9;
          *(v12 + 12) = 2080;
          v33 = xmmword_26C32DAD0;
          v34 = 1;
          v35 = 0;
          v36 = 0;
          v37 = 512;
          v14 = T_TracepointID.describe(state:)(&v33, 0x60u);
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v38);

          *(v12 + 14) = v16;
          *(v12 + 22) = 1024;
          *(v12 + 24) = 0;
          _os_log_impl(&dword_26C161000, v10, v11, "w %ld: %s, back: %u", v12, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x26D69EAB0](v13, -1, -1);
          result = MEMORY[0x26D69EAB0](v12, -1, -1);
        }
      }

      v17 = v2[4];
      if (*(v17 + 56))
      {
        if (*(v17 + 52) == 2)
        {
LABEL_20:
          result = CircularBuffer.Transaction.begin()();
          v24 = result + 4;
          v19 = *(v17 + 48);
          v20 = v19 | (*(v17 + 52) << 32);
LABEL_21:
          if (BYTE4(v20) != 2)
          {
            *(*(v17 + 32) + v19) = 96;
            *(v17 + 48) = v19 + 4;
            v25 = v2[15] + v24;
            v2[14] = v5;
            v2[15] = v25;
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return result;
        }

        v18 = *(v17 + 32);
        LODWORD(v19) = *(v17 + 48);
        v20 = v19 | (*(v17 + 52) << 32);
        if (v18)
        {
          v21 = *(v17 + 40) - v18;
          v22 = v21 < v19;
          v23 = v21 - v19;
          if (!v22)
          {
            if (v23 >= 22)
            {
              v24 = 4;
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          __break(1u);
        }

        else if (!*(v17 + 48))
        {
LABEL_19:
          CircularBuffer.Transaction.commit()();
          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, unint64_t a2, int a3)
{
  if (*v3 == 1)
  {
    v4 = v3;
    v5 = v3[3];
    if (*(v5 + 49) == 1)
    {
      v8 = result;
      v9 = v3[14];
      result = tracepointAssertion.value._rawValue;
      if (tracepointAssertion.value._rawValue)
      {
        v11 = v3 + 7;
        v10 = v3[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, 0, v10, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v39;

        if (*(v5 + 49) != 1)
        {
          specialized Trace_Handle.write<A>(struct:)(83886080);
LABEL_23:
          if ((*(v4[3] + 49) & 1) == 0)
          {
            type metadata accessor for T_ModeDecl(0);
            v31 = v30;
            v32 = swift_conformsToProtocol2();
            if (v32)
            {
              if (v31 && (*(v32 + 24))(v31, v32) != 20)
              {
                v46 = v8;
                v47 = a2;
                v48 = a3;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
                if (swift_dynamicCast())
                {
                  outlined init with take of Inspectable(v44, &v39);
                  v33 = v41;
                  v34 = v42;
                  v35 = __swift_project_boxed_opaque_existential_1(&v39, v41);
                  v36 = lazy protocol witness table accessor for type Trace.Control and conformance Trace.Control();
                  project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v35, v4, &type metadata for Trace.Control, v31, v33, v36, &protocol witness table for T_ModeDecl, v34);
                  result = __swift_destroy_boxed_opaque_existential_1(&v39);
                  goto LABEL_25;
                }

                v45 = 0;
                memset(v44, 0, sizeof(v44));
                outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v44, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
              }
            }
          }

          result = specialized Trace_Handle.write<A>(struct:)(v8, a2, a3);
LABEL_25:
          ++*v11;
          return result;
        }
      }

      else
      {
        v11 = v3 + 7;
      }

      if (readingDebug)
      {
        v13 = *v11;
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v14 = readingDebugLog;
        v15 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v14, v15);
        if (result)
        {
          v16 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v44[0] = v38;
          *v16 = 134218498;
          *(v16 + 4) = v13;
          *(v16 + 12) = 2080;
          v39 = xmmword_26C32DAD0;
          v40 = 1;
          v41 = 0;
          v42 = 0;
          v43 = 512;
          v17 = T_TracepointID.describe(state:)(&v39, 5u);
          log = v14;
          v19 = v9;
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v44);

          *(v16 + 14) = v20;
          v9 = v19;
          *(v16 + 22) = 1024;
          *(v16 + 24) = 0;
          _os_log_impl(&dword_26C161000, log, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x26D69EAB0](v38, -1, -1);
          result = MEMORY[0x26D69EAB0](v16, -1, -1);
        }
      }

      v21 = v4[4];
      if (*(v21 + 56))
      {
        if (*(v21 + 52) == 2)
        {
LABEL_20:
          result = CircularBuffer.Transaction.begin()();
          v28 = result + 4;
          v23 = *(v21 + 48);
          v24 = v23 | (*(v21 + 52) << 32);
LABEL_21:
          if (BYTE4(v24) != 2)
          {
            *(*(v21 + 32) + v23) = 5;
            *(v21 + 48) = v23 + 4;
            v29 = v4[15] + v28;
            v4[14] = v9;
            v4[15] = v29;
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return result;
        }

        v22 = *(v21 + 32);
        LODWORD(v23) = *(v21 + 48);
        v24 = v23 | (*(v21 + 52) << 32);
        if (v22)
        {
          v25 = *(v21 + 40) - v22;
          v26 = v25 < v23;
          v27 = v25 - v23;
          if (!v26)
          {
            if (v27 > 36)
            {
              v28 = 4;
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          __break(1u);
        }

        else if (!*(v21 + 48))
        {
LABEL_19:
          CircularBuffer.Transaction.commit()();
          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_36;
    }
  }

  return result;
}

void specialized Trace_Handle.write<A>(_:omit:)()
{
  if (*v0 == 1)
  {
    v1 = v0;
    v2 = v0[3];
    v3 = v0[14];
    if (tracepointAssertion.value._rawValue)
    {
      v4 = v0[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(50, 2, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v28;
    }

    if ((*(v2 + 49) & 1) == 0)
    {
      specialized Trace_Handle.write<A>(struct:)(838860800);
LABEL_22:
      if ((*(v1[3] + 49) & 1) == 0)
      {
        v23 = swift_conformsToProtocol2();
        if (v23)
        {
          if ((*(v23 + 24))(&type metadata for TestingSupport.TestEvent, v23))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
            if (swift_dynamicCast())
            {
              outlined init with take of Inspectable(v33, &v28);
              v24 = v30;
              v25 = v31;
              v26 = __swift_project_boxed_opaque_existential_1(&v28, v30);
              v27 = lazy protocol witness table accessor for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle();
              project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v26, v1, &type metadata for TestingSupport.TraceHandle, &type metadata for TestingSupport.TestEvent, v24, v27, &protocol witness table for TestingSupport.TestEvent, v25);
              __swift_destroy_boxed_opaque_existential_1(&v28);
LABEL_29:
              ++v1[7];
              return;
            }

            v34 = 0;
            memset(v33, 0, sizeof(v33));
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v33, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
          }
        }
      }

      specialized Trace_Handle.write<A>(struct:)(&type metadata for TestingSupport.TestEvent);
      goto LABEL_29;
    }

    if (readingDebug)
    {
      v6 = v0[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v7 = readingDebugLog;
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v33[0] = v10;
        *v9 = 134218498;
        *(v9 + 4) = v6;
        *(v9 + 12) = 2080;
        v28 = xmmword_26C32DAD0;
        v29 = 1;
        v30 = 0;
        v31 = 0;
        v32 = 512;
        v11 = T_TracepointID.describe(state:)(&v28, 0x32u);
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v33);

        *(v9 + 14) = v13;
        *(v9 + 22) = 1024;
        *(v9 + 24) = 0;
        _os_log_impl(&dword_26C161000, v7, v8, "w %ld: %s, back: %u", v9, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x26D69EAB0](v10, -1, -1);
        MEMORY[0x26D69EAB0](v9, -1, -1);
      }
    }

    v14 = v1[4];
    if (*(v14 + 56))
    {
      if (*(v14 + 52) == 2)
      {
LABEL_19:
        v21 = CircularBuffer.Transaction.begin()() + 4;
        v16 = *(v14 + 48);
        v17 = v16 | (*(v14 + 52) << 32);
LABEL_20:
        if (BYTE4(v17) != 2)
        {
          *(*(v14 + 32) + v16) = 50;
          *(v14 + 48) = v16 + 4;
          v22 = v1[15] + v21;
          v1[14] = v3;
          v1[15] = v22;
          goto LABEL_22;
        }

LABEL_34:
        __break(1u);
        return;
      }

      v15 = *(v14 + 32);
      LODWORD(v16) = *(v14 + 48);
      v17 = v16 | (*(v14 + 52) << 32);
      if (v15)
      {
        v18 = *(v14 + 40) - v15;
        v19 = v18 < v16;
        v20 = v18 - v16;
        if (!v19)
        {
          if (v20 >= 17)
          {
            v21 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v14 + 48))
      {
LABEL_18:
        CircularBuffer.Transaction.commit()();
        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }
}

unint64_t lazy protocol witness table accessor for type ReferenceAccessor<TestingSupport.TraceHandle> and conformance ReferenceAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ReferenceAccessor<TestingSupport.TraceHandle> and conformance ReferenceAccessor<A>;
  if (!lazy protocol witness table cache variable for type ReferenceAccessor<TestingSupport.TraceHandle> and conformance ReferenceAccessor<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SwiftUITracingSupport17ReferenceAccessorVyAA07TestingC0O11TraceHandleVGMd, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA07TestingC0O11TraceHandleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceAccessor<TestingSupport.TraceHandle> and conformance ReferenceAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle()
{
  result = lazy protocol witness table cache variable for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle;
  if (!lazy protocol witness table cache variable for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestingSupport.TraceHandle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[128])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}