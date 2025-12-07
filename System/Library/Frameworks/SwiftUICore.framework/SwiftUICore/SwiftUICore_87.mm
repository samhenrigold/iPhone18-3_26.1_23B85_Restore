uint64_t one-time initialization function for archiving(uint64_t a1)
{
  return one-time initialization function for archiving(a1, static OSSignposter.archiving, &one-time initialization token for archiving, static Log.archiving, one-time initialization function for archiving);
}

{
  return one-time initialization function for archiving(a1, static Log.archiving, 0x6E69766968637241, 0xE900000000000067);
}

uint64_t one-time initialization function for archiving(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t static OSSignposter.archiving.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSSignposter();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

__n128 Signpost.published.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  a1[1].n128_u8[2] = 3;
  return result;
}

double static Signpost.render.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for render != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED5375C0;
  v2 = HIBYTE(word_1ED5375C0);
  v3 = byte_1ED5375C2;
  result = *&static Signpost.render;
  *a1 = static Signpost.render;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.renderUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for renderUpdate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED5375E8;
  v2 = HIBYTE(word_1ED5375E8);
  v3 = byte_1ED5375EA;
  result = *&static Signpost.renderUpdate;
  *a1 = static Signpost.renderUpdate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.postUpdateActions.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for postUpdateActions != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED530E00;
  v2 = HIBYTE(word_1ED530E00);
  v3 = byte_1ED530E02;
  result = *&static Signpost.postUpdateActions;
  *a1 = static Signpost.postUpdateActions;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.renderDisplayList.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for renderDisplayList != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED52EF28;
  v2 = HIBYTE(word_1ED52EF28);
  v3 = byte_1ED52EF2A;
  result = *&static Signpost.renderDisplayList;
  *a1 = static Signpost.renderDisplayList;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.bodyInvoke.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bodyInvoke != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED539040;
  v2 = HIBYTE(word_1ED539040);
  v3 = byte_1ED539042;
  result = *&static Signpost.bodyInvoke;
  *a1 = static Signpost.bodyInvoke;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.linkCreate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkCreate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED537628;
  v2 = HIBYTE(word_1ED537628);
  v3 = byte_1ED53762A;
  result = *&static Signpost.linkCreate;
  *a1 = static Signpost.linkCreate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.linkUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkUpdate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED537610;
  v2 = HIBYTE(word_1ED537610);
  v3 = byte_1ED537612;
  result = *&static Signpost.linkUpdate;
  *a1 = static Signpost.linkUpdate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.linkDestroy.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for linkDestroy != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED53A310;
  v2 = HIBYTE(word_1ED53A310);
  v3 = byte_1ED53A312;
  result = *&static Signpost.linkDestroy;
  *a1 = static Signpost.linkDestroy;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.viewHost.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewHost != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED53C1D0;
  v2 = HIBYTE(word_1ED53C1D0);
  v3 = byte_1ED53C1D2;
  result = *&static Signpost.viewHost;
  *a1 = static Signpost.viewHost;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

void one-time initialization function for platformView()
{
  *&static Signpost.platformView = "ViewMapping";
  *(&static Signpost.platformView + 1) = 11;
  word_1EAB19AC0 = 258;
  byte_1EAB19AC2 = 3;
}

double static Signpost.platformView.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for platformView != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB19AC0;
  v2 = HIBYTE(word_1EAB19AC0);
  v3 = byte_1EAB19AC2;
  result = *&static Signpost.platformView;
  *a1 = static Signpost.platformView;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.platformUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for platformUpdate != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED529260;
  v2 = HIBYTE(word_1ED529260);
  v3 = byte_1ED529262;
  result = *&static Signpost.platformUpdate;
  *a1 = static Signpost.platformUpdate;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double static Signpost.animationState.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for animationState != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED5283E8;
  v2 = HIBYTE(word_1ED5283E8);
  v3 = byte_1ED5283EA;
  result = *&static Signpost.animationState;
  *a1 = static Signpost.animationState;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

void one-time initialization function for eventHandling()
{
  *&static Signpost.eventHandling = "EventHandling";
  *(&static Signpost.eventHandling + 1) = 13;
  word_1ED521BA0 = 258;
  byte_1ED521BA2 = 3;
}

double static Signpost.eventHandling.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for eventHandling != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1ED521BA0;
  v2 = HIBYTE(word_1ED521BA0);
  v3 = byte_1ED521BA2;
  result = *&static Signpost.eventHandling;
  *a1 = static Signpost.eventHandling;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double one-time initialization function for prefetchMakeView()
{
  *&result = 330991403;
  static Signpost.prefetchMakeView = xmmword_18DDB55F0;
  word_1EAB0EAB8 = 0;
  byte_1EAB0EABA = 2;
  return result;
}

double static Signpost.prefetchMakeView.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for prefetchMakeView != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB0EAB8;
  v2 = HIBYTE(word_1EAB0EAB8);
  v3 = byte_1EAB0EABA;
  result = *&static Signpost.prefetchMakeView;
  *a1 = static Signpost.prefetchMakeView;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double one-time initialization function for prefetchOutputs()
{
  *&result = 331056939;
  static Signpost.prefetchOutputs = xmmword_18DDB5600;
  word_1EAB0EAE0 = 0;
  byte_1EAB0EAE2 = 2;
  return result;
}

double static Signpost.prefetchOutputs.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for prefetchOutputs != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB0EAE0;
  v2 = HIBYTE(word_1EAB0EAE0);
  v3 = byte_1EAB0EAE2;
  result = *&static Signpost.prefetchOutputs;
  *a1 = static Signpost.prefetchOutputs;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

double one-time initialization function for prefetchNotifyRender()
{
  *&result = 331122475;
  static Signpost.prefetchNotifyRender = xmmword_18DDB5610;
  word_1EAB0EA98 = 0;
  byte_1EAB0EA9A = 2;
  return result;
}

double static Signpost.prefetchNotifyRender.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for prefetchNotifyRender != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = word_1EAB0EA98;
  v2 = HIBYTE(word_1EAB0EA98);
  v3 = byte_1EAB0EA9A;
  result = *&static Signpost.prefetchNotifyRender;
  *a1 = static Signpost.prefetchNotifyRender;
  *(a1 + 16) = v1;
  *(a1 + 17) = v2;
  *(a1 + 18) = v3;
  return result;
}

const char *one-time initialization function for moduleName()
{
  result = specialized static Tracing.libraryName(defining:)();
  static Signpost.moduleName = result;
  unk_1EAB19AD0 = v1;
  return result;
}

uint64_t static Signpost.moduleName.getter()
{
  if (one-time initialization token for moduleName != -1)
  {
    swift_once();
  }

  v0 = static Signpost.moduleName;

  return v0;
}

__n128 Signpost.disabled.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  return result;
}

__n128 Signpost.verbose.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u8[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  a1[1].n128_u8[2] = 1;
  return result;
}

uint64_t Signpost.traceInterval<A>(object:_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void (*a5)(uint64_t))
{
  v30 = a2;
  v31 = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 18);
  if (v13 < 2)
  {
    return (a5)();
  }

  v15 = *v5;
  v29 = v5[1];
  v28 = *(v5 + 16);
  v16 = *(v5 + 17);
  if (v13 == 2)
  {
    if (_SwiftUIIsAppleInternalBuild())
    {
      goto LABEL_13;
    }

    return (a5)();
  }

  if (v16)
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return (a5)();
    }

    v27 = v16;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v17 = OS_os_log.signpostsEnabled.getter();
    v16 = v27;
    if ((v17 & 1) == 0)
    {
      return (a5)();
    }
  }

  else
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return (a5)();
    }
  }

LABEL_13:
  v27 = v16;
  if (a1)
  {
    v18 = one-time initialization token for _signpostLog;
    swift_unknownObjectRetain();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = _signpostLog;
    OSSignpostID.init(log:object:)();
    LOBYTE(v16) = v27;
  }

  else
  {
    static OSSignpostID.exclusive.getter();
  }

  v26 = v10;
  v20 = static os_signpost_type_t.begin.getter();
  if (one-time initialization token for _signpostLog != -1)
  {
    v23 = v16;
    v24 = v20;
    swift_once();
    v20 = v24;
    LOBYTE(v16) = v23;
  }

  if (v16)
  {
    if ((a4 & 0x100) != 0)
    {
      v21 = os_signpost(_:dso:log:name:signpostID:)();
    }

    else
    {
      v39 = v20;
      v37 = _signpostLog;
      v38 = &dword_18D018000;
      v35[0] = v15;
      v35[1] = v29;
      v36 = v28;
      v33[0] = v30;
      v33[1] = v31;
      v34 = a4;
      v32 = MEMORY[0x1E69E7CC0];
      v21 = specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v39, &v38, &v37, v35, v12, v33, &v32);
    }
  }

  else
  {
    OSSignpostID.rawValue.getter();
    v21 = kdebug_trace();
  }

  v22 = v26;
  a5(v21);
  static os_signpost_type_t.end.getter();
  if (v27)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  return (*(v22 + 8))(v12, v9);
}

double Signpost.traceEvent(type:object:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  LOWORD(v8) = a5;
  v53 = a3;
  v54 = a4;
  v10 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for OSSignpostID();
  v11 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = *(v6 + 18);
  if (v17 < 2)
  {
    return result;
  }

  v18 = *v6;
  v49 = v6[1];
  LODWORD(v50) = *(v6 + 16);
  LOBYTE(v19) = *(v6 + 17);
  if (v17 == 2)
  {
    if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
    {
      return result;
    }
  }

  else if (*(v6 + 17))
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return result;
    }

    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    static os_signpost_type_t.event.getter();
    if ((kdebug_is_enabled() & 1) == 0)
    {
      return result;
    }
  }

  if (!a2)
  {
    v22 = static OSSignpostID.exclusive.getter();
    goto LABEL_16;
  }

  v20 = one-time initialization token for _signpostLog;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v21 = _signpostLog;
    v22 = OSSignpostID.init(log:object:)();
LABEL_16:
    a6 = (a6)(v22);
    if (one-time initialization token for _signpostLog != -1)
    {
      break;
    }

    if (v19)
    {
      goto LABEL_18;
    }

