double specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1)
{
  v47 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v66 = v6;
    v67 = v7;
    v68 = v8;
    v69 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v57 = *(&v6 + 1);
    LODWORD(v58) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v59 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v65 = v58;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66 = v6;
      *(&v66 + 1) = v57;
      v67 = v7;
      v61[0] = "%{public}@.body [in %{public}@]";
      v61[1] = 31;
      v62 = 2;
      v60 = v59;
      v20 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
      (*(v55 + 8))(v20, v54);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v58;
    v24 = v55 + 16;
    v49 = *(v55 + 16);
    v25 = v49(v56, v48, v54);
    v26 = 0;
    LOBYTE(v61[0]) = 1;
    v58 = v21;
    v55 = v24;
    v52 = 16 * v21;
    v53 = (v24 - 8);
    v51 = v59 + 32;
    v50 = v6;
LABEL_11:
    v57 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v58;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v51 + 40 * v26;
    v33 = v58;
    while (1)
    {
      v34 = *(v59 + 16);
      if (v26 == v34)
      {
        LOBYTE(v61[0]) = 0;
LABEL_19:
        v38 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v54;
        v40 = *v53;
        v41 = v56;
        (*v53)(v56, v54);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v49(v41, v42, v39);
        if ((v61[0] & 1) == 0)
        {
          v43 = v54;
          v40(v56, v54);
          v40(v48, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v66);
      v35 = v70;
      v36 = v71;
      __swift_project_boxed_opaque_existential_1(&v66, v70);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = v47;

  AGGraphSetUpdate();
  *&v66 = v44;
  WORD4(v66) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(0);
  AGGraphSetOutputValue();

  return result;
}

{
  v47 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v64 = v6;
    LOBYTE(v65) = v7;
    BYTE1(v65) = v8;
    BYTE2(v65) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v57 = *(&v6 + 1);
    LODWORD(v58) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v59 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v63 = v58;
      v61 = _signpostLog;
      v62 = &dword_18D018000;
      *&v64 = v6;
      *(&v64 + 1) = v57;
      LOBYTE(v65) = v7;
      v67[0] = "%{public}@.body [in %{public}@]";
      v67[1] = 31;
      v68 = 2;
      v60 = v59;
      v20 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v63, &v62, &v61, &v64, v48, v67, &v60);
      (*(v55 + 8))(v20, v54);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v58;
    v24 = v55 + 16;
    v49 = *(v55 + 16);
    v25 = v49(v56, v48, v54);
    v26 = 0;
    LOBYTE(v67[0]) = 1;
    v58 = v21;
    v52 = 16 * v21;
    v55 = v24;
    v53 = (v24 - 8);
    v51 = v59 + 32;
    v50 = v6;
LABEL_11:
    v57 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v58;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v51 + 40 * v26;
    v33 = v58;
    while (1)
    {
      v34 = *(v59 + 16);
      if (v26 == v34)
      {
        LOBYTE(v67[0]) = 0;
LABEL_19:
        v38 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = *v53;
        v40 = v56;
        v41 = v54;
        (*v53)(v56, v54);
        v42 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
        v25 = v49(v40, v42, v41);
        if ((v67[0] & 1) == 0)
        {
          v43 = v54;
          v39(v56, v54);
          v39(v48, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v64);
      v35 = *(&v65 + 1);
      v36 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = *(v47 + 16);
  v64 = *v47;
  v65 = v44;
  LOBYTE(v66) = *(v47 + 32);
  *(&v66 + 1) = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v47, v67, &lazy cache variable for type metadata for UncheckedSendable<Path>, &type metadata for Path, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
  AGGraphSetOutputValue();
  return outlined consume of Path.Storage(v64, *(&v64 + 1), v65, *(&v65 + 1), v66);
}

{
  v47 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v66 = v6;
    v67 = v7;
    v68 = v8;
    v69 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v57 = *(&v6 + 1);
    LODWORD(v58) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v59 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v65 = v58;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66 = v6;
      *(&v66 + 1) = v57;
      v67 = v7;
      v61[0] = "%{public}@.body [in %{public}@]";
      v61[1] = 31;
      v62 = 2;
      v60 = v59;
      v20 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
      (*(v55 + 8))(v20, v54);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v58;
    v24 = v55 + 16;
    v49 = *(v55 + 16);
    v25 = v49(v56, v48, v54);
    v26 = 0;
    LOBYTE(v61[0]) = 1;
    v58 = v21;
    v55 = v24;
    v52 = 16 * v21;
    v53 = (v24 - 8);
    v51 = v59 + 32;
    v50 = v6;
LABEL_11:
    v57 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v58;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v51 + 40 * v26;
    v33 = v58;
    while (1)
    {
      v34 = *(v59 + 16);
      if (v26 == v34)
      {
        LOBYTE(v61[0]) = 0;
LABEL_19:
        v38 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v54;
        v40 = *v53;
        v41 = v56;
        (*v53)(v56, v54);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v49(v41, v42, v39);
        if ((v61[0] & 1) == 0)
        {
          v43 = v54;
          v40(v56, v54);
          v40(v48, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v66);
      v35 = v70;
      v36 = v71;
      __swift_project_boxed_opaque_existential_1(&v66, v70);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = v47;

  AGGraphSetUpdate();
  *&v66 = v44;
  WORD4(v66) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
  AGGraphSetOutputValue();

  return result;
}

double _AnyShapeBox.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 152);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17[-v11];
  v13 = *(v8 + 168);
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  v14 = *(*(v8 + 160) + 48);
  v17[16] = a2 & 1;
  v17[8] = a4 & 1;
  v15 = v14(a1);
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t specialized static Path.Storage.== infix(_:_:)(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  v5 = a2[2].u8[0];
  if (v4 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v4 != 1)
      {
        if (v5 != 2)
        {
          return 0;
        }

        v8 = *(*&v3 + 64);
        v10 = *(*&v3 + 48);
        v9 = *(*&v3 + 56);
        v11 = *(a2->i64[0] + 48);
        v12 = *(a2->i64[0] + 56);
        v13 = *(a2->i64[0] + 64);
        v14 = CGRectEqualToRect(*(*&v3 + 16), *(a2->i64[0] + 16));
        v15 = v10 == v11 && v14;
        if (v9 != v12)
        {
          v15 = 0;
        }

        return v15 & (v8 ^ v13 ^ 1u);
      }

      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0])
    {
      return 0;
    }

    v18.origin.x = v3;
    v18.origin.y = *(a1 + 8);
    v18.size.width = *(a1 + 16);
    v18.size.height = *(a1 + 24);
    return CGRectEqualToRect(v18, *a2->i8);
  }

  if (*(a1 + 32) <= 4u)
  {
    if (v4 == 3)
    {
      if (v5 == 3)
      {
        return 1;
      }
    }

    else if (v5 == 4)
    {
      return 1;
    }

    return 0;
  }

  if (v4 != 5)
  {
    if (v5 == 6)
    {
      v16 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 != 5)
  {
    return 0;
  }

  v6 = a2->i64[0];

  return specialized static Path.PathBox.== infix(_:_:)(*&v3, v6);
}

uint64_t sub_18D2F06A0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return specialized static Path.Storage.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static Path.PathBox.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(result + 16) == 1)
    {
      result = *(result + 24);
      v3 = *(a2 + 16);
      if (!*(a2 + 16))
      {
        goto LABEL_7;
      }

LABEL_12:
      if (v3 != 1 && one-time initialization token for bufferCallbacks != -1)
      {
        swift_once();
      }

      return RBPathEqualToPath();
    }

    if (one-time initialization token for bufferCallbacks != -1)
    {
      v4 = result;
      swift_once();
      result = v4;
    }

    v3 = *(a2 + 16);
    if (*(a2 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *(result + 24);
    if (!result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v3 = *(a2 + 16);
    if (*(a2 + 16))
    {
      goto LABEL_12;
    }
  }

LABEL_7:
  if (*(a2 + 24))
  {
    return RBPathEqualToPath();
  }

LABEL_17:
  __break(1u);
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance SystemColorType@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  SystemColorType.resolveHDR(in:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void type metadata accessor for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for AnyShapeStyle;
    v4[1] = &type metadata for AnyShapeStyle;
    v4[2] = &protocol witness table for AnyShapeStyle;
    v4[3] = &protocol witness table for AnyShapeStyle;
    v2 = type metadata accessor for ShapeStylePair(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>);
    }
  }
}

double LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = *(a4 + 8);
  v9 = (*(v8 + 32))(a3, v8);
  Array.subscript.getter();
  if (a2)
  {
    Array.subscript.getter();
  }

  else
  {
    memset(v27, 0, 112);
  }

  v10 = v9 & 1;
  v11 = (v9 & 1) == 0;
  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a5;
  }

  if (v9)
  {
    v13 = *&a5;
  }

  else
  {
    v13 = 0;
  }

  (*(v8 + 40))(a3, v8);
  v14 = *(LazyLayoutViewCache.item(data:)(v30) + 44);

  v15 = *MEMORY[0x1E698D3F8];
  v24 = v29;
  v25 = v14;
  v26 = v15;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  LayoutProxy.lengthThatFits(_:in:)(&v20, v10);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
  outlined destroy of _LazyLayout_Subview?(v27);
  outlined destroy of _LazyLayout_Subview(&v28);
  return v17;
}

uint64_t LazyHVStack<>.spacing.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment, a1);

  return static AsyncAttribute.flags.getter();
}

double _ViewInputs.withoutGeometryDependencies.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v17 = *(v1 + 32);
  v18 = v4;
  v19 = *(v1 + 64);
  v20 = *(v1 + 80);
  v5 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v5;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v2 + 64);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 64) = v7;
  v8 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v8;
  *(a1 + 80) = *(v2 + 80);
  *a1 = *v2;
  *(a1 + 64) = *(v6 + 248);
  v9 = *(a1 + 32);
  *(a1 + 32) = v9 | 8;
  memset(v15, 0, sizeof(v15));
  outlined init with copy of _ViewInputs(v16, v14);
  LODWORD(v2) = specialized GraphHost.intern<A>(_:for:id:)(v15, &type metadata for ViewTransform, 0);
  outlined destroy of ViewTransform(v15);
  *(a1 + 60) = v2;
  *(a1 + 32) = v9 | 0xC;
  v10 = specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);
  v11 = v9 | 0x1C;
  if ((v9 & 0x10) != 0)
  {
    v11 = v9 | 0xC;
  }

  v12 = DWORD1(v17);
  *(a1 + 68) = *(v6 + 248);
  *(a1 + 72) = v10;
  *(a1 + 32) = v11;
  *(a1 + 36) = v12 & 0xFFFFFFDD;
  PreferenceKeys.remove(_:)(&type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  PreferenceKeys.remove(_:)(&type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);

  return result;
}

uint64_t specialized GraphHost.intern<A>(_:for:id:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  swift_beginAccess();
  v10 = *(v6 + 120);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v12)
    {
      return *(*(v10 + 56) + 4 * v11);
    }
  }

  swift_beginAccess();
  v14 = *(v7 + 24);
  AGGraphClearUpdate();
  v15 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v7 + 120);
  *(v7 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v7 + 120) = v18;
  swift_endAccess();
  return v13;
}

void lazy protocol witness table accessor for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext()
{
  if (!lazy protocol witness table cache variable for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.MakeRepresentableContext, &unk_1F006BCD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext);
  }
}

double Transaction._disablesPageScrollAnimations.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V027DisabledPageScrollAnimationF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey> and conformance TransactionPropertyKey<A>);
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V027DisabledPageScrollAnimationV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.DisabledPageScrollAnimationKey>, &type metadata for Transaction.DisabledPageScrollAnimationKey, &protocol witness table for Transaction.DisabledPageScrollAnimationKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t specialized Edge.Set.init(_:)(unsigned __int8 a1)
{
  if (a1 >= 8u)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1 << a1;
  }

  if (a1 <= 8u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of _LazyLayout_Subview?(uint64_t a1)
{
  type metadata accessor for _LazyLayout_Subview?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _LazyLayout_Subview?()
{
  if (!lazy cache variable for type metadata for _LazyLayout_Subview?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LazyLayout_Subview?);
    }
  }
}

uint64_t assignWithCopy for PlatformImageRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  v14 = *(a2 + 128);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 128) >> 1 == 0xFFFFFFFFLL)
  {
    if (v15 == 0x1FFFFFFFELL)
    {
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
    }

    else
    {
      v18 = *(a2 + 112);
      v19 = *(a2 + 120);
      v20 = *(a2 + 136);
      outlined copy of AccessibilityImageLabel(v18, v19, *(a2 + 128), v20);
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
      *(a1 + 128) = v14;
      *(a1 + 136) = v20;
    }
  }

  else if (v15 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    v17 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
  }

  else
  {
    v21 = *(a2 + 112);
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    outlined copy of AccessibilityImageLabel(v21, v22, *(a2 + 128), v23);
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v27 = *(a1 + 136);
    *(a1 + 112) = v21;
    *(a1 + 120) = v22;
    *(a1 + 128) = v14;
    *(a1 + 136) = v23;
    outlined consume of AccessibilityImageLabel(v24, v25, v26, v27);
  }

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v28 = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 164) = v28;
  v29 = *(a1 + 176);
  v30 = *(a2 + 176);
  *(a1 + 176) = v30;
  v31 = v30;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  return a1;
}

uint64_t *assignWithCopy for PlatformNamedImageRepresentableContext(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t static ViewGraphFeatureBuffer._VTable.update(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 64))(a2, v4);
}

uint64_t CoreInteractionEffect.updateValue()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v37 = a1[4];
  v35 = type metadata accessor for CoreInteractionRepresentableEffect(255, v6, v37, a4);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32 - v8;
  v9 = a1[3];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Optional();
  v14 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v32 - v15;
  v17 = v4[4];
  LODWORD(v15) = *(v4 + 2);
  v18 = v4[2];
  v39 = *v4;
  v40 = v15;
  v41 = v18;
  v42 = v4[3];
  v43 = v17;
  CoreInteractionEffect.representable.getter(v16);
  Value = AGGraphGetValue();
  (*(v10 + 16))(v13, Value, v9);
  v20 = v4[4];
  v21 = *AGGraphGetValue();
  v22 = AGGraphCurrentAttributeWasModified();
  v32 = a1;
  v23 = a1[5];
  v38 = v21;
  v24 = *(*v17 + 88);
  v33 = v6;
  LOBYTE(v21) = v24(v16, v13, &v38, v22, v6, v9, v37, v23);
  (*(v10 + 8))(v13, v9);
  result = (*(v14 + 8))(v16, v36);
  if (v21)
  {
    v26 = v34;
    (*(*v20 + 80))(v33, v9, v33, v9, v37, v23);
    v27 = v35;
    v28 = *(v35 - 8);
    result = (*(v28 + 48))(v26, 1, v35);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = MEMORY[0x1EEE9AC00](result);
      *(&v32 - 2) = v32;
      swift_getWitnessTable(protocol conformance descriptor for CoreInteractionEffect<A, B>, v29);
      *(&v32 - 1) = v30;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, partial apply for closure #1 in StatefulRule.value.setter, (&v32 - 4), v27, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v31);
      return (*(v28 + 8))(v26, v27);
    }
  }

  return result;
}

uint64_t View.coreInteractionRepresentable<A, B>(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a6;
  v27 = a7;
  v28 = a1;
  v30 = a9;
  v31 = a3;
  v29 = a2;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - v17;
  v33[0] = a4;
  v33[1] = a5;
  v33[2] = a7;
  v33[3] = a8;
  v19 = type metadata accessor for CoreInteractionRepresentableModifier(0, v33);
  v20 = *(v19 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  v24 = *(a4 - 8);
  (*(v24 + 16))(v18, v28, a4, v21);
  (*(v24 + 56))(v18, 0, 1, a4);
  (*(v13 + 16))(v15, v29, a5);
  CoreInteractionRepresentableModifier.init(representable:id:)(v18, v15, a4, a5, v27, a8, v23);
  View.modifier<A>(_:)();
  return (*(v20 + 8))(v23, v19);
}

uint64_t getEnumTag for UnitCurve.Function(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for UnitCurve.Function(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t protocol witness for ViewList.estimatedCount(style:) in conformance ModifiedViewList(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = v2;
  return (*(v4 + 24))(&v6, v3, v4);
}

uint64_t CoreInteractionRepresentableEffect.effectValue(size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v5[5] = a1;
  v5[6] = &protocol witness table for CoreInteractionRepresentableEffect<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = 3;
  return result;
}

uint64_t sub_18D2F2048()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

__n128 initializeWithCopy for ScrollPosition.Storage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 57);
  if (v2 >= 5)
  {
    v2 = *a2 + 5;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))();
      result = *(a2 + 40);
      *(a1 + 40) = result;
      *(a1 + 56) = *(a2 + 56);
      return result;
    }

    if (v2 == 1)
    {
      *a1 = *a2;
      *(a1 + 57) = 1;
      return result;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        result = *a2;
        *a1 = *a2;
        *(a1 + 57) = 2;
        return result;
      case 3:
        *a1 = *a2;
        *(a1 + 57) = 3;
        return result;
      case 4:
        *a1 = *a2;
        *(a1 + 57) = 4;
        return result;
    }
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 42);
  *(a1 + 42) = result;
  return result;
}

