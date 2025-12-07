void static SwiftUITrace.deinitialize()()
{
  v0 = static SwiftUITrace.role;
  static SwiftUITrace.role = 0x8000000000000000;
  outlined consume of SwiftUITrace.Role(v0);
}

id static SwiftUITrace.beginSwiftUITrace(modality:config:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v3;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    v11 = v2;
    v5 = objc_allocWithZone(type metadata accessor for Tracer(0));
    outlined init with copy of TraceConfig(v12, v10);
    v6 = Tracer.init(modality:config:)(&v11, a2);
    v7 = static SwiftUITrace.role;
    static SwiftUITrace.role = v6;
    v8 = v6;
    outlined consume of SwiftUITrace.Role(v7);
    Tracer.beginTracing()();
    return v8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Tracer.beginTracing()()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v1 - 8);
  if (*(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) == 1)
  {
    *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) = 0;
    v2 = String.utf8CString.getter();
    notify_post((v2 + 32));

    v3 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection;
    v4 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection);
    if (v4 || (specialized XPCDispatch.connect()(), (v4 = *(v0 + v3)) != 0))
    {
      swift_unknownObjectRetain();
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v5, "swiftui_command", "beginTracing");
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      static JSONEncoder.OutputFormatting.prettyPrinted.getter();
      dispatch thunk of JSONEncoder.outputFormatting.setter();
      v6 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 16);
      v20[0] = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config);
      v20[1] = v6;
      v8 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config);
      v7 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 16);
      v20[2] = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 32);
      v21 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 48);
      v16 = v8;
      v17 = v7;
      v18 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 32);
      v19 = *(v0 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config + 48);
      outlined init with copy of TraceConfig(v20, &v12);
      lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
      v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v11 = v10;
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
      outlined destroy of TraceConfig(&v12);
      swift_unknownObjectRetain();
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v9, v11, v5);
      xpc_connection_send_message_with_reply_sync(v4, v5);
      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v9, v11);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  outlined destroy of TraceConfig(&v12);
  swift_unexpectedError();
  __break(1u);
}

uint64_t static SwiftUITrace.cliClient(verbose:)(char a1)
{
  v1 = static SwiftUITrace.role;
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    type metadata accessor for CLI();
    v3 = swift_allocObject();
    CLI.init(verbose:)(a1 & 1);
    v4 = static SwiftUITrace.role;
    static SwiftUITrace.role = v3 | 0x6000000000000000;

    outlined consume of SwiftUITrace.Role(v4);
LABEL_5:
    outlined copy of SwiftUITrace.Role(v1);
    return v3;
  }

  if (static SwiftUITrace.role >> 61 == 3)
  {
    v3 = static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CLI.__allocating_init(verbose:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  CLI.init(verbose:)(v1);
  return v2;
}

_OWORD *specialized closure #1 in static SwiftUITrace.register<A>(h:)(_OWORD *result)
{
  v1 = result[5];
  v24[4] = result[4];
  v25[0] = v1;
  *(v25 + 9) = *(result + 89);
  v2 = result[1];
  v24[0] = *result;
  v24[1] = v2;
  v3 = result[3];
  v24[2] = result[2];
  v24[3] = v3;
  v4 = onceGraph;
  if (onceGraph)
  {
    outlined init with copy of Trace(v24, v22);
    v5 = v4;
    Trace_Handle_Storage.init()(&v9);
    v6 = MEMORY[0x277D84FA0];
    *&v17 = MEMORY[0x277D84FA0];
    outlined destroy of Trace(v24);
    *(&v17 + 1) = MEMORY[0x277D84F98];
    *&v18 = 0;
    BYTE8(v19) = 0;
    *&v20 = 0;
    BYTE8(v20) = 1;
    v21 = 0;
    *(&v18 + 1) = v6;
    *&v19 = v5;
    v23 = 0;
    v22[6] = v15;
    v22[7] = v16;
    v22[2] = v11;
    v22[3] = v12;
    v22[4] = v13;
    v22[5] = v14;
    v22[0] = v9;
    v22[1] = v10;
    v22[10] = v19;
    v22[11] = v20;
    v22[8] = v17;
    v22[9] = v18;
    specialized Trace.add<A>(handle:)(v22);
    v7[10] = v19;
    v7[11] = v20;
    v8 = v21;
    v7[6] = v15;
    v7[7] = v16;
    v7[8] = v17;
    v7[9] = v18;
    v7[2] = v11;
    v7[3] = v12;
    v7[4] = v13;
    v7[5] = v14;
    v7[0] = v9;
    v7[1] = v10;
    return outlined destroy of Trace.SwiftUI(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static SwiftUITrace.register<A>(h:)(_OWORD *a1, void (*a2)(__int128 *), uint64_t a3, ValueMetadata *a4, uint64_t a5)
{
  v24 = a2;
  Description = a4[-1].Description;
  MEMORY[0x28223BE20](a1);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v23 - v13;
  v15 = a1[3];
  v16 = a1[5];
  v34 = a1[4];
  v35[0] = v16;
  *(v35 + 9) = *(a1 + 89);
  v17 = a1[1];
  v31[0] = *a1;
  v31[1] = v17;
  v18 = a1[3];
  v20 = *a1;
  v19 = a1[1];
  v32 = a1[2];
  v33 = v18;
  v21 = a1[5];
  v29 = v34;
  v30[0] = v21;
  *(v30 + 9) = *(a1 + 89);
  v25 = v20;
  v26 = v19;
  v27 = v32;
  v28 = v15;
  outlined init with copy of Trace(v31, v36);
  v24(&v25);
  v36[4] = v29;
  v37[0] = v30[0];
  *(v37 + 9) = *(v30 + 9);
  v36[0] = v25;
  v36[1] = v26;
  v36[2] = v27;
  v36[3] = v28;
  outlined destroy of Trace(v36);
  Trace.add<A>(handle:)(v10, a4, a5, v14);
  Description[1](v10, a4);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_26C29AD9C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void specialized Trace.add<A>(handle:)(__int128 *a1)
{
  v2 = v1;
  v3 = 0;
  v6 = *(v1 + 10);
  v4 = (v1 + 5);
  v5 = v6;
  v8 = *(v4 + 2);
  v7 = *(v4 + 3);
  v9 = v4[2];
  v10 = &type metadata for Trace.SwiftUI;
  while (24 * v7 + 24 != v3 + 24)
  {
    if (!v5)
    {
      goto LABEL_49;
    }

    v11 = *(v5 + v3);
    v3 += 24;
    if (v11 == &type metadata for Trace.SwiftUI)
    {
      v12 = *(a1 + 16);
      v13 = a1[11];
      *&v89[112] = a1[10];
      *&v89[128] = v13;
      *&v89[144] = *(a1 + 24);
      v14 = a1[7];
      *&v89[48] = a1[6];
      *&v89[64] = v14;
      v15 = a1[9];
      *&v89[80] = a1[8];
      *&v89[96] = v15;
      v16 = a1[3];
      v88 = a1[2];
      *v89 = v16;
      v17 = a1[5];
      *&v89[16] = a1[4];
      *&v89[32] = v17;
      v18 = a1[1];
      v86 = *a1;
      v87 = v18;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v19 = a1;
        outlined init with copy of Trace.SwiftUI(a1, &v67);
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_7;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v60 = *(v12 + 16);
      v19 = a1;
      outlined init with copy of Trace.SwiftUI(a1, &v67);
      if (v60)
      {
        goto LABEL_39;
      }

LABEL_7:
      v20 = *(v19 + 24);
      Trace_Handle_Storage.deallocate()();
      if (v20)
      {
        MEMORY[0x26D69EAB0](v20, -1, -1);
      }

      if (!*(v9 + 16))
      {
        goto LABEL_42;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.SwiftUI);
      if (v22)
      {
        v23 = *(*(v9 + 56) + 8 * v21);
        if (v23 < v7)
        {
          if (*(v5 + 24 * v23))
          {
            *&v70[112] = *&v89[112];
            *&v70[128] = *&v89[128];
            *&v70[144] = *&v89[144];
            *&v70[48] = *&v89[48];
            *&v70[64] = *&v89[64];
            *&v70[80] = *&v89[80];
            *&v70[96] = *&v89[96];
            v69 = v88;
            *v70 = *v89;
            *&v70[16] = *&v89[16];
            *&v70[32] = *&v89[32];
            v67 = v86;
            v68 = v87;
LABEL_37:
            outlined destroy of Trace.SwiftUI(&v67);
            return;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10, v7);
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
LABEL_43:
        __break(1u);
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v24 = *(a1 + 3);
  v25 = *(a1 + 136);
  v26 = *(a1 + 168);
  v77 = *(a1 + 152);
  v78 = v26;
  v79 = *(a1 + 184);
  v27 = *(a1 + 72);
  v28 = *(a1 + 104);
  v73 = *(a1 + 88);
  v74 = v28;
  v75 = *(a1 + 120);
  v76 = v25;
  v71 = *(a1 + 56);
  v72 = v27;
  v29 = v2[1];
  v82[0] = *v2;
  v82[1] = v29;
  v31 = *v2;
  v30 = v2[1];
  v82[2] = v2[2];
  v83 = *(v2 + 24);
  v32 = *(v24 + 48);
  v34 = *(v24 + 16);
  v33 = *(v24 + 32);
  v84[0] = *v24;
  v84[1] = v34;
  v81[0] = *(a1 + 1);
  *(v81 + 3) = *(a1 + 1);
  v65 = *(a1 + 40);
  v80[0] = *(a1 + 41);
  *(v80 + 3) = *(a1 + 11);
  v35 = *(v2 + 7);
  v64 = *(v2 + 8);
  v84[2] = v33;
  v85 = v32;
  v36 = v2[2];
  *(v24 + 48) = *(v2 + 24);
  *(v24 + 16) = v30;
  *(v24 + 32) = v36;
  *v24 = v31;
  outlined init with copy of Trace.SwiftUI(a1, &v86);
  outlined init with copy of TraceConfig(v82, &v86);
  outlined destroy of TraceConfig(v84);
  v37 = *(v2 + 49);
  if ((v37 & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_48;
    }

    if (!v5)
    {
      goto LABEL_56;
    }

    if (!*v5)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v40 = **(v5 + 16);
    os_unfair_lock_lock_with_options();
    v63 = *(v40 + 40);
    os_unfair_lock_unlock(v40);
LABEL_22:
    if (!*v5)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v41 = **(v5 + 16);
    LOBYTE(v86) = 1;
    *(&v86 + 1) = v81[0];
    DWORD1(v86) = *(v81 + 3);
    *(&v86 + 1) = v35;
    *&v87 = v64;
    *(&v87 + 1) = v24;
    *&v88 = v63;
    BYTE8(v88) = v65;
    *(&v88 + 9) = v80[0];
    HIDWORD(v88) = *(v80 + 3);
    v61 = v41;
    *v89 = v41;
    *&v89[8] = v71;
    *&v89[72] = v75;
    *&v89[56] = v74;
    *&v89[40] = v73;
    *&v89[24] = v72;
    *&v89[136] = v79;
    *&v89[120] = v78;
    *&v89[104] = v77;
    *&v89[88] = v76;
    outlined init with copy of Trace.SwiftUI(&v86, &v67);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5TraceV0A2UIV_Tt0B5(&v86);
    v43 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v42);
    v44 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
    if (v7 == v8)
    {
      specialized UnsafeArray.growToCapacity(_:)();
    }

    v62 = v35;
    v45 = *v4;
    if (!*v4)
    {
      goto LABEL_51;
    }

    v46 = *(v2 + 23);
    v47 = (v45 + 24 * v46);
    *v47 = &type metadata for Trace.SwiftUI;
    v47[1] = v44;
    v47[2] = v43;
    v48 = v46 + 1;
    if (v46 == -1)
    {
      goto LABEL_41;
    }

    *(v2 + 23) = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = *(v2 + 12);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48 - 1, &type metadata for Trace.SwiftUI, isUniquelyReferenced_nonNull_native);
    v50 = v67;
    *(v2 + 12) = v67;
    if (!*v45)
    {
      goto LABEL_52;
    }

    v51 = **(v45 + 16);
    os_unfair_lock_lock_with_options();
    _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAC0A2UIV_Ttg5Tm(_s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC0A2UIV_Tt2g5);
    os_unfair_lock_unlock(v51);
    v52 = _s21SwiftUITracingSupport5TraceV8accessor8AccessorQzxm_tcAA0D7_HandleRzluiMAC0A2UIV_Ttg5(&v67);
    v7 = &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMd;
    v10 = &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMd, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type ReferenceAccessor<Trace.SwiftUI> and conformance ReferenceAccessor<A>, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMd, &_s21SwiftUITracingSupport17ReferenceAccessorVyAA5TraceV0A2UIVGMR, &protocol conformance descriptor for ReferenceAccessor<A>);
    v53 = specialized protocol witness for Trace_Handle_Accessor.subscript.modify in conformance ReferenceAccessor<A>(v66);
    Trace.SwiftUI.added()();
    if (!v54)
    {
      (v53)(v66, 0);
      v52(&v67, 0);
LABEL_35:
      if (*(v45 + 24 * (v48 - 1)))
      {
        LOBYTE(v67) = 1;
        *(&v67 + 1) = v81[0];
        DWORD1(v67) = *(v81 + 3);
        *(&v67 + 1) = v62;
        *&v68 = v64;
        *(&v68 + 1) = v24;
        *&v69 = v63;
        BYTE8(v69) = v65;
        *(&v69 + 9) = v80[0];
        HIDWORD(v69) = *(v80 + 3);
        *v70 = v61;
        *&v70[8] = v71;
        *&v70[72] = v75;
        *&v70[56] = v74;
        *&v70[40] = v73;
        *&v70[24] = v72;
        *&v70[136] = v79;
        *&v70[120] = v78;
        *&v70[104] = v77;
        *&v70[88] = v76;
        goto LABEL_37;
      }

      goto LABEL_53;
    }

    v10 = v54;
    v7 = v55;
    (v53)(v66, 0);
    v52(&v67, 0);
    if (!*(v50 + 16))
    {
      goto LABEL_45;
    }

    v56 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.SwiftUI);
    if (v57)
    {
      v58 = *(*(v50 + 56) + 8 * v56);
      if (v58 < v48)
      {
        v59 = v45 + 24 * v58;
        if (!*v59)
        {
          goto LABEL_55;
        }

        (v10)(**(v59 + 16));
        outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10, v7);
        goto LABEL_35;
      }
    }

    else
    {
LABEL_46:
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = *(v2 + 56);
  v90 = 1;
  v91 = v37 ^ 1;
  v92 = v38;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v96 = 0;
  v97 = 2;
  v98 = &type metadata for Trace.SwiftUI;
  v99 = 1;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(&v90);
  v63 = v39;
  if (!v7)
  {
    goto LABEL_40;
  }

  if (v5)
  {
    v65 = 1;
    goto LABEL_22;
  }

LABEL_58:
  __break(1u);
}

void specialized Trace.add<A>(handle:)(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v7 = *(v1 + 10);
  v5 = (v1 + 5);
  v6 = v7;
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = v5[2];
  do
  {
    if (24 * v9 + 24 == v4 + 24)
    {
      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_41;
    }

    v11 = *(v6 + v4);
    v4 += 24;
  }

  while (v11 != &type metadata for Trace.UIKit);
  v12 = *(a1 + 80);
  v60 = *(a1 + 64);
  v61 = v12;
  v13 = *(a1 + 112);
  v62 = *(a1 + 96);
  v63 = v13;
  v14 = *(a1 + 16);
  *v57 = *a1;
  *&v57[16] = v14;
  v15 = *(a1 + 48);
  v58 = *(a1 + 32);
  v59 = v15;
  Trace_Handle_Storage.deallocate()();
  if (!v10[2])
  {
    goto LABEL_37;
  }

  v5 = v10;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.UIKit);
  if ((v17 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(v10[7] + 8 * v16);
  if (v18 >= v9)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*(v6 + 24 * v18))
  {
    return;
  }

  __break(1u);
LABEL_10:
  v19 = *(a1 + 24);
  v20 = v2[1];
  v65[0] = *v2;
  v65[1] = v20;
  v22 = *v2;
  v21 = v2[1];
  v65[2] = v2[2];
  v66 = *(v2 + 24);
  v23 = *(v19 + 48);
  v25 = *(v19 + 16);
  v24 = *(v19 + 32);
  v67[0] = *v19;
  v67[1] = v25;
  v56 = *(a1 + 40);
  v26 = *(v2 + 7);
  v53 = *(v2 + 8);
  v67[2] = v24;
  v68 = v23;
  v27 = v2[2];
  *(v19 + 48) = *(v2 + 24);
  *(v19 + 16) = v21;
  *(v19 + 32) = v27;
  *v19 = v22;
  outlined init with copy of TraceConfig(v65, v57);
  outlined destroy of TraceConfig(v67);
  v28 = *(v2 + 49);
  v54 = v26;
  v55 = v8;
  if (v28)
  {
    v29 = *(v2 + 56);
    *v57 = 2;
    v57[4] = v28 ^ 1;
    *&v57[8] = v29;
    v58 = 0uLL;
    *&v57[24] = 0;
    LODWORD(v59) = 0;
    BYTE4(v59) = 2;
    *(&v59 + 1) = &type metadata for Trace.UIKit;
    LODWORD(v60) = 1;
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(v57);
    if (!v9)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!v6)
    {
      goto LABEL_49;
    }

    v31 = v30;
    v56 = 1;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_40;
    }

    if (!v6)
    {
      goto LABEL_47;
    }

    if (!*v6)
    {
      goto LABEL_48;
    }

    v32 = **(v6 + 16);
    os_unfair_lock_lock_with_options();
    v31 = *(v32 + 40);
    os_unfair_lock_unlock(v32);
  }

  if (!*v6)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v33 = **(v6 + 16);
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v34 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v34);
  if (*(v34 + 5))
  {
    goto LABEL_32;
  }

  *(v34 + 8) = v28;
  *(v34 + 9) = *(a1 + 1);
  *(v34 + 12) = *(a1 + 4);
  *(v34 + 16) = v54;
  *(v34 + 24) = v53;
  *(v34 + 32) = v19;
  *(v34 + 40) = v31;
  *(v34 + 48) = v56;
  *(v34 + 49) = *(a1 + 41);
  *(v34 + 52) = *(a1 + 44);
  *(v34 + 56) = v33;
  v35 = *(a1 + 56);
  v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  v38 = *(a1 + 104);
  *(v34 + 128) = *(a1 + 120);
  *(v34 + 96) = v37;
  *(v34 + 112) = v38;
  *(v34 + 64) = v35;
  *(v34 + 80) = v36;
  *(v34 + 5) = 1;
  os_unfair_lock_unlock(v34);
  v39 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v34);
  v40 = lazy protocol witness table accessor for type Trace.UIKit and conformance Trace.UIKit();
  if (v9 == v55)
  {
    specialized UnsafeArray.growToCapacity(_:)();
  }

  v41 = *v5;
  if (!*v5)
  {
    goto LABEL_43;
  }

  v42 = *(v2 + 23);
  v43 = (v41 + 24 * v42);
  *v43 = &type metadata for Trace.UIKit;
  v43[1] = v40;
  v43[2] = v39;
  v44 = v42 + 1;
  if (v42 == -1)
  {
    goto LABEL_33;
  }

  *(v2 + 23) = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v2 + 12);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44 - 1, &type metadata for Trace.UIKit, isUniquelyReferenced_nonNull_native);
  v46 = v64;
  *(v2 + 12) = v64;
  if (!*v41)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v47 = **(v41 + 16);
  os_unfair_lock_lock_with_options();
  _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAC0A2UIV_Ttg5Tm(_s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC5UIKitV_Tt2g5);
  os_unfair_lock_unlock(v47);
  if (!*(v46 + 16))
  {
    goto LABEL_34;
  }

  v48 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.UIKit);
  if ((v49 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v50 = *(*(v46 + 56) + 8 * v48);
  if (v50 >= v44)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v51 = v41 + 24 * v50;
  if (!*v51)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v52 = **(v51 + 16);
  os_unfair_lock_lock_with_options();
  os_unfair_lock_unlock(v52);
  if (*(v41 + 24 * (v44 - 1)))
  {
    return;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

{
  v2 = v1;
  v4 = 0;
  v7 = *(v1 + 10);
  v5 = (v1 + 5);
  v6 = v7;
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  do
  {
    if (24 * v9 + 24 == v4 * 8 + 24)
    {
      v15 = *(a1 + 24);
      v16 = v2[1];
      v47[0] = *v2;
      v47[1] = v16;
      v18 = *v2;
      v17 = v2[1];
      v47[2] = v2[2];
      v48 = *(v2 + 24);
      v19 = *(v15 + 48);
      v21 = *(v15 + 16);
      v20 = *(v15 + 32);
      v49[0] = *v15;
      v49[1] = v21;
      v38 = *(v2 + 56);
      v49[2] = v20;
      v50 = v19;
      v22 = v2[2];
      *(v15 + 48) = *(v2 + 24);
      *(v15 + 16) = v17;
      *(v15 + 32) = v22;
      *v15 = v18;
      outlined init with copy of TraceConfig(v47, v39);
      outlined destroy of TraceConfig(v49);
      v23 = (*(v2 + 49) & 1) == 0;
      *v39 = 0;
      v39[4] = v23;
      *&v39[8] = *(v2 + 56);
      v40 = 0uLL;
      *&v39[24] = 0;
      BYTE4(v41) = 2;
      LODWORD(v41) = 0;
      *(&v41 + 1) = &type metadata for Trace.Control;
      LODWORD(v42) = 1;
      _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(v39);
      v25 = v24;
      v26 = swift_slowAlloc();
      *v26 = 0;
      *(v26 + 4) = 0;
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner(v26);
      if (*(v26 + 5))
      {
        __break(1u);
      }

      else
      {
        *(v26 + 8) = 1;
        *(v26 + 9) = *(a1 + 1);
        *(v26 + 12) = *(a1 + 4);
        *(v26 + 16) = v38;
        *(v26 + 32) = v15;
        *(v26 + 40) = v25;
        *(v26 + 48) = 1;
        *(v26 + 81) = *(a1 + 73);
        *(v26 + 97) = *(a1 + 89);
        *(v26 + 113) = *(a1 + 105);
        *(v26 + 128) = *(a1 + 120);
        *(v26 + 49) = *(a1 + 41);
        *(v26 + 65) = *(a1 + 57);
        *(v26 + 5) = 1;
        os_unfair_lock_unlock(v26);
        v27 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v26);
        v28 = lazy protocol witness table accessor for type Trace.Control and conformance Trace.Control();
        if (v9 == v8)
        {
          specialized UnsafeArray.growToCapacity(_:)();
        }

        v29 = *v5;
        if (!*v5)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v30 = *(v2 + 23);
        v31 = (v29 + 24 * v30);
        *v31 = &type metadata for Trace.Control;
        v31[1] = v28;
        v31[2] = v27;
        v32 = __CFADD__(v30, 1);
        v33 = v30 + 1;
        if (!v32)
        {
          *(v2 + 23) = v33;
          v34 = v33 - 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v2 + 12);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, &type metadata for Trace.Control, isUniquelyReferenced_nonNull_native);
          *(v2 + 12) = v46;
          if (*v29)
          {
            v36 = **(v29 + 16);
            os_unfair_lock_lock_with_options();
            _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAE_Ttg5();
            os_unfair_lock_unlock(v36);
            if (*v29)
            {
              v37 = **(v29 + 16);
              os_unfair_lock_lock_with_options();
              os_unfair_lock_unlock(v37);
              if (*(v29 + 24 * v34))
              {
                return;
              }

              goto LABEL_22;
            }

LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    v10 = v6[v4];
    v4 += 3;
  }

  while (v10 != &type metadata for Trace.Control);
  v11 = *(a1 + 80);
  v42 = *(a1 + 64);
  v43 = v11;
  v12 = *(a1 + 112);
  v44 = *(a1 + 96);
  v45 = v12;
  v13 = *(a1 + 16);
  *v39 = *a1;
  *&v39[16] = v13;
  v14 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v14;
  Trace_Handle_Storage.deallocate()();
  if (*v6)
  {
    return;
  }

LABEL_23:
  __break(1u);
}

id SwiftUITrace.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftUITrace.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUITrace();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SwiftUITrace.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SwiftUITrace();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized XPCDispatch.handle_event(event:connection:)(void *a1, _xpc_connection_s *a2)
{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {

    specialized Client.dispatch(_:connection:)(a1);
  }

  else if (v7 == XPC_TYPE_ERROR.getter())
  {

    Client.onError(connection:error:)(a2, a1);
  }

  else if (v7 == XPC_TYPE_CONNECTION.getter())
  {
    specialized XPCDispatch.handle_connection(object:)(a1, &unk_287CE0FB8, partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:), &block_descriptor_199);
  }

  else
  {
    xpc_type_get_name(v7);
    v9 = String.init(utf8String:)();
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEC00000065707974;
    }

    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v12))
    {
      if (v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0x206E776F6E6B6E75;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, &v22);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = MEMORY[0x26D69ECF0](a2);
      v18 = String.init(cString:)();
      v20 = v19;
      free(v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26C161000, v5, v12, "Unknown xpc type: %s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v15, -1, -1);
      MEMORY[0x26D69EAB0](v14, -1, -1);
    }

    else
    {
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {

    Host.dispatch(_:connection:)(a1, a2);
  }

  else if (v7 == XPC_TYPE_ERROR.getter())
  {

    Host.onError(connection:error:)(a2, a1);
  }

  else if (v7 == XPC_TYPE_CONNECTION.getter())
  {
    specialized XPCDispatch.handle_connection(object:)(a1, &unk_287CE1058, partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:), &block_descriptor_212);
  }

  else
  {
    xpc_type_get_name(v7);
    v9 = String.init(utf8String:)();
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEC00000065707974;
    }

    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v12))
    {
      if (v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0x206E776F6E6B6E75;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, &v22);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = MEMORY[0x26D69ECF0](a2);
      v18 = String.init(cString:)();
      v20 = v19;
      free(v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26C161000, v5, v12, "Unknown xpc type: %s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v15, -1, -1);
      MEMORY[0x26D69EAB0](v14, -1, -1);
    }

    else
    {
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized XPCDispatch.handle_event(event:connection:)(_xpc_connection_s *a1, _xpc_connection_s *a2)
{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {
    goto LABEL_24;
  }

  if (v7 != XPC_TYPE_ERROR.getter())
  {
    if (v7 == XPC_TYPE_CONNECTION.getter())
    {

      specialized XPCDispatch.handle_connection(object:)(a1);
      return;
    }

    xpc_type_get_name(v7);
    v9 = String.init(utf8String:)();
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xEC00000065707974;
    }

    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v12))
    {
      if (v10)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0x206E776F6E6B6E75;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, &v22);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = MEMORY[0x26D69ECF0](a2);
      v18 = String.init(cString:)();
      v20 = v19;
      free(v17);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26C161000, v5, v12, "Unknown xpc type: %s %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v15, -1, -1);
      MEMORY[0x26D69EAB0](v14, -1, -1);
    }

    else
    {
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  Tracer.onError(connection:error:)(a2, a1);
}

{
  v4 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v5 = log;
  if (os_log_type_enabled(log, v4))
  {
    swift_unknownObjectRetain();
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = xpc_connection_get_pid(a2);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v5, v4, "handle xpc message for pid %{public}d", v6, 8u);
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = MEMORY[0x26D69EE00](a1);
  if (v7 == XPC_TYPE_DICTIONARY.getter())
  {
    v8 = 0x8002000010002;
    v9 = "CLI received: %s";
LABEL_11:
    specialized CLI.dispatch(_:connection:)(a1, v9, v8);
    return;
  }

  if (v7 == XPC_TYPE_ERROR.getter())
  {
    v8 = 0x8002200010002;
    v9 = "error: %{public}s";
    goto LABEL_11;
  }

  if (v7 == XPC_TYPE_CONNECTION.getter())
  {
    specialized XPCDispatch.handle_connection(object:)(a1, &unk_287CE0E28, partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:), &block_descriptor_165);
  }

  else
  {
    xpc_type_get_name(v7);
    v11 = String.init(utf8String:)();
    v12 = v10;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xEC00000065707974;
    }

    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v14))
    {
      if (v12)
      {
        v15 = v11;
      }

      else
      {
        v15 = 0x206E776F6E6B6E75;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315394;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v13, &v24);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = MEMORY[0x26D69ECF0](a2);
      v20 = String.init(cString:)();
      v22 = v21;
      free(v19);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v24);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_26C161000, v5, v14, "Unknown xpc type: %s %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v17, -1, -1);
      MEMORY[0x26D69EAB0](v16, -1, -1);
    }

    else
    {
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized XPCDispatch.handle_connection(object:)(_xpc_connection_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x26D69EE00]();
  if (v8 == XPC_TYPE_CONNECTION.getter())
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = a1;
    v33[4] = a3;
    v33[5] = v21;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 1107296256;
    v33[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
    v33[3] = a4;
    v22 = _Block_copy(v33);

    swift_unknownObjectRetain();

    xpc_connection_set_event_handler(a1, v22);
    _Block_release(v22);
    xpc_connection_resume(a1);
    return;
  }

  v9 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  if (v8 == v9)
  {
    v11 = static os_log_type_t.error.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v12 = log;
    if (os_log_type_enabled(log, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33[0] = v14;
      *v13 = 136446210;
      v23 = MEMORY[0x26D69ECF0](a1);
      v24 = String.init(cString:)();
      v26 = v25;
      free(v23);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v33);

      *(v13 + 4) = v27;
      v20 = "Invalid connection: %{public}s";
      goto LABEL_17;
    }
  }

  else
  {
    v10 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
    swift_unknownObjectRelease();
    v11 = static os_log_type_t.error.getter();
    if (v8 == v10)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v12 = log;
      if (os_log_type_enabled(log, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v33[0] = v14;
        *v13 = 136446210;
        v28 = MEMORY[0x26D69ECF0](a1);
        v29 = String.init(cString:)();
        v31 = v30;
        free(v28);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v33);

        *(v13 + 4) = v32;
        v20 = "interupted connection: %{public}s";
        goto LABEL_17;
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v12 = log;
      if (os_log_type_enabled(log, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v33[0] = v14;
        *v13 = 136446210;
        v15 = MEMORY[0x26D69ECF0](a1);
        v16 = String.init(cString:)();
        v18 = v17;
        free(v15);
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v33);

        *(v13 + 4) = v19;
        v20 = "Unknown xpc type: %{public}s";
LABEL_17:
        _os_log_impl(&dword_26C161000, v12, v11, v20, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x26D69EAB0](v14, -1, -1);
        MEMORY[0x26D69EAB0](v13, -1, -1);
      }
    }
  }
}