LABEL_22:
    v23 = v18;
    if (v18 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = v16;
    v16 = bswap32(v18) | (4 * WORD1(v18));
    v27 = *(v11 + 2);
    v26 = v11 + 16;
    v44 = v25;
    v45 = v27;
    v28 = (v27)(v52);
    v18 = 0;
    LOBYTE(v56[0]) = 1;
    v54 = v24;
    v49 = 16 * v24;
    v50 = (v26 - 8);
    v47 = v26;
    v48 = a6 + 32;
    v46 = v23;
LABEL_26:
    v53 = &v43;
    MEMORY[0x1EEE9AC00](v28);
    v19 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = v19 + 8;
    v30 = v54;
    v31 = v19 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v48 + 40 * v18;
    v33 = v54;
    while (1)
    {
      v34 = *(a6 + 16);
      if (v18 == v34)
      {
        LOBYTE(v56[0]) = 0;
LABEL_34:
        v37 = v46;
        if (v46 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v19[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v19[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v19[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v37 != 20 && v19[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v38 = v51;
        v39 = *v50;
        v40 = v52;
        (*v50)(v52, v51);
        v41 = __swift_project_value_buffer(v38, static OSSignpostID.continuation);
        v28 = v45(v40, v41, v38);
        if ((v56[0] & 1) == 0)
        {
          v42 = v51;
          v39(v52, v51);
          v39(v44, v42);
          goto LABEL_49;
        }

        goto LABEL_26;
      }

      if (v18 >= v34)
      {
        break;
      }

      ++v18;
      outlined init with copy of AnyTrackedValue(v32, v61);
      v35 = v63;
      v8 = v64;
      __swift_project_boxed_opaque_existential_1(v61, v63);
      *(v11 - 1) = CVarArg.kdebugValue(_:)(v16 | v10, v35, v8);
      *v11 = v36 & 1;
      v11 += 16;
      __swift_destroy_boxed_opaque_existential_1(v61);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  swift_once();
  if ((v19 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v8 & 0x100) != 0)
  {

    os_signpost(_:dso:log:name:signpostID:)();
    (*(v11 + 1))(v16, v51);
  }

  else
  {
    v60 = v10;
    v58 = _signpostLog;
    v59 = &dword_18D018000;
    v61[0] = v18;
    v61[1] = v49;
    v62 = v50;
    v56[0] = v53;
    v56[1] = v54;
    v57 = v8;
    v55 = a6;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v60, &v59, &v58, v61, v16, v56, &v55);
    (*(v11 + 1))(v16, v51);
LABEL_49:
  }

  return result;
}

double Signpost.traceEvent(type:args:)(unint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = a1;
  v48 = *MEMORY[0x1E69E9840];
  v40 = type metadata accessor for OSSignpostID();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v9;
  v10 = *(v2 + 18);
  if (v10 >= 2)
  {
    v11 = *v2;
    LOBYTE(v12) = *(v2 + 17);
    if (v10 == 2)
    {
      if (_SwiftUIIsAppleInternalBuild())
      {
        do
        {
LABEL_12:
          v13 = static OSSignpostID.exclusive.getter();
          a2 = (a2)(v13);
          if (one-time initialization token for _signpostLog == -1)
          {
            if (v12)
            {
              goto LABEL_14;
            }
          }

          else
          {
            swift_once();
            if (v12)
            {
LABEL_14:

              v14 = v33;
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v5 + 8))(v14, v40);
              return result;
            }
          }

          v35 = v11;
          if (v11 == 20)
          {
            v15 = 3;
          }

          else
          {
            v15 = 4;
          }

          v12 = bswap32(v11) | (4 * WORD1(v11));
          v16 = v4;
          v34 = *(v5 + 16);
          v34(v41, v33, v40);
          v44 = 1;
          v43 = v15;
          v36 = v5 + 16;
          v38 = 16 * v15;
          v39 = (v5 + 8);

          v4 = 0;
          v37 = a2 + 32;
LABEL_20:
          v42 = &v33;
          MEMORY[0x1EEE9AC00](v17);
          v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = v19 + 8;
          v21 = v43;
          v22 = v19 + 8;
          do
          {
            *(v22 - 1) = 0;
            *v22 = 0;
            v22 += 16;
            --v21;
          }

          while (v21);
          v11 = v37 + 40 * v4;
          v5 = v43;
          while (1)
          {
            v23 = *(a2 + 16);
            if (v4 == v23)
            {
              v44 = 0;
LABEL_28:
              v27 = v35;
              if (v35 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v19[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v19[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v19[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v27 != 20 && v19[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v28 = v40;
              v29 = *v39;
              v30 = v41;
              (*v39)(v41, v40);
              v31 = __swift_project_value_buffer(v28, static OSSignpostID.continuation);
              v17 = (v34)(v30, v31, v28);
              if ((v44 & 1) == 0)
              {

                v32 = v40;
                v29(v41, v40);
                v29(v33, v32);

                return result;
              }

              goto LABEL_20;
            }

            if (v4 >= v23)
            {
              break;
            }

            ++v4;
            outlined init with copy of AnyTrackedValue(v11, v45);
            v24 = v46;
            v25 = v47;
            __swift_project_boxed_opaque_existential_1(v45, v46);
            *(v20 - 1) = CVarArg.kdebugValue(_:)(v12 | v16, v24, v25);
            *v20 = v26 & 1;
            v20 += 16;
            __swift_destroy_boxed_opaque_existential_1(v45);
            v11 += 40;
            if (!--v5)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_44:
          swift_once();
LABEL_9:
          ;
        }

        while ((OS_os_log.signpostsEnabled.getter() & 1) != 0);
      }
    }

    else if (*(v2 + 17))
    {
      static os_signpost_type_t.event.getter();
      if (kdebug_is_enabled())
      {
        if (one-time initialization token for _signpostLog != -1)
        {
          goto LABEL_44;
        }

        goto LABEL_9;
      }
    }

    else
    {
      static os_signpost_type_t.event.getter();
      if (kdebug_is_enabled())
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void *CVarArg.kdebugValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(v24 - v12, v3, a2, v10);
  if (swift_dynamicCast())
  {
    v14 = v24[2];
    v13 = v24[3];
    if (one-time initialization token for moduleName != -1)
    {
      swift_once();
    }

    if (v14 == static Signpost.moduleName && v13 == unk_1EAB19AD0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    if (*(v16 + 16) == 1)
    {
      v17 = *(v16 + 32);

      return v17;
    }

    (v11)(v8, v3, a2);
    v19 = String.init<A>(describing:)();
    v13 = v20;
    if (one-time initialization token for moduleName != -1)
    {
      v23 = v19;
      swift_once();
      v19 = v23;
    }

    if (v19 == static Signpost.moduleName && v13 == unk_1EAB19AD0)
    {
      goto LABEL_19;
    }

    v14 = v19;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
LABEL_19:

    return 0;
  }

  v22 = specialized String.withCString<A>(_:)(v14, v13, v5);

  return v22;
}

void *specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return kdebug_trace_string();
  }

  type metadata accessor for (arg: UInt64, destroy: Bool)();
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t one-time initialization function for continuation()
{
  v0 = type metadata accessor for OSSignpostID();
  __swift_allocate_value_buffer(v0, static OSSignpostID.continuation);
  __swift_project_value_buffer(v0, static OSSignpostID.continuation);
  return OSSignpostID.init(_:)();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Signpost(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type Signpost.Level and conformance Signpost.Level()
{
  if (!lazy protocol witness table cache variable for type Signpost.Level and conformance Signpost.Level)
  {
    swift_getWitnessTable(protocol conformance descriptor for Signpost.Level, &unk_1F0056080, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Signpost.Level and conformance Signpost.Level);
  }
}

uint64_t partial apply for closure #1 in String.kdebugValue(_:)@<X0>(uint64_t a2@<X8>)
{
  result = kdebug_trace_string();
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

void type metadata accessor for (arg: UInt64, destroy: Bool)()
{
  if (!lazy cache variable for type metadata for (arg: UInt64, destroy: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (arg: UInt64, destroy: Bool));
    }
  }
}

uint64_t Text.textVariant<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  v14[0] = a2;
  v14[1] = a3;
  v15 = a4;
  v16 = a5;
  (*(a7 + 8))(a6, a7);
  v12 = type metadata accessor for _TextVariantPreference(0, a6, a7, v11);
  return _TextVariantPreference.body<A>(_:)(v14, v12, &type metadata for Text, &protocol witness table for Text, x8_0);
}

uint64_t _TextVariantPreference.body<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v35 = a1;
  v37 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v14 = type metadata accessor for ModifiedContent(0, a3, &type metadata for VariantThatFitsModifier, v13);
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v21 = type metadata accessor for _ConditionalContent(0, v14, a3, v20);
  v36 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  if (*(v34 + 16) == &type metadata for SizeDependentTextVariant)
  {
    View.modifier<A>(_:)();
    v38[0] = a4;
    v38[1] = &protocol witness table for VariantThatFitsModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v38);
    v27 = v26;
    static ViewBuilder.buildExpression<A>(_:)();
    v35 = v21;
    v28 = *(v33 + 8);
    v28(v16, v14);
    static ViewBuilder.buildExpression<A>(_:)();
    v28(v19, v14);
    static ViewBuilder.buildEither<A, B>(first:)(v16, v14, a3, v27, v23);
    v28(v16, v14);
    v21 = v35;
  }

  else
  {
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    v24 = *(v7 + 8);
    v24(v12, a3);
    v41[0] = a4;
    v41[1] = &protocol witness table for VariantThatFitsModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v41);
    static ViewBuilder.buildEither<A, B>(second:)(v9, v14, a3, v25, v23);
    v24(v9, a3);
  }

  v40[0] = a4;
  v40[1] = &protocol witness table for VariantThatFitsModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v40);
  v39[0] = v30;
  v39[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v39, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v36 + 8))(v23, v21);
}

void TextSizeVariant.nextUp.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = v2 - 1;
    if (!__OFSUB__(v2, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v3 = 0;
LABEL_6:
  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

void TextSizeVariant.nextDown.getter(void *a1@<X8>)
{
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1 + 1;
  }
}

uint64_t TextSizeVariant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TextSizeVariant.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TextSizeVariant@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TextSizeVariant(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t type metadata completion function for SizeFittingTextCache(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t StickyTextSizeFittingLogic.suggestedVariant(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 41))
  {
    goto LABEL_2;
  }

  v3 = *(v2 + 8);
  v5 = *(v2 + 32);
  v6 = *(result + 16);
  if (*v2)
  {
    if (*(v2 + 1))
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v7 = *result;
  if (*(result + 8))
  {
    v7 = INFINITY;
  }

  if (*(v2 + 24))
  {
    v8 = 0;
    if ((*(v2 + 1) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = v7 > *(v2 + 16);
    if (!(v8 | *(v2 + 1) & 1))
    {
LABEL_10:
      if (*(result + 24))
      {
        v6 = INFINITY;
      }

      if (*(v2 + 40))
      {
        v5 = INFINITY;
      }

      if (v6 > v5)
      {
        goto LABEL_2;
      }

LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_2:
  v3 = 0;
  v4 = 1;
LABEL_19:
  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

BOOL _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(uint64_t a1, char a2, char a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v3 + 16);
  if (a2)
  {
    if (a3)
    {
      return 1;
    }

LABEL_11:
    if (*(v3 + 24))
    {
      v6 = INFINITY;
    }

    if (v5)
    {
      v4 = INFINITY;
    }

    return v6 <= v4;
  }

  v8 = *v3;
  if (*(v3 + 8))
  {
    v8 = INFINITY;
  }

  if (*(a1 + 8))
  {
    result = 1;
  }

  else
  {
    v9 = v8 > *a1;
    result = v8 <= *a1;
    if (v9)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

Swift::Void __swiftcall StickyTextSizeFittingLogic.onInvalidation(of:)(SwiftUI::TextSizeVariant of)
{
  if ((*(v1 + 41) & 1) == 0 && *of.rawValue == *(v1 + 8))
  {
    *(v1 + 40) = 0;
    *(v1 + 24) = 0u;
    *(v1 + 8) = 0u;
    *(v1 + 41) = 1;
  }
}

uint64_t SizeFittingTextCache.CacheEntry.init(resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v9 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v16);
  v10 = *(v9 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  (*(*(v14 - 8) + 56))(a6 + v10, 1, 1, v14);
  *(a6 + *(v9 + 56)) = 0;
  return (*(*(a2 - 8) + 32))(a6, a1, a2);
}

uint64_t SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a4;
  v9 = v8;
  v30 = a7;
  v27 = a8;
  v28 = a5;
  v25 = a3;
  v26 = a2;
  v12 = a6[4];
  v13 = a6[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v25 - v19;
  v22 = *(v21 + 48);
  v23 = SizeFittingTextCache.CacheEntry.result(for:)(&v25 - v19, a1, a6);
  v20[v22] = v23 & 1;
  if (v23)
  {
    v26(v23);
  }

  v29(v20);
  $defer #1 <A, B><A1>() in SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v9, v20, v13, a6[3], v30, v12, a6[5]);
  return (*(v18 + 8))(v20, TupleTypeMetadata2);
}

uint64_t SizeFittingTextCache.CacheEntry.result(for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v38 = a1;
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for SizeFittingTextCacheValue(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = *(v10 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v39 = a3;
  v20 = *(a3 + 52);
  (*(v12 + 16))(v14, v3 + v20, v11, v17);
  v21 = (*(v15 + 48))(v14, 1, v10);
  v35 = v6;
  v37 = v11;
  if (v21 == 1)
  {
    v22 = v5;
    v23 = v36;
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v34 = v12;
    v24 = v6;
    v25 = v39;
    v33 = *(v15 + 32);
    v33(v19, v14, v10);
    v26 = *(v3 + *(v25 + 56));
    v27 = v36;
    v22 = v5;
    if (((*(v5 + 32))(v36, v26, v24, v5) & 1) == 0)
    {
      v30 = v38;
      v33(v38, v19, v10);
      v28 = v30;
      v29 = 0;
      v12 = v34;
      goto LABEL_7;
    }

    v23 = v27;
    (*(v15 + 8))(v19, v10);
    v12 = v34;
  }

  v28 = v38;
  (*(v22 + 40))(v23, v35, v22);
  v29 = 1;
LABEL_7:
  (*(v12 + 8))(v3 + v20, v37);
  (*(v15 + 16))(v3 + v20, v28, v10);
  (*(v15 + 56))(v3 + v20, 0, 1, v10);
  *(v3 + *(v39 + 56)) = 0;
  return v29;
}

uint64_t $defer #1 <A, B><A1>() in SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for SizeFittingTextCacheValue(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *(v15 - 8);
  (*(v21 + 16))(&v24 - v19, a2, v15, v18);
  (*(v21 + 56))(v20, 0, 1, v15);
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a6;
  v26[3] = a7;
  v22 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v26);
  return (*(v17 + 40))(v25 + *(v22 + 52), v20, v16);
}

uint64_t SizeFittingTextCache.CacheEntry.narrowerVariant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  (*(v10 + 48))(v5, v10, v6);
  result = SizeFittingTextCache.CacheEntry.init(resolver:)(v8, v5, *(a1 + 24), v10, *(a1 + 40), a2);
  *(a2 + *(a1 + 56)) = *(v2 + *(a1 + 56));
  return result;
}

double specialized SizeFittingTextCache.input.setter(__int128 *a1, char a2)
{
  v16 = *a1;
  v17 = a1[1];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (a2)
  {
    swift_beginAccess();
    v6 = v2[5];
    v7 = v6[2];
    if (v7)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[5] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_10:
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      }

      for (i = 0; i != v7; ++i)
      {
        if (i >= v6[2])
        {
          __break(1u);
          goto LABEL_10;
        }

        type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
        *(v6 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * i + *(v10 + 56)) = 1;
      }

      v2[5] = v6;
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v11 = v2[12];
  v12 = v2[13];
  v13 = v2[14];
  v14 = v2[15];
  *(v2 + 6) = v16;
  *(v2 + 7) = v17;
  v2[16] = v3;
  v2[17] = v4;
  v2[18] = v5;
  outlined consume of Text?(v11, v12, v13, v14);

  return result;
}

double specialized SizeFittingTextCache.input.setter(uint64_t a1, char a2)
{
  type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool)(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  outlined init with take of ResolvableStringResolutionContext(a1, &v24[-v10], type metadata accessor for ResolvableStringResolutionContext);
  v11[*(v6 + 56)] = a2;
  outlined init with copy of ResolvedTextHelper(v11, v8, type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool));
  v12 = v8[*(v6 + 56)];
  outlined destroy of ResolvableStringResolutionContext(v8, type metadata accessor for ResolvableStringResolutionContext);
  if (v12 == 1)
  {
    swift_beginAccess();
    v13 = v2[5];
    v14 = v13[2];
    if (v14)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[5] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_16:
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      }

      v16 = v13[2];
      v17 = v14 - 1;
      if (v16 < v14 - 1)
      {
        v17 = v13[2];
      }

      if (v17 > 1)
      {
        v18 = v17 & 0x7FFFFFFFFFFFFFFELL;
        v19 = v13 + 15;
        v20 = v18;
        do
        {
          *(v19 - 48) = 1;
          *v19 = 1;
          v19 += 96;
          v20 -= 2;
        }

        while (v20);
      }

      else
      {
        v18 = 0;
      }

      v21 = 48 * v18 + 72;
      do
      {
        if (v18 >= v16)
        {
          __break(1u);
          goto LABEL_16;
        }

        ++v18;
        *(v13 + v21) = 1;
        v21 += 48;
      }

      while (v14 != v18);
      v2[5] = v13;
      swift_endAccess();
    }
  }

  outlined init with take of ResolvableStringResolutionContext(v11, v8, type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool));
  v22 = *(*v2 + 144);
  swift_beginAccess();
  outlined assign with take of ResolvableStringResolutionContext(v8, v2 + v22);
  swift_endAccess();
  return result;
}

void SizeFittingTextCache.withValue<A>(for:compute:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 8);
  v10 = a1[2];
  v11 = *(a1 + 24);
  v12 = *a1;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  SizeFittingTextCache.sizeVariant(for:)(&v12, &v16);
  SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v16, _ViewInputs.base.modify, 0, a2, a3, a4, a5);
}

{
  v5 = *a1;
  SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v5, _ViewInputs.base.modify, 0, a2, a3, a4, a5);
}

void SizeFittingTextCache.sizeVariant(for:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  SizeFittingTextCache.suggestedVariant(for:)(&v8, &v12);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v7);
    swift_beginAccess();
    LOBYTE(v12) = v4;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(v3, v4, v5, v6, partial apply for closure #1 in SizeFittingTextCache.sizeVariant(for:), a2);
    swift_endAccess();
  }

  else
  {
    *a2 = v12;
  }
}

void closure #1 in SizeFittingTextCache.sizeVariant(for:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v34 = a7;
  v10 = *a2;
  v11 = *a1;
  v12 = *(a1 + 8);
  v37 = *(*a2 + 80);
  v39 = v37;
  v36 = v10[11];
  v40 = v36;
  v35 = v10[12];
  v41 = v35;
  v13 = v10[13];
  v42 = v13;
  v43 = a3;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v44 = a4 & 1;
  v45 = a5;
  v46 = a6 & 1;
  v47[0] = v14;
  SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v47, _ViewInputs.base.modify, 0, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v38, MEMORY[0x1E69E6370], v49);
  if (v49[0] == 1)
  {
    if (v14 >= 1)
    {
      do
      {
        v14 = v11;
        if (!v11)
        {
          break;
        }

        --v11;
        MEMORY[0x1EEE9AC00](v17);
        v26 = v37;
        v27 = v36;
        v28 = v35;
        v29 = v13;
        v30 = a3;
        v31 = a4 & 1;
        v32 = a5;
        v33 = a6 & 1;
        v47[0] = v11;
        SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v47, _ViewInputs.base.modify, 0, partial apply for closure #2 in closure #1 in SizeFittingTextCache.sizeVariant(for:), v25, MEMORY[0x1E69E6370], v49);
      }

      while ((v49[0] & 1) != 0);
    }

    *v34 = v14;
  }

  else
  {
    v18 = __OFADD__(v14, 1);
    v19 = v14 + 1;
    if (v18)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v50 = v19;
      swift_beginAccess();
      while (1)
      {
        specialized getter of narrowerVariantsMightExist #1 in closure #1 in SizeFittingTextCache.sizeVariant(for:)(&v50, a2);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v19 = v50;
        MEMORY[0x1EEE9AC00](v20);
        v26 = v37;
        v27 = v36;
        v28 = v35;
        v29 = v13;
        v30 = a3;
        v31 = a4 & 1;
        v32 = a5;
        v33 = a6 & 1;
        v47[0] = v19;
        SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v47, _ViewInputs.base.modify, 0, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v25, MEMORY[0x1E69E6370], v48);
        if (v48[0])
        {
          break;
        }

        v18 = __OFADD__(v19++, 1);
        if (v18)
        {
          __break(1u);
          goto LABEL_21;
        }

        v50 = v19;
      }

      swift_beginAccess();
      v21 = a2[5];

      v47[0] = v37;
      v47[1] = v36;
      v47[2] = v35;
      v47[3] = v13;
      v22 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v47);
      v23 = MEMORY[0x193ABF270](v21, v22);

      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_22;
      }

      if (v24 >= v19)
      {
        v24 = v19;
      }

      *v34 = v24;
    }
  }
}