void *destroy for ScrollPosition.Storage(void *a1)
{
  v1 = *(a1 + 57);
  if (v1 >= 5)
  {
    v1 = *a1 + 5;
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

void static Layout.makeStaticView(root:inputs:properties:list:)(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v56 = a5;
  v57 = a6;
  v61 = a7;
  v87 = *MEMORY[0x1E69E9840];
  v55 = *a1;
  v86 = *a2;
  v9 = *(a2 + 2);
  v10 = a2 + 24;
  v67 = *(a2 + 3);
  v11 = *(a2 + 9);
  v68 = *(a2 + 8);
  v84 = *(a2 + 40);
  v85 = *(a2 + 7);
  v12 = *(a2 + 17);
  LODWORD(v58) = *(a2 + 16);
  v59 = v12;
  v62 = *(a2 + 18);
  v63 = v11;
  v60 = *(a2 + 76);
  v13 = *(a3 + 1);
  v14 = *(a3 + 2);
  v15 = a4[3];
  v16 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (v17 == 1)
  {
    if (v14)
    {
      v18 = a4[3];
      v19 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v18);
      v83[0] = 0;
      v72 = *a2;
      v20 = *v10;
      v73 = v9;
      v74 = v20;
      v75 = *(v10 + 2);
      v76 = v63;
      v77 = *(a2 + 40);
      v78 = *(a2 + 7);
      v79 = v58;
      v80 = v59;
      v81 = v62;
      v82 = v60;
      (*(v19 + 16))(v71, v83, &v72, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v18, v19);
      v22 = v71[0];
      v21 = v71[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v22)
        {
          v23 = v61;
          *v61 = v22;
          v23[1] = v21;
          return;
        }

        goto LABEL_24;
      }

LABEL_27:
      __break(1u);
    }
  }

  else if (!v17 && v13)
  {
LABEL_24:
    v48 = v61;
    *v61 = MEMORY[0x1E69E7CC0];
    v49 = *MEMORY[0x1E698D3F8];
    *(v48 + 2) = 0;
    *(v48 + 3) = v49;
    return;
  }

  v69 = 0;
  v70 = 1;
  v54 = v63 & 0x22;
  if ((v63 & 0x22) != 0)
  {
    v24 = v9;
    v25 = swift_beginAccess();
    *&v72 = __PAIR64__(*(v9 + 16), v55);
    *(&v72 + 1) = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v25);
    v52 = type metadata accessor for StaticLayoutComputer(0, v56, v57, v26);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v52);
    v53 = v27;
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v72, closure #1 in Attribute.init<A>(_:)partial apply, v51, v52, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);

    v30 = v58;
    *&v72 = __PAIR64__(v58, v62);
    v55 = v83[0];
    DWORD2(v72) = v83[0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v69 = Attribute.init<A>(body:value:flags:update:)();
    v70 = 0;
  }

  else
  {
    v55 = 0;
    v30 = v58;
    v24 = v9;
  }

  v31 = MEMORY[0x1E69E7CC0];
  v65 = 0;
  v66 = MEMORY[0x1E69E7CC0];
  v32 = a4[4];
  v33 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v58 = &v54;
  MEMORY[0x1EEE9AC00](v33);
  v51[0] = &v69;
  v51[1] = &v65;
  v52 = &v66;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for closure #2 in static Layout.makeStaticView(root:inputs:properties:list:);
  *(v34 + 24) = &v50;
  v64 = 0;
  v72 = v86;
  v73 = v24;
  v74 = v67;
  v35 = v63;
  v75 = v68;
  v76 = v63;
  v77 = v84;
  v78 = v85;
  v79 = v30;
  v80 = v59;
  v81 = v62;
  v82 = v60;
  v36 = MEMORY[0x1EEE9AC00](v34);
  (*(v32 + 16))(v83, &v64, &v72, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v36);
  v38 = v83[0];
  v37 = v83[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_27;
  }

  v41 = *MEMORY[0x1E698D3F8];
  v42 = v38 == 0;
  if (v38)
  {
    v43 = HIDWORD(v37);
  }

  else
  {
    v38 = v31;
    v43 = *MEMORY[0x1E698D3F8];
  }

  if (v42)
  {
    LODWORD(v37) = 0;
  }

  if (v54)
  {
    MEMORY[0x1EEE9AC00](v40);
    v45 = type metadata accessor for StaticLayoutComputer(0, v56, v57, v44);
    MEMORY[0x1EEE9AC00](v45);
    v41 = v55;
    AGGraphMutateAttribute();
  }

  if ((v35 & 2) != 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v43;
  }

  v47 = v61;
  *v61 = v38;
  *(v47 + 2) = v37 | ((v35 & 2) << 6);
  *(v47 + 3) = v46;
}

void type metadata accessor for Attribute<LayoutComputer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void partial apply for closure #3 in static Layout.makeStaticView(root:inputs:properties:list:)(uint64_t a1)
{
  v3 = **(v1 + 32);

  *(a1 + 8) = v3;
}

Swift::Void __swiftcall ViewTransform.appendSizedSpace(id:size:)(SwiftUI::CoordinateSpace::ID id, CGSize size)
{
  v3 = v2;
  height = size.height;
  width = size.width;
  v25[0] = *id.value.value;
  v26 = 1;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2 + 4;
  v9 = v2[4];
  v10 = v2[5];
  *&v21 = *v2;
  *(&v21 + 1) = v7;
  *v22 = *(v2 + 1);
  *&v22[16] = v9;
  *&v22[24] = v10;

  ViewTransform.coordinateSpaceTag(_:)(v25, &v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v25, &v21);
  type metadata accessor for CoordinateSpaceNode();
  v11 = swift_allocObject();
  v12 = v11;
  v13 = *v22;
  *(v11 + 24) = v21;
  *(v11 + 40) = v13;
  *(v11 + 49) = *&v22[9];
  *(v11 + 16) = v7;
  if (v7)
  {
    v14 = *(v7 + 72);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v17 = v23;
    outlined destroy of CoordinateSpace(v25);
    goto LABEL_9;
  }

  v16 = 1;
LABEL_8:
  *(v11 + 72) = v16;
  v3[1] = v11;
  outlined destroy of CoordinateSpace(v25);
  v17 = *(v12 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for Element<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for Element);
  v18 = swift_allocObject();
  *(v18 + 4) = v9;
  *(v18 + 5) = v10;
  *(v18 + 6) = v17;
  v18[7] = width;
  v18[8] = height;
  *(v18 + 2) = v6;
  if (v6)
  {
    v19 = *(v6 + 3);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v20 = 1;
LABEL_14:
  *(v18 + 3) = v20;
  *v3 = v18;
  *v8 = 0;
  v8[1] = 0;
}

int8x16_t static ScrollGeometry.viewTransform(contentInsets:contentSize:containerSize:)@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v18 = CGRect.outset(by:)(a2, a3, a4, a5, 0.0, 0.0, a8, a9);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a8;
  *(a1 + 72) = a9;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  v21.i64[1] = v20;
  result = vbicq_s8(v21, vclezq_f64(v21));
  *(a1 + 96) = result;
  return result;
}

void *static Spacing.Category.default.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t one-time initialization function for all(uint64_t a1)
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.all = result;
  return result;
}

double *ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v28[0] = *a1;
  v29 = 1;
  v9 = *(a2 + 8);
  *&v24 = *a2;
  *(&v24 + 1) = v9;
  v10 = *(a2 + 32);
  *v25 = *(a2 + 16);
  *&v25[16] = v10;

  ViewTransform.coordinateSpaceTag(_:)(v28, &v26);

  if ((v27 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v28, &v24);
  type metadata accessor for CoordinateSpaceNode();
  v11 = swift_allocObject();
  v12 = v11;
  v13 = *v25;
  *(v11 + 24) = v24;
  *(v11 + 40) = v13;
  *(v11 + 49) = *&v25[9];
  *(v11 + 16) = v9;
  if (v9)
  {
    v14 = *(v9 + 72);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v17 = v26;
    outlined destroy of CoordinateSpace(v28);
    goto LABEL_9;
  }

  v16 = 1;
LABEL_8:
  *(v11 + 72) = v16;
  *(a2 + 8) = v11;
  outlined destroy of CoordinateSpace(v28);
  v17 = *(v12 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<SizedSpaceElement>, lazy protocol witness table accessor for type SizedSpaceElement and conformance SizedSpaceElement, &type metadata for SizedSpaceElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
  v19 = v18;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x30);
  *result = v19;
  *(result + 1) = 48;
  *(result + 2) = v17;
  result[3] = a3;
  result[4] = a4;
  if (*v5)
  {
    v21 = result - *v5;
    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      v22 = *(v5 + 12);
      v15 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (!v15)
      {
        *(v5 + 12) = v23;
        return result;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for horizontal(uint64_t a1)
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.horizontal = result;
  return result;
}

uint64_t one-time initialization function for content(uint64_t a1)
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.content = result;
  return result;
}

uint64_t one-time initialization function for safeArea(uint64_t a1)
{
  result = AGMakeUniqueID();
  static ScrollCoordinateSpace.safeArea = result;
  return result;
}

double LazyPreference.prefetchItems.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E698D3F8] != HIDWORD(a1))
  {
    _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], a3, type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Image.Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _DrawingGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void LeafDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v10 = v9;
  (*(v5 + 16))(v7, Value, v4);
  (*(*(a1 + 24) + 40))(&v35, v4);
  v11 = v35;
  v12 = ++static DisplayList.Version.lastValue;
  if (v10)
  {
    if (v12)
    {
      v13 = (2 * ((33 * (v12 >> 16)) ^ v12)) | 1;
    }

    else
    {
      LOWORD(v13) = 0;
    }

    *(v2 + 11) = v13;
  }

  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  v17 = AGGraphGetValue();
  v18 = v15 - *v17;
  v19 = v16 - v17[1];
  v20 = *(v2 + 11);
  outlined copy of DisplayList.Content.Value(v11);
  type metadata accessor for CGSize(0);
  v21 = AGGraphGetValue();
  v22 = *v2;
  *&v29 = v18;
  *(&v29 + 1) = v19;
  v30 = *v21;
  *&v32[1] = 0;
  *(&v31 + 1) = v11;
  v32[0] = v20;
  DWORD2(v32[1]) = v22;
  *&v31 = v12;
  LOBYTE(v35) = *(v2 + 20);
  DisplayList.Item.canonicalize(options:)(&v35);
  v33[2] = v31;
  v34[0] = v32[0];
  *(v34 + 12) = *(v32 + 12);
  v33[0] = v29;
  v33[1] = v30;
  v37 = v31;
  v38[0] = v32[0];
  *(v38 + 12) = *(v32 + 12);
  v35 = v29;
  v36 = v30;
  outlined init with copy of DisplayList.Item(v33, &v26);
  DisplayList.init(_:)(&v35, &v26);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  AGGraphSetOutputValue();
  outlined consume of DisplayList.Content.Value(v11);
  v37 = v31;
  v38[0] = v32[0];
  *(v38 + 12) = *(v32 + 12);
  v35 = v29;
  v36 = v30;
  outlined destroy of DisplayList.Item(&v35);
  (*(v5 + 8))(v7, v4);
}

double _CALayerView.content()@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = &protocol witness table for _CALayerView<A>;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a2 = v7 | 0x9000000000000000;

  return result;
}

uint64_t sub_18D2F3350()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void *static CoordinateSpaceProtocol<>.named<A>(_:)@<X0>(uint64_t a4@<X8>)
{
  result = _convertToAnyHashable<A>(_:)();
  *(a4 + 40) = 0;
  return result;
}

void Text.MakeRepresentableContext.value.getter(void *a3@<X8>)
{
  v39 = a3;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for ResolvableStringResolutionContext(0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of ResolvableStringResolutionContext(WeakValue, v5, type metadata accessor for Date?);
    _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v5, v8, type metadata accessor for Date?);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  }

  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = Value[1];
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = &v14[*(v9 + 24)];

  outlined assign with take of ResolvedTextHelper.NextUpdate(v8, v14, type metadata accessor for Date?);
  v22 = &v14[*(v9 + 20)];
  *v22 = v18;
  *(v22 + 1) = v19;
  *v21 = 0;
  v21[8] = 1;
  type metadata accessor for ResolvedStyledText();
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(*v23 + 216);
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = v25;
  if (NSAttributedString.isDynamic.getter() && (*(v24 + 256) & 1) != 0)
  {
    [v26 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    if (swift_dynamicCast())
    {
      v27 = one-time initialization token for resolvableTextSegment;
      v28 = aBlock[6];
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = static NSAttributedStringKey.resolvableTextSegment;
      v30 = [v28 length];
      outlined init with copy of ResolvableStringResolutionContext(v14, v11, type metadata accessor for ResolvableStringResolutionContext);
      v31 = (*(v38 + 80) + 24) & ~*(v38 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v11, v32 + v31, type metadata accessor for ResolvableStringResolutionContext);
      v33 = swift_allocObject();
      *(v33 + 16) = closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)partial apply;
      *(v33 + 24) = v32;
      aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[3] = &block_descriptor_71;
      v34 = _Block_copy(aBlock);
      v25 = v28;

      [v25 enumerateAttribute:v29 inRange:0 options:v30 usingBlock:{2, v34}];

      _Block_release(v34);
      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if ((v34 & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

LABEL_15:
    v35 = *AGGraphGetValue();

    outlined destroy of Date?(v14, type metadata accessor for ResolvableStringResolutionContext);
    v25 = *(v35 + 216);
    v36 = v25;

    goto LABEL_16;
  }

LABEL_8:
  outlined destroy of Date?(v14, type metadata accessor for ResolvableStringResolutionContext);
LABEL_16:
  *v39 = v25;
}

void type metadata completion function for ResolvableStringResolutionContext(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_3(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t outlined assign with take of ResolvedTextHelper.NextUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double Color.NamedColor.resolve(in:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *a1;
  v7 = Color.NamedColor.resolveCGColor(in:)(&v19, a2, a3, a4);
  if (v7)
  {
    LODWORD(result) = specialized Color.Resolved.init(failableCGColor:)(v7);
    if (v9)
    {
      *&result = 0.0;
    }
  }

  else
  {
    if (a4)
    {
      v10 = [a4 bundlePath];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(&v19, "main bundle (");
      HIWORD(v19) = -4864;
      v14 = [objc_opt_self() mainBundle];
      v15 = [v14 bundlePath];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      MEMORY[0x193ABEDD0](v16, v18);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      v13 = *(&v19 + 1);
      v11 = v19;
    }

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    *&v19 = 0xD000000000000010;
    *(&v19 + 1) = 0x800000018DD7FA60;
    MEMORY[0x193ABEDD0](a2, a3);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD7C980);
    MEMORY[0x193ABEDD0](v11, v13);

    specialized static Log.externalWarning(_:)(v19, *(&v19 + 1));

    return 0.0;
  }

  return result;
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.NamedColor(__int128 *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v11 = *a1;
  v7 = Color.NamedColor.resolve(in:)(&v11, v4, v5, v6);
  *a2 = LODWORD(v7);
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = 2143289344;
}

uint64_t Color.NamedColor.resolveCGColor(in:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v59 = *a1;
  v60 = v8;

  CatalogKey.init(_:)(&v59, v61);
  v9 = v61[0];
  v10 = v61[1];
  if (v8)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v7, &v59);

    v11 = v59;
LABEL_5:
    v57 = v11;
    goto LABEL_6;
  }

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v7);
  if (v12)
  {
    v11 = *(v12 + 72);
    goto LABEL_5;
  }

  v57 = 0;
LABEL_6:
  v13 = one-time initialization token for colorCache;
  v14 = a4;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = colorCache;

  os_unfair_lock_lock(v15 + 4);
  v16 = *&v15[6]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v15 + 4);

  if (*(v16 + 16))
  {
    v17 = v10 ? 256 : 0;
    v18 = v17 | v9;
    v19 = v57 ? 0x10000 : 0;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18 | v19, a2, a3, a4);
    if (v21)
    {
      v22 = v20;

      v23 = *(*(v16 + 56) + 8 * v22);
      v24 = v23;

      if (v23)
      {
        v59 = v7;
        v60 = v8;
        v25 = v24;
        CUINamedColor.effectiveCGColor(in:)(&v59);
        v27 = v26;

        return v27;
      }

      goto LABEL_21;
    }
  }

  v29 = [objc_opt_self() defaultUICatalogForBundle_];

  if (!v29)
  {
LABEL_21:

    return 0;
  }

  v56 = a2;
  v54 = v10;
  v53 = a4;
  if (v8)
  {
    v30 = v9;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v7, &v59);

    v31 = v59;
  }

  else
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v7);
    v30 = v9;
    if (v32)
    {
      v31 = *(v32 + 72);
    }

    else
    {
      v31 = 6;
    }
  }

  LOBYTE(v59) = v31;
  v33 = ViewGraphHost.Idiom.cuiDeviceClass.getter();
  v59 = v7;
  v60 = v8;
  matched = EnvironmentValues.cuiAssetMatchTypes.getter();
  if (v54)
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 | v30;
  if (v57)
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  v58 = v37;
  v38 = v14;
  swift_bridgeObjectRetain_n();
  v55 = v7;
  v39 = v29;
  v40 = v38;
  v41 = v36 | v37;
  v42 = v36;
  v43 = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v36, matched, v39, v39, v56, a3, v53, v41, v56, a3, v53, v33);
  v44 = v39;

  swift_bridgeObjectRelease_n();
  v45 = colorCache;
  v46 = v43;

  v47 = v40;

  os_unfair_lock_lock(v45 + 4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *&v45[6]._os_unfair_lock_opaque;
  *&v45[6]._os_unfair_lock_opaque = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v42 | v58, v56, a3, v53, isUniquelyReferenced_nonNull_native, v49);

  *&v45[6]._os_unfair_lock_opaque = v59;
  os_unfair_lock_unlock(v45 + 4);

  if (v43)
  {
    v59 = v55;
    v60 = v8;
    v50 = v46;
    CUINamedColor.effectiveCGColor(in:)(&v59);
    v52 = v51;

    return v52;
  }

  return 0;
}