void specialized XPCDispatch.handle_connection(object:)(_xpc_connection_s *a1)
{
  v3 = MEMORY[0x26D69EE00]();
  if (v3 == XPC_TYPE_CONNECTION.getter())
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;
    v29[4] = partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:);
    v29[5] = v16;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1107296256;
    v29[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
    v29[3] = &block_descriptor_177;
    v17 = _Block_copy(v29);
    v18 = v1;
    swift_unknownObjectRetain();

    xpc_connection_set_event_handler(a1, v17);
    _Block_release(v17);
    xpc_connection_resume(a1);
    return;
  }

  v4 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  if (v3 == v4)
  {
    v6 = static os_log_type_t.error.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v7 = log;
    if (os_log_type_enabled(log, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29[0] = v9;
      *v8 = 136446210;
      v19 = MEMORY[0x26D69ECF0](a1);
      v20 = String.init(cString:)();
      v22 = v21;
      free(v19);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v29);

      *(v8 + 4) = v23;
      v15 = "Invalid connection: %{public}s";
      goto LABEL_17;
    }
  }

  else
  {
    v5 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
    swift_unknownObjectRelease();
    v6 = static os_log_type_t.error.getter();
    if (v3 == v5)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = log;
      if (os_log_type_enabled(log, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29[0] = v9;
        *v8 = 136446210;
        v24 = MEMORY[0x26D69ECF0](a1);
        v25 = String.init(cString:)();
        v27 = v26;
        free(v24);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v29);

        *(v8 + 4) = v28;
        v15 = "interupted connection: %{public}s";
        goto LABEL_17;
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = log;
      if (os_log_type_enabled(log, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29[0] = v9;
        *v8 = 136446210;
        v10 = MEMORY[0x26D69ECF0](a1);
        v11 = String.init(cString:)();
        v13 = v12;
        free(v10);
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v29);

        *(v8 + 4) = v14;
        v15 = "Unknown xpc type: %{public}s";
LABEL_17:
        _os_log_impl(&dword_26C161000, v7, v6, v15, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x26D69EAB0](v9, -1, -1);
        MEMORY[0x26D69EAB0](v8, -1, -1);
      }
    }
  }
}

uint64_t specialized closure #1 in XPCDispatch.handle_connection(object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a1;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for specialized closure #1 in closure #1 in XPCDispatch.handle_connection(object:);
  *(v8 + 24) = v7;
  v12[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_222;
  v9 = _Block_copy(v12);
  v10 = v6;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t specialized XPCDispatch.connect()()
{
  if (!*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = String.utf8CString.getter();
    v3 = v1;
    mach_service = xpc_connection_create_mach_service((v2 + 32), v3, 1uLL);

    *(v0 + 16) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (mach_service)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      *(v5 + 24) = mach_service;
      aBlock[4] = partial apply for specialized closure #1 in XPCDispatch.connect();
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_206;
      v6 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      xpc_connection_set_event_handler(mach_service, v6);
      _Block_release(v6);
      swift_unknownObjectRelease();
      v7 = *(v0 + 16);
      if (v7)
      {
        xpc_connection_resume(v7);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v1 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection;
  if (!*&v0[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection])
  {
    v2 = *&v0[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_q];
    v3 = String.utf8CString.getter();
    v4 = v2;
    mach_service = xpc_connection_create_mach_service((v3 + 32), v4, 0);

    *&v0[v1] = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (mach_service)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      *(v6 + 24) = mach_service;
      aBlock[4] = partial apply for specialized closure #1 in XPCDispatch.connect();
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_171;
      v7 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();
      v8 = v0;

      xpc_connection_set_event_handler(mach_service, v7);
      _Block_release(v7);
      swift_unknownObjectRelease();
      v9 = *&v0[v1];
      if (v9)
      {
        xpc_connection_resume(v9);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized XPCDispatch.connect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + 16))
  {
    v6 = *(v3 + 24);
    v7 = String.utf8CString.getter();
    v8 = v6;
    mach_service = xpc_connection_create_mach_service((v7 + 32), v8, 0);

    *(v3 + 16) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (mach_service)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = mach_service;
      aBlock[4] = a2;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = a3;
      v11 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      xpc_connection_set_event_handler(mach_service, v11);
      _Block_release(v11);
      swift_unknownObjectRelease();
      v12 = *(v3 + 16);
      if (v12)
      {
        xpc_connection_resume(v12);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TracingState()
{
  v1 = 1701736295;
  if (*v0 == 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6963617274;
  }
}

SwiftUITracingSupport::TraceModality_optional __swiftcall TraceModality.init(rawValue:)(SwiftUITracingSupport::TraceModality_optional rawValue)
{
  if (rawValue.value == SwiftUITracingSupport_TraceModality_oneTestFile)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SwiftUITracingSupport_TraceModality_ktrace)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance TraceModality@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id Tracer.init(modality:config:)(unsigned __int8 *a1, __int128 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v36 = type metadata accessor for URL();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport15ModalityStorageOSgMd, &_s21SwiftUITracingSupport15ModalityStorageOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = (&v32 - v8);
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v13 - 8);
  v39 = *a1;
  v14 = a2[1];
  v48 = *a2;
  v49 = v14;
  v50 = a2[2];
  v51 = *(a2 + 24);
  *&v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection] = 0;
  v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state] = 1;
  *&v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients] = 0;
  v38 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v37 = "resourceSetDidChange";
  static DispatchQoS.unspecified.getter();
  v43 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v40);
  *&v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_q] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v39;
  v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_modality] = v39;
  v16 = &v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_config];
  v17 = v49;
  *v16 = v48;
  *(v16 + 1) = v17;
  *(v16 + 2) = v50;
  *(v16 + 24) = v51;
  if ((v15 & 1) == 0)
  {
    v28 = mach_continuous_time();
    v29 = v33;
    *v33 = MEMORY[0x277D84F90];
    *(v29 + 8) = v28;
    *(v29 + 16) = -1;
    v30 = type metadata accessor for ModalityStorage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    outlined init with take of ModalityStorage?(v29, &v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_modalityStorage]);
    goto LABEL_5;
  }

  v47 = -1;
  v45 = 0;
  v46 = 0xE000000000000000;
  outlined init with copy of TraceConfig(&v48, &v43);
  _StringGuts.grow(_:)(25);

  v43 = 0x7461676572676761;
  v44 = 0xEF2D656C69662D65;
  v18 = [objc_opt_self() processInfo];
  v19 = [v18 processIdentifier];

  LODWORD(v45) = v19;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v20);

  MEMORY[0x26D69CDB0](0x697574666977732ELL, 0xE800000000000000);
  v21 = v34;
  specialized static URL.mktempCommon(_:x:)(v43, v44, &v47, v34);

  v22 = v47;
  fd = ktrace_file_create_fd();
  if (fd)
  {
    v24 = fd;
    outlined destroy of TraceConfig(&v48);
    v25 = &v3[OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_modalityStorage];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerV5trace_s5Int32V2fd10Foundation3URLV3urltMd, &_ss13OpaquePointerV5trace_s5Int32V2fd10Foundation3URLV3urltMR) + 64);
    *v25 = v24;
    *(v25 + 2) = v22;
    (*(v35 + 32))(&v25[v26], v21, v36);
    v27 = type metadata accessor for ModalityStorage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
LABEL_5:
    v42.receiver = v3;
    v42.super_class = ObjectType;
    return objc_msgSendSuper2(&v42, sel_init);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Host.Command.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6172546E69676562;
  v3 = 0x537465675F6C7463;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x62616E655F6C7463;
  if (v1 != 4)
  {
    v4 = 0x617369645F6C7463;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x707673526E6FLL;
  if (v1 != 2)
  {
    v5 = 0x6665636172476E6FLL;
  }

  if (*v0)
  {
    v2 = 0x6963617254646E65;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall Tracer.endTracing()()
{
  v1 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients;
  swift_beginAccess();
  if (*&v0[v1])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v0[v1] = MEMORY[0x277D84F90];
    v2 = v0;
    specialized Tracer.endTracingImpl(block:)(v2, v2);
  }
}

unint64_t Tracer.appendChunks(to:)(unint64_t a1)
{
  v2 = v1;
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v77 - v4;
  v6 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
LABEL_68:
      aBlock = 0;
      v106 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      aBlock = 0xD000000000000010;
      v106 = 0x800000026C33D530;
      *&v111 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v72 = BidirectionalCollection<>.joined(separator:)();
      v74 = v73;

      MEMORY[0x26D69CDB0](v72, v74);

      v75 = aBlock;
      *(v2 + v6) = 0;

      return v75;
    }

    v87 = v7 + 32;
    v92 = &v107;

    v11 = 0;
    v80 = v6;
    v81 = v2;
    v78 = v10;
    v79 = v5;
    v77 = v8;
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        goto LABEL_73;
      }

      v12 = (v87 + 48 * v11);
      v13 = *(v12 + 5);
      v84 = *(v12 + 4);
      v85 = v11 + 1;
      v86 = v9;
      v14 = *v12;
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      type metadata accessor for KtraceFile(0);
      swift_allocObject();
      v83 = v13;

      v113[0] = KtraceFile.init(ktrace_fd:owner:path:)(v14, v2, v5);
      v113[1] = 0;
      v113[2] = MEMORY[0x277D84F90];

      v16 = v82;