uint64_t specialized SizeFittingTextCacheValue.fits(_:)(unint64_t a1, char a2, unint64_t a3, char a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v8 = a4;
  v11 = *&a1;
  v12 = *v6;
  v13 = *(v6 + 24);
  if (!v13)
  {
    if (a2)
    {
      if (a4)
      {
        swift_beginAccess();
        goto LABEL_29;
      }

      a5.n128_u64[0] = 0x7FF0000000000000;
    }

    else
    {
      a5.n128_u64[0] = a1;
      if (a4)
      {
        a6.n128_u64[0] = 0x7FF0000000000000;
        goto LABEL_11;
      }
    }

    a6.n128_u64[0] = a3;
LABEL_11:
    v53 = 0u;
    v54 = 0u;
    v55 = 1;
    (*(*v12 + 264))(v43, &v53, a5, a6);
    if (v44)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v45 = *v6;
  v14 = *(*v13 + 112);

  LOBYTE(v43[0]) = a2 & 1;
  LOBYTE(v53) = v8 & 1;
  v14(*&v11);
  v45 = *&v12;
  v56.origin.x = (*(*v13 + 104))(&v45);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v19 = CGRectGetWidth(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v20.n128_u64[0] = CGRectGetHeight(v57);
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  (*(*v12 + 264))(v43, &v53, v19, v20);

  if (v44)
  {
LABEL_3:
    v21 = 0;
    return v21 & 1;
  }

LABEL_12:
  swift_beginAccess();
  if (v12[97])
  {
    if (v8)
    {
      goto LABEL_29;
    }

    v23 = *(v6 + 8);
    v22 = *(v6 + 16);
    if (v22)
    {
      v45 = *(v7 + 8);
      v24 = *(*v22 + 112);

      LOBYTE(v50) = a2 & 1;
      v24(*&v11);
      v26 = v25;

      if (v26 <= *&a3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = v11;
      v46 = a2 & 1;
      v47 = 0;
      v48 = 1;
      (*(*v23 + 232))(&v45);
      v26 = v33;
      if (v33 <= *&a3)
      {
        goto LABEL_29;
      }
    }

    v34 = v26 + -1.0;
    v32 = v26 + -1.0;
    v31 = (a2 & 1) != 0;
    goto LABEL_25;
  }

  v21 = 1;
  if ((a2 & 1) == 0)
  {
    v27 = v11;
    v28 = *(v7 + 8);
    v29 = *(v7 + 16);
    v45 = 0.0;
    v46 = 1;
    v47 = a3;
    v48 = v8 & 1;
    StyledTextLayoutEngine.sizeThatFits(_:)(&v45, v28, v29);
    if (v30 > v11)
    {
      v11 = v30 + -1.0;
      if (v30 + -1.0 > v27)
      {
        v31 = 0;
        v32 = *&a3;
        goto LABEL_27;
      }

      if (v8)
      {
        return v21 & 1;
      }

      v31 = 0;
      v34 = *&a3;
      v32 = *&a3;
LABEL_25:
      if (v34 > *&a3)
      {
        v8 = 0;
LABEL_27:
        if (v13)
        {
          v45 = *&v12;
          v35 = *(*v13 + 112);

          LOBYTE(v50) = v31;
          v35(*&v11, v31, *&v32, v8 & 1, &v45);
          v45 = *&v12;
          v58.origin.x = (*(*v13 + 104))(&v45);
          v36 = v58.origin.x;
          v37 = v58.origin.y;
          v38 = v58.size.width;
          v39 = v58.size.height;
          v40 = CGRectGetWidth(v58);
          v59.origin.x = v36;
          v59.origin.y = v37;
          v59.size.width = v38;
          v59.size.height = v39;
          v41.n128_u64[0] = CGRectGetHeight(v59);
          v50 = 0u;
          v51 = 0u;
          v52 = 1;
          (*(*v12 + 264))(&v45, &v50, v40, v41);
        }

        else
        {
          if (v31 && (v8 & 1) != 0)
          {
            v21 = 1;
            return v21 & 1;
          }

          v50 = 0u;
          v51 = 0u;
          v52 = 1;
          (*(*v12 + 264))(&v45, &v50);
        }

        v21 = v49 ^ 1;
        return v21 & 1;
      }

LABEL_29:
      v21 = 1;
    }
  }

  return v21 & 1;
}

uint64_t SizeFittingTextCacheValue.fits(_:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v17 = *a1;
  v18 = v7 & 1;
  v19 = v8;
  v20 = v9;
  if (SizeFittingTextCacheValue.truncates(in:)(&v17, a2, a3, a4))
  {
    v10 = 0;
    return v10 & 1;
  }

  v12 = v6;
  v13 = *v4;
  swift_beginAccess();
  if (*(v13 + 97))
  {
    v10 = 1;
    if ((v9 & 1) == 0)
    {
      v17 = v12;
      v18 = v7 & 1;
      v19 = 0.0;
      v20 = 1;
      v14.n128_f64[0] = (*(*(a2 + 24) + 48))(&v17, 1, *(a2 + 16));
      if (v14.n128_f64[0] > v8)
      {
        v15.n128_u64[0] = -1.0;
        v14.n128_f64[0] = v14.n128_f64[0] + -1.0;
        if (v7)
        {
          v16 = 1;
          if (v14.n128_f64[0] <= v8)
          {
            return v10 & 1;
          }
        }

        else
        {
          v16 = 0;
          if (v14.n128_f64[0] <= v8)
          {
            return v10 & 1;
          }
        }

        v9 = 0;
LABEL_16:
        v17 = v12;
        v18 = v16;
        v19 = v14.n128_f64[0];
        v20 = v9;
        v10 = SizeFittingTextCacheValue.truncates(in:)(&v17, a2, v14, v15) ^ 1;
      }
    }
  }

  else
  {
    v10 = 1;
    if ((v7 & 1) == 0)
    {
      v17 = 0.0;
      v18 = 1;
      v19 = v8;
      v20 = v9;
      v14.n128_f64[0] = (*(*(a2 + 24) + 48))(&v17, 0, *(a2 + 16));
      if (v14.n128_f64[0] > v12)
      {
        v15.n128_f64[0] = v14.n128_f64[0] + -1.0;
        if (v14.n128_f64[0] + -1.0 > v12)
        {
          v16 = 0;
          v12 = v14.n128_f64[0] + -1.0;
          v14.n128_f64[0] = v8;
          goto LABEL_16;
        }
      }
    }
  }

  return v10 & 1;
}

void specialized getter of narrowerVariantsMightExist #1 in closure #1 in SizeFittingTextCache.sizeVariant(for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  swift_beginAccess();
  v4 = a2[5];

  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  v6 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v8);
  v7 = MEMORY[0x193ABF270](v4, v6);

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }
}

void specialized ClosestFitCache.callAsFunction(for:makeValue:)(double a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, int64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, int64_t a8, char a9)
{
  LOBYTE(v9) = a9;
  specialized ClosestFitCache.callAsFunction(for:makeValue:)(a1, a2, a3, a4, a5, a6, a7, a8, v9, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:));
}

{
  LOBYTE(v9) = a9;
  specialized ClosestFitCache.callAsFunction(for:makeValue:)(a1, a2, a3, a4, a5, a6, a7, a8, v9, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:), partial apply for specialized closure #2 in SizeFittingTextCache.suggestedVariant(for:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:));
}

void specialized ClosestFitCache.callAsFunction(for:makeValue:)(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, int64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, int64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(double), uint64_t a12, uint64_t a13)
{
  v14 = a5[1];
  v15 = *(v14 + 16);
  v52 = (a5 + 1);
  v55 = v14;
  if (!v15)
  {
    v29 = 0;
    v46 = 0;
LABEL_46:
    v54 = 1;
LABEL_49:
    v30 = a11;
    v32 = MEMORY[0x1EEE9AC00](*&a1);
    if ((a11)(v29, _ViewInputs.base.modify, 0, v32))
    {
      if (v29 >= 1)
      {
        v33 = v29 + 1;
        do
        {
          v29 = v33 - 1;
          if (v33 == 1)
          {
            break;
          }

          v34 = MEMORY[0x1EEE9AC00](v33 - 2);
          v35 = a11(v34);
          v33 = v29;
        }

        while ((v35 & 1) != 0);
      }

      if (v54)
      {
LABEL_55:
        v30 = v55;
        a8 = *(v55 + 16);
        goto LABEL_73;
      }
    }

    else
    {
      if (__OFADD__(v29++, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v56 = v29;
      swift_beginAccess();
      v37 = swift_beginAccess();
      while (1)
      {
        v38 = *(*(a6 + 40) + 16) - 1;
        if (v29 >= v38 && (*(a6 + 32) & 1) != 0)
        {
          break;
        }

        v29 = v56;
        v39 = MEMORY[0x1EEE9AC00](v37);
        v37 = (a11)(v56, _ViewInputs.base.modify, 0, a13, v39);
        if (v37)
        {
          v38 = *(*(a6 + 40) + 16) - 1;
          break;
        }

        v29 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        ++v56;
      }

      if (v38 < v29)
      {
        v29 = v38;
      }

      if (v54)
      {
        goto LABEL_55;
      }
    }

    v30 = v55;
    if ((v46 & 0x8000000000000000) == 0)
    {
      a8 = *(v55 + 16);
      if (v46 < a8)
      {
        if (v29 == *(v55 + 40 * v46 + 64))
        {
          if (v46)
          {
            specialized MutableCollection.swapAt(_:_:)(v46, v46 - 1);
          }

          goto LABEL_83;
        }

LABEL_73:
        v40 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (a8 < v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_75:
            v43 = *(v30 + 2);
            v42 = *(v30 + 3);
            if (v43 >= v42 >> 1)
            {
              v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v30);
            }

            *(v30 + 2) = v43 + 1;
            v44 = &v30[40 * v43];
            *(v44 + 4) = a1;
            v44[40] = a2 & 1;
            *(v44 + 6) = a3;
            v44[56] = a4 & 1;
            *(v44 + 8) = v29;
            goto LABEL_82;
          }

LABEL_88:
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a8 + 1, 1, v30);
          goto LABEL_75;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (a8)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          if (a8)
          {
LABEL_80:
            if (a8 <= *(v30 + 2))
            {
              v45 = &v30[40 * a8];
              *(v45 - 1) = a1;
              *v45 = a2 & 1;
              *(v45 + 1) = a3;
              v45[16] = a4 & 1;
              *(v45 + 3) = v29;
LABEL_82:

              *v52 = v30;
LABEL_83:
              *a7 = v29;
              return;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }
        }

        __break(1u);
        goto LABEL_91;
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v16 = 0;
  v17 = 0;
  if (a2)
  {
    v18 = INFINITY;
  }

  else
  {
    v18 = a1;
  }

  v19 = (v14 + 56);
  v20 = 1;
  v21 = INFINITY;
  do
  {
    if (*(v19 - 16))
    {
      v22 = INFINITY;
    }

    else
    {
      v22 = *(v19 - 3);
    }

    if ((a2 & 1) == 0 && v22 > a1)
    {
      goto LABEL_9;
    }

    if (*v19)
    {
      v23 = INFINITY;
    }

    else
    {
      v23 = *(v19 - 1);
    }

    if (a4)
    {
      v24 = INFINITY;
      if (v22 != INFINITY || v23 != INFINITY)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 > a3)
      {
        goto LABEL_9;
      }

      v28 = v22 == INFINITY && v23 == INFINITY;
      v24 = a3;
      if (!v28)
      {
LABEL_23:
        v26 = v18 - v22;
        v27 = v24 - v23;
        if (v27 < v26)
        {
          v26 = v27;
        }

        if (v26 >= v21)
        {
          goto LABEL_9;
        }

        goto LABEL_34;
      }
    }

    v26 = 0.0;
    if (v21 <= 0.0)
    {
      goto LABEL_9;
    }

LABEL_34:
    if (*(v19 - 2))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = 0;
      if ((a2 & 1) != 0 || *(v19 - 3) != a1)
      {
        goto LABEL_8;
      }
    }

    if (*v19)
    {
      if (a4)
      {
        goto LABEL_42;
      }

LABEL_7:
      v20 = 0;
LABEL_8:
      v16 = v17;
      v21 = v26;
      goto LABEL_9;
    }

    v20 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

    v16 = v17;
    v21 = v26;
    if (*(v19 - 1) == a3)
    {
LABEL_42:
      v16 = v17;
      goto LABEL_47;
    }

LABEL_9:
    ++v17;
    v19 += 5;
  }

  while (v15 != v17);
  if (v20)
  {
    v46 = v16;
    v29 = 0;
    goto LABEL_46;
  }

LABEL_47:
  if (v16 < v15)
  {
    v54 = 0;
    v46 = v16;
    v29 = *(v14 + 32 + 40 * v16 + 32);
    goto LABEL_49;
  }

LABEL_92:
  __break(1u);
}

uint64_t specialized ClosestFitCache.callAsFunction(for:makeValue:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, void *(*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, void *a6@<X8>)
{
  v13 = *(v6 + 8);
  v14 = *(v13 + 16);
  v41 = (v6 + 8);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    if (a2)
    {
      v17 = INFINITY;
    }

    else
    {
      v17 = a1;
    }

    v18 = (v13 + 56);
    v19 = 1;
    v20 = INFINITY;
    while (1)
    {
      if (*(v18 - 16))
      {
        v21 = INFINITY;
      }

      else
      {
        v21 = *(v18 - 3);
      }

      if ((a2 & 1) == 0 && v21 > a1)
      {
        goto LABEL_9;
      }

      if (*v18)
      {
        v22 = INFINITY;
      }

      else
      {
        v22 = *(v18 - 1);
      }

      if (a4)
      {
        v23 = INFINITY;
        if (v21 != INFINITY || v22 != INFINITY)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v22 > a3)
        {
          goto LABEL_9;
        }

        v27 = v21 == INFINITY && v22 == INFINITY;
        v23 = a3;
        if (!v27)
        {
LABEL_23:
          v25 = v17 - v21;
          v26 = v23 - v22;
          if (v26 < v25)
          {
            v25 = v26;
          }

          if (v25 >= v20)
          {
            goto LABEL_9;
          }

          goto LABEL_34;
        }
      }

      v25 = 0.0;
      if (v20 <= 0.0)
      {
        goto LABEL_9;
      }

LABEL_34:
      if ((*(v18 - 2) & 1) == 0)
      {
        v19 = 0;
        if ((a2 & 1) != 0 || *(v18 - 3) != a1)
        {
          goto LABEL_8;
        }

LABEL_39:
        if ((*v18 & 1) == 0)
        {
          v19 = 0;
          if ((a4 & 1) == 0)
          {
            v15 = v16;
            v20 = v25;
            if (*(v18 - 1) == a3)
            {
              goto LABEL_46;
            }

            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a4)
        {
          goto LABEL_46;
        }

        goto LABEL_7;
      }

      if (a2)
      {
        goto LABEL_39;
      }

LABEL_7:
      v19 = 0;
LABEL_8:
      v15 = v16;
      v20 = v25;
LABEL_9:
      ++v16;
      v18 += 5;
      if (v14 == v16)
      {
        v16 = v15;
        if (v19)
        {
          break;
        }

LABEL_46:
        if (v16 >= v14)
        {
          __break(1u);
          goto LABEL_65;
        }

        v28 = v6;
        v40 = a1;
        v9 = a6;
        v30 = v13 + 32 + 40 * v16;
        v32 = *(v30 + 32);
        v31 = (v30 + 32);
        v42 = v32;
        v43 = 0;
        result = a5(&v44, &v42);
        if (v7)
        {
          return result;
        }

        v6 = *(v13 + 16);
        if (v16 >= v6)
        {
          goto LABEL_69;
        }

        v33 = *v31;
        if (v44 == v33)
        {
          if (v16)
          {
            result = specialized MutableCollection.swapAt(_:_:)(v16, v16 - 1);
          }

          goto LABEL_62;
        }

        v16 = *&a3;
        a1 = v40;
LABEL_53:
        if (v6 < *v28)
        {
          v8 = v44;
          result = swift_isUniquelyReferenced_nonNull_native();
          v39 = a1;
          if (result)
          {
LABEL_55:
            v35 = *(v13 + 16);
            v34 = *(v13 + 24);
            if (v35 >= v34 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v35 + 1;
            v36 = v13 + 40 * v35;
            *(v36 + 32) = v39;
            *(v36 + 40) = a2 & 1;
            *(v36 + 48) = v16;
            *(v36 + 56) = a4 & 1;
            *(v36 + 64) = v8;
            *v41 = v13;
            v33 = v44;
LABEL_62:
            *v9 = v33;
            return result;
          }

LABEL_65:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v13);
          v13 = result;
          goto LABEL_55;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (v6)
          {
LABEL_60:
            if (v6 <= *(v13 + 16))
            {
              v37 = v13 + 40 * v6;
              *(v37 - 8) = a1;
              *v37 = a2 & 1;
              *(v37 + 8) = v16;
              *(v37 + 16) = a4 & 1;
              v33 = v44;
              *(v37 + 24) = v44;
              *v41 = v13;
              goto LABEL_62;
            }

LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v13 = result;
          if (v6)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
        goto LABEL_68;
      }
    }
  }

  v28 = v6;
  v16 = *&a3;
  v9 = a6;
  v42 = 0;
  v43 = 1;
  result = a5(&v44, &v42);
  if (!v7)
  {
    v6 = *(v13 + 16);
    goto LABEL_53;
  }

  return result;
}

void SizeFittingTextCache.suggestedVariant(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v43 = v5;
  v6 = v5[11];
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v32 - v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(v7 + 16);
  v40 = v5[17];
  v41 = v16;
  v42 = v7 + 16;
  (v16)(v32 - v9, &v3[v40], v6, v8);
  v47 = v12;
  v52 = v12;
  v46 = v13;
  v53 = v13;
  v45 = v14;
  v54 = v14;
  v44 = v15;
  v55 = v15;
  v17 = v5[13];
  v18 = v17[1];
  v18(&v50, &v52, v6, v17);
  v19 = *(v7 + 8);
  v19(v10, v6);
  v20 = v50;
  if (v51)
  {
    v21 = 1;
    goto LABEL_10;
  }

  v36 = v19;
  v37 = v18;
  v39 = a2;
  v22 = swift_allocObject();
  v38 = v32;
  *(v22 + 16) = 0;
  v52 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v23 = v43;
  v35 = v43[10];
  v32[-8] = v35;
  v32[-7] = v6;
  v34 = v23[12];
  v32[-6] = v34;
  v32[-5] = v17;
  v32[-4] = v47;
  LOBYTE(v32[-3]) = v46;
  v32[-2] = v45;
  LOBYTE(v32[-1]) = v44;

  v43 = v17;
  SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v52, partial apply for closure #1 in SizeFittingTextCache.suggestedVariant(for:), v22, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), &v32[-10], MEMORY[0x1E69E6370], &v50);

  v24 = v50;
  swift_beginAccess();
  if (*(v22 + 16) != 1)
  {

    if (!v24)
    {
      v20 = 0;
    }

    v21 = v24 ^ 1;
    goto LABEL_9;
  }

  v32[1] = 0;
  v38 = v22;
  v33 = v20;
  v41(v10, &v3[v40], v6);
  v52 = v47;
  v25 = v46;
  v53 = v46;
  v54 = v45;
  v26 = v44;
  v55 = v44;
  v27 = v43;
  v37(&v48, &v52, v6, v43);
  v28 = v36(v10, v6);
  v29 = v48;
  if (v49)
  {

    v21 = 1;
    v20 = v29;
LABEL_9:
    a2 = v39;
    goto LABEL_10;
  }

  a2 = v39;
  if (v48 == v33)
  {

    v21 = 0;
    v20 = v29;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    v32[-8] = v35;
    v32[-7] = v6;
    v32[-6] = v34;
    v32[-5] = v27;
    v32[-4] = v30;
    LOBYTE(v32[-3]) = v25;
    v32[-2] = v31;
    LOBYTE(v32[-1]) = v26;
    v52 = v29;
    SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v52, _ViewInputs.base.modify, 0, partial apply for closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), &v32[-10], MEMORY[0x1E69E6370], &v48);

    if (v48)
    {
      v20 = v29;
    }

    else
    {
      v20 = 0;
    }

    v21 = v48 ^ 1;
  }

LABEL_10:
  *a2 = v20;
  *(a2 + 8) = v21;
}

uint64_t closure #1 in closure #1 in SizeFittingTextCache.sizeVariant(for:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, _BYTE *a7@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  result = SizeFittingTextCacheValue.fits(_:)(&v15, v11, v12, v13);
  *a7 = result & 1;
  return result;
}

