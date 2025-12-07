uint64_t storeEnumTagSinglePayload for TestingSupport.TraceHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, unint64_t a2)
{
  if (*v2 == 1)
  {
    v3 = v2;
    v4 = v2[3];
    if (*(v4 + 49))
    {
      v6 = result;
      v7 = v2[14];
      result = tracepointAssertion.value._rawValue;
      if (tracepointAssertion.value._rawValue)
      {
        v9 = v2 + 7;
        v8 = v2[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v36 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(7, 0, v8, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v36;

        if ((*(v4 + 49) & 1) == 0)
        {
          specialized Trace_Handle.write<A>(struct:)(117440512);
LABEL_23:
          if ((*(v3[3] + 49) & 1) == 0)
          {
            type metadata accessor for T_KeypathDecl(0);
            v29 = v28;
            v30 = swift_conformsToProtocol2();
            if (v30)
            {
              if (v29 && (*(v30 + 24))(v29, v30) != 16)
              {
                v43 = v6;
                v44 = a2;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
                if (swift_dynamicCast())
                {
                  outlined init with take of Inspectable(v41, &v36);
                  v31 = v38;
                  v32 = v39;
                  v33 = __swift_project_boxed_opaque_existential_1(&v36, v38);
                  v34 = lazy protocol witness table accessor for type Trace.Control and conformance Trace.Control();
                  project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v33, v3, &type metadata for Trace.Control, v29, v31, v34, &protocol witness table for T_KeypathDecl, v32);
                  result = __swift_destroy_boxed_opaque_existential_1(&v36);
                  goto LABEL_25;
                }

                v42 = 0;
                memset(v41, 0, sizeof(v41));
                outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v41, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
              }
            }
          }

          result = specialized Trace_Handle.write<A>(struct:)(v6, a2);
LABEL_25:
          ++*v9;
          return result;
        }
      }

      else
      {
        v9 = v2 + 7;
      }

      if (readingDebug)
      {
        v11 = *v9;
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v12 = readingDebugLog;
        v13 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v12, v13);
        if (result)
        {
          v14 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v41[0] = v35;
          *v14 = 134218498;
          *(v14 + 4) = v11;
          *(v14 + 12) = 2080;
          v36 = xmmword_26C32DAD0;
          v37 = 1;
          v38 = 0;
          v39 = 0;
          v40 = 512;
          v15 = T_TracepointID.describe(state:)(&v36, 7u);
          v17 = v7;
          v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v41);

          *(v14 + 14) = v18;
          v7 = v17;
          *(v14 + 22) = 1024;
          *(v14 + 24) = 0;
          _os_log_impl(&dword_26C161000, v12, v13, "w %ld: %s, back: %u", v14, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x26D69EAB0](v35, -1, -1);
          result = MEMORY[0x26D69EAB0](v14, -1, -1);
        }
      }

      v19 = v3[4];
      if (*(v19 + 56))
      {
        if (*(v19 + 52) == 2)
        {
LABEL_20:
          result = CircularBuffer.Transaction.begin()();
          v26 = result + 4;
          v21 = *(v19 + 48);
          v22 = v21 | (*(v19 + 52) << 32);
LABEL_21:
          if (BYTE4(v22) != 2)
          {
            *(*(v19 + 32) + v21) = 7;
            *(v19 + 48) = v21 + 4;
            v27 = v3[15] + v26;
            v3[14] = v7;
            v3[15] = v27;
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return result;
        }

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
            if (v25 >= 33)
            {
              v26 = 4;
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          __break(1u);
        }

        else if (!*(v19 + 48))
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

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1)
{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 0, 0, type metadata accessor for T_AnyAttachmentV0);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 26, 436207616, type metadata accessor for T_EndEvent);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 36, 603979776, type metadata accessor for T_NodeRemoveEdge);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 48, 805306368, type metadata accessor for T_ReuseEvent);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 50, 838860800, type metadata accessor for T_ReuseViewInputsDifferent);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 49, 822083584, type metadata accessor for T_ReuseInternal);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 56, 939524096, type metadata accessor for T_ReuseInvalidSubgraph);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 58, 973078528, type metadata accessor for T_ReuseBody);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 60, 1006632960, type metadata accessor for T_ReuseUnaryElement);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 57, 956301312, type metadata accessor for T_ReuseNeverMadeReusable);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 55, 922746880, type metadata accessor for T_ReusePreventingType);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 39, 654311424, type metadata accessor for T_NodeSetPending);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 43, 721420288, type metadata accessor for T_IndirectNodeSetSource);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 44, 738197504, type metadata accessor for T_IndirectNodeSetDependency);
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, 47, 788529152, type metadata accessor for T_NodeMarkValueExtendedV0);
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2)
{
  if (*v2 == 1)
  {
    v3 = v2;
    v5 = result;
    v6 = v2[3];
    v7 = v2[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v8 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v27 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(33, 1, v8, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v27;
    }

    if (*(v6 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(553648128, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v5, a2, type metadata accessor for T_SubgraphRemoveChild);
      ++v3[7];
      return result;
    }

    if (readingDebug)
    {
      v10 = v2[7];
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
        v32 = v14;
        *v13 = 134218498;
        *(v13 + 4) = v10;
        *(v13 + 12) = 2080;
        v27 = xmmword_26C32DAD0;
        v28 = 1;
        v29 = 0;
        v30 = 0;
        v31 = 512;
        v15 = T_TracepointID.describe(state:)(&v27, 0x21u);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

        *(v13 + 14) = v17;
        *(v13 + 22) = 1024;
        *(v13 + 24) = 0;
        _os_log_impl(&dword_26C161000, v11, v12, "w %ld: %s, back: %u", v13, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x26D69EAB0](v14, -1, -1);
        result = MEMORY[0x26D69EAB0](v13, -1, -1);
      }
    }

    v18 = v3[4];
    if (*(v18 + 56))
    {
      if (*(v18 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v25 = result + 4;
        v20 = *(v18 + 48);
        v21 = v20 | (*(v18 + 52) << 32);
LABEL_20:
        if (BYTE4(v21) != 2)
        {
          *(*(v18 + 32) + v20) = 33;
          *(v18 + 48) = v20 + 4;
          v26 = v3[15] + v25;
          v3[14] = v7;
          v3[15] = v26;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

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
          if (v24 >= 33)
          {
            v25 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v18 + 48))
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

  return result;
}

{
  *&v29 = result;
  *(&v29 + 1) = a2;
  if (*v2 == 1)
  {
    v3 = v2;
    v4 = HIDWORD(a2);
    v5 = result;
    v6 = *(&v29 + 4);
    v7 = v2[3];
    v8 = v2[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v9 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(42, 1, v9, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v29;
    }

    if (*(v7 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(704643072, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      LODWORD(v29) = v5;
      *(&v29 + 4) = v6;
      HIDWORD(v29) = v4;
      result = specialized Trace_Handle.write<A>(struct:)(v29, *(&v29 + 1));
      ++v3[7];
      return result;
    }

    if (readingDebug)
    {
      v11 = v2[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v12 = readingDebugLog;
      v13 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v12, v13);
      if (result)
      {
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34 = v28;
        *v14 = 134218498;
        *(v14 + 4) = v11;
        *(v14 + 12) = 2080;
        v29 = xmmword_26C32DAD0;
        v30 = 1;
        v31 = 0;
        v32 = 0;
        v33 = 512;
        v15 = T_TracepointID.describe(state:)(&v29, 0x2Au);
        v17 = v8;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v34);

        *(v14 + 14) = v18;
        v8 = v17;
        *(v14 + 22) = 1024;
        *(v14 + 24) = 0;
        _os_log_impl(&dword_26C161000, v12, v13, "w %ld: %s, back: %u", v14, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x26D69EAB0](v28, -1, -1);
        result = MEMORY[0x26D69EAB0](v14, -1, -1);
      }
    }

    v19 = v3[4];
    if (*(v19 + 56))
    {
      if (*(v19 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v26 = result + 4;
        v21 = *(v19 + 48);
        v22 = v21 | (*(v19 + 52) << 32);
LABEL_20:
        if (BYTE4(v22) != 2)
        {
          *(*(v19 + 32) + v21) = 42;
          *(v19 + 48) = v21 + 4;
          v27 = v3[15] + v26;
          v3[14] = v8;
          v3[15] = v27;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

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
          if (v25 >= 33)
          {
            v26 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v19 + 48))
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

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*v4 == 1)
  {
    v5 = v4;
    v9 = result;
    v10 = v4[3];
    v11 = v4[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v12 = v4[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(34, 1, v12, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v31;
    }

    if (*(v10 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(570425344, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v9, a2, a3, a4);
      ++v5[7];
      return result;
    }

    if (readingDebug)
    {
      v14 = v4[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v15 = readingDebugLog;
      v16 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v15, v16);
      if (result)
      {
        v17 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v17 = 134218498;
        *(v17 + 4) = v14;
        *(v17 + 12) = 2080;
        v31 = xmmword_26C32DAD0;
        v32 = 1;
        v33 = 0;
        v34 = 0;
        v35 = 512;
        v18 = T_TracepointID.describe(state:)(&v31, 0x22u);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v36);

        *(v17 + 14) = v20;
        *(v17 + 22) = 1024;
        *(v17 + 24) = 0;
        _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x26D69EAB0](v30, -1, -1);
        result = MEMORY[0x26D69EAB0](v17, -1, -1);
      }
    }

    v21 = v5[4];
    if (*(v21 + 56))
    {
      if (*(v21 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v28 = result + 4;
        v23 = *(v21 + 48);
        v24 = v23 | (*(v21 + 52) << 32);
LABEL_20:
        if (BYTE4(v24) != 2)
        {
          *(*(v21 + 32) + v23) = 34;
          *(v21 + 48) = v23 + 4;
          v29 = v5[15] + v28;
          v5[14] = v11;
          v5[15] = v29;
          goto LABEL_22;
        }

LABEL_27:
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
          if (v27 >= 49)
          {
            v28 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v21 + 48))
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

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, int a2)
{
  if (*v2 == 1)
  {
    v3 = v2;
    v5 = result;
    v6 = v2[3];
    v7 = v2[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v8 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v27 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(35, 1, v8, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v27;
    }

    if ((*(v6 + 49) & 1) == 0)
    {
      specialized Trace_Handle.write<A>(struct:)(587202560, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v5, a2, type metadata accessor for T_NodeAddEdge);
      ++v3[7];
      return result;
    }

    if (readingDebug)
    {
      v10 = v2[7];
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
        v32 = v14;
        *v13 = 134218498;
        *(v13 + 4) = v10;
        *(v13 + 12) = 2080;
        v27 = xmmword_26C32DAD0;
        v28 = 1;
        v29 = 0;
        v30 = 0;
        v31 = 512;
        v15 = T_TracepointID.describe(state:)(&v27, 0x23u);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

        *(v13 + 14) = v17;
        *(v13 + 22) = 1024;
        *(v13 + 24) = 0;
        _os_log_impl(&dword_26C161000, v11, v12, "w %ld: %s, back: %u", v13, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x26D69EAB0](v14, -1, -1);
        result = MEMORY[0x26D69EAB0](v13, -1, -1);
      }
    }

    v18 = v3[4];
    if (*(v18 + 56))
    {
      if (*(v18 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v25 = result + 4;
        v20 = *(v18 + 48);
        v21 = v20 | (*(v18 + 52) << 32);
LABEL_20:
        if (BYTE4(v21) != 2)
        {
          *(*(v18 + 32) + v20) = 35;
          *(v18 + 48) = v20 + 4;
          v26 = v3[15] + v25;
          v3[14] = v7;
          v3[15] = v26;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

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
          if (v24 >= 29)
          {
            v25 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v18 + 48))
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

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4 == 1)
  {
    v6 = a2;
    v7 = v4;
    v8 = result;
    v9 = v4[3];
    v10 = v4[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v11 = v4[7];
      v12 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v32 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, 1, v11, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v32;

      a3 = v12;
    }

    if ((*(v9 + 49) & 1) == 0)
    {
      specialized Trace_Handle.write<A>(struct:)(a3, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v8, a4);
      ++v7[7];
      return result;
    }

    if (readingDebug)
    {
      v14 = v4[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v15 = readingDebugLog;
      v16 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v15, v16);
      if (result)
      {
        v17 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v17 = 134218498;
        *(v17 + 4) = v14;
        *(v17 + 12) = 2080;
        v32 = xmmword_26C32DAD0;
        v33 = 1;
        v34 = 0;
        v35 = 0;
        v36 = 512;
        v18 = T_TracepointID.describe(state:)(&v32, v6);
        v20 = v10;
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v37);

        *(v17 + 14) = v21;
        v10 = v20;
        *(v17 + 22) = 1024;
        *(v17 + 24) = 0;
        _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x26D69EAB0](v31, -1, -1);
        result = MEMORY[0x26D69EAB0](v17, -1, -1);
      }
    }

    v22 = v7[4];
    if (*(v22 + 56))
    {
      if (*(v22 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v29 = result + 4;
        v24 = *(v22 + 48);
        v25 = v24 | (*(v22 + 52) << 32);
LABEL_20:
        if (BYTE4(v25) != 2)
        {
          *(*(v22 + 32) + v24) = v6;
          *(v22 + 48) = v24 + 4;
          v30 = v7[15] + v29;
          v7[14] = v10;
          v7[15] = v30;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v23 = *(v22 + 32);
      LODWORD(v24) = *(v22 + 48);
      v25 = v24 | (*(v22 + 52) << 32);
      if (v23)
      {
        v26 = *(v22 + 40) - v23;
        v27 = v26 < v24;
        v28 = v26 - v24;
        if (!v27)
        {
          if (v28 >= 25)
          {
            v29 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v22 + 48))
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

  return result;
}

{
  if (*v4 == 1)
  {
    v6 = a2;
    v7 = v4;
    v8 = result;
    v9 = v4[3];
    v10 = v4[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v11 = v4[7];
      v12 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v32 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, 1, v11, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v32;

      a3 = v12;
    }

    if (*(v9 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(a3, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v8, a4);
      ++v7[7];
      return result;
    }

    if (readingDebug)
    {
      v14 = v4[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v15 = readingDebugLog;
      v16 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v15, v16);
      if (result)
      {
        v17 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v17 = 134218498;
        *(v17 + 4) = v14;
        *(v17 + 12) = 2080;
        v32 = xmmword_26C32DAD0;
        v33 = 1;
        v34 = 0;
        v35 = 0;
        v36 = 512;
        v18 = T_TracepointID.describe(state:)(&v32, v6);
        v20 = v10;
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v37);

        *(v17 + 14) = v21;
        v10 = v20;
        *(v17 + 22) = 1024;
        *(v17 + 24) = 0;
        _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x26D69EAB0](v31, -1, -1);
        result = MEMORY[0x26D69EAB0](v17, -1, -1);
      }
    }

    v22 = v7[4];
    if (*(v22 + 56))
    {
      if (*(v22 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v29 = result + 4;
        v24 = *(v22 + 48);
        v25 = v24 | (*(v22 + 52) << 32);
LABEL_20:
        if (BYTE4(v25) != 2)
        {
          *(*(v22 + 32) + v24) = v6;
          *(v22 + 48) = v24 + 4;
          v30 = v7[15] + v29;
          v7[14] = v10;
          v7[15] = v30;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v23 = *(v22 + 32);
      LODWORD(v24) = *(v22 + 48);
      v25 = v24 | (*(v22 + 52) << 32);
      if (v23)
      {
        v26 = *(v22 + 40) - v23;
        v27 = v26 < v24;
        v28 = v26 - v24;
        if (!v27)
        {
          if (v28 >= 18)
          {
            v29 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v22 + 48))
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

  return result;
}

{
  if (*v4 == 1)
  {
    v6 = a2;
    v7 = v4;
    v8 = result;
    v9 = v4[3];
    v10 = v4[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v11 = v4[7];
      v12 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v32 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, 1, v11, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v32;

      a3 = v12;
    }

    if (*(v9 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(a3, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v8 & 0xFFFFFFFFFFLL, a4);
      ++v7[7];
      return result;
    }

    if (readingDebug)
    {
      v14 = v4[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v15 = readingDebugLog;
      v16 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v15, v16);
      if (result)
      {
        v17 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v17 = 134218498;
        *(v17 + 4) = v14;
        *(v17 + 12) = 2080;
        v32 = xmmword_26C32DAD0;
        v33 = 1;
        v34 = 0;
        v35 = 0;
        v36 = 512;
        v18 = T_TracepointID.describe(state:)(&v32, v6);
        v20 = v10;
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v37);

        *(v17 + 14) = v21;
        v10 = v20;
        *(v17 + 22) = 1024;
        *(v17 + 24) = 0;
        _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x26D69EAB0](v31, -1, -1);
        result = MEMORY[0x26D69EAB0](v17, -1, -1);
      }
    }

    v22 = v7[4];
    if (*(v22 + 56))
    {
      if (*(v22 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v29 = result + 4;
        v24 = *(v22 + 48);
        v25 = v24 | (*(v22 + 52) << 32);
LABEL_20:
        if (BYTE4(v25) != 2)
        {
          *(*(v22 + 32) + v24) = v6;
          *(v22 + 48) = v24 + 4;
          v30 = v7[15] + v29;
          v7[14] = v10;
          v7[15] = v30;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v23 = *(v22 + 32);
      LODWORD(v24) = *(v22 + 48);
      v25 = v24 | (*(v22 + 52) << 32);
      if (v23)
      {
        v26 = *(v22 + 40) - v23;
        v27 = v26 < v24;
        v28 = v26 - v24;
        if (!v27)
        {
          if (v28 >= 22)
          {
            v29 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v22 + 48))
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

  return result;
}

{
  if (*v4 == 1)
  {
    v5 = v4;
    v6 = v4[3];
    if (*(v6 + 49) != 1)
    {
      v7 = result;
      if (!tracepointAssertion.value._rawValue || (v9 = a2, v10 = v4[14], v11 = v4[7], v12 = a3, isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), *&v34 = tracepointAssertion.value._rawValue, tracepointAssertion.value._rawValue = 0x8000000000000000, specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, 1, v11, isUniquelyReferenced_nonNull_native), tracepointAssertion.value._rawValue = v34, result = , a3 = v12, (*(v6 + 49) & 1) == 0))
      {
        specialized Trace_Handle.write<A>(struct:)(a3, type metadata accessor for T_TracepointIDV0);
        v29 = a4;
        result = v7;
LABEL_22:
        result = specialized Trace_Handle.write<A>(struct:)(result, v29);
        ++v5[7];
        return result;
      }

      if (readingDebug)
      {
        v14 = v4[7];
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v15 = readingDebugLog;
        v16 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v15, v16);
        if (result)
        {
          v17 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v39 = v33;
          *v17 = 134218498;
          *(v17 + 4) = v14;
          *(v17 + 12) = 2080;
          v34 = xmmword_26C32DAD0;
          v35 = 1;
          v36 = 0;
          v37 = 0;
          v38 = 512;
          v18 = T_TracepointID.describe(state:)(&v34, v9);
          v20 = v10;
          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v39);

          *(v17 + 14) = v21;
          v10 = v20;
          *(v17 + 22) = 1024;
          *(v17 + 24) = 0;
          _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x26D69EAB0](v33, -1, -1);
          result = MEMORY[0x26D69EAB0](v17, -1, -1);
        }
      }

      v22 = v5[4];
      if (*(v22 + 56))
      {
        if (*(v22 + 52) == 2)
        {
LABEL_19:
          v31 = CircularBuffer.Transaction.begin()() + 4;
          v24 = *(v22 + 48);
          v25 = v24 | (*(v22 + 52) << 32);
          v29 = a4;
          result = v7;
          v30 = v9;
LABEL_20:
          if (BYTE4(v25) != 2)
          {
            *(*(v22 + 32) + v24) = v30;
            *(v22 + 48) = v24 + 4;
            v32 = v5[15] + v31;
            v5[14] = v10;
            v5[15] = v32;
            goto LABEL_22;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        v23 = *(v22 + 32);
        LODWORD(v24) = *(v22 + 48);
        v25 = v24 | (*(v22 + 52) << 32);
        if (v23)
        {
          v26 = *(v22 + 40) - v23;
          v27 = v26 < v24;
          v28 = v26 - v24;
          if (!v27)
          {
            if (v28 >= 25)
            {
              v29 = a4;
              result = v7;
              v30 = v9;
              v31 = 4;
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          __break(1u);
        }

        else if (!*(v22 + 48))
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

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, char a2)
{
  if (*v2 == 1)
  {
    v3 = v2;
    v5 = result;
    v6 = v2[3];
    v7 = v2[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v8 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v27 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(37, 1, v8, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v27;
    }

    if ((*(v6 + 49) & 1) == 0)
    {
      specialized Trace_Handle.write<A>(struct:)(620756992, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v5, a2, type metadata accessor for T_NodeSetEdgePending);
      ++v3[7];
      return result;
    }

    if (readingDebug)
    {
      v10 = v2[7];
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
        v32 = v14;
        *v13 = 134218498;
        *(v13 + 4) = v10;
        *(v13 + 12) = 2080;
        v27 = xmmword_26C32DAD0;
        v28 = 1;
        v29 = 0;
        v30 = 0;
        v31 = 512;
        v15 = T_TracepointID.describe(state:)(&v27, 0x25u);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

        *(v13 + 14) = v17;
        *(v13 + 22) = 1024;
        *(v13 + 24) = 0;
        _os_log_impl(&dword_26C161000, v11, v12, "w %ld: %s, back: %u", v13, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x26D69EAB0](v14, -1, -1);
        result = MEMORY[0x26D69EAB0](v13, -1, -1);
      }
    }

    v18 = v3[4];
    if (*(v18 + 56))
    {
      if (*(v18 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v25 = result + 4;
        v20 = *(v18 + 48);
        v21 = v20 | (*(v18 + 52) << 32);
LABEL_20:
        if (BYTE4(v21) != 2)
        {
          *(*(v18 + 32) + v20) = 37;
          *(v18 + 48) = v20 + 4;
          v26 = v3[15] + v25;
          v3[14] = v7;
          v3[15] = v26;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

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
          if (v24 >= 26)
          {
            v25 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v18 + 48))
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

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (*v4 == 1)
  {
    v5 = v4;
    v6 = v4[3];
    if (*(v6 + 49))
    {
      v10 = result;
      v37 = v4[14];
      result = tracepointAssertion.value._rawValue;
      if (tracepointAssertion.value._rawValue)
      {
        v12 = v4 + 7;
        v11 = v4[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(94, 1, v11, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v38;

        if ((*(v6 + 49) & 1) == 0)
        {
          specialized Trace_Handle.write<A>(struct:)(1577058304, type metadata accessor for T_TracepointIDV0);
LABEL_23:
          if ((*(v5[3] + 49) & 1) == 0)
          {
            type metadata accessor for T_AssignRootSubgraph(0);
            v30 = v29;
            v31 = swift_conformsToProtocol2();
            if (v31)
            {
              if (v30 && (*(v31 + 24))(v30, v31) != 26)
              {
                v45 = v10;
                v46 = a2;
                v47 = a3;
                v48 = a4;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
                if (swift_dynamicCast())
                {
                  outlined init with take of Inspectable(v43, &v38);
                  v32 = v40;
                  v33 = v41;
                  v34 = __swift_project_boxed_opaque_existential_1(&v38, v40);
                  v35 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                  project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v34, v5, &type metadata for Trace.SwiftUI, v30, v32, v35, &protocol witness table for T_AssignRootSubgraph, v33);
                  result = __swift_destroy_boxed_opaque_existential_1(&v38);
                  goto LABEL_25;
                }

                v44 = 0;
                memset(v43, 0, sizeof(v43));
                outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
              }
            }
          }

          result = specialized Trace_Handle.write<A>(struct:)(v10, a2, a3, a4);
LABEL_25:
          ++*v12;
          return result;
        }
      }

      else
      {
        v12 = v4 + 7;
      }

      if (readingDebug)
      {
        v14 = *v12;
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v15 = readingDebugLog;
        v16 = static os_log_type_t.default.getter();
        result = os_log_type_enabled(v15, v16);
        if (result)
        {
          v17 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v43[0] = v36;
          *v17 = 134218498;
          *(v17 + 4) = v14;
          *(v17 + 12) = 2080;
          v38 = xmmword_26C32DAD0;
          v39 = 1;
          v40 = 0;
          v41 = 0;
          v42 = 512;
          v18 = T_TracepointID.describe(state:)(&v38, 0x5Eu);
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v43);

          *(v17 + 14) = v20;
          *(v17 + 22) = 1024;
          *(v17 + 24) = 0;
          _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x26D69EAB0](v36, -1, -1);
          result = MEMORY[0x26D69EAB0](v17, -1, -1);
        }
      }

      v21 = v5[4];
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
            *(*(v21 + 32) + v23) = 94;
            *(v21 + 48) = v23 + 4;
            v5[15] += v28;
            v5[14] = v37;
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
            if (v27 >= 43)
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

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, uint64_t a2)
{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, a2, 51, 855638016, type metadata accessor for T_ReuseFailedTypeComparison, specialized Trace_Handle.write<A>(struct:));
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, a2, 52, 872415232, type metadata accessor for T_ReuseCacheItemEvent, specialized Trace_Handle.write<A>(struct:));
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, a2, 54, 905969664, type metadata accessor for T_ReuseIncrementalChildReuseAttempt, specialized Trace_Handle.write<A>(struct:));
}

{
  return specialized Trace_Handle.write<A>(_:omit:)(a1, a2, 59, 989855744, type metadata accessor for T_ReuseIncompatibleLists, specialized Trace_Handle.write<A>(struct:));
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, char a3)
{
  if (*v3 == 1)
  {
    v4 = v3;
    v7 = result;
    v8 = v3[3];
    v9 = v3[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v10 = v3[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(53, 1, v10, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v30;
    }

    if (*(v8 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(889192448, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = specialized Trace_Handle.write<A>(struct:)(v7, a2, a3);
      ++v4[7];
      return result;
    }

    if (readingDebug)
    {
      v12 = v3[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v13 = readingDebugLog;
      v14 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v13, v14);
      if (result)
      {
        v15 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v15 = 134218498;
        *(v15 + 4) = v12;
        *(v15 + 12) = 2080;
        v30 = xmmword_26C32DAD0;
        v31 = 1;
        v32 = 0;
        v33 = 0;
        v34 = 512;
        v16 = T_TracepointID.describe(state:)(&v30, 0x35u);
        v18 = v9;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v35);

        *(v15 + 14) = v19;
        v9 = v18;
        *(v15 + 22) = 1024;
        *(v15 + 24) = 0;
        _os_log_impl(&dword_26C161000, v13, v14, "w %ld: %s, back: %u", v15, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x26D69EAB0](v29, -1, -1);
        result = MEMORY[0x26D69EAB0](v15, -1, -1);
      }
    }

    v20 = v4[4];
    if (*(v20 + 56))
    {
      if (*(v20 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v27 = result + 4;
        v22 = *(v20 + 48);
        v23 = v22 | (*(v20 + 52) << 32);
LABEL_20:
        if (BYTE4(v23) != 2)
        {
          *(*(v20 + 32) + v22) = 53;
          *(v20 + 48) = v22 + 4;
          v28 = v4[15] + v27;
          v4[14] = v9;
          v4[15] = v28;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

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
          if (v26 >= 34)
          {
            v27 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v20 + 48))
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

  return result;
}

uint64_t specialized Trace_Handle.write<A>(_:omit:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(NSObject *, uint64_t, uint64_t))
{
  if (*v6 == 1)
  {
    v7 = a6;
    v8 = a5;
    v9 = v6;
    v10 = a2;
    v11 = result;
    v12 = a3;
    v13 = v6[3];
    v38 = v6[14];
    result = tracepointAssertion.value._rawValue;
    if (tracepointAssertion.value._rawValue)
    {
      v14 = v6[7];
      log = v11;
      v18 = a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 1, v14, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v39;

      a4 = v18;
      v7 = a6;
      v8 = a5;
      v10 = a2;
      v11 = log;
    }

    if (*(v13 + 49) != 1)
    {
      specialized Trace_Handle.write<A>(struct:)(a4, type metadata accessor for T_TracepointIDV0);
LABEL_22:
      result = v7(v11, v10, v8);
      ++v9[7];
      return result;
    }

    if (readingDebug)
    {
      v20 = v6[7];
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v21 = readingDebugLog;
      v22 = static os_log_type_t.default.getter();
      result = os_log_type_enabled(v21, v22);
      if (result)
      {
        loga = v21;
        v23 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v23 = 134218498;
        *(v23 + 4) = v20;
        *(v23 + 12) = 2080;
        v39 = xmmword_26C32DAD0;
        v40 = 1;
        v41 = 0;
        v42 = 0;
        v43 = 512;
        v24 = T_TracepointID.describe(state:)(&v39, v12);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

        *(v23 + 14) = v26;
        *(v23 + 22) = 1024;
        *(v23 + 24) = 0;
        _os_log_impl(&dword_26C161000, loga, v22, "w %ld: %s, back: %u", v23, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x26D69EAB0](v35, -1, -1);
        result = MEMORY[0x26D69EAB0](v23, -1, -1);
      }
    }

    v27 = v9[4];
    if (*(v27 + 56))
    {
      if (*(v27 + 52) == 2)
      {
LABEL_19:
        result = CircularBuffer.Transaction.begin()();
        v34 = result + 4;
        v29 = *(v27 + 48);
        v30 = v29 | (*(v27 + 52) << 32);
LABEL_20:
        if (BYTE4(v30) != 2)
        {
          *(*(v27 + 32) + v29) = v12;
          *(v27 + 48) = v29 + 4;
          v9[15] += v34;
          v9[14] = v38;
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v28 = *(v27 + 32);
      LODWORD(v29) = *(v27 + 48);
      v30 = v29 | (*(v27 + 52) << 32);
      if (v28)
      {
        v31 = *(v27 + 40) - v28;
        v32 = v31 < v29;
        v33 = v31 - v29;
        if (!v32)
        {
          if (v33 >= 26)
          {
            v34 = 4;
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else if (!*(v27 + 48))
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

  return result;
}

uint64_t outlined init with copy of SHA256Digest?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void static ABIRequirement.abiAvailability.getter(_WORD *a1@<X8>)
{
  *a1 = 256;
}

{
  static ABIRequirement.abiAvailability.getter(a1);
}

double T_Header.init(loadedFrom:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized T_Header.init(loadedFrom:)(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

double T_Header.init()@<D0>(uint64_t a2@<X8>)
{
  specialized T_Header.init()(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

void (*specialized Atomic.subscript.read(void *a1, char a2, os_unfair_lock *lock))()
{
  *a1 = lock;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
    return Atomic.subscript.modifyspecialized ;
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
    return EventTreeStats.count.modify;
  }
}

{
  *a1 = lock;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
    return Atomic.subscript.modifyspecialized ;
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
    return EventTreeStats.count.modify;
  }
}

NSUInteger static CircularBuffer.Buffer.bufferSize.getter()
{
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    result *= 8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void T_Header.version.getter(BOOL *a1@<X8>)
{
  v2 = *(v1 + 8);
  if ((v2 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 != 1;
  }
}

unint64_t static V0Tracepoint.v0Size.getter(uint64_t a1)
{
  result = *(*(a1 - 8) + 64);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  return static V0Tracepoint.v0Size.getter(a1);
}

uint64_t static V0Tracepoint.size(in:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 == 2)
  {
    __break(1u);
  }

  else if (v3 == 1)
  {
    return (*(a3 + 24))(a2, a3);
  }

  __break(1u);
  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo28T_ViewGraphRootValueChangeV2a_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  *v38 = v2;
  *&v38[8] = v3;
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v4 = *&v38[2];
    if (readingDebug)
    {
      v5 = a1 + 7;
      v6 = *(a1 + 9);
      v65[0] = *(a1 + 7);
      v65[1] = v6;
      v66[0] = *(a1 + 11);
      *(v66 + 9) = *(a1 + 97);
      v7 = a1 + 11;
      v8 = a1 + 25;
      v9 = a1 + 13;
      v10 = *(a1 + 29);
      while (1)
      {
        v11 = *v9;
        if (v10 < *v8)
        {
          v12 = (*v7 + 8 * v10);
          if ((v12[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v11)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v65);
        }

        v7 = (v11 + 32);
        v8 = (v11 + 44);
        v9 = (v11 + 48);
        v5 = v11;
      }

      if (!*v5)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v5 + 24 * *v12) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v31 = v2;
        v13 = *a1;
        v14 = *(a1 + 3);
        v62 = *(a1 + 1);
        v63 = v14;
        v64 = a1[5];
        v15 = *(a1 + 48);
        v16 = *(a1 + 129);
        v59 = *(a1 + 113);
        v60 = v16;
        v61[0] = *(a1 + 145);
        *(v61 + 15) = *(a1 + 10);
        v17 = *(a1 + 65);
        v55 = *(a1 + 49);
        v56 = v17;
        v18 = *(a1 + 97);
        v57 = *(a1 + 81);
        v58 = v18;
        v54 = *(a1 + 192);
        v19 = a1[22];
        v53 = a1[23];
        v20 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v21 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v20))
        {
          v22 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v22 = 136446466;
          *&v38[8] = v62;
          v39 = v63;
          v46 = v59;
          v47 = v60;
          *v48 = v61[0];
          *&v48[15] = *(v61 + 15);
          v42 = v55;
          v43 = v56;
          v44 = v57;
          v52 = v30;
          if (v15)
          {
            v23 = 0;
          }

          else
          {
            v23 = v13;
          }

          *v38 = v13;
          v40 = v64;
          v41 = v15;
          v45 = v58;
          v49 = v19;
          v50 = v53;
          v51 = v54;
          v32 = xmmword_26C32DAD0;
          v33 = 0;
          v34 = 0;
          v35 = v19;
          v36 = v23;
          v37 = 1;
          v24 = Interpreter.Iterator.describe(state:)(&v32);
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v52);

          *(v22 + 4) = v26;
          *(v22 + 12) = 2082;
          *v38 = v31;
          *&v38[2] = v4;
          type metadata accessor for T_ViewGraphRootValueChangeV2(0);
          v27 = String.init<A>(describing:)();
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v52);

          *(v22 + 14) = v29;
          _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v30, -1, -1);
          MEMORY[0x26D69EAB0](v22, -1, -1);
          v2 = v31;
        }

        else
        {
          v2 = v31;
        }
      }
    }

    specialized Interpreter.Iterator.observe<A>(invalidation:)(v2, v4);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo27T_IndirectNodeSetDependencya_Tt0g5(void (*a1)())
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 512)
  {
    v3 = v2;
    v64 = HIDWORD(v2);
    if (!readingDebug)
    {
      goto LABEL_19;
    }

    v4 = v65;
    v5 = (a1 + 56);
    v6 = *(a1 + 72);
    v86[0] = *(a1 + 56);
    v86[1] = v6;
    v87[0] = *(a1 + 88);
    *(v87 + 9) = *(a1 + 97);
    v7 = (a1 + 88);
    v8 = (a1 + 100);
    v9 = (a1 + 104);
    v10 = *(a1 + 29);
    while (1)
    {
      v11 = *v9;
      if (v10 < *v8)
      {
        v12 = (*v7 + 8 * v10);
        if ((v12[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v86);
      }

      v7 = (v11 + 32);
      v8 = (v11 + 44);
      v9 = (v11 + 48);
      v5 = v11;
    }

    v13 = *v5;
    if (v13)
    {
      if (((*(*(v13 + 24 * *v12) + 48) >= 0) & *(a1 + 192)) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
      {
        goto LABEL_19;
      }

      v14 = *a1;
      v15 = *(a1 + 24);
      v79 = *(a1 + 8);
      v80 = v15;
      v81 = *(a1 + 5);
      LODWORD(v16) = *(a1 + 48);
      v17 = *(a1 + 129);
      v76 = *(a1 + 113);
      v77 = v17;
      v78[0] = *(a1 + 145);
      *(v78 + 15) = *(a1 + 10);
      v18 = *(a1 + 65);
      v73 = *(a1 + 49);
      v74 = v18;
      v19 = *(a1 + 97);
      *v75 = *(a1 + 81);
      *&v75[16] = v19;
      BYTE8(v82) = *(a1 + 192);
      v20 = *(a1 + 22);
      *&v82 = *(a1 + 23);
      LOBYTE(v21) = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v22 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v21))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136446466;
          *&v65[8] = v79;
          *&v65[24] = v80;
          v67 = v76;
          *(v4 + 129) = v77;
          *(v4 + 145) = v78[0];
          v68 = *(v78 + 15);
          *&v66[1] = v73;
          *&v66[17] = v74;
          *&v66[33] = *v75;
          v72 = v24;
          if (v16)
          {
            v25 = 0;
          }

          else
          {
            v25 = v14;
          }

          *v65 = v14;
          *&v65[40] = v81;
          v66[0] = v16;
          *&v66[49] = *&v75[16];
          v69 = v20;
          v70 = v82;
          v71 = BYTE8(v82);
          v83 = xmmword_26C32DAD0;
          LOBYTE(v84) = 0;
          *(&v84 + 1) = 0;
          *&v85[0] = v20;
          BYTE8(v85[0]) = v25;
          BYTE9(v85[0]) = 1;
          v26 = Interpreter.Iterator.describe(state:)(&v83);
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v72);

          *(v23 + 4) = v28;
          *(v23 + 12) = 2082;
          *v65 = v3;
          *&v65[4] = v64;
          type metadata accessor for T_IndirectNodeSetDependency(0);
          v29 = String.init<A>(describing:)();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v72);

          *(v23 + 14) = v31;
          _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v24, -1, -1);
          MEMORY[0x26D69EAB0](v23, -1, -1);
        }

LABEL_19:
        v32 = (a1 + 56);
        v33 = *(a1 + 72);
        v73 = *(a1 + 56);
        v74 = v33;
        *v75 = *(a1 + 88);
        v34 = a1 + 72;
        v35 = (a1 + 84);
        v14 = (a1 + 104);
        *&v75[9] = *(a1 + 97);
        v36 = (a1 + 56);
        v37 = (a1 + 72);
        v38 = (a1 + 84);
        v39 = (a1 + 104);
        while (1)
        {
          v40 = *v39;
          if (*v38 >= 2u)
          {
            v41 = *v37;
            if ((*(v41 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v40)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v73);
          }

          v37 = (v40 + 16);
          v38 = (v40 + 28);
          v39 = (v40 + 48);
          v36 = v40;
        }

        v42 = *v36;
        if (!v42)
        {
          break;
        }

        v4 = &v73;
        v43 = *(*(v42 + 24 * *(v41 + 8)) + 112);
        if (!v43)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          (a1)(&v79, 0);
          __break(1u);
LABEL_56:
          (a1)(&v79, 0);
          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }

        v82 = *v43;
        v16 = *(v43 + 2);
        v44 = *(v43 + 88);
        *v66 = *(v43 + 72);
        *&v66[16] = v44;
        *&v66[32] = *(v43 + 104);
        *&v66[45] = *(v43 + 117);
        v45 = *(v43 + 40);
        *v65 = *(v43 + 24);
        *&v65[16] = v45;
        *&v65[32] = *(v43 + 56);
        v20 = *v16;
        if (*(*v16 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v64), (v47 & 1) != 0))
        {
          v48 = (*(v20 + 56) + 24 * v46);
          v64 = *v48;
          v21 = *(v48 + 1);
        }

        else
        {
          v21 = 0;
        }

        v49 = *(a1 + 72);
        v83 = *v32;
        v84 = v49;
        v85[0] = *(a1 + 88);
        *(v85 + 9) = *(a1 + 97);
        while (1)
        {
          v50 = *v14;
          if (*v35 >= 2u && (*(*v34 + 12) & 1) == 0)
          {
            break;
          }

          if (!v50)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v83);
          }

          v34 = (v50 + 16);
          v35 = (v50 + 28);
          v14 = (v50 + 48);
          v32 = v50;
        }

        if (!*v32)
        {
          goto LABEL_59;
        }

        v51 = *(*(*v32 + 24 * *(*v34 + 8)) + 112);
        if (!v51)
        {
          goto LABEL_52;
        }

        *v51 = v82;
        *(v51 + 16) = v16;
        v52 = *v65;
        *(v51 + 72) = *v66;
        *(v51 + 88) = *&v66[16];
        *(v51 + 104) = *&v66[32];
        *(v51 + 117) = *&v66[45];
        *(v51 + 24) = v52;
        *(v51 + 40) = *&v65[16];
        *(v51 + 56) = *&v65[32];
        v53 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v3, a1);
        if (*(a1 + 48))
        {
          goto LABEL_53;
        }

        v54 = *(a1 + 22);
        v55 = *a1;
        if (v55 >= *(v54 + 116))
        {
          __break(1u);
        }

        else
        {
          v56 = *(v54 + 104);
          if (!v56)
          {
            goto LABEL_54;
          }

          v3 = v53;
          v57 = *(*(v56 + 8 * v55) + 8);
          v58 = *(v57 + 72);
          v59 = *(v57 + 84);
          a1 = specialized Strong.subscript.read();
          v20 = *v60;
          if (!*(*v60 + 16))
          {
            goto LABEL_55;
          }

          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v21);
          if ((v62 & 1) == 0)
          {
            goto LABEL_56;
          }

          v4 = *(*(v20 + 56) + 4 * v61);
          (a1)(&v79, 0);
          if (v4 < v59)
          {
            if (v58)
            {
              v63 = v58 + 312 * v4;
              *(v63 + 172) = v3;
              *(v63 + 176) = 0;
              return;
            }

            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_50:
        swift_once();
      }

      __break(1u);
LABEL_59:
      __break(1u);
    }

    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo26T_ViewGraphRootValueChangea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024 && readingDebug)
  {
    v3 = a1 + 7;
    v4 = *(a1 + 9);
    v66[0] = *(a1 + 7);
    v66[1] = v4;
    v67[0] = *(a1 + 11);
    *(v67 + 9) = *(a1 + 97);
    v5 = a1 + 11;
    v6 = a1 + 25;
    v7 = a1 + 13;
    v8 = *(a1 + 29);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v66);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (*v3)
    {
      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = v2;
        v12 = *a1;
        v13 = *(a1 + 3);
        v63 = *(a1 + 1);
        v64 = v13;
        v65 = a1[5];
        v14 = *(a1 + 48);
        v15 = *(a1 + 129);
        v60 = *(a1 + 113);
        v61 = v15;
        v62[0] = *(a1 + 145);
        *(v62 + 15) = *(a1 + 10);
        v16 = *(a1 + 65);
        v56 = *(a1 + 49);
        v57 = v16;
        v17 = *(a1 + 97);
        v58 = *(a1 + 81);
        v59 = v17;
        v55 = *(a1 + 192);
        v18 = a1[22];
        v54 = a1[23];
        v19 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v20 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v19))
        {
          v30 = v11;
          v31 = HIDWORD(v11);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 136446466;
          v39 = v63;
          v40 = v64;
          v47 = v60;
          v48 = v61;
          *v49 = v62[0];
          *&v49[15] = *(v62 + 15);
          v43 = v56;
          v44 = v57;
          v45 = v58;
          v53 = v22;
          if (v14)
          {
            v23 = 0;
          }

          else
          {
            v23 = v12;
          }

          v38 = v12;
          v41 = v65;
          v42 = v14;
          v46 = v59;
          v50 = v18;
          v51 = v54;
          v52 = v55;
          v32 = xmmword_26C32DAD0;
          v33 = 0;
          v34 = 0;
          v35 = v18;
          v36 = v23;
          v37 = 1;
          v24 = Interpreter.Iterator.describe(state:)(&v32);
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v53);

          *(v21 + 4) = v26;
          *(v21 + 12) = 2082;
          LODWORD(v38) = v30;
          WORD2(v38) = v31;
          type metadata accessor for T_ViewGraphRootValueChange(0);
          v27 = String.init<A>(describing:)();
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v53);

          *(v21 + 14) = v29;
          _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v22, -1, -1);
          MEMORY[0x26D69EAB0](v21, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo25T_NodeMarkValueExtendedV0a_Tt0g5(unsigned __int8 *a1)
{
  v5 = a1;
  specialized Interpreter.Iterator.iterate<A>()();
  if (a1[48] || a1[1] << 8 != 1024)
  {
    return;
  }

  v7 = HIDWORD(v6);
  if (!readingDebug)
  {
    goto LABEL_20;
  }

  v5 = v64;
  v8 = a1 + 56;
  v9 = *(a1 + 72);
  v83[0] = *(a1 + 56);
  v83[1] = v9;
  v84[0] = *(a1 + 88);
  *(v84 + 9) = *(a1 + 97);
  v10 = a1 + 88;
  v11 = a1 + 100;
  v12 = a1 + 104;
  v13 = *(a1 + 29);
  while (1)
  {
    v14 = *v12;
    if (v13 < *v11)
    {
      v15 = (*v10 + 8 * v13);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v83);
    }

    v10 = v14 + 32;
    v11 = v14 + 44;
    v12 = v14 + 48;
    v8 = v14;
  }

  if (!*v8)
  {
    goto LABEL_59;
  }

  if (((*(*(*v8 + 24 * *v15) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
  {
    goto LABEL_20;
  }

  v57 = v6;
  v2 = *a1;
  v16 = *(a1 + 24);
  v80 = *(a1 + 8);
  v81 = v16;
  v82 = *(a1 + 5);
  v3 = a1[48];
  v17 = *(a1 + 129);
  v77 = *(a1 + 113);
  v78 = v17;
  v79[0] = *(a1 + 145);
  *(v79 + 15) = *(a1 + 10);
  v18 = *(a1 + 65);
  v73 = *(a1 + 49);
  v74 = v18;
  v19 = *(a1 + 97);
  v75 = *(a1 + 81);
  v76 = v19;
  v72 = a1[192];
  v1 = *(a1 + 22);
  v71 = *(a1 + 23);
  LOBYTE(v20) = static os_log_type_t.default.getter();
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v21 = readingDebugLog;
    if (os_log_type_enabled(readingDebugLog, v20))
    {
      v22 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v22 = 136446466;
      *&v64[8] = v80;
      *&v64[24] = v81;
      v23 = v78;
      *(v5 + 113) = v77;
      *(v5 + 129) = v23;
      *(v5 + 145) = v79[0];
      v66 = *(v79 + 15);
      *&v64[49] = v73;
      v65 = v74;
      v24 = v76;
      *(v5 + 81) = v75;
      v70 = v56;
      if (v3)
      {
        v25 = 0;
      }

      else
      {
        v25 = v2;
      }

      *v64 = v2;
      *&v64[40] = v82;
      v64[48] = v3;
      *(v5 + 97) = v24;
      v67 = v1;
      v68 = v71;
      v69 = v72;
      v58 = xmmword_26C32DAD0;
      v59 = 0;
      v60 = 0;
      v61 = v1;
      v62 = v25;
      v63 = 1;
      v26 = Interpreter.Iterator.describe(state:)(&v58);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v70);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2082;
      v1 = v57;
      *v64 = v57;
      *&v64[4] = v7;
      type metadata accessor for T_NodeMarkValueExtendedV0(0);
      v29 = String.init<A>(describing:)();
      v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v70);

      *(v22 + 14) = v2;
      _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
      v5 = v56;
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v56, -1, -1);
      MEMORY[0x26D69EAB0](v22, -1, -1);
      v6 = v57;
    }

    else
    {
      v6 = v57;
    }

LABEL_20:
    v20 = *(a1 + 29);
    if (v7)
    {
      v31 = *(a1 + 29);
    }

    else
    {
      v31 = 0;
    }

    if (v7)
    {
      v32 = v7;
    }

    else
    {
      v32 = -1;
    }

    *(a1 + 40) = v31;
    *(a1 + 41) = v7 != 0;
    a1[168] = v7 == 0;
    *(a1 + 43) = v32;
    v33 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v6, a1);
    if (a1[48])
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v34 = *(a1 + 22);
    v35 = *a1;
    if (v35 >= *(v34 + 116))
    {
      goto LABEL_47;
    }

    v36 = *(v34 + 104);
    if (!v36)
    {
      goto LABEL_54;
    }

    v5 = v33;
    v37 = *(*(v36 + 8 * v35) + 8);
    if (v33 >= *(v37 + 84))
    {
      goto LABEL_48;
    }

    v38 = *(v37 + 72);
    if (!v38)
    {
      goto LABEL_55;
    }

    v39 = v38 + 312 * v33;
    v40 = *(v39 + 264);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_49;
    }

    *(v39 + 264) = v42;
    v43 = 312 * v33;
    v1 = *a1;
    v2 = a1[48];
    v44 = a1 + 56;
    v45 = *(a1 + 72);
    *v64 = *(a1 + 56);
    *&v64[16] = v45;
    *&v64[32] = *(a1 + 88);
    *&v64[41] = *(a1 + 97);
    v46 = a1 + 88;
    v47 = a1 + 100;
    v48 = a1 + 104;
    while (1)
    {
      v49 = *v48;
      if (v20 < *v47)
      {
        v50 = (*v46 + 8 * v20);
        if ((v50[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v49)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v64);
      }

      v46 = v49 + 32;
      v47 = v49 + 44;
      v48 = v49 + 48;
      v44 = v49;
    }

    v54 = *v44;
    if (!v54)
    {
      goto LABEL_58;
    }

    v55 = v54 + 24 * *v50;
    if (v2)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v1 >= *(v34 + 116))
    {
      goto LABEL_50;
    }

    v51 = *(v34 + 104);
    if (!v51)
    {
      goto LABEL_56;
    }

    v52 = *(*(v51 + 8 * v1) + 8);
    if (v5 < *(v52 + 84))
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v53 = *(v52 + 72);
  if (v53)
  {
    *(v53 + v43 + 184) = *(*v55 + 32);
    LOBYTE(v58) = 1;
    LOBYTE(v80) = 1;
    LOBYTE(v71) = 0;
    LODWORD(v73) = v5;
    BYTE4(v73) = 0;
    *(&v73 + 1) = 0;
    LOBYTE(v74) = 1;
    *(&v74 + 4) = 0xFFFFFFFFLL;
    HIDWORD(v74) = 0;
    LOBYTE(v75) = 1;
    DWORD1(v75) = -1;
    *(&v75 + 1) = 0;
    LODWORD(v76) = 0;
    BYTE4(v76) = 0;
    specialized Interpreter.Iterator.observe<A>(invalidation:)(&v73);
    return;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo24T_NodeSetValueExtendedV0a_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v5 = HIDWORD(v4);
    if (!readingDebug)
    {
      goto LABEL_20;
    }

    v6 = (a1 + 56);
    v7 = *(a1 + 72);
    v79[0] = *(a1 + 56);
    v79[1] = v7;
    v80[0] = *(a1 + 88);
    *(v80 + 9) = *(a1 + 97);
    v8 = (a1 + 88);
    v9 = (a1 + 100);
    v10 = (a1 + 104);
    v11 = *(a1 + 116);
    while (1)
    {
      v12 = *v10;
      if (v11 < *v9)
      {
        v13 = (*v8 + 8 * v11);
        if ((v13[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v12)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v79);
      }

      v8 = (v12 + 32);
      v9 = (v12 + 44);
      v10 = (v12 + 48);
      v6 = v12;
    }

    if (*v6)
    {
      if (((*(*(*v6 + 24 * *v13) + 48) >= 0) & *(a1 + 192)) != 1 || (*(*(a1 + 176) + 160) & 1) == 0)
      {
        goto LABEL_20;
      }

      v53 = v4;
      v1 = *a1;
      v14 = *(a1 + 24);
      v73 = *(a1 + 8);
      v74 = v14;
      v75 = *(a1 + 40);
      LODWORD(v15) = *(a1 + 48);
      v16 = *(a1 + 129);
      v70 = *(a1 + 113);
      v71 = v16;
      v72[0] = *(a1 + 145);
      *(v72 + 15) = *(a1 + 160);
      v17 = *(a1 + 65);
      v67 = *(a1 + 49);
      v68 = v17;
      v18 = *(a1 + 97);
      *v69 = *(a1 + 81);
      *&v69[16] = v18;
      v66 = *(a1 + 192);
      v2 = *(a1 + 176);
      v65 = *(a1 + 184);
      LOBYTE(v19) = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        goto LABEL_55;
      }

      while (1)
      {
        v20 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 136446466;
          *&v54[8] = v73;
          *&v54[24] = v74;
          v58 = v70;
          v59 = v71;
          *v60 = v72[0];
          *&v60[15] = *(v72 + 15);
          *&v54[49] = v67;
          v55 = v68;
          v56 = *v69;
          v64 = v22;
          if (v15)
          {
            v23 = 0;
          }

          else
          {
            v23 = v1;
          }

          *&v54[40] = v75;
          v54[48] = v15;
          v57 = *&v69[16];
          v61 = v2;
          v62 = v65;
          v63 = v66;
          v76 = xmmword_26C32DAD0;
          LOBYTE(v77) = 0;
          *(&v77 + 1) = 0;
          *&v78[0] = v2;
          BYTE8(v78[0]) = v23;
          BYTE9(v78[0]) = 1;
          v24 = Interpreter.Iterator.describe(state:)(&v76);
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v64);

          *(v21 + 4) = v26;
          *(v21 + 12) = 2082;
          v2 = v53;
          *v54 = v53;
          *&v54[4] = v5;
          type metadata accessor for T_NodeSetValueExtendedV0(0);
          v27 = String.init<A>(describing:)();
          v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v64);

          *(v21 + 14) = v1;
          _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v22, -1, -1);
          MEMORY[0x26D69EAB0](v21, -1, -1);
          LODWORD(v4) = v53;
        }

        else
        {
          LODWORD(v4) = v53;
        }

LABEL_20:
        v29 = *(a1 + 116);
        if (v4)
        {
          v30 = *(a1 + 116);
        }

        else
        {
          v30 = 0;
        }

        if (v4)
        {
          v31 = v4;
        }

        else
        {
          v31 = -1;
        }

        *(a1 + 160) = v30;
        *(a1 + 164) = v4 != 0;
        *(a1 + 168) = v4 == 0;
        *(a1 + 172) = v31;
        v19 = (a1 + 56);
        v32 = *(a1 + 72);
        *v54 = *(a1 + 56);
        *&v54[16] = v32;
        *&v54[32] = *(a1 + 88);
        v33 = (a1 + 88);
        v34 = (a1 + 100);
        v35 = (a1 + 104);
        v36 = (a1 + 56);
        v37 = (a1 + 104);
        *&v54[41] = *(a1 + 97);
        while (1)
        {
          v38 = *v37;
          if (v29 < *v34)
          {
            v39 = (*v33 + 8 * v29);
            if ((v39[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v38)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v29, 0, v54);
          }

          v33 = (v38 + 32);
          v34 = (v38 + 44);
          v37 = (v38 + 48);
          v36 = v38;
        }

        if (!*v36)
        {
          goto LABEL_58;
        }

        v15 = *(*(*v36 + 24 * *v39) + 32);
        if ((_s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v5, a1) & 0x100000000) == 0)
        {
          T_NodeSetValue.Closure.apply(within:)(a1, v15, v5);
          return;
        }

        v40 = *(a1 + 72);
        v67 = *v19;
        v68 = v40;
        *v69 = *(a1 + 88);
        v41 = (a1 + 72);
        a1 += 84;
        *&v69[9] = *(v19 + 41);
        v42 = v19;
        v43 = v41;
        v44 = a1;
        v45 = v35;
        while (1)
        {
          v46 = *v45;
          if (*v44 >= 2u)
          {
            v47 = *v43;
            if ((*(v47 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v46)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v67);
          }

          v43 = (v46 + 16);
          v44 = (v46 + 28);
          v45 = (v46 + 48);
          v42 = v46;
        }

        v48 = *v42;
        if (!v48)
        {
          goto LABEL_60;
        }

        v49 = *(*(v48 + 24 * *(v47 + 8)) + 112);
        if (!v49)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (*(v49 + 124) == 1)
        {
          break;
        }

        __break(1u);
LABEL_55:
        swift_once();
      }

      v50 = v19[1];
      v76 = *v19;
      v77 = v50;
      v78[0] = v19[2];
      *(v78 + 9) = *(v19 + 41);
      while (1)
      {
        v51 = *v35;
        if (*a1 >= 2u && (*(*v41 + 12) & 1) == 0)
        {
          break;
        }

        if (!v51)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v76);
        }

        v41 = (v51 + 16);
        a1 = v51 + 28;
        v35 = (v51 + 48);
        v19 = v51;
      }

      if (*v19)
      {
        v52 = *(*(*v19 + 24 * *(*v41 + 8)) + 112);
        if (v52)
        {
          *(v52 + 112) = v15;
          *(v52 + 120) = v5;
          *(v52 + 124) = 0;
          return;
        }

        goto LABEL_57;
      }
    }

    else
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo24T_ActionGestureAttributea_Tt0g5(unsigned __int8 *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (a1[48] || a1[1] << 8 != 1024)
  {
    return;
  }

  v3 = HIDWORD(v2);
  if (readingDebug)
  {
    v4 = a1 + 56;
    v5 = *(a1 + 72);
    v96[0] = *(a1 + 56);
    v96[1] = v5;
    v97[0] = *(a1 + 88);
    *(v97 + 9) = *(a1 + 97);
    v6 = a1 + 88;
    v7 = a1 + 100;
    v8 = a1 + 104;
    v9 = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (v9 < *v7)
      {
        v11 = (*v6 + 8 * v9);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v96);
      }

      v6 = v10 + 32;
      v7 = v10 + 44;
      v8 = v10 + 48;
      v4 = v10;
    }

    if (!*v4)
    {
      goto LABEL_47;
    }

    if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[192]) == 1 && (*(*(a1 + 22) + 160))
    {
      v66 = v2;
      v12 = *a1;
      v13 = *(a1 + 24);
      v93 = *(a1 + 8);
      v94 = v13;
      v95 = *(a1 + 5);
      v14 = a1[48];
      v15 = *(a1 + 129);
      v90 = *(a1 + 113);
      v91 = v15;
      v92[0] = *(a1 + 145);
      *(v92 + 15) = *(a1 + 10);
      v16 = *(a1 + 65);
      v86 = *(a1 + 49);
      v87 = v16;
      v17 = *(a1 + 97);
      v88 = *(a1 + 81);
      v89 = v17;
      v85 = a1[192];
      v18 = *(a1 + 22);
      v84 = *(a1 + 23);
      v19 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v20 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v19))
      {
        v21 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v21 = 136446466;
        *&v73[8] = v93;
        *&v73[24] = v94;
        v77 = v90;
        v78 = v91;
        *v79 = v92[0];
        *&v79[15] = *(v92 + 15);
        *&v73[49] = v86;
        v74 = v87;
        v75 = v88;
        v83 = v65;
        if (v14)
        {
          v22 = 0;
        }

        else
        {
          v22 = v12;
        }

        *v73 = v12;
        *&v73[40] = v95;
        v73[48] = v14;
        v76 = v89;
        v80 = v18;
        v81 = v84;
        v82 = v85;
        v67 = xmmword_26C32DAD0;
        v68 = 0;
        v69 = 0;
        v70 = v18;
        v71 = v22;
        v72 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v67);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v83);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        *v73 = v66;
        *&v73[4] = v3;
        type metadata accessor for T_ActionGestureAttribute(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v83);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v65, -1, -1);
        MEMORY[0x26D69EAB0](v21, -1, -1);
      }
    }
  }

  if (v3 == 2)
  {
    return;
  }

  v29 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v3, a1);
  v30 = a1 + 56;
  v31 = *(a1 + 72);
  *v73 = *(a1 + 56);
  *&v73[16] = v31;
  *&v73[32] = *(a1 + 88);
  *&v73[41] = *(a1 + 97);
  v32 = a1 + 72;
  v33 = a1 + 84;
  v34 = a1 + 104;
  while (1)
  {
    v35 = *v34;
    if (*v33 >= 2u)
    {
      v36 = *v32;
      if ((*(v36 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v73);
    }

    v32 = v35 + 16;
    v33 = v35 + 28;
    v34 = v35 + 48;
    v30 = v35;
  }

  v37 = *v30;
  if (!v37)
  {
    goto LABEL_48;
  }

  if (!*(*(v37 + 24 * *(v36 + 8)) + 112))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = specialized Strong.subscript.read();
  v40 = *v39;
  if (!*(*v39 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(), (v42 & 1) == 0))
  {
    (v38)(&v86, 0);
    return;
  }

  v43 = *(*(v40 + 56) + 8 * v41);

  (v38)(&v86, 0);
  v44 = *(v43 + 16);
  if (!v44)
  {

    return;
  }

  v45 = *(v43 + 4 * v44 + 28);

  LOBYTE(v86) = 1;
  LOBYTE(v67) = 1;
  LOBYTE(v93) = 0;
  if (a1[48])
  {
    goto LABEL_49;
  }

  v46 = *(a1 + 22);
  v47 = *a1;
  if (v47 >= *(v46 + 116))
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v48 = *(v46 + 104);
  if (!v48)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v49 = v67;
  v50 = v93;
  v51 = *(*(v48 + 8 * v47) + 8);
  *(&v87 + 1) = &type metadata for Event.AttributeValue;
  *&v88 = &protocol witness table for Event.AttributeValue;
  v52 = swift_allocObject();
  *&v86 = v52;
  *(v52 + 16) = v29;
  *(v52 + 20) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 1;
  *(v52 + 36) = 0xFFFFFFFFLL;
  *(v52 + 44) = 0;
  *(v52 + 48) = v49;
  *(v52 + 52) = -1;
  *(v52 + 56) = 0;
  *(v52 + 64) = 0;
  *(v52 + 68) = v50;
  if (v45 >= *(v51 + 44))
  {
    goto LABEL_45;
  }

  v53 = *(v51 + 32);
  if (!v53)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v54 = v53 + (v45 << 7);
  v55 = *(v54 + 8);
  v56 = *(v54 + 16);
  v57 = *(v54 + 24);
  v58 = *(v54 + 25);
  v61 = v54 + 28;
  v60 = *(v54 + 28);
  v59 = *(v61 + 4);
  LOBYTE(v67) = v57;
  v62 = v58 == 0;
  v63 = 256;
  if (v62)
  {
    v63 = 0;
  }

  v64 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v55, v56, v63 | (v60 << 32) | v57, v59);
  outlined assign with take of Event_Noun?(&v86, &v64->Description);
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo23T_IndirectNodeSetSourcea_Tt0g5(unsigned __int8 *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!a1[48] && a1[1] << 8 == 1024)
  {
    v3 = v2;
    v4 = HIDWORD(v2);
    if (!readingDebug)
    {
      goto LABEL_19;
    }

    v5 = a1 + 56;
    v6 = *(a1 + 72);
    v87[0] = *(a1 + 56);
    v87[1] = v6;
    v88[0] = *(a1 + 88);
    *(v88 + 9) = *(a1 + 97);
    v7 = a1 + 88;
    v8 = a1 + 100;
    v9 = a1 + 104;
    v10 = *(a1 + 29);
    while (1)
    {
      v11 = *v9;
      if (v10 < *v8)
      {
        v12 = (*v7 + 8 * v10);
        if ((v12[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v87);
      }

      v7 = v11 + 32;
      v8 = v11 + 44;
      v9 = v11 + 48;
      v5 = v11;
    }

    v13 = *v5;
    if (v13)
    {
      if (((*(*(v13 + 24 * *v12) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
      {
        goto LABEL_19;
      }

      v14 = *a1;
      v15 = *(a1 + 24);
      v81 = *(a1 + 8);
      v82 = v15;
      *&v83[0] = *(a1 + 5);
      LODWORD(v16) = a1[48];
      v17 = *(a1 + 129);
      v77 = *(a1 + 113);
      v78 = v17;
      v79[0] = *(a1 + 145);
      *(v79 + 15) = *(a1 + 10);
      v18 = *(a1 + 65);
      v74 = *(a1 + 49);
      v75 = v18;
      v19 = *(a1 + 97);
      *v76 = *(a1 + 81);
      *&v76[16] = v19;
      BYTE8(v80) = a1[192];
      v20 = *(a1 + 22);
      *&v80 = *(a1 + 23);
      LOBYTE(v21) = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        goto LABEL_58;
      }

      while (1)
      {
        v22 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v21))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136446466;
          v73 = v24;
          v25 = v24;
          if (v16)
          {
            v26 = 0;
          }

          else
          {
            v26 = v14;
          }

          v84 = xmmword_26C32DAD0;
          LOBYTE(v85) = 0;
          *(&v85 + 1) = 0;
          *&v86[0] = v20;
          BYTE8(v86[0]) = v26;
          BYTE9(v86[0]) = 1;
          v27 = Interpreter.Iterator.describe(state:)(&v84);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v73);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2082;
          type metadata accessor for T_IndirectNodeSetSource(0);
          v30 = String.init<A>(describing:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v73);

          *(v23 + 14) = v32;
          _os_log_impl(&dword_26C161000, v22, v21, "%{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v25, -1, -1);
          MEMORY[0x26D69EAB0](v23, -1, -1);
        }

LABEL_19:
        v33 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v4, a1);
        if (v3 == 2)
        {
          return;
        }

        v34 = v33;
        v21 = a1 + 56;
        v35 = *(a1 + 72);
        v74 = *(a1 + 56);
        v75 = v35;
        *v76 = *(a1 + 88);
        *&v76[9] = *(a1 + 97);
        v36 = a1 + 88;
        v37 = a1 + 100;
        v38 = a1 + 104;
        v39 = *(a1 + 29);
        v40 = a1 + 56;
        v41 = a1 + 104;
        while (1)
        {
          v42 = *v41;
          if (v39 < *v37)
          {
            v43 = (*v36 + 8 * v39);
            if ((v43[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v42)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v39, 0, &v74);
          }

          v36 = v42 + 32;
          v37 = v42 + 44;
          v41 = v42 + 48;
          v40 = v42;
        }

        if (!*v40)
        {
          goto LABEL_65;
        }

        v66 = v34;
        if ((*(*(*v40 + 24 * *v43) + 40) & 1) == 0)
        {
          _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v3, a1);
        }

        v44 = *a1;
        v4 = a1[48];
        v45 = *(a1 + 22);
        v46 = *(a1 + 72);
        v84 = *v21;
        v85 = v46;
        v86[0] = *(a1 + 88);
        v16 = a1 + 72;
        a1 += 84;
        v47 = v21;
        v48 = v16;
        v49 = a1;
        v50 = v38;
        *(v86 + 9) = *(v21 + 41);
        while (1)
        {
          v51 = *v50;
          if (*v49 >= 2u)
          {
            v52 = *v48;
            if ((*(v52 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v51)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v84);
          }

          v48 = v51 + 16;
          v49 = v51 + 28;
          v50 = v51 + 48;
          v47 = v51;
        }

        v53 = *v47;
        if (!v53)
        {
          goto LABEL_66;
        }

        v54 = *(*(v53 + 24 * *(v52 + 8)) + 112);
        if (!v54)
        {
          break;
        }

        v80 = *v54;
        v14 = *(v54 + 2);
        v70 = *(v54 + 72);
        v71 = *(v54 + 88);
        *v72 = *(v54 + 104);
        *&v72[13] = *(v54 + 117);
        v67 = *(v54 + 24);
        v68 = *(v54 + 40);
        v69 = *(v54 + 56);
        v55 = *v14;
        if (*(*v14 + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v57 & 1) != 0))
        {
          v58 = (*(v55 + 56) + 24 * v56);
          v3 = *v58;
          v20 = *(v58 + 1);
        }

        else
        {
          v20 = 0;
        }

        v59 = *(v21 + 1);
        v81 = *v21;
        v82 = v59;
        v83[0] = *(v21 + 2);
        *(v83 + 9) = *(v21 + 41);
        while (1)
        {
          v60 = *v38;
          if (*a1 >= 2u && (*(*v16 + 12) & 1) == 0)
          {
            break;
          }

          if (!v60)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v81);
          }

          v16 = v60 + 16;
          a1 = v60 + 28;
          v38 = v60 + 48;
          v21 = v60;
        }

        if (!*v21)
        {
          goto LABEL_67;
        }

        v61 = *(*(*v21 + 24 * *(*v16 + 8)) + 112);
        if (!v61)
        {
          goto LABEL_60;
        }

        *v61 = v80;
        *(v61 + 16) = v14;
        *(v61 + 24) = v67;
        *(v61 + 40) = v68;
        *(v61 + 56) = v69;
        *(v61 + 117) = *&v72[13];
        *(v61 + 104) = *v72;
        *(v61 + 88) = v71;
        *(v61 + 72) = v70;
        if (v4)
        {
          goto LABEL_61;
        }

        if (v44 >= *(v45 + 116))
        {
          __break(1u);
        }

        else
        {
          v62 = *(v45 + 104);
          if (!v62)
          {
            goto LABEL_62;
          }

          v63 = *(*(v62 + 8 * v44) + 8);
          if (v66 < *(v63 + 84))
          {
            v64 = *(v63 + 72);
            if (v64)
            {
              v65 = v64 + 312 * v66;
              *(v65 + 72) = v3;
              *(v65 + 80) = v20;
              *(v65 + 88) = 0;
              return;
            }

            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_58:
        swift_once();
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo23T_AnimationScheduleTicka_Tt0g5(unsigned __int8 *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  *v69 = v6;
  *&v69[8] = v7;
  if (a1[48] || a1[1] << 8 != 1024)
  {
    return;
  }

  v8 = *&v69[4];
  v9 = v6;
  if (!readingDebug)
  {
    goto LABEL_19;
  }

  v2 = &v78;
  v10 = v69;
  v11 = a1 + 56;
  v12 = *(a1 + 72);
  v88[0] = *(a1 + 56);
  v88[1] = v12;
  v89[0] = *(a1 + 88);
  *(v89 + 9) = *(a1 + 97);
  v13 = a1 + 88;
  v14 = a1 + 100;
  v15 = a1 + 104;
  v16 = *(a1 + 29);
  while (1)
  {
    v17 = *v15;
    if (v16 < *v14)
    {
      v18 = (*v13 + 8 * v16);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v16, 0, v88);
    }

    v13 = v17 + 32;
    v14 = v17 + 44;
    v15 = v17 + 48;
    v11 = v17;
  }

  v19 = *v11;
  if (!v19)
  {
LABEL_48:
    __break(1u);
    return;
  }

  if (((*(*(v19 + 24 * *v18) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *a1;
  v20 = *(a1 + 24);
  v85 = *(a1 + 8);
  v86 = v20;
  v87 = *(a1 + 5);
  v4 = a1[48];
  v21 = *(a1 + 129);
  v82 = *(a1 + 113);
  v83 = v21;
  v84[0] = *(a1 + 145);
  *(v84 + 15) = *(a1 + 10);
  v22 = *(a1 + 65);
  v78 = *(a1 + 49);
  v79 = v22;
  v23 = *(a1 + 97);
  v80 = *(a1 + 81);
  v81 = v23;
  v77 = a1[192];
  v1 = *(a1 + 22);
  v76 = *(a1 + 23);
  LOBYTE(v24) = static os_log_type_t.default.getter();
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v25 = readingDebugLog;
    if (os_log_type_enabled(readingDebugLog, v24))
    {
      v26 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v26 = 136446466;
      *&v69[8] = v85;
      *&v69[24] = v86;
      v27 = v83;
      *(v10 + 113) = v82;
      *(v10 + 129) = v27;
      *(v10 + 145) = v84[0];
      v71 = *(v2 + 111);
      *&v69[49] = v78;
      v70 = v79;
      v28 = v81;
      *(v10 + 81) = v80;
      v75 = v62;
      if (v4)
      {
        v29 = 0;
      }

      else
      {
        v29 = v3;
      }

      *v69 = v3;
      *&v69[40] = v87;
      v69[48] = v4;
      *(v10 + 97) = v28;
      v72 = v1;
      v73 = v76;
      v74 = v77;
      v63 = xmmword_26C32DAD0;
      v64 = 0;
      v65 = 0;
      v66 = v1;
      v67 = v29;
      v68 = 1;
      v30 = Interpreter.Iterator.describe(state:)(&v63);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v75);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      *v69 = v9;
      *&v69[4] = v8;
      type metadata accessor for T_AnimationScheduleTick(0);
      v33 = String.init<A>(describing:)();
      v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v75);

      *(v26 + 14) = v2;
      _os_log_impl(&dword_26C161000, v25, v24, "%{public}s %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v62, -1, -1);
      MEMORY[0x26D69EAB0](v26, -1, -1);
    }

LABEL_19:
    v35 = a1 + 56;
    v36 = *(a1 + 72);
    *v69 = *(a1 + 56);
    *&v69[16] = v36;
    *&v69[32] = *(a1 + 88);
    *&v69[41] = *(a1 + 97);
    v37 = a1 + 72;
    v38 = a1 + 84;
    v39 = a1 + 104;
    while (1)
    {
      v40 = *v39;
      if (*v38 >= 2u)
      {
        v41 = *v37;
        if ((*(v41 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v40)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v69);
      }

      v37 = v40 + 16;
      v38 = v40 + 28;
      v39 = v40 + 48;
      v35 = v40;
    }

    v42 = *v35;
    if (!v42)
    {
      goto LABEL_44;
    }

    if (!*(*(v42 + 24 * *(v41 + 8)) + 112))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v24 = specialized Strong.subscript.read();
    v44 = *v43;
    if (!*(*v43 + 16) || (v45 = specialized __RawDictionaryStorage.find<A>(_:)(), (v46 & 1) == 0))
    {
      (v24)(&v78, 0);
      return;
    }

    v10 = *(*(v44 + 56) + 4 * v45);
    (v24)(&v78, 0);
    if (a1[48])
    {
      goto LABEL_45;
    }

    v47 = *(a1 + 22);
    v48 = *a1;
    if (v48 >= *(v47 + 116))
    {
      __break(1u);
      goto LABEL_41;
    }

    v49 = *(v47 + 104);
    if (!v49)
    {
      goto LABEL_46;
    }

    v50 = *(*(v49 + 8 * v48) + 8);
    if (v10 < *(v50 + 44))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v51 = *(v50 + 32);
  if (!v51)
  {
    goto LABEL_47;
  }

  v52 = v51 + (v10 << 7);
  v53 = *(v52 + 8);
  v54 = *(v52 + 16);
  v55 = *(v52 + 24);
  v56 = *(v52 + 25);
  v59 = v52 + 28;
  v58 = *(v52 + 28);
  v57 = *(v59 + 4);
  LOBYTE(v78) = v55;
  v60 = v56 == 0;
  v61 = 256;
  if (v60)
  {
    v61 = 0;
  }

  specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v53, v54, v61 | (v58 << 32) | v55, v57)[2].Description = v8;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo22T_ReuseCacheItemWithIDa_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v5 = v4;
    v6 = v3;
    v7 = v2;
    if (readingDebug)
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 72);
      v70[0] = *(a1 + 56);
      v70[1] = v9;
      v71[0] = *(a1 + 88);
      *(v71 + 9) = *(a1 + 97);
      v10 = (a1 + 88);
      v11 = (a1 + 100);
      v12 = (a1 + 104);
      v13 = *(a1 + 116);
      while (1)
      {
        v14 = *v12;
        if (v13 < *v11)
        {
          v15 = (*v10 + 8 * v13);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v13, 0, v70);
        }

        v10 = (v14 + 32);
        v11 = (v14 + 44);
        v12 = (v14 + 48);
        v8 = v14;
      }

      v16 = *v8;
      if (!v16)
      {
        __break(1u);
        return;
      }

      if ((*(*(v16 + 24 * *v15) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v17 = *a1;
        v18 = *(a1 + 24);
        v67 = *(a1 + 8);
        v68 = v18;
        v69 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v20;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 160);
        v21 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v21;
        v22 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v22;
        v59 = *(a1 + 192);
        v23 = *(a1 + 176);
        v58 = *(a1 + 184);
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v24;
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v43 = v67;
          v44 = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v57 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v42 = v17;
          v45 = v69;
          v46 = v19;
          v50 = v63;
          v54 = v23;
          v55 = v58;
          v56 = v59;
          v36 = xmmword_26C32DAD0;
          v37 = 0;
          v38 = 0;
          v39 = v23;
          v40 = v27;
          v41 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v36);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v57);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          v42 = v7;
          *&v43 = v6;
          BYTE8(v43) = v5;
          type metadata accessor for T_ReuseCacheItemWithID(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v57);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
        }
      }
    }

    T_ReuseCacheItemWithID.update(within:)(a1, v7, v6, v5);
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo24T_BeginGraphInvalidationa_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024 && readingDebug)
  {
    v7 = a1 + 7;
    v8 = *(a1 + 9);
    v70[0] = *(a1 + 7);
    v70[1] = v8;
    v71[0] = *(a1 + 11);
    *(v71 + 9) = *(a1 + 97);
    v9 = a1 + 11;
    v10 = a1 + 25;
    v11 = a1 + 13;
    v12 = *(a1 + 29);
    while (1)
    {
      v13 = *v11;
      if (v12 < *v10)
      {
        v14 = (*v9 + 8 * v12);
        if ((v14[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v13)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v70);
      }

      v9 = (v13 + 32);
      v10 = (v13 + 44);
      v11 = (v13 + 48);
      v7 = v13;
    }

    if (*v7)
    {
      if ((*(*(*v7 + 24 * *v14) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v35 = v6;
        v34 = result;
        v15 = *a1;
        v16 = *(a1 + 3);
        v67 = *(a1 + 1);
        v68 = v16;
        v69 = a1[5];
        v17 = *(a1 + 48);
        v18 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v18;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 10);
        v19 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v19;
        v20 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v20;
        v59 = *(a1 + 192);
        v21 = a1[22];
        v58 = a1[23];
        v22 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v23 = readingDebugLog;
        result = os_log_type_enabled(readingDebugLog, v22);
        if (result)
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 136446466;
          v43 = v67;
          v44 = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v57 = v25;
          v26 = v25;
          if (v17)
          {
            v27 = 0;
          }

          else
          {
            v27 = v15;
          }

          v42 = v15;
          v45 = v69;
          v46 = v17;
          v50 = v63;
          v54 = v21;
          v55 = v58;
          v56 = v59;
          v36 = xmmword_26C32DAD0;
          v37 = 0;
          v38 = 0;
          v39 = v21;
          v40 = v27;
          v41 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v36);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v57);

          *(v24 + 4) = v30;
          *(v24 + 12) = 2082;
          v42 = v34;
          LODWORD(v43) = v35;
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v57);

          *(v24 + 14) = v33;
          _os_log_impl(&dword_26C161000, v23, v22, "%{public}s %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v26, -1, -1);
          return MEMORY[0x26D69EAB0](v24, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo21T_RecordNamedPropertya_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v3 = v2 >> 16;
      v4 = a1 + 7;
      v5 = *(a1 + 9);
      v65[0] = *(a1 + 7);
      v65[1] = v5;
      v66[0] = *(a1 + 11);
      *(v66 + 9) = *(a1 + 97);
      v6 = a1 + 11;
      v7 = a1 + 25;
      v8 = a1 + 13;
      v9 = *(a1 + 29);
      while (1)
      {
        v10 = *v8;
        if (v9 < *v7)
        {
          v11 = (*v6 + 8 * v9);
          if ((v11[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v65);
        }

        v6 = (v10 + 32);
        v7 = (v10 + 44);
        v8 = (v10 + 48);
        v4 = v10;
      }

      if (!*v4)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v30 = v2;
        v12 = *a1;
        v13 = *(a1 + 3);
        v62 = *(a1 + 1);
        v63 = v13;
        v64 = a1[5];
        v14 = *(a1 + 48);
        v15 = *(a1 + 129);
        v59 = *(a1 + 113);
        v60 = v15;
        v61[0] = *(a1 + 145);
        *(v61 + 15) = *(a1 + 10);
        v16 = *(a1 + 65);
        v55 = *(a1 + 49);
        v56 = v16;
        v17 = *(a1 + 97);
        v57 = *(a1 + 81);
        v58 = v17;
        v54 = *(a1 + 192);
        v18 = a1[22];
        v53 = a1[23];
        v19 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v20 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v19))
        {
          v21 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v21 = 136446466;
          v38 = v62;
          v39 = v63;
          v46 = v59;
          v47 = v60;
          *v48 = v61[0];
          *&v48[15] = *(v61 + 15);
          v42 = v55;
          v43 = v56;
          v44 = v57;
          v52 = v29;
          if (v14)
          {
            v22 = 0;
          }

          else
          {
            v22 = v12;
          }

          v37 = v12;
          v40 = v64;
          v41 = v14;
          v45 = v58;
          v49 = v18;
          v50 = v53;
          v51 = v54;
          v31 = xmmword_26C32DAD0;
          v32 = 0;
          v33 = 0;
          v34 = v18;
          v35 = v22;
          v36 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v31);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v52);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2082;
          LOWORD(v37) = v30;
          *(&v37 + 2) = v3;
          type metadata accessor for T_RecordNamedProperty(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v52);

          *(v21 + 14) = v28;
          _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v29, -1, -1);
          MEMORY[0x26D69EAB0](v21, -1, -1);
          v2 = v30;
        }

        else
        {
          v2 = v30;
        }
      }
    }

    T_RecordNamedProperty.model(within:)(a1, v2 & 0xFFFFFFFFFFFFLL);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo21T_BeginSubgraphUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v4 = a1 + 7;
      v5 = *(a1 + 9);
      v70[0] = *(a1 + 7);
      v70[1] = v5;
      v71[0] = *(a1 + 11);
      *(v71 + 9) = *(a1 + 97);
      v6 = a1 + 11;
      v7 = a1 + 25;
      v8 = a1 + 13;
      v9 = *(a1 + 29);
      while (1)
      {
        v10 = *v8;
        if (v9 < *v7)
        {
          v11 = (*v6 + 8 * v9);
          if ((v11[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v70);
        }

        v6 = (v10 + 32);
        v7 = (v10 + 44);
        v8 = (v10 + 48);
        v4 = v10;
      }

      if (!*v4)
      {
        goto LABEL_32;
      }

      if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v40 = v3;
        v39 = v2;
        v12 = *a1;
        v13 = *(a1 + 3);
        v67 = *(a1 + 1);
        v68 = v13;
        v69 = a1[5];
        v14 = *(a1 + 48);
        v15 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v15;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 10);
        v16 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v16;
        v17 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v17;
        v59 = *(a1 + 192);
        v18 = a1[22];
        v58 = a1[23];
        v19 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v20 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 136446466;
          *&v47[8] = v67;
          *&v47[24] = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          *&v47[49] = v60;
          v48 = v61;
          v49 = v62;
          v57 = v22;
          if (v14)
          {
            v23 = 0;
          }

          else
          {
            v23 = v12;
          }

          *v47 = v12;
          *&v47[40] = v69;
          v47[48] = v14;
          v50 = v63;
          v54 = v18;
          v55 = v58;
          v56 = v59;
          v41 = xmmword_26C32DAD0;
          v42 = 0;
          v43 = 0;
          v44 = v18;
          v45 = v23;
          v46 = 1;
          v24 = Interpreter.Iterator.describe(state:)(&v41);
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v57);

          *(v21 + 4) = v26;
          *(v21 + 12) = 2082;
          *v47 = v39;
          *&v47[8] = v40;
          type metadata accessor for T_BeginSubgraphUpdate(0);
          v27 = String.init<A>(describing:)();
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v57);

          *(v21 + 14) = v29;
          _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v22, -1, -1);
          MEMORY[0x26D69EAB0](v21, -1, -1);
        }
      }
    }

    v30 = a1 + 7;
    v31 = *(a1 + 9);
    *v47 = *(a1 + 7);
    *&v47[16] = v31;
    *&v47[32] = *(a1 + 11);
    *&v47[41] = *(a1 + 97);
    v32 = a1 + 9;
    v33 = a1 + 21;
    v34 = a1 + 13;
    while (1)
    {
      v35 = *v34;
      if (*v33)
      {
        v36 = *v32;
        if ((v36[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v47);
      }

      v32 = (v35 + 16);
      v33 = (v35 + 28);
      v34 = (v35 + 48);
      v30 = v35;
    }

    v37 = *v30;
    if (v37)
    {
      v38 = *(*(v37 + 24 * *v36) + 112);
      if (v38)
      {
        ++*(*(v38 + 32) + 4);
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo21T_AnimationAttrUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  v3 = v2;
  if (readingDebug)
  {
    v4 = a1 + 7;
    v5 = *(a1 + 9);
    v71[0] = *(a1 + 7);
    v71[1] = v5;
    v72[0] = *(a1 + 11);
    *(v72 + 9) = *(a1 + 97);
    v6 = a1 + 11;
    v7 = a1 + 25;
    v8 = a1 + 13;
    v9 = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (v9 < *v7)
      {
        v11 = (*v6 + 8 * v9);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v71);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    v12 = *v4;
    if (!v12)
    {
      goto LABEL_35;
    }

    if ((*(*(v12 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v13 = *a1;
      v14 = *(a1 + 3);
      v68 = *(a1 + 1);
      v69 = v14;
      v70 = a1[5];
      v15 = *(a1 + 48);
      v16 = *(a1 + 129);
      v65 = *(a1 + 113);
      v66 = v16;
      v67[0] = *(a1 + 145);
      *(v67 + 15) = *(a1 + 10);
      v17 = *(a1 + 65);
      v61 = *(a1 + 49);
      v62 = v17;
      v18 = *(a1 + 97);
      v63 = *(a1 + 81);
      v64 = v18;
      v60 = *(a1 + 192);
      v19 = a1[22];
      v59 = a1[23];
      v20 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v21 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v20))
      {
        v22 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v22 = 136446466;
        *&v48[8] = v68;
        *&v48[24] = v69;
        v52 = v65;
        v53 = v66;
        *v54 = v67[0];
        *&v54[15] = *(v67 + 15);
        *&v48[49] = v61;
        v49 = v62;
        v50 = v63;
        v58 = v41;
        if (v15)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13;
        }

        *v48 = v13;
        *&v48[40] = v70;
        v48[48] = v15;
        v51 = v64;
        v55 = v19;
        v56 = v59;
        v57 = v60;
        v42 = xmmword_26C32DAD0;
        v43 = 0;
        v44 = 0;
        v45 = v19;
        v46 = v23;
        v47 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v42);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v58);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        *v48 = v3;
        type metadata accessor for T_AnimationAttrUpdate(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v58);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v41, -1, -1);
        MEMORY[0x26D69EAB0](v22, -1, -1);
      }
    }
  }

  v30 = a1 + 7;
  v31 = *(a1 + 9);
  *v48 = *(a1 + 7);
  *&v48[16] = v31;
  *&v48[32] = *(a1 + 11);
  *&v48[41] = *(a1 + 97);
  v32 = a1 + 9;
  v33 = a1 + 21;
  v34 = a1 + 13;
  while (1)
  {
    v35 = *v34;
    if (*v33 >= 2u)
    {
      v36 = *v32;
      if ((*(v36 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v48);
    }

    v32 = (v35 + 16);
    v33 = (v35 + 28);
    v34 = (v35 + 48);
    v30 = v35;
  }

  v37 = *v30;
  if (!v37)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (!*(*(v37 + 24 * *(v36 + 8)) + 112))
  {
    __break(1u);
    goto LABEL_34;
  }

  v38 = specialized Strong.subscript.read();
  if (*(*v39 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v40 & 1) != 0))
  {
    (v38)(&v61, 0);
  }

  else
  {
    (v38)(&v61, 0);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo20T_UninstantiateBegina_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v3 = a1 + 7;
      v4 = *(a1 + 9);
      v68[0] = *(a1 + 7);
      v68[1] = v4;
      v69[0] = *(a1 + 11);
      *(v69 + 9) = *(a1 + 97);
      v5 = a1 + 11;
      v6 = a1 + 25;
      v7 = a1 + 13;
      v8 = *(a1 + 29);
      while (1)
      {
        v9 = *v7;
        if (v8 < *v6)
        {
          v10 = (*v5 + 8 * v8);
          if ((v10[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v9)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v68);
        }

        v5 = (v9 + 32);
        v6 = (v9 + 44);
        v7 = (v9 + 48);
        v3 = v9;
      }

      if (!*v3)
      {
        goto LABEL_31;
      }

      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v38 = v2;
        v11 = *a1;
        v12 = *(a1 + 3);
        v65 = *(a1 + 1);
        v66 = v12;
        v67 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v62 = *(a1 + 113);
        v63 = v14;
        v64[0] = *(a1 + 145);
        *(v64 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v58 = *(a1 + 49);
        v59 = v15;
        v16 = *(a1 + 97);
        v60 = *(a1 + 81);
        v61 = v16;
        v57 = *(a1 + 192);
        v17 = a1[22];
        v56 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          *&v45[8] = v65;
          *&v45[24] = v66;
          v49 = v62;
          v50 = v63;
          *v51 = v64[0];
          *&v51[15] = *(v64 + 15);
          *&v45[49] = v58;
          v46 = v59;
          v47 = v60;
          v55 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          *v45 = v11;
          *&v45[40] = v67;
          v45[48] = v13;
          v48 = v61;
          v52 = v17;
          v53 = v56;
          v54 = v57;
          v39 = xmmword_26C32DAD0;
          v40 = 0;
          v41 = 0;
          v42 = v17;
          v43 = v22;
          v44 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v39);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v55);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          *v45 = v38;
          type metadata accessor for T_UninstantiateBegin(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v55);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
          v2 = v38;
        }

        else
        {
          v2 = v38;
        }
      }
    }

    v29 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v2, a1);
    v30 = a1 + 7;
    v31 = *(a1 + 9);
    *v45 = *(a1 + 7);
    *&v45[16] = v31;
    *&v45[32] = *(a1 + 11);
    *&v45[41] = *(a1 + 97);
    v32 = a1 + 11;
    v33 = a1 + 25;
    v34 = a1 + 13;
    v35 = *(a1 + 29);
    while (1)
    {
      v36 = *v34;
      if (v35 < *v33)
      {
        v37 = (*v32 + 8 * v35);
        if ((v37[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v36)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v45);
      }

      v32 = (v36 + 32);
      v33 = (v36 + 44);
      v34 = (v36 + 48);
      v30 = v36;
    }

    if (*v30)
    {
      specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v29, *(*(*v30 + 24 * *v37) + 32), 0xFFFFFFFFFFFFFFFFLL, 0);
      return;
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo20T_TransactionEnqueuea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v3 = v2;
    if (readingDebug)
    {
      v4 = a1 + 7;
      v5 = *(a1 + 9);
      v79[0] = *(a1 + 7);
      v79[1] = v5;
      v80[0] = *(a1 + 11);
      *(v80 + 9) = *(a1 + 97);
      v6 = a1 + 11;
      v7 = a1 + 25;
      v8 = a1 + 13;
      v9 = *(a1 + 29);
      while (1)
      {
        v10 = *v8;
        if (v9 < *v7)
        {
          v11 = (*v6 + 8 * v9);
          if ((v11[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v79);
        }

        v6 = (v10 + 32);
        v7 = (v10 + 44);
        v8 = (v10 + 48);
        v4 = v10;
      }

      v12 = *v4;
      if (!v12)
      {
        goto LABEL_47;
      }

      if ((*(*(v12 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v13 = *a1;
        v14 = *(a1 + 3);
        v73 = *(a1 + 1);
        v74 = v14;
        v75 = a1[5];
        v15 = *(a1 + 48);
        v16 = *(a1 + 129);
        v70 = *(a1 + 113);
        v71 = v16;
        v72[0] = *(a1 + 145);
        *(v72 + 15) = *(a1 + 10);
        v17 = *(a1 + 65);
        v67 = *(a1 + 49);
        v68 = v17;
        v18 = *(a1 + 97);
        *v69 = *(a1 + 81);
        *&v69[16] = v18;
        v66 = *(a1 + 192);
        v19 = a1[22];
        v65 = a1[23];
        v20 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v21 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v20))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 136446466;
          *&v54[8] = v73;
          *&v54[24] = v74;
          v58 = v70;
          v59 = v71;
          *v60 = v72[0];
          *&v60[15] = *(v72 + 15);
          *&v54[49] = v67;
          v55 = v68;
          v56 = *v69;
          v64 = v23;
          v24 = v23;
          if (v15)
          {
            v25 = 0;
          }

          else
          {
            v25 = v13;
          }

          *&v54[4] = HIDWORD(v13);
          *&v54[40] = v75;
          v54[48] = v15;
          v57 = *&v69[16];
          v61 = v19;
          v62 = v65;
          v63 = v66;
          *v76 = xmmword_26C32DAD0;
          v76[16] = 0;
          *&v77 = 0;
          *(&v77 + 1) = v19;
          LOBYTE(v78) = v25;
          BYTE1(v78) = 1;
          v26 = Interpreter.Iterator.describe(state:)(v76);
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v64);

          *(v22 + 4) = v28;
          *(v22 + 12) = 2082;
          *v54 = v3;
          type metadata accessor for T_TransactionEnqueue(0);
          v29 = String.init<A>(describing:)();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v64);

          *(v22 + 14) = v31;
          _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v24, -1, -1);
          MEMORY[0x26D69EAB0](v22, -1, -1);
        }
      }
    }

    v78 = 0;
    v77 = 0u;
    *&v76[8] = 0u;
    *v76 = v3;
    v32 = specialized Interpreter.Iterator.observe<A>(invalidation:)(v76);
    if ((v32 & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v33 = v32;
      v34 = a1 + 7;
      v35 = *(a1 + 9);
      *v54 = *(a1 + 7);
      *&v54[16] = v35;
      *&v54[32] = *(a1 + 11);
      v36 = a1 + 9;
      v37 = a1 + 21;
      v38 = a1 + 13;
      *&v54[41] = *(a1 + 97);
      v39 = a1 + 7;
      v40 = a1 + 9;
      v41 = a1 + 21;
      v42 = a1 + 13;
      while (1)
      {
        v43 = *v42;
        if (*v41 >= 2u)
        {
          v44 = *v40;
          if ((*(v44 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v43)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v54);
        }

        v40 = (v43 + 16);
        v41 = (v43 + 28);
        v42 = (v43 + 48);
        v39 = v43;
      }

      v45 = *v39;
      if (!v45)
      {
        goto LABEL_45;
      }

      v46 = *(*(v45 + 24 * *(v44 + 8)) + 112);
      if (v46)
      {
        if (*(**(v46 + 40) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)();
          if (v47)
          {
            goto LABEL_44;
          }
        }

        v48 = *(a1 + 9);
        v67 = *v34;
        v68 = v48;
        *v69 = *(a1 + 11);
        *&v69[9] = *(a1 + 97);
        while (1)
        {
          v49 = *v38;
          if (*v37 >= 2u && (*(*v36 + 12) & 1) == 0)
          {
            break;
          }

          if (!v49)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v67);
          }

          v36 = (v49 + 16);
          v37 = (v49 + 28);
          v38 = (v49 + 48);
          v34 = v49;
        }

        if (!*v34)
        {
          goto LABEL_46;
        }

        v50 = *(*(*v34 + 24 * *(*v36 + 8)) + 112);
        if (v50)
        {
          v51 = *(v50 + 40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_26C328DC0;
          *(v52 + 32) = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v73 = *v51;
          *v51 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v3, isUniquelyReferenced_nonNull_native);
          *v51 = v73;
          outlined destroy of Event.Transaction(v76);
          return;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_43;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo20T_SubgraphTreeUpdatea_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 512)
  {
    v4 = v2;
    if (readingDebug)
    {
      v5 = (a1 + 56);
      v6 = *(a1 + 72);
      v69[0] = *(a1 + 56);
      v69[1] = v6;
      v70[0] = *(a1 + 88);
      *(v70 + 9) = *(a1 + 97);
      v7 = (a1 + 88);
      v8 = (a1 + 100);
      v9 = (a1 + 104);
      v10 = *(a1 + 116);
      while (1)
      {
        v11 = *v9;
        if (v10 < *v8)
        {
          v12 = (*v7 + 8 * v10);
          if ((v12[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v11)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v69);
        }

        v7 = (v11 + 32);
        v8 = (v11 + 44);
        v9 = (v11 + 48);
        v5 = v11;
      }

      v13 = *v5;
      if (!v13)
      {
        __break(1u);
        return;
      }

      if ((*(*(v13 + 24 * *v12) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v14 = v3;
        v15 = *a1;
        v16 = *(a1 + 24);
        v66 = *(a1 + 8);
        v67 = v16;
        v68 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = *(a1 + 129);
        v63 = *(a1 + 113);
        v64 = v18;
        v65[0] = *(a1 + 145);
        *(v65 + 15) = *(a1 + 160);
        v19 = *(a1 + 65);
        v59 = *(a1 + 49);
        v60 = v19;
        v20 = *(a1 + 97);
        v61 = *(a1 + 81);
        v62 = v20;
        v58 = *(a1 + 192);
        v21 = *(a1 + 176);
        v57 = *(a1 + 184);
        v22 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v23 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v22))
        {
          v33 = v14;
          v34 = HIDWORD(v14);
          v24 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v24 = 136446466;
          v42 = v66;
          v43 = v67;
          v50 = v63;
          v51 = v64;
          *v52 = v65[0];
          *&v52[15] = *(v65 + 15);
          v46 = v59;
          v47 = v60;
          v48 = v61;
          v56 = v32;
          if (v17)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15;
          }

          v41 = v15;
          v44 = v68;
          v45 = v17;
          v49 = v62;
          v53 = v21;
          v54 = v57;
          v55 = v58;
          v35 = xmmword_26C32DAD0;
          v36 = 0;
          v37 = 0;
          v38 = v21;
          v39 = v25;
          v40 = 1;
          v26 = Interpreter.Iterator.describe(state:)(&v35);
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v56);

          *(v24 + 4) = v28;
          *(v24 + 12) = 2082;
          v41 = v4;
          LODWORD(v42) = v33;
          BYTE4(v42) = v34;
          type metadata accessor for T_SubgraphTreeUpdate(0);
          v29 = String.init<A>(describing:)();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v56);

          *(v24 + 14) = v31;
          _os_log_impl(&dword_26C161000, v23, v22, "%{public}s %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v32, -1, -1);
          MEMORY[0x26D69EAB0](v24, -1, -1);
          v3 = v33;
        }

        else
        {
          v3 = v14;
        }
      }
    }

    T_SubgraphTreeUpdate.structure(within:)(a1, v4, v3 & 0xFFFFFFFFFFLL);
  }
}

unint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo27T_ReuseFailedTypeComparisona_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v9 = v8;
    if (readingDebug)
    {
      v10 = HIDWORD(result);
      v11 = (a1 + 56);
      v12 = *(a1 + 72);
      v73[0] = *(a1 + 56);
      v73[1] = v12;
      v74[0] = *(a1 + 88);
      *(v74 + 9) = *(a1 + 97);
      v13 = (a1 + 88);
      v14 = (a1 + 100);
      v15 = (a1 + 104);
      v16 = *(a1 + 116);
      while (1)
      {
        v17 = *v15;
        if (v16 < *v14)
        {
          v18 = (*v13 + 8 * v16);
          if ((v18[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v17)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v73);
        }

        v13 = (v17 + 32);
        v14 = (v17 + 44);
        v15 = (v17 + 48);
        v11 = v17;
      }

      if (!*v11)
      {
        __break(1u);
        return result;
      }

      if ((*(*(*v11 + 24 * *v18) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v37 = *a1;
        v38 = result;
        v19 = *(a1 + 24);
        v70 = *(a1 + 8);
        v71 = v19;
        v72 = *(a1 + 40);
        v20 = *(a1 + 48);
        v21 = *(a1 + 129);
        v67 = *(a1 + 113);
        v68 = v21;
        v69[0] = *(a1 + 145);
        *(v69 + 15) = *(a1 + 160);
        v22 = *(a1 + 65);
        v63 = *(a1 + 49);
        v64 = v22;
        v23 = *(a1 + 97);
        v65 = *(a1 + 81);
        v66 = v23;
        v62 = *(a1 + 192);
        v24 = *(a1 + 176);
        v61 = *(a1 + 184);
        v25 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v26 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v25))
        {
          v36 = v25;
          v27 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v27 = 136446466;
          v46 = v70;
          v47 = v71;
          v54 = v67;
          v55 = v68;
          *v56 = v69[0];
          *&v56[15] = *(v69 + 15);
          v50 = v63;
          v51 = v64;
          v52 = v65;
          v60 = v35;
          if (v20)
          {
            v28 = 0;
          }

          else
          {
            v28 = v37;
          }

          v45 = v37;
          v48 = v72;
          v49 = v20;
          v53 = v66;
          v57 = v24;
          v58 = v61;
          v59 = v62;
          v39 = xmmword_26C32DAD0;
          v40 = 0;
          v41 = 0;
          v42 = v24;
          v43 = v28;
          v44 = 1;
          v29 = Interpreter.Iterator.describe(state:)(&v39);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v60);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          v45 = __PAIR64__(v10, v38);
          LOBYTE(v46) = v9;
          a3(0);
          v32 = String.init<A>(describing:)();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v60);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_26C161000, v26, v36, "%{public}s %{public}s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v35, -1, -1);
          MEMORY[0x26D69EAB0](v27, -1, -1);
          result = v38;
        }

        else
        {
          result = v38;
        }
      }
    }

    return a4(a1, result, v9);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo20T_GraphNeedsUpdateV0a_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v5 = a1 + 7;
    v6 = *(a1 + 9);
    v91[0] = *(a1 + 7);
    v91[1] = v6;
    v92[0] = *(a1 + 11);
    *(v92 + 9) = *(a1 + 97);
    v7 = a1 + 11;
    v8 = a1 + 25;
    v9 = a1 + 13;
    v10 = *(a1 + 29);
    while (1)
    {
      v11 = *v9;
      if (v10 < *v8)
      {
        v12 = (*v7 + 8 * v10);
        if ((v12[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v11)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v91);
      }

      v7 = (v11 + 32);
      v8 = (v11 + 44);
      v9 = (v11 + 48);
      v5 = v11;
    }

    if (!*v5)
    {
      goto LABEL_51;
    }

    if ((*(*(*v5 + 24 * *v12) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v61 = v4;
      v60 = v3;
      v13 = *a1;
      v14 = *(a1 + 3);
      v88 = *(a1 + 1);
      v89 = v14;
      v90 = a1[5];
      v15 = *(a1 + 48);
      v16 = *(a1 + 129);
      v85 = *(a1 + 113);
      v86 = v16;
      v87[0] = *(a1 + 145);
      *(v87 + 15) = *(a1 + 10);
      v17 = *(a1 + 65);
      v81 = *(a1 + 49);
      v82 = v17;
      v18 = *(a1 + 97);
      v83 = *(a1 + 81);
      v84 = v18;
      v80 = *(a1 + 192);
      v19 = a1[22];
      v79 = a1[23];
      v20 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v1 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 136446466;
        *&v68[8] = v88;
        *&v68[24] = v89;
        v72 = v85;
        v73 = v86;
        *v74 = v87[0];
        *&v74[15] = *(v87 + 15);
        *&v68[49] = v81;
        v69 = v82;
        v70 = v83;
        v78 = v22;
        if (v15)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13;
        }

        *v68 = v13;
        *&v68[40] = v90;
        v68[48] = v15;
        v71 = v84;
        v75 = v19;
        v76 = v79;
        v77 = v80;
        v62 = xmmword_26C32DAD0;
        v63 = 0;
        v64 = 0;
        v65 = v19;
        v66 = v23;
        v67 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v62);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v78);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        *v68 = v60;
        *&v68[8] = v61;
        type metadata accessor for T_GraphNeedsUpdateV0(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v78);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_26C161000, v1, v20, "%{public}s %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v22, -1, -1);
        MEMORY[0x26D69EAB0](v21, -1, -1);
        v4 = v61;
        v3 = v60;
      }

      else
      {
        v3 = v60;
        v4 = v61;
      }
    }
  }

  v30 = *(a1 + 29);
  if (v4)
  {
    v31 = v4;
  }

  else
  {
    v30 = 0;
    v31 = -1;
  }

  *(a1 + 40) = v30;
  *(a1 + 41) = v4 != 0;
  *(a1 + 168) = v4 == 0;
  *(a1 + 43) = v31;
  v32 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v3, a1);
  v33 = v32;
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v32);
  if ((v34 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v35 = v34;
  v36 = a1 + 7;
  v37 = *(a1 + 9);
  *v68 = *(a1 + 7);
  *&v68[16] = v37;
  *&v68[32] = *(a1 + 11);
  *&v68[41] = *(a1 + 97);
  v38 = a1 + 9;
  v39 = a1 + 21;
  v40 = a1 + 13;
  while (1)
  {
    v41 = *v40;
    if (*v39 >= 2u)
    {
      v42 = *v38;
      if ((*(v42 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v41)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v68);
    }

    v38 = (v41 + 16);
    v39 = (v41 + 28);
    v40 = (v41 + 48);
    v36 = v41;
  }

  v43 = *v36;
  if (!v43)
  {
    goto LABEL_50;
  }

  v44 = *(*(v43 + 24 * *(v42 + 8)) + 112);
  if (!v44)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v45 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81 = *v45;
  isa = v81;
  *v45 = 0x8000000000000000;
  v49 = specialized __RawDictionaryStorage.find<A>(_:)();
  v50 = *(isa + 2);
  v51 = (v48 & 1) == 0;
  v52 = v50 + v51;
  if (!__OFADD__(v50, v51))
  {
    v53 = v48;
    if (*(isa + 3) >= v52)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        isa = v81;
      }

LABEL_39:
      *v45 = isa;

      v56 = *v45;
      if ((v53 & 1) == 0)
      {
        specialized thunk for @callee_guaranteed () -> (@owned [EventRef])(&v81);
        specialized _NativeDictionary._insert(at:key:value:)(v49, v33, v81, v56);
      }

      v1 = *(v56 + 7);
      isa = v1[v49].isa;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v1[v49].isa = isa;
      if (v57)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
    isa = v81;
    v54 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v53 & 1) == (v55 & 1))
    {
      v49 = v54;
      goto LABEL_39;
    }

LABEL_52:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  __break(1u);
LABEL_47:
  isa = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(isa + 2) + 1, 1, isa);
  v1[v49].isa = isa;
LABEL_42:
  v59 = *(isa + 2);
  v58 = *(isa + 3);
  if (v59 >= v58 >> 1)
  {
    isa = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, isa);
    v1[v49].isa = isa;
  }

  *(isa + 2) = v59 + 1;
  *&isa[4 * v59 + 32] = v35;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo20T_AssignRootSubgrapha_Tt0g5(uint64_t a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 512)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = v2;
    if (readingDebug)
    {
      v10 = (a1 + 56);
      v11 = *(a1 + 72);
      v72[0] = *(a1 + 56);
      v72[1] = v11;
      v73[0] = *(a1 + 88);
      *(v73 + 9) = *(a1 + 97);
      v12 = (a1 + 88);
      v13 = (a1 + 100);
      v14 = (a1 + 104);
      v15 = *(a1 + 116);
      while (1)
      {
        v16 = *v14;
        if (v15 < *v13)
        {
          v17 = (*v12 + 8 * v15);
          if ((v17[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v16)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 0, v72);
        }

        v12 = (v16 + 32);
        v13 = (v16 + 44);
        v14 = (v16 + 48);
        v10 = v16;
      }

      v18 = *v10;
      if (!v18)
      {
        __break(1u);
        return;
      }

      if ((*(*(v18 + 24 * *v17) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 176) + 160))
      {
        v19 = *a1;
        v20 = *(a1 + 24);
        v69 = *(a1 + 8);
        v70 = v20;
        v71 = *(a1 + 40);
        v37 = *(a1 + 48);
        v21 = *(a1 + 129);
        v66 = *(a1 + 113);
        v67 = v21;
        v68[0] = *(a1 + 145);
        *(v68 + 15) = *(a1 + 160);
        v22 = *(a1 + 65);
        v62 = *(a1 + 49);
        v63 = v22;
        v23 = *(a1 + 97);
        v64 = *(a1 + 81);
        v65 = v23;
        v61 = *(a1 + 192);
        v24 = *(a1 + 176);
        v60 = *(a1 + 184);
        v25 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v26 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v25))
        {
          log = v26;
          v27 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v27 = 136446466;
          v45 = v69;
          v46 = v70;
          v53 = v66;
          v54 = v67;
          *v55 = v68[0];
          *&v55[15] = *(v68 + 15);
          v49 = v62;
          v50 = v63;
          v51 = v64;
          v59 = v35;
          if (v37)
          {
            v28 = 0;
          }

          else
          {
            v28 = v19;
          }

          v44 = v19;
          v47 = v71;
          v48 = v37;
          v52 = v65;
          v56 = v24;
          v57 = v60;
          v58 = v61;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v24;
          v42 = v28;
          v43 = 1;
          v29 = Interpreter.Iterator.describe(state:)(&v38);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v59);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          v44 = v9;
          *&v45 = v8;
          *(&v45 + 1) = v7;
          LOWORD(v46) = v6;
          type metadata accessor for T_AssignRootSubgraph(0);
          v32 = String.init<A>(describing:)();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v59);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_26C161000, log, v25, "%{public}s %{public}s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v35, -1, -1);
          MEMORY[0x26D69EAB0](v27, -1, -1);
        }
      }
    }

    T_AssignRootSubgraph.model(within:)(a1, v9, v8, v7, v6);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_IndirectNodeAddeda_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  *v40 = v2;
  *&v40[8] = v3;
  if (!*(a1 + 48))
  {
    v4 = *&v40[4];
    v5 = *(a1 + 1) << 8;
    if (v5 == 512 || v5 == 1024 || v5 == 768)
    {
      v6 = HIDWORD(v3);
      if (readingDebug)
      {
        v7 = a1 + 7;
        v8 = *(a1 + 9);
        v67[0] = *(a1 + 7);
        v67[1] = v8;
        v68[0] = *(a1 + 11);
        *(v68 + 9) = *(a1 + 97);
        v9 = a1 + 11;
        v10 = a1 + 25;
        v11 = a1 + 13;
        v12 = *(a1 + 29);
        while (1)
        {
          v13 = *v11;
          if (v12 < *v10)
          {
            v14 = (*v9 + 8 * v12);
            if ((v14[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v13)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v67);
          }

          v9 = (v13 + 32);
          v10 = (v13 + 44);
          v11 = (v13 + 48);
          v7 = v13;
        }

        if (!*v7)
        {
          __break(1u);
          return;
        }

        if ((*(*(*v7 + 24 * *v14) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v33 = v2;
          v15 = *a1;
          v16 = *(a1 + 3);
          v64 = *(a1 + 1);
          v65 = v16;
          v66 = a1[5];
          v17 = *(a1 + 48);
          v18 = *(a1 + 129);
          v61 = *(a1 + 113);
          v62 = v18;
          v63[0] = *(a1 + 145);
          *(v63 + 15) = *(a1 + 10);
          v19 = *(a1 + 65);
          v57 = *(a1 + 49);
          v58 = v19;
          v20 = *(a1 + 97);
          v59 = *(a1 + 81);
          v60 = v20;
          v56 = *(a1 + 192);
          v21 = a1[22];
          v55 = a1[23];
          v22 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v23 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v22))
          {
            v24 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v24 = 136446466;
            *&v40[8] = v64;
            v41 = v65;
            v48 = v61;
            v49 = v62;
            *v50 = v63[0];
            *&v50[15] = *(v63 + 15);
            v44 = v57;
            v45 = v58;
            v46 = v59;
            v54 = v32;
            if (v17)
            {
              v25 = 0;
            }

            else
            {
              v25 = v15;
            }

            *v40 = v15;
            v42 = v66;
            v43 = v17;
            v47 = v60;
            v51 = v21;
            v52 = v55;
            v53 = v56;
            v34 = xmmword_26C32DAD0;
            v35 = 0;
            v36 = 0;
            v37 = v21;
            v38 = v25;
            v39 = 1;
            v26 = Interpreter.Iterator.describe(state:)(&v34);
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v54);

            *(v24 + 4) = v28;
            *(v24 + 12) = 2082;
            *v40 = v33;
            *&v40[4] = v4;
            *&v40[12] = v6;
            type metadata accessor for T_IndirectNodeAdded(0);
            v29 = String.init<A>(describing:)();
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v54);

            *(v24 + 14) = v31;
            _os_log_impl(&dword_26C161000, v23, v22, "%{public}s %{public}s", v24, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v32, -1, -1);
            MEMORY[0x26D69EAB0](v24, -1, -1);
            LODWORD(v2) = v33;
          }

          else
          {
            LODWORD(v2) = v33;
          }
        }
      }

      *v40 = v2;
      *&v40[4] = v4;
      *&v40[12] = v6;
      T_IndirectNodeAdded.model(within:)(a1, *v40, *&v40[8]);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_EndSubgraphUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v3 = a1 + 7;
    v4 = *(a1 + 9);
    v70[0] = *(a1 + 7);
    v70[1] = v4;
    v71[0] = *(a1 + 11);
    *(v71 + 9) = *(a1 + 97);
    v5 = a1 + 11;
    v6 = a1 + 25;
    v7 = a1 + 13;
    v8 = *(a1 + 29);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v70);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (!*v3)
    {
      goto LABEL_33;
    }

    if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v40 = v2;
      v11 = *a1;
      v12 = *(a1 + 3);
      v67 = *(a1 + 1);
      v68 = v12;
      v69 = a1[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v64 = *(a1 + 113);
      v65 = v14;
      v66[0] = *(a1 + 145);
      *(v66 + 15) = *(a1 + 10);
      v15 = *(a1 + 65);
      v60 = *(a1 + 49);
      v61 = v15;
      v16 = *(a1 + 97);
      v62 = *(a1 + 81);
      v63 = v16;
      v59 = *(a1 + 192);
      v17 = a1[22];
      v58 = a1[23];
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v47[8] = v67;
        *&v47[24] = v68;
        v51 = v64;
        v52 = v65;
        *v53 = v66[0];
        *&v53[15] = *(v66 + 15);
        *&v47[49] = v60;
        v48 = v61;
        v49 = v62;
        v57 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *v47 = v11;
        *&v47[40] = v69;
        v47[48] = v13;
        v50 = v63;
        v54 = v17;
        v55 = v58;
        v56 = v59;
        v41 = xmmword_26C32DAD0;
        v42 = 0;
        v43 = 0;
        v44 = v17;
        v45 = v22;
        v46 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v41);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v47 = v40;
        type metadata accessor for T_EndSubgraphUpdate(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }
    }
  }

  v29 = a1 + 7;
  v30 = *(a1 + 9);
  *v47 = *(a1 + 7);
  *&v47[16] = v30;
  *&v47[32] = *(a1 + 11);
  *&v47[41] = *(a1 + 97);
  v31 = a1 + 9;
  v32 = a1 + 21;
  v33 = a1 + 13;
  while (1)
  {
    v34 = *v33;
    if (*v32)
    {
      v35 = *v31;
      if ((v35[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v47);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v29 = v34;
  }

  v36 = *v29;
  if (!v36)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v37 = *(*(v36 + 24 * *v35) + 112);
  if (!v37)
  {
    __break(1u);
    goto LABEL_32;
  }

  v38 = *(v37 + 32);
  v39 = v38[1] - 1;
  v38[1] = v39;
  if (!v39)
  {
    ++*v38;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_AnimationRetargeta_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()(v69);
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v2 = a1 + 7;
    v3 = *(a1 + 9);
    v73[0] = *(a1 + 7);
    v73[1] = v3;
    v74[0] = *(a1 + 11);
    *(v74 + 9) = *(a1 + 97);
    v4 = a1 + 11;
    v5 = a1 + 25;
    v6 = a1 + 13;
    v7 = *(a1 + 29);
    while (1)
    {
      v8 = *v6;
      if (v7 < *v5)
      {
        v9 = (*v4 + 8 * v7);
        if ((v9[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v8)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v73);
      }

      v4 = (v8 + 32);
      v5 = (v8 + 44);
      v6 = (v8 + 48);
      v2 = v8;
    }

    v10 = *v2;
    if (!v10)
    {
      goto LABEL_45;
    }

    if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v11 = *a1;
      v12 = *(a1 + 3);
      v66 = *(a1 + 1);
      v67 = v12;
      v68 = a1[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v63 = *(a1 + 113);
      v64 = v14;
      v65[0] = *(a1 + 145);
      *(v65 + 15) = *(a1 + 10);
      v15 = *(a1 + 65);
      v60 = *(a1 + 49);
      v61 = v15;
      v16 = *(a1 + 97);
      *v62 = *(a1 + 81);
      *&v62[16] = v16;
      v59 = *(a1 + 192);
      v17 = a1[22];
      v58 = a1[23];
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v47[8] = v66;
        *&v47[24] = v67;
        v51 = v63;
        v52 = v64;
        *v53 = v65[0];
        *&v53[15] = *(v65 + 15);
        *&v47[49] = v60;
        v48 = v61;
        v49 = *v62;
        v57 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *&v47[40] = v68;
        v47[48] = v13;
        v50 = *&v62[16];
        v54 = v17;
        v55 = v58;
        v56 = v59;
        *v70 = xmmword_26C32DAD0;
        v70[16] = 0;
        *&v71 = 0;
        *(&v71 + 1) = v17;
        LOBYTE(v72) = v22;
        BYTE1(v72) = 1;
        v23 = Interpreter.Iterator.describe(state:)(v70);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v47 = *v69;
        *&v47[16] = *&v69[16];
        *&v47[32] = *&v69[32];
        type metadata accessor for T_AnimationRetarget(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }
    }
  }

  v29 = *v69;
  v30 = a1 + 7;
  v31 = *(a1 + 9);
  *v47 = *(a1 + 7);
  *&v47[16] = v31;
  *&v47[32] = *(a1 + 11);
  v32 = a1 + 9;
  v33 = a1 + 21;
  v34 = a1 + 13;
  *&v47[41] = *(a1 + 97);
  v35 = a1 + 7;
  v36 = a1 + 9;
  v37 = a1 + 21;
  v38 = a1 + 13;
  while (1)
  {
    v39 = *v38;
    if (*v37 >= 2u)
    {
      v40 = *v36;
      if ((*(v40 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v39)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v47);
    }

    v36 = (v39 + 16);
    v37 = (v39 + 28);
    v38 = (v39 + 48);
    v35 = v39;
  }

  v41 = *v35;
  if (!v41)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = *(*(v41 + 24 * *(v40 + 8)) + 112);
  if (!v42)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (*(**(v42 + 56) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v43)
    {
      *v70 = v29;
      *&v70[4] = *&v69[4];
      *&v70[8] = *&v69[8];
      v71 = *&v69[24];
      v72 = 0x7FF8000000000000;
      v44 = specialized Interpreter.Iterator.observe<A>(invalidation:)(v70);
      if ((v44 & 0x100000000) == 0)
      {
        v45 = *(a1 + 9);
        v60 = *v30;
        v61 = v45;
        *v62 = *(a1 + 11);
        *&v62[9] = *(a1 + 97);
        while (1)
        {
          v46 = *v34;
          if (*v33 >= 2u && (*(*v32 + 12) & 1) == 0)
          {
            break;
          }

          if (!v46)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v60);
          }

          v32 = (v46 + 16);
          v33 = (v46 + 28);
          v34 = (v46 + 48);
          v30 = v46;
        }

        if (!*v30)
        {
          goto LABEL_46;
        }

        if (*(*(*v30 + 24 * *(*v32 + 8)) + 112))
        {
          LOBYTE(v66) = 0;
          specialized Dictionary.subscript.setter(v44, v29);
          return;
        }

        goto LABEL_44;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_UninstantiateEnda_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v3 = a1 + 7;
      v4 = *(a1 + 9);
      v64[0] = *(a1 + 7);
      v64[1] = v4;
      v65[0] = *(a1 + 11);
      *(v65 + 9) = *(a1 + 97);
      v5 = a1 + 11;
      v6 = a1 + 25;
      v7 = a1 + 13;
      v8 = *(a1 + 29);
      while (1)
      {
        v9 = *v7;
        if (v8 < *v6)
        {
          v10 = (*v5 + 8 * v8);
          if ((v10[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v9)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v64);
        }

        v5 = (v9 + 32);
        v6 = (v9 + 44);
        v7 = (v9 + 48);
        v3 = v9;
      }

      if (!*v3)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v29 = v2;
        v11 = *a1;
        v12 = *(a1 + 3);
        v61 = *(a1 + 1);
        v62 = v12;
        v63 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v58 = *(a1 + 113);
        v59 = v14;
        v60[0] = *(a1 + 145);
        *(v60 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v54 = *(a1 + 49);
        v55 = v15;
        v16 = *(a1 + 97);
        v56 = *(a1 + 81);
        v57 = v16;
        v53 = *(a1 + 192);
        v17 = a1[22];
        v52 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v37 = v61;
          v38 = v62;
          v45 = v58;
          v46 = v59;
          *v47 = v60[0];
          *&v47[15] = *(v60 + 15);
          v41 = v54;
          v42 = v55;
          v43 = v56;
          v51 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v36 = v11;
          v39 = v63;
          v40 = v13;
          v44 = v57;
          v48 = v17;
          v49 = v52;
          v50 = v53;
          v30 = xmmword_26C32DAD0;
          v31 = 0;
          v32 = 0;
          v33 = v17;
          v34 = v22;
          v35 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v30);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v51);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          v36 = v29;
          type metadata accessor for T_UninstantiateEnd(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v51);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Uninstantiate);
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo19T_TransactionAppenda_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v8 = result;
    if (readingDebug)
    {
      v9 = a1 + 7;
      v10 = *(a1 + 9);
      v70[0] = *(a1 + 7);
      v70[1] = v10;
      v71[0] = *(a1 + 11);
      *(v71 + 9) = *(a1 + 97);
      v11 = a1 + 11;
      v12 = a1 + 25;
      v13 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v14 = *v13;
        if (result < *v12)
        {
          v15 = (*v11 + 8 * result);
          if ((v15[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v14)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v70);
        }

        v11 = (v14 + 32);
        v12 = (v14 + 44);
        v13 = (v14 + 48);
        v9 = v14;
      }

      v16 = *v9;
      if (!v16)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v16 + 24 * *v15) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v17 = *a1;
        v18 = *(a1 + 3);
        v67 = *(a1 + 1);
        v68 = v18;
        v69 = a1[5];
        v19 = *(a1 + 48);
        v20 = *(a1 + 129);
        v64 = *(a1 + 113);
        v65 = v20;
        v66[0] = *(a1 + 145);
        *(v66 + 15) = *(a1 + 10);
        v21 = *(a1 + 65);
        v60 = *(a1 + 49);
        v61 = v21;
        v22 = *(a1 + 97);
        v62 = *(a1 + 81);
        v63 = v22;
        v59 = *(a1 + 192);
        v23 = a1[22];
        v58 = a1[23];
        v24 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v25 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v24))
        {
          v35 = v24;
          v26 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v26 = 136446466;
          v43 = v67;
          v44 = v68;
          v51 = v64;
          v52 = v65;
          *v53 = v66[0];
          *&v53[15] = *(v66 + 15);
          v47 = v60;
          v48 = v61;
          v49 = v62;
          v57 = v34;
          if (v19)
          {
            v27 = 0;
          }

          else
          {
            v27 = v17;
          }

          v42 = v17;
          v45 = v69;
          v46 = v19;
          v50 = v63;
          v54 = v23;
          v55 = v58;
          v56 = v59;
          v36 = xmmword_26C32DAD0;
          v37 = 0;
          v38 = 0;
          v39 = v23;
          v40 = v27;
          v41 = 1;
          v28 = Interpreter.Iterator.describe(state:)(&v36);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v57);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          LODWORD(v42) = v8;
          a3(0);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v57);

          *(v26 + 14) = v33;
          _os_log_impl(&dword_26C161000, v25, v35, "%{public}s %{public}s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v34, -1, -1);
          MEMORY[0x26D69EAB0](v26, -1, -1);
        }
      }
    }

    return a4(a1, v8);
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo21T_SubgraphRemoveChilda_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  result = a2();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 512)
  {
    v9 = v8;
    v10 = result;
    if (readingDebug)
    {
      v11 = a1 + 7;
      v12 = *(a1 + 9);
      v72[0] = *(a1 + 7);
      v72[1] = v12;
      v73[0] = *(a1 + 11);
      *(v73 + 9) = *(a1 + 97);
      v13 = a1 + 11;
      v14 = a1 + 25;
      v15 = a1 + 13;
      result = *(a1 + 29);
      while (1)
      {
        v16 = *v15;
        if (result < *v14)
        {
          v17 = (*v13 + 8 * result);
          if ((v17[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v16)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v72);
        }

        v13 = (v16 + 32);
        v14 = (v16 + 44);
        v15 = (v16 + 48);
        v11 = v16;
      }

      v18 = *v11;
      if (!v18)
      {
        __break(1u);
        return result;
      }

      if ((*(*(v18 + 24 * *v17) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v19 = *a1;
        v20 = *(a1 + 3);
        v69 = *(a1 + 1);
        v70 = v20;
        v71 = a1[5];
        v37 = *(a1 + 48);
        v21 = *(a1 + 129);
        v66 = *(a1 + 113);
        v67 = v21;
        v68[0] = *(a1 + 145);
        *(v68 + 15) = *(a1 + 10);
        v22 = *(a1 + 65);
        v62 = *(a1 + 49);
        v63 = v22;
        v23 = *(a1 + 97);
        v64 = *(a1 + 81);
        v65 = v23;
        v61 = *(a1 + 192);
        v24 = a1[22];
        v60 = a1[23];
        v25 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v26 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v25))
        {
          log = v26;
          v27 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v27 = 136446466;
          v45 = v69;
          v46 = v70;
          v53 = v66;
          v54 = v67;
          *v55 = v68[0];
          *&v55[15] = *(v68 + 15);
          v49 = v62;
          v50 = v63;
          v51 = v64;
          v59 = v35;
          if (v37)
          {
            v28 = 0;
          }

          else
          {
            v28 = v19;
          }

          v44 = v19;
          v47 = v71;
          v48 = v37;
          v52 = v65;
          v56 = v24;
          v57 = v60;
          v58 = v61;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v24;
          v42 = v28;
          v43 = 1;
          v29 = Interpreter.Iterator.describe(state:)(&v38);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v59);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          v44 = v10;
          *&v45 = v9;
          a3(0);
          v32 = String.init<A>(describing:)();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v59);

          *(v27 + 14) = v34;
          _os_log_impl(&dword_26C161000, log, v25, "%{public}s %{public}s", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v35, -1, -1);
          MEMORY[0x26D69EAB0](v27, -1, -1);
        }
      }
    }

    return a4(a1, v10, v9);
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_InstantiateBegina_Tt0g5(unsigned __int8 *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (a1[48] || a1[1] << 8 != 1024)
  {
    return;
  }

  if (!readingDebug)
  {
    goto LABEL_20;
  }

  v1 = &v88;
  v7 = v79;
  v8 = a1 + 56;
  v9 = *(a1 + 72);
  v98[0] = *(a1 + 56);
  v98[1] = v9;
  v99[0] = *(a1 + 88);
  *(v99 + 9) = *(a1 + 97);
  v10 = a1 + 88;
  v11 = a1 + 100;
  v12 = a1 + 104;
  v13 = *(a1 + 29);
  while (1)
  {
    v14 = *v12;
    if (v13 < *v11)
    {
      v15 = (*v10 + 8 * v13);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v98);
    }

    v10 = v14 + 32;
    v11 = v14 + 44;
    v12 = v14 + 48;
    v8 = v14;
  }

  if (!*v8)
  {
LABEL_61:
    __break(1u);
    return;
  }

  if (((*(*(*v8 + 24 * *v15) + 48) >= 0) & a1[192]) != 1 || (*(*(a1 + 22) + 160) & 1) == 0)
  {
    goto LABEL_20;
  }

  v72 = v6;
  v3 = *a1;
  v16 = *(a1 + 24);
  v95 = *(a1 + 8);
  v96 = v16;
  v97 = *(a1 + 5);
  v4 = a1[48];
  v17 = *(a1 + 129);
  v92 = *(a1 + 113);
  v93 = v17;
  v94[0] = *(a1 + 145);
  *(v94 + 15) = *(a1 + 10);
  v18 = *(a1 + 65);
  v88 = *(a1 + 49);
  v89 = v18;
  v19 = *(a1 + 97);
  v90 = *(a1 + 81);
  v91 = v19;
  v87 = a1[192];
  v2 = *(a1 + 22);
  v86 = *(a1 + 23);
  LOBYTE(v20) = static os_log_type_t.default.getter();
  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v21 = readingDebugLog;
    if (os_log_type_enabled(readingDebugLog, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446466;
      *&v79[8] = v95;
      *&v79[24] = v96;
      v24 = v93;
      *(v7 + 113) = v92;
      *(v7 + 129) = v24;
      *(v7 + 145) = v94[0];
      v81 = *(v1 + 111);
      *&v79[49] = v88;
      v80 = v89;
      v25 = v91;
      *(v7 + 81) = v90;
      v85 = v23;
      if (v4)
      {
        v26 = 0;
      }

      else
      {
        v26 = v3;
      }

      *v79 = v3;
      *&v79[40] = v97;
      v79[48] = v4;
      *(v7 + 97) = v25;
      v82 = v2;
      v83 = v86;
      v84 = v87;
      v73 = xmmword_26C32DAD0;
      v74 = 0;
      v75 = 0;
      v76 = v2;
      v77 = v26;
      v78 = 1;
      v27 = Interpreter.Iterator.describe(state:)(&v73);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v85);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2082;
      v2 = v72;
      *v79 = v72;
      type metadata accessor for T_InstantiateBegin(0);
      v30 = String.init<A>(describing:)();
      v1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v85);

      *(v22 + 14) = v1;
      _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v23, -1, -1);
      MEMORY[0x26D69EAB0](v22, -1, -1);
      v6 = v72;
    }

    else
    {
      v6 = v72;
    }

LABEL_20:
    v20 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v6, a1);
    v32 = a1 + 56;
    v33 = *(a1 + 72);
    *v79 = *(a1 + 56);
    *&v79[16] = v33;
    *&v79[32] = *(a1 + 88);
    *&v79[41] = *(a1 + 97);
    v34 = a1 + 88;
    v35 = a1 + 100;
    v36 = a1 + 104;
    v37 = *(a1 + 29);
    while (1)
    {
      v38 = *v36;
      if (v37 < *v35)
      {
        v39 = (*v34 + 8 * v37);
        if ((v39[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v38)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v37, 0, v79);
      }

      v34 = v38 + 32;
      v35 = v38 + 44;
      v36 = v38 + 48;
      v32 = v38;
    }

    v40 = *v32;
    if (!v40)
    {
      goto LABEL_60;
    }

    v7 = a1;
    v41 = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v20, *(*(v40 + 24 * *v39) + 32), 0xFFFFFFFFFFFFFFFFLL, 0);
    if (a1[48])
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v42 = *(a1 + 22);
    v43 = *a1;
    if (v43 >= *(v42 + 116))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v44 = *(v42 + 104);
    if (!v44)
    {
      goto LABEL_56;
    }

    v45 = *(*(v44 + 8 * v43) + 8);
    if (v20 >= *(v45 + 124))
    {
      goto LABEL_51;
    }

    v46 = *(v45 + 112);
    if (!v46)
    {
      goto LABEL_57;
    }

    v47 = v46 + 168 * v20;
    *(v47 + 124) = v41;
    *(v47 + 128) = 0;
    if (a1[48])
    {
      goto LABEL_58;
    }

    v48 = *(v42 + 116);
    v49 = *a1;
    if (v49 >= v48)
    {
      goto LABEL_52;
    }

    v50 = *(*(v44 + 8 * v49) + 8);
    if (v41 < *(v50 + 44))
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v51 = *(v50 + 32);
  if (!v51)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v52 = v51 + (v41 << 7);
  v53 = *(v52 + 8);
  v54 = *(v52 + 16);
  v55 = v52 + 8;
  v56 = *(v55 + 17);
  v58 = *(v55 + 20);
  v57 = *(v55 + 24);
  LOBYTE(v88) = *(v55 + 16);
  v59 = v56 == 0;
  v60 = 256;
  if (v59)
  {
    v60 = 0;
  }

  v61 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(v53, v54, v60 | (v58 << 32) | v88, v57);
  if (v61)
  {
    v62 = *v61;
    v63 = v61[1];
  }

  else
  {
    v63 = MEMORY[0x277D84FA0];
    v62 = MEMORY[0x277D84FA0];
  }

  *&v88 = v62;
  specialized Set._Variant.insert(_:)(&v73, v20);
  v64 = v88;
  v65 = *v55;
  v66 = *(v55 + 8);
  v67 = *(v55 + 17);
  v69 = *(v55 + 20);
  v68 = *(v55 + 24);
  LOBYTE(v95) = *(v55 + 16);
  v59 = v67 == 0;
  v70 = 256;
  if (v59)
  {
    v70 = 0;
  }

  v71 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5(v65, v66, v70 | (v69 << 32) | v95, v68);
  if (v71)
  {
    *v71 = v64;
    v71[1] = v63;
  }

  else
  {
    specialized HeterogeneousBuffer.insert<A>(_:)(v64, v63);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_GraphNeedsUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v4 = a1 + 7;
    v5 = *(a1 + 9);
    v87[0] = *(a1 + 7);
    v87[1] = v5;
    v88[0] = *(a1 + 11);
    *(v88 + 9) = *(a1 + 97);
    v6 = a1 + 11;
    v7 = a1 + 25;
    v8 = a1 + 13;
    v9 = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (v9 < *v7)
      {
        v11 = (*v6 + 8 * v9);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v87);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    if (!*v4)
    {
      goto LABEL_48;
    }

    if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v57 = v3;
      v12 = *a1;
      v13 = *(a1 + 3);
      v84 = *(a1 + 1);
      v85 = v13;
      v86 = a1[5];
      v14 = *(a1 + 48);
      v15 = *(a1 + 129);
      v81 = *(a1 + 113);
      v82 = v15;
      v83[0] = *(a1 + 145);
      *(v83 + 15) = *(a1 + 10);
      v16 = *(a1 + 65);
      v77 = *(a1 + 49);
      v78 = v16;
      v17 = *(a1 + 97);
      v79 = *(a1 + 81);
      v80 = v17;
      v76 = *(a1 + 192);
      v18 = a1[22];
      v75 = a1[23];
      v19 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v1 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v64[8] = v84;
        *&v64[24] = v85;
        v68 = v81;
        v69 = v82;
        *v70 = v83[0];
        *&v70[15] = *(v83 + 15);
        *&v64[49] = v77;
        v65 = v78;
        v66 = v79;
        v74 = v21;
        if (v14)
        {
          v22 = 0;
        }

        else
        {
          v22 = v12;
        }

        *v64 = v12;
        *&v64[40] = v86;
        v64[48] = v14;
        v67 = v80;
        v71 = v18;
        v72 = v75;
        v73 = v76;
        v58 = xmmword_26C32DAD0;
        v59 = 0;
        v60 = 0;
        v61 = v18;
        v62 = v22;
        v63 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v58);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v74);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v64 = v57;
        type metadata accessor for T_GraphNeedsUpdate(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v74);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v1, v19, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
        v3 = v57;
      }

      else
      {
        v3 = v57;
      }
    }
  }

  v29 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v3, a1);
  v30 = v29;
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v29);
  if ((v31 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v32 = v31;
  v33 = a1 + 7;
  v34 = *(a1 + 9);
  *v64 = *(a1 + 7);
  *&v64[16] = v34;
  *&v64[32] = *(a1 + 11);
  *&v64[41] = *(a1 + 97);
  v35 = a1 + 9;
  v36 = a1 + 21;
  v37 = a1 + 13;
  while (1)
  {
    v38 = *v37;
    if (*v36 >= 2u)
    {
      v39 = *v35;
      if ((*(v39 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v38)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v64);
    }

    v35 = (v38 + 16);
    v36 = (v38 + 28);
    v37 = (v38 + 48);
    v33 = v38;
  }

  v40 = *v33;
  if (!v40)
  {
    goto LABEL_47;
  }

  v41 = *(*(v40 + 24 * *(v39 + 8)) + 112);
  if (!v41)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = *(v41 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v77 = *v42;
  isa = v77;
  *v42 = 0x8000000000000000;
  v46 = specialized __RawDictionaryStorage.find<A>(_:)();
  v47 = *(isa + 2);
  v48 = (v45 & 1) == 0;
  v49 = v47 + v48;
  if (!__OFADD__(v47, v48))
  {
    v50 = v45;
    if (*(isa + 3) >= v49)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        isa = v77;
      }

LABEL_36:
      *v42 = isa;

      v53 = *v42;
      if ((v50 & 1) == 0)
      {
        specialized thunk for @callee_guaranteed () -> (@owned [EventRef])(&v77);
        specialized _NativeDictionary._insert(at:key:value:)(v46, v30, v77, v53);
      }

      v1 = *(v53 + 7);
      isa = v1[v46].isa;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v1[v46].isa = isa;
      if (v54)
      {
        goto LABEL_39;
      }

      goto LABEL_44;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
    isa = v77;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v50 & 1) == (v52 & 1))
    {
      v46 = v51;
      goto LABEL_36;
    }

LABEL_49:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  __break(1u);
LABEL_44:
  isa = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(isa + 2) + 1, 1, isa);
  v1[v46].isa = isa;
LABEL_39:
  v56 = *(isa + 2);
  v55 = *(isa + 3);
  if (v56 >= v55 >> 1)
  {
    isa = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, isa);
    v1[v46].isa = isa;
  }

  *(isa + 2) = v56 + 1;
  *&isa[4 * v56 + 32] = v32;
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_ExecutionContexta_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  v3 = v2;
  if (readingDebug)
  {
    v4 = a1 + 7;
    v5 = *(a1 + 9);
    v69[0] = *(a1 + 7);
    v69[1] = v5;
    v70[0] = *(a1 + 11);
    *(v70 + 9) = *(a1 + 97);
    v6 = a1 + 11;
    v7 = a1 + 25;
    v8 = a1 + 13;
    result = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (result < *v7)
      {
        v11 = (*v6 + 8 * result);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v69);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    v12 = *v4;
    if (!v12)
    {
      goto LABEL_27;
    }

    if ((*(*(v12 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v13 = *a1;
      v14 = *(a1 + 3);
      v66 = *(a1 + 1);
      v67 = v14;
      v68 = a1[5];
      v15 = *(a1 + 48);
      v16 = *(a1 + 129);
      v63 = *(a1 + 113);
      v64 = v16;
      v65[0] = *(a1 + 145);
      *(v65 + 15) = *(a1 + 10);
      v17 = *(a1 + 65);
      v59 = *(a1 + 49);
      v60 = v17;
      v18 = *(a1 + 97);
      v61 = *(a1 + 81);
      v62 = v18;
      v58 = *(a1 + 192);
      v19 = a1[22];
      v57 = a1[23];
      v20 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v21 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v20))
      {
        v22 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v22 = 136446466;
        *&v46[8] = v66;
        *&v46[24] = v67;
        v50 = v63;
        v51 = v64;
        *v52 = v65[0];
        *&v52[15] = *(v65 + 15);
        *&v46[49] = v59;
        v47 = v60;
        v48 = v61;
        v56 = v39;
        if (v15)
        {
          v23 = 0;
        }

        else
        {
          v23 = v13;
        }

        *v46 = v13;
        *&v46[40] = v68;
        v46[48] = v15;
        v49 = v62;
        v53 = v19;
        v54 = v57;
        v55 = v58;
        v40 = xmmword_26C32DAD0;
        v41 = 0;
        v42 = 0;
        v43 = v19;
        v44 = v23;
        v45 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v40);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v56);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        *v46 = v3;
        type metadata accessor for T_ExecutionContext(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v56);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v39, -1, -1);
        MEMORY[0x26D69EAB0](v22, -1, -1);
      }
    }
  }

  result = *(a1 + 29);
  v30 = a1 + 7;
  v31 = *(a1 + 9);
  *v46 = *(a1 + 7);
  *&v46[16] = v31;
  *&v46[32] = *(a1 + 11);
  *&v46[41] = *(a1 + 97);
  v32 = a1 + 11;
  v33 = a1 + 25;
  v34 = a1 + 13;
  while (1)
  {
    v35 = *v34;
    if (result < *v33)
    {
      v36 = (*v32 + 8 * result);
      if ((v36[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v46);
    }

    v32 = (v35 + 32);
    v33 = (v35 + 44);
    v34 = (v35 + 48);
    v30 = v35;
  }

  v37 = *v30;
  if (v37)
  {
    result = v37 + 24 * *v36;
    v38 = *result;
    *(v38 + 56) = v3;
    *(v38 + 64) = 0;
    return result;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_EndGraphUpdateV0a_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v4 = a1 + 7;
    v5 = *(a1 + 9);
    v74[0] = *(a1 + 7);
    v74[1] = v5;
    v75[0] = *(a1 + 11);
    *(v75 + 9) = *(a1 + 97);
    v6 = a1 + 11;
    v7 = a1 + 25;
    v8 = a1 + 13;
    v9 = *(a1 + 29);
    while (1)
    {
      v10 = *v8;
      if (v9 < *v7)
      {
        v11 = (*v6 + 8 * v9);
        if ((v11[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v10)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v74);
      }

      v6 = (v10 + 32);
      v7 = (v10 + 44);
      v8 = (v10 + 48);
      v4 = v10;
    }

    if (!*v4)
    {
      goto LABEL_37;
    }

    if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v44 = v3;
      v43 = v2;
      v12 = *a1;
      v13 = *(a1 + 3);
      v71 = *(a1 + 1);
      v72 = v13;
      v73 = a1[5];
      v14 = *(a1 + 48);
      v15 = *(a1 + 129);
      v68 = *(a1 + 113);
      v69 = v15;
      v70[0] = *(a1 + 145);
      *(v70 + 15) = *(a1 + 10);
      v16 = *(a1 + 65);
      v64 = *(a1 + 49);
      v65 = v16;
      v17 = *(a1 + 97);
      v66 = *(a1 + 81);
      v67 = v17;
      v63 = *(a1 + 192);
      v18 = a1[22];
      v62 = a1[23];
      v19 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v20 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 136446466;
        *&v51[8] = v71;
        *&v51[24] = v72;
        v55 = v68;
        v56 = v69;
        *v57 = v70[0];
        *&v57[15] = *(v70 + 15);
        *&v51[49] = v64;
        v52 = v65;
        v53 = v66;
        v61 = v22;
        if (v14)
        {
          v23 = 0;
        }

        else
        {
          v23 = v12;
        }

        *v51 = v12;
        *&v51[40] = v73;
        v51[48] = v14;
        v54 = v67;
        v58 = v18;
        v59 = v62;
        v60 = v63;
        v45 = xmmword_26C32DAD0;
        v46 = 0;
        v47 = 0;
        v48 = v18;
        v49 = v23;
        v50 = 1;
        v24 = Interpreter.Iterator.describe(state:)(&v45);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v61);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        *v51 = v43;
        *&v51[8] = v44;
        type metadata accessor for T_EndGraphUpdateV0(0);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v61);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_26C161000, v20, v19, "%{public}s %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v22, -1, -1);
        MEMORY[0x26D69EAB0](v21, -1, -1);
        v3 = v44;
        v2 = v43;
      }

      else
      {
        v2 = v43;
        v3 = v44;
      }
    }
  }

  v30 = *(a1 + 29);
  if (v3)
  {
    v31 = v3;
  }

  else
  {
    v30 = 0;
    v31 = -1;
  }

  *(a1 + 40) = v30;
  *(a1 + 41) = v3 != 0;
  *(a1 + 168) = v3 == 0;
  *(a1 + 43) = v31;
  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v2, a1);
  Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v32 = a1 + 7;
  v33 = *(a1 + 9);
  *v51 = *(a1 + 7);
  *&v51[16] = v33;
  *&v51[32] = *(a1 + 11);
  *&v51[41] = *(a1 + 97);
  v34 = (a1 + 9);
  v35 = a1 + 21;
  v36 = a1 + 13;
  while (1)
  {
    v37 = *v36;
    if (*v35)
    {
      v38 = *v34;
      if ((v38[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v37)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v51);
    }

    v34 = (v37 + 16);
    v35 = (v37 + 28);
    v36 = (v37 + 48);
    v32 = v37;
  }

  v39 = *v32;
  if (!v39)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v40 = *(*(v39 + 24 * *v38) + 112);
  if (!v40)
  {
    __break(1u);
    goto LABEL_36;
  }

  v41 = *(v40 + 32);
  v42 = v41[1] - 1;
  v41[1] = v42;
  if (!v42)
  {
    ++*v41;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo17T_SubgraphDestroya_Tt0g5(uint64_t *a1)
{
  v7 = a1;
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48))
  {
    v9 = *(a1 + 1) << 8;
    if (v9 == 512 || v9 == 1024 || v9 == 768)
    {
      if (!readingDebug)
      {
        goto LABEL_23;
      }

      v2 = &v67;
      v7 = v58;
      v10 = a1 + 7;
      v11 = *(a1 + 9);
      v77[0] = *(a1 + 7);
      v77[1] = v11;
      v78[0] = *(a1 + 11);
      *(v78 + 9) = *(a1 + 97);
      v12 = a1 + 11;
      v13 = a1 + 25;
      v14 = a1 + 13;
      v15 = *(a1 + 29);
      v1 = a1[22];
      while (1)
      {
        v16 = *v14;
        if (v15 < *v13)
        {
          v17 = (*v12 + 8 * v15);
          if ((v17[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v16)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v77);
        }

        v12 = (v16 + 32);
        v13 = (v16 + 44);
        v14 = (v16 + 48);
        v10 = v16;
      }

      if (*v10)
      {
        if (((*(*(*v10 + 24 * *v17) + 48) >= 0) & a1[24]) != 1 || (*(v1 + 160) & 1) == 0)
        {
          goto LABEL_23;
        }

        v51 = v8;
        v4 = *a1;
        v18 = *(a1 + 3);
        v74 = *(a1 + 1);
        v75 = v18;
        v76 = a1[5];
        v5 = *(a1 + 48);
        v19 = *(a1 + 129);
        v71 = *(a1 + 113);
        v72 = v19;
        v73[0] = *(a1 + 145);
        *(v73 + 15) = *(a1 + 10);
        v20 = *(a1 + 65);
        v67 = *(a1 + 49);
        v68 = v20;
        v21 = *(a1 + 97);
        v69 = *(a1 + 81);
        v70 = v21;
        v66 = *(a1 + 192);
        v3 = a1[22];
        v65 = a1[23];
        LOBYTE(v1) = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          goto LABEL_43;
        }

        while (1)
        {
          v22 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v1))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *v23 = 136446466;
            *&v58[8] = v74;
            *&v58[24] = v75;
            v25 = v72;
            *(v7 + 113) = v71;
            *(v7 + 129) = v25;
            *(v7 + 145) = v73[0];
            v60 = *(v2 + 111);
            *&v58[49] = v67;
            v59 = v68;
            v26 = v70;
            *(v7 + 81) = v69;
            v64 = v24;
            if (v5)
            {
              v27 = 0;
            }

            else
            {
              v27 = v4;
            }

            *v58 = v4;
            *&v58[40] = v76;
            v58[48] = v5;
            *(v7 + 97) = v26;
            v61 = v3;
            v62 = v65;
            v63 = v66;
            v52 = xmmword_26C32DAD0;
            v53 = 0;
            v54 = 0;
            v55 = v3;
            v56 = v27;
            v57 = 1;
            v28 = Interpreter.Iterator.describe(state:)(&v52);
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v64);

            *(v23 + 4) = v30;
            *(v23 + 12) = 2082;
            v3 = v51;
            *v58 = v51;
            type metadata accessor for T_SubgraphDestroy(0);
            v31 = String.init<A>(describing:)();
            v7 = v32;
            v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v64);

            *(v23 + 14) = v2;
            _os_log_impl(&dword_26C161000, v22, v1, "%{public}s %{public}s", v23, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v24, -1, -1);
            MEMORY[0x26D69EAB0](v23, -1, -1);
            v8 = v51;
          }

          else
          {
            v8 = v51;
          }