LABEL_6:
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      *(v17 + 48) = 0;
      v18 = swift_allocObject();
      *(v18 + 16) = v113;
      *(v18 + 24) = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = partial apply for closure #1 in KtraceFile.ChunkIterator.next();
      *(v19 + 24) = v18;
      if (!*(v16 + 16))
      {
        goto LABEL_76;
      }

      v109 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      v110 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v106 = 1107296256;
      v107 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      v108 = &block_descriptor_5;
      v20 = _Block_copy(&aBlock);

      ktrace_file_iterate();
      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v17 + 16, &v111, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

      if (v112)
      {
        break;
      }

      v9 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      }

      v6 = v80;
      v2 = v81;
      v69 = *(v9 + 16);
      v68 = *(v9 + 24);
      if (v69 >= v68 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v9);
      }

      *(v9 + 16) = v69 + 1;
      v70 = v9 + 16 * v69;
      v71 = v83;
      *(v70 + 32) = v84;
      *(v70 + 40) = v71;
      v10 = v78;
      v11 = v85;
      v5 = v79;
      if (v85 == v77)
      {
LABEL_67:

        goto LABEL_68;
      }
    }

    outlined init with take of KTraceFile_Chunk(&v111, v102);
    v93 = v89;
    v2 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v6 = 0;
    v22 = MEMORY[0x277D84F90] + 32;

    {
      v24 = swift_allocObject();
      *(v24 + 16) = 0u;
      v9 = v24 + 16;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0;
      v25 = swift_allocObject();
      *(v25 + 16) = &v93;
      *(v25 + 24) = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = closure #1 in KtraceFile.ChunkIterator.next()partial apply;
      *(v26 + 24) = v25;
      v27 = *(i + 16);
      if (!v27)
      {
        break;
      }

      v90 = v22;
      v91 = v2;
      v2 = *(v27 + 16);
      v109 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)partial apply;
      v110 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v106 = 1107296256;
      v107 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      v108 = &block_descriptor_24;
      v28 = _Block_copy(&aBlock);

      ktrace_file_iterate();
      _Block_release(v28);
      v29 = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
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
        goto LABEL_67;
      }

      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v9, &v99, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

      if (!v100)
      {

        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v99, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
        v40 = v91;
        v41 = v91[3];
        if (v41 >= 2)
        {
          v42 = v41 >> 1;
          v31 = __OFSUB__(v42, v6);
          v43 = v42 - v6;
          if (v31)
          {
            goto LABEL_71;
          }

          v91[2] = v43;
        }

        v88 = v40[2];

        v44 = v103;
        v45 = v104;
        __swift_project_boxed_opaque_existential_1(v102, v103);
        v46 = v89;
        (*(v45 + 32))(v101, v89, v44, v45);
        v96 = v46;
        v97 = 0;
        v47 = MEMORY[0x277D84F90];
        v98 = MEMORY[0x277D84F90];

        v6 = 0;
        v48 = (v47 + 4);
        v49 = v46;
        v2 = v47;
        while (1)
        {
          v9 = swift_allocObject();
          *(v9 + 16) = 0u;
          *(v9 + 32) = 0u;
          *(v9 + 48) = 0;
          v50 = swift_allocObject();
          *(v50 + 16) = &v96;
          *(v50 + 24) = v9;
          v51 = swift_allocObject();
          *(v51 + 16) = closure #1 in KtraceFile.ChunkIterator.next()partial apply;
          *(v51 + 24) = v50;
          if (!*(v49 + 16))
          {
            goto LABEL_75;
          }

          v90 = v48;
          v91 = v2;
          v2 = v97;
          v109 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)partial apply;
          v110 = v51;
          aBlock = MEMORY[0x277D85DD0];
          v106 = 1107296256;
          v107 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
          v108 = &block_descriptor_36;
          v52 = _Block_copy(&aBlock);

          ktrace_file_iterate();
          _Block_release(v52);
          v53 = swift_isEscapingClosureAtFileLocation();

          if (v53)
          {
            goto LABEL_63;
          }

          swift_beginAccess();
          outlined init with copy of ResourceSet<Interpreter, ()>(v9 + 16, &v93, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

          if (!v95)
          {

            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v93, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
            v63 = v91;
            v64 = v91[3];
            if (v64 >= 2)
            {
              v65 = v64 >> 1;
              v31 = __OFSUB__(v65, v6);
              v66 = v65 - v6;
              if (v31)
              {
                goto LABEL_72;
              }

              v91[2] = v66;
            }

            v67 = v63[2];

            if (v88 < v67)
            {
              __swift_destroy_boxed_opaque_existential_1(v101);
              __swift_destroy_boxed_opaque_existential_1(v102);
              v16 = v113[0];
              goto LABEL_6;
            }

            goto LABEL_70;
          }

          outlined init with take of KTraceFile_Chunk(&v93, &v99);
          v2 = v91;
          if (v6)
          {
            v54 = v90;
            v31 = __OFSUB__(v6--, 1);
            if (v31)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v55 = v91[3];
            if (((v55 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_66;
            }

            v56 = v55 & 0xFFFFFFFFFFFFFFFELL;
            if (v56 <= 1)
            {
              v57 = 1;
            }

            else
            {
              v57 = v56;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMR);
            v9 = swift_allocObject();
            v58 = (_swift_stdlib_malloc_size(v9) - 32) / 40;
            *(v9 + 16) = v57;
            *(v9 + 24) = 2 * v58;
            v59 = v9 + 32;
            v60 = v2[3] >> 1;
            if (v2[2])
            {
              v61 = v2 + 4;
              if (v9 != v2 || v59 >= v61 + 40 * v60)
              {
                memmove((v9 + 32), v61, 40 * v60);
              }

              v2[2] = 0;
            }

            v54 = v59 + 40 * v60;
            v62 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v60;

            v2 = v9;
            v31 = __OFSUB__(v62, 1);
            v6 = v62 - 1;
            if (v31)
            {
              goto LABEL_64;
            }
          }

          outlined init with take of KTraceFile_Chunk(&v99, v54);
          v48 = v54 + 40;
          v49 = v96;
        }
      }

      outlined init with take of KTraceFile_Chunk(&v99, v101);
      v2 = v91;
      if (v6)
      {
        v30 = v90;
        v31 = __OFSUB__(v6--, 1);
        if (v31)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v32 = v91[3];
        if (((v32 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_65;
        }

        v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
        if (v33 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16KTraceFile_Chunk_pGMR);
        v9 = swift_allocObject();
        v35 = (_swift_stdlib_malloc_size(v9) - 32) / 40;
        *(v9 + 16) = v34;
        *(v9 + 24) = 2 * v35;
        v36 = v9 + 32;
        v37 = v2[3] >> 1;
        if (v2[2])
        {
          v38 = v2 + 4;
          if (v9 != v2 || v36 >= v38 + 40 * v37)
          {
            memmove((v9 + 32), v38, 40 * v37);
          }

          v2[2] = 0;
        }

        v30 = v36 + 40 * v37;
        v39 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v2 = v9;
        v31 = __OFSUB__(v39, 1);
        v6 = v39 - 1;
        if (v31)
        {
          goto LABEL_62;
        }
      }

      outlined init with take of KTraceFile_Chunk(v101, v30);
      v22 = v30 + 40;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Tracer.onError(connection:error:)(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = MEMORY[0x26D69ECF0](a2);
  v5 = String.init(cString:)();
  v7 = v6;
  free(v4);
  v8 = xpc_connection_copy_invalidation_reason();
  if (v8)
  {
    v9 = v8;
    v10 = String.init(cString:)();
    v12 = v11;
    free(v9);
  }

  else
  {
    v12 = 0x800000026C33D550;
    v10 = 0xD000000000000011;
  }

  v13 = static os_log_type_t.error.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v14 = log;
  if (os_log_type_enabled(log, v13))
  {
    swift_unknownObjectRetain();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446722;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 1026;
    *(v15 + 14) = xpc_connection_get_pid(a1);
    swift_unknownObjectRelease();
    *(v15 + 18) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v23);

    *(v15 + 20) = v18;
    _os_log_impl(&dword_26C161000, v14, v13, "    Error: %{public}s     on connection: swiftuitraced pid:     %{public}d     invalidation: %s", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v16, -1, -1);
    MEMORY[0x26D69EAB0](v15, -1, -1);
  }

  else
  {
  }

  v19 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state;
  *(v2 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) = 1;
  if (one-time initialization token for registrationToken == -1)
  {
    v20 = static SwiftUITrace.registrationToken;
  }

  else
  {
    swift_once();
    v20 = static SwiftUITrace.registrationToken;
    if (!*(v2 + v19))
    {
      v21 = 1;
      goto LABEL_12;
    }

    if (*(v2 + v19) != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v21 = 0;
LABEL_12:

  return notify_set_state(v20, v21);
}

id Tracer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall Host.ClientConnection.closeAndUnlink()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 12) & 1) == 0)
  {
    close(*(v1 + 8));
    *(v1 + 8) = 0;
    *(v1 + 12) = 1;
  }

  v9 = *(type metadata accessor for Host.ClientConnection(0) + 32);
  outlined init with copy of ResourceSet<Interpreter, ()>(v1 + v9, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.unlink()();
    (*(v6 + 8))(v8, v5);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v1 + v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v6 + 56))(v1 + v9, 1, 1, v5);
  }
}

Swift::String __swiftcall Host.ClientConnection.fileTemplate(_:)(Swift::Int a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(16);
  v3 = [objc_opt_self() processInfo];
  [v3 processIdentifier];

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;

  MEMORY[0x26D69CDB0](45, 0xE100000000000000);
  xpc_connection_get_pid(*v2);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](45, 0xE100000000000000);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0x697574666977732ELL, 0xE800000000000000);
  v9 = v4;
  v10 = v6;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t Host.ClientConnection.cloned.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(20);
  v2 = [objc_opt_self() processInfo];
  [v2 processIdentifier];

  v3 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x26D69CDB0](45, 0xE100000000000000);
  xpc_connection_get_pid(*v1);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](0x2E64656E6F6C632ELL, 0xEF69757466697773);
  return v3;
}

NSUInteger Host.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = xmmword_26C32F2B0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 257;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    *(v0 + 112) = 8 * result;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 1;
    *(v0 + 160) = 0;
    v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v11[1] = "resourceSetDidChange";
    v11[2] = v10;
    static DispatchQoS.unspecified.getter();
    v11[3] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    v11[0] = v8;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v2 + 104))(v4, *MEMORY[0x277D85260], v1);
    *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v0 + 168) = MEMORY[0x277D84F90];
    specialized XPCDispatch.connect()();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Host.main()(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  dispatch_main();
}