void CatalogKey.init(_:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  EnvironmentValues.colorScheme.getter(&v8);
  v5 = v8;
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v3, v9);

    v6 = v9[0];
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v3);
    if (v7)
    {
      v6 = *(v7 + 72);
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t one-time initialization function for colorCache()
{
  type metadata accessor for AtomicBuffer<[ColorCacheKey : NamedColorInfo]>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC8];
  colorCache = result;
  return result;
}

void lazy protocol witness table accessor for type ColorCacheKey and conformance ColorCacheKey()
{
  if (!lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorCacheKey, &type metadata for ColorCacheKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorCacheKey, &type metadata for ColorCacheKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorCacheKey and conformance ColorCacheKey);
  }
}

_OWORD *EnvironmentValues.cuiAssetMatchTypes.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v1, &v3);
  }

  else
  {
    _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v1);
  }

  if (ViewGraphHost.Idiom.cuiDeviceClass.getter() != 8)
  {
    return &outlined read-only object #0 of EnvironmentValues.cuiAssetMatchTypes.getter;
  }

  type metadata accessor for _ContiguousArrayStorage<Path>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CatalogAssetMatchType>, &type metadata for CatalogAssetMatchType, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  result[1] = xmmword_18DDAB4C0;
  *(result + 4) = 8;
  *(result + 40) = 0;
  *(result + 6) = 1;
  *(result + 56) = 1;
  return result;
}

id specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v12 = *(a2 + 16);
  if (!v12)
  {
    return v12;
  }

  v63 = *(a2 + 32);
  v62 = *(a2 + 40);
  if (v63 == 8)
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = 1;
  }

  v55 = a2 + 32;
  v54 = *(a2 + 16);
  if ((a1 & 0x100) != 0)
  {
    if ((v16 & 1) == 0)
    {
      v21 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      goto LABEL_13;
    }

    v17 = a7;
    v23 = a1;
    type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>(0);
    v24 = swift_allocObject();
    a1 = v23;
    *(v24 + 16) = xmmword_18DDACA80;
    *(v24 + 32) = v23 & 1;
    *(v24 + 33) = 1;
    *(v24 + 34) = v23 & 1;
    *(v24 + 35) = 512;
    *(v24 + 37) = 1;
    v20 = (v24 + 38);
    v21 = v24;
    v22 = (v24 + 39);
  }

  else
  {
    if ((v16 & 1) == 0)
    {
      v21 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      goto LABEL_13;
    }

    v17 = a7;
    v18 = a1;
    type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>(0);
    v19 = swift_allocObject();
    a1 = v18;
    *(v19 + 16) = xmmword_18DDAB4C0;
    *(v19 + 32) = v18 & 1;
    *(v19 + 33) = 0;
    v20 = (v19 + 34);
    v21 = v19;
    v22 = (v19 + 35);
  }

  *v20 = 2;
  *v22 = 0;
  a7 = v17;
LABEL_13:
  v56 = a1;
  v25 = *(v21 + 2);
  v57 = a7;
  v60 = a7;

  v59 = a11;
  v64 = a4;

  if (!v25)
  {

    goto LABEL_58;
  }

  v12 = 0;
  v26 = v21 + 33;
  v53 = a6;
  do
  {
    if (v12)
    {
      goto LABEL_16;
    }

    v27 = *(v26 - 1);
    v28 = 0xD00000000000001BLL;
    if (!*v26)
    {
      v28 = 0x7261657070414955;
    }

    v29 = 0x800000018DD7CA20;
    if (!*v26)
    {
      v29 = 0xEF796E4165636E61;
    }

    v30 = 0xD00000000000001CLL;
    if (!*v26)
    {
      v30 = 0xD000000000000010;
    }

    v31 = "UIAppearanceHighContrastAny";
    if (!*v26)
    {
      v31 = "UIAppearanceHighContrastDark";
    }

    v32 = v31 | 0x8000000000000000;
    if (*v26)
    {
      v33 = 0xD00000000000001DLL;
    }

    else
    {
      v33 = 0xD000000000000011;
    }

    v34 = "UIAppearanceDark";
    if (!*v26)
    {
      v34 = "UIAppearanceHighContrastLight";
    }

    v35 = v34 | 0x8000000000000000;
    if (v27)
    {
      v33 = v30;
      v36 = v32;
    }

    else
    {
      v36 = v35;
    }

    if (v27 == 2)
    {
      v37 = v28;
    }

    else
    {
      v37 = v33;
    }

    if (v27 == 2)
    {
      v38 = v29;
    }

    else
    {
      v38 = v36;
    }

    v39 = MEMORY[0x193ABEC20](a5, a6);
    v40 = MEMORY[0x193ABEC20](v37, v38);
    v12 = [v64 colorWithName:v39 displayGamut:HIWORD(a8) & 1 deviceIdiom:a12 appearanceName:v40];

    if (!v12)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (!v62)
    {

      if ([v12 idiom] == v63)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

    if (!v63)
    {
      goto LABEL_15;
    }

    v41 = [v12 appearance];
    if (!v41)
    {

LABEL_50:

      v12 = 0;
      goto LABEL_16;
    }

    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v43 == v37 && v45 == v38)
    {

      a6 = v53;
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {

        v12 = 0;
      }

      a6 = v53;
    }

LABEL_16:
    v26 += 2;
    --v25;
  }

  while (v25);

  if (v12)
  {

    return v12;
  }

LABEL_58:
  v48 = v60;

  v49 = v59;
  v50 = v64;

  specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v56 & 0x101, a2, v55, 1, (2 * v54) | 1, a3, v50, a5, a6, v57, a8 & 0x10101, a9, a10, a11, a12);
  v52 = v51;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v52;
}

void type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>)
  {
    type metadata accessor for (ColorScheme?, ColorSchemeContrast)(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>);
    }
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, char a6, __n128 a7)
{
  v8 = v7;
  v15 = *v7;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0x10101, a3, a4, a5);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      v24 = v16;
      specialized _NativeDictionary.copy()();
      v16 = v24;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a6 & 1);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0x10101, a3, a4, a5);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v26 = *v8;
  if (v22)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v16);
    *(v27 + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2 & 0x10101, a3, a4, a5, a1, v26);
    v29 = a5;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  MEMORY[0x193AC11A0]((a1 >> 8) & 1);
  MEMORY[0x193AC11A0](HIWORD(a1) & 1);
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    v8 = a4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0x10101, a2, a3, a4, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    v11 = a3;
    v13 = ~v7;
    v25 = a2;
    do
    {
      v14 = *(v9 + 48) + 32 * v8;
      if (*v14 == (a1 & 1) && ((*(v14 + 1) ^ ((a1 & 0x100) >> 8)) & 1) == 0 && ((*(v14 + 2) ^ ((a1 & 0x10000u) >> 16)) & 1) == 0)
      {
        v15 = *(v14 + 24);
        v16 = *(v14 + 8) == a2 && *(v14 + 16) == v11;
        if (v16 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v25, (v17 & 1) != 0))
        {
          if (v15)
          {
            if (a4)
            {
              type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);

              v18 = v15;
              v19 = a4;
              v20 = a4;
              v21 = v18;
              v22 = static NSObject.== infix(_:_:)();

              a4 = v19;
              v11 = a3;

              a2 = v25;
              if (v22)
              {
                return v8;
              }
            }
          }

          else if (!a4)
          {
            return v8;
          }
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2 & 1;
  *(v7 + 1) = BYTE1(a2) & 1;
  *(v7 + 2) = BYTE2(a2) & 1;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

void specialized ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *(a2 + 24);
  if (v13 <= 2)
  {
    v52 = v12;
    v53 = v11;
    v54 = v10;
    v55 = v9;
    v56 = v8;
    v57 = v7;
    v58 = v5;
    v59 = v6;
    v16 = *a2;
    if (v13)
    {
      if (v13 == 1)
      {
        v17 = *(a2 + 8);
        if (v17 == *(a2 + 16))
        {
          return;
        }

        v45 = *(a2 + 48);
        v18 = Color.NamedColor.resolve(in:)(&v45, a3, a4, a5);
        v19 = LODWORD(v18);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = *(a2 + 56);
        *&v45 = *(a2 + 48);
        *(&v45 + 1) = v26;
        v27 = *(*a1 + 168);

        v28 = v27(v17, &v45);

        *&v45 = __PAIR64__(v21, v19);
        DWORD2(v45) = v23;
        *(&v45 + 3) = v25 * v28;
        v46 = 2143289344;
        v47 = 0;
        v48 = 1065353216;
        v49 = 0;
        v50 = -1;
        v29 = MEMORY[0x1E69E7CC0];
        v51 = MEMORY[0x1E69E7CC0];
        v44 = v16;
        if (*(a2 + 40) == 1)
        {
          v29 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v45, &v44, v17);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v29;
        v31 = 1;
      }

      else
      {
        v38 = a1;
        if (v16 >= 1)
        {
          v39 = *(a2 + 56);
          *&v45 = *(a2 + 48);
          *(&v45 + 1) = v39;
          v40 = *(*a1 + 168);

          v41 = v40(v16, &v45);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v38 = swift_allocObject();
          *(v38 + 16) = a1;
          *(v38 + 24) = v41;
        }

        v42 = *(a2 + 32);
        v43 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v42, v43);
        *(a2 + 32) = v38;
        v31 = 3;
      }

      *(a2 + 40) = v31;
    }

    else
    {
      v32 = a1;
      if (v16 >= 1)
      {
        v33 = *(a2 + 56);
        *&v45 = *(a2 + 48);
        *(&v45 + 1) = v33;
        v34 = *(*a1 + 168);

        v35 = v34(v16, &v45);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v32 = swift_allocObject();
        *(v32 + 16) = a1;
        *(v32 + 24) = v35;
      }

      v36 = *(a2 + 32);
      v37 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v36, v37);
      *(a2 + 32) = v32;
      *(a2 + 40) = 0;
    }
  }
}

Swift::Void __swiftcall _CALayerView.updatePlatformLayer(_:)(CALayer *a1)
{
  v2 = *v1;
  v3 = swift_dynamicCastUnknownClassUnconditional();
  v2(v3);
}

Swift::Void __swiftcall ViewTransform.UnsafeBuffer.appendTranslation(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  if (a1.width != 0.0 || a1.height != 0.0)
  {
    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<TranslationElement>, lazy protocol witness table accessor for type TranslationElement and conformance TranslationElement, &unk_1F00BA9D8, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v5 = v4;
    v6 = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
    *v6 = v5;
    *(v6 + 1) = 32;
    v6[2] = width;
    v6[3] = height;
    if (!*v1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v6 - *v1;
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      v8 = *(v1 + 12);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        *(v1 + 12) = v10;
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t specialized static Image.ResizableProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1 == *a2)
  {
    if (v3 != v8 || v2 != v7 || v5 != v10 || v4 != v9)
    {
      return 0;
    }

    return v6 ^ v11 ^ 1u;
  }

  v12 = (*(**a1 + 96))();
  result = 0;
  if (v12)
  {
    v14 = v3 == v8 && v2 == v7;
    v15 = v14 && v5 == v10;
    if (v15 && v4 == v9)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return result;
}

double destroy for ResolvableStringResolutionContext(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  return result;
}

void type metadata accessor for PlatformTextRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformTextRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformTextRepresentable.Type, &lazy cache variable for type metadata for PlatformTextRepresentable, &protocol descriptor for PlatformTextRepresentable);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformTextRepresentable.Type?);
    }
  }
}

void type metadata accessor for PlatformImageRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformImageRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformImageRepresentable.Type, &lazy cache variable for type metadata for PlatformImageRepresentable, &protocol descriptor for PlatformImageRepresentable);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformImageRepresentable.Type?);
    }
  }
}

void type metadata accessor for PlatformNamedImageRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformNamedImageRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformNamedImageRepresentable.Type, &lazy cache variable for type metadata for PlatformNamedImageRepresentable, &protocol descriptor for PlatformNamedImageRepresentable);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformNamedImageRepresentable.Type?);
    }
  }
}

void type metadata accessor for PlatformSpacerRepresentable.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformSpacerRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformSpacerRepresentable.Type, &lazy cache variable for type metadata for PlatformSpacerRepresentable, &protocol descriptor for PlatformSpacerRepresentable);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformSpacerRepresentable.Type?);
    }
  }
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x193ABF270](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x193ABF2D0](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

double MappedViews.MappedElements.init(base:baseInputs:id:list:view:views:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v13 = HIDWORD(a4);
  v14 = *(a3 + 8);
  outlined init with take of AnyTrackedValue(a1, a7);
  v15 = a2[1];
  *(a7 + 40) = *a2;
  *(a7 + 56) = v15;
  *(a7 + 72) = a2[2];
  result = *a3;
  *(a7 + 88) = *a3;
  *(a7 + 96) = v14;
  *(a7 + 104) = v9;
  *(a7 + 108) = v13;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

BOOL static ScrollPositionToValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t *assignWithCopy for ScrollPositionBindingModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage((a1 + 2));
    if (*(a2 + 73))
    {
      v4 = *(a2 + 1);
      v5 = *(a2 + 2);
      v6 = *(a2 + 3);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 2) = v5;
      *(a1 + 3) = v6;
      *(a1 + 1) = v4;
    }

    else
    {
      v7 = a2[5];
      a1[5] = v7;
      a1[6] = a2[6];
      (**(v7 - 8))(a1 + 2, a2 + 2);
      v8 = *(a2 + 72);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 36) = v8;
    }
  }

  *(a1 + 5) = *(a2 + 5);
  a1[12] = a2[12];
  v9 = *(a2 + 13);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 13) = v9;
  return a1;
}

uint64_t storeEnumTagSinglePayload for _ViewList_View(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _ViewList_SublistTransform.withTemporaryTransform<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  return _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _ViewList_SublistTransform.withTemporaryTransform<A>(do:), v10, &type metadata for _ViewList_SublistTransform, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in _ViewList_SublistTransform.withTemporaryTransform<A>(do:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  v5 = 1;
  return v2(&v4);
}

uint64_t ViewList.applySublists(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v14 = *a2;
  v12 = v8;
  v13 = v9;
  v11[2] = a5;
  v11[3] = a6;
  return (*(a8 + 64))(a1, &v14, a3 | ((HIDWORD(a3) & 1) << 32), &v12, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v11, a7) & 1;
}

uint64_t static Update.lock()(uint64_t (*a1)(uint64_t))
{
  v2 = a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
    v2 = a1;
  }

  v3 = static Update._lock;

  return v2(v3);
}

Swift::Void __swiftcall ScrollStateEnqueueRequests.updateValue()()
{
  v1 = v0;
  if (*(v0 + 44) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 44) = *AGGraphGetValue() >> 1;
    *(v0 + 32) = 0xFFFFFFFFLL;
    *(v0 + 40) = 0;
    v2 = *(v0 + 56);
    swift_beginAccess();
    *(v2 + 16) = MEMORY[0x1E69E7CC8];
  }

  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    v50 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
LABEL_12:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v5 = v4;
  outlined init with copy of ScrollStateRequest?(Value, &v60);
  v64 = v60;
  v65 = v61;
  v66 = v62;
  if ((v5 & 1) == 0)
  {
LABEL_11:
    v50 = 0;
    goto LABEL_12;
  }

  outlined init with copy of ScrollStateRequest?(&v64, &v56);
  if (!*(&v57 + 1))
  {
    outlined destroy of ScrollStateRequest?(&v56, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    goto LABEL_11;
  }

  outlined init with take of AnyTrackedValue(&v56, &v60);
  v6 = *(v1 + 4);
  v7 = *(&v61 + 1);
  v8 = v62;
  __swift_mutable_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v8 + 32))(v6, v7, v8);
  outlined init with copy of AnyTrackedValue(&v60, &v56);
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v67 = v9;
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    v67 = v9;
  }

  v12 = *(&v57 + 1);
  v13 = v58;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17, v15);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v11, v17, &v67, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v50 = 1;