LABEL_23:
          if (!v8)
          {
            return;
          }

          v33 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(v8, a1);
          if (*(a1 + 48) || (*a1 & 0xFF00) != 0x200)
          {
            Interpreter.Iterator.updateDeallocates(_:)(v33);
            return;
          }

          v34 = a1[22];
          v35 = *a1;
          if (v35 >= *(v34 + 116))
          {
            break;
          }

          v36 = *(v34 + 104);
          if (!v36)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v7 = *(*(v36 + 8 * v35) + 8);
          v37 = a1 + 7;
          v38 = *(a1 + 9);
          *v58 = *(a1 + 7);
          *&v58[16] = v38;
          *&v58[32] = *(a1 + 11);
          *&v58[41] = *(a1 + 97);
          v39 = a1 + 11;
          v40 = a1 + 25;
          v41 = a1 + 13;
          v42 = *(a1 + 29);
          while (1)
          {
            v43 = *v41;
            if (v42 < *v40)
            {
              v44 = (*v39 + 8 * v42);
              if ((v44[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v43)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v42, 0, v58);
            }

            v39 = (v43 + 32);
            v40 = (v43 + 44);
            v41 = (v43 + 48);
            v37 = v43;
          }

          if (!*v37)
          {
            goto LABEL_47;
          }

          v45 = *v37 + 24 * *v44;
          if (v33 >= *(v7 + 31))
          {
            goto LABEL_41;
          }

          v46 = *(v7 + 14);
          if (!v46)
          {
            goto LABEL_45;
          }

          v47 = *(*v45 + 32);
          v48 = v46 + 168 * v33;
          v50 = *(v48 + 144);
          v49 = v48 + 144;
          if (v47 >= v50)
          {
            *(v49 + 8) = v47;
            return;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          swift_once();
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }
  }
}