SwiftUITracingSupport::Host::Command_optional __swiftcall Host.Command.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Host.Command.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Host.Command@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E6963;
  v4 = 0x6172546E69676562;
  v5 = 0xEC00000065746174;
  v6 = 0x537465675F6C7463;
  if (v2 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x800000026C33B120;
  }

  v7 = 0x62616E655F6C7463;
  v8 = 0xEB00000000656C62;
  if (v2 == 4)
  {
    v8 = 0xEA0000000000656CLL;
  }

  else
  {
    v7 = 0x617369645F6C7463;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xE600000000000000;
  v10 = 0x707673526E6FLL;
  result = 0x6665636172476E6FLL;
  if (v2 != 2)
  {
    v10 = 0x6665636172476E6FLL;
    v9 = 0xEE00746978456C75;
  }

  if (*v1)
  {
    v4 = 0x6963617254646E65;
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

SwiftUITracingSupport::Host::Command_optional Host.dispatch(_:connection:)(void *a1, _xpc_connection_s *a2)
{
  string = xpc_dictionary_get_string(a1, "swiftui_command");
  if (!string)
  {
    goto LABEL_44;
  }

  v3 = string;
  v7._countAndFlagsBits = String.init(cString:)();
  result.value = Host.Command.init(rawValue:)(v7).value;
  if (v15 <= 3u)
  {
    if (v15 > 1u)
    {
      if (v15 == 2)
      {

        return Host.onRsvp_sync(_:connection:)(a1, a2);
      }

      else
      {

        return Host.onGracefulExit(_:)(a1);
      }
    }

    else if (v15)
    {

      return Host.onEndTracing_sync(_:)(a1);
    }

    else
    {

      return Host.onBeginTracing_sync(_:)(a1);
    }
  }

  if (v15 <= 5u)
  {
    if (v15 != 4)
    {
      return result;
    }

    empty = xpc_dictionary_create_empty();
    v10 = 1701736302;
    if (*(v2 + 152) != 1)
    {
      v10 = 1701736295;
    }

    if (*(v2 + 152))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x676E6963617274;
    }

    if (*(v2 + 152))
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    goto LABEL_32;
  }

  if (v15 == 6)
  {
    empty = xpc_dictionary_create_reply(a1);
    if (empty)
    {
      v13 = 1701736295;
      if (*(v2 + 152) == 1)
      {
        v13 = 1701736302;
      }

      if (*(v2 + 152))
      {
        v11 = v13;
      }

      else
      {
        v11 = 0x676E6963617274;
      }

      if (*(v2 + 152))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

LABEL_32:
      v14 = empty;
      swift_getObjectType();
      v17 = MEMORY[0x277D837D0];
      v15 = v11;
      v16 = v12;
      OS_xpc_object.subscript.setter(&v15, 0xD000000000000028, 0x800000026C33D200);
      xpc_connection_send_message(a2, v14);

      return swift_unknownObjectRelease();
    }

    __break(1u);
    while (1)
    {
LABEL_44:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_45:
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33D910);
      v18 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  if (v15 != 7)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t Host.onBeginTracing_sync(_:)(void *a1)
{
  v2 = v1;
  v61 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Host.ClientConnection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = static Aggregate.invertable.getter();
  v9._object = 0x800000026C33D930;
  v10 = v8 & 1;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  result = OS_xpc_object.entitled(_:allowsInternal:)(v9, v10);
  if (result)
  {
    if (*(v1 + 152) != 1 || *(v1 + 24))
    {
      goto LABEL_40;
    }

    *(v1 + 152) = 0;
    specialized Host.state.didset();
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v12 = JSONDecoder.init()();
    length = 0;
    data = xpc_dictionary_get_data(a1, "config", &length);
    if (data)
    {
      v14 = specialized Data.init(bytes:count:)(data, length);
      if (length < 1)
      {
        goto LABEL_34;
      }

      v16 = v14;
      v17 = v15;
      lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
      v52 = v17;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v18 = *(v2 + 40);
      v19 = *(v2 + 48);
      v20 = v58;
      *(v2 + 40) = v57;
      v21 = v60;
      v22 = *(v2 + 56);
      v23 = *(v2 + 64);
      v24 = *(v2 + 72);
      *(v2 + 56) = v20;
      *(v2 + 72) = v59;
      *(v2 + 88) = v21;
      outlined consume of TraceConfig?(v18, v19, v22, v23, v24);
      v25 = xpc_dictionary_get_remote_connection(a1);
      if (v25)
      {
        v50 = v16;
        v51 = v12;
        *(v2 + 24) = v25;
        swift_unknownObjectRelease();
        reply = xpc_dictionary_create_reply(a1);
        if (reply)
        {
          swift_beginAccess();
          v26 = *(*(v2 + 168) + 16);
          if (v26)
          {
            v27 = 0;
            v53 = v4;
            v54 = v5;
            v55 = v26;
            while (1)
            {
              v29 = *(v2 + 168);
              if (v27 >= *(v29 + 16))
              {
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
              }

              v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
              v31 = *(v5 + 72) * v27;
              v32 = (v29 + v30 + v31);
              if (*(v32 + *(v4 + 36)) == 1)
              {
                break;
              }

LABEL_13:
              if (v26 == ++v27)
              {
                goto LABEL_26;
              }
            }

            pid = xpc_connection_get_pid(*v32);
            v34 = *(v2 + 24);
            if (!v34)
            {
              goto LABEL_35;
            }

            if (pid == xpc_connection_get_pid(v34))
            {
              goto LABEL_30;
            }

            v35 = xpc_dictionary_create(0, 0, 0);
            v36 = *(v2 + 168);
            if (v27 >= *(v36 + 16))
            {
              goto LABEL_31;
            }

            v37 = v35;
            outlined init with copy of Host.ClientConnection(v36 + v30 + v31, v7);
            v38 = *(v2 + 96);
            if (v38)
            {
              v39 = &v7[*(v4 + 40)];
              v40 = *v39;
              v41 = *(v39 + 1);
              v42 = v38;
              v43 = MEMORY[0x26D69CC20](v40, v41);
              v44 = [v42 firstMatchInString:v43 options:0 range:{0, String.count.getter()}];

              if (!v44)
              {
                outlined destroy of Host.ClientConnection(v7);
                v4 = v53;
                v5 = v54;
LABEL_11:
                v26 = v55;
                if (v27 >= *(*(v2 + 168) + 16))
                {
                  goto LABEL_32;
                }

                v28 = swift_unknownObjectRetain();
                xpc_connection_send_message(v28, v37);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_13;
              }

              v4 = v53;
              v5 = v54;
            }

            outlined destroy of Host.ClientConnection(v7);
            swift_beginAccess();
            v45 = *(v2 + 168);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 168) = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
              *(v2 + 168) = v45;
            }

            if (v27 >= v45[2])
            {
              goto LABEL_33;
            }

            Host.beginTracingImpl(_:dictionary:)(v45 + v30 + v31, v37);
            *(v2 + 168) = v45;
            swift_endAccess();
            goto LABEL_11;
          }

LABEL_26:
          v47 = *(v2 + 24);
          if (v47)
          {
            xpc_connection_send_message(v47, reply);
            swift_unknownObjectRelease();

            return outlined consume of Data._Representation(v50, v52);
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t Host.onEndTracing_sync(_:)(void *a1)
{
  swift_getObjectType();
  v3 = static Aggregate.invertable.getter();
  v4._object = 0x800000026C33D930;
  v5 = v3 & 1;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  result = OS_xpc_object.entitled(_:allowsInternal:)(v4, v5);
  if ((result & 1) == 0)
  {
    return result;
  }

  if (*(v1 + 152))
  {
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  *(v1 + 152) = 1;
  specialized Host.state.didset();
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = reply;
  v9 = Host.endTracingForClients()();
  xpc_dictionary_set_value(v8, "swiftui_clients", v9);
  swift_unknownObjectRelease();
  $defer #1 () in Host.onEndTracing_sync(_:)(a1, v8, v1);

  return swift_unknownObjectRelease();
}

uint64_t Host.onRsvp_sync(_:connection:)(void *a1, _xpc_connection_s *a2)
{
  v51 = a1;
  v48 = type metadata accessor for Host.ClientConnection(0);
  v4 = *(v48 - 8);
  v5 = MEMORY[0x28223BE20](v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v49 = &v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v46 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  swift_beginAccess();
  v15 = *(v2 + 168);
  v16 = *(v15 + 16);
  if (v16)
  {
    v50 = v7;
    v17 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

    v7 = 0;
    while (v7 < *(v15 + 16))
    {
      outlined init with copy of Host.ClientConnection(v17 + *(v4 + 72) * v7, v14);
      v18 = *v14;
      swift_unknownObjectRetain();
      outlined destroy of Host.ClientConnection(v14);
      swift_unknownObjectRelease();
      if (v18 == a2)
      {
      }

      if (v16 == ++v7)
      {

        v7 = v50;
        goto LABEL_7;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v2 + 168) = v12;
  }

  else
  {
LABEL_7:
    result = xpc_dictionary_get_string(v51, "binary_name");
    if (!result)
    {
      goto LABEL_38;
    }

    v47 = String.init(cString:)();
    v50 = v20;
    v21 = *(v2 + 168);
    v22 = *(v21 + 16);

    v14 = 0;
    while (v22 != v14)
    {
      if (v14 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      outlined init with copy of Host.ClientConnection(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14++, v12);
      pid = xpc_connection_get_pid(*v12);
      v24 = xpc_connection_get_pid(a2);
      outlined destroy of Host.ClientConnection(v12);
      if (pid == v24)
      {
      }
    }

    v14 = v48;
    v25 = *(v48 + 32);
    v26 = type metadata accessor for URL();
    v27 = v49;
    (*(*(v26 - 8) + 56))(v49 + v25, 1, 1, v26);
    *v27 = a2;
    *(v27 + 8) = 0;
    *(v27 + 12) = 1;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 1;
    *(v27 + *(v14 + 36)) = 1;
    v28 = (v27 + *(v14 + 40));
    v29 = v50;
    *v28 = v47;
    v28[1] = v29;
    swift_beginAccess();
    v12 = *(v2 + 168);

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 168) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v32 = v12[2];
  v31 = v12[3];
  v33 = (v32 + 1);
  if (v32 >= v31 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v12);
  }

  v12[2] = v33;
  v34 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v35 = *(v4 + 72);
  outlined init with take of Host.ClientConnection(v49, v12 + v34 + v35 * v32);
  *(v2 + 168) = v12;
  swift_endAccess();
  result = xpc_dictionary_create_reply(v51);
  if (!result)
  {
    goto LABEL_39;
  }

  v36 = result;

  if (*(v2 + 152))
  {
    goto LABEL_28;
  }

  v37 = *(v2 + 168);
  v38 = *(v37 + 16);
  if (!v38)
  {
    goto LABEL_34;
  }

  outlined init with copy of Host.ClientConnection(v37 + v34 + (v38 - 1) * v35, v7);
  v39 = *(v2 + 96);
  if (v39)
  {
    v40 = (v7 + *(v14 + 40));
    v41 = *v40;
    v32 = v40[1];
    v42 = v39;
    v43 = v7;
    v44 = MEMORY[0x26D69CC20](v41, v32);
    v33 = [v42 firstMatchInString:v44 options:0 range:{0, String.count.getter()}];

    if (!v33)
    {
      outlined destroy of Host.ClientConnection(v43);
      goto LABEL_28;
    }

    v7 = v43;
  }

  outlined destroy of Host.ClientConnection(v7);
  v33 = *(v2 + 168);
  v32 = *(v33 + 2);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 168) = v33;
  if ((result & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v32)
  {
    while (v32 <= *(v33 + 2))
    {
      Host.beginTracingImpl(_:dictionary:)(v33 + v34 + (v32 - 1) * v35, v36);
      *(v2 + 168) = v33;
      swift_endAccess();
LABEL_28:
      if (*(*(v2 + 168) + 16))
      {
        v45 = swift_unknownObjectRetain();
        xpc_connection_send_message(v45, v36);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      v33 = result;
      *(v2 + 168) = result;
      if (!v32)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t Host.onGracefulExit(_:)(void *a1)
{
  v24 = type metadata accessor for Host.ClientConnection(0);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v8 = xpc_dictionary_get_remote_connection(a1);
  swift_beginAccess();
  v9 = *(v1 + 168);
  int64 = *(v9 + 16);

  if (!int64)
  {
    goto LABEL_29;
  }

  v11 = 0;
  while (1)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v3 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v2 = *(v5 + 72) * v11;
    outlined init with copy of Host.ClientConnection(v9 + v3 + v2, v7);
    v12 = *v7;
    swift_unknownObjectRetain();
    outlined destroy of Host.ClientConnection(v7);
    swift_unknownObjectRelease();
    if (v8)
    {
      if (v8 == v12)
      {
        break;
      }
    }

    if (int64 == ++v11)
    {
      goto LABEL_29;
    }
  }

  swift_beginAccess();
  v5 = *(v1 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 168) = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

LABEL_20:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_8:
  v14 = v25;
  if (v11 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v5 + v3 + v2 + *(v24 + 36)) = 2;
    *(v1 + 168) = v5;
    swift_endAccess();
    int64 = xpc_dictionary_get_int64(v14, "bytes_written");
    swift_beginAccess();
    v5 = *(v1 + 168);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 168) = v5;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_10:
  if (v11 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v5 + v3 + v2 + 16) = int64;
    *(v1 + 168) = v5;
    swift_endAccess();
    v5 = xpc_dictionary_get_int64(v14, "bytes_written_compressed");
    swift_beginAccess();
    int64 = *(v1 + 168);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 168) = int64;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  int64 = specialized _ArrayBuffer._consumeAndCreateNew()(int64);
LABEL_12:
  if (v11 >= int64[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v17 = int64 + v3 + v2;
  *(v17 + 3) = v5;
  v17[32] = 0;
  *(v1 + 168) = int64;
  swift_endAccess();
  LOBYTE(v14) = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
LABEL_26:
    swift_once();
  }

  v18 = log;
  if (!os_log_type_enabled(log, v14))
  {
    return swift_unknownObjectRelease();
  }

  v19 = swift_slowAlloc();
  *v19 = 67240448;
  v20 = *(v1 + 168);
  if (v11 >= *(v20 + 16))
  {
    __break(1u);
  }

  else
  {
    v21 = v19;
    v19[1] = xpc_connection_get_pid(*(v20 + v3 + v2));
    *(v21 + 4) = 2050;
    v22 = *(v1 + 168);
    if (v11 < *(v22 + 16))
    {
      *(v21 + 10) = *(v22 + v3 + v2 + 16);

      _os_log_impl(&dword_26C161000, v18, v14, "client graceful exit %{public}d bytes:  %{public}lld ", v21, 0x12u);
      MEMORY[0x26D69EAB0](v21, -1, -1);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_29:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Host.beginTracingImpl(_:dictionary:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v44[-v11];
  if (*(a1 + 12) == 1 && !*(a1 + 16) && *(a1 + 32) == 1)
  {
    v13 = type metadata accessor for Host.ClientConnection(0);
    v14 = *(v13 + 36);
    if (*(a1 + v14) == 1)
    {
      v15 = v13;
      xpc_connection_get_pid(*a1);
      xpc_dictionary_set_string(a2, "swiftui_command", "beginTracing");
      v67[0] = -1;
      v16 = Host.ClientConnection.fileTemplate(_:)(*(v2 + 160));
      specialized static URL.mktempCommon(_:x:)(v16._countAndFlagsBits, v16._object, v67, v12);

      if (*(v2 + 72) == 1)
      {
        __break(1u);
      }

      else
      {
        v17 = *(v2 + 49) == 1;
        v51 = v14;
        if (v17)
        {
          v50 = v12;
          v49 = a2;
          v18 = static os_log_type_t.default.getter();
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v19 = log;
          v48 = *(v7 + 16);
          v48(v10, v50, v6);
          if (os_log_type_enabled(v19, v18))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v47 = v6;
            v22 = v21;
            v61.i64[0] = v21;
            *v20 = 136446210;
            v45 = v18;
            v23 = URL.path.getter();
            v46 = v15;
            v24 = v7;
            v26 = v25;
            (*(v24 + 8))(v10, v47);
            v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v61.i64);
            v7 = v24;
            v15 = v46;

            *(v20 + 4) = v27;
            _os_log_impl(&dword_26C161000, v19, v45, "new connection writing to: %{public}s", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v22);
            v28 = v22;
            v6 = v47;
            MEMORY[0x26D69EAB0](v28, -1, -1);
            MEMORY[0x26D69EAB0](v20, -1, -1);
          }

          else
          {
            (*(v7 + 8))(v10, v6);
          }

          v29 = *(v15 + 32);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1 + v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v12 = v50;
          v48((a1 + v29), v50, v6);
          (*(v7 + 56))(a1 + v29, 0, 1, v6);
          a2 = v49;
        }

        else
        {
          URL.unlink()();
        }

        v30 = v67[0];
        xpc_dictionary_set_fd(a2, "swiftui_fd", v67[0]);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v31 = *(v3 + 72);
        if (v31 != 1)
        {
          v32 = *(v3 + 88);
          v33 = *(v3 + 80);
          v35 = *(v3 + 56);
          v34 = *(v3 + 64);
          v60 = BYTE4(v33) & 1;
          LOBYTE(v57) = v35 & 1;
          *(&v57 + 1) = v34;
          *&v58 = v31;
          DWORD2(v58) = v33;
          BYTE12(v58) = BYTE4(v33) & 1;
          BYTE13(v58) = BYTE5(v33) & 1;
          BYTE14(v58) = BYTE6(v33) & 1;
          HIBYTE(v58) = HIBYTE(v33) & 1;
          v59 = v32 & 0x101;
          v36 = *(v3 + 40);
          v37 = *(v3 + 48);
          v38 = vdupq_lane_s64(v36.i64[0], 0);
          v39 = vdupq_laneq_s64(v36, 1);
          v61 = v36;
          LOBYTE(v56) = v36.i8[0] & 1;
          *(&v56 + 1) = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v38, xmmword_26C336DE0), vshlq_u64(v38, xmmword_26C336DD0))), 0x1000100010001), -24).u32[0];
          BYTE5(v56) = v36.i8[5] & 1;
          WORD3(v56) = v36.i16[3] & 0x101;
          BYTE8(v56) = v37 & 1;
          *v36.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v39, xmmword_26C336DE0), vshlq_u64(v39, xmmword_26C336DD0))), 0x1000100010001);
          *(&v56 + 9) = vuzp1_s8(*v36.i8, *v36.i8).u32[0];
          BYTE13(v56) = BYTE5(v37) & 1;
          BYTE14(v56) = BYTE6(v37) & 1;
          HIBYTE(v56) = HIBYTE(v37) & 1;
          v62 = v35;
          v63 = v34;
          v64 = v31;
          v65 = v33;
          v66 = v32;
          outlined init with copy of TraceConfig(&v61, &v52);
          lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
          v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          v42 = v41;
          v52 = v56;
          v53 = v57;
          v54 = v58;
          v55 = v59;
          outlined destroy of TraceConfig(&v52);
          swift_unknownObjectRetain();
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v40, v42, a2);

          outlined consume of Data._Representation(v40, v42);
          result = (*(v7 + 8))(v12, v6);
          *(a1 + 8) = v30;
          *(a1 + 12) = 0;
          *(a1 + v51) = 0;
          return result;
        }
      }

      __break(1u);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v55 = v59;
  outlined destroy of TraceConfig(&v52);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t $defer #1 () in Host.onEndTracing_sync(_:)(void *a1, void *a2, uint64_t a3)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = xpc_dictionary_get_remote_connection(a1);
  if (!v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  xpc_connection_send_message(v12, a2);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v13 = *(a3 + 168);
  v14 = v13[2];
  if (!v14)
  {
LABEL_13:
    swift_endAccess();
    v30 = *(a3 + 24);
    if (v30)
    {
      xpc_connection_cancel(v30);
      *(a3 + 24) = 0;
      return swift_unknownObjectRelease();
    }

LABEL_18:
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 168) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  }

  v16 = 0;
  v40 = (v10 + 6);
  v35 = (v10 + 1);
  v36 = (v10 + 4);
  v34 = (v10 + 7);
  v37 = v13;
  v38 = v14;
  while (1)
  {
    *(a3 + 168) = v13;
    if (v16 >= v13[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    v17 = type metadata accessor for Host.ClientConnection(0);
    v18 = v13 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v16;
    if ((*(v18 + 12) & 1) == 0)
    {
      close(*(v18 + 8));
      *(v18 + 8) = 0;
      *(v18 + 12) = 1;
    }

    v19 = *(v17 + 32);
    v10 = &_s10Foundation3URLVSgMR;
    outlined init with copy of ResourceSet<Interpreter, ()>(v18 + v19, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*v40)(v8, 1, v9) != 1)
    {
      break;
    }

    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_6:
    ++v16;
    *(a3 + 168) = v13;
    if (v14 == v16)
    {
      goto LABEL_13;
    }
  }

  v20 = a3;
  v21 = v39;
  v22 = v8;
  (*v36)(v39, v8, v9);
  v23 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v41[0] = 0;
  v27 = [v23 removeItemAtURL:v25 error:v41];

  v10 = v41[0];
  if (v27)
  {
    v28 = *v35;
    v29 = v41[0];
    v28(v21, v9);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v18 + v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*v34)(v18 + v19, 1, 1, v9);
    a3 = v20;
    v8 = v22;
    v13 = v37;
    v14 = v38;
    goto LABEL_6;
  }

  v32 = v41[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

xpc_object_t Host.endTracingForClients()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v48 - v2;
  v63 = type metadata accessor for URL();
  empty = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](v63);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v57 = &v48 - v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v48 - v8;
  v9 = type metadata accessor for Host.ClientConnection(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v54 = xpc_array_create(0, 0);
  swift_beginAccess();
  v19 = *(v0 + 168);
  v20 = v19[2];
  v66 = v0;
  v67 = v9;
  v52 = v18;
  if (!v20)
  {
LABEL_23:
    swift_endAccess();
    swift_beginAccess();
    v20 = v19[2];
    if (!v20)
    {
      v41 = 0;
      v43 = 0;
LABEL_47:
      specialized Array.replaceSubrange<A>(_:with:)(v41, v43);
      swift_endAccess();
      return v54;
    }

    v41 = 0;
    while (v41 < v19[2])
    {
      empty = ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v0 = *(v10 + 72);
      outlined init with copy of Host.ClientConnection(&empty[v19 + v0 * v41], v18);
      v42 = v18[*(v9 + 36)];
      outlined destroy of Host.ClientConnection(v18);
      v43 = v41 + 1;
      if (v42 == 2)
      {
        v44 = v19[2];
        if (v44 - 1 == v41)
        {
          goto LABEL_47;
        }

        v20 = &empty[v0 * v43];
        v9 = v67;
        v10 = v48;
        while (v43 < v44)
        {
          outlined init with copy of Host.ClientConnection(&v20[v19], v18);
          v9 = v18[*(v9 + 36)];
          outlined destroy of Host.ClientConnection(v18);
          if (v9 == 2)
          {
            v9 = v67;
          }

          else
          {
            if (v43 != v41)
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                goto LABEL_52;
              }

              v45 = v19[2];
              if (v41 >= v45)
              {
                goto LABEL_53;
              }

              v9 = v41 * v0;
              outlined init with copy of Host.ClientConnection(&empty[v19 + v41 * v0], v53);
              if (v43 >= v45)
              {
                goto LABEL_54;
              }

              outlined init with copy of Host.ClientConnection(&v20[v19], v10);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v66 + 168) = v19;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
                *(v66 + 168) = v19;
              }

              v18 = v52;
              if (v41 >= v19[2])
              {
                goto LABEL_55;
              }

              outlined assign with take of Host.ClientConnection(v10, &empty[v19 + v9]);
              v9 = v66;
              *(v66 + 168) = v19;
              if (v43 >= v19[2])
              {
                goto LABEL_56;
              }

              outlined assign with take of Host.ClientConnection(v53, &v20[v19]);
              *(v9 + 168) = v19;
            }

            v9 = v67;
            ++v41;
          }

          ++v43;
          v44 = v19[2];
          v20 += v0;
          if (v43 == v44)
          {
            if (v43 < v41)
            {
              goto LABEL_57;
            }

            goto LABEL_47;
          }
        }

        goto LABEL_50;
      }

      ++v41;
      v9 = v67;
      if (v20 == v43)
      {
        v41 = v19[2];
        v43 = v41;
        goto LABEL_47;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v19;
  if ((v21 & 1) == 0)
  {
LABEL_58:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
  }

  v23 = 0;
  v61 = (empty + 8);
  v55 = (empty + 48);
  v51 = (empty + 32);
  v50 = (empty + 16);
  v49 = (empty + 56);
  *&v22 = 67240192;
  v56 = v22;
  v65 = v20;
  while (1)
  {
    *(v0 + 168) = v19;
    if (v23 >= v19[2])
    {
      __break(1u);
      goto LABEL_49;
    }

    v24 = *(v10 + 72);
    v25 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v24 * v23;
    if (!*(v25 + *(v9 + 36)))
    {
      if (*(v25 + 12) == 1)
      {
        goto LABEL_60;
      }

      outlined init with copy of Host.ClientConnection(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v24 * v23, v68);
      v26 = static os_log_type_t.default.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v27 = log;
      if (os_log_type_enabled(log, v26))
      {
        v28 = swift_slowAlloc();
        *v28 = v56;
        v29 = v68;
        swift_beginAccess();
        v30 = *v29;
        v20 = v65;
        *(v28 + 4) = xpc_connection_get_pid(v30);
        _os_log_impl(&dword_26C161000, v27, v26, "will end tracing for %{public}d", v28, 8u);
        MEMORY[0x26D69EAB0](v28, -1, -1);
      }

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "swiftui_command", "endTracing");
      $defer #1 () in Host.endTracing(_:)(v25, empty);
      swift_unknownObjectRelease();
      outlined destroy of Host.ClientConnection(v68);
      if ((*(v25 + 12) & 1) == 0)
      {
        break;
      }
    }

LABEL_6:
    ++v23;
    *(v0 + 168) = v19;
    if (v20 == v23)
    {
      v18 = v52;
      goto LABEL_23;
    }
  }

  v9 = *(v25 + 8);
  v31 = xpc_dictionary_create(0, 0, 0);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

  v64 = v31;
  v32 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v58;
  URL.init(fileURLWithPath:isDirectory:)();

  Host.ClientConnection.cloned.getter();
  v34 = v57;
  URL.appendingPathComponent(_:)();

  v35 = v63;
  v60 = *v61;
  v60(v33, v63);
  empty = v59;
  URL.init(clone:to:)(v9, v34, v59);
  if ((*v55)(empty, 1, v35) == 1)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](empty, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)();
    swift_unknownObjectRelease();
    v9 = v67;
    v20 = v65;
LABEL_5:
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    v0 = v66;
    goto LABEL_6;
  }

  (*v51)(v62, empty, v35);
  v36 = URL.openFd(mode:)(0);
  Host.ClientConnection.closeAndUnlink()();
  *(v25 + 8) = v36;
  *(v25 + 12) = 0;
  v9 = v67;
  if (*(v66 + 72) != 1)
  {
    v20 = v65;
    if (*(v66 + 49))
    {
      v37 = *(v67 + 32);
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v25 + v37, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v38 = v63;
      (*v50)(v25 + v37, v62, v63);
      (*v49)(v25 + v37, 0, 1, v38);
    }

    else
    {
      URL.unlink()();
      v38 = v63;
    }

    v39 = v64;
    xpc_dictionary_set_fd(v64, "swiftui_fd", v36);
    xpc_dictionary_set_int64(v39, "bytes_written", *(v25 + 16));
    empty = String.utf8CString.getter();
    xpc_dictionary_set_string(v39, "binary_name", empty + 32);

    pid = xpc_connection_get_pid(*v25);
    xpc_dictionary_set_int64(v39, "pid", pid);
    xpc_array_append_value(v54, v39);
    swift_unknownObjectRelease();
    v60(v62, v38);
    goto LABEL_5;
  }

  __break(1u);
LABEL_60:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void $defer #1 () in Host.endTracing(_:)(uint64_t a1, void *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Host.ClientConnection(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  pid = xpc_connection_get_pid(*a1);
  v8 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C336DF0;
  v10 = v8;
  v11 = MEMORY[0x26D69CC20](0xD00000000000001FLL, 0x800000026C33D2B0);
  v12 = MEMORY[0x26D69CC20](0x6563617254, 0xE500000000000000);
  v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

  *(v9 + 32) = v13;
  *(v9 + 40) = [objc_opt_self() attributeWithCompletionPolicy_];
  v14 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v15 = MEMORY[0x26D69CC20](0x2049557466697753, 0xEF676E6963617254);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, 0x277D46DD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithExplanation:v15 target:v10 attributes:isa];

  v51[0] = 0;
  if ([v17 acquireWithError_])
  {
    v18 = *a1;
    v19 = v51[0];
    v20 = xpc_connection_send_message_with_reply_sync(v18, a2);
    v21 = static os_log_type_t.default.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v22 = log;
    if (os_log_type_enabled(log, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51[0] = v24;
      *v23 = 136446210;
      MEMORY[0x26D69ECF0](v20);
      v25 = String.init(cString:)();
      v50 = a1;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v51);
      a1 = v50;

      *(v23 + 4) = v27;
      _os_log_impl(&dword_26C161000, v22, v21, "received reply to onEndTracing: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D69EAB0](v24, -1, -1);
      MEMORY[0x26D69EAB0](v23, -1, -1);
    }

    int64 = xpc_dictionary_get_int64(v20, "bytes_written");
    v29 = xpc_dictionary_get_int64(v20, "bytes_written_compressed");
    *(a1 + 16) = int64;
    *(a1 + 24) = v29;
    *(a1 + 32) = 0;
    [v17 invalidate];
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = v51[0];
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined init with copy of Host.ClientConnection(a1, v6);
    v50 = v4;
    v32 = &v6[*(v4 + 40)];
    v33 = *v32;
    v34 = v32[1];

    outlined destroy of Host.ClientConnection(v6);
    v35 = static os_log_type_t.default.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v36 = log;
    if (os_log_type_enabled(log, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136446466;
      ErrorValue = swift_getErrorValue();
      v49 = v10;
      v47 = v33;
      MEMORY[0x28223BE20](ErrorValue);
      v48 = v31;
      (*(v41 + 16))(&v46 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v51);

      *(v37 + 4) = v44;
      *(v37 + 12) = 2082;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v34, v51);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_26C161000, v36, v35, "Error ending tracing for client: %{public}s, client: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v38, -1, -1);
      MEMORY[0x26D69EAB0](v37, -1, -1);
    }

    else
    {
    }

    v4 = v50;
  }

  *(a1 + *(v4 + 36)) = 1;
}

uint64_t Host.onError(connection:error:)(uint64_t *a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  pid = v81 - v6;
  v89 = type metadata accessor for URL();
  v82 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Host.ClientConnection(0);
  v11 = *(v10 - 8);
  v95 = v10;
  v96 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v81 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (v81 - v18);
  result = swift_beginAccess();
  v21 = *(v2 + 168);
  v22 = *(v21 + 16);
  v90 = v2;
  v87 = v9;
  v88 = v14;
  if (v22)
  {
    v23 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v93 = a2;
    v94 = v23;
    v24 = v21 + v23;

    v25 = 0;
    while (1)
    {
      if (v25 >= *(v21 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v9 = *(v96 + 72) * v25;
      outlined init with copy of Host.ClientConnection(v24 + v9, v19);
      v14 = a1;
      v26 = *v19;
      swift_unknownObjectRetain();
      outlined destroy of Host.ClientConnection(v19);
      swift_unknownObjectRelease();
      v27 = v26 == v14;
      a1 = v14;
      if (v27)
      {
        break;
      }

      if (v22 == ++v25)
      {

        v2 = v90;
        v14 = v88;
        goto LABEL_7;
      }
    }

    v32 = *(v90 + 168);
    if (v25 < *(v32 + 16))
    {
      if (*(v32 + v94 + v9 + v95[9]) == 2)
      {
        LOBYTE(v19) = static os_log_type_t.default.getter();
        if (one-time initialization token for log == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      }

      v63 = static os_log_type_t.error.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v64 = log;
      if (os_log_type_enabled(log, v63))
      {
        swift_unknownObjectRetain_n();
        v14 = swift_slowAlloc();
        v65 = a1;
        v66 = swift_slowAlloc();
        v97[0] = v66;
        *v14 = 136446722;
        v67 = MEMORY[0x26D69ECF0](v93);
        v68 = String.init(cString:)();
        v17 = v69;
        free(v67);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v17, v97);

        *(v14 + 4) = v70;
        *(v14 + 6) = 2082;
        v71 = *(v90 + 168);
        if (v25 < *(v71 + 16))
        {
          v72 = (v71 + v94 + v95[10] + v9);
          v73 = *v72;
          v74 = v72[1];

          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v97);

          *(v14 + 14) = v75;
          *(v14 + 11) = 1026;
          pid = xpc_connection_get_pid(v65);
          swift_unknownObjectRelease();
          *(v14 + 6) = pid;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_26C161000, v64, v63, "removed on error: %{public}s on connection: %{public}s pid: %{public}d", v14, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x26D69EAB0](v66, -1, -1);
          MEMORY[0x26D69EAB0](v14, -1, -1);
          goto LABEL_43;
        }

LABEL_57:
        __break(1u);
      }

LABEL_43:
      v76 = v90;
      swift_beginAccess();
      v77 = *(v76 + 168);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v76 + 168) = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
      }

      if (v25 >= v77[2])
      {
        __break(1u);
      }

      else
      {
        *(v77 + v94 + v9 + v95[9]) = 2;
        v79 = v90;
        *(v90 + 168) = v77;
        if (v25 < v77[2])
        {
          Host.ClientConnection.closeAndUnlink()();
          *(v79 + 168) = v77;
          return swift_endAccess();
        }
      }

      __break(1u);
LABEL_55:
      swift_once();
LABEL_11:
      os_log(_:dso:log:_:_:)();
      goto LABEL_12;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
LABEL_17:
    v33 = log;
    result = os_log_type_enabled(log, v19);
    if (result)
    {
      swift_unknownObjectRetain_n();
      v34 = swift_slowAlloc();
      v35 = a1;
      v36 = swift_slowAlloc();
      v97[0] = v36;
      *v34 = 136446722;
      v37 = MEMORY[0x26D69ECF0](v93);
      v38 = String.init(cString:)();
      v40 = v39;
      free(v37);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v97);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2082;
      v42 = *(v90 + 168);
      if (v25 < *(v42 + 16))
      {
        v43 = (v42 + v94 + v95[10] + v9);
        v44 = *v43;
        v45 = v43[1];

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v97);

        *(v34 + 14) = v46;
        *(v34 + 22) = 1026;
        LODWORD(v46) = xpc_connection_get_pid(v35);
        swift_unknownObjectRelease();
        *(v34 + 24) = v46;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_26C161000, v33, v19, "gracefully removed: %{public}s on connection: %{public}s pid: %{public}d", v34, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v36, -1, -1);
        return MEMORY[0x26D69EAB0](v34, -1, -1);
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
LABEL_7:
    v28 = *(v2 + 24);
    if (v28 && v28 == a1)
    {
      v81[1] = *(v2 + 24);
      v25 = v90;
      *(v90 + 24) = 0;
      if (!*(v25 + 152))
      {
        static os_log_type_t.error.getter();
        if (one-time initialization token for log != -1)
        {
          goto LABEL_55;
        }

        goto LABEL_11;
      }

LABEL_12:
      *(v25 + 152) = 1;
      specialized Host.state.didset();
      Host.endTracingForClients()();
      swift_unknownObjectRelease();
      v29 = *(v25 + 168);
      swift_beginAccess();
      v93 = v29;

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v25 + 168);
      if (v30)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, *(v31 + 16));
      }

      else
      {
        *(v25 + 168) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport4HostC16ClientConnectionV_Tt1g5(0, *(v31 + 24) >> 1);
      }

      swift_endAccess();
      v19 = *(v93 + 16);
      v47 = v89;
      if (!v19)
      {
LABEL_37:
        swift_unknownObjectRelease();
      }

      v9 = 0;
      v85 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v92 = v93 + v85;
      v91 = (v82 + 6);
      v84 = (v82 + 4);
      v83 = (v82 + 1);
      v82 += 7;
      a1 = &_s10Foundation3URLVSgMd;
      v86 = v19;
      while (1)
      {
        if (v9 >= *(v93 + 16))
        {
          goto LABEL_50;
        }

        v94 = *(v96 + 72);
        outlined init with copy of Host.ClientConnection(v92 + v94 * v9, v17);
        if ((v17[12] & 1) == 0)
        {
          close(*(v17 + 2));
          *(v17 + 2) = 0;
          v17[12] = 1;
        }

        v48 = v95[8];
        outlined init with copy of ResourceSet<Interpreter, ()>(&v17[v48], pid, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if ((*v91)(pid, 1, v47) == 1)
        {
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](pid, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }

        else
        {
          v49 = v87;
          v50 = pid;
          (*v84)(v87, pid, v47);
          v51 = [objc_opt_self() defaultManager];
          v52 = v47;
          URL._bridgeToObjectiveC()(v53);
          v55 = v54;
          v97[0] = 0;
          v56 = [v51 removeItemAtURL:v54 error:v97];

          if (!v56)
          {
            v80 = v97[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v57 = *v83;
          v58 = v97[0];
          v57(v49, v52);
          a1 = &_s10Foundation3URLVSgMd;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v17[v48], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*v82)(&v17[v48], 1, 1, v52);
          v25 = v90;
          v47 = v52;
          pid = v50;
          v14 = v88;
          v19 = v86;
        }

        if (v17[v95[9]] != 2)
        {
          outlined init with copy of Host.ClientConnection(v17, v14);
          swift_beginAccess();
          v59 = *(v25 + 168);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *(v25 + 168) = v59;
          if ((v60 & 1) == 0)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
            *(v25 + 168) = v59;
          }

          v62 = v59[2];
          v61 = v59[3];
          if (v62 >= v61 >> 1)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v59);
          }

          v59[2] = v62 + 1;
          outlined init with take of Host.ClientConnection(v14, v59 + v85 + v62 * v94);
          *(v25 + 168) = v59;
          swift_endAccess();
          v47 = v89;
          a1 = &_s10Foundation3URLVSgMd;
        }

        ++v9;
        outlined destroy of Host.ClientConnection(v17);
        if (v19 == v9)
        {
          goto LABEL_37;
        }
      }
    }
  }

  return result;
}