void SizeFittingTextCache.withValue<A>(for:onChange:compute:)(Swift::Int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v89 = a5;
  v71 = a4;
  v86 = a2;
  v87 = a3;
  v12 = *v8;
  v13 = *(*v8 + 96);
  v14 = *(*v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v69 - v19;
  v20 = *(v12 + 88);
  v88 = v14;
  *&v21 = v14;
  v85 = v20;
  *(&v21 + 1) = v20;
  v22 = v12;
  v23 = v13;
  *&v24 = v13;
  v84 = *(v22 + 104);
  *(&v24 + 1) = v84;
  v95[1] = v24;
  v95[0] = v21;
  v25 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v95);
  v72 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v82 = &v69 - v29;
  v30 = *a1;
  swift_beginAccess();

  v32 = MEMORY[0x193ABF270](v31, v25);
  v33 = v30;

  if (v30 < v32)
  {
    v34 = *(*v8 + 144);
    swift_beginAccess();
    (*(v79 + 16))(v91, v8 + v34, AssociatedTypeWitness);
    v94[0] = v30;
    v35 = a6;
    v36 = onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v94, v8, v86, v87, a6);
    v38 = v37;
    v90 = &v69;
    MEMORY[0x1EEE9AC00](v36);
    v39 = v85;
    *(&v69 - 8) = v88;
    *(&v69 - 7) = v39;
    *(&v69 - 6) = v35;
    *(&v69 - 5) = v40;
    v41 = v71;
    *(&v69 - 4) = v84;
    *(&v69 - 3) = v41;
    *(&v69 - 2) = v89;
    swift_beginAccess();
    v88 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    Array._checkSubscript_mutating(_:)(v30);
    v89 = v38;
    SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v91, v36, v38, partial apply for closure #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:), (&v69 - 10), v25, v35, a7);
    (*(v79 + 8))(v91, AssociatedTypeWitness);
    _ViewInputs.base.modify();
LABEL_14:
    swift_endAccess();

    return;
  }

  v80 = *(*v8 + 144);
  swift_beginAccess();
  v42 = *(v8 + 32);
  v69 = a7;
  v81 = v23;
  if (v42)
  {
LABEL_11:
    v44 = v89;
  }

  else
  {
    v43 = (v72 + 8);
    v76 = (v79 + 16);
    v75 = (v79 + 8);
    v73 = (v72 + 16);
    v44 = v89;
    v74 = v33;
    v78 = a6;
    v77 = (v72 + 8);
    v45 = v83;
    do
    {
      getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v8, v94);
      if (v94[0] >= v33)
      {
        break;
      }

      getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v8, v94);
      v46 = v94[0] + 1;
      if (__OFADD__(v94[0], 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      v47 = a6;
      getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v8, v94);

      Array.subscript.getter();

      v48 = v82;
      SizeFittingTextCache.CacheEntry.narrowerVariant.getter(v25, v82);
      v91 = *v43;
      (v91)(v27, v25);
      v49 = AssociatedTypeWitness;
      (*v76)(v45, v8 + v80, AssociatedTypeWitness);
      v94[0] = v46;
      v50 = onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v94, v8, v86, v87, v47);
      v52 = v51;
      v90 = &v69;
      MEMORY[0x1EEE9AC00](v50);
      v53 = v85;
      *(&v69 - 6) = v88;
      *(&v69 - 5) = v53;
      v54 = v81;
      *(&v69 - 4) = v47;
      *(&v69 - 3) = v54;
      *(&v69 - 2) = v84;
      v55 = v96;
      SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v45, v56, v52, partial apply for closure #2 in SizeFittingTextCache.withValue<A>(for:onChange:compute:), (&v69 - 8), v25, MEMORY[0x1E69E6370], v94);
      (*v75)(v45, v49);

      v96 = v55;
      if ((v94[0] & 1) == 0)
      {
        (v91)(v48, v25);
        *(v8 + 32) = 1;
        a6 = v78;
        goto LABEL_11;
      }

      (*v73)(v27, v48, v25);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
      v43 = v77;
      (v91)(v48, v25);
      a6 = v78;
      v44 = v89;
      v33 = v74;
    }

    while (*(v8 + 32) != 1);
  }

  v58 = MEMORY[0x193ABF270](v57, v25);

  v59 = v58 - 1;
  if (!__OFSUB__(v58, 1))
  {
    v60 = v80;
    swift_beginAccess();
    v61 = v70;
    (*(v79 + 16))(v70, v8 + v60, AssociatedTypeWitness);
    v93[0] = v59;
    v62 = onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v93, v8, v86, v87, a6);
    v90 = &v69;
    v91 = v62;
    MEMORY[0x1EEE9AC00](v62);
    v63 = a6;
    v65 = v64;
    v66 = v85;
    *(&v69 - 8) = v88;
    *(&v69 - 7) = v66;
    v67 = v81;
    *(&v69 - 6) = v63;
    *(&v69 - 5) = v67;
    v68 = v71;
    *(&v69 - 4) = v84;
    *(&v69 - 3) = v68;
    *(&v69 - 2) = v44;
    swift_beginAccess();
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    Array._checkSubscript_mutating(_:)(v59);
    v89 = v65;
    SizeFittingTextCache.CacheEntry.withValue<A>(for:onChange:execute:)(v61, v91, v65, partial apply for closure #3 in SizeFittingTextCache.withValue<A>(for:onChange:compute:), (&v69 - 10), v25, v63, v69);
    (*(v79 + 8))(v61, AssociatedTypeWitness);
    _ViewInputs.base.modify();
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

uint64_t (*onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a2;
  v10[4] = v9;
  v10[5] = a3;
  v10[6] = a4;

  return partial apply for closure #1 in onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:);
}

void getter of currentVariant #1 in SizeFittingTextCache.withValue<A>(for:onChange:compute:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[5];

  v6 = *(v4 + 96);
  v9[0] = *(v4 + 80);
  v9[1] = v6;
  v7 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v9);
  v8 = MEMORY[0x193ABF270](v5, v7);

  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v8 - 1;
  }
}

char *SizeFittingTextCache.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  v2 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t SizeFittingTextCache.__deallocating_deinit()
{
  SizeFittingTextCache.deinit();

  return swift_deallocClassInstance();
}

void lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    v13[4] = v4;
    v13[5] = v5;
    type metadata accessor for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>(255, a2, a3, a4);
    v7 = v6;
    lazy protocol witness table accessor for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>(v6, v8, v9, v10);
    v13[0] = v11;
    v13[1] = &protocol witness table for Text;
    swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v7, v13);
    atomic_store(v12, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text> and conformance <> _ConditionalContent<A, B>);
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>)
  {
    type metadata accessor for ModifiedContent<Text, VariantThatFitsModifier>(255, a2, a3, a4);
    v7 = type metadata accessor for _ConditionalContent(a1, v5, &type metadata for Text, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Text, VariantThatFitsModifier>, Text>);
    }
  }
}

void type metadata accessor for ModifiedContent<Text, VariantThatFitsModifier>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Text, VariantThatFitsModifier>)
  {
    v4 = type metadata accessor for ModifiedContent(0, &type metadata for Text, &type metadata for VariantThatFitsModifier, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Text, VariantThatFitsModifier>);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>)
  {
    v8[2] = v4;
    v8[3] = v5;
    type metadata accessor for ModifiedContent<Text, VariantThatFitsModifier>(255, a2, a3, a4);
    v8[0] = &protocol witness table for Text;
    v8[1] = &protocol witness table for VariantThatFitsModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
    atomic_store(v7, &lazy protocol witness table cache variable for type ModifiedContent<Text, VariantThatFitsModifier> and conformance <> ModifiedContent<A, B>);
  }
}