uint64_t _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo18T_BeginValueUpdatea_Tt0g5Tm(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(void))
{
  result = a2();
  if (!*(a1 + 48))
  {
    v8 = *(a1 + 1) << 8;
    if (v8 == 512 || v8 == 1024 || v8 == 768)
    {
      v9 = result;
      if (readingDebug)
      {
        v10 = a1 + 7;
        v11 = *(a1 + 9);
        v71[0] = *(a1 + 7);
        v71[1] = v11;
        v72[0] = *(a1 + 11);
        *(v72 + 9) = *(a1 + 97);
        v12 = a1 + 11;
        v13 = a1 + 25;
        v14 = a1 + 13;
        result = *(a1 + 29);
        while (1)
        {
          v15 = *v14;
          if (result < *v13)
          {
            v16 = (*v12 + 8 * result);
            if ((v16[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v15)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v71);
          }

          v12 = (v15 + 32);
          v13 = (v15 + 44);
          v14 = (v15 + 48);
          v10 = v15;
        }

        v17 = *v10;
        if (!v17)
        {
          __break(1u);
          return result;
        }

        if ((*(*(v17 + 24 * *v16) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v18 = *a1;
          v19 = *(a1 + 3);
          v68 = *(a1 + 1);
          v69 = v19;
          v70 = a1[5];
          v20 = *(a1 + 48);
          v21 = *(a1 + 129);
          v65 = *(a1 + 113);
          v66 = v21;
          v67[0] = *(a1 + 145);
          *(v67 + 15) = *(a1 + 10);
          v22 = *(a1 + 65);
          v61 = *(a1 + 49);
          v62 = v22;
          v23 = *(a1 + 97);
          v63 = *(a1 + 81);
          v64 = v23;
          v60 = *(a1 + 192);
          v24 = a1[22];
          v59 = a1[23];
          v25 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v26 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v25))
          {
            v36 = v25;
            v27 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v27 = 136446466;
            v44 = v68;
            v45 = v69;
            v52 = v65;
            v53 = v66;
            *v54 = v67[0];
            *&v54[15] = *(v67 + 15);
            v48 = v61;
            v49 = v62;
            v50 = v63;
            v58 = v35;
            if (v20)
            {
              v28 = 0;
            }

            else
            {
              v28 = v18;
            }

            v43 = v18;
            v46 = v70;
            v47 = v20;
            v51 = v64;
            v55 = v24;
            v56 = v59;
            v57 = v60;
            v37 = xmmword_26C32DAD0;
            v38 = 0;
            v39 = 0;
            v40 = v24;
            v41 = v28;
            v42 = 1;
            v29 = Interpreter.Iterator.describe(state:)(&v37);
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v58);

            *(v27 + 4) = v31;
            *(v27 + 12) = 2082;
            LODWORD(v43) = v9;
            a3(0);
            v32 = String.init<A>(describing:)();
            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v58);

            *(v27 + 14) = v34;
            _os_log_impl(&dword_26C161000, v26, v36, "%{public}s %{public}s", v27, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v35, -1, -1);
            MEMORY[0x26D69EAB0](v27, -1, -1);
          }
        }
      }

      return specialized StateUpdateWithStructure.model(within:)(a1, v9, a4);
    }
  }

  return result;
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_TransactionEnda_Tt0g5(void (*a1)())
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    v3 = v2;
    if (readingDebug)
    {
      v4 = (a1 + 56);
      v5 = *(a1 + 72);
      v84[0] = *(a1 + 56);
      v84[1] = v5;
      v85[0] = *(a1 + 88);
      *(v85 + 9) = *(a1 + 97);
      v6 = (a1 + 88);
      v7 = (a1 + 100);
      v8 = (a1 + 104);
      v9 = *(a1 + 29);
      while (1)
      {
        v10 = *v8;
        if (v9 < *v7)
        {
          v11 = (*v6 + 8 * v9);
          if ((v11[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v10)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v84);
        }

        v6 = (v10 + 32);
        v7 = (v10 + 44);
        v8 = (v10 + 48);
        v4 = v10;
      }

      v12 = *v4;
      if (!v12)
      {
        goto LABEL_55;
      }

      if ((*(*(v12 + 24 * *v11) + 48) >= 0) & *(a1 + 192)) == 1 && (*(*(a1 + 22) + 160))
      {
        v13 = *a1;
        v14 = *(a1 + 24);
        v78 = *(a1 + 8);
        v79 = v14;
        v80 = *(a1 + 5);
        v15 = *(a1 + 48);
        v16 = *(a1 + 129);
        v75 = *(a1 + 113);
        v76 = v16;
        v77[0] = *(a1 + 145);
        *(v77 + 15) = *(a1 + 10);
        v17 = *(a1 + 65);
        v72 = *(a1 + 49);
        v73 = v17;
        v18 = *(a1 + 97);
        *v74 = *(a1 + 81);
        *&v74[16] = v18;
        v71 = *(a1 + 192);
        v19 = *(a1 + 22);
        v70 = *(a1 + 23);
        v20 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v21 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v20))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 136446466;
          *&v59[8] = v78;
          *&v59[24] = v79;
          v63 = v75;
          v64 = v76;
          *v65 = v77[0];
          *&v65[15] = *(v77 + 15);
          *&v59[49] = v72;
          v60 = v73;
          v61 = *v74;
          v69 = v23;
          if (v15)
          {
            v24 = 0;
          }

          else
          {
            v24 = v13;
          }

          *&v59[4] = HIDWORD(v13);
          *&v59[40] = v80;
          v59[48] = v15;
          v62 = *&v74[16];
          v66 = v19;
          v67 = v70;
          v68 = v71;
          v81 = xmmword_26C32DAD0;
          LOBYTE(v82) = 0;
          *(&v82 + 1) = 0;
          *&v83[0] = v19;
          BYTE8(v83[0]) = v24;
          BYTE9(v83[0]) = 1;
          v25 = Interpreter.Iterator.describe(state:)(&v81);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v69);

          *(v22 + 4) = v27;
          *(v22 + 12) = 2082;
          *v59 = v3;
          type metadata accessor for T_TransactionEnd(0);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v69);

          *(v22 + 14) = v30;
          _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v23, -1, -1);
          MEMORY[0x26D69EAB0](v22, -1, -1);
        }
      }
    }

    v31 = (a1 + 56);
    v32 = *(a1 + 72);
    *v59 = *(a1 + 56);
    *&v59[16] = v32;
    *&v59[32] = *(a1 + 88);
    v33 = a1 + 72;
    v34 = (a1 + 84);
    v35 = (a1 + 104);
    *&v59[41] = *(a1 + 97);
    v36 = (a1 + 56);
    v37 = (a1 + 72);
    v38 = (a1 + 84);
    v39 = (a1 + 104);
    while (1)
    {
      v40 = *v39;
      if (*v38 >= 2u)
      {
        v41 = *v37;
        if ((*(v41 + 12) & 1) == 0)
        {
          break;
        }
      }

      if (!v40)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, v59);
      }

      v37 = (v40 + 16);
      v38 = (v40 + 28);
      v39 = (v40 + 48);
      v36 = v40;
    }

    v42 = *v36;
    if (v42)
    {
      if (*(*(v42 + 24 * *(v41 + 8)) + 112))
      {
        v43 = specialized Strong.subscript.read();
        if (!*(*v44 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(), (v45 & 1) == 0))
        {
          (v43)(&v72, 0);
          static os_log_type_t.error.getter();
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
          v53 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          return;
        }

        (v43)(&v72, 0);
        Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Transaction);
        v46 = *(a1 + 72);
        v72 = *v31;
        v73 = v46;
        *v74 = *(a1 + 88);
        *&v74[9] = *(a1 + 97);
        v47 = (a1 + 56);
        v48 = (a1 + 72);
        v49 = (a1 + 84);
        v50 = (a1 + 104);
        while (1)
        {
          v51 = *v50;
          if (*v49 >= 2u)
          {
            v52 = *v48;
            if ((*(v52 + 12) & 1) == 0)
            {
              break;
            }
          }

          if (!v51)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v72);
          }

          v48 = (v51 + 16);
          v49 = (v51 + 28);
          v50 = (v51 + 48);
          v47 = v51;
        }

        v54 = *v47;
        if (!v54)
        {
          goto LABEL_56;
        }

        if (*(*(v54 + 24 * *(v52 + 8)) + 112))
        {
          a1 = specialized Strong.subscript.read();
          if (!*(*v55 + 16))
          {
            goto LABEL_58;
          }

          specialized __RawDictionaryStorage.find<A>(_:)();
          if ((v56 & 1) == 0)
          {
            goto LABEL_58;
          }

          (a1)(&v81, 0);
          v57 = v31[1];
          v81 = *v31;
          v82 = v57;
          v83[0] = v31[2];
          *(v83 + 9) = *(v31 + 41);
          while (1)
          {
            v58 = *v35;
            if (*v34 >= 2u && (*(*v33 + 12) & 1) == 0)
            {
              break;
            }

            if (!v58)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(1, 1, &v81);
            }

            v33 = (v58 + 16);
            v34 = (v58 + 28);
            v35 = (v58 + 48);
            v31 = v58;
          }

          if (!*v31)
          {
LABEL_57:
            __break(1u);
LABEL_58:
            (a1)(&v81, 0);
            *&v81 = 0;
            *(&v81 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(45);
            MEMORY[0x26D69CDB0](0xD00000000000001FLL, 0x800000026C33DF90);
            LODWORD(v78) = v3;
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x26D69CDB0](0x206E6920746F6E20, 0xEC0000007473696CLL);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          if (*(*(*v31 + 24 * *(*v33 + 8)) + 112))
          {
            specialized Dictionary.subscript.setter(0, v3);
            return;
          }

          goto LABEL_54;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_PassedDeadlinea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = a1 + 7;
      v3 = *(a1 + 9);
      v63[0] = *(a1 + 7);
      v63[1] = v3;
      v64[0] = *(a1 + 11);
      *(v64 + 9) = *(a1 + 97);
      v4 = a1 + 11;
      v5 = a1 + 25;
      v6 = a1 + 13;
      v7 = *(a1 + 29);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v63);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        __break(1u);
        return;
      }

      if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = *a1;
        v12 = *(a1 + 3);
        v60 = *(a1 + 1);
        v61 = v12;
        v62 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v57 = *(a1 + 113);
        v58 = v14;
        v59[0] = *(a1 + 145);
        *(v59 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v53 = *(a1 + 49);
        v54 = v15;
        v16 = *(a1 + 97);
        v55 = *(a1 + 81);
        v56 = v16;
        v52 = *(a1 + 192);
        v17 = a1[22];
        v51 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v36 = v60;
          v37 = v61;
          v44 = v57;
          v45 = v58;
          *v46 = v59[0];
          *&v46[15] = *(v59 + 15);
          v40 = v53;
          v41 = v54;
          v42 = v55;
          v50 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v35 = v11;
          v38 = v62;
          v39 = v13;
          v43 = v56;
          v47 = v17;
          v48 = v51;
          v49 = v52;
          v29 = xmmword_26C32DAD0;
          v30 = 0;
          v31 = 0;
          v32 = v17;
          v33 = v22;
          v34 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v29);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v50);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          type metadata accessor for T_PassedDeadline(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v50);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    specialized T_PassedDeadline.model(within:)(a1);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_InstantiateEnda_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v3 = a1 + 7;
      v4 = *(a1 + 9);
      v64[0] = *(a1 + 7);
      v64[1] = v4;
      v65[0] = *(a1 + 11);
      *(v65 + 9) = *(a1 + 97);
      v5 = a1 + 11;
      v6 = a1 + 25;
      v7 = a1 + 13;
      v8 = *(a1 + 29);
      while (1)
      {
        v9 = *v7;
        if (v8 < *v6)
        {
          v10 = (*v5 + 8 * v8);
          if ((v10[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v9)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v64);
        }

        v5 = (v9 + 32);
        v6 = (v9 + 44);
        v7 = (v9 + 48);
        v3 = v9;
      }

      if (!*v3)
      {
        __break(1u);
        return;
      }

      if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v29 = v2;
        v11 = *a1;
        v12 = *(a1 + 3);
        v61 = *(a1 + 1);
        v62 = v12;
        v63 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v58 = *(a1 + 113);
        v59 = v14;
        v60[0] = *(a1 + 145);
        *(v60 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v54 = *(a1 + 49);
        v55 = v15;
        v16 = *(a1 + 97);
        v56 = *(a1 + 81);
        v57 = v16;
        v53 = *(a1 + 192);
        v17 = a1[22];
        v52 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          v37 = v61;
          v38 = v62;
          v45 = v58;
          v46 = v59;
          *v47 = v60[0];
          *&v47[15] = *(v60 + 15);
          v41 = v54;
          v42 = v55;
          v43 = v56;
          v51 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          v36 = v11;
          v39 = v63;
          v40 = v13;
          v44 = v57;
          v48 = v17;
          v49 = v52;
          v50 = v53;
          v30 = xmmword_26C32DAD0;
          v31 = 0;
          v32 = 0;
          v33 = v17;
          v34 = v22;
          v35 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v30);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v51);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          v36 = v29;
          type metadata accessor for T_InstantiateEnd(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v51);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    specialized T_InstantiateEnd.model(within:)(a1);
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_EndValueUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48))
  {
    v3 = *(a1 + 1) << 8;
    if (v3 == 512 || v3 == 1024 || v3 == 768)
    {
      if (readingDebug)
      {
        v4 = a1 + 7;
        v5 = *(a1 + 9);
        v67[0] = *(a1 + 7);
        v67[1] = v5;
        v68[0] = *(a1 + 11);
        *(v68 + 9) = *(a1 + 97);
        v6 = a1 + 11;
        v7 = a1 + 25;
        v8 = a1 + 13;
        v9 = *(a1 + 29);
        while (1)
        {
          v10 = *v8;
          if (v9 < *v7)
          {
            v11 = (*v6 + 8 * v9);
            if ((v11[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v10)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v67);
          }

          v6 = (v10 + 32);
          v7 = (v10 + 44);
          v8 = (v10 + 48);
          v4 = v10;
        }

        if (!*v4)
        {
          __break(1u);
          return;
        }

        if ((*(*(*v4 + 24 * *v11) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
        {
          v12 = v2;
          v13 = *a1;
          v14 = *(a1 + 3);
          v64 = *(a1 + 1);
          v65 = v14;
          v66 = a1[5];
          v15 = *(a1 + 48);
          v16 = *(a1 + 129);
          v61 = *(a1 + 113);
          v62 = v16;
          v63[0] = *(a1 + 145);
          *(v63 + 15) = *(a1 + 10);
          v17 = *(a1 + 65);
          v57 = *(a1 + 49);
          v58 = v17;
          v18 = *(a1 + 97);
          v59 = *(a1 + 81);
          v60 = v18;
          v56 = *(a1 + 192);
          v19 = a1[22];
          v55 = a1[23];
          v20 = static os_log_type_t.default.getter();
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v21 = readingDebugLog;
          if (os_log_type_enabled(readingDebugLog, v20))
          {
            v31 = v12;
            v32 = HIDWORD(v12);
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 136446466;
            v40 = v64;
            v41 = v65;
            v48 = v61;
            v49 = v62;
            *v50 = v63[0];
            *&v50[15] = *(v63 + 15);
            v44 = v57;
            v45 = v58;
            v46 = v59;
            v54 = v23;
            if (v15)
            {
              v24 = 0;
            }

            else
            {
              v24 = v13;
            }

            v39 = v13;
            v42 = v66;
            v43 = v15;
            v47 = v60;
            v51 = v19;
            v52 = v55;
            v53 = v56;
            v33 = xmmword_26C32DAD0;
            v34 = 0;
            v35 = 0;
            v36 = v19;
            v37 = v24;
            v38 = 1;
            v25 = Interpreter.Iterator.describe(state:)(&v33);
            v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v54);

            *(v22 + 4) = v27;
            *(v22 + 12) = 2082;
            LODWORD(v39) = v31;
            BYTE4(v39) = v32;
            type metadata accessor for T_EndValueUpdate(0);
            v28 = String.init<A>(describing:)();
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v54);

            *(v22 + 14) = v30;
            _os_log_impl(&dword_26C161000, v21, v20, "%{public}s %{public}s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D69EAB0](v23, -1, -1);
            MEMORY[0x26D69EAB0](v22, -1, -1);
            v2 = v31;
          }

          else
          {
            v2 = v12;
          }
        }
      }

      specialized StateUpdateWithStructure.model(within:)(a1, v2 & 0xFFFFFFFFFFLL);
    }
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_EndGraphUpdatea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (*(a1 + 48) || *(a1 + 1) << 8 != 1024)
  {
    return;
  }

  if (readingDebug)
  {
    v3 = a1 + 7;
    v4 = *(a1 + 9);
    v70[0] = *(a1 + 7);
    v70[1] = v4;
    v71[0] = *(a1 + 11);
    *(v71 + 9) = *(a1 + 97);
    v5 = a1 + 11;
    v6 = a1 + 25;
    v7 = a1 + 13;
    v8 = *(a1 + 29);
    while (1)
    {
      v9 = *v7;
      if (v8 < *v6)
      {
        v10 = (*v5 + 8 * v8);
        if ((v10[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v9)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 29), 0, v70);
      }

      v5 = (v9 + 32);
      v6 = (v9 + 44);
      v7 = (v9 + 48);
      v3 = v9;
    }

    if (!*v3)
    {
      goto LABEL_34;
    }

    if ((*(*(*v3 + 24 * *v10) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
    {
      v40 = v2;
      v11 = *a1;
      v12 = *(a1 + 3);
      v67 = *(a1 + 1);
      v68 = v12;
      v69 = a1[5];
      v13 = *(a1 + 48);
      v14 = *(a1 + 129);
      v64 = *(a1 + 113);
      v65 = v14;
      v66[0] = *(a1 + 145);
      *(v66 + 15) = *(a1 + 10);
      v15 = *(a1 + 65);
      v60 = *(a1 + 49);
      v61 = v15;
      v16 = *(a1 + 97);
      v62 = *(a1 + 81);
      v63 = v16;
      v59 = *(a1 + 192);
      v17 = a1[22];
      v58 = a1[23];
      v18 = static os_log_type_t.default.getter();
      if (one-time initialization token for readingDebugLog != -1)
      {
        swift_once();
      }

      v19 = readingDebugLog;
      if (os_log_type_enabled(readingDebugLog, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 136446466;
        *&v47[8] = v67;
        *&v47[24] = v68;
        v51 = v64;
        v52 = v65;
        *v53 = v66[0];
        *&v53[15] = *(v66 + 15);
        *&v47[49] = v60;
        v48 = v61;
        v49 = v62;
        v57 = v21;
        if (v13)
        {
          v22 = 0;
        }

        else
        {
          v22 = v11;
        }

        *v47 = v11;
        *&v47[40] = v69;
        v47[48] = v13;
        v50 = v63;
        v54 = v17;
        v55 = v58;
        v56 = v59;
        v41 = xmmword_26C32DAD0;
        v42 = 0;
        v43 = 0;
        v44 = v17;
        v45 = v22;
        v46 = 1;
        v23 = Interpreter.Iterator.describe(state:)(&v41);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        *v47 = v40;
        type metadata accessor for T_EndGraphUpdate(0);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v21, -1, -1);
        MEMORY[0x26D69EAB0](v20, -1, -1);
        v2 = v40;
      }

      else
      {
        v2 = v40;
      }
    }
  }

  _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(v2, a1);
  Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Graph);
  v29 = a1 + 7;
  v30 = *(a1 + 9);
  *v47 = *(a1 + 7);
  *&v47[16] = v30;
  *&v47[32] = *(a1 + 11);
  *&v47[41] = *(a1 + 97);
  v31 = (a1 + 9);
  v32 = a1 + 21;
  v33 = a1 + 13;
  while (1)
  {
    v34 = *v33;
    if (*v32)
    {
      v35 = *v31;
      if ((v35[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v47);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v29 = v34;
  }

  v36 = *v29;
  if (!v36)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v37 = *(*(v36 + 24 * *v35) + 112);
  if (!v37)
  {
    __break(1u);
    goto LABEL_33;
  }

  v38 = *(v37 + 32);
  v39 = v38[1] - 1;
  v38[1] = v39;
  if (!v39)
  {
    ++*v38;
  }
}

void _s21SwiftUITracingSupport10TracepointPAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo16T_BeginTreeWritea_Tt0g5(uint64_t *a1)
{
  specialized Interpreter.Iterator.iterate<A>()();
  if (!*(a1 + 48) && *(a1 + 1) << 8 == 1024)
  {
    if (readingDebug)
    {
      v2 = a1 + 7;
      v3 = *(a1 + 9);
      v67[0] = *(a1 + 7);
      v67[1] = v3;
      v68[0] = *(a1 + 11);
      *(v68 + 9) = *(a1 + 97);
      v4 = a1 + 11;
      v5 = a1 + 25;
      v6 = a1 + 13;
      v7 = *(a1 + 29);
      while (1)
      {
        v8 = *v6;
        if (v7 < *v5)
        {
          v9 = (*v4 + 8 * v7);
          if ((v9[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v8)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v67);
        }

        v4 = (v8 + 32);
        v5 = (v8 + 44);
        v6 = (v8 + 48);
        v2 = v8;
      }

      v10 = *v2;
      if (!v10)
      {
        goto LABEL_30;
      }

      if ((*(*(v10 + 24 * *v9) + 48) >= 0) & a1[24]) == 1 && (*(a1[22] + 160))
      {
        v11 = *a1;
        v12 = *(a1 + 3);
        v64 = *(a1 + 1);
        v65 = v12;
        v66 = a1[5];
        v13 = *(a1 + 48);
        v14 = *(a1 + 129);
        v61 = *(a1 + 113);
        v62 = v14;
        v63[0] = *(a1 + 145);
        *(v63 + 15) = *(a1 + 10);
        v15 = *(a1 + 65);
        v57 = *(a1 + 49);
        v58 = v15;
        v16 = *(a1 + 97);
        v59 = *(a1 + 81);
        v60 = v16;
        v56 = *(a1 + 192);
        v17 = a1[22];
        v55 = a1[23];
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for readingDebugLog != -1)
        {
          swift_once();
        }

        v19 = readingDebugLog;
        if (os_log_type_enabled(readingDebugLog, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 136446466;
          *&v44[8] = v64;
          *&v44[24] = v65;
          v48 = v61;
          v49 = v62;
          *v50 = v63[0];
          *&v50[15] = *(v63 + 15);
          *&v44[49] = v57;
          v45 = v58;
          v46 = v59;
          v54 = v21;
          if (v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = v11;
          }

          *v44 = v11;
          *&v44[40] = v66;
          v44[48] = v13;
          v47 = v60;
          v51 = v17;
          v52 = v55;
          v53 = v56;
          v38 = xmmword_26C32DAD0;
          v39 = 0;
          v40 = 0;
          v41 = v17;
          v42 = v22;
          v43 = 1;
          v23 = Interpreter.Iterator.describe(state:)(&v38);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v54);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          type metadata accessor for T_BeginTreeWrite(0);
          v26 = String.init<A>(describing:)();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v54);

          *(v20 + 14) = v28;
          _os_log_impl(&dword_26C161000, v19, v18, "%{public}s %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v21, -1, -1);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }
      }
    }

    v29 = a1 + 7;
    v30 = *(a1 + 9);
    *v44 = *(a1 + 7);
    *&v44[16] = v30;
    *&v44[32] = *(a1 + 11);
    *&v44[41] = *(a1 + 97);
    v31 = a1 + 11;
    v32 = a1 + 25;
    v33 = a1 + 13;
    v34 = *(a1 + 29);
    while (1)
    {
      v35 = *v33;
      if (v34 < *v32)
      {
        v36 = (*v31 + 8 * v34);
        if ((v36[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v34, 0, v44);
      }

      v31 = (v35 + 32);
      v32 = (v35 + 44);
      v33 = (v35 + 48);
      v29 = v35;
    }

    v37 = *v29;
    if (v37)
    {
      specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(*(*(v37 + 24 * *v36) + 32), -1, 0);
      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }
}