uint64_t Host.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined consume of TraceConfig?(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0 + 120, &_sypSgMd, &_sypSgMR);

  return v0;
}

uint64_t Host.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined consume of TraceConfig?(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0 + 120, &_sypSgMd, &_sypSgMR);

  return swift_deallocClassInstance();
}

Swift::Int Client.ConnectionError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  return Hasher._finalize()();
}

uint64_t Client.trace.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t closure #1 in variable initialization expression of Client.whenTracingBegins()
{
  if ((static SwiftUITrace.registerAtExit & 1) == 0)
  {
    return atexit(@objc closure #1 in closure #1 in variable initialization expression of Client.whenTracingBegins);
  }

  return result;
}

uint64_t Client.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v1 - 8);
  v12 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = 0;
  v6 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10[1] = "resourceSetDidChange";
  v10[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v3, *MEMORY[0x277D85260], v12);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 32) = 1;
  *(v0 + 40) = swift_slowAlloc();
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = xmmword_26C32F2B0;
  *(v0 + 104) = 0;
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v7 + 4) = 0;
  *(v0 + 112) = v7;
  *(v0 + 120) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(0, 0, 0, 0);
  *(v0 + 128) = &outlined read-only object #0 of Client.init();
  swift_unknownObjectWeakInit();
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  Client.register()();
  if (v8)
  {
  }

  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Client.register()()
{
  if (*(v0 + 53))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!*(v0 + 16))
  {
    v1 = MEMORY[0x26D69CC20](0xD00000000000001FLL, 0x800000026C33D8D0);
    v2 = NSClassFromString(v1);

    if (!v2)
    {
      specialized XPCDispatch.connect()(&unk_287CE0F68, partial apply for specialized closure #1 in XPCDispatch.connect(), &block_descriptor_191);
      if (!*(v0 + 16))
      {
LABEL_8:
        lazy protocol witness table accessor for type Client.ConnectionError and conformance Client.ConnectionError();
        swift_allocError();
        swift_willThrow();
        return;
      }

      if ((*(v0 + 53) & 1) == 0)
      {
        v3 = *(v0 + 24);
        v4 = swift_allocObject();
        *(v4 + 16) = partial apply for closure #1 in Client.rsvp();
        *(v4 + 24) = v0;
        v7[4] = thunk for @callee_guaranteed () -> ()partial apply;
        v7[5] = v4;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 1107296256;
        v7[2] = thunk for @escaping @callee_guaranteed () -> ();
        v7[3] = &block_descriptor_185;
        v5 = _Block_copy(v7);
        v6 = v3;

        dispatch_sync(v6, v5);

        _Block_release(v5);
        LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

        if ((v5 & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_8;
      }

LABEL_11:
      __break(1u);
    }
  }
}

uint64_t Client.init(test:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *(a1 + 4);
  v26 = *(a1 + 5);
  v27 = v9;
  v28 = *(a1 + 24);
  *(v2 + 16) = 0;
  v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v21[0] = "resourceSetDidChange";
  v21[1] = v10;
  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  v11 = a1[1];
  v22 = *a1;
  v23 = v11;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v6, *MEMORY[0x277D85260], v25);
  *(v2 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 32) = 1;
  *(v2 + 40) = swift_slowAlloc();
  *(v2 + 48) = 0;
  *(v2 + 52) = 1;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = xmmword_26C32F2B0;
  *(v2 + 104) = 0;
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v12 + 4) = 0;
  *(v2 + 112) = v12;
  *(v2 + 120) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(0, 0, 0, 0);
  *(v2 + 128) = &outlined read-only object #0 of Client.init(test:);
  swift_unknownObjectWeakInit();
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 53) = 1;
  v13 = *(v2 + 56);
  v14 = *(v2 + 64);
  v15 = *(v2 + 72);
  v16 = *(v2 + 80);
  v17 = *(v2 + 88);
  v18 = v23;
  *(v2 + 56) = v22;
  *(v2 + 72) = v18;
  v19 = v26;
  *(v2 + 88) = v27;
  *(v2 + 96) = v19;
  *(v2 + 104) = v28;
  outlined consume of TraceConfig?(v13, v14, v15, v16, v17);
  return v2;
}