uint64_t type metadata completion function for SizeFittingTextCache.CacheEntry(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for SizeFittingTextCacheValue(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SizeFittingTextCache.CacheEntry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64) + 7;
  v13 = ((v12 + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v11 | 7 | *(v6 + 80);
  if (v14 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((v13 + (((v11 | 7) + v7) & ~(v11 | 7))) | 1) <= 0x18)
  {
    v27 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v22 = (*(v9 + 48))((v19 + v11 + 8) & ~v11, v10, v27);
      v21 = ~v11;
      if (v22)
      {
LABEL_14:
        memcpy(((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8), v19, ((v12 + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_17:
        *(v18 + v13) = *(v19 + v13);
        return a1;
      }
    }

    else
    {
      v20 = *v19;
      if (*v19 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v21 = ~v11;
      if (v20 != -1)
      {
        goto LABEL_14;
      }
    }

    *v18 = *v19;
    v23 = (v18 + v11 + 8) & v21;
    v24 = (v19 + v11 + 8) & v21;
    v25 = *(v9 + 16);

    v25(v23, v24, v27);
    *((v12 + v23) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v24) & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_17;
  }

  v17 = *a2;
  *a1 = *a2;
  a1 = (v17 + ((v14 + 16) & ~v14));

  return a1;
}

double destroy for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + a1 + (v8 | 7)) & ~(v8 | 7));
  v10 = ~v8;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    if ((*(v7 + 48))((v9 + v8 + 8) & v10))
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *v9;
  if (*v9 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  if (v11 == -1)
  {
LABEL_7:

    (*(v7 + 8))((v9 + v8 + 8) & v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = v9 + 8;
  v15 = *(v8 + 64) + 7;
  v16 = (v15 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v16 + 8;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = (v11 + v14) & v13;
    v20 = (v12 + v14) & v13;
    v21 = *(v8 + 16);

    v21(v19, v20, AssociatedTypeWitness);
    *((v15 + v19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + v20) & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_8;
  }

  v18 = v16 + 8;
  if (!(*(v8 + 48))((v12 + v14) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  *(v11 + v18) = *(v12 + v18);
  return a1;
}

uint64_t assignWithCopy for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ~v9;
  v15 = v9 + 8;
  v16 = *(v8 + 64) + 7;
  v17 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v13 & 0x80000000) != 0)
  {
    v32 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = *(v8 + 48);
    v31 = v20((v11 + v15) & v14, v13, AssociatedTypeWitness);
    v19 = v20((v12 + v15) & v14, v13, AssociatedTypeWitness);
    v17 = v32;
    if (!v31)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        v25 = (v11 + v15) & v14;
        v26 = v12 + v15;
        v27 = v17;
        v28 = v26 & v14;
        (*(v8 + 24))(v25, v26 & v14, AssociatedTypeWitness);
        v29 = v16 + v28;
        v17 = v27;
        *((v16 + v25) & 0xFFFFFFFFFFFFFFF8) = *(v29 & 0xFFFFFFFFFFFFFFF8);

        goto LABEL_12;
      }

      (*(v8 + 8))((v11 + v15) & v14, AssociatedTypeWitness);

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *v12;
    if (*v12 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    v21 = (v11 + v15) & v14;
    v33 = v17;
    v22 = (v12 + v15) & v14;
    v23 = *(v8 + 16);

    v23(v21, v22, AssociatedTypeWitness);
    v24 = v16 + v22;
    v17 = v33;
    *((v16 + v21) & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);

    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v17);
LABEL_12:
  *(v11 + v17) = *(v12 + v17);
  return a1;
}

uint64_t initializeWithTake for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = v9 + 8;
  v15 = *(v8 + 64) + 7;
  v16 = (v15 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v16 + 8;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = (v11 + v14) & v13;
    v20 = (v12 + v14) & v13;
    (*(v8 + 32))(v19, v20, AssociatedTypeWitness);
    *((v15 + v19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + v20) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_8;
  }

  v18 = v16 + 8;
  if (!(*(v8 + 48))((v12 + v14) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  *(v11 + v18) = *(v12 + v18);
  return a1;
}

uint64_t assignWithTake for SizeFittingTextCache.CacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ~v9;
  v15 = v9 + 8;
  v16 = *(v8 + 64) + 7;
  v17 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v13 & 0x80000000) != 0)
  {
    v27 = ((v16 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = *(v8 + 48);
    v26 = v20((v11 + v15) & v14, v13, AssociatedTypeWitness);
    v19 = v20((v12 + v15) & v14, v13, AssociatedTypeWitness);
    v17 = v27;
    if (!v26)
    {
LABEL_5:
      if (!v19)
      {
        *v11 = *v12;

        v23 = (v11 + v15) & v14;
        v24 = (v12 + v15) & v14;
        (*(v8 + 40))(v23, v24, AssociatedTypeWitness);
        *((v16 + v23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v24) & 0xFFFFFFFFFFFFFFF8);

        goto LABEL_12;
      }

      (*(v8 + 8))((v11 + v15) & v14, AssociatedTypeWitness);

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *v12;
    if (*v12 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v19)
  {
    *v11 = *v12;
    v21 = (v11 + v15) & v14;
    v22 = (v12 + v15) & v14;
    (*(v8 + 32))(v21, v22, AssociatedTypeWitness);
    *((v16 + v21) & 0xFFFFFFFFFFFFFFF8) = *((v16 + v22) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v17);
LABEL_12:
  *(v11 + v17) = *(v12 + v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for SizeFittingTextCache.CacheEntry(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12 - 1;
  }

  v15 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = v15 | 7;
  v17 = v15 + 8;
  v18 = (v15 | 7) + *(v6 + 64);
  if (a2 <= v14)
  {
    goto LABEL_23;
  }

  v19 = (v18 & ~v16) + ((*(*(AssociatedTypeWitness - 8) + 64) + (v17 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_10;
  }

  v23 = (a2 - v14 + ~(-1 << v20)) >> v20;
  if (v23 > 0xFFFE)
  {
    v21 = *&a1[v19];
    if (!v21)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v23 > 0xFE)
  {
    v21 = *&a1[v19];
    if (!*&a1[v19])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v23)
  {
LABEL_10:
    v21 = a1[v19];
    if (!a1[v19])
    {
      goto LABEL_23;
    }

LABEL_18:
    v24 = (v21 - 1) << v20;
    if (v19 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v14 + (v25 | v24) + 1;
  }

LABEL_23:
  if (v7 >= v13)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v26 = (&a1[v18] & ~v16);
    if ((v11 & 0x80000000) != 0)
    {
      v28 = (*(v10 + 48))((v26 + v17) & ~v15);
    }

    else
    {
      v27 = *v26;
      if (*v26 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for SizeFittingTextCache.CacheEntry(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v13 - 1;
  if (v13 - 1 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13 - 1;
  }

  v16 = ((*(v10 + 64) + ((v12 + 8) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = (v12 | 7) + *(v8 + 64);
  v18 = (v16 + (v17 & ~(v12 | 7))) | 1;
  if (a3 <= v15)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = (a3 - v15 + ~(-1 << (8 * v18))) >> (8 * v18);
    if (v22 > 0xFFFE)
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0xFF)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v15 >= a2)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      *&a1[v18] = 0;
    }

    else if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

LABEL_33:
    if (v9 >= v14)
    {
      v26 = *(v30 + 56);

      v26(a1, a2, v9, v7);
    }

    else
    {
      v24 = (&a1[v17] & ~(v12 | 7));
      if (v14 >= a2)
      {
        v27 = (a2 + 1);
        if ((v11 & 0x80000000) != 0)
        {
          v29 = *(v10 + 56);

          v29((v24 + v12 + 8) & ~v12, v27);
        }

        else
        {
          if ((v27 & 0x80000000) != 0)
          {
            v28 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v28 = a2;
          }

          *v24 = v28;
        }
      }

      else if (v16)
      {
        v25 = a2 - v13;
        bzero(v24, v16);
        *v24 = v25;
      }
    }

    return;
  }

  v20 = ~v15 + a2;
  if (v18 <= 3)
  {
    v21 = (v20 >> (8 * v18)) + 1;
    bzero(a1, v18);
    *a1 = v20 & ~(-1 << (8 * v18));
    if (v19 > 1)
    {
LABEL_14:
      if (v19 == 2)
      {
        *&a1[v18] = v21;
      }

      else
      {
        *&a1[v18] = v21;
      }

      return;
    }
  }

  else
  {
    bzero(a1, (v16 + (v17 & ~(v12 | 7))) | 1);
    *a1 = v20;
    v21 = 1;
    if (v19 > 1)
    {
      goto LABEL_14;
    }
  }

  if (v19)
  {
    a1[v18] = v21;
  }
}

uint64_t type metadata completion function for SizeFittingTextCacheValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SizeFittingTextCacheValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = (a1 + v6 + 8) & ~v6;
    v13 = (a2 + v6 + 8) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    *((v7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double destroy for SizeFittingTextCacheValue(void *a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

uint64_t *initializeWithCopy for SizeFittingTextCacheValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(v4 - 8) + 16;
  v7 = *(*(v4 - 8) + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;

  v5(v8, v9, v4);
  *((*(v6 + 48) + 7 + v8) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 48) + 7 + v9) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t *assignWithCopy for SizeFittingTextCacheValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10);
  *((*(v7 + 40) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 40) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *initializeWithTake for SizeFittingTextCacheValue(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  *((*(v5 + 32) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithTake for SizeFittingTextCacheValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10);
  *((*(v7 + 24) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 24) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SizeFittingTextCacheValue(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for SizeFittingTextCacheValue(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t static SizeFittingTextCache.Variants.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = v3 ^ 1u;
  if ((v3 & 1) == 0 && (*(a2 + 8) & 1) == 0)
  {
    return *a1 < *a2;
  }

  return result;
}

uint64_t static SizeFittingTextCache.Variants.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void SizeFittingTextCache.Variants.index(after:)(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int a3@<X2>, Swift::Int a4@<X3>, Swift::Int a5@<X4>, Swift::Int a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a1 + 8))
  {
    goto LABEL_10;
  }

  v8 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  swift_beginAccess();
  v14 = *(a2 + 40);

  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v15 = type metadata accessor for SizeFittingTextCache.CacheEntry(0, v21);
  v16 = MEMORY[0x193ABF270](v14, v15);

  if (v8 >= v16 && ((*(a2 + 32) & 1) != 0 || (MEMORY[0x1EEE9AC00](v17), v20[2] = a3, v20[3] = a4, v20[4] = a5, v20[5] = a6, v21[0] = v8, SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v21, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]), v18 = , v19 = MEMORY[0x193ABF270](v18, v15), , v8 >= v19)))
  {
    *a7 = 0;
    *(a7 + 8) = 1;
  }

  else
  {
    *a7 = v8;
    *(a7 + 8) = 0;
  }
}

uint64_t SizeFittingTextCache.Variants.subscript.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v1 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v2;
    v8[3] = v3;
    v8[4] = v4;
    v8[5] = v5;
    v6 = type metadata accessor for ResolvedStyledText();
    v10 = v1;
    SizeFittingTextCache.withValue<A>(for:onChange:compute:)(&v10, _ViewInputs.base.modify, 0, closure #1 in DynamicTextView.TextManager.resolve(in:for:), v8, v6, &v9);
    return v9;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance SizeFittingTextCache<A, B>.Variants(uint64_t **a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = SizeFittingTextCache.Variants.subscript.read(v4, a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance SizeFittingTextCache<A, B>.Variants;
}

void protocol witness for Collection.subscript.read in conformance SizeFittingTextCache<A, B>.Variants(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t (*SizeFittingTextCache.Variants.subscript.read(uint64_t *a1, uint64_t *a2))(void *a1)
{
  v2 = *(a2 + 8);
  v4 = *a2;
  v5 = v2;
  *a1 = SizeFittingTextCache.Variants.subscript.getter(&v4);
  return destroy for Image.ResizableProvider;
}

void protocol witness for Collection.formIndex(after:) in conformance SizeFittingTextCache<A, B>.Variants(uint64_t *a1, Swift::Int *a2)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = v3;
  SizeFittingTextCache.Variants.index(after:)(&v4, *v2, a2[2], a2[3], a2[4], a2[5], a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SizeFittingTextCache<A, B>.Variants(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for SizeFittingTextCache<A, B>.Variants, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SizeFittingTextCache<A, B>.Variants(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SizeFittingTextCache<A, B>.Variants, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t SizeFittingTextCacheValue.truncates(in:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(v4 + *(a2 + 40));
  if (!v9)
  {
    v18 = *v4;
    if (v6)
    {
      if (*(a1 + 24))
      {
        return 0;
      }

      a3.n128_u64[0] = 0x7FF0000000000000;
    }

    else
    {
      a3.n128_u64[0] = *a1;
      if (*(a1 + 24))
      {
        a4.n128_u64[0] = 0x7FF0000000000000;
LABEL_10:
        v22 = 0u;
        v23 = 0u;
        v24 = 1;
        (*(*v18 + 264))(v20, &v22, a3, a4);
        return v21;
      }
    }

    a4.n128_u64[0] = *(a1 + 16);
    goto LABEL_10;
  }

  v20[0] = *v4;
  v10 = v20[0];
  v11 = *(*v9 + 112);

  LOBYTE(v22) = v6;
  v11(v5, v6, v7, v8, v20);
  v20[0] = v10;
  v25.origin.x = (*(*v9 + 104))(v20);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v16 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v17.n128_u64[0] = CGRectGetHeight(v26);
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  (*(*v10 + 264))(v20, &v22, v16, v17);

  return v21;
}

uint64_t protocol witness for SizeFittingTextResolver.value(for:) in conformance ResolvedTextHelper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  v10 = *(a1 + 32);
  result = ResolvedTextHelper.resolve(_:with:sizeFitting:)(v3, v4, v5, v6, &v10, 1);
  if (result)
  {
    v9 = result;

    outlined copy of Text?(v3, v4, v5, v6);

    outlined consume of Text?(v3, v4, v5, v6);
    outlined copy of Text?(v3, v4, v5, v6);

    result = outlined consume of Text?(v3, v4, v5, v6);
    *a2 = v9;
    a2[1] = v9;
    a2[2] = v7;
    a2[3] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SizeFittingTextResolver.narrowerVariant.getter in conformance ResolvedTextHelper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = outlined init with copy of ResolvedTextHelper(v2, a2, type metadata accessor for ResolvedTextHelper);
  v6 = *(a1 + 64);
  v7 = *(a2 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v6) = v9;
    PropertyList.Tracker.reset()();
    outlined consume of Text?(a2[6], a2[7], a2[8], a2[9]);
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    v10 = *(a1 + 60);
    outlined destroy of ResolvableStringResolutionContext(a2 + v10, type metadata accessor for ResolvedTextHelper.NextUpdate);
    *(a2 + v10) = 0;
    type metadata accessor for ResolvedTextHelper.NextUpdate(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

double protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance VariantThatFitsModifier(uint64_t a1, uint64_t *a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19VariantThatFitsFlagV_Tt2g5(a2, 1);

  return result;
}

Swift::Void __swiftcall SizeFittingTextFilter.updateValue()()
{
  v79 = *MEMORY[0x1E69E9840];
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v59 - v3;
  v5 = *(v0 + 16);
  v65 = v0;
  LODWORD(v63) = *v0;
  Value = AGGraphGetValue();
  v7 = Value[1];
  v77 = *Value;
  v78 = v7;
  ViewSize.proposal.getter(&v74);
  v8 = *&v74;
  v9 = BYTE8(v74);
  v10 = v75;
  v11 = BYTE8(v75);
  LOBYTE(v69) = BYTE8(v74);
  v73[0] = BYTE8(v75);
  specialized SizeFittingTextCache.suggestedVariant(for:)(v74, SBYTE8(v74), v75, BYTE8(v75), &v71);
  if (BYTE8(v71))
  {
    swift_beginAccess();

    LOBYTE(v69) = v9;
    v73[0] = v11;
    LOBYTE(v58) = v11;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(v8, v9, *&v10, v11, (v5 + 16), v5, &v69, v10, v58, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:));
    swift_endAccess();
    v12 = v69;
  }

  else
  {
    v12 = v71;
    *&v69 = v71;
  }

  *&v77 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v12, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);
  v64 = type metadata accessor for ResolvedStyledText();
  AGGraphSetOutputValue();

  v13 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v12, _ViewInputs.base.modify, 0, closure #1 in closure #2 in SizeFittingTextFilter.updateValue(), 0);

  v14 = v12;
  if ((v13 & 1) == 0)
  {
    while (v14)
    {
      v15 = __OFSUB__(v14--, 1);
      if (v15)
      {
        goto LABEL_96;
      }

      v13 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v14, _ViewInputs.base.modify, 0, closure #1 in closure #2 in SizeFittingTextFilter.updateValue(), 0);

      if (v13)
      {
        goto LABEL_10;
      }
    }

    v14 = v12;
  }

LABEL_10:
  swift_beginAccess();
  v16 = *(v5 + 40);
  v17 = *(v16 + 16);
  if (v14 >= v17)
  {
    goto LABEL_13;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    v13 = v5;
    specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v14, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v16);
    v16 = *(v5 + 40);
    v17 = *(v16 + 16);
  }

  if (v14 >= v17)
  {
    goto LABEL_100;
  }

  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v2 = *(v2 + 72) * v14;
  outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v16 + v11 + v2, v4);
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((BYTE8(v77) & 1) == 0)
  {
    v18 = *&v77;
    if (*AGGraphGetValue() < v18)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v19 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      v20 = *(v19 + 376);
      if (v18 < v20)
      {
        v20 = v18;
      }

      *(v19 + 376) = v20;
    }
  }

  swift_beginAccess();
  v13 = *(v5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 40) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_101;
  }

  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    outlined assign with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v4, v13 + v11 + v2);
    *(v5 + 40) = v13;
    swift_endAccess();
    outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v4);
    v22 = AGGraphGetValue();
    v23 = v22[1];
    v77 = *v22;
    v78 = v23;
    v13 = &v77;
    ViewSize.proposal.getter(&v74);
    v24 = v74;
    v25 = BYTE8(v74);
    v26 = v75;
    v27 = BYTE8(v75);
    *(v5 + 56) = v14;
    *(v5 + 64) = v24;
    *(v5 + 72) = v25;
    *(v5 + 80) = v26;
    *(v5 + 88) = v27;
    if (*(v65 + 12) != 1)
    {
      return;
    }

    if (v12 < 0)
    {
      goto LABEL_103;
    }

    if (!v12)
    {
      break;
    }

    v11 = 0;
    LOBYTE(v28) = 0;
    while (1)
    {
      if (v28)
      {
        goto LABEL_119;
      }

      v15 = __OFADD__(v11++, 1);
      if (v15)
      {
        break;
      }

      if (v11 < *(*(v5 + 40) + 16))
      {
        v28 = 0;
      }

      else
      {
        v29 = *(v5 + 32);
        if (v29 == 1)
        {
          v11 = 0;
          v28 = 1;
        }

        else
        {
          v13 = v5;
          specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v11, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v29);
          v30 = *(*(v5 + 40) + 16);
          v28 = v11 >= v30;
          if (v11 >= v30)
          {
            v11 = 0;
          }
        }
      }

      if (!--v12)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *(v5 + 40) = v13;
  }

  v11 = 0;
  v28 = 0;
LABEL_37:
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    __break(1u);
    goto LABEL_116;
  }

  v32 = *OutputValue;
  specialized Collection.subscript.getter(v11, v28, v5, &v77);
  v33 = v32;

  specialized Collection.dropFirst(_:)(1, &v74);
  v2 = v74;
  v12 = BYTE8(v74);
  v63 = v75;
  v13 = v76;
  LOBYTE(v68) = BYTE8(v74);
  LODWORD(v65) = BYTE8(v75);
  v67 = BYTE8(v75);
  swift_beginAccess();
  if (v12)
  {
    goto LABEL_72;
  }

  v62 = v2;
  while (2)
  {
    v61 = v33;
    v4 = v68;
    v14 = v67;
    while (2)
    {
      v34 = v65;
      if (v2 != v63)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_73;
      }

      if (v4)
      {
        goto LABEL_114;
      }

      if (v2 < v62)
      {
        goto LABEL_97;
      }

      if (v2 < v63)
      {
        v35 = 1;
      }

      else
      {
        v35 = v14;
      }

      if (v35 != 1)
      {
        goto LABEL_99;
      }

      v36 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v2, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);
      v15 = __OFADD__(v2++, 1);
      if (v15)
      {
        goto LABEL_98;
      }

      if (v2 < *(*(v13 + 40) + 16))
      {
        v12 = 0;
        if ((*(v36 + 260) & 0x200) != 0)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v37 = *(v13 + 32);
      if (v37 == 1)
      {
        v2 = 0;
        v12 = 1;
        if ((*(v36 + 260) & 0x200) != 0)
        {
          goto LABEL_62;
        }

LABEL_60:

        if (v12)
        {
          goto LABEL_72;
        }

        continue;
      }

      break;
    }

    v38 = v36;
    specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v2, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v37);
    v36 = v38;
    v39 = *(*(v13 + 40) + 16);
    v12 = v2 >= v39;
    if (v2 >= v39)
    {
      v2 = 0;
    }

    if ((*(v36 + 260) & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_62:
    v66 = v12;
    v40 = v36;
    swift_beginAccess();
    v60 = v40;

    v12 = v61;
    v41 = objc_getAssociatedObject(v61, &smallerSizeVariantKey);
    swift_endAccess();
    if (v41)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    v74 = v71;
    v75 = v72;
    if (*(&v72 + 1))
    {
      if (swift_dynamicCast())
      {
        swift_beginAccess();

        objc_setAssociatedObject(v42, &largerSizeVariantKey, 0, 0);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Any?(&v74);
    }

    swift_beginAccess();
    v33 = v60;

    objc_setAssociatedObject(v12, &smallerSizeVariantKey, v33, 0x301);
    swift_endAccess();

    swift_beginAccess();

    objc_setAssociatedObject(v43, &largerSizeVariantKey, v12, 0);
    swift_endAccess();

    if ((v66 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_72:
  if ((v65 & 1) == 0)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_73:

  v14 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(0, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);

  v44 = v11 >= 0 || v28;
  if (v44 != 1)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
  }

  LOBYTE(v74) = 0;
  LOBYTE(v71) = v28;
  specialized Collection<>.subscript.getter(0, 0, v11, v28, v5, &v74);
  specialized Sequence.filter(_:)(&v74);
  v11 = v45;
  v46 = AGGraphGetOutputValue();
  if (!v46)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((*(*v46 + 260) & 0x200) == 0)
  {
    v11 = specialized Sequence.dropLast(_:)(1, v11);
  }

  if (v11 >> 62)
  {
LABEL_104:
    v47 = __CocoaSet.count.getter();
    if (!v47)
    {
      goto LABEL_105;
    }

LABEL_82:
    if (v47 >= 1)
    {
      v48 = 0;
      v65 = v11 & 0xC000000000000001;
      do
      {
        v50 = v14;
        if (v65)
        {
          v14 = MEMORY[0x193AC03C0](v48, v11);
        }

        else
        {
          v14 = *(v11 + 8 * v48 + 32);
        }

        swift_beginAccess();
        v51 = objc_getAssociatedObject(v14, &largerSizeVariantKey);
        swift_endAccess();
        if (v51)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v69 = 0u;
          v70 = 0u;
        }

        v71 = v69;
        v72 = v70;
        if (*(&v70 + 1))
        {
          if (swift_dynamicCast())
          {
            swift_beginAccess();

            objc_setAssociatedObject(v52, &smallerSizeVariantKey, 0, 0);
            swift_endAccess();
          }
        }

        else
        {
          outlined destroy of Any?(&v71);
        }

        ++v48;
        swift_beginAccess();

        objc_setAssociatedObject(v14, &largerSizeVariantKey, v50, 0x301);
        swift_endAccess();

        swift_beginAccess();

        objc_setAssociatedObject(v49, &smallerSizeVariantKey, v14, 0);
        swift_endAccess();
      }

      while (v47 != v48);
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_113;
  }

  v47 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    goto LABEL_82;
  }

LABEL_105:

  v53 = AGGraphGetOutputValue();
  if (!v53)
  {
    goto LABEL_117;
  }

  v54 = *v53;
  if (v14 != *v53)
  {

    v55 = ResolvedStyledText.largerSizeVariant.getter(&largerSizeVariantKey);
    if (v55)
    {
      v56 = v55;
      swift_beginAccess();
      objc_setAssociatedObject(v56, &smallerSizeVariantKey, 0, 0);
      swift_endAccess();
    }

    swift_beginAccess();

    objc_setAssociatedObject(v54, &largerSizeVariantKey, v14, 0x301);
    swift_endAccess();

    swift_beginAccess();

    objc_setAssociatedObject(v57, &smallerSizeVariantKey, v54, 0);
    swift_endAccess();
  }
}

BOOL closure #1 in closure #2 in SizeFittingTextFilter.updateValue()@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*a1 + 216))
  {
    result = NSAttributedString.isDynamic.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  if ((v3 & 1) == 0)
  {
    v6 = v2;
    do
    {
      while (1)
      {
        if ((v5 & 1) == 0 && v6 == v4)
        {
          goto LABEL_3;
        }

        if (v6 < v2)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if ((v5 & 1) == 0 && v6 >= v4)
        {
          goto LABEL_25;
        }

        v7 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v6, _ViewInputs.base.modify, 0, closure #1 in SizeFittingTextFilter.updateValue(), 0);
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_24;
        }

        v9 = v7;
        if (v6 < *(*(v1 + 40) + 16))
        {
          break;
        }

        v11 = *(v1 + 32);
        if (v11 == 1)
        {
          v6 = 0;
          v10 = 1;
          if ((*(v7 + 260) & 0x200) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v6, _ViewInputs.base.modify, 0, _ViewInputs.base.modify, 0, v11);
          v12 = *(*(v1 + 40) + 16);
          v10 = v6 >= v12;
          if (v6 >= v12)
          {
            v6 = 0;
          }

          if ((*(v9 + 260) & 0x200) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_5:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v10)
        {
          goto LABEL_2;
        }
      }

      v10 = 0;
      if ((*(v7 + 260) & 0x200) != 0)
      {
        goto LABEL_5;
      }

LABEL_21:
    }

    while (!v10);
  }

LABEL_2:
  if (v5)
  {
LABEL_3:
  }

  else
  {
LABEL_26:
    __break(1u);
  }
}

unint64_t specialized Sequence.dropLast(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (a1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v19 = 0;
      while (1)
      {
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x193AC03C0](v6, v2);
            v8 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              __break(1u);
              goto LABEL_27;
            }

            v7 = *(v2 + 8 * v6 + 32);

            v8 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_23;
            }
          }

          v9 = v20;
          v10 = *(v20 + 16);
          if (v10 >= v3)
          {
            break;
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          if (v8 == v5)
          {
            goto LABEL_29;
          }
        }

        if (v19 >= v10)
        {
          break;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v20);
          v20 = v9;
        }

        if (v19 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v9 + 8 * v19 + 32) = v7;

        specialized ContiguousArray._endMutation()();
        if ((v19 + 1) < v3)
        {
          v11 = v19 + 1;
        }

        else
        {
          v11 = 0;
        }

        v19 = v11;
        v6 = v8;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:

    v12 = v21;

    return v12;
  }

LABEL_24:
  if (!(v2 >> 62))
  {
    return v2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_33:
  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
LABEL_36:

    return MEMORY[0x1E69E7CC0];
  }

  v16 = v14;
  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v14, 0, v15);
  specialized Array._copyContents(initializing:)(v12 + 32, v16, v2);
  v18 = v17;

  if (v18 != v16)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v12;
}

void ResolvedStyledText.smallerSizeVariant.setter(void *a1, const void *a2, const void *a3, __n128 a4)
{
  v8 = ResolvedStyledText.largerSizeVariant.getter(a2);
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    objc_setAssociatedObject(v9, a3, 0, 0);
    swift_endAccess();
  }

  swift_beginAccess();

  objc_setAssociatedObject(v4, a2, a1, 0x301);
  swift_endAccess();

  if (a1)
  {
    swift_beginAccess();

    objc_setAssociatedObject(v10, a3, v4, 0);
    swift_endAccess();
  }
}

Swift::Void __swiftcall SizeFittingTextLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  v16 = v1;
  v2 = *Value;
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);

  outlined copy of Text.Storage(v2, v3, v4);
  v6 = AGGraphGetValue();
  v8 = v7;
  v9 = *v6;
  v10 = v6[1];
  type metadata accessor for TextRendererBoxBase();

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v12 = *WeakValue;
  }

  else
  {
    v12 = 0;
  }

  outlined copy of Text.Storage(v2, v3, v4);
  *&v17 = v2;
  *(&v17 + 1) = v3;
  v18 = v4;
  v19 = v5;
  v20 = v9;
  v21 = v10;
  v22 = v12;

  specialized SizeFittingTextCache.input.setter(&v17, (v16 | v8) & 1);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](CurrentAttribute);
    MEMORY[0x1EEE9AC00](v14);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v15, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));

    outlined consume of Text.Storage(v2, v3, v4);
  }
}

uint64_t SizeFittingTextLayoutComputer.Engine.layoutPriority()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

void closure #1 in SizeFittingTextLayoutComputer.Engine.layoutPriority()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = 1;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  SizeFittingTextCache.withValue<A>(for:compute:)(&v9, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.layoutPriority(), v8, MEMORY[0x1E69E63B0], &v13);
  *a1 = v13;
  *(a1 + 8) = 0;
}

void closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.layoutPriority()(double *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  *a3 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()@<X0>(_BYTE *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  result = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

void closure #1 in SizeFittingTextLayoutComputer.Engine.ignoresAutomaticPadding()(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = 1;
  v12 = 0;
  v13 = 1;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  SizeFittingTextCache.withValue<A>(for:compute:)(&v10, a8, v9, MEMORY[0x1E69E6370], &v14);
  *a1 = v14;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.requiresSpacingProjection()@<X0>(_BYTE *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  result = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t SizeFittingTextLayoutComputer.Engine.spacing()()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

double closure #1 in SizeFittingTextLayoutComputer.Engine.spacing()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = 1;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v9, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.spacing(), v8, &type metadata for Spacing, &v13);

  *a1 = v13;

  return result;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.spacing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:)(uint64_t *a1, uint64_t a2)
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

double closure #1 in SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a10;
  v14[6] = a3;
  v15 = a4 & 1;
  v16 = a5;
  v17 = a6 & 1;
  type metadata accessor for CGSize(0);
  v12 = v11;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v18, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:), v14, v12, &v22);

  result = *&v22;
  *a1 = v22;
  *(a1 + 16) = 0;
  return result;
}

void closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a7@<X8>)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  *a7 = (*(AssociatedConformanceWitness + 40))(&v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  *(a7 + 8) = v11;
}

uint64_t SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:)(uint64_t *a1, char a2, uint64_t a3)
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

void closure #1 in SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v11[2] = a8;
  v12 = a9;
  v13 = a10;
  v14 = a3;
  v15 = a4 & 1;
  v16 = a5;
  v17 = a6 & 1;
  v18 = a7 & 1;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v19, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:), v11, MEMORY[0x1E69E7DE0], &v23);

  *a1 = v23;
  *(a1 + 8) = 0;
}

void closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.lengthThatFits(_:in:)(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, double *a7@<X8>, uint64_t a8)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  *a7 = (*(AssociatedConformanceWitness + 48))(&v13, a5 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:)(_OWORD *a1, uint64_t a2, __n128 a3, double a4)
{
  AGGraphWithUpdate();
  result = 0;
  __break(1u);
  return result;
}

double closure #1 in SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v17 = a7;
  v18 = 0;
  v19 = a8;
  v20 = 0;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  *&v16[6] = a7;
  *&v16[7] = a8;
  *&v16[8] = a9;
  *&v16[9] = a10;
  *&v16[10] = a11;
  *&v16[11] = a12;
  _sypSgMaTm_3(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  v14 = v13;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v17, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:), v16, v14, &v21);

  *a1 = v21;

  return result;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.childGeometries(at:origin:)@<X0>(uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  *v16 = a4;
  *&v16[1] = a5;
  *&v16[2] = a6;
  *&v16[3] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  result = (*(AssociatedConformanceWitness + 56))(v16, AssociatedTypeWitness, AssociatedConformanceWitness, a8, a9);
  *a3 = result;
  return result;
}

void closure #1 in SizeFittingTextLayoutComputer.Engine.explicitAlignment(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v16 = a8;
  v17 = 0;
  v18 = a9;
  v19 = 0;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a3;
  *&v15[7] = a8;
  *&v15[8] = a9;
  *&v15[9] = a10;
  *&v15[10] = a11;
  _sypSgMaTm_3(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v13 = v12;

  SizeFittingTextCache.withValue<A>(for:compute:)(&v16, partial apply for closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.explicitAlignment(_:at:), v15, v13, &v20);

  v14 = v21;
  *a1 = v20;
  *(a1 + 8) = v14;
}

uint64_t closure #1 in closure #1 in SizeFittingTextLayoutComputer.Engine.explicitAlignment(_:at:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *v15 = a5;
  *&v15[1] = a6;
  *&v15[2] = a7;
  *&v15[3] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  result = (*(AssociatedConformanceWitness + 64))(a1, v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  *a4 = result;
  *(a4 + 8) = v14 & 1;
  return result;
}

uint64_t SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  LOBYTE(v11) = 1;
  v12 = 0;
  v13 = 1;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  SizeFittingTextCache.withValue<A>(for:compute:)(&v10, partial apply for closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter, v9, MEMORY[0x1E69E6158], v14);
  v6 = v14[0];
  v7 = v14[1];
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v10 = 0xD00000000000001ELL;
  v11 = 0x800000018DD75B20;
  MEMORY[0x193ABEDD0](v6, v7);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v10;
}

uint64_t closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter@<X0>(uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SizeFittingTextCacheValue(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  result = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v8)
  {
    v9 = result;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t *ResolvedStyledText.sizeVariant(_:)(uint64_t *result, __n128 a2)
{
  v3 = *result;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    if (ResolvedStyledText.largerSizeVariant.getter(&smallerSizeVariantKey))
    {
      v6 = v4;
      v2 = ResolvedStyledText.sizeVariant(_:)(&v6, v5);

      return v2;
    }

LABEL_5:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ResolvedStyledText.largerSizeVariant.getter(const void *a1)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, a1);
  swift_endAccess();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for ResolvedStyledText();
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v8);
    return 0;
  }
}