LABEL_13:
  updated = ScrollStateEnqueueRequests.adjustedUpdateRequests()();
  v21 = v9[2];
  v51 = v1;
  v49 = updated;
  v48 = v20;
  if (!v21 && (v20 & 1) != 0)
  {
    v22 = updated[2];
    if (v22)
    {
      v23 = *(v1 + 4);
      v24 = (updated + 4);
      do
      {
        outlined init with copy of AnyTrackedValue(v24, &v60);
        v26 = *(&v61 + 1);
        v25 = v62;
        __swift_mutable_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
        (*(v25 + 32))(v23, v26, v25);
        outlined init with copy of AnyTrackedValue(&v60, &v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
          v67 = v9;
        }

        v29 = v9[2];
        v28 = v9[3];
        if (v29 >= v28 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v9);
          v67 = v9;
        }

        v30 = *(&v57 + 1);
        v31 = v58;
        v32 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        v33 = MEMORY[0x1EEE9AC00](v32);
        v35 = &v47[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v36 + 16))(v35, v33);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v35, &v67, v30, v31);
        __swift_destroy_boxed_opaque_existential_1(&v56);
        __swift_destroy_boxed_opaque_existential_1(&v60);
        v24 += 40;
        --v22;
      }

      while (v22);
    }
  }

  if ((v48 & 1) == 0)
  {

    v38 = v51;
    v40 = v50;
    if (!v9[2])
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OutputValue = AGGraphGetOutputValue();
  v38 = v51;
  if (!OutputValue)
  {

    if (v50)
    {
      if (!v9[2])
      {
        goto LABEL_40;
      }

LABEL_39:
      v42 = *(v38 + 16);
      v56 = *v38;
      v57 = v42;
      v43 = *(v38 + 48);
      v45 = *v38;
      v44 = *(v38 + 16);
      v58 = *(v38 + 32);
      v59 = v43;
      v52 = v45;
      v53 = v44;
      v46 = *(v38 + 48);
      v54 = *(v38 + 32);
      v55 = v46;
      outlined init with copy of ScrollStateEnqueueRequests(&v56, &v60);
      ScrollStateEnqueueRequests.enqueueRequests(_:)(v9);

      v60 = v52;
      v61 = v53;
      v62 = v54;
      v63 = v55;
      outlined destroy of ScrollStateEnqueueRequests(&v60);
      outlined destroy of ScrollStateRequest?(&v64, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
      return;
    }

LABEL_37:
    v40 = specialized UpdateCycleDetector.dispatch(label:isDebug:)(1, (v38 + 28));
    if (!v9[2])
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v39 = v49[2];

  v40 = v50;
  if (v39)
  {
    v41 = v50;
  }

  else
  {
    v41 = 1;
  }

  if (v39)
  {
    v40 = 1;
  }

  if ((v41 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (!v9[2])
  {
    goto LABEL_40;
  }

LABEL_38:
  if (v40)
  {
    goto LABEL_39;
  }

LABEL_40:
  outlined destroy of ScrollStateRequest?(&v64, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
}

Swift::Void __swiftcall ScrollPositionBindingModifier.MakeRequest.updateValue()()
{
  v1 = v0;
  v45[11] = *MEMORY[0x1E69E9840];
  AGGraphClearUpdate();
  outlined init with copy of ScrollPositionBindingModifier.MakeRequest(v0, &v32);
  v2 = *AGGraphGetValue();

  outlined destroy of ScrollPositionBindingModifier.MakeRequest(&v32);
  AGGraphSetUpdate();
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<ScrollPosition>(Value, &v32, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(**(&v32 + 1) + 104))(1);
    outlined init with copy of ScrollPosition(&v33, v45);
  }

  else
  {
    (*(**(&v32 + 1) + 120))(v45);
  }

  outlined destroy of Binding<ScrollPosition>(&v32, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(v2);
  outlined init with copy of ScrollPosition(v45, v44);
  v5 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<ScrollPosition>(v1 + 16, v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
  outlined init with copy of Binding<ScrollPosition>(v44, &v32, &lazy cache variable for type metadata for ScrollPosition?, v5);
  outlined init with copy of Binding<ScrollPosition>(v43, &v37[8], &lazy cache variable for type metadata for ScrollPosition?, v5);
  if (!v36)
  {
    v11 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<ScrollPosition>(v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
    outlined destroy of Binding<ScrollPosition>(v44, &lazy cache variable for type metadata for ScrollPosition?, v11);
    if (!v41)
    {
      outlined destroy of Binding<ScrollPosition>(&v32, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
      v10 = 1;
      goto LABEL_18;
    }

LABEL_17:
    _s7SwiftUI18ScrollStateRequest_pSgWOhTm_0(&v32, type metadata accessor for (ScrollPosition?, ScrollPosition?));
    v10 = 0;
    goto LABEL_18;
  }

  outlined init with copy of Binding<ScrollPosition>(&v32, v29, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
  if (!v41)
  {
    v12 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<ScrollPosition>(v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
    outlined destroy of Binding<ScrollPosition>(v44, &lazy cache variable for type metadata for ScrollPosition?, v12);
    outlined destroy of ScrollPosition(v29);
    goto LABEL_17;
  }

  v26[2] = v39;
  v26[3] = v40;
  v27 = v41;
  v28 = v42;
  v26[0] = *&v37[8];
  v26[1] = v38;
  v6 = specialized static ScrollPosition.Storage.== infix(_:_:)(v29, v26);
  v7 = MEMORY[0x1E69E6720];
  outlined destroy of Binding<ScrollPosition>(v43, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
  outlined destroy of Binding<ScrollPosition>(v44, &lazy cache variable for type metadata for ScrollPosition?, v7);
  if (v6 && v31 == v28)
  {
    v8 = v30;
    v9 = v27;
    outlined destroy of ScrollPosition(v26);
    v10 = project #1 <A, B>(lhs:rhs:) in static ScrollPosition.== infix(_:_:)(v8, v9);
  }

  else
  {
    outlined destroy of ScrollPosition(v26);
    v10 = 0;
  }

  outlined destroy of ScrollPosition(v29);
  outlined destroy of Binding<ScrollPosition>(&v32, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
LABEL_18:
  type metadata accessor for ScrollStateRequest?(0);
  OutputValue = AGGraphGetOutputValue();
  if (!((OutputValue == 0) | updated & 1) && !v10)
  {
    v14 = AGGraphGetValue();
    outlined init with copy of Binding<ScrollPosition>(v14, &v32, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
    _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
    v15 = AGGraphGetValue();
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(AGGraphGetValue() + 8);
    v44[3] = &type metadata for ScrollToScrollStateRequest;
    v44[4] = &protocol witness table for ScrollToScrollStateRequest;
    v20 = swift_allocObject();
    v44[0] = v20;
    outlined init with copy of ScrollPosition(v45, v20 + 152);
    v21 = *v37;
    *(v20 + 80) = v36;
    *(v20 + 96) = v21;
    v22 = *&v37[16];
    v23 = v33;
    *(v20 + 16) = v32;
    *(v20 + 32) = v23;
    v24 = v35;
    *(v20 + 48) = v34;
    *(v20 + 64) = v24;
    *(v20 + 112) = v22;
    *(v20 + 120) = v16;
    *(v20 + 128) = v17;
    *(v20 + 136) = v18;
    *(v20 + 144) = v19;
    *(v20 + 240) = v2;
    *(v20 + 248) = 0;

    AGGraphSetOutputValue();
    v25 = v44;
LABEL_23:
    _s7SwiftUI18ScrollStateRequest_pSgWOhTm_0(v25, type metadata accessor for ScrollStateRequest?);
    goto LABEL_24;
  }

  if ((OutputValue == 0 || v10) | updated & 1)
  {
    *&v34 = 0;
    v32 = 0u;
    v33 = 0u;
    AGGraphSetOutputValue();
    v25 = &v32;
    goto LABEL_23;
  }

LABEL_24:
  $defer #1 () in ScrollPositionBindingModifier.MakeRequest.updateValue()(v1);

  outlined destroy of ScrollPosition(v45);
}

uint64_t sub_18D2F6DD4()
{

  if (*(v0 + 89))
  {
    if (*(v0 + 209))
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
    if (*(v0 + 209))
    {
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
LABEL_3:

  return swift_deallocObject();
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, a3, &type metadata for ScrollPosition, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, unint64_t a8, void *a9, int a10)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v107 - v20;
  v123 = a1;
  *&v122[0] = a5;
  *(&v122[0] + 1) = a6;

  v22 = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (v22)
  {
    (*(v23 + 8))(&v123, v22, v23);
  }

  v113 = a3;
  v112 = a9;
  if (one-time initialization token for coreAXLabel != -1)
  {
    swift_once();
  }

  v24 = v123;
  v25 = v123[2];
  v111 = v21;
  if (v25)
  {
    v26 = static NSAttributedStringKey.coreAXLabel;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.coreAXLabel);
    if (v28)
    {
      outlined init with copy of Any(v24[7] + 32 * v27, v122);
      if (swift_dynamicCast())
      {
        v29 = v120;
        v21 = v121;
        *a7 = 1;
        specialized Dictionary._Variant.removeValue(forKey:)(v26, v122);
        outlined destroy of Any?(v122);
        v30 = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD75310);
        v31 = v30;
        v24 = v123;
        if (v123[2])
        {
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((v33 & 1) == 0)
          {

            v94 = *(a8 + 8);
            if (!v94)
            {
              goto LABEL_84;
            }

            goto LABEL_78;
          }

          outlined init with copy of Any(v24[7] + 32 * v32, v122);

          type metadata accessor for NSTextAttachment();
          if (swift_dynamicCast())
          {
            v34 = v120;
            v35 = *(a8 + 8);
            if (v35)
            {
              v36 = *a8;
              v37 = (*(a8 + 16) + *(a8 + 24));

              if (v37 == a2)
              {
                if (v36 == v29 && v35 == v21)
                {

LABEL_94:
                  v109 = 1;
                  goto LABEL_88;
                }

                v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v106)
                {

                  goto LABEL_94;
                }
              }

              else
              {
LABEL_90:
              }
            }

            v103 = MEMORY[0x193ABEC20](v29, v21);
            [v34 setAccessibilityLabel_];

            v104 = MEMORY[0x193ABEC20](v29, v21);
            v105 = [v104 length];

            *a8 = v29;
            *(a8 + 8) = v21;
            *(a8 + 16) = a2;
            *(a8 + 24) = v105;
            goto LABEL_85;
          }
        }

        else
        {
        }

        v94 = *(a8 + 8);
        if (!v94)
        {
          goto LABEL_84;
        }

LABEL_78:
        v97 = *a8;
        v98 = (*(a8 + 16) + *(a8 + 24));

        if (v98 == a2)
        {
          if (v97 == v29 && v94 == v21)
          {

LABEL_87:

            [v112 deleteCharactersInRange_];
            v109 = 0;
            v113 = 0;
            goto LABEL_88;
          }

          v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v102)
          {
            goto LABEL_87;
          }
        }

        else
        {
        }

LABEL_84:
        v99 = MEMORY[0x193ABEC20](v29, v21);
        [v112 replaceCharactersInRange:a2 withString:{v113, v99}];

        v100 = MEMORY[0x193ABEC20](v29, v21);
        v101 = [v100 length];

        *a8 = v29;
        *(a8 + 8) = v21;
        *(a8 + 16) = a2;
        *(a8 + 24) = v101;
        v113 = v101;
LABEL_85:

        v109 = 0;
LABEL_88:
        v21 = v111;
        goto LABEL_17;
      }
    }
  }

  v109 = 0;
LABEL_17:
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v34 = static NSAttributedStringKey.resolvableTextSegment;
  v38 = v24[2];
  v110 = a2;
  v107[2] = static NSAttributedStringKey.resolvableTextSegment;
  if (v38 && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.resolvableTextSegment), (v40 & 1) != 0))
  {
    outlined init with copy of Any(v24[7] + 32 * v39, v122);
    v34 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
    v41 = swift_dynamicCast();
    (*(*(v34 - 8) + 56))(v21, v41 ^ 1u, 1, v34);
  }

  else
  {
    v42 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
    (*(*(v42 - 8) + 56))(v21, 1, 1, v42);
  }

  v115 = a10;
  a2 = v24 + 8;
  v43 = 1 << *(v24 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  a8 = v44 & v24[8];
  v45 = (v43 + 63) >> 6;
  v114 = *MEMORY[0x1E69DB670];

  v29 = 0;
  v46 = v24;
  while (a8)
  {
LABEL_33:
    v48 = __clz(__rbit64(a8));
    a8 &= a8 - 1;
    v49 = v48 | (v29 << 6);
    v50 = *(v24[6] + 8 * v49);
    outlined init with copy of Any(v24[7] + 32 * v49, v122 + 8);
    v120 = v50;
    outlined init with take of Any((v122 + 8), &v121);
    outlined init with copy of (key: NSAttributedStringKey, value: Any)(&v120, &v118, type metadata accessor for (key: NSAttributedStringKey, value: Any));
    v51 = v118;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v52;
    v34 = v50;
    v53._countAndFlagsBits = 0x7373656363414955;
    v53._object = 0xEF7974696C696269;
    v54 = String.hasPrefix(_:)(v53);

    __swift_destroy_boxed_opaque_existential_1(v119);
    if (!v54)
    {
      if ((v115 & 0x10) == 0)
      {
        goto LABEL_40;
      }

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
      if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
      {

        goto LABEL_27;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
LABEL_40:
        if ((v115 & 1) == 0)
        {
          goto LABEL_43;
        }

        v59 = v108;
        outlined init with copy of Date?(v111, v108, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        v60 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
        if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
        {
          outlined destroy of ResolvableTextSegmentAttribute.Value?(v59);
LABEL_43:
          outlined init with copy of (key: NSAttributedStringKey, value: Any)(&v120, &v118, type metadata accessor for (key: NSAttributedStringKey, value: Any));
          v34 = v118;
          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v118);
          if (v62)
          {
            v63 = v61;
            v46 = v123;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v116 = v46;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v46 = v116;
            }

            outlined init with take of Any((v46[7] + 32 * v63), v117);
            specialized _NativeDictionary._delete(at:)();

            v123 = v46;
          }

          else
          {

            memset(v117, 0, sizeof(v117));
          }

          outlined destroy of Any?(v117);
          __swift_destroy_boxed_opaque_existential_1(v119);
          goto LABEL_27;
        }

        v107[1] = v60;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v65;
        v21 = v68;
        if (v70 == v69 && v67 == v68)
        {
          goto LABEL_51;
        }

        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v71)
        {
          goto LABEL_53;
        }

        if (one-time initialization token for updateSchedule != -1)
        {
          swift_once();
        }

        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v76;
        if (v72 == v75 && v74 == v76)
        {
          v59 = v108;
LABEL_51:

LABEL_53:
          outlined destroy of Text.ResolvedString(v59, type metadata accessor for ResolvableTextSegmentAttribute.Value);
          goto LABEL_27;
        }

        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v59 = v108;
        if (v77)
        {
          goto LABEL_53;
        }

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v81;
        if (v34 == v80 && v79 == v81)
        {
          goto LABEL_51;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of Text.ResolvedString(v59, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        if ((v34 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_27:
    outlined destroy of Text.ResolvedString(&v120, type metadata accessor for (key: NSAttributedStringKey, value: Any));
  }

  while (1)
  {
    v47 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v47 >= v45)
    {
      break;
    }

    a8 = a2[v47];
    ++v29;
    if (a8)
    {
      v29 = v47;
      goto LABEL_33;
    }
  }

  v82 = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD75310);
  v83 = v82;
  if (!v46[2] || (v84 = specialized __RawDictionaryStorage.find<A>(_:)(v82), (v85 & 1) == 0))
  {

    v87 = v110;
    v88 = v111;
    v93 = v113;
    goto LABEL_76;
  }

  outlined init with copy of Any(v46[7] + 32 * v84, v122);

  type metadata accessor for NSTextAttachment();
  v86 = swift_dynamicCast();
  v87 = v110;
  v88 = v111;
  if ((v86 & 1) == 0)
  {
LABEL_75:
    v93 = v113;
    goto LABEL_76;
  }

  v89 = v120;
  v90 = [v120 accessibilityLabel];
  if (!v90)
  {

    goto LABEL_75;
  }

  v91 = v90;
  v92 = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD75310);
  specialized Dictionary._Variant.removeValue(forKey:)(v92, v122);

  outlined destroy of Any?(v122);
  if (v109)
  {

    [v112 deleteCharactersInRange_];
    v93 = 0;
  }

  else
  {
    [v112 replaceCharactersInRange:v87 withString:{v113, v91}];
    v93 = [v91 length];
  }

LABEL_76:
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v112 setAttributes:isa range:{v87, v93}];

  outlined destroy of ResolvableTextSegmentAttribute.Value?(v88);

  return result;
}

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, a2, &type metadata for ScrollPosition, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t EnvironmentValues.accessibilityTextAttributeResolver.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  return v4;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t one-time initialization function for coreAXLabel()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD75610);
  static NSAttributedStringKey.coreAXLabel = result;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = updated;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t outlined destroy of ScrollStateRequest?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI18ScrollStateRequest_pSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (ScrollPosition?, ScrollPosition?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ScrollPosition?, ScrollPosition?))
  {
    _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(255, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ScrollPosition?, ScrollPosition?));
    }
  }
}

uint64_t $defer #1 () in ScrollPositionBindingModifier.MakeRequest.updateValue()(uint64_t a1)
{
  outlined init with copy of ScrollPositionBindingModifier.MakeRequest(a1, v7);
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<ScrollPosition>(Value, v4, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  outlined destroy of ScrollPositionBindingModifier.MakeRequest(v7);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(*v5 + 104))(1);
    outlined init with copy of ScrollPosition(&v6, v8);
  }

  else
  {
    (*(*v5 + 120))(v8);
  }

  outlined destroy of Binding<ScrollPosition>(v4, &lazy cache variable for type metadata for Binding<ScrollPosition>, type metadata accessor for Binding);
  return outlined assign with take of Binding<ScrollPosition>(v8, a1 + 16, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E69E6720]);
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value?(uint64_t a1)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Binding<ScrollPosition>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, a3, &type metadata for ScrollPosition, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ScrollStateRequest?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ScrollStateEnqueueRequests.adjustedUpdateRequests()()
{
  v1 = *AGGraphGetValue();
  v2 = *MEMORY[0x1E698D3F8];
  if (*(v0 + 16) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!v4[2] && *(v0 + 24) != v2)
  {
    type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    Value = AGGraphGetValue();
    outlined init with copy of Binding<ScrollPosition>(Value, v21);
    if (*(v0 + 52) == v1)
    {
      outlined destroy of UpdateScrollStateRequest?(v21, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    }

    else
    {
      outlined init with copy of Binding<ScrollPosition>(v21, &v12);
      outlined init with copy of Binding<ScrollPosition>(&v12, v15);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
      {
        (*(*v13 + 104))(1);
        outlined init with copy of ScrollPosition(&v14, &v16);
      }

      else
      {
        (*(*v13 + 120))(&v16);
      }

      outlined destroy of UpdateScrollStateRequest?(&v12, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
      outlined destroy of ScrollPosition.Storage(&v16);
      v16 = 1;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 1280;
      outlined init with copy of PositionedByUserScrollStateRequest(v15, &v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      }

      outlined destroy of UpdateScrollStateRequest?(v21, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
      v10 = &type metadata for PositionedByUserScrollStateRequest;
      v11 = &protocol witness table for PositionedByUserScrollStateRequest;
      *&v9 = swift_allocObject();
      outlined init with copy of PositionedByUserScrollStateRequest(&v12, v9 + 16);
      v4[2] = v7 + 1;
      outlined init with take of AnyTrackedValue(&v9, &v4[5 * v7 + 4]);
      outlined destroy of PositionedByUserScrollStateRequest(&v12);
      outlined destroy of PositionedByUserScrollStateRequest(v15);
    }
  }

  *(v0 + 52) = v1;
  return v4;
}

Swift::Void __swiftcall ScrollStateRequestTransform.updateValue()()
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(v0 + 112) != *AGGraphGetValue() >> 1)
  {
    outlined destroy of ScrollStateRequest?(v0 + 72, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    *(v0 + 112) = *AGGraphGetValue() >> 1;
  }

  v1 = *(v0 + 24);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v30);
  if (v2 && *(v2 + 76) != 255)
  {
    type metadata accessor for CGPoint(0);
    v22 = *AGGraphGetValue();
    Value = AGGraphGetValue();
    v4 = *Value;
    v5 = *(Value + 8);
    v6 = vsubq_f64(*(Value + 32), vsubq_f64(v22, *(Value + 16)));
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 1;
    v24 = v4;
    v25 = v5;
    v26 = v22;
    v27 = v6;

    specialized ViewTransform.forEach(inverted:_:)(0, &v24, &v30, v7);
    if (v35)
    {
      goto LABEL_22;
    }

    v8 = v32;
    v9 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v1);
    v10 = *MEMORY[0x1E698D3F8];
    v11 = 0.0;
    if (v9 == *MEMORY[0x1E698D3F8])
    {
      v12 = 0.0;
    }

    else
    {
      type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
      v13 = AGGraphGetValue();
      v12 = 0.0;
      if ((*(v13 + 16) & 1) == 0)
      {
        v12 = *v13;
        v11 = *(v13 + 8);
      }
    }

    if (*AGGraphGetValue())
    {
      v12 = 1.0 - v12;
    }

    BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
    v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v30);
    if (!v14 || (v15 = *(v14 + 72), v10 == v15) || (v16 = v15 | (*(v14 + 76) << 32), HIDWORD(v16) > 0xFE) || (v16 & 0x100000000) != 0)
    {
LABEL_22:
      v30 = _ViewInputs.base.modify;
      type metadata accessor for (_:)();
      AGGraphSetOutputValue();
    }

    else
    {
      type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
      v17 = AGGraphGetValue();
      outlined init with copy of Binding<ScrollPosition>(v17, &v30);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
      {
        (*(**(&v30 + 1) + 104))(1);
        outlined init with copy of ScrollPosition(v31, &v24);
      }

      else
      {
        (*(**(&v30 + 1) + 120))(&v24);
      }

      v19 = v28;
      v18 = v29;
      outlined destroy of ScrollPosition(&v24);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
      v20 = AGGraphGetValue();
      outlined init with copy of AnyTrackedValue(v20, v23);
      v21 = ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(v19, &v30, v23, v19, v18, v12, v11, *&v8, *(&v8 + 1));
      __swift_destroy_boxed_opaque_existential_1(v23);
      if (!v21)
      {
        v24 = _ViewInputs.base.modify;
        v25 = 0;
        type metadata accessor for (_:)();
        AGGraphSetOutputValue();
      }

      outlined destroy of UpdateScrollStateRequest?(&v30, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    }
  }

  else
  {
    *&v30 = _ViewInputs.base.modify;
    *(&v30 + 1) = 0;
    type metadata accessor for (_:)();
    AGGraphSetOutputValue();
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionAnchorKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027ContentScrollPositionAnchorV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.ContentScrollPositionAnchorKey.defaultValue;
  }

  return *v3;
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v33 = a2;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  v44 = INFINITY;
  (*(v16 + 56))(&v32 - v24, 1, 1, a4, v23);
  v27 = a3[3];
  v26 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  v36 = a4;
  v37 = a5;
  v34 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = &v44;
  v43 = v25;
  (*(v26 + 24))(partial apply for closure #1 in ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:), v35, v27, v26);
  (*(v19 + 16))(v21, v25, v18);
  if ((*(v16 + 48))(v21, 1, a4) == 1)
  {
    v28 = *(v19 + 8);
    v28(v21, v18);
    v29 = 0;
  }

  else
  {
    v30 = v32;
    (*(v16 + 32))(v32, v21, a4);
    v29 = ScrollStateRequestTransform.updateRequest<A>(id:position:targetDistance:)(v30, v33, a4, v34, v44);
    (*(v16 + 8))(v30, a4);
    v28 = *(v19 + 8);
  }

  v28(v25, v18);
  return v29;
}

void LazyScrollable.forEachVisibleSubview(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    if (AGSubgraphIsValid())
    {

      LazyScrollable.transform.getter(v28);
      if (v28[0] == 1)
      {
      }

      else
      {
        v8 = *&v28[4];
        v7 = *&v28[5];
        v10 = *&v28[2];
        v9 = *&v28[3];
        v29[0] = v28[0];
        v29[1] = v28[1];
        *&v11 = COERCE_DOUBLE(LazyScrollable.position.getter());
        if (v13)
        {
        }

        else
        {
          v14 = *&v11;
          v15 = v12;
          v16 = v11;
          v17 = v12;
          v18 = *AGGraphGetValue();
          type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
          v19 = *AGGraphGetValue();

          *&v29[4] = v8 - (v14 - v10);
          *&v29[5] = v7 - (v15 - v9);
          v29[2] = v16;
          *&v29[3] = v17;
          MEMORY[0x1EEE9AC00](v20);
          v21[1] = *(a3 + 16);
          v22 = v19;
          v23 = v3;
          v24 = v18;
          v25 = v29;
          v26 = a1;
          v27 = a2;
          _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in LazyScrollable.forEachVisibleSubview(_:), v21, MEMORY[0x1E69E7CA8]);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t LazyScrollable.position.getter()
{
  type metadata accessor for CGPoint(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    return *WeakValue;
  }

  else
  {
    return 0;
  }
}

void LazyScrollable.transform.getter(uint64_t a1@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue;
    v7 = *(WeakValue + 8);
    v8 = *(WeakValue + 24);
    v4 = *(WeakValue + 40);

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
    v3 = 1;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
}

uint64_t _LazyLayoutViewCache.withPlacementData<A>(_:)@<X0>(void (*a1)(char *, __int128 *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v91 = a2;
  v92 = a1;
  v90 = a3;
  v5 = *v3;
  v6 = *(*v3 + 440);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v65 - v8;
  AGGraphClearUpdate();
  _LazyLayoutViewCache.layout.getter(v9);
  AGGraphSetUpdate();
  v89 = v3[37];
  swift_beginAccess();
  v10 = *(v3 + 6);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v87 = v4[28];
  v88 = v11;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  *&v13 = *Value;
  v94 = v13;
  *&v13 = Value[1];
  v93 = v13;
  v14 = AGGraphGetValue();
  *&v15 = *v14;
  v96 = v15;
  *&v15 = v14[1];
  v95 = v15;
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);

  v23 = *AGGraphGetValue();
  (*(*(v5 + 448) + 120))(&v134, v6);
  v86 = v134;
  v24 = *AGGraphGetValue();
  v135 = 1;
  v25 = v21 - (*&v94 - v19);
  v26 = v22 - (*&v93 - v20);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  LOBYTE(v104) = 1;
  v128 = v17;
  v129 = v18;
  v130 = v94;
  v131 = v93;
  v132 = v25;
  v133 = v26;
  specialized ViewTransform.forEach(inverted:_:)(0, &v128, &v97, 0.0);
  v80 = *(&v98 + 1);
  v81 = *(&v99 + 1);
  v82 = *&v98;
  v84 = *&v99;
  v83 = *(&v100 + 1);
  v85 = v100;
  v27 = LOBYTE(v104);
  v28 = 0.0;
  if (LOBYTE(v104))
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *(&v102 + 1);
  }

  if (LOBYTE(v104))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *&v102;
  }

  v32 = *(&v101 + 1);
  v31 = *&v101;
  if (LOBYTE(v104))
  {
    v31 = *&v96;
    v32 = *&v95;
    v33 = 0.0;
  }

  else
  {
    v33 = *&v97;
  }

  if (LOBYTE(v104))
  {
    v34 = 0.0;
  }

  else
  {
    v34 = *(&v97 + 1);
  }

  v76 = v31;
  v74 = *(&v103 + 1);
  v77 = *&v103;
  v75 = v32;
  v73 = v34;
  if (v23 == 1)
  {
    v35 = v33;
    v36 = v34;
    v37 = *&v96 - CGRectGetMaxX(*(&v31 - 2));
    v78 = v30 + v37 - v33;
    v79 = v29 + v34 - v34;
    v33 = v37;
  }

  else
  {
    v78 = v30;
    v79 = v29;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  LOBYTE(v104) = 1;
  v128 = v17;
  v129 = v18;
  v130 = v94;
  v131 = v93;
  v132 = v25;
  v133 = v26;
  specialized ViewTransform.forEach(inverted:_:)(0, &v128, &v97, *&v93);
  v71 = *(&v98 + 1);
  v72 = *&v98;
  v70 = *&v99;
  v67 = *&v100;
  v68 = *(&v99 + 1);
  v66 = *(&v100 + 1);
  v38 = LOBYTE(v104);
  if (LOBYTE(v104))
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *(&v102 + 1);
  }

  if (LOBYTE(v104))
  {
    v40 = 0.0;
  }

  else
  {
    v40 = *&v102;
  }

  if (LOBYTE(v104))
  {
    v41 = *&v96;
  }

  else
  {
    v41 = *&v101;
  }

  if (LOBYTE(v104))
  {
    v42 = *&v95;
  }

  else
  {
    v42 = *(&v101 + 1);
  }

  if (LOBYTE(v104))
  {
    v43 = 0.0;
  }

  else
  {
    v43 = *&v97;
  }

  if ((LOBYTE(v104) & 1) == 0)
  {
    v28 = *(&v97 + 1);
  }

  v44 = v103;
  v69 = v41;
  if (v23)
  {
    v136.origin.x = v43;
    v136.origin.y = v28;
    v136.size.width = v41;
    v136.size.height = v42;
    v45 = *&v96 - CGRectGetMaxX(v136);
    v40 = v40 + v45 - v43;
    v39 = v39 + v28 - v28;
    v43 = v45;
  }

  *&v46 = v94;
  *(&v46 + 1) = v93;
  *&v47 = v96;
  *(&v47 + 1) = v95;
  v98 = v46;
  v99 = v47;
  if (v38)
  {
    v48 = *&v95;
  }

  else
  {
    v48 = *(&v44 + 1);
  }

  if (v38)
  {
    v49 = *&v96;
  }

  else
  {
    v49 = *&v44;
  }

  v50 = v72;
  *(&v100 + 1) = v33;
  *&v101 = v73;
  v51 = 0;
  v52 = v66;
  v53 = v67;
  if (v38)
  {
    v52 = 0.0;
    v53 = 0.0;
  }

  v54 = v68;
  if (v38)
  {
    v54 = 0.0;
  }

  v55 = v70;
  v56 = v71;
  if (v38)
  {
    v55 = 0.0;
    v56 = *&v95;
    v50 = *&v96;
  }

  v57 = v80;
  if (v27)
  {
    v57 = *&v95;
  }

  v58 = v82;
  if (v27)
  {
    v58 = *&v96;
  }

  *(&v101 + 1) = v58;
  *&v102 = v57;
  v59 = v81;
  if (v27)
  {
    v59 = 0.0;
  }

  v60 = v84;
  if (v27)
  {
    v60 = 0.0;
  }

  *(&v102 + 1) = v60;
  *&v103 = v59;
  v61 = v83;
  if (v27)
  {
    v61 = 0.0;
  }

  else
  {
    v51 = v85;
  }

  *(&v103 + 1) = v51;
  v104 = v61;
  v62 = v77;
  v105 = v76;
  v106 = v75;
  v107 = v78;
  v108 = v79;
  v63 = v74;
  if (v27)
  {
    v63 = *&v95;
    v62 = *&v96;
  }

  v109 = v62;
  v110 = v63;
  v111 = v43;
  v112 = v28;
  v113 = v50;
  v114 = v56;
  v115 = v55;
  v116 = v54;
  v117 = v53;
  v118 = v52;
  v119 = v69;
  v120 = v42;
  v121 = v40;
  v122 = v39;
  v123 = v49;
  v124 = v48;
  v125 = v96;
  v126 = v95;
  LODWORD(v97) = v89;
  *(&v97 + 4) = __PAIR64__(v88, v89);
  HIDWORD(v97) = v87;
  LODWORD(v100) = v86;
  v127 = v24;
  v92(v9, &v97);
  return (*(v7 + 8))(v9, v6);
}

uint64_t _LazyLayoutViewCache.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 440);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, Value, v3);
}

uint64_t specialized static HoverEffectContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = a2[6];
  if (v5)
  {
    if (v5 == 1)
    {
      if (v10 != 1 || v4 != v9)
      {
        return 0;
      }
    }

    else if (v10 != 2 || v9 != 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8) || v4 != v9)
  {
    return 0;
  }

  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  if (v8)
  {
    if (!v11 || (v7 != a2[5] || v8 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  return 1;
}

uint64_t ObjcColor.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI9ObjcColor_color);
  if (v3 == *&v6[OBJC_IVAR____TtC7SwiftUI9ObjcColor_color])
  {

    v4 = 1;
  }

  else
  {
    v4 = (*(*v3 + 88))();
  }

  return v4 & 1;
}

void *closure #1 in LazyScrollable.forEachVisibleSubview(_:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(void, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = memcpy(__dst, a2, sizeof(__dst));
  v74 = 0;
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = (a3 + 32);
    v49 = *MEMORY[0x1E698D3F8];
    v47 = a5 & 1;
    v16 = v14 - 1;
    while (1)
    {
      v17 = v16;
      v18 = v15[1];
      v69 = *v15;
      v70 = v18;
      v19 = v15[3];
      v71 = v15[2];
      v72 = v19;
      *v73 = v15[4];
      v20 = v69;
      v21 = *(v69 + 152);
      v60[0] = *(v69 + 144);
      v60[1] = v21;
      if (*(v69 + 44) == v49)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v69, v58);
        v22 = one-time initialization token for defaultValue;

        Value = &static LayoutComputer.defaultValue;
        if (v22 != -1)
        {
          swift_once();
          Value = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v69, v58);

        Value = AGGraphGetValue();
      }

      v24 = *Value;
      v25 = *(&v69 + 1);
      v26 = v70;
      v27 = *(&v70 + 1);
      v28 = v71;
      v29 = *(&v71 + 1);
      v30 = v72;
      v31 = v73[0];
      v32 = one-time initialization token for lockAssertionsAreEnabled;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      *v58 = v25;
      v58[8] = v26;
      *&v58[16] = v27;
      v58[24] = v28;
      v34 = (*(*v24 + 120))(v58);
      v36 = v35;

      if (*(v20 + 44) == v49)
      {
        v37 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v37 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v37 = AGGraphGetValue();
      }

      v38 = *v37;
      if (v33)
      {
        v39 = one-time initialization token for _lock;

        if (v39 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      else
      {
      }

      v40 = *(&v30 + 1) - v29 * v34;
      *v58 = v25;
      v58[8] = v26;
      *&v58[16] = v27;
      v58[24] = v28;
      v41 = (*(*v38 + 120))(v58);
      v43 = v42;

      v59 = v47;
      memcpy(v58, __dst, sizeof(v58));
      v44 = *(a6 + 8);
      *&v50 = *a6;
      *(&v50 + 1) = v44;
      v45 = *(a6 + 32);
      v51 = *(a6 + 16);
      v52 = v45;
      type metadata accessor for LazyScrollable(0, a9, a10, v46);

      LazyScrollable.collectionSubview(id:frame:layoutDirection:context:transform:)(v60, &v59, v58, &v50, &v61, v40, v31 - *&v30 * v36, v41, v43);

      *&v58[64] = v65;
      *&v58[80] = v66;
      *&v58[96] = v67;
      *&v58[112] = v68;
      *v58 = v61;
      *&v58[16] = v62;
      *&v58[32] = v63;
      *&v58[48] = v64;
      v54 = v65;
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v50 = v61;
      v51 = v62;
      v52 = v63;
      v53 = v64;
      a7(&v50, &v74);
      outlined destroy of _LazyLayout_PlacedSubview(&v69);
      result = outlined destroy of ScrollableCollectionSubview(v58);
      if ((v74 & 1) == 0)
      {
        v16 = v17 - 1;
        v15 += 5;
        if (v17)
        {
          continue;
        }
      }

      return result;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of UpdateScrollStateRequest?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<ScrollPosition>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double specialized closure #1 in PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v52 = a5;
  v54 = a4;
  v56 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ObservationTracking._AccessList();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  type metadata accessor for ObservationTracking._AccessList?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v49 - v19;
  v21 = one-time initialization token for _current;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(v22[2]);
  if (!v23)
  {
    v24 = a2;
    v25 = v14;
    v26 = swift_slowAlloc();
    pthread_setspecific(v22[2], v26);
    v59 = type metadata accessor for ObservationCenter();
    *&v58 = v22[3];
    outlined init with take of Any(&v58, v26);

    v23 = v26;
    v14 = v25;
    a2 = v24;
  }

  outlined init with copy of Any(v23, &v58);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v27 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    *(v27 + 24) = v17;
    goto LABEL_9;
  }

  v50 = CurrentAttribute;
  v51 = v9;
  swift_beginAccess();
  v53 = *(v27 + 24);
  *(v27 + 24) = MEMORY[0x1E69E7CC0];
  (*(v7 + 56))(v20, 1, 1, v6);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v30 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  v31 = v54;
  v54 = a2;
  (v56)(v31);
  *(StatusReg + 848) = v30;
  outlined init with copy of ObservationTracking._AccessList?(v20, v17);
  v32 = (*(v7 + 48))(v17, 1, v6);
  v33 = v6;
  v56 = v27;
  if (v32 == 1)
  {
    v9 = v6;
    outlined destroy of ObservationTracking._AccessList?(v20);
    v20 = v17;
    v34 = v27;
    goto LABEL_12;
  }

  v6 = *(v7 + 32);
  (v6)(v14, v17, v33);
  v9 = v33;
  (*(v7 + 16))(v55, v14, v33);
  v17 = *(v27 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v37 = *(v17 + 2);
  v36 = *(v17 + 3);
  if (v37 >= v36 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v17);
  }

  *(v17 + 2) = v37 + 1;
  (v6)(&v17[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37], v55, v9);
  v34 = v56;
  *(v56 + 24) = v17;
  (*(v7 + 8))(v14, v9);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v20);
  v38 = *(v34 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v7 + 16);
    v40 = v7 + 16;
    v55 = v41;
    v42 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v44 = (v40 - 8);
    v49[1] = v38;

    v45 = v51;
    v46 = v52;
    v47 = v50;
    do
    {
      (v55)(v45, v42, v9);
      v46(v47, v45);
      v34 = v56;
      (*v44)(v45, v9);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  *(v34 + 24) = v53;

  return result;
}

uint64_t specialized UpdateCycleDetector.dispatch(label:isDebug:)(char a1, unsigned int *a2)
{
  AGGraphClearUpdate();
  v4 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (a2[1] != v4)
  {
    a2[1] = v4;
    a2[2] = 2;
    return 1;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = v5 - 1;
    a2[2] = v6;
    if (v6)
    {
      return 1;
    }
  }

  if (a2[3])
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    _StringGuts.grow(_:)(44);

    MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
    specialized static Log.externalWarning(_:)(0x6F546C6C6F726353, 0xE800000000000000);
  }

  result = 0;
  *(a2 + 12) = 1;
  return result;
}