uint64_t Client.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (v1)
  {
    if (*(v1 + 5) == 1)
    {
      outlined destroy of Trace(v1 + 8);
    }

    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 112) = 0;
    swift_endAccess();
    MEMORY[0x26D69EAB0](*(v0 + 40), -1, -1);
    swift_beginAccess();
    v2 = *(v0 + 120);
    if (v2)
    {
      MEMORY[0x26D69EAB0](v2, -1, -1);
      *(v0 + 120) = 0;
      swift_endAccess();
      swift_unknownObjectRelease();

      outlined consume of TraceConfig?(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

      MEMORY[0x26D69EB80](v0 + 136);
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Client.__deallocating_deinit()
{
  Client.deinit();

  return swift_deallocClassInstance();
}

uint64_t Client.onBeginTracing_sync(_:)(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  if (*(v1 + 53))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v1 + 32) == 1)
  {
    v6 = xpc_dictionary_dup_fd(a1, "swiftui_fd");
    *(v1 + 48) = v6;
    *(v1 + 52) = 0;
    if (v6 != -1)
    {
      v7 = v6;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      length = 0;
      data = xpc_dictionary_get_data(a1, "config", &length);
      if (!data)
      {
        goto LABEL_9;
      }

      v9 = specialized Data.init(bytes:count:)(data, length);
      if (length >= 1)
      {
        v11 = v9;
        v12 = v10;
        lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v13 = *(v1 + 56);
        v14 = *(v1 + 64);
        v15 = v26;
        *(v1 + 56) = v25;
        v16 = v28;
        v17 = *(v1 + 72);
        v18 = *(v1 + 80);
        v19 = *(v1 + 88);
        *(v1 + 72) = v15;
        *(v1 + 88) = v27;
        *(v1 + 104) = v16;
        outlined consume of TraceConfig?(v13, v14, v17, v18, v19);
        v20 = type metadata accessor for URL();
        (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
        type metadata accessor for KtraceFile(0);
        swift_allocObject();

        v21 = KtraceFile.init(create:owner:path:)(v7, v1, v5);
        Client.beginTracing(to:)(v21);

        return outlined consume of Data._Representation(v11, v12);
      }

LABEL_8:
      __break(1u);
LABEL_9:
      __break(1u);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Client.onEndTracing_sync(_:)(void *a1)
{
  if (*(v1 + 53))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  swift_unknownObjectRetain();
  reply = xpc_dictionary_create_reply(a1);
  if (!reply)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v2 = reply;
  if (*(v1 + 32))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  Client.endTracing()();
  xpc_dictionary_set_int64(v2, "bytes_written", v16[3]);
  xpc_dictionary_set_int64(v2, "bytes_written_compressed", v16[2]);
  xpc_connection_send_message(v4, v2);
  v3 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
LABEL_10:
    swift_once();
  }

  v7 = log;
  if (os_log_type_enabled(log, v3))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136446210;
    v10 = MEMORY[0x26D69ECF0](v2);
    v11 = String.init(cString:)();
    v13 = v12;
    free(v10);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v16);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26C161000, v7, v3, "sending reply to onEndTracing: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D69EAB0](v9, -1, -1);
    MEMORY[0x26D69EAB0](v8, -1, -1);
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  return result;
}

uint64_t closure #1 in Client.rsvp()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 32) == 1)
    {
      swift_unknownObjectRetain();
      empty = xpc_dictionary_create_empty();
      v3 = [objc_opt_self() processInfo];
      v4 = [v3 processName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String.utf8CString.getter();

      xpc_dictionary_set_string(empty, "binary_name", (v5 + 32));

      xpc_dictionary_set_string(empty, "swiftui_command", "onRsvp");
      $defer #1 () in closure #1 in Client.rsvp()(v1, empty);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t $defer #1 () in closure #1 in Client.rsvp()(_xpc_connection_s *a1, void *a2)
{
  v2 = xpc_connection_send_message_with_reply_sync(a1, a2);
  if (xpc_dictionary_get_string(v2, "swiftui_command"))
  {
    if (String.init(cString:)() == 0x6172546E69676562 && v3 == 0xEC000000676E6963)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    Client.onBeginTracing_sync(_:)(v2);
  }

LABEL_10:

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in Client.gracefulExit()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    if (!*(result + 32))
    {
      swift_unknownObjectRetain();
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "swiftui_command", "onGracefulExit");
      Client.endTracing()();
      xpc_dictionary_set_int64(empty, "bytes_written", v8);
      xpc_dictionary_set_int64(empty, "bytes_written_compressed", v7);
      *(v2 + 32) = 2;
      xpc_connection_send_message(v1, empty);
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v9 = partial apply for closure #1 in $defer #1 () in closure #1 in Client.gracefulExit();
      v10 = v4;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v7 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v8 = &block_descriptor_153;
      v5 = _Block_copy(v6);
      swift_unknownObjectRetain();

      xpc_connection_send_barrier(v1, v5);
      _Block_release(v5);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t Client.onError(connection:error:)(_xpc_connection_s *a1, uint64_t a2)
{
  v5 = static os_log_type_t.error.getter();
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v6 = log;
  if (os_log_type_enabled(log, v5))
  {
    swift_unknownObjectRetain_n();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = MEMORY[0x26D69ECF0](a2);
    v10 = String.init(cString:)();
    v12 = v11;
    free(v9);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v7 + 4) = v13;
    *(v7 + 12) = 1026;
    LODWORD(v13) = xpc_connection_get_pid(a1);
    swift_unknownObjectRelease();
    *(v7 + 14) = v13;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_26C161000, v6, v5, "Error! %{public}s on connection: swiftuitraced pid: %{public}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69EAB0](v8, -1, -1);
    MEMORY[0x26D69EAB0](v7, -1, -1);
  }

  v14 = *(v2 + 16);
  if (v14)
  {
    xpc_connection_cancel(v14);
  }

  *(v2 + 16) = 0;
  result = swift_unknownObjectRelease();
  if (!*(v2 + 32))
  {
    MEMORY[0x28223BE20](result);
    return Transaction.synchronized<A>(_:)();
  }

  return result;
}

void closure #1 in Client.onError(connection:error:)(uint64_t a1)
{
  *(a1 + 32) = 1;
  swift_beginAccess();
  v2 = *(a1 + 112);
  os_unfair_lock_lock_with_options();
  Trace.deallocate()();
  os_unfair_lock_unlock(v2);
  swift_beginAccess();
  v3 = *(a1 + 120);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = static SwiftUITrace.role;
  static SwiftUITrace.role = 0x8000000000000000;
  outlined consume of SwiftUITrace.Role(v4);
}

uint64_t CLI.init(verbose:)(int a1)
{
  v11 = a1;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0;
  v7 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v9[1] = "()";
  v9[2] = v7;
  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v10);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 1;
  *(v1 + 33) = v11;
  specialized XPCDispatch.connect()(&unk_287CE0DD8, partial apply for specialized closure #1 in XPCDispatch.connect(), &block_descriptor_159);
  return v1;
}

unint64_t CLI.sendMessage(_:)(unint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    swift_unknownObjectRetain();
    v4 = Dictionary<>.encodedXPCObject.getter(v3);
    v5 = xpc_connection_send_message_with_reply_sync(v2, v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (*(v1 + 33) == 1)
    {
      v6 = static os_log_type_t.debug.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = log;
      if (os_log_type_enabled(log, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v16 = v9;
        *v8 = 136315138;
        v10 = [v5 description];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

        *(v8 + 4) = v14;
        _os_log_impl(&dword_26C161000, v7, v6, "CLI received [SYNC]: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x26D69EAB0](v9, -1, -1);
        MEMORY[0x26D69EAB0](v8, -1, -1);
      }
    }

    swift_getObjectType();
    v15 = OS_xpc_object.xpcMessageDictionary.getter();
    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall CLI.getState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = 0x5F69757466697773;
  v1 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF646E616D6D6F63;
  strcpy((inited + 48), "ctl_getState");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v1, &_sSS_yptMd, &_sSS_yptMR);
  v3 = CLI.sendMessage(_:)(v2);

  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_10;
  }

  Dictionary<>.daemonResponse.getter(v3, &v11);

  if (!*(&v12 + 1))
  {
LABEL_10:
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v11, &_sypSgMd, &_sypSgMR);
    v6 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  v4 = swift_dynamicCast();
  v5 = v4 == 0;
  if (v4)
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v10;
  }

LABEL_11:
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t CLI.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t CLI.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAC0A2UIV_Ttg5Tm(void (*a1)(void *, void))
{
  v2 = v1;
  v3 = v1[4];
  if (!*(v3 + 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v2[3] + 49);
  v6 = *v3;
  v7 = *(v3 + 4);
  if (v7)
  {
    if ((*(v2[3] + 49) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v2[3] + 49);
    }

    if (v8 == 1)
    {
LABEL_12:
      a1(v2, 0);
      v11 = v2[4];
      if (*(v11 + 56))
      {
        CircularBuffer.Transaction.commit()();
        v12 = v2[1];
        if (v12)
        {
          if (*(v11 + 56))
          {
            v13 = v2[2];
            *v11 = v6;
            *(v11 + 4) = v7 & 1;
            *(v11 + 8) = v12;
            *(v11 + 16) = v13;
            *(v11 + 32) = 0;
            *(v11 + 40) = 0;
            *(v11 + 24) = 0;
            *(v11 + 48) = 0;
            *(v11 + 52) = 2;
            *(v11 + 56) = &type metadata for Trace.Control;
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  CircularBuffer.Transaction.commit()();
  v9 = v2[1];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v3 + 7))
  {
    v10 = v2[2];
    *v3 = 0;
    *(v3 + 4) = v5 ^ 1;
    *(v3 + 1) = v9;
    *(v3 + 2) = v10;
    *(v3 + 4) = 0;
    *(v3 + 5) = 0;
    *(v3 + 3) = 0;
    v3[12] = 0;
    *(v3 + 52) = 2;
    *(v3 + 7) = &type metadata for Trace.Control;
    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAE_Ttg5()
{
  v1 = v0;
  v2 = v0[4];
  if (!*(v2 + 7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = *v2;
  v4 = *(v2 + 4);
  if (v4)
  {
LABEL_6:
    _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AE_Tt2g5(v1, 1);
    v7 = v1[4];
    if (*(v7 + 56))
    {
      CircularBuffer.Transaction.commit()();
      v8 = v1[1];
      if (v8)
      {
        if (*(v7 + 56))
        {
          v9 = v1[2];
          *v7 = v3;
          *(v7 + 4) = v4 & 1;
          *(v7 + 8) = v8;
          *(v7 + 16) = v9;
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 24) = 0;
          *(v7 + 48) = 0;
          *(v7 + 52) = 2;
          *(v7 + 56) = &type metadata for Trace.Control;
          return;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  CircularBuffer.Transaction.commit()();
  v5 = v1[1];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + 7))
  {
    v6 = v1[2];
    *v2 = 0;
    *(v2 + 4) = 1;
    *(v2 + 1) = v5;
    *(v2 + 2) = v6;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 3) = 0;
    v2[12] = 0;
    *(v2 + 52) = 2;
    *(v2 + 7) = &type metadata for Trace.Control;
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC0A2UIV_Tt2g5(void *result, char a2)
{
  if (a2)
  {
    if (*(result[3] + 49))
    {
      specialized T_Header.init()(v104);
      specialized Trace_Handle.write<A>(struct:)(v104);
    }

    else
    {
      specialized T_Header.init()(v104);
      specialized Trace_Handle.write<A>(struct:)(123123123, (v105 << 16) | 1);
    }
  }

  v3 = result[3];
  if (*(v3 + 49) == 1)
  {
    v96 = result;
    static Trace.SwiftUI.types.getter(&v99);
    v4 = v99;
    v5 = v99 + 40;
    v6 = -*(v99 + 16);
    v7 = -1;
    do
    {
      if (v6 + v7 == -1)
      {
        goto LABEL_11;
      }

      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v8 = v5 + 16;
      v9 = *(v5 - 8);
      v10 = (*(*v5 + 24))(v9);
      v5 = v8;
    }

    while (v10 != -1);
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v3 = v100;
    v99 = v9;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(reflecting:)();
    v13 = v12;

    v99 = v11;
    v100 = v13;
    MEMORY[0x26D69CDB0](0xD00000000000002ALL, 0x800000026C33D810);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:

    static Trace.SwiftUI.types.getter(&v103);
    LOBYTE(v98) = *(v3 + 49);
    Evolution_Types.tracepoints(version:)(&v98, &v99);

    v14 = v99;
    v15 = *(v99 + 16);
    v99 = 0;
    v100 = 0;
    v101 = v15;
    v102 = 20;
    if (v15)
    {
      v86 = 0;
      v94 = 0;
      v16 = v14 + 40;
      v17 = v96;
      while (1)
      {
        v18 = *(v16 - 8);
        v19 = *v16;
        v20 = *(*v16 + 8);
        v92 = v20[9](v18, v20);
        v21 = v20[4](v18, v20);
        v23 = v21;
        v24 = v22;
        v25 = v17[12];
        v26 = *v25;
        if (*(*v25 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22), (v28 & 1) != 0))
        {
          v90 = *(*(v26 + 56) + 4 * v27);
        }

        else
        {
          v29 = specialized Trace_Handle.write<A>(attachment:)(v23, v24);
          v25 = v96[12];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = *v25;
          *v25 = 0x8000000000000000;
          v90 = v29;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v23, v24, isUniquelyReferenced_nonNull_native);
          *v25 = v103;
        }

        v31 = v20[5](v18, v20);
        v33 = v31;
        v34 = v32;
        v35 = *v25;
        if (*(*v25 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32), (v37 & 1) != 0))
        {
          v88 = *(*(v35 + 56) + 4 * v36);

          v17 = v96;
        }

        else
        {
          v38 = v15;
          v39 = v19;
          v40 = specialized Trace_Handle.write<A>(attachment:)(v33, v34);
          v41 = v96[12];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v103 = *v41;
          *v41 = 0x8000000000000000;
          v88 = v40;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v33, v34, v42);
          *v41 = v103;
          v17 = v96;
          v19 = v39;
          v15 = v38;
        }

        v43 = Trace.Control.writtenOnce(type:lazy:flush:)(v18, 0, 0);
        v44 = (*(v19 + 16))(v18, v19);
        if (v94 == v101 || !v86)
        {
          specialized BufferAttachment.append_slow()();
        }

        v45 = v100;
        if (v100 < 0)
        {
          break;
        }

        v46 = v102;
        if ((v100 * v102) >> 64 != (v100 * v102) >> 63)
        {
          goto LABEL_52;
        }

        v86 = v99;
        v47 = (v99 + v100 * v102);
        *v47 = v92;
        v47[1] = v90;
        v47[2] = v88;
        v47[3] = v43;
        v47[4] = v44;
        v94 = v45 + 1;
        v100 = v45 + 1;
        v16 += 16;
        if (!--v15)
        {

          v48 = v101;
          v49 = v86;
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v48 = 0;
    v94 = 0;
    v49 = 0;
    v46 = 20;
    v17 = v96;
LABEL_29:
    v87 = specialized Trace_Handle.write<A>(attachment:)(v49, v94, v48, v46);
    v100 = 0;
    static Trace.SwiftUI.types.getter(&v98);
    v97 = *(v17[3] + 49);
    Evolution_Types.attachments(version:)(&v97, &v103);

    v50 = *(v103 + 16);
    if (v50)
    {
      v95 = 0;
      v51 = v103 + 40;
      while (1)
      {
        v52 = *(v51 - 8);
        v53 = *(*v51 + 8);
        v93 = v53[9](v52, v53);
        v54 = v53[4](v52, v53);
        v56 = v54;
        v57 = v55;
        v58 = v17[12];
        v59 = *v58;
        if (*(*v58 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v55), (v61 & 1) != 0))
        {
          v91 = *(*(v59 + 56) + 4 * v60);
        }

        else
        {
          v62 = specialized Trace_Handle.write<A>(attachment:)(v56, v57);
          v58 = v96[12];
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v103 = *v58;
          *v58 = 0x8000000000000000;
          v91 = v62;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v56, v57, v63);
          *v58 = v103;
        }

        v64 = v53[5](v52, v53);
        v66 = v64;
        v67 = v65;
        v68 = *v58;
        if (*(*v58 + 16) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65), (v70 & 1) != 0))
        {
          v89 = *(*(v68 + 56) + 4 * v69);

          v17 = v96;
        }

        else
        {
          v71 = v50;
          v72 = specialized Trace_Handle.write<A>(attachment:)(v66, v67);
          v73 = v96[12];
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v103 = *v73;
          *v73 = 0x8000000000000000;
          v89 = v72;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, v66, v67, v74);
          *v73 = v103;
          v17 = v96;
          v50 = v71;
        }

        v75 = Trace.Control.writtenOnce(type:lazy:flush:)(v52, 0, 0);
        if (v95 == v101 || !v49)
        {
          specialized BufferAttachment.append_slow()();
        }

        v76 = v100;
        if (v100 < 0)
        {
          goto LABEL_53;
        }

        v46 = v102;
        if ((v100 * v102) >> 64 != (v100 * v102) >> 63)
        {
          goto LABEL_54;
        }

        v49 = v99;
        v77 = (v99 + v100 * v102);
        *v77 = v93;
        v77[1] = v91;
        v77[2] = v89;
        v77[3] = v75;
        v77[4] = 0;
        v95 = v76 + 1;
        v100 = v76 + 1;
        v51 += 16;
        if (!--v50)
        {

          v48 = v101;
          goto LABEL_47;
        }
      }
    }

    v95 = 0;
LABEL_47:
    v78 = specialized Trace_Handle.write<A>(attachment:)(v49, v95, v48, v46);
    v79 = off_287CE1D80;
    v80 = off_287CE1D80(&type metadata for Trace.SwiftUI, &protocol witness table for Trace.SwiftUI);
    v82 = specialized Trace_Handle.writtenOnce(string:)(v80, v81);

    v83 = v79(&type metadata for Trace.SwiftUI, &protocol witness table for Trace.SwiftUI);
    v85 = specialized Trace_Handle.writtenOnce(string:)(v83, v84);

    specialized Trace_Handle.write<A>(_:omit:)((v82 << 32) | 1, v85 | (v87 << 32), v78);
    if (v49)
    {
      MEMORY[0x26D69EAB0](v49, -1, -1);
    }
  }
}

uint64_t _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC5UIKitV_Tt2g5(uint64_t result, char a2)
{
  v2 = result;
  if (a2)
  {
    if (*(*(result + 24) + 49))
    {
      specialized T_Header.init()(v93);
      result = specialized Trace_Handle.write<A>(struct:)(v93);
    }

    else
    {
      specialized T_Header.init()(v93);
      result = specialized Trace_Handle.write<A>(struct:)(123123123, (v94 << 16) | 1);
    }
  }

  if ((*(*(v2 + 24) + 49) & 1) == 0)
  {
    return result;
  }

  v3 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  LOBYTE(v87) = 1;
  Evolution_Types.tracepoints(version:)(&v87, &v88);

  v4 = v88;
  v5 = *(v88 + 16);
  v88 = 0;
  v89 = 0;
  v90 = v5;
  v91 = 20;
  v85 = v2;
  if (v5)
  {
    v75 = 0;
    v83 = 0;
    v6 = v4 + 40;
    while (1)
    {
      v7 = *(v6 - 8);
      v8 = *v6;
      v9 = *(*v6 + 8);
      v81 = v9[9](v7, v9);
      v10 = v9[4](v7, v9);
      v12 = v10;
      v13 = v11;
      v14 = *(v2 + 96);
      v15 = *v14;
      if (*(*v14 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11), (v17 & 1) != 0))
      {
        v79 = *(*(v15 + 56) + 4 * v16);
      }

      else
      {
        v18 = specialized Trace_Handle.write<A>(attachment:)(v12, v13);
        v14 = *(v85 + 96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = *v14;
        *v14 = 0x8000000000000000;
        v79 = v18;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v12, v13, isUniquelyReferenced_nonNull_native);
        *v14 = v92;
      }

      v20 = v9[5](v7, v9);
      v22 = v20;
      v23 = v21;
      v24 = *v14;
      if (*(*v14 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v26 & 1) != 0))
      {
        v77 = *(*(v24 + 56) + 4 * v25);

        v2 = v85;
      }

      else
      {
        v27 = v5;
        v28 = v8;
        v29 = specialized Trace_Handle.write<A>(attachment:)(v22, v23);
        v30 = *(v85 + 96);
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v92 = *v30;
        *v30 = 0x8000000000000000;
        v77 = v29;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v22, v23, v31);
        *v30 = v92;
        v2 = v85;
        v8 = v28;
        v5 = v27;
      }

      v32 = Trace.Control.writtenOnce(type:lazy:flush:)(v7, 0, 0);
      result = (*(v8 + 16))(v7, v8);
      v33 = result;
      if (v83 == v90 || !v75)
      {
        result = specialized BufferAttachment.append_slow()();
      }

      v34 = v89;
      if (v89 < 0)
      {
        break;
      }

      v35 = v91;
      if ((v89 * v91) >> 64 != (v89 * v91) >> 63)
      {
        goto LABEL_46;
      }

      v75 = v88;
      v36 = (v88 + v89 * v91);
      *v36 = v81;
      v36[1] = v79;
      v36[2] = v77;
      v36[3] = v32;
      v36[4] = v33;
      v83 = v34 + 1;
      v89 = v34 + 1;
      v6 += 16;
      if (!--v5)
      {

        v37 = v90;
        v38 = v75;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v37 = 0;
  v83 = 0;
  v38 = 0;
  v35 = 20;
LABEL_24:
  v76 = specialized Trace_Handle.write<A>(attachment:)(v38, v83, v37, v35);
  v89 = 0;
  v87 = v3;
  v86 = *(*(v2 + 24) + 49);
  Evolution_Types.attachments(version:)(&v86, &v92);

  v39 = *(v92 + 16);
  if (v39)
  {
    v84 = 0;
    v40 = v92 + 40;
    while (1)
    {
      v41 = *(v40 - 8);
      v42 = *(*v40 + 8);
      v82 = v42[9](v41, v42);
      v43 = v42[4](v41, v42);
      v45 = v43;
      v46 = v44;
      v47 = *(v2 + 96);
      v48 = *v47;
      if (*(*v47 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44), (v50 & 1) != 0))
      {
        v80 = *(*(v48 + 56) + 4 * v49);
      }

      else
      {
        v51 = specialized Trace_Handle.write<A>(attachment:)(v45, v46);
        v47 = *(v85 + 96);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v92 = *v47;
        *v47 = 0x8000000000000000;
        v80 = v51;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v45, v46, v52);
        *v47 = v92;
      }

      v53 = v42[5](v41, v42);
      v55 = v53;
      v56 = v54;
      v57 = *v47;
      if (*(*v47 + 16) && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54), (v59 & 1) != 0))
      {
        v78 = *(*(v57 + 56) + 4 * v58);

        v2 = v85;
      }

      else
      {
        v60 = v39;
        v61 = specialized Trace_Handle.write<A>(attachment:)(v55, v56);
        v62 = *(v85 + 96);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v92 = *v62;
        *v62 = 0x8000000000000000;
        v78 = v61;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v55, v56, v63);
        *v62 = v92;
        v2 = v85;
        v39 = v60;
      }

      result = Trace.Control.writtenOnce(type:lazy:flush:)(v41, 0, 0);
      v64 = result;
      if (v84 == v90 || !v38)
      {
        result = specialized BufferAttachment.append_slow()();
      }

      v65 = v89;
      if (v89 < 0)
      {
        break;
      }

      v35 = v91;
      if ((v89 * v91) >> 64 != (v89 * v91) >> 63)
      {
        goto LABEL_48;
      }

      v38 = v88;
      v66 = (v88 + v89 * v91);
      *v66 = v82;
      v66[1] = v80;
      v66[2] = v78;
      v66[3] = v64;
      v66[4] = 0;
      v84 = v65 + 1;
      v89 = v65 + 1;
      v40 += 16;
      if (!--v39)
      {

        v37 = v90;
        goto LABEL_42;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  v84 = 0;
LABEL_42:
  v67 = specialized Trace_Handle.write<A>(attachment:)(v38, v84, v37, v35);
  v68 = off_287CE5DB8;
  v69 = off_287CE5DB8(&type metadata for Trace.UIKit, &protocol witness table for Trace.UIKit);
  v71 = specialized Trace_Handle.writtenOnce(string:)(v69, v70);

  v72 = v68(&type metadata for Trace.UIKit, &protocol witness table for Trace.UIKit);
  v74 = specialized Trace_Handle.writtenOnce(string:)(v72, v73);

  result = specialized Trace_Handle.write<A>(_:omit:)((v71 << 32) | 2, v74 | (v76 << 32), v67);
  if (v38)
  {
    return MEMORY[0x26D69EAB0](v38, -1, -1);
  }

  return result;
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AE_Tt2g5(void *result, char a2)
{
  if (a2)
  {
    if (*(result[3] + 49))
    {
      specialized T_Header.init()(v103);
      specialized Trace_Handle.write<A>(struct:)(v103);
    }

    else
    {
      specialized T_Header.init()(v103);
      specialized Trace_Handle.write<A>(struct:)(123123123, (v104 << 16) | 1);
    }
  }

  v3 = result[3];
  if (*(v3 + 49) == 1)
  {
    v95 = result;
    static Trace.Control.types.getter(&v98);
    v4 = v98;
    v5 = v98 + 40;
    v6 = -*(v98 + 16);
    v7 = -1;
    do
    {
      if (v6 + v7 == -1)
      {
        goto LABEL_11;
      }

      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v8 = v5 + 16;
      v9 = *(v5 - 8);
      v10 = (*(*v5 + 24))(v9);
      v5 = v8;
    }

    while (v10 != -1);
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v3 = v99;
    v98 = v9;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(reflecting:)();
    v13 = v12;

    v98 = v11;
    v99 = v13;
    MEMORY[0x26D69CDB0](0xD00000000000002ALL, 0x800000026C33D810);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:

    static Trace.Control.types.getter(&v102);
    LOBYTE(v97) = *(v3 + 49);
    Evolution_Types.tracepoints(version:)(&v97, &v98);

    v14 = v98;
    v15 = *(v98 + 16);
    v98 = 0;
    v99 = 0;
    v100 = v15;
    v101 = 20;
    if (v15)
    {
      v86 = 0;
      v93 = 0;
      v16 = v14 + 40;
      v17 = v95;
      while (1)
      {
        v18 = *(v16 - 8);
        v19 = *v16;
        v20 = *(*v16 + 8);
        v91 = v20[9](v18, v20);
        v21 = v20[4](v18, v20);
        v23 = v21;
        v24 = v22;
        v25 = v17[12];
        v26 = *v25;
        if (*(*v25 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22), (v28 & 1) != 0))
        {
          v89 = *(*(v26 + 56) + 4 * v27);
        }

        else
        {
          v29 = specialized Trace_Handle.write<A>(attachment:)(v23, v24);
          v25 = v95[12];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = *v25;
          *v25 = 0x8000000000000000;
          v89 = v29;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v23, v24, isUniquelyReferenced_nonNull_native);
          *v25 = v102;
        }

        v31 = v20[5](v18, v20);
        v33 = v31;
        v34 = v32;
        v35 = *v25;
        if (*(*v25 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32), (v37 & 1) != 0))
        {
          v87 = *(*(v35 + 56) + 4 * v36);

          v17 = v95;
        }

        else
        {
          v38 = v15;
          v39 = v19;
          v40 = specialized Trace_Handle.write<A>(attachment:)(v33, v34);
          v41 = v95[12];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v102 = *v41;
          *v41 = 0x8000000000000000;
          v87 = v40;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v33, v34, v42);
          *v41 = v102;
          v17 = v95;
          v19 = v39;
          v15 = v38;
        }

        v43 = Trace.Control.writtenOnce(type:lazy:flush:)(v18, 0, 0);
        v44 = (*(v19 + 16))(v18, v19);
        if (v93 == v100 || !v86)
        {
          specialized BufferAttachment.append_slow()();
        }

        v45 = v99;
        if (v99 < 0)
        {
          break;
        }

        v46 = v101;
        if ((v99 * v101) >> 64 != (v99 * v101) >> 63)
        {
          goto LABEL_52;
        }

        v86 = v98;
        v47 = (v98 + v99 * v101);
        *v47 = v91;
        v47[1] = v89;
        v47[2] = v87;
        v47[3] = v43;
        v47[4] = v44;
        v93 = v45 + 1;
        v99 = v45 + 1;
        v16 += 16;
        if (!--v15)
        {

          v48 = v100;
          v49 = v86;
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v48 = 0;
    v93 = 0;
    v49 = 0;
    v46 = 20;
    v17 = v95;
LABEL_29:
    v50 = specialized Trace_Handle.write<A>(attachment:)(v49, v93, v48, v46);
    v99 = 0;
    static Trace.Control.types.getter(&v97);
    v96 = *(v17[3] + 49);
    Evolution_Types.attachments(version:)(&v96, &v102);

    v51 = *(v102 + 16);
    if (v51)
    {
      v88 = v50;
      v52 = 0;
      v53 = v102 + 40;
      while (1)
      {
        v92 = v53;
        v54 = *(v53 - 8);
        v55 = *(*v53 + 8);
        v94 = v55[9](v54, v55);
        v56 = v55[4](v54, v55);
        v58 = v56;
        v59 = v57;
        v60 = v17[12];
        v61 = *v60;
        if (*(*v60 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57), (v63 & 1) != 0))
        {
          v90 = *(*(v61 + 56) + 4 * v62);
        }

        else
        {
          v64 = v52;
          v65 = v49;
          v66 = specialized Trace_Handle.write<A>(attachment:)(v58, v59);
          v60 = v95[12];
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v102 = *v60;
          *v60 = 0x8000000000000000;
          v90 = v66;
          v68 = v66;
          v49 = v65;
          v52 = v64;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v58, v59, v67);
          *v60 = v102;
        }

        v69 = v55[5](v54, v55);
        v71 = v69;
        v72 = v70;
        v73 = *v60;
        if (*(*v60 + 16) && (v74 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70), (v75 & 1) != 0))
        {
          v76 = *(*(v73 + 56) + 4 * v74);

          v17 = v95;
        }

        else
        {
          v76 = specialized Trace_Handle.write<A>(attachment:)(v71, v72);
          v77 = v95[12];
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v102 = *v77;
          *v77 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, v71, v72, v78);
          *v77 = v102;
          v17 = v95;
        }

        v79 = Trace.Control.writtenOnce(type:lazy:flush:)(v54, 0, 0);
        if (v52 == v100 || !v49)
        {
          specialized BufferAttachment.append_slow()();
        }

        v80 = v99;
        if (v99 < 0)
        {
          goto LABEL_53;
        }

        v46 = v101;
        if ((v99 * v101) >> 64 != (v99 * v101) >> 63)
        {
          goto LABEL_54;
        }

        v49 = v98;
        v81 = (v98 + v99 * v101);
        *v81 = v94;
        v81[1] = v90;
        v81[2] = v76;
        v81[3] = v79;
        v81[4] = 0;
        v52 = v80 + 1;
        v99 = v80 + 1;
        v53 = v92 + 16;
        if (!--v51)
        {

          v48 = v100;
          v82 = v52;
          v50 = v88;
          goto LABEL_47;
        }
      }
    }

    v82 = 0;
LABEL_47:
    v83 = specialized Trace_Handle.write<A>(attachment:)(v49, v82, v48, v46);
    v84 = specialized Trace_Handle.writtenOnce(string:)(0x6C61626F6C47, 0xE600000000000000);
    v85 = specialized Trace_Handle.writtenOnce(string:)(1701603654, 0xE400000000000000);
    specialized Trace_Handle.write<A>(_:omit:)(v84 << 32, v85 | (v50 << 32), v83);
    if (v49)
    {
      MEMORY[0x26D69EAB0](v49, -1, -1);
    }
  }
}

void _s21SwiftUITracingSupport14CircularBufferV8consumer5stats4syncACx_SpyAA5StatsVGSbtcAA0E8ConsumerRzlufCAA10ATRCWriterV_Tt3B5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, dispatch_semaphore_t **a5@<X8>)
{
  v10 = dispatch_semaphore_create(6);
  v11 = swift_slowAlloc();
  *v11 = v10;
  v12 = closure #1 in CircularBuffer.init<A>(consumer:stats:sync:)();
  v14 = v13;
  v20[3] = &type metadata for ATRCWriter;
  v20[4] = &protocol witness table for ATRCWriter;
  v20[0] = a1;
  v20[1] = a2;
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v15 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v15);
  if (*(v15 + 5))
  {
    __break(1u);
    goto LABEL_9;
  }

  outlined init with copy of Aggregate_AccessorProtocol(v20, v15 + 8);
  *(v15 + 5) = 1;
  os_unfair_lock_unlock(v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v16 = MEMORY[0x277D84F90];
  if (v14)
  {
    v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport08CircularC0V0C0V_Tt1g5(v14, 0);
    specialized UnsafeMutableBufferPointer._copyContents(initializing:)(v17 + 4, v14, v12, v14);
    if (v18 == v14)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v17 = v16;
LABEL_6:
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v19 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v19);
  if ((*(v19 + 5) & 1) == 0)
  {
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    *(v19 + 32) = a3;
    *(v19 + 40) = v17;
    *(v19 + 48) = v16;
    *(v19 + 56) = v16;
    *(v19 + 64) = 256;
    *(v19 + 66) = a4 & 1;
    *(v19 + 5) = 1;
    os_unfair_lock_unlock(v19);
    *a5 = v11;
    a5[1] = v19;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t _s21SwiftUITracingSupport5TraceV8accessor8AccessorQzxm_tcAA0D7_HandleRzluiMAC0A2UIV_Ttg5(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 96);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 80);
  v5 = *(v2 + 92);
  result = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.SwiftUI);
  if ((v6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  if (v7 >= v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v4 + 24 * v7))
  {
    return EventTreeStats.count.modify;
  }

LABEL_11:
  __break(1u);
  return result;
}

void closure #1 in $defer #1 () in closure #1 in Client.gracefulExit()(_xpc_connection_s *a1, uint64_t a2)
{
  xpc_connection_cancel(a1);
  if (*(a2 + 52))
  {
    __break(1u);
  }

  else
  {
    close(*(a2 + 48));
    *(a2 + 16) = 0;
    swift_unknownObjectRelease();
    *(a2 + 48) = 0;
    *(a2 + 52) = 1;
    *(a2 + 32) = 1;
  }
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
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

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, xpc_object_t xdict)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      bytes = result;
      v9 = a2;
      v10 = BYTE2(a2);
      v11 = BYTE3(a2);
      v12 = BYTE4(a2);
      v13 = BYTE5(a2);
      if (BYTE6(a2))
      {
        xpc_dictionary_set_data(xdict, "config", &bytes, BYTE6(a2));
        return swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }

    v6 = result;
    v7 = result >> 32;
    if (result >> 32 < result)
    {
      goto LABEL_11;
    }

LABEL_8:
    swift_unknownObjectRetain();
    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, xdict);
    return swift_unknownObjectRelease();
  }

  if (v5 == 2)
  {
    v6 = *(result + 16);
    v7 = *(result + 24);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, xpc_object_t xdict)
{
  bytes[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(bytes, 0, 14);
      v7 = xdict;
      v6 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      bytes[0] = a1;
      LOWORD(bytes[1]) = a2;
      BYTE2(bytes[1]) = BYTE2(a2);
      BYTE3(bytes[1]) = BYTE3(a2);
      BYTE4(bytes[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(bytes[1]) = BYTE5(a2);
      v7 = xdict;
LABEL_9:
      xpc_dictionary_set_data(v7, "config", bytes, v6);
      return swift_unknownObjectRelease();
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, xdict);
  return swift_unknownObjectRelease();
}

char *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_13;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x26D69C520]();
    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    v12 = &v8[v11];
    if (v8 && v12 - v8 > 0)
    {
      xpc_dictionary_set_data(a4, "config", v8, v12 - v8);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = MEMORY[0x26D69C520]();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  xpc_dictionary_set_data(a4, "config", v8, v11);
  return swift_unknownObjectRelease();
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t specialized initializeTempDir #1 () in static SwiftUITrace.processInitialization()()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if ((v0 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

void outlined consume of SwiftUITrace.Role(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_4;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
LABEL_4:
    }
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig()
{
  result = lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig;
  if (!lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig;
  if (!lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig);
  }

  return result;
}

unint64_t outlined copy of SwiftUITrace.Role(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
    }
  }

  else
  {
    return result;
  }

  return result;
}