uint64_t specialized SizeFittingTextFilter.init(size:text:environment:time:referenceDate:includeDefaultAttributes:allowsKeyColors:archiveOptions:features:attachmentsAsAuxiliaryMetadata:idiom:)(unsigned int a1, uint64_t a2, int a3, int a4, unint64_t a5, int a6, unsigned int a7, char *a8, __int16 *a9, unsigned __int8 a10, __int128 *a11)
{
  v37 = a6;
  *&v38 = __PAIR64__(a1, a7);
  v12 = a5;
  v39 = a3;
  *(&v38 + 1) = a2;
  v36 = a10;
  v14 = HIDWORD(a5);
  v15 = type metadata accessor for ResolvedTextHelper(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a8;
  LOBYTE(a8) = a8[1];
  v20 = *a9;
  *&v18[*(v16 + 68)] = 0;
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  v35 = *a11;
  swift_storeEnumTagMultiPayload();
  *v18 = a4;
  *(v18 + 1) = v12;
  *(v18 + 2) = v14;
  v21 = v38;
  v18[12] = v37;
  v18[13] = v21;
  v18[14] = v19;
  v18[15] = a8;
  *(v18 + 8) = v20;
  *(v18 + 9) = v36;
  *(v18 + 24) = v35;
  type metadata accessor for PropertyList.Tracker();
  v22 = swift_allocObject();
  _sypSgMaTm_3(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v25 = MEMORY[0x1E69E7CC0];
  *(v23 + 24) = 0;
  *(v23 + 32) = v24;
  *(v23 + 40) = v24;
  *(v23 + 48) = v25;
  *(v23 + 56) = 0;
  *(v22 + 16) = v23;
  *(v18 + 5) = v22;
  *(v18 + 3) = 0u;
  *(v18 + 4) = 0u;
  *&v18[*(v16 + 72)] = 0;
  EnvironmentValues.init()(v40);
  v26 = v40[0];
  v27 = v40[1];
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextCache);
  v28 = swift_allocObject();
  *(v28 + 16) = 10;
  *(v28 + 24) = v25;
  *(v28 + 32) = 0;
  type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>(0);
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v30 = v29 - 8;
  v31 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of ResolvedTextHelper(v18, v32 + v31, type metadata accessor for ResolvedTextHelper);
  v33 = (v32 + v31 + *(v30 + 60));
  *v33 = 0u;
  v33[1] = 0u;
  *(v32 + v31 + *(v30 + 64)) = 0;
  outlined destroy of ResolvableStringResolutionContext(v18, type metadata accessor for ResolvedTextHelper);
  *(v28 + 40) = v32;
  *(v28 + 48) = 0;
  *(v28 + 50) = v41;
  *(v28 + 54) = v42;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 256;
  result = v38 >> 32;
  *(v28 + 96) = 0u;
  *(v28 + 112) = 0u;
  *(v28 + 128) = v26;
  *(v28 + 136) = v27;
  *(v28 + 144) = 0;
  return result;
}

BOOL specialized ResolvedTextHelper.shouldUpdate(for:inputChanged:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = v6;
  if ((a6 & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = *a5;
  v10 = v6[9];
  if (v10)
  {
    if (a4)
    {
      v11 = v6[6];
      v12 = v7[7];
      v13 = v7[8];
      if (v13)
      {
        if ((a3 & 1) == 0)
        {
          return 1;
        }

        v14 = *(*v11 + 96);
        outlined copy of Text.Storage(v7[6], v7[7], 1);

        if ((v14(a1) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (a3)
        {
          return 1;
        }

        if (v11 == a1 && v12 == a2)
        {
          outlined copy of Text.Storage(a1, a2, 0);
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of Text.Storage(v11, v12, 0);

          if ((v16 & 1) == 0)
          {
LABEL_20:
            outlined consume of Text?(v11, v12, v13, v10);
            return 1;
          }
        }
      }

      _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v10, a4);
      v18 = v17;
      outlined consume of Text?(v11, v12, v13, v10);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  if (a4)
  {
    return 1;
  }

LABEL_16:
  if (PropertyList.Tracker.hasDifferentUsedValues(_:)(v9))
  {
    return 1;
  }

LABEL_17:
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  return (v21 & 1) == 0 && *AGGraphGetValue() >= v20;
}

void *specialized static ResolvedStyledText.normalizedSizeVariant(for:)(void *a1)
{

  while (1)
  {
    swift_beginAccess();

    v3 = objc_getAssociatedObject(v2, &largerSizeVariantKey);
    swift_endAccess();
    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (!*(&v12 + 1))
    {
      break;
    }

    type metadata accessor for ResolvedStyledText();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return a1;
    }

    swift_beginAccess();

    v4 = objc_getAssociatedObject(v10, &smallerSizeVariantKey);
    swift_endAccess();
    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        swift_beginAccess();

        objc_setAssociatedObject(v5, &largerSizeVariantKey, 0, 0);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Any?(&v13);
    }

    swift_beginAccess();

    objc_setAssociatedObject(v10, &smallerSizeVariantKey, a1, 0x301);
    swift_endAccess();

    swift_beginAccess();

    objc_setAssociatedObject(v6, &largerSizeVariantKey, v10, 0);
    swift_endAccess();

    swift_beginAccess();
    v7 = objc_getAssociatedObject(a1, &largerSizeVariantKey);
    swift_endAccess();
    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        swift_beginAccess();

        objc_setAssociatedObject(v8, &smallerSizeVariantKey, 0, 0);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Any?(&v13);
    }

    swift_beginAccess();
    objc_setAssociatedObject(a1, &largerSizeVariantKey, 0, 0x301);
    swift_endAccess();

    a1 = v10;
  }

  outlined destroy of Any?(&v13);
  return a1;
}

uint64_t outlined destroy of ResolvableStringResolutionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in onChange #1 <A, B><A1>(for:) in SizeFittingTextCache.withValue<A>(for:onChange:compute:)()
{
  v1 = *(v0 + 40);
  v2 = **(v0 + 24);
  v5 = *(v0 + 32);
  v3 = (*(*(v2 + 104) + 16))(&v5, *(v2 + 88));
  return v1(v3);
}

double partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = *(v3 + 1);

  *a1 = v4;
  *(a1 + 8) = v5;

  return result;
}

uint64_t outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1)
{
  type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ResolvedTextHelper(255);
    v8[1] = &type metadata for StickyTextSizeFittingLogic;
    v8[2] = &protocol witness table for ResolvedTextHelper;
    v8[3] = &protocol witness table for StickyTextSizeFittingLogic;
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>)
  {
    type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(255, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>);
    }
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StickyTextSizeFittingLogic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
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

uint64_t storeEnumTagSinglePayload for StickyTextSizeFittingLogic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for SizeFittingTextLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SizeFittingTextFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for SizeFittingTextFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SizeFittingTextFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void lazy protocol witness table accessor for type SizeFittingTextFilter and conformance SizeFittingTextFilter()
{
  if (!lazy protocol witness table cache variable for type SizeFittingTextFilter and conformance SizeFittingTextFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for SizeFittingTextFilter, &type metadata for SizeFittingTextFilter, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SizeFittingTextFilter and conformance SizeFittingTextFilter);
  }
}

void lazy protocol witness table accessor for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for SizeFittingTextLayoutComputer, &type metadata for SizeFittingTextLayoutComputer, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer);
  }
}

void type metadata accessor for (value: ResolvableStringResolutionContext, changed: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (value: ResolvableStringResolutionContext, changed: Bool))
  {
    type metadata accessor for ResolvableStringResolutionContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: ResolvableStringResolutionContext, changed: Bool));
    }
  }
}

uint64_t outlined init with copy of ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t closure #2 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  v21(v18);
  static KeyframesBuilder.buildExpression<A>(_:)(v16, a5, a8, a12);
  v22 = *(v14 + 8);
  v22(v16, a8);
  static KeyframesBuilder.buildPartialBlock<A>(first:)(v20, a5, a8, a12);
  v22(v20, a8);
  static KeyframesBuilder.buildFinalResult<A>(_:)(v16, a5, a8, a12);
  return (v22)(v16, a8);
}

uint64_t View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _UNKNOWN **a14)
{
  v29 = a9;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v23 = a1;
  v30 = a8;
  v31 = a11;
  v32 = a10;
  v33 = a14;
  v34 = a13;
  v16 = type metadata accessor for KeyframeAnimator(255, &v30);
  v30 = a7;
  v31 = v16;
  v32 = a12;
  v33 = &protocol witness table for KeyframeAnimator<A, B, C>;
  v17 = type metadata accessor for CustomModifier(0, &v30);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v22 - v19;
  closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)(v23, v24, v25, v26, v27, v28, a7, a8, &v22 - v19, a10, a11, a12, a13, a14);
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v20, v17);
}

uint64_t closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v49 = a5;
  v50 = a6;
  v52 = a9;
  v53 = a4;
  v51 = a2;
  v46 = a12;
  v47 = a3;
  v43 = a13;
  v44 = a14;
  v17 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v19;
  v54[0] = v20;
  v54[1] = a11;
  v54[2] = a10;
  v54[3] = v21;
  v54[4] = v22;
  v23 = type metadata accessor for KeyframeAnimator(0, v54);
  v48 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v45 = &v42 - v28;
  (*(v17 + 16))(v19, a1, a8, v27);
  v29 = swift_allocObject();
  v30 = a7;
  v29[2] = a7;
  v29[3] = a8;
  v29[4] = a10;
  v29[5] = a11;
  v32 = v46;
  v31 = v47;
  v34 = v43;
  v33 = v44;
  v29[6] = v46;
  v29[7] = v34;
  v29[8] = v33;
  v29[9] = v31;
  v29[10] = v53;
  v35 = swift_allocObject();
  v35[2] = v30;
  v35[3] = a8;
  v35[4] = a10;
  v35[5] = a11;
  v35[6] = v32;
  v35[7] = v34;
  v36 = v49;
  v37 = v50;
  v35[8] = v33;
  v35[9] = v36;
  v35[10] = v37;
  *(&v41 + 1) = v33;
  *&v41 = a10;
  KeyframeAnimator.init(initialValue:repeating:content:keyframes:)(v42, v51, partial apply for closure #1 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:), v29, partial apply for closure #2 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:), v35, a8, a11, v25, v41, v34);
  v38 = v45;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v48 + 8);

  v39(v25, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v39)(v38, v23);
}

uint64_t closure #1 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  PlaceholderContentView.init()();
  a2();
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v8 + 8);
  v14(v10, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v13, a6);
}

uint64_t closure #2 in closure #1 in View.keyframeAnimator<A, B, C>(initialValue:repeating:content:keyframes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19(v16);
  static KeyframesBuilder.buildExpression<A>(_:)(v14, a5, a7, a10);
  v20 = *(v12 + 8);
  v20(v14, a7);
  static KeyframesBuilder.buildPartialBlock<A>(first:)(v18, a5, a7, a10);
  v20(v18, a7);
  static KeyframesBuilder.buildFinalResult<A>(_:)(v14, a5, a7, a10);
  return (v20)(v14, a7);
}

int *KeyframeAnimator.init(initialValue:repeating:content:keyframes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v22[0] = a7;
  v22[1] = a8;
  v23 = a10;
  v24 = a11;
  result = type metadata accessor for KeyframeAnimator(0, v22);
  v20 = (a9 + result[15]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a9 + result[17]);
  *v21 = a3;
  v21[1] = a4;
  *(a9 + result[16]) = ((a2 & 1) == 0) | 0x8000000000000000;
  return result;
}

void KeyframeTrackState.EventDrivenState.update(at:trigger:initialValue:path:)(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v81 = a3;
  v12 = *(a6 + 16);
  v13 = *(v12 - 8);
  v84 = a6;
  v85 = v13;
  MEMORY[0x1EEE9AC00](a1);
  v78 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = v75 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v83 = v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v86 = (v75 - v20);
  v23 = type metadata accessor for KeyframeTimeline(0, v12, v21, v22);
  v87 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v77 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v82 = v75 - v26;
  MEMORY[0x1EEE9AC00](v27);
  TupleTypeMetadata2 = v75 - v29;
  v30 = *a2;
  if (v30 != *v7)
  {
    v31 = *a1;
    v32 = v28;
    v33 = *(*v30 + 88);

    v35 = v33(v34);
    v36 = v32;
    v37 = v12;
    v38 = v35;

    if ((v38 & 1) == 0)
    {
      v76 = a5;
      v39 = v7[1];
      if (v39 < 0)
      {
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v50 = swift_projectBox() + *(TupleTypeMetadata2 + 48);
        v51 = *v50;
        LODWORD(v81) = *(v50 + 8);
        v52 = *(v87 + 16);
        v75[0] = a4;
        v52();
        v53 = v31 - v51;

        v57 = KeyframeTimeline.duration.getter(v32, v54, v55, v56);
        if (v57 < v53)
        {
          v53 = v57;
        }

        v58 = v83;
        KeyframeTimeline.value(time:)(v36, v83, v53);
        v59 = v79;
        v60 = KeyframeTimeline.velocity(time:)(v36, v79, v53);
        v61 = v85;
        v75[1] = v39;
        v62 = *(v85 + 16);
        v62(v86, v58, v12, v60);
        v63 = v78;
        v64 = (v62)(v78, v59, v37);
        MEMORY[0x1EEE9AC00](v64);
        v65 = *(v84 + 24);
        v66 = *(v84 + 32);
        v75[-6] = v37;
        v75[-5] = v65;
        v67 = v75[0];
        v75[-4] = v66;
        v75[-3] = v67;
        v68 = v77;
        v75[-2] = v76;
        v75[-1] = v58;
        KeyframeTimeline.init<A>(initialValue:initialVelocity:content:)(v86, v63, partial apply for closure #2 in KeyframeTrackState.EventDrivenState.update(at:trigger:initialValue:path:), &v75[-8], v37, v65, v66, v68);
        v86 = *(v61 + 8);
        v86(v59, v37);
        v69 = v87;
        (*(v87 + 8))(v82, v36);
        v70 = TupleTypeMetadata2;
        v71 = swift_allocBox();
        v73 = v72;
        (*(v69 + 32))(v72, v68, v36);
        v74 = v73 + *(v70 + 48);
        *v74 = v31;
        *(v74 + 8) = v81;

        v7[1] = v71 | 0x8000000000000000;
        v86(v83, v37);
      }

      else
      {
        v40 = v86;
        v41 = v81;
        v42 = (*(v85 + 16))(v86, v81, v12);
        MEMORY[0x1EEE9AC00](v42);
        v43 = *(v84 + 24);
        v44 = *(v84 + 32);
        v75[-6] = v12;
        v75[-5] = v43;
        v75[-4] = v44;
        v75[-3] = a4;
        v75[-2] = v76;
        v75[-1] = v41;
        v45 = TupleTypeMetadata2;
        KeyframeTimeline.init<A>(initialValue:content:)(v40, partial apply for closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:), &v75[-8], v12, v43, v44, TupleTypeMetadata2);
        v46 = swift_getTupleTypeMetadata2();
        v47 = swift_allocBox();
        v49 = v48 + *(v46 + 48);
        (*(v87 + 32))(v48, v45, v36);
        *v49 = v31;
        *(v49 + 8) = 0;

        v7[1] = v47 | 0x8000000000000000;
      }
    }
  }

  *v7 = v30;
}

double KeyframeTrackState.RepeatingState.value(at:)@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3 + *(a2 + 44);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(a2 + 16);
  type metadata accessor for KeyframeTrackState.RepeatingState.Mode(0, v9, *(a2 + 24), *(a2 + 32));
  if (v8 < 0)
  {
    v13 = *a1 - v7;
    if ((v8 & 1) == 0)
    {
      v13 = 0.0;
    }

    v12 = *(v6 + 16) + v13;
  }

  else
  {
    v12 = v7;
  }

  v14 = type metadata accessor for KeyframeTimeline(0, v9, v10, v11);
  v18 = KeyframeTimeline.duration.getter(v14, v15, v16, v17);
  v19 = fmod(v12, v18);

  return KeyframeTimeline.value(time:)(v14, a3, v19);
}

double *KeyframeTrackState.RepeatingState.update(at:paused:)(double *result, char a2, uint64_t a3)
{
  v4 = *result;
  v5 = v3 + *(a3 + 44);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 < 0)
  {
    if (a2)
    {
      v8 = *(v5 + 16);
      result = type metadata accessor for KeyframeTrackState.RepeatingState.Mode(0, *(a3 + 16), *(a3 + 24), *(a3 + 32));
      v9 = v4 - v6;
      if ((v7 & 1) == 0)
      {
        v9 = 0.0;
      }

      *v5 = v9 + v8;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }
  }

  else if ((a2 & 1) == 0)
  {
    *v5 = v4;
    *(v5 + 8) = 0x8000000000000000;
    *(v5 + 16) = v6;
  }

  return result;
}

__n128 KeyframeTrackState.RepeatingState.init(timeline:mode:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = *a2;
  v11 = a2[1].n128_u64[0];
  v12 = type metadata accessor for KeyframeTimeline(0, a3, a3, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = (a6 + *(type metadata accessor for KeyframeTrackState.RepeatingState(0, a3, a4, a5) + 44));
  result = v15;
  *v13 = v15;
  v13[1].n128_u64[0] = v11;
  return result;
}

uint64_t closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v17(v16, v13);
  static KeyframesBuilder.buildExpression<A>(_:)(v11, a4, a5, a6);
  v18 = *(v9 + 8);
  v18(v11, a5);
  static KeyframesBuilder.buildPartialBlock<A>(first:)(v15, a4, a5, a6);
  v18(v15, a5);
  static KeyframesBuilder.buildFinalResult<A>(_:)(v11, a4, a5, a6);
  return (v18)(v11, a5);
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeAnimator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v15 = *v14;
    v14 += 15;

    outlined copy of _SymbolEffect.Trigger(v15);
    *v13 = v15;
    v16 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
    *v16 = *(v14 & 0xFFFFFFFFFFFFFFF8);
    v16[1] = v17;
  }

  return v3;
}

uint64_t initializeWithTake for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *v10 = *v9;
  outlined consume of _SymbolEffect.Trigger(v11);
  *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v9 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeAnimator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for KeyframeAnimator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t *assignWithCopy for PlaybackMode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  outlined copy of _SymbolEffect.Trigger(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of _SymbolEffect.Trigger(v4);
  return a1;
}

uint64_t *assignWithTake for PlaybackMode(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of _SymbolEffect.Trigger(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlaybackMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 8))
  {
    return (*a1 + 63);
  }

  v3 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PlaybackMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatorAttribute(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if ((v5 & 0x1000F8) != 0 || v9 - ((-21 - v6) | v6) > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v6 + 16) & ~v6));
  }

  else
  {
    *a1 = *a2;
    v12 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = *v19;
    v20 = v19 + 11;
    *v18 = v21;
    v22 = v18 + 11;
    v23 = (v20 & 0xFFFFFFFFFFFFFFF8);
    v24 = *((v20 & 0xFFFFFFFFFFFFFFF8) + v9);
    if ((v9 & 0xFFFFFFF8) != 0 && v24 >= 2)
    {
      v24 = *v23 + 2;
    }

    v26 = (v22 & 0xFFFFFFFFFFFFFFF8);
    if (v24 == 1)
    {
      v28 = v8 + 8;
      (*(v4 + 16))(v22 & 0xFFFFFFFFFFFFFFF8);
      *(((v22 | 7) + v7) & 0xFFFFFFFFFFFFFFF8) = *(((v20 | 7) + v7) & 0xFFFFFFFFFFFFFFF8);
      v29 = (v28 + v22) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v28 + v20) & 0xFFFFFFFFFFFFFFF8;
      v31 = *v30;
      *(v29 + 16) = *(v30 + 16);
      *v29 = v31;
      *(v26 + v9) = 1;

      return v3;
    }

    if (v24)
    {
      memcpy((v22 & 0xFFFFFFFFFFFFFFF8), v23, v9 | 1);
      return v3;
    }

    *v26 = *v23;
    v26[1] = v23[1];
    *(v26 + v9) = 0;
  }

  return v3;
}