{
  AGGraphClearUpdate();
  v4 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (a2[1] != v4)
  {
    a2[1] = v4;
    a2[2] = 2;
    return 1;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = v5 - 1;
    a2[2] = v6;
    if (v6)
    {
      return 1;
    }
  }

  if (a2[3])
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    _StringGuts.grow(_:)(44);

    MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
    specialized static Log.externalWarning(_:)(0xD000000000000017, 0x800000018DD78C20);
  }

  result = 0;
  *(a2 + 12) = 1;
  return result;
}

Swift::Void __swiftcall LazySubviewPrefetcher.updateValue()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - v6;
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  Value = AGGraphGetValue();
  v11 = *Value;
  if (v8 != *Value)
  {
    v12 = *(Value + 8);
    v13 = *(Value + 16);
    *(v2 + 32) = v11;
    *(v2 + 40) = v13;
    if (v13 != v9)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();

      LazyLayoutViewCache.resetPrefetchPhases()();
    }

    type metadata accessor for LazyLayoutViewCache();
    if ((*(*AGGraphGetValue() + 312) & v13) != 0)
    {
      v14 = *v2;
      if (one-time initialization token for lazyLayoutPrefetch != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v5, static Log.lazyLayoutPrefetch);
      outlined init with copy of Logger?(v15, v7);
      v16 = type metadata accessor for Logger();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v7, 1, v16) == 1)
      {
        outlined destroy of Logger?(v7);
      }

      else
      {
        v18 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v37))
        {
          v19 = swift_slowAlloc();
          v35 = v12;
          v20 = v19;
          v34 = swift_slowAlloc();
          v38 = v34;
          *v20 = 136446466;
          v32[3] = v14;
          v21 = _typeName(_:qualified:)();
          v36 = v3;
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);
          v33 = v18;
          v24 = v23;
          v3 = v36;

          *(v20 + 4) = v24;
          *(v20 + 12) = 2082;
          v25 = AGAttribute.description.getter();
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v38);

          *(v20 + 14) = v27;
          v28 = v33;
          _os_log_impl(&dword_18D018000, v33, v37, "%{public}s %{public}s start prefetch", v20, 0x16u);
          v29 = v34;
          swift_arrayDestroy();
          MEMORY[0x193AC4820](v29, -1, -1);
          v30 = v20;
          v12 = v35;
          MEMORY[0x193AC4820](v30, -1, -1);
        }

        else
        {
        }

        (*(v17 + 8))(v7, v16);
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v31 = AGGraphGetAttributeGraph();
        AGGraphGetDeadline();
        AGGraphSetDeadline();
        closure #1 in LazySubviewPrefetcher.updateValue()(v2, v11, v12, v13, *(v3 + 16), *(v3 + 24));
        AGGraphSetDeadline();
      }
    }
  }
}