uint64_t specialized Client.dispatch(_:connection:)(void *a1)
{
  if (*(v1 + 53))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!xpc_dictionary_get_string(a1, "swiftui_command"))
  {
LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = String.init(cString:)();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Client.Command.init(rawValue:), v7);

  if (!v8)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (v8 != 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33D910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_21;
  }

  v3 = 1;
LABEL_7:
  v2 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = log;
  v10 = os_log_type_enabled(log, v2);
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446210;
    if (v3)
    {
      v13 = 0x6963617254646E65;
    }

    else
    {
      v13 = 0x6172546E69676562;
    }

    if (v3)
    {
      v14 = 0xEA0000000000676ELL;
    }

    else
    {
      v14 = 0xEC000000676E6963;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26C161000, v9, v2, "invoked command: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D69EAB0](v12, -1, -1);
    v10 = MEMORY[0x26D69EAB0](v11, -1, -1);
  }

  v16 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v16);
  return Transaction.synchronized<A>(_:)();
}

uint64_t specialized Host.state.didset()
{
  if (one-time initialization token for registrationToken != -1)
  {
    swift_once();
  }

  if (*(v0 + 152))
  {
    if (*(v0 + 152) != 1)
    {
      goto LABEL_16;
    }

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  notify_set_state(static SwiftUITrace.registrationToken, v1);
  if (*(v0 + 152))
  {
    v9 = 0u;
    v10 = 0u;
LABEL_14:
    swift_beginAccess();
    outlined assign with take of Any?(&v9, v0 + 120);
    return swift_endAccess();
  }

  v2 = String.utf8CString.getter();
  notify_post((v2 + 32));

  v3 = *(v0 + 160);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (!v4)
  {
    *(v0 + 160) = v5;
    ObjectType = os_transaction_create();
    v7 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      *(&v9 + 1) = 0;
      *&v10 = 0;
    }

    *&v9 = v7;
    *(&v10 + 1) = ObjectType;
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized CLI.dispatch(_:connection:)(uint64_t result, const char *a2, int8x8_t a3)
{
  if (*(v3 + 33) == 1)
  {
    v6 = result;
    v7 = static os_log_type_t.debug.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v8 = log;
    result = os_log_type_enabled(log, v7);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = vuzp1_s8(a3, v11).u32[0];
      v12 = [v6 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v17);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_26C161000, v8, v7, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      return MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  return result;
}

uint64_t specialized Tracer.endTracingImpl(block:)(uint64_t a1, char *a2)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state;
  if (*(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state))
  {
    goto LABEL_30;
  }

  v4 = a2;
  *(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) = 1;
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection;
  v5 = *(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection);
  if (!v5)
  {
    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "swiftui_command", "endTracing");
  v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
  v8 = xpc_dictionary_get_array(v7, "swiftui_clients");
  if (v8)
  {
    v9 = v8;
    count = xpc_array_get_count(v8);
    if ((count & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      connection = v5;
      v34 = v3;
      v35 = v2;
      if (!count)
      {
LABEL_24:
        xpc_connection_cancel(connection);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *(v35 + v34) = 0;
        return swift_unknownObjectRelease();
      }

      v11 = 0;
      v2 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients;
      v36 = count;
      v37 = v9;
      while (1)
      {
        v12 = xpc_array_get_dictionary(v9, v11);
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v41 = xpc_dictionary_dup_fd(v12, "swiftui_fd");
        int64 = xpc_dictionary_get_int64(v13, "bytes_written");
        v14 = xpc_dictionary_get_int64(v13, "bytes_written_compressed");
        v4 = v14;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v38 = v15;
        string = xpc_dictionary_get_string(v13, "binary_name");
        xpc_dictionary_get_int64(v13, "pid");
        v17 = static os_log_type_t.default.getter();
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v18 = log;
        if (os_log_type_enabled(log, v17))
        {
          swift_unknownObjectRetain();
          v19 = swift_slowAlloc();
          *v19 = 67240960;
          *(v19 + 4) = v41;
          *(v19 + 8) = 2050;
          *(v19 + 10) = xpc_dictionary_get_int64(v13, "pid");
          swift_unknownObjectRelease();
          *(v19 + 18) = 2050;
          *(v19 + 20) = v4;
          *(v19 + 28) = 2050;
          *(v19 + 30) = int64;
          _os_log_impl(&dword_26C161000, v18, v17, "writing fd: %{public}d, client: %{public}lld, compressed: %{public}ld, uncompressed: %{public}ld", v19, 0x26u);
          MEMORY[0x26D69EAB0](v19, -1, -1);
        }

        if (string)
        {
          v20 = String.init(cString:)();
          v22 = v21;
        }

        else
        {
          v22 = 0xE300000000000000;
          v20 = 7104878;
        }

        MEMORY[0x26D69CDB0](v20, v22);

        MEMORY[0x26D69CDB0](10272, 0xE200000000000000);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v23);

        MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        v3 = 0;
        swift_beginAccess();
        v24 = *&a2[v2];
        if (!v24)
        {
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a2[v2] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
          *&a2[v2] = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
        }

        v24[2] = v27 + 1;
        v28 = &v24[6 * v27];
        *(v28 + 8) = v41;
        ++v11;
        v29 = v4 == 0x7FFFFFFFFFFFFFFFLL;
        v4 = a2;
        v28[5] = int64;
        v28[6] = v38;
        *(v28 + 56) = v29;
        v28[8] = 0;
        v28[9] = 0xE000000000000000;
        *&a2[v2] = v24;
        swift_endAccess();
        swift_unknownObjectRelease();

        v9 = v37;
        if (v36 == v11)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
  }

  __break(1u);
LABEL_30:
  _StringGuts.grow(_:)(41);

  if (*(v2 + v3))
  {
    v31 = 1701736295;
    if (*(v2 + v3) == 1)
    {
      v31 = 1701736302;
    }

    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE700000000000000;
    v31 = 0x676E6963617274;
  }

  MEMORY[0x26D69CDB0](v31, v32);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_26C2A82CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C2A830C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of TraceConfig?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys()
{
  result = lazy protocol witness table cache variable for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys;
  if (!lazy protocol witness table cache variable for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceModality and conformance TraceModality()
{
  result = lazy protocol witness table cache variable for type TraceModality and conformance TraceModality;
  if (!lazy protocol witness table cache variable for type TraceModality and conformance TraceModality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceModality and conformance TraceModality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Host.Command and conformance Host.Command()
{
  result = lazy protocol witness table cache variable for type Host.Command and conformance Host.Command;
  if (!lazy protocol witness table cache variable for type Host.Command and conformance Host.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Host.Command and conformance Host.Command);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Client.ConnectionError and conformance Client.ConnectionError()
{
  result = lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError;
  if (!lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError;
  if (!lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError);
  }

  return result;
}

uint64_t sub_26C2A857C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SwiftUITrace.allowRegister;
  return result;
}

uint64_t sub_26C2A85C8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SwiftUITrace.allowRegister = v1;
  return result;
}

void type metadata completion function for Tracer(uint64_t a1)
{
  type metadata accessor for ModalityStorage?(319, &lazy cache variable for type metadata for ModalityStorage?, type metadata accessor for ModalityStorage);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for Host.Command(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Host.Command(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C2A8A0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26C2A8ADC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Host.ClientConnection(uint64_t a1)
{
  type metadata accessor for OS_xpc_object();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Int32?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Int32?(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ModalityStorage?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t type metadata accessor for OS_xpc_object()
{
  result = lazy cache variable for type metadata for OS_xpc_object;
  if (!lazy cache variable for type metadata for OS_xpc_object)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_xpc_object);
  }

  return result;
}

void type metadata accessor for Int32?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModalityStorage?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for ModalityStorage(uint64_t a1)
{
  type metadata accessor for (fd_list: [Int32], interval: Interval)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (trace: OpaquePointer, fd: Int32, url: URL)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (fd_list: [Int32], interval: Interval)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (fd_list: [Int32], interval: Interval))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5Int32VGMd, &_sSays5Int32VGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fd_list: [Int32], interval: Interval));
    }
  }
}

void type metadata accessor for (trace: OpaquePointer, fd: Int32, url: URL)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (trace: OpaquePointer, fd: Int32, url: URL))
  {
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (trace: OpaquePointer, fd: Int32, url: URL));
    }
  }
}

unint64_t lazy protocol witness table accessor for type TracingState and conformance TracingState()
{
  result = lazy protocol witness table cache variable for type TracingState and conformance TracingState;
  if (!lazy protocol witness table cache variable for type TracingState and conformance TracingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TracingState and conformance TracingState);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:)(uint64_t a1)
{
  return specialized XPCDispatch.handle_event(event:connection:)(a1, *(v1 + 24));
}

{
  return specialized XPCDispatch.handle_event(event:connection:)(a1, *(v1 + 24));
}

{
  return specialized XPCDispatch.handle_event(event:connection:)(a1, *(v1 + 24));
}

{
  return specialized closure #1 in XPCDispatch.handle_connection(object:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t objectdestroy_167Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with take of ModalityStorage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport15ModalityStorageOSgMd, &_s21SwiftUITracingSupport15ModalityStorageOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Client.dispatch(_:connection:)()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16))
  {
    return Client.onEndTracing_sync(_:)(v1);
  }

  else
  {
    return Client.onBeginTracing_sync(_:)(v1);
  }
}

uint64_t outlined copy of TraceConfig?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t outlined init with copy of Host.ClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Host.ClientConnection(uint64_t a1)
{
  v2 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Host.ClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Host.ClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_149Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_26C2A9640()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type Trace.UIKit and conformance Trace.UIKit()
{
  result = lazy protocol witness table cache variable for type Trace.UIKit and conformance Trace.UIKit;
  if (!lazy protocol witness table cache variable for type Trace.UIKit and conformance Trace.UIKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.UIKit and conformance Trace.UIKit);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 120)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x26D69D0C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

SwiftUITracingSupport::TraceConfig::Version_optional __swiftcall TraceConfig.Version.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t String.BOOL.getter(uint64_t a1, unint64_t a2)
{
  v4 = String.lowercased()();
  if (v4 == __PAIR128__(0xE400000000000000, 1702195828) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 116 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 7562617 && v4._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 121 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v4._countAndFlagsBits == 0x65736C6166 && v4._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 102 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 28526 && v4._object == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 110 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v4._countAndFlagsBits && v4._object == 0xE000000000000000)
  {

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v6 & 1) == 0)
  {
    v7 = HIBYTE(a2) & 0xF;
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 2;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {

      v11 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
      v30 = v29;

      if (v30)
      {
        return 2;
      }

      return v11 != 0;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v31[0] = a1;
      v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v31 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_90;
        }

LABEL_99:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v31;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_91;
            }
          }
        }

        goto LABEL_90;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v31 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_91;
            }
          }
        }

        goto LABEL_90;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = (result + 1);
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_90;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_90;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_90;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_91;
                }
              }
            }

            goto LABEL_82;
          }

          goto LABEL_90;
        }

        goto LABEL_98;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_90;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_90;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_90;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_82;
        }