_DWORD *assignWithCopy for AnimatorAttribute(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80) & 0xF8;
  v16 = v15 + 11;
  v17 = v11 + v15 + 11;
  v18 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 & v18);
  v20 = ((v12 + v16) & v18);
  if ((v17 & v18) != v20)
  {
    v21 = *(*(a3 + 16) - 8);
    v22 = *(v14 + 64);
    v23 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
    {
      v24 = 16;
    }

    else
    {
      v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
    }

    v25 = *(v19 + v24);
    if (v25 >= 2 && v24 != 0)
    {
      v25 = *v19 + 2;
    }

    if (v25 == 1)
    {
      (*(v14 + 8))(v19, v13);
    }

    else if (!v25)
    {
    }

    v27 = *(v20 + v24);
    if (v24)
    {
      v28 = v27 >= 2;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v27 = *v20 + 2;
    }

    if (v27 == 1)
    {
      v29 = v23 + 8;
      (*(v21 + 16))(v19, v20, v13);
      *((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v30 = v19 + v29;
      v31 = *(v20 + v29);
      *(v30 + 2) = *(v20 + v29 + 16);
      *v30 = v31;
      *(v19 + v24) = 1;
    }

    else if (v27)
    {
      memcpy(v19, v20, v24 | 1);
    }

    else
    {
      *v19 = *v20;
      v19[1] = v20[1];
      *(v19 + v24) = 0;
    }
  }

  return a1;
}

_DWORD *initializeWithTake for AnimatorAttribute(_DWORD *result, int *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 7;
  *result = v4;
  v5 = ((result + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 11;
  v15 = v10 + v13 + 11;
  v16 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 & v16);
  v18 = ((v11 + v14) & v16);
  v19 = *(v12 + 64) + 7;
  if ((((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v21 = *(v18 + v20);
  if (v21 >= 2 && v20 != 0)
  {
    v21 = *v18 + 2;
  }

  if (v21 == 1)
  {
    v23 = (v19 & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = result;
    (*(v12 + 32))(v17, v18);
    result = v24;
    *((v17 + v19) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v19) & 0xFFFFFFFFFFFFFFF8);
    v25 = v17 + v23;
    v26 = *(v18 + v23);
    *(v25 + 2) = *(v18 + v23 + 16);
    *v25 = v26;
    *(v17 + v20) = 1;
  }

  else if (v21)
  {
    v27 = v20 | 1;
    v28 = result;
    memcpy(v17, v18, v27);
    return v28;
  }

  else
  {
    *v17 = *v18;
    *(v17 + v20) = 0;
  }

  return result;
}

_DWORD *assignWithTake for AnimatorAttribute(_DWORD *result, int *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 7;
  *result = v4;
  v5 = ((result + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80) & 0xF8;
  v15 = v14 + 11;
  v16 = v10 + v14 + 11;
  v17 = ~v14 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 & v17);
  v19 = ((v11 + v15) & v17);
  if ((v16 & v17) == v19)
  {
    return result;
  }

  v20 = *(*(a3 + 16) - 8);
  v21 = *(v13 + 64);
  v22 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v23 = 16;
  }

  else
  {
    v23 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v24 = *(v18 + v23);
  if (v24 >= 2 && v23 != 0)
  {
    v24 = *v18 + 2;
  }

  if (v24 == 1)
  {
    v26 = result;
    (*(v13 + 8))(v18, v12);

    goto LABEL_14;
  }

  if (!v24)
  {
    v26 = result;

LABEL_14:
    result = v26;
  }

  v27 = *(v19 + v23);
  if (v23)
  {
    v28 = v27 >= 2;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v27 = *v19 + 2;
  }

  if (v27 == 1)
  {
    v29 = v22 + 8;
    v30 = result;
    (*(v20 + 32))(v18, v19, v12);
    result = v30;
    *((v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = v18 + v29;
    v32 = *(v19 + v29);
    *(v31 + 2) = *(v19 + v29 + 16);
    *v31 = v32;
    *(v18 + v23) = 1;
  }

  else if (v27)
  {
    v33 = result;
    memcpy(v18, v19, v23 | 1);
    return v33;
  }

  else
  {
    *v18 = *v19;
    *(v18 + v23) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimatorAttribute(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = ((((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = v5 | 7;
  if (a2 < 0xFE)
  {
    goto LABEL_19;
  }

  v7 = (((v5 + 27) & ~v6) + v4) | 1;
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *&a1[v7];
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *&a1[v7];
      if (!*&a1[v7])
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_19:
      v14 = *(((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6) + v4);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = a1[v7];
  if (!a1[v7])
  {
    goto LABEL_19;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void storeEnumTagSinglePayload for AnimatorAttribute(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = (((v7 + 27) & ~(v7 | 7)) + v6) | 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 <= 0xFD)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_26:
      *(((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8) + v6) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_26;
  }

  v11 = a2 - 254;
  if (v9 <= 3)
  {
    v12 = (v11 >> (8 * v9)) + 1;
    bzero(a1, v9);
    *a1 = v11 & ~(-1 << (8 * v9));
    if (v10 > 1)
    {
LABEL_14:
      if (v10 == 2)
      {
        *&a1[v9] = v12;
      }

      else
      {
        *&a1[v9] = v12;
      }

      return;
    }
  }

  else
  {
    bzero(a1, v9);
    *a1 = v11;
    v12 = 1;
    if (v10 > 1)
    {
      goto LABEL_14;
    }
  }

  if (v10)
  {
    a1[v9] = v12;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeTrackState(uint64_t *__dst, uint64_t *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || (v7 | 1) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
LABEL_15:

    return v3;
  }

  v11 = *(a2 + v7);
  if (v11 >= 2)
  {
    v11 = *a2 + 2;
  }

  if (v11 == 1)
  {
    v14 = v6 + 8;
    (*(v4 + 16))(__dst);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v16 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    *(v16 + 16) = *(v17 + 16);
    *v16 = v18;
    *(v3 + v7) = 1;

    return v3;
  }

  if (!v11)
  {
    v12 = a2[1];
    *__dst = *a2;
    __dst[1] = v12;
    *(__dst + v7) = 0;

    goto LABEL_15;
  }

  return memcpy(__dst, a2, v7 | 1);
}

void *assignWithCopy for KeyframeTrackState(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v10 = *(__dst + v9);
  if (v10 >= 2 && v9 != 0)
  {
    v10 = *__dst + 2;
  }

  if (v10 == 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  else if (!v10)
  {
  }

  v12 = *(__src + v9);
  if (v9)
  {
    v13 = v12 >= 2;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v12 = *__src + 2;
  }

  if (v12 == 1)
  {
    v14 = v8 + 8;
    (*(v6 + 16))(__dst, __src, v5);
    *((__dst + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((__src + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = (__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 16) = *(v16 + 16);
    *v15 = v17;
    *(__dst + v9) = 1;

    return __dst;
  }

  if (!v12)
  {
    *__dst = *__src;
    __dst[1] = __src[1];
    *(__dst + v9) = 0;

    return __dst;
  }

  return memcpy(__dst, __src, v9 | 1);
}

_OWORD *initializeWithTake for KeyframeTrackState(_OWORD *result, _DWORD *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v5 = 16;
  }

  else
  {
    v5 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v6 = *(a2 + v5);
  if (v6 >= 2 && v5 != 0)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v8 = v4 + 8;
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    *((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    *(v11 + 16) = *(v12 + 16);
    *v11 = v13;
    *(v9 + v5) = 1;
  }

  else if (v6)
  {

    return memcpy(result, a2, v5 | 1);
  }

  else
  {
    *result = *a2;
    *(result + v5) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for KeyframeTrackState(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v10 = __dst[v9];
  if (v10 >= 2 && v9 != 0)
  {
    v10 = *__dst + 2;
  }

  if (v10 == 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  else if (!v10)
  {
  }

  v12 = __src[v9];
  if (v9)
  {
    v13 = v12 >= 2;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v12 = *__src + 2;
  }

  if (v12 == 1)
  {
    v14 = v8 + 8;
    (*(v6 + 32))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = &__dst[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    v16 = &__src[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 16) = *(v16 + 16);
    *v15 = v17;
    __dst[v9] = 1;
    return __dst;
  }

  if (!v12)
  {
    *__dst = *__src;
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 | 1);
}

uint64_t getEnumTagSinglePayload for KeyframeTrackState(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v4 = v3 | 1;
  if ((v3 | 1) <= 3)
  {
    v5 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = a1[v3];
    if (v12 >= 3)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 254;
}

void storeEnumTagSinglePayload for KeyframeTrackState(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 | 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v5] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = a2 - 254;
  v11 = (a2 - 254) >> 8;
  bzero(a1, v5 | 1);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_21:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t getEnumTag for KeyframeTrackState(_DWORD *a1, uint64_t a2)
{
  v2 = ((((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = v2;
  v4 = *(a1 + v2);
  if (v4 >= 2 && v3 != 0)
  {
    return (*a1 + 2);
  }

  return v4;
}

void destructiveInjectEnumTag for KeyframeTrackState(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (a2 > 1)
  {
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + v3) = v4;
    if (v3)
    {
      v5 = a2 - 2;
      bzero(a1, v3);
      *a1 = v5;
    }
  }

  else
  {
    *(a1 + v3) = a2;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeTrackState.RepeatingState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    v10 = v6 + 8;
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    v14 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(v14 + 16) = *(v12 + 16);
    *v14 = v13;
  }

  return v3;
}

uint64_t initializeWithCopy for KeyframeTrackState.RepeatingState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 16);
  v11 = *v9;
  v12 = v8 & 0xFFFFFFFFFFFFFFF8;
  *v12 = v11;
  *(v12 + 16) = v10;

  return a1;
}

uint64_t assignWithCopy for KeyframeTrackState.RepeatingState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v8 + 16) = *(v9 + 16);
  *v8 = v10;
  return a1;
}

uint64_t initializeWithTake for KeyframeTrackState.RepeatingState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 16);
  v11 = *v9;
  v12 = v8 & 0xFFFFFFFFFFFFFFF8;
  *v12 = v11;
  *(v12 + 16) = v10;
  return a1;
}

uint64_t assignWithTake for KeyframeTrackState.RepeatingState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a1 + v7 + 7;
  v9 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  *(v8 + 16) = *(v9 + 16);
  *v8 = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTrackState.RepeatingState(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for KeyframeTrackState.RepeatingState(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CustomModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 24) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for CustomModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for CustomModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t specialized static PlaybackMode.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      outlined consume of _SymbolEffect.Trigger(*a1);
      outlined consume of _SymbolEffect.Trigger(v3);
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

LABEL_8:
    outlined copy of _SymbolEffect.Trigger(v3);
    outlined consume of _SymbolEffect.Trigger(v2);
    outlined consume of _SymbolEffect.Trigger(v3);
    v4 = 0;
    return v4 & 1;
  }

  if (v3 < 0)
  {

    goto LABEL_8;
  }

  if (v2 == v3)
  {
    outlined copy of _SymbolEffect.Trigger(*a1);
    outlined copy of _SymbolEffect.Trigger(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
    v4 = 1;
    return v4 & 1;
  }

  v6 = *(*v2 + 88);
  outlined copy of _SymbolEffect.Trigger(*a2);
  outlined copy of _SymbolEffect.Trigger(v2);
  outlined copy of _SymbolEffect.Trigger(v2);
  v7 = outlined copy of _SymbolEffect.Trigger(v3);
  LOBYTE(v6) = v6(v3, v7);
  outlined consume of _SymbolEffect.Trigger(v2);
  outlined consume of _SymbolEffect.Trigger(v3);
  outlined consume of _SymbolEffect.Trigger(v3);
  outlined consume of _SymbolEffect.Trigger(v2);
  return v6 & 1;
}

double destroy for KeyframeTrackState.EventDrivenState(void *a1)
{

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeTrackState.EventDrivenState(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for KeyframeTrackState.EventDrivenState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t *assignWithTake for KeyframeTrackState.EventDrivenState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTrackState.RepeatingState.Mode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyframeTrackState.RepeatingState.Mode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for KeyframeTrackState.EventDrivenState.Phase(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for KeyframeTrackState.EventDrivenState.Phase(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTrackState.EventDrivenState.Phase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for KeyframeTrackState.EventDrivenState.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _AnyResolvedPaint.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 184) - 8) + 32))(v2 + *(*v2 + 200), a1);
  return v2;
}

uint64_t ResolvedPaint.encodePaint(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 88))(&v8, a2, a3);
  if (v9)
  {
    return (*(*(a3 + 24) + 8))(a1, a2);
  }

  else
  {
    return ProtobufEncoder.messageField<A>(_:_:)(v8, v3, a2, *(a3 + 24));
  }
}

uint64_t protocol witness for ResolvedPaint.encodePaint(to:) in conformance LinearGradient._Paint(int a1, int a2, int a3, Swift::UInt a4, uint64_t (*a5)(_OWORD *))
{
  v7 = v5[1];
  v9[0] = *v5;
  v9[1] = v7;
  v10[0] = v5[2];
  *(v10 + 9) = *(v5 + 41);
  ProtobufEncoder.encodeVarint(_:)(a4);
  return a5(v9);
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance EllipticalGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type EllipticalGradient and conformance EllipticalGradient();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void *static Paint._makeView<A>(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v13, v11, a3, a4, *(a5 + 8), a6, a7);
}

uint64_t protocol witness for ResolvedPaint.encodePaint(to:) in conformance RadialGradient._Paint(int a1, int a2, int a3, Swift::UInt a4, uint64_t (*a5)(_OWORD *))
{
  v7 = v5[1];
  v9[0] = *v5;
  v9[1] = v7;
  v10[0] = v5[2];
  *(v10 + 9) = *(v5 + 41);
  ProtobufEncoder.encodeVarint(_:)(a4);
  return a5(v9);
}

void protocol witness for ResolvedPaint.resolvedGradient.getter in conformance Color.Resolved(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void ResolvedPaint.resolvedGradient.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void ResolvedPaint.allowedDynamicRange.getter(_BYTE *a1@<X8>)
{
  *a1 = 0;
}

{
  ResolvedPaint.allowedDynamicRange.getter(a1);
}

uint64_t protocol witness for ResolvedPaint.encodePaint(to:) in conformance Color.Resolved()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  return specialized ProtobufEncoder.encodeMessage<A>(_:)(v1, v2, v3, v4);
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance _AnyLinearGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type _AnyLinearGradient and conformance _AnyLinearGradient();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance _AnyRadialGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type _AnyRadialGradient and conformance _AnyRadialGradient();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance _AnyEllipticalGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type _AnyEllipticalGradient and conformance _AnyEllipticalGradient();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void *protocol witness for static ShapeStyle._makeView<A>(view:inputs:) in conformance _AnyAngularGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  lazy protocol witness table accessor for type _AnyAngularGradient and conformance _AnyAngularGradient();

  return static Paint._makeView<A>(view:inputs:)(a1, a2, a5, a3, v12, a4, a6);
}

void protocol witness for ResolvedPaint.encodePaint(to:) in conformance ImagePaint._Paint()
{
  v1 = *(v0 + 112);
  v5[6] = *(v0 + 96);
  v5[7] = v1;
  v5[8] = *(v0 + 128);
  v6 = *(v0 + 144);
  v2 = *(v0 + 48);
  v5[2] = *(v0 + 32);
  v5[3] = v2;
  v3 = *(v0 + 80);
  v5[4] = *(v0 + 64);
  v5[5] = v3;
  v4 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v4;
  ProtobufEncoder.encodeVarint(_:)(0x32uLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v5);
}

double AnyResolvedPaint.protobufPaint.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void AnyResolvedPaint.resolvedGradient.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void AnyResolvedPaint.encode(to:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double AnyResolvedPaint.as<A>(type:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for _AnyResolvedPaint(0, a1, a2, a3);
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
  }

  v11[5] = v8;
  MEMORY[0x1EEE9AC00](v7);
  v11[2] = a1;
  v11[3] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnyResolvedPaint.as<A>(type:), v11, MEMORY[0x1E69E73E0], a1, v9, a4);

  return result;
}