uint64_t specialized static PrimitiveSpacer._makeView(view:inputs:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v20 = 0;
  v21 = v5;
  v6 = *a2;
  v7 = *(a2 + 9);
  if ((v7 & 2) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v10 = (*(a2 + 9) & 8) == 0;
    }

    else
    {
      v9 = a1;
      v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(*a2);
      a1 = v9;
      v10 = 2;
    }

    LODWORD(v22) = a1;
    BYTE4(v22) = v10;
    DWORD2(v22) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v8 = 128;
    v20 = 128;
    v21 = v5;
  }

  else
  {
    v8 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = a2[3];
    v24 = a2[2];
    v25 = v15;
    v26 = a2[4];
    v27 = *(a2 + 20);
    v16 = a2[1];
    v22 = *a2;
    v23 = v16;
    result = (*(v12 + 8))(&v22, result, v12);
    if (result)
    {
      v17 = a2[3];
      v24 = a2[2];
      v25 = v17;
      v26 = a2[4];
      v27 = *(a2 + 20);
      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      result = (*(v14 + 16))(&v22, &v19, v13, v14);
      v8 = v20;
      v5 = v21;
    }
  }

  *a3 = v19;
  *(a3 + 8) = v8;
  *(a3 + 12) = v5;
  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v20 = 0;
  v21 = v5;
  v6 = *a2;
  v7 = *(a2 + 9);
  if ((v7 & 2) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v10 = (*(a2 + 9) & 8) == 0;
    }

    else
    {
      v9 = a1;
      v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(*a2);
      a1 = v9;
      v10 = 2;
    }

    LODWORD(v22) = a1;
    BYTE4(v22) = v10;
    DWORD2(v22) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<_TextBaselineRelativeSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v8 = 128;
    v20 = 128;
    v21 = v5;
  }

  else
  {
    v8 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = a2[3];
    v24 = a2[2];
    v25 = v15;
    v26 = a2[4];
    v27 = *(a2 + 20);
    v16 = a2[1];
    v22 = *a2;
    v23 = v16;
    result = (*(v12 + 8))(&v22, result, v12);
    if (result)
    {
      v17 = a2[3];
      v24 = a2[2];
      v25 = v17;
      v26 = a2[4];
      v27 = *(a2 + 20);
      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      result = (*(v14 + 16))(&v22, &v19, v13, v14);
      v8 = v20;
      v5 = v21;
    }
  }

  *a3 = v19;
  *(a3 + 8) = v8;
  *(a3 + 12) = v5;
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v17 = 0;
  v18 = v5;
  v6 = *a2;
  if ((*(a2 + 36) & 2) != 0)
  {
    LODWORD(v19) = a1;
    BYTE4(v19) = 0;
    DWORD2(v19) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>, &type metadata for _HSpacer, &protocol witness table for _HSpacer);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<_HSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>, &type metadata for _HSpacer, &protocol witness table for _HSpacer);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v7 = 128;
    v17 = 128;
    v18 = v5;
  }

  else
  {
    v7 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v10 = result;
    v11 = v9;
    v12 = a2[3];
    v21 = a2[2];
    v22 = v12;
    v23 = a2[4];
    v24 = *(a2 + 20);
    v13 = a2[1];
    v19 = *a2;
    v20 = v13;
    result = (*(v9 + 8))(&v19, result, v9);
    if (result)
    {
      v14 = a2[3];
      v21 = a2[2];
      v22 = v14;
      v23 = a2[4];
      v24 = *(a2 + 20);
      v15 = a2[1];
      v19 = *a2;
      v20 = v15;
      result = (*(v11 + 16))(&v19, &v16, v10, v11);
      v7 = v17;
      v5 = v18;
    }
  }

  *a3 = v16;
  *(a3 + 8) = v7;
  *(a3 + 12) = v5;
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v17 = 0;
  v18 = v5;
  v6 = *a2;
  if ((*(a2 + 36) & 2) != 0)
  {
    LODWORD(v19) = a1;
    BYTE4(v19) = 1;
    DWORD2(v19) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>, &type metadata for _VSpacer, &protocol witness table for _VSpacer);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<_VSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>, &type metadata for _VSpacer, &protocol witness table for _VSpacer);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v7 = 128;
    v17 = 128;
    v18 = v5;
  }

  else
  {
    v7 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v10 = result;
    v11 = v9;
    v12 = a2[3];
    v21 = a2[2];
    v22 = v12;
    v23 = a2[4];
    v24 = *(a2 + 20);
    v13 = a2[1];
    v19 = *a2;
    v20 = v13;
    result = (*(v9 + 8))(&v19, result, v9);
    if (result)
    {
      v14 = a2[3];
      v21 = a2[2];
      v22 = v14;
      v23 = a2[4];
      v24 = *(a2 + 20);
      v15 = a2[1];
      v19 = *a2;
      v20 = v15;
      result = (*(v11 + 16))(&v19, &v16, v10, v11);
      v7 = v17;
      v5 = v18;
    }
  }

  *a3 = v16;
  *(a3 + 8) = v7;
  *(a3 + 12) = v5;
  return result;
}

void closure #1 in removeValue #1 <A>(key:) in PreferenceBridge.removeValue(_:for:isInvalidating:)(uint64_t *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for WeakAttribute();
  v6 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v6);
  Collection.firstIndex(where:)();

  if ((v7 & 1) == 0)
  {
    Array.remove(at:)();
    *a3 = 1;
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ConditionalSpacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, _BYTE *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
  }

  else
  {
    v11 = 0;
  }

  *a6 = v11;
  return result;
}

void key path getter for EnvironmentValues.headerProminence : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016HeaderProminenceI0VG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityScrollableContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 70);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    LOBYTE(v3) = 2;
  }

  else if (v3 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1);
    LOBYTE(v3) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
  }

  *(a1 + 70) = v3;

  return a1;
}

Swift::Void __swiftcall GraphHost.uninstantiate(immediately:)(Swift::Bool immediately)
{
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    swift_beginAccess();
    v3 = one-time initialization token for enabledCategories;
    v4 = *(v1 + 32);
    if (v3 != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17475;
        type metadata accessor for AGSubgraphRef(0);
        AGGraphAddTraceEvent();
      }
    }

    closure #1 in GraphHost.uninstantiate(immediately:)(v1, immediately);
    $defer #1 <A>() in static CustomEventTrace.uninstantiate<A>(root:closure:)(v4);
  }
}

void closure #1 in GraphHost.uninstantiate(immediately:)(uint64_t a1, char a2)
{
  *&v32[57] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 88);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 256;
  *(v8 + 88) = v7;
  *(a1 + 88) = v8;
  swift_endAccess();

  (*(*a1 + 216))(v9);
  v10 = *(a1 + 32);
  AGSubgraphApply();

  if ((*(a1 + 40) & 1) == 0)
  {
    AGSubgraphRemoveChild();
  }

  v11 = *(a1 + 32);
  AGSubgraphRef.willInvalidate(isInserted:)(0);

  v12 = *(a1 + 32);
  if (a2)
  {
    AGSubgraphInvalidate();
  }

  else
  {
    v32[1] = 17;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = v12;
    static Update.enqueueAction(reason:_:)(&v32[1], partial apply for closure #1 in closure #1 in GraphHost.uninstantiate(immediately:), v13);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v15 = AGSubgraphCreate();
  v16 = *(a1 + 32);
  *(a1 + 32) = v15;

  v17 = *(a1 + 16);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(*a1 + 240);
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v20(v32);
  v24 = v32[0];
  v25 = one-time initialization token for enabledCategories;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1)
  {
    v29 = static CustomEventTrace.recorder;
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 16707;
      v30 = *(v29 + 16);
      v32[1] = v24;
      *&v32[9] = v17;
      *&v32[17] = v27;
      *&v32[25] = v28;
      type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)(0);

      v31 = v30;
      AGGraphAddTraceEvent();
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    AGSubgraphAddChild();
  }

  swift_beginAccess();
  *(a1 + 128) = 0;
}

Swift::Void __swiftcall ViewGraph.uninstantiateOutputs()()
{
  v1 = v0;
  ViewGraph.removePreferenceOutlets(isInvalidating:)(0);
  swift_beginAccess();
  v2 = *(v0 + 228);
  if (!v2)
  {
LABEL_8:
    AGGraphMutateAttribute();
    *(v1 + 332) = 0;
    *(v1 + 324) = 0;
    *(v1 + 340) = 0;
    swift_beginAccess();
    *(v1 + 132) = 0;
    *(v1 + 136) = 0;
    return;
  }

  v3 = *(v0 + 216);
  if (v3)
  {
    v4 = 0;
    v5 = v2 - 1;
    do
    {
      v8 = (v3 + v4);
      if (v5)
      {
        v4 += *(v8 + 2);
      }

      else
      {
        v4 = 0;
      }

      v6 = v5 | v4;
      v7 = *v8;
      v9[0] = v8;
      (*(v7 + 128))(v9, v1);
      --v5;
    }

    while (v6);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static ViewGraphFeatureBuffer._VTable.uninstantiate(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 24))(a2, v4);
}

uint64_t $defer #1 <A>() in static CustomEventTrace.uninstantiate<A>(root:closure:)(uint64_t a1)
{

  return static CustomEventTrace.instantiateBegin(_:)(a1, 69);
}

void specialized SpacerLayoutComputer.updateValue()()
{
  v1 = *(v0 + 4);
  if (v1 == 2)
  {
    if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
    {
      LOWORD(v1) = 2;
    }

    else
    {
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
      LOWORD(v1) = *AGGraphGetValue();
    }
  }

  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16) | (v1 << 8);
  v5 = *Value;

  specialized StatefulRule<>.update<A>(to:)(v5, v3, v4);
}