LABEL_90:
        v11 = 0;
        LOBYTE(v7) = 1;
LABEL_91:
        v32 = v7;
        if (v7)
        {
          return 2;
        }

        return v11 != 0;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_90;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_90;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_90;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_91;
              }
            }
          }

LABEL_82:
          LOBYTE(v7) = 0;
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      __break(1u);
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  return result;
}

unint64_t String.int32.getter(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    LOBYTE(v3) = 1;
LABEL_65:
    LOBYTE(v26[0]) = v3;
    return v5 | (v3 << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = result;

    v7 = specialized _parseInteger<A, B>(ascii:radix:)(v25, a2, 10);

    v3 = (v7 >> 32) & 1;
LABEL_63:
    v5 = v7;
    if (v3)
    {
      v5 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if (v16 != v16)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if (v21 != v21)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v27 = v3;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v26[0] = result;
  v26[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v26;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v26 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if (v13 != v13)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v26 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if (v19 != v19)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t TraceConfig.Option.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for options != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = static TraceConfig.options;
    v7 = *(static TraceConfig.options + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = static TraceConfig.options + 32;
    while (v8 < *(v6 + 16))
    {
      outlined init with copy of TraceConfig.Option(v9, v12);
      v10 = *&v12[0] == a1 && *(&v12[0] + 1) == a2;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v14[5] = v12[5];
        v14[6] = v12[6];
        v14[0] = v12[0];
        v14[1] = v12[1];
        v14[2] = v12[2];
        v15 = v13;
        v14[3] = v12[3];
        v14[4] = v12[4];
        outlined init with copy of TraceConfig.Option(v14, a3);
        return outlined destroy of TraceConfig.Option(v14);
      }

      ++v8;
      outlined destroy of TraceConfig.Option(v12);
      v9 += 120;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_11:

  *(a3 + 112) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double TraceConfig.Option.init(intValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  if (one-time initialization token for options == -1)
  {
    if (a1 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = a1;
    swift_once();
    a1 = v4;
    if (v4 < 0)
    {
      goto LABEL_6;
    }
  }

  if (*(static TraceConfig.options + 16) > a1)
  {
    outlined init with copy of TraceConfig.Option(static TraceConfig.options + 120 * a1 + 32, v5);
    outlined init with copy of TraceConfig.Option(v5, a2);
    outlined destroy of TraceConfig.Option(v5);
    return result;
  }

LABEL_6:
  *(a2 + 112) = 0;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMd, &_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMR);

  return closure #22 in variable initialization expression of static TraceConfig.options(a1, a2, a3);
}

unint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgSgMd, &_ss5Int32VSgSgMR);
  result = String.int32.getter(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 5) = 0;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgSgMd, &_sSSSgSgMR);
  *a3 = a1;
  a3[1] = a2;
}

uint64_t _sSSxSgIeggr_SSypIeggr_SeRzlTRSb_Tg577_s21SwiftUITracingSupport11TraceConfigV7optionsSayAC6OptionVGvpZfiSbSgSScfU2_Tf3nnpf_n_0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  result = String.BOOL.getter(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.intValue.getter in conformance TraceConfig.Option(uint64_t a1)
{
  if (one-time initialization token for options != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  v4[2] = v1;
  return specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v4, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TraceConfig.Option(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TraceConfig.Option(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t one-time initialization function for options()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11TraceConfigV6OptionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11TraceConfigV6OptionVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C337460;
  KeyPath = swift_getKeyPath();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x73736572706D6F63;
  *(v0 + 40) = 0xEB000000006E6F69;
  *(v0 + 48) = KeyPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  *(v0 + 80) = v2;
  *(v0 + 56) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;

  *(v0 + 120) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 128) = 0;
  v3 = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D839D0];
  *(v0 + 136) = MEMORY[0x277D839B0];
  *(v0 + 144) = v4;
  v5 = swift_getKeyPath();
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 152) = 0x746567726174;
  *(v0 + 160) = 0xE600000000000000;
  *(v0 + 168) = v5;
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgSgMd, &_sSSSgSgMR);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;

  *(v0 + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 248) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 256) = v6;
  *(v0 + 264) = v7;
  v8 = swift_getKeyPath();
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 272) = 0x6950746567726174;
  *(v0 + 280) = 0xE900000000000064;
  *(v0 + 288) = v8;
  *(v0 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgSgMd, &_ss5Int32VSgSgMR);
  *(v0 + 296) = 0;
  *(v0 + 300) = 1;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0u;

  *(v0 + 360) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 368) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
  v10 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int32? and conformance <A> A?, &_ss5Int32VSgMd, &_ss5Int32VSgMR);
  *(v0 + 376) = v9;
  *(v0 + 384) = v10;
  v11 = swift_getKeyPath();
  *(v0 + 392) = 0xD000000000000010;
  *(v0 + 400) = 0x800000026C33DC80;
  *(v0 + 408) = v11;
  *(v0 + 440) = v2;
  *(v0 + 416) = 0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;

  *(v0 + 480) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 488) = 0;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  v12 = swift_getKeyPath();
  *(v0 + 512) = 0xD000000000000010;
  *(v0 + 520) = 0x800000026C33DCA0;
  *(v0 + 528) = v12;
  *(v0 + 560) = v2;
  *(v0 + 536) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;

  *(v0 + 600) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 608) = 0;
  *(v0 + 616) = v3;
  *(v0 + 624) = v4;
  v13 = swift_getKeyPath();
  *(v0 + 632) = 0xD000000000000016;
  *(v0 + 640) = 0x800000026C33DCC0;
  *(v0 + 648) = v13;
  *(v0 + 680) = v2;
  *(v0 + 656) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;

  *(v0 + 720) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 728) = 0;
  *(v0 + 736) = v3;
  *(v0 + 744) = v4;
  v14 = swift_getKeyPath();
  strcpy((v0 + 752), "_crashOnNull");
  *(v0 + 765) = 0;
  *(v0 + 766) = -5120;
  *(v0 + 768) = v14;
  *(v0 + 800) = v2;
  *(v0 + 776) = 0;
  *(v0 + 808) = 0u;
  *(v0 + 824) = 0u;

  *(v0 + 840) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 848) = 0;
  *(v0 + 856) = v3;
  *(v0 + 864) = v4;
  v15 = swift_getKeyPath();
  strcpy((v0 + 872), "hashBacktraces");
  *(v0 + 887) = -18;
  *(v0 + 888) = v15;
  *(v0 + 920) = v2;
  *(v0 + 896) = 1;
  *(v0 + 928) = 0u;
  *(v0 + 944) = 0u;

  *(v0 + 960) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 968) = 0;
  *(v0 + 976) = v3;
  *(v0 + 984) = v4;
  v16 = swift_getKeyPath();
  *(v0 + 992) = 0xD000000000000010;
  *(v0 + 1000) = 0x800000026C33DC20;
  *(v0 + 1008) = v16;
  *(v0 + 1040) = v2;
  *(v0 + 1016) = 1;
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = 0u;

  *(v0 + 1080) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1088) = 0;
  *(v0 + 1096) = v3;
  *(v0 + 1104) = v4;
  v17 = swift_getKeyPath();
  *(v0 + 1112) = 0x6576456573756572;
  *(v0 + 1120) = 0xEB0000000073746ELL;
  *(v0 + 1128) = v17;
  *(v0 + 1160) = v2;
  *(v0 + 1136) = 0;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = 0u;

  *(v0 + 1200) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1208) = 0;
  *(v0 + 1216) = v3;
  *(v0 + 1224) = v4;
  v18 = swift_getKeyPath();
  *(v0 + 1232) = 0xD000000000000011;
  *(v0 + 1240) = 0x800000026C33DCE0;
  *(v0 + 1248) = v18;
  *(v0 + 1280) = v2;
  *(v0 + 1256) = 1;
  *(v0 + 1288) = 0u;
  *(v0 + 1304) = 0u;

  *(v0 + 1320) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1328) = 0;
  *(v0 + 1336) = v3;
  *(v0 + 1344) = v4;
  v19 = swift_getKeyPath();
  *(v0 + 1352) = 0xD000000000000010;
  *(v0 + 1360) = 0x800000026C33DC00;
  *(v0 + 1368) = v19;
  *(v0 + 1400) = v2;
  *(v0 + 1376) = 0;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = 0u;

  *(v0 + 1440) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1448) = 0;
  *(v0 + 1456) = v3;
  *(v0 + 1464) = v4;
  v20 = swift_getKeyPath();
  *(v0 + 1472) = 0xD000000000000012;
  *(v0 + 1480) = 0x800000026C33DD00;
  *(v0 + 1488) = v20;
  *(v0 + 1520) = v2;
  *(v0 + 1496) = 1;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 0u;

  *(v0 + 1560) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1568) = 0;
  *(v0 + 1576) = v3;
  *(v0 + 1584) = v4;
  v21 = swift_getKeyPath();
  *(v0 + 1592) = 0xD000000000000010;
  *(v0 + 1600) = 0x800000026C33DD20;
  *(v0 + 1608) = v21;
  *(v0 + 1640) = v2;
  *(v0 + 1616) = 1;
  *(v0 + 1648) = 0u;
  *(v0 + 1664) = 0u;

  *(v0 + 1680) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1688) = 0;
  *(v0 + 1696) = v3;
  *(v0 + 1704) = v4;
  v22 = swift_getKeyPath();
  *(v0 + 1712) = 0xD000000000000012;
  *(v0 + 1720) = 0x800000026C33DD40;
  *(v0 + 1728) = v22;
  *(v0 + 1760) = v2;
  *(v0 + 1736) = 1;
  *(v0 + 1768) = 0u;
  *(v0 + 1784) = 0u;

  *(v0 + 1800) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1808) = 0;
  *(v0 + 1816) = v3;
  *(v0 + 1824) = v4;
  v23 = swift_getKeyPath();
  strcpy((v0 + 1832), "actionTracing");
  *(v0 + 1846) = -4864;
  *(v0 + 1848) = v23;
  *(v0 + 1880) = v2;
  *(v0 + 1856) = 1;
  *(v0 + 1888) = 0u;
  *(v0 + 1904) = 0u;

  *(v0 + 1920) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v3;
  *(v0 + 1944) = v4;
  v24 = swift_getKeyPath();
  *(v0 + 1952) = 0xD000000000000015;
  *(v0 + 1960) = 0x800000026C33DD60;
  *(v0 + 1968) = v24;
  *(v0 + 2000) = v2;
  *(v0 + 1976) = 1;
  *(v0 + 2008) = 0u;
  *(v0 + 2024) = 0u;

  *(v0 + 2040) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2048) = 0;
  *(v0 + 2056) = v3;
  *(v0 + 2064) = v4;
  v25 = swift_getKeyPath();
  *(v0 + 2072) = 0xD000000000000016;
  *(v0 + 2080) = 0x800000026C33DD80;
  *(v0 + 2088) = v25;
  *(v0 + 2120) = v2;
  *(v0 + 2096) = 1;
  *(v0 + 2128) = 0u;
  *(v0 + 2144) = 0u;

  *(v0 + 2160) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2168) = 0;
  *(v0 + 2176) = v3;
  *(v0 + 2184) = v4;
  v26 = swift_getKeyPath();
  *(v0 + 2192) = 0x6172546775626564;
  *(v0 + 2200) = 0xEF73656C69466563;
  *(v0 + 2208) = v26;
  *(v0 + 2240) = v2;
  *(v0 + 2216) = 0;
  *(v0 + 2248) = 0u;
  *(v0 + 2264) = 0u;

  *(v0 + 2280) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2288) = 0;
  *(v0 + 2296) = v3;
  *(v0 + 2304) = v4;
  v27 = swift_getKeyPath();
  *(v0 + 2312) = 0x65727574706163;
  *(v0 + 2320) = 0xE700000000000000;
  *(v0 + 2328) = v27;
  *(v0 + 2360) = v2;
  *(v0 + 2336) = 1;
  *(v0 + 2368) = 0u;
  *(v0 + 2384) = 0u;

  *(v0 + 2400) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2408) = 0;
  *(v0 + 2416) = v3;
  *(v0 + 2424) = v4;
  v28 = swift_getKeyPath();
  *(v0 + 2432) = 0x6565725477656976;
  *(v0 + 2440) = 0xE800000000000000;
  *(v0 + 2448) = v28;
  *(v0 + 2480) = v2;
  *(v0 + 2456) = 1;
  *(v0 + 2488) = 0u;
  *(v0 + 2504) = 0u;

  *(v0 + 2520) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2528) = 0;
  *(v0 + 2536) = v3;
  *(v0 + 2544) = v4;
  v29 = swift_getKeyPath();
  *(v0 + 2624) = 0;
  *(v0 + 2632) = 0;
  *(v0 + 2552) = 0x6E6F6973726576;
  *(v0 + 2560) = 0xE700000000000000;
  *(v0 + 2568) = v29;
  *(v0 + 2600) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMd, &_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMR);
  *(v0 + 2576) = 1;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;

  *(v0 + 2640) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2648) = 0;
  result = lazy protocol witness table accessor for type TraceConfig.Version and conformance TraceConfig.Version();
  *(v0 + 2656) = &type metadata for TraceConfig.Version;
  *(v0 + 2664) = result;
  static TraceConfig.options = v0;
  return result;
}

uint64_t closure #22 in variable initialization expression of static TraceConfig.options@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 49 && a2 == 0xE100000000000000)
  {
    goto LABEL_6;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((result & 1) != 0 || v4 == 12662 && a2 == 0xE200000000000000)
  {
    goto LABEL_6;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v8 = v4 == 12630 && a2 == 0xE200000000000000;
  v6 = 1;
  if ((result & 1) != 0 || v8)
  {
    goto LABEL_7;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if (result)
  {
LABEL_6:
    v6 = 1;
LABEL_7:
    *a3 = v6;
    return result;
  }

  if (v4 == 48 && a2 == 0xE100000000000000)
  {
    goto LABEL_19;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = 0;
  v10 = v4 == 12406 && a2 == 0xE200000000000000;
  if ((result & 1) != 0 || v10)
  {
    goto LABEL_7;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = 0;
  v11 = v4 == 12374 && a2 == 0xE200000000000000;
  v12 = v11;
  if ((result & 1) != 0 || v12)
  {
    goto LABEL_7;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if (result)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TraceConfig.Version.describe(state:)()
{
  if (*v0)
  {
    return 12662;
  }

  else
  {
    return 12406;
  }
}

uint64_t TraceConfig.Version.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TraceConfig.Version()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance TraceConfig.Version()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TraceConfig.Version(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unsigned __int16 *protocol witness for RawRepresentable.init(rawValue:) in conformance TraceConfig.Version@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TraceConfig.Version(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TraceConfig.MinorVersion.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TraceConfig.MinorVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TraceConfig.MinorVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TraceConfig.MinorVersion.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

uint64_t TraceConfig.MinorVersion.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TraceConfig.MinorVersion(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t TraceConfig.processFilterRegex.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TraceConfig.processFilterRegex.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TraceConfig.targetPid.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

double TraceConfig.init(version:compression:viewTree:sync:)@<D0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  TraceConfig.init(_:)(v8, v12);
  v9 = v13;
  *a4 = *v12;
  *(a4 + 7) = *&v12[7];
  *(a4 + 11) = a2 & 1;
  *(a4 + 12) = a3 & 1;
  *(a4 + 13) = v9;
  *(a4 + 15) = 0;
  result = *&v14;
  v11 = v15;
  *(a4 + 16) = v14;
  *(a4 + 32) = v11;
  *(a4 + 48) = v16;
  *(a4 + 49) = v7;
  return result;
}

uint64_t TraceConfig.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = *MEMORY[0x277D85DE8];

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(v6);
  if (one-time initialization token for options != -1)
  {
    swift_once();
  }

  v8 = static TraceConfig.options;
  v9 = *(static TraceConfig.options + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v22;
    v11 = v8 + 32;
    do
    {
      outlined init with copy of TraceConfig.Option(v11, v24);
      v12 = v24[0];

      outlined destroy of TraceConfig.Option(v24);
      v14 = *(v22 + 16);
      v13 = *(v22 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v22 + 16) = v14 + 1;
      *(v22 + 16 * v14 + 32) = v12;
      v11 += 120;
      --v9;
    }

    while (v9);
    v3 = v2;
  }

  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v10);

  if (*(v15 + 16) <= *(v7 + 16) >> 3)
  {
    goto LABEL_14;
  }

  v16 = specialized _NativeSet.subtracting<A>(_:)(v15, v7);

  if (*(v16 + 16))
  {
    while (1)
    {

      a1 = *(v16 + 16);
      if (!a1)
      {
        break;
      }

      v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v16 + 16), 0);
      v18 = specialized Sequence._copySequenceContents(initializing:)(v24, v17 + 4, a1, v16);
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant(*&v24[0]);
      if (v18 == a1)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_14:
      *&v24[0] = v7;
      specialized Set._subtract<A>(_:)(v15);

      v16 = *&v24[0];
      if (!*(*&v24[0] + 16))
      {
        goto LABEL_15;
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_18:
    lazy protocol witness table accessor for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions();
    swift_allocError();
    *v21 = v17;
    return swift_willThrow();
  }

  else
  {
LABEL_15:

    closure #2 in TraceConfig.init(_:)(v23, a1, v24);

    if (v3)
    {
      result = swift_willThrow();
      __break(1u);
    }

    else
    {
      v20 = v24[1];
      *a2 = v24[0];
      *(a2 + 16) = v20;
      *(a2 + 32) = v24[2];
      *(a2 + 48) = v25;
    }
  }

  return result;
}