void specialized StatefulRule<>.update<A>(to:)(char a1, uint64_t a2, __int16 a3)
{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v12[0]) = a1;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v12[4] = &v13;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v7 = *OutputValue;
    v8 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v9 = one-time initialization token for lockAssertionsAreEnabled;

    if (v9 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>.Engine, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v11 = MEMORY[0x1EEE9AC00](v10);
      (*(*v7 + 80))(v11);
      v12[0] = v7;
      v12[1] = v8 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA011ConditionalF0V_G_Tt1B5(a1 & 1, a2, a3 & 0xFF01, v12);
    AGGraphSetOutputValue();
  }
}

uint64_t _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA011ConditionalF0V_G_Tt1B5@<X0>(char a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>(0);
    v8 = swift_allocObject();
    result = AGGraphGetCurrentAttribute();
    v10 = result == *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = result;
    }

    *(v8 + 36) = v11;
    *(v8 + 40) = v10;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>(0);
    result = swift_allocObject();
    v8 = result;
  }

  *(v8 + 16) = a1 & 1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *(v8 + 33) = HIBYTE(a3);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

uint64_t assignWithCopy for PlatformDrawableContent.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>.Engine, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for SpacerLayoutComputer<A>.Engine, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<ConditionalSpacer>.Engine>);
    }
  }
}

uint64_t static CoreInteractionRepresentableFeatureBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t *_CoreInteractionHelperBox.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 152);
  type metadata accessor for CoreInteractionRepresentableEffect(255, *(*v4 + 120), *(*v4 + 136), a4);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  swift_unknownObjectRelease();
  v7 = *(*v4 + 184);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(*v4 + 192);
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  return v4;
}

uint64_t _CoreInteractionHelperBox.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _CoreInteractionHelperBox.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

double protocol witness for static _AttributeBody._destroySelf(_:) in conformance PlaceholderInfo(void *a1)
{
  v2 = a1 + 24;
  if (a1[24])
  {
    AGSubgraphRemoveObserver();
    v3 = a1[24];
    *v2 = 0;
    v2[1] = 0;
  }

  a1[16] = 0;

  a1[17] = 0;

  return result;
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LazyContainerContentModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v4;
  v6 = *(a2 + 48);
  v35 = *(a2 + 64);
  v7 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v7;
  v28 = v33;
  v29 = v6;
  v30 = *(a2 + 64);
  v36 = *(a2 + 80);
  v8 = *&v32[0];
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v5;
  outlined init with copy of _ViewInputs(v32, v23);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v8);
  static CorePlatformProvidersDefinition.providers.getter(v23);
  if (v24)
  {
    (*(v25 + 16))(&v26);
  }

  v17[2] = v28;
  v17[3] = v29;
  v17[4] = v30;
  v18 = v31;
  v17[0] = v26;
  v17[1] = v27;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v11 = v26;
  v12 = v27;
  v9 = outlined init with copy of _ViewInputs(v17, v21);
  a3(v9, &v11);
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v20 = v16;
  v19[0] = v11;
  v19[1] = v12;
  outlined destroy of _ViewInputs(v19);
  v21[2] = v28;
  v21[3] = v29;
  v21[4] = v30;
  v22 = v31;
  v21[0] = v26;
  v21[1] = v27;
  return outlined destroy of _ViewInputs(v21);
}

_DWORD *specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:)(_DWORD *result)
{
  v1 = *MEMORY[0x1E698D3F8];
  result[3] = *MEMORY[0x1E698D3F8];
  *result = v1;
  return result;
}

void protocol witness for UnaryLayout.placement(of:in:) in conformance _SafeAreaIgnoringLayout(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 6);
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = v2;
  _SafeAreaRegionsIgnoringLayout.placement(of:in:)(&v3, -1, a2);
}

uint64_t specialized static SafeAreaInsets.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && (v2 = a2[2], v3 = a1[2], (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14SafeAreaInsetsV7ElementV_Tt1g5(a1[1], a2[1]) & 1) != 0))
  {
    v6 = v2;
    v7 = v3;

    v4 = specialized static SafeAreaInsets.OptionalValue.== infix(_:_:)(&v7, &v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

double EdgeInsets.init(_:edges:)(double a1)
{
  if (Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    v2 = a1;
  }

  else
  {
    v2 = 0.0;
  }

  Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  return v2;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.LazySubviewMinorSizingKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (v2)
  {
    if (v3)
    {
      v4 = *(*v2 + 104);

      v6 = v4(v5);

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityTextLayoutProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 144) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

BOOL specialized static AccessibilityTextLayoutProperties.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 80);
  v45 = *(a1 + 96);
  v46 = v2;
  v4 = *(a1 + 112);
  v47 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v41 = *(a1 + 32);
  v42 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v8;
  v9 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v9;
  v10 = a2[7];
  v11 = a2[5];
  v55 = a2[6];
  v56 = v10;
  v12 = a2[7];
  v57 = a2[8];
  v13 = a2[3];
  v14 = a2[1];
  v51 = a2[2];
  v52 = v13;
  v15 = a2[3];
  v16 = a2[5];
  v53 = a2[4];
  v54 = v16;
  v17 = a2[1];
  v49 = *a2;
  v50 = v17;
  v18 = *(a1 + 112);
  v59[6] = *(a1 + 96);
  v59[7] = v18;
  v59[8] = *(a1 + 128);
  v19 = *(a1 + 48);
  v59[2] = *(a1 + 32);
  v59[3] = v19;
  v20 = *(a1 + 80);
  v59[4] = *(a1 + 64);
  v59[5] = v20;
  v21 = *(a1 + 16);
  v59[0] = *a1;
  v59[1] = v21;
  v22 = a2[8];
  v68 = v12;
  v69 = v22;
  v67 = v55;
  v63 = v51;
  v64 = v15;
  v65 = v53;
  v66 = v11;
  v61 = v49;
  v62 = v14;
  v77 = v45;
  v78 = v4;
  v79 = *(a1 + 128);
  v73 = v41;
  v74 = v7;
  v75 = v43;
  v76 = v3;
  v48 = *(a1 + 144);
  v58 = *(a2 + 144);
  v60 = *(a1 + 144);
  v70 = *(a2 + 144);
  v80 = *(a1 + 144);
  v71 = v40[0];
  v72 = v6;
  if (getEnumTag for AccessibilityTextLayoutProperties(&v71) != 1)
  {
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v39 = v58;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    v35 = v54;
    v30 = v49;
    v31 = v50;
    if (getEnumTag for AccessibilityTextLayoutProperties(&v30) != 1)
    {
      v28[6] = v77;
      v28[7] = v78;
      v28[8] = v79;
      v29 = v80;
      v28[2] = v73;
      v28[3] = v74;
      v28[4] = v75;
      v28[5] = v76;
      v28[0] = v71;
      v28[1] = v72;
      v26[6] = v36;
      v26[7] = v37;
      v26[8] = v38;
      v27 = v39;
      v26[2] = v32;
      v26[3] = v33;
      v26[4] = v34;
      v26[5] = v35;
      v26[0] = v30;
      v26[1] = v31;
      outlined init with copy of AccessibilityTextLayoutProperties(&v49, v25);
      outlined init with copy of AccessibilityTextLayoutProperties(v40, v25);
      outlined init with copy of AccessibilityTextLayoutProperties(&v49, v25);
      outlined init with copy of AccessibilityTextLayoutProperties(v40, v25);
      v23 = static TextLayoutProperties.== infix(_:_:)(v28, v26);
      outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(v59);
      outlined destroy of AccessibilityTextLayoutProperties(&v49);
      outlined destroy of AccessibilityTextLayoutProperties(v40);
      return v23;
    }

    goto LABEL_5;
  }

  v36 = v55;
  v37 = v56;
  v38 = v57;
  v39 = v58;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  v35 = v54;
  v30 = v49;
  v31 = v50;
  if (getEnumTag for AccessibilityTextLayoutProperties(&v30) != 1)
  {
LABEL_5:
    outlined init with copy of AccessibilityTextLayoutProperties(&v49, &v30);
    outlined init with copy of AccessibilityTextLayoutProperties(v40, &v30);
    outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(v59);
    return 0;
  }

  outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(v59);
  return 1;
}

uint64_t getEnumTag for AccessibilityTextLayoutProperties(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined destroy of (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)(uint64_t a1)
{
  type metadata accessor for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties)()
{
  if (!lazy cache variable for type metadata for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityTextLayoutProperties, AccessibilityTextLayoutProperties));
    }
  }
}

uint64_t initializeWithTake for _OpacityShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 32) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

void type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics))
  {
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics));
    }
  }
}

void partial apply for closure #1 in closure #1 in GraphHost.uninstantiate(immediately:)()
{
  v1 = *(v0 + 16);
  AGSubgraphInvalidate();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyEquatable(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 88))() & 1;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollAnchorStorage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    return (v7 & 1) == 0 && v2 == v5 && v3 == v6;
  }

  return (v7 & 1) != 0;
}

float32x4_t *specialized static Color.ResolvedHDR._Animatable.-= infix(_:_:)(float32x4_t *result, float32x4_t *a2)
{
  v2 = a2[1].f32[0];
  *result = vsubq_f32(*result, *a2);
  if (result[1].f32[0] > v2)
  {
    v2 = result[1].f32[0];
  }

  result[1].f32[0] = v2;
  return result;
}

BOOL specialized static ScrollPosition.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ScrollPosition.Storage(a1, &v25);
  outlined init with copy of ScrollPosition.Storage(a2, &v32);
  if (v31 <= 2u)
  {
    if (v31)
    {
      if (v31 == 1)
      {
        outlined init with copy of ScrollPosition.Storage(&v25, v19);
        if (v34 == 1)
        {
          v3 = LOBYTE(v19[0]) == v32;
          goto LABEL_14;
        }
      }

      else
      {
        outlined init with copy of ScrollPosition.Storage(&v25, v19);
        if (v34 == 2)
        {
          v4 = v19[1] == *(&v32 + 1) && v19[0] == *&v32;
          goto LABEL_21;
        }
      }

      goto LABEL_32;
    }

    outlined init with copy of ScrollPosition.Storage(&v25, v19);
    if (v34)
    {
      outlined destroy of ScrollPosition.ViewID(v19);
      goto LABEL_32;
    }

    *&v18[9] = *&v33[25];
    v17 = *v33;
    *v18 = *&v33[16];
    v16 = v32;
    if (v24)
    {
      if (v33[40])
      {
        goto LABEL_42;
      }
    }

    else if ((v33[40] & 1) == 0 && v22 == *&v18[8] && v23 == *&v18[16])
    {
LABEL_42:
      v11 = v20;
      v12 = v21;
      v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = *(&v17 + 1);
      v15 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      LOBYTE(v11) = project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(v13, v15, v11, v14, v12);
      outlined destroy of ScrollPosition.ViewID(&v16);
      outlined destroy of ScrollPosition.ViewID(v19);
      if (v11)
      {
        goto LABEL_43;
      }

LABEL_44:
      outlined destroy of ScrollPosition.Storage(&v25);
      return 0;
    }

    outlined destroy of ScrollPosition.ViewID(&v16);
    outlined destroy of ScrollPosition.ViewID(v19);
    goto LABEL_44;
  }

  if (v31 == 3)
  {
    outlined init with copy of ScrollPosition.Storage(&v25, v19);
    if (v34 != 3)
    {
      goto LABEL_32;
    }

LABEL_13:
    v3 = v19[0] == *&v32;
LABEL_14:
    v4 = v3;
LABEL_21:
    outlined destroy of ScrollPosition.Storage(&v25);
    return v4;
  }

  if (v31 == 4)
  {
    outlined init with copy of ScrollPosition.Storage(&v25, v19);
    if (v34 != 4)
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (v30 || (v6 = vorrq_s8(v26, v27), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v28 | v29 | v25))
  {
    if (v34 != 5 || v33[40] || v32 != 1)
    {
      goto LABEL_32;
    }

    v9 = *(&v32 + 1);
    v10 = vorrq_s8(*&v33[8], *&v33[24]);
    v8 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *v33;
  }

  else
  {
    if (v34 != 5 || v33[40])
    {
      goto LABEL_32;
    }

    v7 = vorrq_s8(*&v33[8], *&v33[24]);
    v8 = *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | *v33;
    v9 = *(&v32 + 1) | v32;
  }

  if (!(v8 | v9))
  {
LABEL_43:
    outlined destroy of ScrollPosition.Storage(&v25);
    return 1;
  }

LABEL_32:
  outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(&v25, type metadata accessor for (ScrollPosition.Storage, ScrollPosition.Storage));
  return 0;
}

uint64_t project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

__n128 assignWithTake for ScrollPosition(__n128 *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    outlined destroy of ScrollPosition.Storage(a1);
    a1 = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    v3[2] = *(a2 + 32);
    *(v3 + 42) = *(a2 + 42);
  }

  result = *(a2 + 64);
  a1[4] = result;
  a1[5].n128_u64[0] = *(a2 + 80);
  return result;
}

void lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout()
{
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout, &type metadata for Text.Layout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout, &type metadata for Text.Layout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout, &type metadata for Text.Layout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout, &type metadata for Text.Layout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  }
}

void lazy protocol witness table accessor for type Text.Layout.Line and conformance Text.Layout.Line()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Line, &type metadata for Text.Layout.Line, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Line, &type metadata for Text.Layout.Line, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Line, &type metadata for Text.Layout.Line, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.Line, &type metadata for Text.Layout.Line, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.Line and conformance Text.Layout.Line);
  }
}

void Color.ResolvedHDR.animatableData.setter(float32x4_t *a1)
{
  v2 = *a1;
  v3 = a1[1].f32[0];
  v4.i64[0] = 0x3C0000003C000000;
  v4.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v11 = *a1;
    swift_once();
    v4.i64[0] = 0x3C0000003C000000;
    v4.i64[1] = 0x3C0000003C000000;
    v2 = v11;
  }

  v10 = vmulq_f32(v2, v4);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v10.f32[0];
    v7 = v10.i32[2];
    v6 = v10.i32[1];
    v8 = v10.i32[3];
  }

  else
  {
    v13 = 2;
    v12 = v10;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v12);
  }

  *v1 = v5;
  *(v1 + 4) = v6;
  *(v1 + 8) = v7;
  *(v1 + 12) = v8;
  v9 = NAN;
  if (v3 > 0.0)
  {
    v9 = v3;
  }

  *(v1 + 16) = v9;
}

uint64_t one-time initialization function for customAttributes()
{
  result = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7C140);
  static NSAttributedStringKey.customAttributes = result;
  return result;
}

uint64_t one-time initialization function for customAttachment()
{
  result = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7C6E0);
  static NSAttributedStringKey.customAttachment = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollPosition(uint64_t a1, uint64_t a2)
{
  if ((static ScrollPosition.Storage.== infix(_:_:)(a1, a2) & 1) == 0 || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 64);
  v5 = *(a2 + 64);

  return project #1 <A, B>(lhs:rhs:) in static ScrollPosition.== infix(_:_:)(v4, v5);
}

unint64_t type metadata accessor for RBDisplayListContents()
{
  result = lazy cache variable for type metadata for RBDisplayListContents;
  if (!lazy cache variable for type metadata for RBDisplayListContents)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBDisplayListContents);
  }

  return result;
}

double EnvironmentValues.tintAdjustmentMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018TintAdjustmentModeF033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018TintAdjustmentModeK033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Ttg5(v3, *v2);
  }

  return result;
}

void *destroy for CoordinateSpace.Name(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

BOOL OptionalEdgeInsets.init(_:edges:)@<W0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = Edge.Set.contains(_:)(SwiftUI_Edge_top);
  if (v10)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0.0;
  }

  v20 = !v10;
  v12 = Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  if (v12)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0.0;
  }

  v19 = !v12;
  v14 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  if (v14)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0.0;
  }

  v18 = !v14;
  result = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  v17 = a5;
  if (!result)
  {
    v17 = 0.0;
  }

  *a1 = v11;
  *(a1 + 8) = v20;
  *(a1 + 16) = v13;
  *(a1 + 24) = v19;
  *(a1 + 32) = v15;
  *(a1 + 40) = v18;
  *(a1 + 48) = v17;
  *(a1 + 56) = !result;
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsAuxiliaryContentTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t ViewTraitCollection.tag<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = type metadata accessor for TagValueTraitKey.Value(0, a1, a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v4;
  v23[1] = *v4;
  v18 = type metadata accessor for TagValueTraitKey(0, a1, a2, v17);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v18);
  ViewTraitCollection.subscript.getter(v18, v19, v11);
  if ((*(v12 + 48))(v11, 1, a1) == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v15, v11, a1);
    if ((_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, v16) & 1) == 0)
    {
      v20(a4, v15, a1);
      v21 = 0;
      return (*(v12 + 56))(a4, v21, 1, a1);
    }

    (*(v12 + 8))(v15, a1);
  }

  v21 = 1;
  return (*(v12 + 56))(a4, v21, 1, a1);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v47);
        outlined init with take of AnyTrackedValue(v47, v48);
        v12 = v49;
        v13 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        (v13[1])(&type metadata for ContentTransition.State, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v48);
      }

      else
      {
        v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(a1);
        v46 = v8;
        if (v25)
        {
          v26 = v25[9];
          v27 = *(v25 + 84);
          v28 = *(v25 + 20);
          v29 = v28 | (v27 << 32);
          v30 = *(v25 + 85);
          v31 = *(v25 + 86);
          v32 = *(v25 + 87);
          v33 = v25[11];
          v34 = *(v25 + 24);
          *a2 = v26;
          *(a2 + 8) = v28;
          *(a2 + 12) = v27;
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v26 = static ContentTransition.State.defaultValue;
          v41 = BYTE12(static ContentTransition.State.defaultValue);
          v42 = DWORD2(static ContentTransition.State.defaultValue);
          v29 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
          v30 = BYTE13(static ContentTransition.State.defaultValue);
          v31 = BYTE14(static ContentTransition.State.defaultValue);
          v32 = HIBYTE(static ContentTransition.State.defaultValue);
          v33 = off_1ED536620;
          v34 = dword_1ED536628;
          *a2 = static ContentTransition.State.defaultValue;
          *(a2 + 12) = v41;
          *(a2 + 8) = v42;
        }

        *(a2 + 13) = v30;
        *(a2 + 14) = v31;
        *(a2 + 15) = v32;
        *(a2 + 16) = v33;
        *(a2 + 24) = v34;
        outlined copy of ContentTransition.Storage(v26, v29, v30);

        type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>(0);
        v49 = v43;
        v50 = &protocol witness table for TrackedValue<A>;
        v44 = swift_allocObject();
        v48[0] = v44;
        *(v44 + 16) = v26;
        *(v44 + 28) = BYTE4(v29);
        *(v44 + 24) = v29;
        *(v44 + 29) = v30;
        *(v44 + 30) = v31;
        *(v44 + 31) = v32;
        *(v44 + 32) = v33;
        *(v44 + 40) = v34;
        outlined copy of ContentTransition.Storage(v26, v29, v30);

        specialized Dictionary.subscript.setter(v48, v46);
      }

      goto LABEL_19;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(a1);
  if (v14)
  {
    v15 = v14[9];
    v16 = *(v14 + 84);
    v17 = *(v14 + 20);
    v18 = v17 | (v16 << 32);
    v19 = *(v14 + 86);
    v20 = *(v14 + 87);
    v21 = v14[11];
    v22 = *(v14 + 24);
    v23 = *(v14 + 85);
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 12) = v16;
    *(a2 + 13) = v23;
    *(a2 + 14) = v19;
    *(a2 + 15) = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    v24 = v15;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v24 = static ContentTransition.State.defaultValue;
    v35 = BYTE12(static ContentTransition.State.defaultValue);
    v36 = DWORD2(static ContentTransition.State.defaultValue);
    v18 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
    v37 = BYTE14(static ContentTransition.State.defaultValue);
    v38 = HIBYTE(static ContentTransition.State.defaultValue);
    v39 = off_1ED536620;
    v40 = dword_1ED536628;
    *a2 = static ContentTransition.State.defaultValue;
    *(a2 + 12) = v35;
    *(a2 + 8) = v36;
    v23 = BYTE13(static ContentTransition.State.defaultValue);
    *(a2 + 13) = BYTE13(static ContentTransition.State.defaultValue);
    *(a2 + 14) = v37;
    *(a2 + 15) = v38;
    *(a2 + 16) = v39;
    *(a2 + 24) = v40;
  }

  outlined copy of ContentTransition.Storage(v24, v18, v23);

LABEL_19:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t sub_18D2FE608()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContentTransition.State>>);
    }
  }
}

BOOL specialized static ViewTransform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *a2;
  v2 = (*a1 | *a2) == 0;
  if (*a1)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v3[3] != v4[3])
    {
      return 0;
    }

    do
    {
      if (!v4)
      {
        v2 = 0;
        goto LABEL_17;
      }

      v2 = v3 == v4;
      if (v3 == v4 || ((*(*v3 + 112))(v4) & 1) == 0)
      {

        goto LABEL_17;
      }

      v6 = v3[2];

      v7 = v4[2];

      v3 = v6;
      v4 = v7;
    }

    while (v6);
    if (v7)
    {
      v2 = 0;
LABEL_17:

      return v2;
    }

    return 1;
  }

  return v2;
}

uint64_t Element.isEqual(to:)(uint64_t a1)
{
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (*(v1 + 32) != *(v2 + 32) || *(v1 + 40) != *(v2 + 40))
  {
    return 0;
  }

  v5 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v5 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SizedSpaceElement(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ContentTransition.State@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static ContentTransition.State.defaultValue;
  v2 = BYTE12(static ContentTransition.State.defaultValue);
  v3 = DWORD2(static ContentTransition.State.defaultValue);
  v4 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
  v5 = BYTE14(static ContentTransition.State.defaultValue);
  v6 = HIBYTE(static ContentTransition.State.defaultValue);
  v7 = off_1ED536620;
  v8 = dword_1ED536628;
  *a1 = static ContentTransition.State.defaultValue;
  *(a1 + 12) = v2;
  *(a1 + 8) = v3;
  v9 = BYTE13(static ContentTransition.State.defaultValue);
  *(a1 + 13) = BYTE13(static ContentTransition.State.defaultValue);
  *(a1 + 14) = v5;
  *(a1 + 15) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined copy of ContentTransition.Storage(v1, v4, v9);

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ContentTransition.State(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 2);
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  v7 = a1[2];
  v8 = *(a1 + 6);
  v9 = *a2;
  v10 = *(a2 + 6);
  v11 = *(a2 + 2);
  v12 = *(a2 + 14);
  v13 = *(a2 + 15);
  v14 = a2[2];
  v15 = *(a2 + 6);
  v24 = v2;
  v25 = v4;
  v26 = v3;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  return specialized static ContentTransition.State.== infix(_:_:)(&v24, &v17);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3()
{
  if (!lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DisplayP3, &type metadata for Color.DisplayP3, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DisplayP3, &type metadata for Color.DisplayP3, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DisplayP3, &type metadata for Color.DisplayP3, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DisplayP3 and conformance Color.DisplayP3);
  }
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance AdaptiveColorProvider@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  (*(*v4 + 120))(&v7, &v6);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance _VariadicView_Children(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *a2;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v7 = v2[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v9 = ViewList.count.getter(v7, v8);
  static Update.end()();
  result = _MovableLockUnlock(v6);
  if (v4 < 0 || v9 < v4)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v6);
    specialized static Update.begin()();
    v11 = v3[3];
    v12 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v11);
    v13 = ViewList.count.getter(v11, v12);
    static Update.end()();
    result = _MovableLockUnlock(v6);
    if ((v5 & 0x8000000000000000) == 0 && v13 >= v5)
    {
      return v5 - v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v8 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v22 = 2;
  v11 = (*(v10 + 16))(&v22, v9, v10);
  static Update.end()();
  result = _MovableLockUnlock(v8);
  if (a1 < 0 || v11 < a1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  _MovableLockLock(v8);
  specialized static Update.begin()();
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  v22 = 2;
  v15 = (*(v14 + 16))(&v22, v13, v14);
  static Update.end()();
  result = _MovableLockUnlock(v8);
  if (a3 < 0 || v15 < a3)
  {
    goto LABEL_19;
  }

  v16 = a3 - a1;
  if (a2 >= 1)
  {
    if (v16 < 0 || v16 >= a2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v16 <= 0 && v16 > a2)
  {
    return 0;
  }

LABEL_14:
  v18 = __OFADD__(a1, a2);
  v17 = a1 + a2;
  if (v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  _MovableLockLock(v8);
  specialized static Update.begin()();
  v19 = v4[3];
  v20 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v19);
  v22 = 2;
  v21 = (*(v20 + 16))(&v22, v19, v20);
  static Update.end()();
  result = _MovableLockUnlock(v8);
  if ((v17 & 0x8000000000000000) == 0 && v21 >= v17)
  {
    return v17;
  }

LABEL_21:
  __break(1u);
  return result;
}

{
  v7 = *(*v3 + 88);
  result = v7();
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v7();
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v7();
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

{
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (v8)
  {
    v9 = *(v7 + 80);
  }

  else
  {
    v9 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v9 > a1 || result < a1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    v11 = *(v7 + 80);
  }

  else
  {
    v11 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v11 > a3 || result < a3)
  {
    goto LABEL_27;
  }

  v12 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 >= 1)
  {
    if (v12 < 0 || v12 >= a2)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v12 <= 0 && v12 > a2)
  {
    return 0;
  }

LABEL_19:
  v14 = __OFADD__(a1, a2);
  v13 = a1 + a2;
  if (v14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8)
  {
    v15 = *(v7 + 80);
  }

  else
  {
    v15 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v13 >= v15 && result >= v13)
  {
    return v13;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA0C13ContentOffsetO_Tt0B5(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = 0;
  v6 = 0;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v28[0] = a1;
  v28[1] = a2;
  v29 = a3;
  v7 = *v3;
  v8 = *v3 + 32;
  v9 = *(*v3 + 16);
  do
  {
    if (v9 == v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v7;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v20 = v7[2];
        v19 = v7[3];
        if (v20 >= v19 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
          *v4 = v7;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<ViewContentOffset>, &type metadata for ViewContentOffset, &protocol witness table for ViewContentOffset, type metadata accessor for ViewTraitCollection.AnyTrait);
        v26 = v21;
        v27 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        v24 = v22;
        v25 = a3;
        v7[2] = v20 + 1;
        result = outlined init with take of AnyTrackedValue(&v24, &v7[5 * v20 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      *v4 = v7;
      goto LABEL_10;
    }

    if (v6 >= v7[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v6;
    outlined init with copy of AnyTrackedValue(v8 + v5 * 8, &v24);
    v10 = v26;
    v11 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v5 += 5;
  }

  while (v12 != &type metadata for ViewContentOffset);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    *v4 = result;
  }

  if (v6 - 1 < v7[2])
  {
    v14 = v7[v5 + 2];
    v15 = v7[v5 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v7[v5 - 1], v14);
    v16 = *(v15 + 24);
    type metadata accessor for LeafContentType?(0, &lazy cache variable for type metadata for ViewContentOffset?, &type metadata for ViewContentOffset, MEMORY[0x1E69E6720]);
    result = v16(v28, v17, v14, v15);
LABEL_13:
    *v4 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18D2FF230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance _VariadicView_Children@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v7 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v8 = v2[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = ViewList.count.getter(v8, v9);
  static Update.end()();
  result = _MovableLockUnlock(v7);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= v6)
  {
    result = outlined init with copy of _VariadicView_Children(v3, (a2 + 2));
    *a2 = v5;
    a2[1] = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BitVector(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _VariadicView_Children(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BufferedElement.isEqual(to:)(uint64_t a1)
{
  if (*a1 == _TtC7SwiftUIP33_1CC2FE016A82CF91549A64E942CE8ED415BufferedElement && (*(v1 + 32) == *(a1 + 32) ? (v2 = *(v1 + 40) == *(a1 + 40)) : (v2 = 0), v2))
  {
    swift_beginAccess();
    v7[0] = *(v1 + 48);
    v7[1] = *(v1 + 56);
    swift_beginAccess();
    v6[0] = *(a1 + 48);
    v6[1] = *(a1 + 56);
    v3 = specialized static ViewTransform.UnsafeBuffer.== infix(_:_:)(v7, v6);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t specialized static ViewTransform.UnsafeBuffer.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 12);
  if (v2 != *(a2 + 3))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = *a2;
  v6 = *result;
  while (1)
  {
    if (!(v2 | v4))
    {
      return 1;
    }

    if (!v6)
    {
      break;
    }

    v7 = (v6 + v4);
    v8 = v2 - 1;
    if (v2 == 1)
    {
      if (!(v3 | 1))
      {
        return 1;
      }

      if (!v5)
      {
        goto LABEL_18;
      }

      v4 = 0;
      v9 = v5 + v3;
      v3 = 0;
    }

    else
    {
      if (!(v2 | v3))
      {
        return 1;
      }

      if (!v5)
      {
        goto LABEL_18;
      }

      v4 += *(v7 + 2);
      v9 = v5 + v3;
      v3 += *(v9 + 8);
    }

    v10 = *v7;
    if (*v9 == *v7)
    {
      v11 = v9;
      v12 = v7;
      result = (*(v10 + 128))(&v12, &v11);
      v2 = v8;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.equal(_:_:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v10 = *v9;
  v19 = *v11;
  v12 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v13 = *(v3 + 16);
  v13(v8, v12, v2);
  v19 = v10;
  v14 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v13(v5, v14, v2);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v16(v8, v2);
  return v15 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ViewTransform.ScrollGeometryItem(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 112);
  v6 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v6;
  v11[6] = *(a2 + 96);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v9 = *(a2 + 112);
  return specialized static ScrollGeometry.== infix(_:_:)(v12, v11) & ~(v5 ^ v9) & 1;
}

BOOL specialized static ScrollGeometry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    return CGRectEqualToRect(*(a1 + 80), *(a2 + 80));
  }

  return v2;
}

void *protocol witness for static View._makeView(view:inputs:) in conformance RoundedRectangle@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<RoundedRectangle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v5[0] = &type metadata for RoundedRectangle;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<RoundedRectangle, ForegroundStyle>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<RoundedRectangle>, MainThreadFlags>);
    }
  }
}

void lazy protocol witness table accessor for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<RoundedRectangle>, &type metadata for RoundedRectangle, &protocol witness table for RoundedRectangle, type metadata accessor for ViewBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ViewBodyAccessor<RoundedRectangle> and conformance ViewBodyAccessor<A>);
  }
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV_AA15ForegroundStyleVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) == 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6);
    if ((result & 1) == 0)
    {
      *a3 = MEMORY[0x1E69E7CC0];
      v21 = *MEMORY[0x1E698D3F8];
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      return result;
    }
  }

  v8 = a2[1];
  v30[0] = *a2;
  v30[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v28[2] = a2[2];
  v28[3] = v9;
  v28[4] = a2[4];
  v29 = *(a2 + 20);
  v28[0] = v11;
  v28[1] = v10;
  LOBYTE(v22) = 0;
  swift_beginAccess();
  v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v28, &v22, 0x100000000);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(v30, v28);
  LODWORD(OffsetAttribute2) = _s7SwiftUI10AnimatablePAAE04makeC05value6inputs14AttributeGraph0G0VyxGAA01_H5ValueVyxG_AA01_H6InputsVtFZAA16RoundedRectangleV_Tt1B5(OffsetAttribute2, v30);
  outlined destroy of _GraphInputs(v30);
  *&v28[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>.Init, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape.Init);
  lazy protocol witness table accessor for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA16RoundedRectangleVG_Tt5B5(v14, a2, v12, 0, &v22);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((BYTE4(v31) & 2) != 0)
    {
      LODWORD(v24) = v14;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<AnimatedShape<RoundedRectangle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>, "]");
      HIDWORD(v23) = Attribute.init<A>(body:value:flags:update:)();
      if ((v23 & 0x80) == 0)
      {
        LODWORD(v23) = v23 | 0x80;
      }
    }

    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_11;
  }

LABEL_14:
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v6);
  if (result)
  {
    v16 = *MEMORY[0x1E698D3F8];
    v17 = AGGraphCreateOffsetAttribute2();
    v24 = *(a2 + 60);
    v25 = v17;
    v26 = v4;
    v27 = v16;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<RoundedRectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<RoundedRectangle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<RoundedRectangle, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v24 = v6;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v19 = *(v6 + 16);
    if (result != v19)
    {
      if (result >= v19)
      {
        __break(1u);
      }

      if (*(v6 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v24) = v18;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v20 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v24) = 0;
        result = PreferencesOutputs.subscript.setter(v20, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v22;
  *(a3 + 8) = v23;
  return result;
}

void lazy protocol witness table accessor for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init()
{
  if (!lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>.Init, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape.Init);
    swift_getWitnessTable(protocol conformance descriptor for AnimatedShape<A>.Init, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatedShape<RoundedRectangle>.Init and conformance AnimatedShape<A>.Init);
  }
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA16RoundedRectangleVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = v8;
    *(v32 + 24) = 0;
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
    v4 = type metadata accessor for LeafLayoutComputer(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LeafLayoutComputer<AnimatedShape<RoundedRectangle>>);
    }
  }
}

uint64_t ShapeStyle.blendMode(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  v13 = *a1;
  (*(v9 + 32))(a4, v12, a2);
  result = type metadata accessor for _BlendModeShapeStyle(0, a2, a3, v14);
  *(a4 + *(result + 36)) = v13;
  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyKeyPath>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        outlined copy of AttributedString.AnyAttribute(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Subview.ID>, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        outlined init with copy of AnyHashable(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.StableID>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Item.ID>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v4 + 48) + v17;
        v20 = *(v18 + 8);
        *v19 = *v18;
        *(v19 + 8) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<GlassContainer.Entry.ModelID>, lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        outlined copy of GlassContainer.Entry.ModelID(v19, v20, v21, v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AttributedString.WritingDirection?>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, &lazy cache variable for type metadata for _SetStorage<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Axis>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<CTFontRef>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v21[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v4 + 48) + v17);
      *v21 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DisplayList.ViewUpdater.ViewCache.Key>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 20 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<NSAttributedStringKey>(0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<AnyHashable2>, lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2, &type metadata for AnyHashable2, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<CAHostingLayerEvent.MouseButton>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<_ProposedSize>, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 24) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v20;
      *(v22 + 16) = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}