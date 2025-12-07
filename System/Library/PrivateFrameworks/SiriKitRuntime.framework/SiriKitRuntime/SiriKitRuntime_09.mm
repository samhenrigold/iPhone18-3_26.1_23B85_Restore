uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Parse();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UserID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t ConversationHandlerLocator.allHandlers(for:)(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = type metadata accessor for IntentTopic();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v5 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3[51] = v5;
  v3[52] = *(v5 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_Parser();
  v3[55] = v6;
  v3[56] = *(v6 - 8);
  v3[57] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3[58] = v7;
  v3[59] = *(v7 - 8);
  v3[60] = swift_task_alloc();
  v8 = type metadata accessor for USOParse();
  v3[61] = v8;
  v3[62] = *(v8 - 8);
  v3[63] = swift_task_alloc();
  v9 = type metadata accessor for Input();
  v3[64] = v9;
  v3[65] = *(v9 - 8);
  v3[66] = swift_task_alloc();
  v10 = type metadata accessor for Parse();
  v3[67] = v10;
  v3[68] = *(v10 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[74] = v11;
  v3[75] = *(v11 - 8);
  v3[76] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
  v3[77] = v12;
  v3[78] = *(v12 - 8);
  v3[79] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MessageBusActor.shared;
  v3[80] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v13, 0);
}

uint64_t ConversationHandlerLocator.allHandlers(for:)()
{
  v104 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  *(v0 + 320) = MEMORY[0x1E69E7CC0];
  v3 = specialized ImmutableSimpleOrderedDictionary.items()(v1, v2);
  *(v0 + 648) = v3;
  v4 = v3[2];
  *(v0 + 656) = v4;
  if (!v4)
  {
LABEL_35:

    if (one-time initialization token for executor == -1)
    {
LABEL_36:
      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Logger.executor);
      v80 = *(v0 + 320);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        *(v83 + 4) = *(v80 + 16);

        _os_log_impl(&dword_1DC659000, v81, v82, "allHandlers(for:) Total handlers found: %ld", v83, 0xCu);
        MEMORY[0x1E12A2F50](v83, -1, -1);
      }

      else
      {
      }

      v103[0] = v80;

      specialized MutableCollection<>.sort(by:)(v103);

      v84 = v103[0];

      v85 = *(v0 + 8);

      return v85(v84);
    }

LABEL_53:
    swift_once();
    goto LABEL_36;
  }

  v5 = *(v0 + 624);
  *(v0 + 768) = *(*(v0 + 616) + 48);
  *(v0 + 772) = *(v5 + 80);
  *(v0 + 776) = *MEMORY[0x1E69D0168];
  *(v0 + 780) = *MEMORY[0x1E69D0980];
  *(v0 + 664) = 0u;
  if (!v3[2])
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v6 = 0;
  while (1)
  {
    v97 = *(v0 + 776);
    v100 = *(v0 + 768);
    v7 = *(v0 + 632);
    v8 = *(v0 + 608);
    v9 = *(v0 + 600);
    v10 = *(v0 + 592);
    v11 = *(v0 + 584);
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 544);
    v15 = *(v0 + 536);
    outlined init with copy of ReferenceResolutionClientProtocol?(v3 + ((*(v0 + 772) + 32) & ~*(v0 + 772)) + *(*(v0 + 624) + 72) * v6, v7, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
    (*(v9 + 32))(v8, v7, v10);
    (*(v14 + 32))(v11, v7 + v100, v15);
    v16 = *(v14 + 16);
    *(v0 + 680) = v16;
    *(v0 + 688) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v12, v11, v15);
    Input.init(parse:)();
    v16(v13, v11, v15);
    if ((*(v14 + 88))(v13, v15) != v97)
    {
      v59 = (v0 + 568);
      v58 = v0 + 544;
      v60 = (v0 + 536);
      goto LABEL_18;
    }

    v101 = v16;
    v98 = *(v0 + 780);
    v17 = *(v0 + 568);
    v18 = *(v0 + 496);
    v19 = *(v0 + 504);
    v21 = *(v0 + 448);
    v20 = *(v0 + 456);
    v89 = *(v0 + 488);
    v91 = *(v0 + 432);
    v22 = *(v0 + 416);
    v93 = *(v0 + 440);
    v95 = *(v0 + 424);
    v23 = *(v0 + 408);
    (*(*(v0 + 544) + 96))(v17, *(v0 + 536));
    (*(v18 + 32))(v19, v17, v89);
    USOParse.userParse.getter();
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v21 + 8))(v20, v93);
    (*(v22 + 104))(v95, v98, v23);
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v24 = *(v22 + 8);
    v24(v95, v23);
    v24(v91, v23);
    if (*(v0 + 336) == *(v0 + 344) || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
    {
      (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
      goto LABEL_9;
    }

    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    v27 = *(v0 + 464);
    v28 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
    (*(v26 + 8))(v25, v27);
    if ((v28 & 1) == 0)
    {
      break;
    }

LABEL_9:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 584);
    v30 = *(v0 + 560);
    v31 = *(v0 + 536);
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    v101(v30, v29, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 584);
    if (v35)
    {
      v37 = *(v0 + 576);
      v38 = *(v0 + 560);
      v88 = *(v0 + 544);
      v39 = *(v0 + 536);
      v96 = *(v0 + 504);
      v99 = *(v0 + 584);
      v92 = *(v0 + 496);
      v94 = *(v0 + 488);
      v40 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v103[0] = v90;
      *v40 = 136315138;
      v101(v37, v38, v39);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      v44 = *(v88 + 8);
      v44(v38, v39);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v103);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1DC659000, v33, v34, "allHandlers(for:) Skipping SNLC parse %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x1E12A2F50](v90, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);

      (*(v92 + 8))(v96, v94);
      v44(v99, v39);
    }

    else
    {
      v46 = *(v0 + 560);
      v47 = *(v0 + 544);
      v48 = *(v0 + 536);
      v50 = *(v0 + 496);
      v49 = *(v0 + 504);
      v51 = *(v0 + 488);

      v52 = *(v47 + 8);
      v52(v46, v48);
      (*(v50 + 8))(v49, v51);
      v52(v36, v48);
    }

    v53 = *(v0 + 656);
    v54 = *(v0 + 608);
    v55 = *(v0 + 600);
    v56 = *(v0 + 592);
    v57 = *(v0 + 672) + 1;
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    (*(v55 + 8))(v54, v56);
    if (v57 == v53)
    {
      goto LABEL_35;
    }

    v6 = *(v0 + 672) + 1;
    *(v0 + 672) = v6;
    *(v0 + 664) = 0;
    v3 = *(v0 + 648);
    if (v6 >= v3[2])
    {
      goto LABEL_48;
    }
  }

  v59 = (v0 + 504);
  v58 = v0 + 496;
  v60 = (v0 + 488);
LABEL_18:
  (*(*v58 + 8))(*v59, *v60);
  v61 = static IntentTopic.make(from:)();
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = *(v0 + 384);
    v64 = v61 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v65 = *(v63 + 72);
    v102 = *(v63 + 16);
    v66 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v67 = *(v0 + 400);
      v69 = *(v0 + 376);
      v68 = *(v0 + 384);
      v102(v67, v64, v69);
      v70 = IntentTopic.makeWildcardFallbacks()();
      (*(v68 + 8))(v67, v69);
      v71 = *(v70 + 16);
      v72 = v66[2];
      v73 = v72 + v71;
      if (__OFADD__(v72, v71))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v73 <= v66[3] >> 1)
      {
        if (*(v70 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v72 <= v73)
        {
          v75 = v72 + v71;
        }

        else
        {
          v75 = v72;
        }

        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v75, 1, v66);
        if (*(v70 + 16))
        {
LABEL_31:
          if ((v66[3] >> 1) - v66[2] < v71)
          {
            goto LABEL_51;
          }

          swift_arrayInitWithCopy();

          if (v71)
          {
            v76 = v66[2];
            v77 = __OFADD__(v76, v71);
            v78 = v76 + v71;
            if (v77)
            {
              goto LABEL_52;
            }

            v66[2] = v78;
          }

          goto LABEL_21;
        }
      }

      if (v71)
      {
        goto LABEL_50;
      }

LABEL_21:
      v64 += v65;
      if (!--v62)
      {

        goto LABEL_44;
      }
    }
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_44:
  *(v0 + 696) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(v66);

  v87 = static MessageBusActor.shared;
  *(v0 + 704) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v87, 0);
}

{
  v1 = *(*(v0 + 368) + 16);
  v2 = swift_task_alloc();
  *(v0 + 712) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25PluginLookupByIntentTopic_pMd, &_s14SiriKitRuntime25PluginLookupByIntentTopic_pMR);
  *v2 = v0;
  v2[1] = ConversationHandlerLocator.allHandlers(for:);

  return MEMORY[0x1EEE6DA40](v0 + 16, v1, v3);
}

{
  v1 = *(*v0 + 704);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v1, 0);
}

{
  v192 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 696);
  v3 = *(v0 + 664);
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 16;
  v5 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #2 in ConversationHandlerLocator.allHandlers(for:), v4, v2);
  *(v0 + 720) = v5;
  *(v0 + 728) = v3;

  if (v5 >> 62)
  {
    goto LABEL_87;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v169 = v1;
    if (one-time initialization token for executor != -1)
    {
LABEL_90:
      swift_once();
    }

    v6 = *(v0 + 680);
    v7 = *(v0 + 584);
    v8 = *(v0 + 552);
    v9 = *(v0 + 536);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v6(v8, v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 680);
      v14 = *(v0 + 576);
      v15 = *(v0 + 552);
      v16 = *(v0 + 544);
      v17 = *(v0 + 536);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v191[0] = v19;
      *v18 = 136315138;
      v13(v14, v15, v17);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v191);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1DC659000, v11, v12, "allHandlers(for:) Found no plugins for parse: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    else
    {
      v24 = *(v0 + 552);
      v25 = *(v0 + 544);
      v26 = *(v0 + 536);

      (*(v25 + 8))(v24, v26);
    }

    v1 = v169;
  }

LABEL_8:
  v27 = *(v0 + 696);
  v28 = *(v27 + 32);
  *(v0 + 784) = v28;
  v29 = -1;
  v30 = -1 << v28;
  v31 = *(v27 + 56);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v32 = MEMORY[0x1E69E7CC0];
  *(v0 + 736) = MEMORY[0x1E69E7CC0];
  v33 = v29 & v31;
  if (!v33)
  {
    v35 = 0;
    v36 = ((63 - v30) >> 6) - 1;
    while (v36 != v35)
    {
      v34 = v35 + 1;
      v33 = *(v27 + 8 * v35++ + 64);
      if (v33)
      {
        goto LABEL_15;
      }
    }

    v43 = *(v0 + 720);

    if (v43 >> 62)
    {
      v44 = __CocoaSet.count.getter();
      v169 = v1;
      if (v44)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v44 = *((*(v0 + 720) & 0xFFFFFFFFFFFFFF8) + 0x10);
      v169 = v1;
      if (v44)
      {
LABEL_20:
        *(v0 + 328) = v32;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 & ~(v44 >> 63), 0);
        if (v44 < 0)
        {
          __break(1u);
          goto LABEL_92;
        }

        v45 = 0;
        v46 = *(v0 + 720);
        v47 = *(v0 + 328);
        v178 = v46 & 0xC000000000000001;
        log = v46 + 4;
        v182 = v44;
        do
        {
          if (v178)
          {
            isa = MEMORY[0x1E12A1FE0](v45, *(v0 + 720));
          }

          else
          {
            isa = log[v45].isa;
          }

          v185 = v47;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static Logger.executor);
          v50 = static os_log_type_t.debug.getter();
          v51 = Logger.logObject.getter();
          if (os_log_type_enabled(v51, v50))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v191[0] = v53;
            *v52 = 136315650;
            v54 = StaticString.description.getter();
            v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v191);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            v57 = StaticString.description.getter();
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v191);

            *(v52 + 14) = v59;
            *(v52 + 22) = 2080;
            *(v52 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x80000001DCA7FB70, v191);
            _os_log_impl(&dword_1DC659000, v51, v50, "%s:%s: %s", v52, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v53, -1, -1);
            MEMORY[0x1E12A2F50](v52, -1, -1);
          }

          v61 = isa[2];
          v60 = isa[3];
          v63 = isa[6];
          v62 = isa[7];
          outlined init with copy of ReferenceResolutionClientProtocol((isa + 8), v0 + 256);
          v64 = isa[4];
          v65 = type metadata accessor for RemoteFlowPluginBundleConversationHandler();
          v66 = swift_allocObject();
          v66[12] = 0;
          v66[13] = 0;
          v66[2] = v61;
          v66[3] = v60;
          v66[4] = v63;
          v66[5] = v62;
          outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), (v66 + 7));
          v66[6] = v64;
          *(v0 + 240) = v65;
          *(v0 + 248) = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);

          *(v0 + 216) = v66;
          *(v0 + 328) = v185;
          v68 = *(v185 + 16);
          v67 = *(v185 + 24);
          if (v68 >= v67 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
          }

          ++v45;
          v70 = *(v0 + 240);
          v69 = *(v0 + 248);
          v71 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v70);
          v72 = *(v70 - 8);
          v73 = swift_task_alloc();
          (*(v72 + 16))(v73, v71, v70);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v68, v73, (v0 + 328), v70, v69);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

          v47 = *(v0 + 328);
        }

        while (v182 != v45);

LABEL_35:
        v74 = *(v0 + 728);
        v75 = *(v0 + 608);
        v186 = *(v0 + 584);
        v191[0] = v47;
        v76 = *(v0 + 544);
        v77 = *(v0 + 536);
        v78 = *(v0 + 528);

        specialized Array.append<A>(contentsOf:)(v79);
        v80 = v191[0];
        v81 = swift_task_alloc();
        *(v81 + 16) = v78;
        v82 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #4 in ConversationHandlerLocator.allHandlers(for:), v81, v80);

        v83 = swift_task_alloc();
        *(v83 + 16) = v75;
        v84 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VG_10Foundation4UUIDV4uuid_AJ06scoredH0ts5NeverOTg5(partial apply for closure #5 in ConversationHandlerLocator.allHandlers(for:), v83, v82);
        v170 = v74;

        specialized Array.append<A>(contentsOf:)(v84);
        (*(v76 + 8))(v186, v77);
        __swift_destroy_boxed_opaque_existential_1Tm(v169);
        while (1)
        {
          v92 = *(v0 + 656);
          v93 = *(v0 + 608);
          v94 = *(v0 + 600);
          v95 = *(v0 + 592);
          v96 = *(v0 + 672) + 1;
          (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
          v97 = *(v94 + 8);
          v1 = (v94 + 8);
          v97(v93, v95);
          if (v96 == v92)
          {
            break;
          }

          v98 = *(v0 + 672) + 1;
          *(v0 + 672) = v98;
          *(v0 + 664) = v170;
          v99 = *(v0 + 648);
          if (v98 >= *(v99 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            if (!__CocoaSet.count.getter())
            {
              goto LABEL_3;
            }

            goto LABEL_8;
          }

          v187 = *(v0 + 776);
          v179 = *(v0 + 768);
          v100 = *(v0 + 632);
          v101 = *(v0 + 608);
          v102 = *(v0 + 600);
          v103 = *(v0 + 592);
          v104 = *(v0 + 584);
          v105 = *(v0 + 576);
          v106 = *(v0 + 568);
          v107 = *(v0 + 544);
          v108 = *(v0 + 536);
          outlined init with copy of ReferenceResolutionClientProtocol?(v99 + ((*(v0 + 772) + 32) & ~*(v0 + 772)) + *(*(v0 + 624) + 72) * v98, v100, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
          (*(v102 + 32))(v101, v100, v103);
          (*(v107 + 32))(v104, v100 + v179, v108);
          v109 = *(v107 + 16);
          *(v0 + 680) = v109;
          *(v0 + 688) = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v109(v105, v104, v108);
          Input.init(parse:)();
          v183 = v109;
          v109(v106, v104, v108);
          if ((*(v107 + 88))(v106, v108) != v187)
          {
            v147 = (v0 + 536);
            v146 = v0 + 544;
            v148 = (v0 + 568);
            goto LABEL_52;
          }

          v188 = *(v0 + 780);
          v110 = *(v0 + 568);
          v112 = *(v0 + 496);
          v111 = *(v0 + 504);
          v114 = *(v0 + 448);
          v113 = *(v0 + 456);
          v176 = *(v0 + 440);
          loga = *(v0 + 488);
          v174 = *(v0 + 432);
          v115 = *(v0 + 416);
          v180 = *(v0 + 424);
          v116 = *(v0 + 408);
          (*(*(v0 + 544) + 96))(v110, *(v0 + 536));
          (*(v112 + 32))(v111, v110, loga);
          USOParse.userParse.getter();
          Siri_Nlu_External_UserParse.parser.getter();
          Siri_Nlu_External_Parser.parserID.getter();
          (*(v114 + 8))(v113, v176);
          (*(v115 + 104))(v180, v188, v116);
          lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v117 = *(v115 + 8);
          v117(v180, v116);
          v117(v174, v116);
          if (*(v0 + 336) == *(v0 + 344) || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
          {
            (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
            v118 = v183;
          }

          else
          {
            v120 = *(v0 + 472);
            v119 = *(v0 + 480);
            v121 = *(v0 + 464);
            v122 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
            (*(v120 + 8))(v119, v121);
            v118 = v183;
            if ((v122 & 1) == 0)
            {
              v146 = v0 + 496;
              v148 = (v0 + 504);
              v147 = (v0 + 488);
LABEL_52:
              (*(*v146 + 8))(*v148, *v147);
              v149 = static IntentTopic.make(from:)();
              v150 = *(v149 + 16);
              if (!v150)
              {

                v153 = MEMORY[0x1E69E7CC0];
LABEL_76:
                *(v0 + 696) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(v153);

                v166 = static MessageBusActor.shared;
                *(v0 + 704) = static MessageBusActor.shared;

                return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v166, 0);
              }

              v151 = *(v0 + 384);
              v1 = (v149 + ((*(v151 + 80) + 32) & ~*(v151 + 80)));
              v152 = *(v151 + 72);
              v190 = *(v151 + 16);
              v153 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v154 = *(v0 + 400);
                v156 = *(v0 + 376);
                v155 = *(v0 + 384);
                v190(v154, v1, v156);
                v157 = IntentTopic.makeWildcardFallbacks()();
                (*(v155 + 8))(v154, v156);
                v158 = *(v157 + 16);
                v159 = v153[2];
                v160 = v159 + v158;
                if (__OFADD__(v159, v158))
                {
                  goto LABEL_84;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native && v160 <= v153[3] >> 1)
                {
                  if (!*(v157 + 16))
                  {
LABEL_54:

                    if (v158)
                    {
                      goto LABEL_85;
                    }

LABEL_55:
                    v1 = (v1 + v152);
                    if (!--v150)
                    {

                      goto LABEL_76;
                    }

                    continue;
                  }
                }

                else
                {
                  if (v159 <= v160)
                  {
                    v162 = v159 + v158;
                  }

                  else
                  {
                    v162 = v159;
                  }

                  v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v162, 1, v153);
                  if (!*(v157 + 16))
                  {
                    goto LABEL_54;
                  }
                }

                break;
              }

              if ((v153[3] >> 1) - v153[2] < v158)
              {
                goto LABEL_86;
              }

              swift_arrayInitWithCopy();

              if (v158)
              {
                v163 = v153[2];
                v164 = __OFADD__(v163, v158);
                v165 = v163 + v158;
                if (v164)
                {
                  __break(1u);
                  goto LABEL_90;
                }

                v153[2] = v165;
              }

              goto LABEL_55;
            }
          }

          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v123 = *(v0 + 584);
          v124 = *(v0 + 560);
          v125 = *(v0 + 536);
          v126 = type metadata accessor for Logger();
          __swift_project_value_buffer(v126, static Logger.executor);
          v118(v124, v123, v125);
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.debug.getter();
          v129 = os_log_type_enabled(v127, v128);
          v189 = *(v0 + 584);
          if (v129)
          {
            v130 = *(v0 + 576);
            v131 = *(v0 + 560);
            v169 = *(v0 + 544);
            logb = v127;
            v132 = *(v0 + 536);
            v184 = *(v0 + 504);
            v177 = *(v0 + 496);
            v181 = *(v0 + 488);
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v191[0] = v134;
            *v133 = 136315138;
            v118(v130, v131, v132);
            v135 = v132;
            v175 = v132;
            v136 = String.init<A>(describing:)();
            v138 = v137;
            v139 = v169[1];
            v139(v131, v135);
            v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v138, v191);

            *(v133 + 4) = v140;
            _os_log_impl(&dword_1DC659000, logb, v128, "allHandlers(for:) Skipping SNLC parse %s", v133, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v134);
            MEMORY[0x1E12A2F50](v134, -1, -1);
            MEMORY[0x1E12A2F50](v133, -1, -1);

            (*(v177 + 8))(v184, v181);
            v139(v189, v175);
          }

          else
          {
            v85 = *(v0 + 560);
            v86 = *(v0 + 544);
            v87 = *(v0 + 536);
            v89 = *(v0 + 496);
            v88 = *(v0 + 504);
            v90 = *(v0 + 488);

            v91 = *(v86 + 8);
            v91(v85, v87);
            (*(v89 + 8))(v88, v90);
            v91(v189, v87);
          }
        }

        if (one-time initialization token for executor == -1)
        {
LABEL_49:
          v141 = type metadata accessor for Logger();
          __swift_project_value_buffer(v141, static Logger.executor);
          v142 = *(v0 + 320);

          v143 = Logger.logObject.getter();
          v144 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            *v145 = 134217984;
            *(v145 + 4) = *(v142 + 16);

            _os_log_impl(&dword_1DC659000, v143, v144, "allHandlers(for:) Total handlers found: %ld", v145, 0xCu);
            MEMORY[0x1E12A2F50](v145, -1, -1);
          }

          else
          {
          }

          v191[0] = v142;

          specialized MutableCollection<>.sort(by:)(v191);
          if (v170)
          {
          }

          else
          {

            v167 = v191[0];

            v168 = *(v0 + 8);

            return v168(v167);
          }
        }

LABEL_92:
        swift_once();
        goto LABEL_49;
      }
    }

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v34 = 0;
LABEL_15:
  *(v0 + 752) = v34;
  *(v0 + 744) = v33;
  v37 = *(v0 + 368);
  (*(*(v0 + 384) + 16))(*(v0 + 392), *(v27 + 48) + *(*(v0 + 384) + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), *(v0 + 376));
  v38 = *(v37 + 40);
  v39 = *(v37 + 48);
  v40 = swift_task_alloc();
  *(v0 + 760) = v40;
  *v40 = v0;
  v40[1] = ConversationHandlerLocator.allHandlers(for:);
  v41 = *(v0 + 392);

  return FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)(v0 + 96, v41, v38, v39);
}

{
  v1 = *(v0 + 640);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v1, 0);
}

{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v4 = *(*v0 + 376);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v1, 0);
}

{
  v176 = v0;
  if (!*(v0 + 120))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v12 = *(v0 + 736);
    goto LABEL_12;
  }

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_92;
  }

LABEL_3:
  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v175[0] = v5;
    *v4 = 136315138;
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v6);
    v8 = (*(v7 + 16))(v6, v7);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v175);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v2, v3, "allHandlers(for:) Found extension with id: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 736);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, *(v0 + 736));
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v12[2] = v15 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), &v12[5 * v15 + 4]);
LABEL_12:
  v16 = *(v0 + 752);
  v17 = *(v0 + 744);
  *(v0 + 736) = v12;
  v18 = (v17 - 1) & v17;
  if (v18)
  {
    v19 = *(v0 + 696);
    goto LABEL_18;
  }

  do
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      swift_once();
      goto LABEL_3;
    }

    if (v20 >= (((1 << *(v0 + 784)) + 63) >> 6))
    {
      v27 = *(v0 + 720);

      if (v27 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        if (v28)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = *((*(v0 + 720) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
LABEL_23:
          *(v0 + 328) = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
          if (v28 < 0)
          {
            __break(1u);
            goto LABEL_94;
          }

          v29 = 0;
          v30 = *(v0 + 720);
          v162 = v30 & 0xC000000000000001;
          v31 = *(v0 + 328);
          log = v30 + 4;
          v166 = v28;
          do
          {
            if (v162)
            {
              isa = MEMORY[0x1E12A1FE0](v29, *(v0 + 720));
            }

            else
            {
              isa = log[v29].isa;
            }

            v169 = v31;
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v33 = type metadata accessor for Logger();
            __swift_project_value_buffer(v33, static Logger.executor);
            v34 = static os_log_type_t.debug.getter();
            v35 = Logger.logObject.getter();
            if (os_log_type_enabled(v35, v34))
            {
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              v175[0] = v37;
              *v36 = 136315650;
              v38 = StaticString.description.getter();
              v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v175);

              *(v36 + 4) = v40;
              *(v36 + 12) = 2080;
              v41 = StaticString.description.getter();
              v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v175);

              *(v36 + 14) = v43;
              *(v36 + 22) = 2080;
              *(v36 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x80000001DCA7FB70, v175);
              _os_log_impl(&dword_1DC659000, v35, v34, "%s:%s: %s", v36, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v37, -1, -1);
              MEMORY[0x1E12A2F50](v36, -1, -1);
            }

            v45 = isa[2];
            v44 = isa[3];
            v47 = isa[6];
            v46 = isa[7];
            outlined init with copy of ReferenceResolutionClientProtocol((isa + 8), v0 + 256);
            v48 = isa[4];
            v49 = type metadata accessor for RemoteFlowPluginBundleConversationHandler();
            v50 = swift_allocObject();
            v50[12] = 0;
            v50[13] = 0;
            v50[2] = v45;
            v50[3] = v44;
            v50[4] = v47;
            v50[5] = v46;
            outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), (v50 + 7));
            v50[6] = v48;
            *(v0 + 240) = v49;
            *(v0 + 248) = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);

            *(v0 + 216) = v50;
            *(v0 + 328) = v169;
            v52 = *(v169 + 16);
            v51 = *(v169 + 24);
            if (v52 >= v51 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
            }

            ++v29;
            v54 = *(v0 + 240);
            v53 = *(v0 + 248);
            v55 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v54);
            v56 = *(v54 - 8);
            v57 = swift_task_alloc();
            (*(v56 + 16))(v57, v55, v54);
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v52, v57, (v0 + 328), v54, v53);
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

            v31 = *(v0 + 328);
          }

          while (v166 != v29);

LABEL_38:
          v58 = *(v0 + 728);
          v59 = *(v0 + 608);
          v170 = *(v0 + 584);
          v175[0] = v31;
          v60 = *(v0 + 544);
          v61 = *(v0 + 536);
          v62 = *(v0 + 528);

          specialized Array.append<A>(contentsOf:)(v63);
          v64 = v175[0];
          v65 = swift_task_alloc();
          *(v65 + 16) = v62;
          v66 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #4 in ConversationHandlerLocator.allHandlers(for:), v65, v64);

          v67 = swift_task_alloc();
          *(v67 + 16) = v59;
          v68 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VG_10Foundation4UUIDV4uuid_AJ06scoredH0ts5NeverOTg5(partial apply for closure #5 in ConversationHandlerLocator.allHandlers(for:), v67, v66);
          v154 = v58;

          specialized Array.append<A>(contentsOf:)(v68);
          (*(v60 + 8))(v170, v61);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          while (1)
          {
            v76 = *(v0 + 656);
            v77 = *(v0 + 608);
            v78 = *(v0 + 600);
            v79 = *(v0 + 592);
            v80 = *(v0 + 672) + 1;
            (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
            (*(v78 + 8))(v77, v79);
            if (v80 == v76)
            {
              break;
            }

            v81 = *(v0 + 672) + 1;
            *(v0 + 672) = v81;
            *(v0 + 664) = v154;
            v82 = *(v0 + 648);
            if (v81 >= *(v82 + 16))
            {
              goto LABEL_87;
            }

            v171 = *(v0 + 776);
            v163 = *(v0 + 768);
            v83 = *(v0 + 632);
            v84 = *(v0 + 608);
            v85 = *(v0 + 600);
            v86 = *(v0 + 592);
            v87 = *(v0 + 584);
            v88 = *(v0 + 576);
            v89 = *(v0 + 568);
            v90 = *(v0 + 544);
            v91 = *(v0 + 536);
            outlined init with copy of ReferenceResolutionClientProtocol?(v82 + ((*(v0 + 772) + 32) & ~*(v0 + 772)) + *(*(v0 + 624) + 72) * v81, v83, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
            (*(v85 + 32))(v84, v83, v86);
            (*(v90 + 32))(v87, v83 + v163, v91);
            v92 = *(v90 + 16);
            *(v0 + 680) = v92;
            *(v0 + 688) = (v90 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v92(v88, v87, v91);
            Input.init(parse:)();
            v167 = v92;
            v92(v89, v87, v91);
            if ((*(v90 + 88))(v89, v91) != v171)
            {
              v130 = (v0 + 536);
              v129 = v0 + 544;
              v131 = (v0 + 568);
              goto LABEL_55;
            }

            v172 = *(v0 + 780);
            v93 = *(v0 + 568);
            v95 = *(v0 + 496);
            v94 = *(v0 + 504);
            v97 = *(v0 + 448);
            v96 = *(v0 + 456);
            v160 = *(v0 + 440);
            loga = *(v0 + 488);
            v158 = *(v0 + 432);
            v98 = *(v0 + 416);
            v164 = *(v0 + 424);
            v99 = *(v0 + 408);
            (*(*(v0 + 544) + 96))(v93, *(v0 + 536));
            (*(v95 + 32))(v94, v93, loga);
            USOParse.userParse.getter();
            Siri_Nlu_External_UserParse.parser.getter();
            Siri_Nlu_External_Parser.parserID.getter();
            (*(v97 + 8))(v96, v160);
            (*(v98 + 104))(v164, v172, v99);
            lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v100 = *(v98 + 8);
            v100(v164, v99);
            v100(v158, v99);
            if (*(v0 + 336) == *(v0 + 344) || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
            {
              (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
              v101 = v167;
            }

            else
            {
              v103 = *(v0 + 472);
              v102 = *(v0 + 480);
              v104 = *(v0 + 464);
              v105 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
              (*(v103 + 8))(v102, v104);
              v101 = v167;
              if ((v105 & 1) == 0)
              {
                v129 = v0 + 496;
                v131 = (v0 + 504);
                v130 = (v0 + 488);
LABEL_55:
                (*(*v129 + 8))(*v131, *v130);
                v132 = static IntentTopic.make(from:)();
                v133 = *(v132 + 16);
                if (!v133)
                {

                  v137 = MEMORY[0x1E69E7CC0];
LABEL_79:
                  *(v0 + 696) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(v137);

                  v150 = static MessageBusActor.shared;
                  *(v0 + 704) = static MessageBusActor.shared;

                  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.allHandlers(for:), v150, 0);
                }

                v134 = *(v0 + 384);
                v135 = v132 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
                v136 = *(v134 + 72);
                v174 = *(v134 + 16);
                v137 = MEMORY[0x1E69E7CC0];
                while (2)
                {
                  v138 = *(v0 + 400);
                  v140 = *(v0 + 376);
                  v139 = *(v0 + 384);
                  v174(v138, v135, v140);
                  v141 = IntentTopic.makeWildcardFallbacks()();
                  (*(v139 + 8))(v138, v140);
                  v142 = *(v141 + 16);
                  v143 = v137[2];
                  v144 = v143 + v142;
                  if (__OFADD__(v143, v142))
                  {
                    goto LABEL_88;
                  }

                  v145 = swift_isUniquelyReferenced_nonNull_native();
                  if (v145 && v144 <= v137[3] >> 1)
                  {
                    if (!*(v141 + 16))
                    {
LABEL_57:

                      if (v142)
                      {
                        goto LABEL_89;
                      }

                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    if (v143 <= v144)
                    {
                      v146 = v143 + v142;
                    }

                    else
                    {
                      v146 = v143;
                    }

                    v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v145, v146, 1, v137);
                    if (!*(v141 + 16))
                    {
                      goto LABEL_57;
                    }
                  }

                  if ((v137[3] >> 1) - v137[2] < v142)
                  {
                    goto LABEL_90;
                  }

                  swift_arrayInitWithCopy();

                  if (v142)
                  {
                    v147 = v137[2];
                    v148 = __OFADD__(v147, v142);
                    v149 = v147 + v142;
                    if (v148)
                    {
                      goto LABEL_91;
                    }

                    v137[2] = v149;
                  }

LABEL_58:
                  v135 += v136;
                  if (!--v133)
                  {

                    goto LABEL_79;
                  }

                  continue;
                }
              }
            }

            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v106 = *(v0 + 584);
            v107 = *(v0 + 560);
            v108 = *(v0 + 536);
            v109 = type metadata accessor for Logger();
            __swift_project_value_buffer(v109, static Logger.executor);
            v101(v107, v106, v108);
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.debug.getter();
            v112 = os_log_type_enabled(v110, v111);
            v173 = *(v0 + 584);
            if (v112)
            {
              v113 = *(v0 + 576);
              v114 = *(v0 + 560);
              v153 = *(v0 + 544);
              logb = v110;
              v115 = *(v0 + 536);
              v168 = *(v0 + 504);
              v161 = *(v0 + 496);
              v165 = *(v0 + 488);
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              v175[0] = v117;
              *v116 = 136315138;
              v101(v113, v114, v115);
              v118 = v115;
              v159 = v115;
              v119 = String.init<A>(describing:)();
              v121 = v120;
              v122 = *(v153 + 8);
              v122(v114, v118);
              v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v175);

              *(v116 + 4) = v123;
              _os_log_impl(&dword_1DC659000, logb, v111, "allHandlers(for:) Skipping SNLC parse %s", v116, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v117);
              MEMORY[0x1E12A2F50](v117, -1, -1);
              MEMORY[0x1E12A2F50](v116, -1, -1);

              (*(v161 + 8))(v168, v165);
              v122(v173, v159);
            }

            else
            {
              v69 = *(v0 + 560);
              v70 = *(v0 + 544);
              v71 = *(v0 + 536);
              v73 = *(v0 + 496);
              v72 = *(v0 + 504);
              v74 = *(v0 + 488);

              v75 = *(v70 + 8);
              v75(v69, v71);
              (*(v73 + 8))(v72, v74);
              v75(v173, v71);
            }
          }

          if (one-time initialization token for executor == -1)
          {
LABEL_52:
            v124 = type metadata accessor for Logger();
            __swift_project_value_buffer(v124, static Logger.executor);
            v125 = *(v0 + 320);

            v126 = Logger.logObject.getter();
            v127 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              *v128 = 134217984;
              *(v128 + 4) = *(v125 + 16);

              _os_log_impl(&dword_1DC659000, v126, v127, "allHandlers(for:) Total handlers found: %ld", v128, 0xCu);
              MEMORY[0x1E12A2F50](v128, -1, -1);
            }

            else
            {
            }

            v175[0] = v125;

            specialized MutableCollection<>.sort(by:)(v175);
            if (v154)
            {
            }

            else
            {

              v151 = v175[0];

              v152 = *(v0 + 8);

              return v152(v151);
            }
          }

LABEL_94:
          swift_once();
          goto LABEL_52;
        }
      }

      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_38;
    }

    v19 = *(v0 + 696);
    v18 = *(v19 + 8 * v20 + 56);
    ++v16;
  }

  while (!v18);
  v16 = v20;
LABEL_18:
  *(v0 + 752) = v16;
  *(v0 + 744) = v18;
  v21 = *(v0 + 368);
  (*(*(v0 + 384) + 16))(*(v0 + 392), *(v19 + 48) + *(*(v0 + 384) + 72) * (__clz(__rbit64(v18)) | (v16 << 6)), *(v0 + 376));
  v22 = *(v21 + 40);
  v23 = *(v21 + 48);
  v24 = swift_task_alloc();
  *(v0 + 760) = v24;
  *v24 = v0;
  v24[1] = ConversationHandlerLocator.allHandlers(for:);
  v25 = *(v0 + 392);

  return FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)(v0 + 96, v25, v22, v23);
}

void *specialized ImmutableSimpleOrderedDictionary.items()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v39 - v5;
  v54 = type metadata accessor for Parse();
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v39 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(v11 + 16);
  v16 = v11 + 16;
  v17 = v18;
  v19 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v20 = *(v16 + 56);
  v41 = v6 + 32;
  v42 = v6 + 16;
  v40 = (v6 + 8);
  v21 = (v16 - 8);
  v57 = MEMORY[0x1E69E7CC0];
  v47 = v6;
  v48 = a1;
  v53 = v16;
  v45 = v18;
  v46 = v10;
  v43 = v20;
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (v16 - 8);
  (v18)(v14, v19, v10, v13);
  while (1)
  {
    if (*(a1 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v24 & 1) != 0))
    {
      v25 = *(a1 + 56);
      v26 = v6;
      v27 = v25 + *(v6 + 72) * v23;
      v28 = *(v6 + 16);
      v29 = v49;
      v30 = v54;
      v28(v49, v27, v54);
      v31 = *(v26 + 32);
      v32 = v55;
      v31(v55, v29, v30);
      v52 = *(v51 + 48);
      v33 = v56;
      v17(v56, v14, v10);
      v28((v33 + v52), v32, v30);
      v34 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
      }

      v36 = v34[2];
      v35 = v34[3];
      v10 = v46;
      v6 = v47;
      v14 = v44;
      v17 = v45;
      v21 = v39;
      if (v36 >= v35 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
      }

      (*v40)(v55, v54);
      (*v21)(v14, v10);
      v34[2] = v36 + 1;
      v37 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v57 = v34;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v56, v34 + v37 + *(v50 + 72) * v36, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
      a1 = v48;
      v20 = v43;
    }

    else
    {
      (*v21)(v14, v10);
    }

    v19 += v20;
    if (!--v15)
    {
      break;
    }

    (v17)(v14, v19, v10, v22);
  }

  return v57;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t *initializeBufferWithCopyOfBuffer for CachedPluginCatalog(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[43] = a4;
  v5[44] = v4;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:)()
{
  v41 = v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v1 = IntentTopic.makeCacheKeyAndWildcardFallbacks()();
  *(v0 + 360) = v1;
  v2 = v1[2];
  *(v0 + 368) = v2;
  if (v2)
  {
    *(v0 + 376) = *(*(v0 + 352) + 16);
    *(v0 + 384) = 0;
    if (v1[2])
    {
      *(v0 + 392) = v1[4];
      *(v0 + 400) = v1[5];
      v3 = one-time initialization token for shared;

      if (v3 == -1)
      {
LABEL_4:
        v4 = static ConversationActor.shared;
        *(v0 + 408) = static ConversationActor.shared;

        return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), v4, 0);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (*(v0 + 160))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
    v6 = static os_log_type_t.debug.getter();
    v7 = Logger.logObject.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315650;
      v10 = StaticString.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v38);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v38);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2080;
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v39 = 0xD000000000000025;
      v40 = 0x80000001DCA839A0;
      v16 = *(v0 + 200);
      v17 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
      v18 = (*(v17 + 8))(v16, v17);
      MEMORY[0x1E12A1580](v18);

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v38);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_1DC659000, v7, v6, "%s:%s: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v21 = *(v0 + 336);
    v20 = *(v0 + 344);
    v22 = *(v0 + 320);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
    v23 = type metadata accessor for FlowExtensionConnection();
    swift_allocObject();

    v24 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v21, v20);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v25);
    v27 = (*(v26 + 8))(v25, v26);
    v29 = v28;
    *(v0 + 280) = v23;
    *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
    *(v0 + 256) = v24;
    type metadata accessor for RemoteConversationClient();
    v30 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v30 + 168) = 0;
    *(v30 + 176) = 0;
    *(v30 + 184) = 2;
    *(v30 + 112) = v27;
    *(v30 + 120) = v29;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v30 + 128);
    v22[3] = &type metadata for FlowExtensionConversationHandler;
    v22[4] = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

    *v22 = v30;
    v22[1] = v27;
    v22[2] = v29;
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v32, v33, "No extensions support input", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v35 = *(v0 + 320);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0;
  }

  v36 = *(v0 + 8);

  return v36();
}

{
  v44 = v0;
  if (*(v0 + 80))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);

    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
LABEL_5:
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (*(v0 + 160))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.executor);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
      v4 = static os_log_type_t.debug.getter();
      v5 = Logger.logObject.getter();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v41 = v7;
        *v6 = 136315650;
        v8 = StaticString.description.getter();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v41);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2080;
        v11 = StaticString.description.getter();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v41);

        *(v6 + 14) = v13;
        *(v6 + 22) = 2080;
        v42 = 0;
        v43 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v42 = 0xD000000000000025;
        v43 = 0x80000001DCA839A0;
        v14 = *(v0 + 200);
        v15 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
        v16 = (*(v15 + 8))(v14, v15);
        MEMORY[0x1E12A1580](v16);

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v41);

        *(v6 + 24) = v17;
        _os_log_impl(&dword_1DC659000, v5, v4, "%s:%s: %s", v6, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v7, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);
      }

      v18 = *(v0 + 336);
      v19 = *(v0 + 344);
      v20 = *(v0 + 320);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
      v21 = type metadata accessor for FlowExtensionConnection();
      swift_allocObject();

      v22 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v18, v19);
      v23 = *(v0 + 120);
      v24 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v23);
      v25 = (*(v24 + 8))(v23, v24);
      v27 = v26;
      *(v0 + 280) = v21;
      *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
      *(v0 + 256) = v22;
      type metadata accessor for RemoteConversationClient();
      v28 = swift_allocObject();

      swift_defaultActor_initialize();
      *(v28 + 168) = 0;
      *(v28 + 176) = 0;
      *(v28 + 184) = 2;
      *(v28 + 112) = v25;
      *(v28 + 120) = v27;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v28 + 128);
      v20[3] = &type metadata for FlowExtensionConversationHandler;
      v20[4] = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

      *v20 = v28;
      v20[1] = v25;
      v20[2] = v27;
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.executor);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "No extensions support input", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      v33 = *(v0 + 320);

      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      *v33 = 0u;
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0;
    }

    v34 = *(v0 + 8);

    return v34();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 384) + 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (v2 == v1)
  {

    goto LABEL_5;
  }

  v36 = *(v0 + 384) + 1;
  *(v0 + 384) = v36;
  v37 = *(v0 + 360);
  if (v36 >= *(v37 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = v37 + 16 * v36;
  *(v0 + 392) = *(v38 + 32);
  *(v0 + 400) = *(v38 + 40);
  v39 = one-time initialization token for shared;

  if (v39 != -1)
  {
LABEL_25:
    swift_once();
  }

  v40 = static ConversationActor.shared;
  *(v0 + 408) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), v40, 0);
}

{
  v1 = *(v0 + 376);
  v2 = *(v1 + 48);
  *(v0 + 416) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 424) = v3;
    *v3 = v0;
    v3[1] = FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:);
    v4 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v3, v2, v4);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 64);
    if (v5)
    {
      if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392), *(v0 + 400)), (v7 & 1) != 0))
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v5 + 56) + 40 * v6, v0 + 56);
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), 0, 0);
  }
}

{
  v1 = *(*v0 + 408);

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), v1, 0);
}

{
  v1 = *(v0 + 376);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 392), *(v0 + 400)), (v4 & 1) != 0))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v0 + 56);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(topic:onConnectionInterrupted:), 0, 0);
}

uint64_t protocol witness for DecisionMaking.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:) in conformance DecisionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t outlined destroy of RemoteConversationTurnData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)()
{
  v1 = *(v0 + 112);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      v2 = *(v0 + 128);
      v3 = v2[6];
      v4 = v2[7];
      __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
      v26 = (*(v4 + 8) + **(v4 + 8));
      v5 = swift_task_alloc();
      *(v0 + 176) = v5;
      *v5 = v0;
      v5[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);

      return v26(v3, v4);
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_3;
  }

  v7 = *(v0 + 112);
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 48);
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);

    v9 = 0;
  }

  *(v0 + 184) = result;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  *(v0 + 216) = v11;
  *(v0 + 200) = v10;
  if (result < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
LABEL_26:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 184));

      v25 = *(v0 + 8);

      return v25(0);
    }

    *(v0 + 96) = v20;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v19 = *(v0 + 88);
    v16 = v9;
    v18 = v11;
LABEL_22:
    *(v0 + 232) = v16;
    *(v0 + 240) = v18;
    *(v0 + 224) = v19;
    if (v19)
    {
      v21 = **(v0 + 120);
      v22 = swift_task_alloc();
      *(v0 + 248) = v22;
      *v22 = v0;
      v22[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
      v23 = *(v0 + 152);
      v24 = *(v0 + 104);

      return RemoteConversationClient.accept(input:speechData:)(v23, v24, v21);
    }

    goto LABEL_26;
  }

  v15 = v11;
  v16 = v9;
  if (v11)
  {
LABEL_19:
    v18 = (v15 - 1) & v15;
    v19 = *(*(result + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    goto LABEL_22;
  }

  v17 = v9;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= ((v10 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v15 = *(v8 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:), v1, 0);
}

{
  v1 = *(v0 + 112);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v4 = 0;
  }

  *(v0 + 184) = result;
  *(v0 + 192) = v3;
  *(v0 + 208) = v4;
  *(v0 + 216) = v6;
  *(v0 + 200) = v5;
  if (result < 0)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 184));

      v20 = *(v0 + 8);

      return v20(0);
    }

    *(v0 + 96) = v15;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v14 = *(v0 + 88);
    v11 = v4;
    v13 = v6;
LABEL_16:
    *(v0 + 232) = v11;
    *(v0 + 240) = v13;
    *(v0 + 224) = v14;
    if (v14)
    {
      v16 = **(v0 + 120);
      v17 = swift_task_alloc();
      *(v0 + 248) = v17;
      *v17 = v0;
      v17[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
      v18 = *(v0 + 152);
      v19 = *(v0 + 104);

      return RemoteConversationClient.accept(input:speechData:)(v18, v19, v16);
    }

    goto LABEL_20;
  }

  v10 = v6;
  v11 = v4;
  if (v6)
  {
LABEL_13:
    v13 = (v10 - 1) & v10;
    v14 = *(*(result + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    goto LABEL_16;
  }

  v12 = v4;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= ((v5 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v3 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
  }

  else
  {
    v4 = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v33 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  outlined init with take of RemoteConversationOrReformedInput(*(v0 + 152), v1, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationOrReformedInput(v1, v2, type metadata accessor for UserInputResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of RemoteConversationOrReformedInput(*(v0 + 144), type metadata accessor for UserInputResult);

      return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000005CLL, 0x80000001DCA7FEB0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/DecisionEngine/ConversationHelper.swift", 108, 2, 98);
    }

    v6 = *(v0 + 224);

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

  v5 = *(v0 + 144);
  outlined destroy of RemoteConversationOrReformedInput(*(v0 + 160), type metadata accessor for UserInputResult);

  outlined destroy of RemoteConversationOrReformedInput(v5, type metadata accessor for UserInputResult);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 208) = v6;
  *(v0 + 216) = v7;
  v8 = *(v0 + 184);
  if (v8 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24)
    {
LABEL_24:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 184));

      v6 = 0;
LABEL_25:

      v29 = *(v0 + 8);

      return v29(v6);
    }

    *(v0 + 96) = v24;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v13 = *(v0 + 88);
    v10 = v6;
    v12 = v7;
  }

  else
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      v11 = v6;
      while (1)
      {
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v10 >= ((*(v0 + 200) + 64) >> 6))
        {
          goto LABEL_24;
        }

        v9 = *(*(v0 + 192) + 8 * v10);
        ++v11;
        if (v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      swift_once();
LABEL_14:
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.executor);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 224);
        v18 = *(v0 + 184);
        v30 = *(v0 + 160);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;

        _StringGuts.grow(_:)(17);

        strcpy(v32, "FlowExtension(");
        HIBYTE(v32[1]) = -18;
        MEMORY[0x1E12A1580](*(v17 + 112), *(v17 + 120));
        MEMORY[0x1E12A1580](41, 0xE100000000000000);

        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32[0], v32[1], &v31);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_1DC659000, v15, v16, "[ConversationHelper] Selecting existing conversation to handle input: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1E12A2F50](v20, -1, -1);
        MEMORY[0x1E12A2F50](v19, -1, -1);
        outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v18);

        v22 = v30;
      }

      else
      {
        v23 = *(v0 + 160);
        outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 184));

        v22 = v23;
      }

      outlined destroy of RemoteConversationOrReformedInput(v22, type metadata accessor for UserInputResult);
      goto LABEL_25;
    }

LABEL_12:
    v12 = (v9 - 1) & v9;
    v13 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
  }

  *(v0 + 232) = v10;
  *(v0 + 240) = v12;
  *(v0 + 224) = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  v25 = **(v0 + 120);
  v26 = swift_task_alloc();
  *(v0 + 248) = v26;
  *v26 = v0;
  v26[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
  v27 = *(v0 + 152);
  v28 = *(v0 + 104);

  return RemoteConversationClient.accept(input:speechData:)(v27, v28, v25);
}

{
  v30 = v0;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = *(v0 + 256);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 256);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136315138;
      *(v0 + 80) = v7;
      v10 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v29);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationHelper] Error checking if active conversation could handle input: %s. Will try the next conversation", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    else
    {
    }

    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    *(v0 + 208) = v14;
    *(v0 + 216) = v15;
    v16 = *(v0 + 184);
    if (v16 < 0)
    {
      break;
    }

    v17 = v15;
    v18 = v14;
    if (v15)
    {
LABEL_11:
      v20 = (v17 - 1) & v17;
      v21 = *(*(v16 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

      goto LABEL_14;
    }

    v19 = v14;
    while (1)
    {
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v18 >= ((*(v0 + 200) + 64) >> 6))
      {
        goto LABEL_18;
      }

      v17 = *(*(v0 + 192) + 8 * v18);
      ++v19;
      if (v17)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    goto LABEL_18;
  }

  *(v0 + 96) = v22;
  type metadata accessor for RemoteConversationClient();
  swift_dynamicCast();
  v21 = *(v0 + 88);
  v18 = v14;
  v20 = v15;
LABEL_14:
  *(v0 + 232) = v18;
  *(v0 + 240) = v20;
  *(v0 + 224) = v21;
  if (v21)
  {
    v23 = **(v0 + 120);
    v24 = swift_task_alloc();
    *(v0 + 248) = v24;
    *v24 = v0;
    v24[1] = ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:);
    v25 = *(v0 + 152);
    v26 = *(v0 + 104);

    return RemoteConversationClient.accept(input:speechData:)(v25, v26, v23);
  }

LABEL_18:
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 184));

  v28 = *(v0 + 8);

  return v28(0);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow11IntentTopicV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for IntentTopic();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD78]);
  result = MEMORY[0x1E12A1A00](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v21 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v7, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "acceptInitialInput(inputIdentifier:speechData:)", 47, 2);
  v9 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v8 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8];
  swift_beginAccess();
  v5[21] = v9;
  v5[22] = v8;

  v10 = v5[19];
  v11 = v5[20];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v10);
  (*(v3 + 16))(v1, v6, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v0[16] = v13;
  (*(v3 + 32))(v13 + v12, v1, v2);
  *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v14 = *(v11 + 8);
  v15 = v4;
  v20 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  v17 = v0[9];
  v18 = v0[5];

  return v20(v18, &async function pointer to partial apply for closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), v13, v17, v10, v11);
}

{
  v14 = v0;
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(v0[5], v0[10], type metadata accessor for UserInputResult);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = UserInputResult.description.getter();
    v9 = v8;
    outlined destroy of UserInputResult(v4);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v1, v2, "Extension returned from accept(): %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {

    outlined destroy of UserInputResult(v4);
  }

  v11 = v0[1];

  return v11();
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t specialized Sequence.flatMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v6 = type metadata accessor for IntentTopic();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v51 = v7 + 16;
  v52 = v7;
  v50 = (v7 + 8);
  v55 = a3;

  v16 = v13;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v46 = v14;
  v47 = a3 + 56;
  v48 = v9;
  v49 = v6;
  while (1)
  {
    if (!v16)
    {
      while (1)
      {
        v22 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v22 >= v14)
        {
          goto LABEL_42;
        }

        v16 = *(v10 + 8 * v22);
        ++v17;
        if (v16)
        {
          v17 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

LABEL_12:
    v58 = v16;
    (*(v52 + 16))(v9, *(v55 + 48) + *(v52 + 72) * (__clz(__rbit64(v16)) | (v17 << 6)), v6);
    v53(&v61, v9);
    if (v4)
    {
      goto LABEL_41;
    }

    (*v50)(v9, v6);
    v23 = v61 >> 62;
    v24 = v61;
    v25 = v61 >> 62 ? __CocoaSet.count.getter() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v18 >> 62;
    v59 = v25;
    v57 = 0;
    if (v18 >> 62)
    {
      break;
    }

    v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v27 + v25;
    if (__OFADD__(v27, v25))
    {
      goto LABEL_40;
    }

LABEL_17:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v26)
      {
        v29 = v18;
        v30 = v18 & 0xFFFFFFFFFFFFFF8;
        if (v28 <= *(v30 + 24) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      __CocoaSet.count.getter();
      goto LABEL_23;
    }

    if (v26)
    {
      goto LABEL_22;
    }

LABEL_23:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v29 = result;
    v30 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v56 = v29;
    if (v23)
    {
      result = __CocoaSet.count.getter();
      v33 = result;
      v34 = v59;
      if (!result)
      {
LABEL_4:
        v19 = v34;

        v20 = v19 <= 0;
        v9 = v48;
        v6 = v49;
        v18 = v56;
        v4 = v57;
        v14 = v46;
        v10 = v47;
        v21 = v58;
        if (!v20)
        {
          goto LABEL_44;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v59;
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    if (((v32 >> 1) - v31) < v34)
    {
      goto LABEL_45;
    }

    v35 = v30 + 8 * v31 + 32;
    v45 = v30;
    if (v23)
    {
      if (v33 < 1)
      {
        goto LABEL_47;
      }

      lazy protocol witness table accessor for type [RemoteFlowPluginPackage] and conformance [A]();
      for (i = 0; i != v33; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
        v37 = specialized protocol witness for Collection.subscript.read in conformance [A](v60, i, v24);
        v39 = *v38;

        (v37)(v60, 0);
        *(v35 + 8 * i) = v39;
      }
    }

    else
    {
      type metadata accessor for RemoteFlowPluginPackage();
      swift_arrayInitWithCopy();
    }

    v21 = v58;
    v18 = v56;
    v4 = v57;
    v9 = v48;
    v6 = v49;
    v14 = v46;
    v10 = v47;
    if (v59 > 0)
    {
      v40 = *(v45 + 16);
      v41 = __OFADD__(v40, v59);
      v42 = v40 + v59;
      if (v41)
      {
        goto LABEL_46;
      }

      *(v45 + 16) = v42;
    }

LABEL_6:
    v16 = (v21 - 1) & v21;
  }

  v43 = __CocoaSet.count.getter();
  v28 = v43 + v59;
  if (!__OFADD__(v43, v59))
  {
    goto LABEL_17;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  (*v50)(v9, v6);

LABEL_42:

  return v18;
}

uint64_t partial apply for closure #2 in ConversationHandlerLocator.allHandlers(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  result = (*(v7 + 8))(a1, v6, v7);
  *a2 = result;
  return result;
}

uint64_t protocol witness for PluginLookupByIntentTopic.findRemoteFlowPlugins(intentTopic:) in conformance CachedPluginCatalog(uint64_t a1)
{
  if (*(*v1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

id FlowExtensionUserInputResultXPC.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  v5 = [a1 decodeIntegerForKey_];

  if (v5 >= 4)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "Could not decode FlowExtensionUserInputResultXPC: unknown .type", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    type metadata accessor for FlowExtensionUserInputResultXPC();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = v5;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    *&v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = NSCoder.decodeObject<A>(of:forKey:)();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = &v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
    *v16 = v8;
    v16[1] = v10;
    v17 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
    v18 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = v18;
    v20.receiver = v2;
    v20.super_class = type metadata accessor for FlowExtensionUserInputResultXPC();
    v19 = objc_msgSendSuper2(&v20, sel_init);

    return v19;
  }
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(void *a1)
{
  v2 = type metadata accessor for UserInputResult(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x78))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMd, &_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

id FlowExtensionUserInputResultXPC.swiftRepresentation()@<X0>(_BYTE *a1@<X8>)
{
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type);
  if (v8 <= 1)
  {
    if (!v8)
    {
      type metadata accessor for UserInputResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v8 == 1)
    {
      *a1 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude);
      type metadata accessor for UserInputResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v9 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8);
    if (v9 >> 60 == 15)
    {
LABEL_16:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000046, 0x80000001DCA8BDC0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/UserInputResult.swift", 118, 2, 112);
      __break(1u);
      goto LABEL_17;
    }

    v10 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    outlined copy of Data._Representation(v10, v9);
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0110]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v10, v9);

    if (!v2)
    {
      (*(v5 + 32))(a1, v7, v4);
      type metadata accessor for UserInputResult(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v8 != 3)
    {
LABEL_15:
      v13[1] = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type);
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_16;
    }

    v12 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
    if (!v12)
    {
LABEL_17:
      result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000035, 0x80000001DCA8BD00, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/UserInputResult.swift", 118, 2, 119);
      __break(1u);
      return result;
    }

    swift_willThrow();
    return v12;
  }

  return result;
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v20 = a1;
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMd, &_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Input();
  lazy protocol witness table accessor for type RemoteConversationClient and conformance RemoteConversationClient(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0108]);
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;

  if (!v5)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    (*(v7 + 16))(v9, v20, v6);
    v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v15 = swift_allocObject();
    (*(v7 + 32))(v15 + v14, v9, v6);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
    aBlock[3] = &block_descriptor_161;
    v16 = _Block_copy(aBlock);

    v17 = isa;
    [v21 acceptWithInputData:isa speechData:v23 reply:v16];
    _Block_release(v16);

    return outlined consume of Data._Representation(v10, v12);
  }

  return result;
}

uint64_t closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v15 = *(v0 + 24);
  (*(v4 + 16))(v1, *(v0 + 40), v3);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  *(v8 + 16) = v15;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v5;
  swift_unknownObjectRetain();
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  *(v10 + 24) = v8;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = type metadata accessor for UserInputResult(0);
  *v11 = v0;
  v11[1] = closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v10, v12);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC72E360()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_28Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t *initializeBufferWithCopyOfBuffer for AffinityScoringAdapter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8 + 24);
    *(a1 + v8 + 24) = v9;
    (**(v9 - 8))();
  }

  return a1;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ReferenceResolutionClientProtocol(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined destroy of UserInputResult(uint64_t a1)
{
  v2 = type metadata accessor for UserInputResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v4 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[41];
  v2 = v0[31];
  v3 = v0[29];

  v1(v2, v3);
  v4 = v0[20];
  v5 = v0[17];
  outlined init with take of RemoteConversationOrReformedInput(v0[19], v4, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationOrReformedInput(v4, v5, type metadata accessor for UserInputResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0[23] + 32);
      v7(v0[24], v0[17], v0[22]);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1DC659000, v8, v9, "[ConversationHelper] Conversation wants to reform input after it had just accepted it?", v10, 2u);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v11 = v0[28];
      v12 = v0[24];
      v13 = v0[22];
      v14 = v0[20];
      v15 = v0[10];

      outlined destroy of RemoteConversationOrReformedInput(v14, type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v11, type metadata accessor for ConversationSearchResult);
      v7(v15, v12, v13);
      v16 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v17 = *(*(v16 - 8) + 56);
      v18 = v15;
    }

    else
    {
      v26 = v0[46];
      v27 = v0[28];
      v28 = v0[10];
      outlined destroy of RemoteConversationOrReformedInput(v0[20], type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v27, type metadata accessor for ConversationSearchResult);
      *v28 = v26;
      v16 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v17 = *(*(v16 - 8) + 56);
      v18 = v28;
    }

    v17(v18, 0, 1, v16);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "[ConversationHelper] Conversation did not accept input, returning nil", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v22 = v0[28];
    v23 = v0[20];
    v24 = v0[10];

    outlined destroy of RemoteConversationOrReformedInput(v23, type metadata accessor for UserInputResult);
    outlined destroy of RemoteConversationOrReformedInput(v22, type metadata accessor for ConversationSearchResult);
    v25 = type metadata accessor for RemoteConversationOrReformedInput(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  }

  v29 = v0[1];

  return v29();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationHelper.swift", 39, 2, "loadConversationAndAccept(handler:input:conversationHelperInput:)", 65, 2);
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);

  return v7(v3, v4);
}

{
  v1 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:), v1, 0);
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = type metadata accessor for ConversationHelperInput(0);
  v6 = *(v5 + 20);
  v7 = *v1;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[36] = *v1;
  v0[37] = v8;
  v9 = (v7 + v8);
  v10 = *v9;
  v11 = v9[1];
  v0[38] = v11;

  Input.identifier.getter();
  v12 = &v1[*(v5 + 24)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v18 = (*(v4 + 32) + **(v4 + 32));
  v15 = swift_task_alloc();
  v0[39] = v15;
  *v15 = v0;
  v15[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  v16 = v0[32];

  return v18(&v1[v6], v10, v11, v16, v13, v14, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v2[40] = v0;

  v6 = *(v4 + 8);
  v2[41] = v6;
  v2[42] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  v7 = v2[33];
  if (v0)
  {
    v8 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v8 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v1 = v0[11];
  v2 = (v0[36] + v0[37]);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *v2;
  v6 = v2[1];
  v0[43] = v6;
  v7 = *(v4 + 40);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  v9 = v0[28];
  v10 = v0[12];

  return v12(v9, v10, v5, v6, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v62 = v0;
  v1 = v0[28];
  v2 = *v1;
  v0[46] = *v1;
  if (v2)
  {
    v3 = v0[29];
    v4 = v0[30];
    v5 = v0[15];
    outlined init with copy of ReferenceResolutionClientProtocol?(v1 + *(v0[27] + 28), v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v6 = v0[15];

      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DC659000, v7, v8, "Warning: Call to canHandle() did not return an input identifier, sending the input again. This will involve loading the flow twice.", v9, 2u);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v10 = swift_task_alloc();
      v0[49] = v10;
      *v10 = v0;
      v10[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
      v11 = v0[36];
      v12 = v0[18];
      v13 = v0[12];

      return RemoteConversationClient.accept(input:speechData:)(v12, v13, v11);
    }

    else
    {
      (*(v0[30] + 32))(v0[31], v0[15], v0[29]);

      v43 = swift_task_alloc();
      v0[47] = v43;
      *v43 = v0;
      v43[1] = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
      v44 = v0[36];
      v45 = v0[31];
      v46 = v0[19];

      return RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(v46, v45, v44);
    }
  }

  else
  {
    v15 = v0[27];
    v16 = v0[22];
    v17 = v0[23];
    v18 = v0[21];

    outlined init with copy of ReferenceResolutionClientProtocol?(v1 + *(v15 + 24), v18, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v19 = (*(v17 + 48))(v18, 1, v16);
    v20 = v0[22];
    v21 = v0[23];
    if (v19 == 1)
    {
      v22 = v0[25];
      v24 = v0[11];
      v23 = v0[12];
      outlined destroy of ReferenceResolutionClientProtocol?(v0[21], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol(v24, (v0 + 2));
      (*(v21 + 16))(v22, v23, v20);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[28];
      v29 = v0[25];
      v31 = v0[22];
      v30 = v0[23];
      if (v27)
      {
        v32 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *v32 = 136315394;
        v34 = v0[5];
        v33 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
        v60 = v28;
        v35 = (*(v33 + 16))(v34, v33);
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v61);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2080;
        lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        (*(v30 + 8))(v29, v31);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v61);

        *(v32 + 14) = v42;
        _os_log_impl(&dword_1DC659000, v25, v26, "[ConversationHelper] Conversation handler %s did not find a flow for input %s, returning nil", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v59, -1, -1);
        MEMORY[0x1E12A2F50](v32, -1, -1);

        outlined destroy of RemoteConversationOrReformedInput(v60, type metadata accessor for ConversationSearchResult);
      }

      else
      {

        (*(v30 + 8))(v29, v31);
        outlined destroy of RemoteConversationOrReformedInput(v28, type metadata accessor for ConversationSearchResult);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      }

      v56 = v0[10];
      v57 = type metadata accessor for RemoteConversationOrReformedInput(0);
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
    }

    else
    {
      v47 = *(v21 + 32);
      v47(v0[26], v0[21], v0[22]);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1DC659000, v48, v49, "[ConversationHelper] Conversation wants to reform input, will consider intent reformation in hypothesis list", v50, 2u);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      v51 = v0[28];
      v52 = v0[26];
      v53 = v0[22];
      v54 = v0[10];

      outlined destroy of RemoteConversationOrReformedInput(v51, type metadata accessor for ConversationSearchResult);
      v47(v54, v52, v53);
      v55 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    }

    v58 = v0[1];

    return v58();
  }
}

{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  else
  {
    v4 = ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = v0[17];
  v2 = v0[20];
  outlined init with take of RemoteConversationOrReformedInput(v0[18], v2, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationOrReformedInput(v2, v1, type metadata accessor for UserInputResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0[23] + 32);
      v4(v0[24], v0[17], v0[22]);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DC659000, v5, v6, "[ConversationHelper] Conversation wants to reform input after it had just accepted it?", v7, 2u);
        MEMORY[0x1E12A2F50](v7, -1, -1);
      }

      v8 = v0[28];
      v9 = v0[24];
      v10 = v0[22];
      v11 = v0[20];
      v12 = v0[10];

      outlined destroy of RemoteConversationOrReformedInput(v11, type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v8, type metadata accessor for ConversationSearchResult);
      v4(v12, v9, v10);
      v13 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v14 = *(*(v13 - 8) + 56);
      v15 = v12;
    }

    else
    {
      v23 = v0[46];
      v24 = v0[28];
      v25 = v0[10];
      outlined destroy of RemoteConversationOrReformedInput(v0[20], type metadata accessor for UserInputResult);
      outlined destroy of RemoteConversationOrReformedInput(v24, type metadata accessor for ConversationSearchResult);
      *v25 = v23;
      v13 = type metadata accessor for RemoteConversationOrReformedInput(0);
      swift_storeEnumTagMultiPayload();
      v14 = *(*(v13 - 8) + 56);
      v15 = v25;
    }

    v14(v15, 0, 1, v13);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "[ConversationHelper] Conversation did not accept input, returning nil", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v19 = v0[28];
    v20 = v0[20];
    v21 = v0[10];

    outlined destroy of RemoteConversationOrReformedInput(v20, type metadata accessor for UserInputResult);
    outlined destroy of RemoteConversationOrReformedInput(v19, type metadata accessor for ConversationSearchResult);
    v22 = type metadata accessor for RemoteConversationOrReformedInput(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  v26 = v0[1];

  return v26();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[41];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];

  v1(v2, v3);
  outlined destroy of RemoteConversationOrReformedInput(v4, type metadata accessor for ConversationSearchResult);

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 224);

  outlined destroy of RemoteConversationOrReformedInput(v1, type metadata accessor for ConversationSearchResult);

  v2 = *(v0 + 8);

  return v2();
}

void *specialized Array.append<A>(contentsOf:)(void *a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMR, &_s14SiriKitRuntime19ConversationHandler_pMd, &_s14SiriKitRuntime19ConversationHandler_pMR);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMR, &_s14SiriKitRuntime17ExecutionOverride_pMd, &_s14SiriKitRuntime17ExecutionOverride_pMR);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMR, &_s14SiriKitRuntime16PreExecutionRule_pMd, &_s14SiriKitRuntime16PreExecutionRule_pMR);
}

void *specialized Array.append<A>(contentsOf:)(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result[2];
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v9 <= v7[3] >> 1)
  {
    if (v14[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v18 = v8 + v6;
  }

  else
  {
    v18 = v8;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v18, 1, v7, a2, a3, a4, a5);
  v7 = result;
  if (!v14[2])
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v15 = v7[2];
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    v7[2] = v17;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with take of RemoteConversationOrReformedInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMd, &_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ConversationHandlerLocator.ScoredHandler(0);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v27 = &v24 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = a3 + 32;
  v24 = v13;
  v18 = (v13 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v25 = v10;
  v26 = a2;
  while (1)
  {
    a1(v17, v14);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMd, &_s14SiriKitRuntime26ConversationHandlerLocatorC06ScoredE0VSgMR);
    }

    else
    {
      v20 = v27;
      outlined init with take of StringKeyedValue(v9, v27, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      outlined init with take of StringKeyedValue(v20, v28, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMR, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VGMR, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      }

      v19[2] = v22 + 1;
      outlined init with take of StringKeyedValue(v28, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v10 = v25;
    }

    v17 += 40;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t outlined init with copy of RemoteConversationOrReformedInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ConversationHandlerLocator.ScoredHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationHandlerLocator.ScoredHandler;
  if (!type metadata singleton initialization cache for ConversationHandlerLocator.ScoredHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of RemoteConversationOrReformedInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ConversationSearchResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationSearchResult;
  if (!type metadata singleton initialization cache for ConversationSearchResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #4 in ConversationHandlerLocator.allHandlers(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v12);
  (*(v7 + 16))(v9, a2, v6);
  return ConversationHandlerLocator.ScoredHandler.init(handler:input:)(v12, v9, a3);
}

uint64_t destroy for ConversationSearchResult(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for Input();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = *(a2 + 28);
  v8 = type metadata accessor for UUID();
  v11 = *(v8 - 8);
  result = (*(v11 + 48))(a1 + v7, 1, v8);
  if (!result)
  {
    v10 = *(v11 + 8);

    return v10(a1 + v7, v8);
  }

  return result;
}

uint64_t ConversationHandlerLocator.ScoredHandler.init(handler:input:)@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for Input();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ConversationHandlerLocator.ScoredHandler(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 48))(a2, v12, v13);
  if (v15)
  {
    v16 = a2;
    v46 = v8;
    v47 = v9;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(a1, v51);
    v18 = v48;
    v19 = a2;
    v20 = v5;
    (*(v6 + 16))(v48, v19, v5);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315394;
      v45 = v16;
      v26 = v52;
      v27 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      v28 = *(v27 + 16);
      v44 = v22;
      v29 = v28(v26, v27);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v50);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2080;
      lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v6 + 8);
      v36(v23, v20);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v50);

      *(v24 + 14) = v37;
      _os_log_impl(&dword_1DC659000, v21, v44, "Dropping handler %s as it does not support %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);

      v36(v45, v20);
    }

    else
    {

      v40 = *(v6 + 8);
      v40(v16, v5);
      v40(v18, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
    }

    v41 = v46;
    v42 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v42 + 56))(v49, 1, 1, v41);
  }

  else
  {
    *v11 = v14;
    outlined init with copy of ReferenceResolutionClientProtocol(a1, (v11 + 1));
    (*(v6 + 32))(v11 + *(v8 + 24), a2, v5);
    v38 = v49;
    outlined init with take of ConversationHandlerLocator.ScoredHandler(v11, v49, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    (*(v9 + 56))(v38, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t RemoteFlowPluginBundleConversationHandler.affinityScore(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v61 = v6;
  v62 = v9;
  v14 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v14, static Signposter.executor);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = static Log.executor;
  OSSignpostID.init(log:)();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v68 = v17;
  *v16 = 136315138;
  v18 = v2[3];
  v59 = v2[2];
  v60 = v18;
  *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v18, &v68);
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  v21 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v19, v20, v21, "RunAffinityScorer", "AffinityScorer=%s", v16, 0xCu);
  v22 = v2[10];
  v23 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v22);
  v63 = a1;
  v24 = AffinityScorer.score(for:)(a1, v22, v23);
  v26 = v25;
  v66 = v24;
  v27 = static os_signpost_type_t.end.getter();
  v28 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v19, v27, v28, "RunAffinityScorer", "AffinityScorer=%s", v16, 0xCu);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  MEMORY[0x1E12A2F50](v17, -1, -1);
  MEMORY[0x1E12A2F50](v16, -1, -1);
  (*(v11 + 8))(v13, v10);
  if (v26)
  {
    v30 = v64;
    v29 = v65;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);
    v32 = v61;
    (*(v30 + 16))(v61, v63, v29);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v33, v34))
    {

      (*(v30 + 8))(v32, v29);
      return v66;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v68);
    *(v35 + 12) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v32;
    v40 = v39;
    (*(v30 + 8))(v38, v29);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, &v68);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1DC659000, v33, v34, "[%s] Missing affinity for input %s", v35, 0x16u);
    swift_arrayDestroy();
    v42 = v36;
  }

  else
  {
    v44 = v64;
    v43 = v65;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = v62;
    (*(v44 + 16))(v62, v63, v43);

    v33 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v33, v47))
    {

      (*(v44 + 8))(v46, v43);
      return v66;
    }

    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v68 = v48;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v68);
    *(v35 + 12) = 2080;
    v67[0] = specialized Affinity.init(rawValue:)(v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime8AffinityOSgMd, &_s14SiriKitRuntime8AffinityOSgMR);
    v49 = String.init<A>(describing:)();
    v50 = v46;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v68);

    *(v35 + 14) = v52;
    *(v35 + 22) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v44 + 8))(v50, v43);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v68);

    *(v35 + 24) = v56;
    _os_log_impl(&dword_1DC659000, v33, v47, "[%s] Affinity: %s for input %s", v35, 0x20u);
    swift_arrayDestroy();
    v42 = v48;
  }

  MEMORY[0x1E12A2F50](v42, -1, -1);
  MEMORY[0x1E12A2F50](v35, -1, -1);

  return v66;
}

uint64_t AffinityScorer.score(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v6 = specialized logAction<A>(label:_:)(v4, v5, partial apply for closure #1 in AffinityScorer.score(for:));
  if (v3)
  {
  }

  else
  {
    v8 = v6;

    return v8;
  }
}

uint64_t destroy for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  v4 = *(a2 + 24);
  v5 = type metadata accessor for Input();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t outlined init with take of RemoteConversationOrReformedInput?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized AffinityScorer.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = UUID.uuidString.getter();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD000000000000013;
}

{
  _StringGuts.grow(_:)(22);

  v0 = UUID.uuidString.getter();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t specialized logAction<A>(label:_:)(uint64_t a1, unint64_t a2, void (*a3)(void **__return_ptr))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
    _os_log_impl(&dword_1DC659000, v7, v8, "==>> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  a3(&v31);
  if (v3)
  {
    v11 = v3;

    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
      *(v15 + 12) = 2080;
      v33 = v3;
      v17 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1DC659000, v13, v14, "<<== %s threw %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }

    v31 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    v14 = v31;
    v21 = v32;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v33);
      *(v24 + 12) = 2080;
      v31 = v14;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1DC659000, v22, v23, "<<== %s -> %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }

  return v14;
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
    _os_log_impl(&dword_1DC659000, v7, v8, "==>> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  a3(&v31);
  if (v3)
  {
    v11 = v3;

    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v31);
      *(v15 + 12) = 2080;
      v33 = v3;
      v17 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1DC659000, v13, v14, "<<== %s threw %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }

    v31 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    v14 = v31;
    v21 = v32;
    swift_bridgeObjectRetain_n();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v33);
      *(v24 + 12) = 2080;
      v31 = v14;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1DC659000, v22, v23, "<<== %s -> %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  return v14;
}

uint64_t RemoteFlowPluginBundleConversationHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AffinityScorer.score(for:loopCheck:) in conformance AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 20));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  type metadata accessor for SiriEnvironment();
  v8 = static SiriEnvironment.default.getter();
  v9 = (*(v7 + 16))(a1, v8, v6, v7);

  return v9;
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(char a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v2, 0);
}

uint64_t partial apply for closure #1 in AffinityScorer.score(for:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1[3] + 32))(v1[5], v1[6], v1[2]);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + 16, &v45, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
  if (v46)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v45, v47);
    v22 = *a1;
    v42 = a5;
    if (v22)
    {
      v23 = *(v22 + 112);
      v40 = *(v22 + 120);
      v41 = v23;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v28 = type metadata accessor for DecisionEngineResponse(0);
    outlined init with copy of ReferenceResolutionClientProtocol?(a1 + *(v28 + 24), v14, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v29 = type metadata accessor for Input();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v14, 1, v29) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v31 = 1;
    }

    else
    {
      Input.parse.getter();
      (*(v30 + 8))(v14, v29);
      v31 = 0;
    }

    v32 = type metadata accessor for Parse();
    (*(*(v32 - 8) + 56))(v21, v31, 1, v32);
    static TaskPriority.background.getter();
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, v18, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol(v47, &v45);
    v34 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v36 = v44;
    v35[4] = v43;
    v35[5] = a3;
    v37 = v42;
    v35[6] = v36;
    v35[7] = v37;
    v38 = v40;
    v35[8] = v41;
    v35[9] = v38;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v18, v35 + v34, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v45, v35 + ((v17 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:), v35);

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v45, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.instrumentation);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "Failed to find DecisionEngineStream for DecisionEngine.", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }
  }
}

uint64_t sub_1DC7337DC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 40, v2 | 7);
}

uint64_t Input.parseHypothesisId.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_UserParse();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for USOParse();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69D0168])
  {
    (*(v6 + 96))(v8, v5);
    (*(v10 + 32))(v12, v8, v9);
    USOParse.userParse.getter();
    v13 = v18;
    Siri_Nlu_External_UserParse.id.getter();
    (*(v2 + 8))(v4, v1);
    (*(v10 + 8))(v12, v9);
    v14 = 0;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v14 = 1;
    v13 = v18;
  }

  v15 = type metadata accessor for Siri_Nlu_External_UUID();
  return (*(*(v15 - 8) + 56))(v13, v14, 1, v15);
}

uint64_t specialized MessagesAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for UsoEntity_common_MessageMode.DefinedValues();
  v57 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v54 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v55);
  v3 = &v49 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v49 - v10;
  v11 = type metadata accessor for USOParse();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Parse();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v16 + 88))(v18, v15) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "MessagesAffinityScorer returning default because this is not a usoParse", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    return 2;
  }

  (*(v16 + 96))(v18, v15);
  (*(v12 + 32))(v14, v18, v11);
  v19 = specialized MessagesAffinityScorer.extractCommonMessageFromUsoParse(usoParse:)();
  v52 = v12;
  v53 = v11;
  v50 = v19;
  v51 = v14;
  if (v19 && (, v20 = dispatch thunk of UsoEntity_common_Message.mode.getter(), , v20))
  {
    v21 = v58;
    dispatch thunk of UsoEntity_common_MessageMode.definedValue.getter();

    v22 = v57;
  }

  else
  {
    v22 = v57;
    v21 = v58;
    (*(v57 + 56))(v58, 1, 1, v0);
  }

  (*(v22 + 104))(v8, *MEMORY[0x1E69D1D40], v0);
  (*(v22 + 56))(v8, 0, 1, v0);
  v28 = *(v55 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v21, v3, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v8, &v3[v28], &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
  v29 = *(v22 + 48);
  v30 = v29(v3, 1, v0);
  v31 = v56;
  if (v30 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    v32 = v29(&v3[v28], 1, v0);
    v33 = v52;
    v34 = v50;
    if (v32 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
LABEL_26:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.executor);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1DC659000, v46, v47, "MessagesAffinityScorer override to .low because this a mail task", v48, 2u);
        MEMORY[0x1E12A2F50](v48, -1, -1);
      }

      (*(v33 + 8))(v51, v53);
      return 1;
    }
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v3, v56, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    if (v29(&v3[v28], 1, v0) != 1)
    {
      v41 = &v3[v28];
      v42 = v54;
      (*(v22 + 32))(v54, v41, v0);
      lazy protocol witness table accessor for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues();
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v22 + 8);
      v44(v42, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
      v44(v31, v0);
      outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
      v33 = v52;
      v34 = v50;
      if (v43)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSgMR);
    (*(v22 + 8))(v31, v0);
    v33 = v52;
    v34 = v50;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology28UsoEntity_common_MessageModeC13DefinedValuesOSg_AFtMR);
LABEL_17:
  if (v34)
  {

    dispatch thunk of UsoEntity_common_Message.subject.getter();
    v36 = v35;

    if (v36)
    {

      goto LABEL_26;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1DC659000, v38, v39, "MessagesAffinityScorer override to .high because this a messaging task", v40, 2u);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  (*(v33 + 8))(v51, v53);
  return 3;
}

uint64_t partial apply for closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(a1, v11, v3, v4, v5, v6, v7, v8);
}

unint64_t specialized Affinity.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Affinity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v14;
  *(v8 + 160) = v13;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 120) = a4;
  type metadata accessor for String.Encoding();
  *(v8 + 184) = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR) - 8);
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 + 64);
  *(v8 + 208) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR) - 8);
  *(v8 + 216) = v10;
  *(v8 + 224) = *(v10 + 64);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:), 0, 0);
}

uint64_t closure #1 in DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)()
{
  v69 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v67 = v0[15];
  v68 = v3;

  MEMORY[0x1E12A1580](58, 0xE100000000000000);
  MEMORY[0x1E12A1580](v2, v1);
  v5 = v67;
  v4 = v68;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.instrumentation);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v66 = v67;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v67 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v67);
    _os_log_impl(&dword_1DC659000, v7, v8, "Creating DecisionEngineResponse donation to Curare for interactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = v0[31];
  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  strcpy((inited + 32), "flowHandlerId");
  *(inited + 46) = -4864;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v12;
  *(inited + 48) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 56) = v16;

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime12AnyEncodableVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_14SiriKitRuntime12AnyEncodableVtMd, &_sSS_14SiriKitRuntime12AnyEncodableVtMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13, v11, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v18 = type metadata accessor for Parse();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v11, 1, v18);
  v22 = v0[31];
  if (v21 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[31], &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    v65 = v0;
    v23 = (*(v19 + 88))(v0[31], v18);
    v24 = *MEMORY[0x1E69D0158];
    (*(v19 + 8))(v22, v18);
    v25 = v23 == v24;
    v0 = v65;
    if (v25)
    {
      v26 = v65[30];
      v27 = v65[27];
      outlined init with copy of ReferenceResolutionClientProtocol?(v65[21], v26, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
      v28 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v29 = swift_allocObject();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, v29 + v28, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v17;
      v31 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
      v32 = v29;
      goto LABEL_14;
    }
  }

  v33 = v0[29];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[21], v33, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v34 = v20(v33, 1, v18);
  v35 = v0[29];
  if (v34 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[29], &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v36 = 1;
  }

  else
  {
    Parse.asCamParse()(v0[26]);
    (*(v19 + 8))(v35, v18);
    v36 = 0;
  }

  v37 = v0[26];
  v38 = v0[24];
  v39 = type metadata accessor for CamParse();
  (*(*(v39 - 8) + 56))(v37, v36, 1, v39);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = swift_allocObject();
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v37, v41 + v40, &_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v17;
  v31 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v32 = v41;
LABEL_14:
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v32, 0x6573726170, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v42 = v67;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[13] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14SiriKitRuntime12AnyEncodableVGMd, &_sSDySS14SiriKitRuntime12AnyEncodableVGMR);
  lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v50 = v49;

  static String.Encoding.utf8.getter();
  v51 = String.init(data:encoding:)();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = v0[22];
    v57 = v55[3];
    v56 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v57);
    (*(v56 + 8))(v53, v54, v66, v4, v57, v56);

    v43 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v58))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67 = v61;
      *v60 = 136315138;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v4, &v67);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_1DC659000, v43, v58, "Donated DecisionEngineResponse to Curare for interactionId:%s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
      outlined consume of Data._Representation(v48, v50);

      goto LABEL_24;
    }

    outlined consume of Data._Representation(v48, v50);
  }

  else
  {
    outlined consume of Data._Representation(v48, v50);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136315138;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v4, &v67);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_1DC659000, v43, v44, "Failed to convert DecisionEngineResponse donation to JSON for interactionId:%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v45, -1, -1);

      goto LABEL_24;
    }
  }

LABEL_24:

  v63 = v0[1];

  return v63();
}

uint64_t sub_1DC735258()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t Affinity.debugDescription.getter(unsigned __int8 a1)
{
  v1 = 0x7974696E69666641;
  v2 = 0xD000000000000011;
  if (a1 == 3)
  {
    v2 = 0x7974696E69666641;
  }

  if (a1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = v2;
  }

  if (!a1)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime12AnyEncodableVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with take of ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DC73552C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Input();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined init with take of StringKeyedValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DC735A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Input();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0VG_10Foundation4UUIDV4uuid_AJ06scoredH0ts5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for ConversationHandlerLocator.ScoredHandler(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC735DC8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 376) = a7;
  *(v8 + 384) = v7;
  *(v8 + 360) = a5;
  *(v8 + 368) = a6;
  *(v8 + 344) = a3;
  *(v8 + 352) = a4;
  *(v8 + 1605) = a2;
  *(v8 + 336) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  *(v8 + 392) = swift_task_alloc();
  v9 = type metadata accessor for CorrectionsDirectInvocation();
  *(v8 + 400) = v9;
  *(v8 + 408) = *(v9 - 8);
  *(v8 + 416) = swift_task_alloc();
  v10 = type metadata accessor for CorrectionsContext();
  *(v8 + 424) = v10;
  *(v8 + 432) = *(v10 - 8);
  *(v8 + 440) = swift_task_alloc();
  v11 = type metadata accessor for Parse();
  *(v8 + 448) = v11;
  *(v8 + 456) = *(v11 - 8);
  *(v8 + 464) = swift_task_alloc();
  v12 = type metadata accessor for USOParse();
  *(v8 + 472) = v12;
  *(v8 + 480) = *(v12 - 8);
  *(v8 + 488) = swift_task_alloc();
  v13 = type metadata accessor for Input();
  *(v8 + 496) = v13;
  *(v8 + 504) = *(v13 - 8);
  *(v8 + 512) = swift_task_alloc();
  v14 = type metadata accessor for PluginAction();
  *(v8 + 520) = v14;
  *(v8 + 528) = *(v14 - 8);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  updated = type metadata accessor for ContextUpdateScope();
  *(v8 + 552) = updated;
  *(v8 + 560) = *(updated - 8);
  *(v8 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *(v8 + 592) = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  *(v8 + 632) = v16;
  *(v8 + 640) = *(v16 - 8);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  *(v8 + 680) = swift_task_alloc();
  v17 = type metadata accessor for DecisionEngineResponse(0);
  *(v8 + 688) = v17;
  *(v8 + 696) = *(v17 - 8);
  *(v8 + 704) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v8 + 712) = v18;
  *(v8 + 720) = *(v18 - 8);
  *(v8 + 728) = swift_task_alloc();
  v19 = type metadata accessor for ExecutionLocation();
  *(v8 + 736) = v19;
  *(v8 + 744) = *(v19 - 8);
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  *(v8 + 768) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  *(v8 + 776) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  *(v8 + 784) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  *(v8 + 792) = swift_task_alloc();
  v20 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  *(v8 + 800) = v20;
  *(v8 + 808) = *(v20 - 8);
  *(v8 + 816) = swift_task_alloc();
  v21 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  *(v8 + 824) = v21;
  *(v8 + 832) = *(v21 - 8);
  *(v8 + 840) = swift_task_alloc();
  v22 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  *(v8 + 848) = v22;
  *(v8 + 856) = *(v22 - 8);
  *(v8 + 864) = swift_task_alloc();
  v23 = type metadata accessor for SiriXRedirectContext();
  *(v8 + 872) = v23;
  *(v8 + 880) = *(v23 - 8);
  *(v8 + 888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  *(v8 + 896) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  *(v8 + 904) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v24 = type metadata accessor for FlowUnhandledReason();
  *(v8 + 936) = v24;
  *(v8 + 944) = *(v24 - 8);
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  v25 = type metadata accessor for CancellationError();
  *(v8 + 984) = v25;
  *(v8 + 992) = *(v25 - 8);
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = type metadata accessor for ConversationCommitResult(0);
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  v26 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v8 + 1040) = v26;
  *(v8 + 1048) = *(v26 - 8);
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  *(v8 + 1104) = swift_task_alloc();
  *(v8 + 1112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = static MessageBusActor.shared;
  *(v8 + 1184) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v27, 0);
}

uint64_t closure #5 in ConversationHandlerLocator.allHandlers(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR) + 48);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  return outlined init with copy of RemoteConversationTurnData(a1, a3 + v6, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
}

uint64_t protocol witness for DecisionMaking.commitCorrections() in conformance DecisionEngine()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for DecisionMaking.commitCorrections() in conformance DecisionEngine, v2, 0);
}

{
  CorrectionsService.commit()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t initializeWithCopy for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  (**(v6 - 8))(a1 + 8, a2 + 8);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMR, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x1E69D1790], MEMORY[0x1E69D1790]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR, MEMORY[0x1E69D0188], MEMORY[0x1E69D0188]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMR, type metadata accessor for ParseUserDataAttachment, type metadata accessor for ParseUserDataAttachment);
}

Swift::Void __swiftcall CorrectionsService.commit()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsService] Commit to clear context inside CorrectionsEngine", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  (*(v7 + 32))(v6, v7);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4, a5);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t destroy for CachedPluginCatalog(void *a1)
{
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMR, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x1E69D2828]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RRCandidate();
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v6;
      }

      v8 = *(type metadata accessor for RRCandidate() - 8);
      v10[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10[1] = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v9, v11, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1, v4);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AFServiceDeviceContext();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v41 = -v20;
    v42 = v19;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v19 + v20 * a3;
    v44 = v8;
    v24 = v46;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v47 = v22;
    while (1)
    {
      v25 = v50;
      outlined init with copy of ReferenceResolutionClientProtocol?(v23, v50, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v26 = v51;
      outlined init with copy of ReferenceResolutionClientProtocol?(v21, v51, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v27 = v45;
      outlined init with copy of ReferenceResolutionClientProtocol?(v25, v45, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v28 = *(v8 + 48);
      v49 = *(v27 + v28);
      outlined destroy of ConversationHandlerLocator.ScoredHandler(v27 + v28);
      outlined init with copy of ReferenceResolutionClientProtocol?(v26, v24, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v29 = *(v8 + 48);
      v48 = *(v24 + v29);
      outlined destroy of ConversationHandlerLocator.ScoredHandler(v24 + v29);
      v30 = type metadata accessor for UUID();
      v31 = *(*(v30 - 8) + 8);
      v31(v24, v30);
      v31(v27, v30);
      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v8 = v44;
      if (v48 >= v49)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = v39 + v35;
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v23, v43, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v32, v21, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v21 += v41;
      v23 += v41;
      if (__CFADD__(v47++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 proximity];
      v13 = [v11 proximity];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(uint64_t a1)
{
  v2 = *(*v1 + 488);
  *(*v1 + 536) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:), v2, 0);
}

uint64_t protocol witness for ConversationHandler.id.getter in conformance RemoteFlowPluginBundleConversationHandler()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for UserInputResult(0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v5[21] = swift_task_alloc();
  v6 = type metadata accessor for Input();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for ConversationSearchResult(0);
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v5[33] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:), v8, 0);
}

uint64_t protocol witness for Waitable.wait() in conformance ConcurrentTaskPool()
{
  v4 = (*(**v0 + 136) + **(**v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v4();
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  if (a2)
  {
    aBlock[0] = a2;
    v15 = a2;
    CheckedContinuation.resume(throwing:)();
  }

  if (a1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v27 = a4;
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "Remote Conversation does not have turn data for the current request. Will serialize the TurnData again.", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v21 = RemoteConversationTurnData.xpcRepresentation.getter();
  ObjectType = swift_getObjectType();
  v23 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, v28);
  (*(v12 + 16))(v14, a3, v11);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v24, v14, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_181;
  v26 = _Block_copy(aBlock);

  [v27 startTurnWithTurnData:v21 bridge:v23 reply:v26];
  _Block_release(v26);

  return swift_unknownObjectRelease();
}

uint64_t RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v7[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:), v8, 0);
}

uint64_t protocol witness for ConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:) in conformance RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(a1, a2, a3, a4, a5, a6);
}

uint64_t RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  v7 = v0[12];
  v8 = v0[6];

  return RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(v8, v3, v7);
}

{
  if (v0[15])
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[5];

    return RemoteConversationClient.startTurn(turnData:bridge:)(v4, v2, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  else
  {
    v4 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4[17] = v5;
  v4[18] = *(v5 + 64);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:), v6, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 96);
  if (v2)
  {

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = v0[16];
    swift_beginAccess();
    v6 = *(v5 + 104);
    v0[22] = v6;
    if (v6)
    {

      v7 = swift_task_alloc();
      v0[23] = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v7 = v0;
      v7[1] = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
      v10 = MEMORY[0x1E69E7288];
      v11 = v0 + 12;
    }

    else
    {
      v13 = v0[19];
      v12 = v0[20];
      v14 = v0[17];
      v16 = v0[15];
      v15 = v0[16];
      v17 = v0[14];
      v24 = v0[13];
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
      outlined init with copy of UUID?(v16, v13);
      v19 = static MessageBusActor.shared;
      v20 = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
      v21 = (*(v14 + 80) + 56) & ~*(v14 + 80);
      v22 = swift_allocObject();
      v22[2] = v19;
      v22[3] = v20;
      v22[4] = v15;
      v22[5] = v24;
      v22[6] = v17;
      outlined init with take of UUID?(v13, v22 + v21);

      v6 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime24RemoteConversationClientCSg_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:), v22);
      v0[25] = v6;
      *(v5 + 104) = v6;

      v23 = swift_task_alloc();
      v0[26] = v23;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v23 = v0;
      v23[1] = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
      v10 = MEMORY[0x1E69E7288];
      v11 = v0 + 11;
    }

    return MEMORY[0x1EEE6DA10](v11, v6, v8, v9, v10);
  }
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  else
  {
    v4 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  else
  {
    v4 = RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC739DB0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnection<A>(execute:) in conformance SharedFlowPluginConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(a1, a2, a3, a4);
}

uint64_t SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for InterruptibleTaskResult(0, a4, v7, v8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v5[17] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v10, 0);
}

uint64_t partial apply for closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[11] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v7[16] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:), v8, 0);
}

uint64_t SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v8[18] = v9;
  v8[19] = *(v9 + 64);
  v8[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v8[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v10, 0);
}

uint64_t closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)()
{
  v1 = v0[12];
  v2 = v1[5];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];

  return SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(v3, v4, v5, v2, v9, v7, v8);
}

{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 96);
    swift_beginAccess();
    *(v3 + 96) = v2;

    swift_beginAccess();
    *(v3 + 104) = 0;
  }

  **(v0 + 88) = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  outlined init with copy of UUID?(v0[16], v1);
  v9 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v10 = swift_allocObject();
  v0[22] = v10;
  v10[2] = v8;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v3;
  outlined init with take of UUID?(v1, v10 + v9);

  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(&async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v10);
}

{
  v1 = *(v0 + 192);
  if (!v1)
  {

    if (one-time initialization token for executor == -1)
    {
LABEL_6:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DC659000, v16, v17, "Error loading remote flow plugin: No result from loadFlowPlugin(bundleId:)", v18, 2u);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      v12 = 0;
      goto LABEL_9;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  v2 = *(v0 + 136);
  v3 = *(v2 + 40);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = *(v0 + 200);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  *(v2 + 40) = v3 + 1;
  v25 = v3;
  v9 = type metadata accessor for SharedFlowPluginConnection();
  v10 = swift_allocObject();
  *(v0 + 216) = v10;
  v10[6] = v1;
  v10[7] = v4;
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v6;
  v10[5] = v5;
  v10[8] = 0;
  v10[9] = v2;
  swift_unknownObjectRetain_n();

  _StringGuts.grow(_:)(30);

  MEMORY[0x1E12A1580](v8, v7);
  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  swift_unknownObjectRelease();
  type metadata accessor for InterruptibleTaskManager();
  v11 = swift_allocObject();
  v11[4] = MEMORY[0x1E69E7CC8];
  v11[5] = 0;
  v11[2] = 0xD00000000000001BLL;
  v11[3] = 0x80000001DCA881C0;
  v10[10] = v25;
  v10[11] = v11;
  *(v0 + 40) = v9;
  *(v0 + 48) = &protocol witness table for SharedFlowPluginConnection;
  *(v0 + 16) = v10;
  type metadata accessor for RemoteConversationClient();
  v12 = swift_allocObject();
  *(v0 + 224) = v12;

  swift_defaultActor_initialize();
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = 2;
  *(v12 + 112) = v8;
  *(v12 + 120) = v7;
  outlined init with take of NSExtensionProtocol((v0 + 16), v12 + 128);
  v13 = *(**(v2 + 32) + 112);

  v13(v14, v25);

  if (*(v2 + 16))
  {
    swift_unknownObjectRelease();

LABEL_9:

    v19 = *(v0 + 8);

    return v19(v12);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "Connection invalidated while loading flow plugin, invalidating plugin connection", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v12, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[28];
  v2 = v1[19];
  v0[29] = v2;
  v3 = v1[20];
  v0[30] = v3;
  v0[31] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[32] = *(v3 + 24);
  v0[33] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v4, 0);
}

{
  v1 = *(v0 + 168);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 240));

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v1, 0);
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t partial apply for closure #1 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v6, v7);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[31] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v4, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.commit(bridge:)(a1, a2, a3, v9, v8);
}

uint64_t closure #1 in RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.commit(bridge:), 0, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.commit(bridge:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  ObjectType = swift_getObjectType();
  v13 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.commit(bridge:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_116;
  v16 = _Block_copy(aBlock);

  [a2 commitWithBridge:v13 reply:v16];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

void specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  specialized ManagedContinuation.updateState(continuation:result:)(v8, 0, 0, 255);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v12 = swift_allocError();
    CancellationError.init()();
    v11(v8, 1, 1, v9);
    v13 = v12;
    specialized ManagedContinuation.updateState(continuation:result:)(v8, v12, 0, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  }

  else
  {
    a3(a2);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v14 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  specialized ManagedContinuation.updateState(continuation:result:)(v8, 0, 255);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v12 = swift_allocError();
    CancellationError.init()();
    v11(v8, 1, 1, v9);
    v13 = v12;
    specialized ManagedContinuation.updateState(continuation:result:)(v8, v12, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  }

  else
  {
    a3(a2);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v14 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  specialized ManagedContinuation.updateState(continuation:result:)(v8, 0, 255);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v12 = swift_allocError();
    CancellationError.init()();
    v11(v8, 1, 1, v9);
    v13 = v12;
    specialized ManagedContinuation.updateState(continuation:result:)(v8, v12, 1);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  }

  else
  {
    a3(a2);
  }
}

uint64_t specialized ManagedContinuation.updateState(continuation:result:)(char *a1, uint64_t a2, unsigned int (*a3)(char *, char *, uint64_t), char a4)
{
  v52 = a2;
  v53 = a3;
  v56 = a1;
  v6 = ~a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v54 = v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  v57 = *(*v4 + 104);
  [*(v4 + v57) lock];
  if (v6)
  {
    v27 = v4 + *(*v4 + 96);
    swift_beginAccess();
    if (*(v27 + 16) == 255)
    {
      v28 = v52;
      v29 = v53;
      *v27 = v52;
      *(v27 + 8) = v29;
      *(v27 + 16) = a4;
      outlined copy of Result<RemoteConversation?, Error>(v28, v29, a4 & 1);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v56, v15, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  v30 = *(v17 + 48);
  if (v30(v15, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  }

  else
  {
    v53 = v30;
    v56 = v21;
    v31 = v12;
    v32 = *(v17 + 32);
    v32(v26, v15, v16);
    v32(v31, v26, v16);
    v30 = v53;
    (*(v17 + 56))(v31, 0, 1, v16);
    v33 = *(*v4 + 88);
    swift_beginAccess();
    v34 = v4 + v33;
    v12 = v31;
    v21 = v56;
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v12, v34, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
    swift_endAccess();
  }

  v35 = *(*v4 + 88);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v35, v9, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  if (v30(v9, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
LABEL_12:
    v50 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    goto LABEL_13;
  }

  v36 = *(v17 + 32);
  v36(v21, v9, v16);
  v37 = v4 + *(*v4 + 96);
  swift_beginAccess();
  v38 = v21;
  v39 = *(v37 + 16);
  if (v39 == 255)
  {
    (*(v17 + 8))(v38, v16);
    goto LABEL_12;
  }

  v53 = v36;
  v40 = *v37;
  v41 = *(v37 + 8);
  v42 = *(v17 + 56);
  v56 = v38;
  v42(v12, 1, 1, v16);
  swift_beginAccess();
  v43 = v39 & 1;
  outlined copy of Result<RemoteConversation?, Error>(v40, v41, v39 & 1);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v12, v4 + v35, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  swift_endAccess();
  v44 = v55;
  v45 = v53;
  v53(v55, v56, v16);
  v58 = v43;
  v46 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v47 = (v54 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v45((v48 + v46), v44, v16);
  v49 = v48 + v47;
  *v49 = v40;
  *(v49 + 8) = v41;
  *(v49 + 16) = v58;
  v50 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  v50([*(v4 + v57) unlock]);
}

uint64_t sub_1DC73CADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  outlined consume of Result<RemoteConversation?, Error>(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 17, v3 | 7);
}

uint64_t partial apply for closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 48) = v10;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pSgMd, &_s14SiriKitRuntime18RemoteConversation_pSgMR);
  *v4 = v0;
  v4[1] = closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD00000000000004ALL, 0x80000001DCA88740, partial apply for closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v3, v5);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), 0, 0);
}

void closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v35 = a2;
  v33 = a1;
  v31 = a7;
  v32 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - v20;
  v34 = MEMORY[0x1E12A1410](a3, a4, v19);
  v22 = MEMORY[0x1E12A1410](a5, a6);
  if (a8)
  {
    a8 = MEMORY[0x1E12A1410](v31, a8);
  }

  outlined init with copy of UUID?(v32, v21);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  isa = 0;
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v21, v23);
  }

  (*(v15 + 16))(v17, v33, v14);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = swift_allocObject();
  (*(v15 + 32))(v27 + v26, v17, v14);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed RemoteConversationXPC?) -> ();
  aBlock[3] = &block_descriptor_26;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  [v35 loadFlowPluginWithBundleId:v34 bundlePath:v22 rcId:a8 hypothesisId:isa reply:v28];
  _Block_release(v28);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v32 = a6;
  v33 = a7;
  v10 = v7;
  v34 = a1;
  v31 = type metadata accessor for UUID();
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v23 >= v21 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()(a4, a5, v32, v33);
    goto LABEL_9;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a3 & 1, a4, a5, v32, v33);
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v24;
LABEL_9:
  v26 = v34;
  v27 = *v10;
  if (v22)
  {
    v28 = v27[7];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v26, v28 + *(*(v29 - 8) + 72) * v18, a4, a5);
  }

  else
  {
    (*(v13 + 16))(v15, a2, v31);
    return specialized _NativeDictionary._insert(at:key:value:)(v18, v15, v26, v27, a4, a5);
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v54 = a3;
  v55 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v44 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v49 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v16 + 16))
  {
    v44 = v6;
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v14 + 16);
    v46 = v14;
    v50 = (v14 + 32);
    v25 = result + 64;
    v47 = v16;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v19 << 6);
      v31 = *(v16 + 48);
      v51 = *(v14 + 72);
      v32 = v31 + v51 * v30;
      if (v49)
      {
        (*v50)(v52, v32, v13);
        v33 = *(v16 + 56);
        v34 = *(v48 + 72);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v33 + v34 * v30, v53, v54, v55);
      }

      else
      {
        (*v45)(v52, v32, v13);
        v35 = *(v16 + 56);
        v34 = *(v48 + 72);
        outlined init with copy of ReferenceResolutionClientProtocol?(v35 + v34 * v30, v53, v54, v55);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v50)((*(v18 + 48) + v51 * v26), v52, v13);
      result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v53, *(v18 + 56) + v34 * v26, v54, v55);
      ++*(v18 + 16);
      v14 = v46;
      v16 = v47;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v16 + 32);
    v9 = v44;
    if (v43 >= 64)
    {
      bzero(v20, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v49 = a3;
  v50 = a8;
  v47 = a5;
  v48 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v41 - v20;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginService.swift", 44, 2, "loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)", 60, 2);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = one-time initialization token for shared;

  v42 = a2;
  v43 = a4;
  v44 = a9;
  v45 = v21;
  v25 = v18;
  v26 = a6;
  if (v24 != -1)
  {
    swift_once();
  }

  v27 = static ConversationActor.shared;
  v28 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v29 = (*(v46 + 80) + 56) & ~*(v46 + 80);
  v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v32[2] = v27;
  v32[3] = v28;
  v33 = v47;
  v32[4] = v10;
  v32[5] = v33;
  v32[6] = v26;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v25, v32 + v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = (v32 + v30);
  v35 = v42;
  *v34 = v48;
  v34[1] = v35;
  v36 = (v32 + v31);
  v37 = v43;
  *v36 = v49;
  v36[1] = v37;
  v38 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
  v39 = v44;
  *v38 = v50;
  v38[1] = v39;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v45, &async function pointer to partial apply for closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v32);
}

uint64_t sub_1DC73F920()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a3, v14 + *(*(v15 - 8) + 72) * a1, a5, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 496) = v15;
  *(v8 + 464) = v13;
  *(v8 + 480) = v14;
  *(v8 + 448) = a7;
  *(v8 + 456) = a8;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 424) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v8 + 504) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v8 + 512) = v9;
  *(v8 + 520) = *(v9 - 8);
  *(v8 + 528) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  *(v8 + 536) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v10, 0);
}

uint64_t partial apply for closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v12 = v1[2];
  v11 = v1[3];
  v10 = v1[4];
  v5 = v1[6];
  v9 = v1[5];
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(a1, v12, v11, v10, v9, v5, v1 + v4, v6);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(void), uint64_t a5)
{
  v175 = a5;
  v176 = a4;
  v189 = a3;
  v173 = a2;
  v164 = a1;
  v169 = type metadata accessor for Input();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v146 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Parse();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v144 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v145 = &v144 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v144 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
  MEMORY[0x1EEE9AC00](v149);
  v171 = (&v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v147 = (&v144 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v148 = (&v144 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v153 = &v144 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v157 = &v144 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v158 = &v144 - v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMR);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v154 = &v144 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v167 = &v144 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v165 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v144 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v150 = &v144 - v30;
  v178 = type metadata accessor for UUID();
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v156 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v144 - v33;
  v163 = type metadata accessor for RemoteConversationService.State(0);
  MEMORY[0x1EEE9AC00](v163);
  v35 = (&v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v155 = (&v144 - v37);
  v38 = type metadata accessor for FlowTraceEvent();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (&v144 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for FlowSearchResult();
  v174 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  swift_allocObject();
  v45 = SiriEnvironment.init(parent:)();
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, 255, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, 255, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, 255, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  v180 = v173;
  v181 = v189;
  v179 = v45;
  v173 = v42;
  v46 = v44;
  v47 = v170;
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
  v48 = FlowSearchResult.flow.getter();
  if (v48)
  {
    *v41 = v48;
    (*(v39 + 104))(v41, *MEMORY[0x1E69CFAF0], v38);
    static FlowTrace.trace(event:)();
    (*(v39 + 8))(v41, v38);
  }

  else
  {
    FlowSearchResult.actingFlow.getter();
    if (v187)
    {
      outlined init with take of ReferenceResolutionClientProtocol(&v186, &v188);
      outlined init with copy of ReferenceResolutionClientProtocol(&v188, v41);
      (*(v39 + 104))(v41, *MEMORY[0x1E69CFAB8], v38);
      static FlowTrace.trace(event:)();
      (*(v39 + 8))(v41, v38);
      __swift_destroy_boxed_opaque_existential_1Tm(&v188);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v186, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    }
  }

  FlowSearchResult.actingFlow.getter();
  v49 = v172;
  v50 = v171;
  if (v187)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v186, &v188);
    if (!FlowSearchResult.flow.getter())
    {
      v69 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
      v70 = v164;
      swift_beginAccess();
      v71 = v70 + v69;
      v72 = v155;
      outlined init with copy of RemoteConversationService.State(v71, v155, type metadata accessor for RemoteConversationService.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v161 = v44;
      if (EnumCaseMultiPayload)
      {
        v170 = v47;
        outlined destroy of RemoteConversationService.State(v72, type metadata accessor for RemoteConversationService.State);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        __swift_project_value_buffer(v74, static Logger.executor);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_1DC659000, v75, v76, "canHandle() called while we're not in a turn. This means we cannot keep the provided input in-memory for followup calls to accept().", v77, 2u);
          MEMORY[0x1E12A2F50](v77, -1, -1);
        }

        v78 = v166;
        (*(v177 + 56))(v166, 1, 1, v178);
        v79 = v167;
        (*(v168 + 56))(v167, 1, 1, v169);
        v80 = v165;
        outlined init with copy of ReferenceResolutionClientProtocol?(v78, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
        v82 = objc_allocWithZone(CanHandleResult);
        v82[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
        v82[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
        outlined init with copy of ReferenceResolutionClientProtocol?(v79, &v82[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v80, &v82[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v183.receiver = v82;
        v183.super_class = CanHandleResult;
        v83 = objc_msgSendSuper2(&v183, sel_init);
        outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (v176)(v83);

        __swift_destroy_boxed_opaque_existential_1Tm(&v188);
      }

      else
      {
        v172 = v72[10];
        outlined destroy of ReferenceResolutionClientProtocol?((v72 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v103 = v162;
        UUID.init()();
        v171 = *(v177 + 16);
        v104 = v156;
        v171(v156, v103, v178);
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
        v106 = *(v105 + 48);
        v107 = *(v105 + 64);
        v108 = v168;
        v109 = v150;
        v110 = v169;
        (*(v168 + 16))(v150, v189, v169);
        outlined init with copy of ReferenceResolutionClientProtocol(&v188, v109 + v106);
        *(v109 + v107) = v179;
        (*(*(v105 - 8) + 56))(v109, 0, 1, v105);
        swift_beginAccess();

        specialized Dictionary.subscript.setter(v109, v104);
        swift_endAccess();
        v111 = v166;
        v112 = v178;
        v171(v166, v162, v178);
        (*(v177 + 56))(v111, 0, 1, v112);
        v113 = v167;
        (*(v108 + 56))(v167, 1, 1, v110);
        v114 = v165;
        outlined init with copy of ReferenceResolutionClientProtocol?(v111, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v115 = type metadata accessor for ConversationCanHandleResult(0);
        v116 = objc_allocWithZone(v115);
        v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
        v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
        outlined init with copy of ReferenceResolutionClientProtocol?(v113, &v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v114, &v116[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v182.receiver = v116;
        v182.super_class = v115;
        v117 = objc_msgSendSuper2(&v182, sel_init);
        outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (v176)(v117);

        (*(v177 + 8))(v162, v178);
        __swift_destroy_boxed_opaque_existential_1Tm(&v188);
      }

      return (*(v174 + 8))(v161, v173);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v188);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v186, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  }

  v51 = FlowSearchResult.flow.getter();
  if (v51)
  {
    v155 = v51;
    v52 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
    v53 = v164;
    swift_beginAccess();
    outlined init with copy of RemoteConversationService.State(v53 + v52, v35, type metadata accessor for RemoteConversationService.State);
    v54 = swift_getEnumCaseMultiPayload();
    v170 = v47;
    v161 = v44;
    if (v54)
    {
      outlined destroy of RemoteConversationService.State(v35, type metadata accessor for RemoteConversationService.State);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.executor);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1DC659000, v56, v57, "canHandle() called while we're not in a turn. This means we cannot keep the provided input in-memory for followup calls to accept().", v58, 2u);
        MEMORY[0x1E12A2F50](v58, -1, -1);
      }

      v59 = v166;
      (*(v177 + 56))(v166, 1, 1, v178);
      v60 = v167;
      (*(v168 + 56))(v167, 1, 1, v169);
      v61 = v165;
      outlined init with copy of ReferenceResolutionClientProtocol?(v59, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v62 = type metadata accessor for ConversationCanHandleResult(0);
      v63 = objc_allocWithZone(v62);
      v63[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
      v63[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
      outlined init with copy of ReferenceResolutionClientProtocol?(v60, &v63[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v61, &v63[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v185.receiver = v63;
      v185.super_class = v62;
      v64 = objc_msgSendSuper2(&v185, sel_init);
      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v176)(v64);
    }

    else
    {
      v172 = v35[10];
      outlined destroy of ReferenceResolutionClientProtocol?((v35 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v85 = v162;
      UUID.init()();
      v86 = *(v177 + 16);
      v87 = v156;
      v88 = v85;
      v86(v156, v85, v178);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
      v90 = *(v89 + 48);
      v91 = *(v89 + 64);
      v92 = v168;
      v93 = v153;
      (*(v168 + 16))(v153, v189, v169);
      *(v93 + v90) = v155;
      *(v93 + v91) = v179;
      (*(*(v89 - 8) + 56))(v93, 0, 1, v89);
      swift_beginAccess();

      specialized Dictionary.subscript.setter(v93, v87);
      swift_endAccess();
      v94 = v166;
      v95 = v178;
      v86(v166, v88, v178);
      (*(v177 + 56))(v94, 0, 1, v95);
      v96 = v167;
      (*(v92 + 56))(v167, 1, 1, v169);
      v97 = v165;
      outlined init with copy of ReferenceResolutionClientProtocol?(v94, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v98 = type metadata accessor for ConversationCanHandleResult(0);
      v99 = objc_allocWithZone(v98);
      v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
      v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
      outlined init with copy of ReferenceResolutionClientProtocol?(v96, &v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v99[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v184.receiver = v99;
      v184.super_class = v98;
      v100 = objc_msgSendSuper2(&v184, sel_init);
      outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v176)(v100);

      (*(v177 + 8))(v162, v178);
    }

    return (*(v174 + 8))(v161, v173);
  }

  v65 = v157;
  FlowSearchResult.transformer.getter();
  v66 = type metadata accessor for NamedParseTransformer();
  v67 = *(v66 - 8);
  if ((*(v67 + 48))(v65, 1, v66) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
    v68 = v158;
    (*(v159 + 56))(v158, 1, 1, v160);
  }

  else
  {
    v68 = v158;
    NamedParseTransformer.resolve()();
    (*(v67 + 8))(v65, v66);
    v101 = v159;
    v102 = v160;
    if ((*(v159 + 48))(v68, 1, v160) != 1)
    {
      (*(v101 + 32))(v154, v68, v102);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      __swift_project_value_buffer(v118, static Logger.executor);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_1DC659000, v119, v120, "Conversation wants to reform input", v121, 2u);
        v101 = v159;
        MEMORY[0x1E12A2F50](v121, -1, -1);
      }

      v122 = Transformer.transform.getter();
      Input.parse.getter();
      v122(v49);
      v123 = *(v151 + 8);
      v123(v49, v152);

      if (v47)
      {
        v124 = v147;
        *v147 = v47;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v124 = v147;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v50, v147, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      }

      v125 = v124;
      v126 = v148;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v125, v148, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v127 = *v126;
        v128 = v127;
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = v44;
          v133 = swift_slowAlloc();
          v188 = v133;
          *v131 = 136315138;
          *&v186 = v127;
          v134 = v127;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v135 = String.init<A>(describing:)();
          v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v188);

          *(v131 + 4) = v137;
          v101 = v159;
          _os_log_impl(&dword_1DC659000, v129, v130, "Conversation wants to reform input, but got an error in transformation: %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v133);
          v138 = v133;
          v46 = v132;
          MEMORY[0x1E12A2F50](v138, -1, -1);
          MEMORY[0x1E12A2F50](v131, -1, -1);
        }

        if (one-time initialization token for unsupported != -1)
        {
          swift_once();
        }

        (v176)(static ConversationCanHandleResult.unsupported);
      }

      else
      {
        v189 = v123;
        v139 = v151;
        v140 = v145;
        v141 = v152;
        (*(v151 + 32))(v145, v126, v152);
        (*(v139 + 16))(v144, v140, v141);
        v142 = v146;
        Input.init(parse:)();
        v143 = specialized static ConversationCanHandleResult.reformTo(input:)(v142);
        v176();

        (*(v168 + 8))(v142, v169);
        v189(v140, v141);
      }

      (*(v101 + 8))(v154, v160);
      return (*(v174 + 8))(v46, v173);
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  (v176)(static ConversationCanHandleResult.unsupported);

  return (*(v174 + 8))(v46, v173);
}

uint64_t Conversation.accept(request:)(uint64_t a1)
{
  v2 = v1[40];
  v3 = v1[18];
  v4 = v1[19];
  v1[45] = dispatch thunk of AnyFlow.siriEnvironment.getter();
  SiriEnvironment.update(forRequest:)(v3);
  v1[46] = *(v4 + v2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v5, 0);
}

{
  v26 = static os_signpost_type_t.event.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  v6 = *(v1 + 232);
  v25 = *(v1 + 224);
  v27 = *(v1 + 216);
  v7 = *(v1 + 152);
  v24 = static Log.executor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DCA66060;
  *(v1 + 400) = *(type metadata accessor for SiriRequest(0) + 20);
  Input.identifier.getter();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v2 + 8))(v3, v5);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v26, &dword_1DC659000, v24, "user-input", 10, 2, v4, "id=%{public}s", 13, 2, v8);

  (*(v6 + 8))(v4, v25);
  v12 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v1 + 272) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v7 + v12, v27, type metadata accessor for Conversation.State);
  Conversation.State.assertReady(function:)("accept(request:)", 16, 2);
  v13 = *(v1 + 192);
  v14 = *(v1 + 248);
  v15 = *(v1 + 256);
  v16 = *(v1 + 144);
  v17 = *(v1 + 152);
  outlined destroy of Conversation.State(*(v1 + 216), type metadata accessor for Conversation.State);
  v19 = *v16;
  v18 = v16[1];
  v20 = (v17 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  *v20 = v19;
  v20[1] = v18;

  Input.identifier.getter();
  (*(v15 + 56))(v13, 0, 1, v14);
  v21 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v13, v17 + v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  *(v1 + 280) = SiriEnvironment.callState.getter();
  v28 = (*MEMORY[0x1E69D0088] + MEMORY[0x1E69D0088]);
  v22 = swift_task_alloc();
  *(v1 + 288) = v22;
  *v22 = v1;
  v22[1] = Conversation.accept(request:);

  return v28();
}

{
  v2 = *(*v1 + 152);
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v2, 0);
}

uint64_t SiriEnvironment.update(forRequest:)(uint64_t a1)
{
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v113 - v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  MEMORY[0x1EEE9AC00](v114);
  v113[1] = v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v127 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v113 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v123 = v113 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = v113 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v113 - v17;
  v18 = type metadata accessor for ResponseMode();
  v117 = *(v18 - 8);
  v118 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for SiriRequest(0);
  MEMORY[0x1EEE9AC00](v132);
  v129 = v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v122 = v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v121 = v113 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v113 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v113 - v30;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.executor);
  outlined init with copy of Conversation.State(a1, v31, type metadata accessor for SiriRequest);
  v130 = a1;
  outlined init with copy of Conversation.State(a1, v28, type metadata accessor for SiriRequest);

  v131 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v128 = v1;
  v125 = v9;
  v126 = v14;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    v133[0] = v113[0];
    *v37 = 136315650;
    v38 = ObjectIdentifier.debugDescription.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v133);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v41 = ObjectIdentifier.debugDescription.getter();
    v43 = v42;
    outlined destroy of Conversation.State(v31, type metadata accessor for SiriRequest);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v133);

    *(v37 + 14) = v44;
    *(v37 + 22) = 2080;
    CurrentRequest.responseMode.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550], MEMORY[0x1E69D01A8]);
    v45 = v118;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v117 + 8))(v20, v45);
    outlined destroy of Conversation.State(v28, type metadata accessor for SiriRequest);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v133);

    *(v37 + 24) = v49;
    _os_log_impl(&dword_1DC659000, v34, v35, "Setting environment %s currentRequest to %s with responseMode %s", v37, 0x20u);
    v50 = v113[0];
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v50, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v31, type metadata accessor for SiriRequest);
    outlined destroy of Conversation.State(v28, type metadata accessor for SiriRequest);
  }

  v51 = v130;
  v52 = v121;
  outlined init with copy of Conversation.State(v130, v121, type metadata accessor for SiriRequest);
  v53 = v122;
  outlined init with copy of Conversation.State(v51, v122, type metadata accessor for SiriRequest);
  v54 = v129;
  outlined init with copy of Conversation.State(v51, v129, type metadata accessor for SiriRequest);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v133[0] = v58;
    *v57 = 136315650;
    v59 = CurrentRequest.executionRequestId.getter();
    if (v60)
    {
      v61 = v59;
    }

    else
    {
      v61 = 7104878;
    }

    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0xE300000000000000;
    }

    outlined destroy of Conversation.State(v52, type metadata accessor for SiriRequest);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v133);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2080;
    v64 = CurrentRequest.rootRequestId.getter();
    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 7104878;
    }

    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0xE300000000000000;
    }

    outlined destroy of Conversation.State(v53, type metadata accessor for SiriRequest);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v133);

    *(v57 + 14) = v68;
    *(v57 + 22) = 2080;
    v69 = v129;
    v70 = CurrentRequest.sessionId.getter();
    if (v71)
    {
      v72 = v70;
    }

    else
    {
      v72 = 7104878;
    }

    if (v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0xE300000000000000;
    }

    v51 = v130;
    outlined destroy of Conversation.State(v69, type metadata accessor for SiriRequest);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v133);

    *(v57 + 24) = v74;
    _os_log_impl(&dword_1DC659000, v55, v56, "updating environment with SiriRequest having executionRequestId - %s, rootRequestId - %s, sessionId - %s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v58, -1, -1);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v52, type metadata accessor for SiriRequest);
    outlined destroy of Conversation.State(v53, type metadata accessor for SiriRequest);
    outlined destroy of Conversation.State(v54, type metadata accessor for SiriRequest);
  }

  v75 = v124;
  SiriEnvironment.currentRequest.getter();
  v76 = CurrentRequest.overrideProperties.getter();

  if (v76)
  {
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v77, v78, "Applying overrides on request", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    static CurrentRequestOverrides.applyOverrides(on:overrides:)();
  }

  SiriEnvironment.currentRequest.setter();

  SiriEnvironment.sessionConfigurationProvider.setter();

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v133[0] = v83;
    *v82 = 136315138;
    SiriEnvironment.sessionConfigurationProvider.getter();
    SessionConfigurationProvider.sessionConfiguration.getter();

    v84 = String.init<A>(describing:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v133);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_1DC659000, v80, v81, "Set environment's SessionConfiguration with configuration: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1E12A2F50](v83, -1, -1);
    MEMORY[0x1E12A2F50](v82, -1, -1);
  }

  v87 = v126;
  v88 = v123;
  SiriEnvironment.userIdentity.getter();
  v89 = v132[12];
  outlined init with copy of ReferenceResolutionClientProtocol?(v51 + v89, v88, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v90 = type metadata accessor for SiriRequestIdentities(0);
  v91 = *(*(v90 - 8) + 48);
  if (v91(v88, 1, v90) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v92 = type metadata accessor for IdentifiedUser();
    (*(*(v92 - 8) + 56))(v75, 1, 1, v92);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v88, v75, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of Conversation.State(v88, type metadata accessor for SiriRequestIdentities);
  }

  dispatch thunk of UserIdentityProvider.identityForCurrentRequest.setter();

  SiriEnvironment.userIdentity.getter();
  v93 = v125;
  outlined init with copy of ReferenceResolutionClientProtocol?(v51 + v89, v125, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  if (v91(v93, 1, v90) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v94 = type metadata accessor for IdentifiedUser();
    (*(*(v94 - 8) + 56))(v87, 1, 1, v94);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v93 + *(v90 + 20), v87, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of Conversation.State(v93, type metadata accessor for SiriRequestIdentities);
  }

  dispatch thunk of UserIdentityProvider.identityMeetingUserSessionThreshold.setter();

  SiriEnvironment.userIdentity.getter();
  v95 = v51 + v89;
  v96 = v127;
  outlined init with copy of ReferenceResolutionClientProtocol?(v95, v127, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  if (v91(v96, 1, v90) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  }

  else
  {

    outlined destroy of Conversation.State(v96, type metadata accessor for SiriRequestIdentities);
  }

  dispatch thunk of UserIdentityProvider.knownHomeMembers.setter();

  SiriEnvironment.scopedReferenceResolutionData.getter();
  v97 = v132;
  outlined copy of Data?(*(v51 + v132[8]), *(v51 + v132[8] + 8));
  dispatch thunk of ScopedReferenceResolutionDataProvider.dataForCurrentRequest.setter();

  if (*(v51 + v97[10]))
  {
    swift_retain_n();
    SiriEnvironment.nlRoutingDecision.setter();

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v133[0] = v102;
      *v101 = 136315138;
      SiriEnvironment.nlRoutingDecision.getter();
      dispatch thunk of NLRoutingDecisionProvider.genAIFallbackSuppressReason.getter();

      v103 = String.init<A>(describing:)();
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v133);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_1DC659000, v99, v100, "Set environment's NLRoutingDecisionProvider with genAIFallbackSuppressReason: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x1E12A2F50](v102, -1, -1);
      MEMORY[0x1E12A2F50](v101, -1, -1);
    }
  }

  if (*(v51 + v132[11]))
  {
    swift_retain_n();
    SiriEnvironment.flowRedirectContextProvider.setter();

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v133[0] = v109;
      *v108 = 136315138;
      SiriEnvironment.flowRedirectContextProvider.getter();
      FlowRedirectContextProvider.flowRedirectContext.getter();

      v110 = String.init<A>(describing:)();
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v133);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_1DC659000, v106, v107, "Set environment's FlowRedirectContextProvider with flowRedirectContext: %s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      MEMORY[0x1E12A2F50](v109, -1, -1);
      MEMORY[0x1E12A2F50](v108, -1, -1);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v2 = v0[2];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(v2, (v0 + 3), v3, v4, v5, v6);
}

uint64_t closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), 0, 0);
}

uint64_t closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v1 = *(v0 + 56);
  v10 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v10;
  *(v3 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:);
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v5, v6, v7, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v3, v8);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a3;
  v8[19] = a4;
  v8[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), 0, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 152), v0 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
    if (*(v0 + 80))
    {
      v2 = *(v0 + 192);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
      v3 = type metadata accessor for TaskPriority();
      (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 96);
      v4 = one-time initialization token for shared;
      v6 = v1;
      if (v4 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 192);
      v8 = static ConversationActor.shared;
      v9 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v5, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v9;
      v10[4] = v6;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), (v10 + 5));

      _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v7, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v10);

      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sScPSgMd, &_sScPSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
    }
  }

  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  v15 = *(v0 + 160);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v17[5] = v13;
  v17[6] = v14;
  v17[7] = v12;

  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v11, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v17);
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd, &_sScGyytGMR);
  *v18 = v0;
  v18[1] = closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:);

  return MEMORY[0x1EEE6D898](0, 0, v19);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DC74371C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC74376C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1DC7439CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed RemoteConversationXPC?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    RemoteConversationXPC.sendableWrapper.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t specialized PhoneAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v67 = type metadata accessor for USOParse();
  v2 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  Input.parse.getter();
  v14 = Parse.hasCancelled.getter();
  v15 = *(v5 + 8);
  v15(v13, v4);
  if (v14 & 1) != 0 || (Input.parse.getter(), v16 = Parse.hasRejected.getter(), v15(v10, v4), (v16))
  {
    SiriEnvironment.callState.getter();
    v17 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

    if ((v17 & 7) != 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.executor);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DC659000, v19, v20, "PhoneAffinityScorer detected an ongoing call, overriding score.", v21, 2u);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }

      return 4;
    }

    return 0;
  }

  Input.parse.getter();
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69D0168])
  {
    v15(v7, v4);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.executor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "PhoneAffinityScorer received unexpected parse.", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v5 + 96))(v7, v4);
  v23 = v2;
  v24 = v67;
  (*(v2 + 32))(v68, v7, v67);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "PhoneAffinityScorer Could not extract usoTask from parse.", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);

      (*(v23 + 8))(v68, v24);
      return 2;
    }

    (*(v2 + 8))(v68, v24);
    return 2;
  }

  v25 = UsoTask.parseResult.getter();
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v26 = static InCallFeatureFlags.forceEnabled;
  os_unfair_lock_lock((static InCallFeatureFlags.forceEnabled + 20));
  v27 = *(v26 + 16);
  if (v27 == 2)
  {
    v70[3] = &type metadata for InCallFeatureFlags;
    v70[4] = lazy protocol witness table accessor for type InCallFeatureFlags and conformance InCallFeatureFlags();
    v27 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
  }

  v66 = v2;
  os_unfair_lock_unlock((v26 + 20));
  SiriEnvironment.callState.getter();
  v28 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v29 = v28 & 7;
  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.executor);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109376;
    *(v33 + 4) = v27 & 1;
    *(v33 + 8) = 1024;
    *(v33 + 10) = v29 != 0;
    _os_log_impl(&dword_1DC659000, v31, v32, "PhoneAffinityScorer SIC enabled=%{BOOL}d, callIsActive=%{BOOL}d", v33, 0xEu);
    v34 = v33;
    v24 = v67;
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  if ((v25 & 0x100) == 0)
  {
    if (v29)
    {
      if ((v25 & 9) != 1 && v25 && ((v27 ^ 1) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((v27 & ((v25 & 8) >> 3)) == 1)
    {
LABEL_24:
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v35, v36))
      {
LABEL_27:

        (*(v66 + 8))(v68, v24);
        return 4;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "PhoneAffinityScorer settings: returning .override.";
LABEL_26:
      _os_log_impl(&dword_1DC659000, v35, v36, v38, v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      goto LABEL_27;
    }

    v35 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "PhoneAffinityScorer settings: returning .unsupported.";
      goto LABEL_51;
    }

    goto LABEL_73;
  }

  if (v25 > 2u)
  {
    if (v25 > 4u)
    {
      if (v25 == 5)
      {
        v35 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        v55 = os_log_type_enabled(v35, v54);
        if ((v27 & (v29 != 0)) == 1)
        {
          if (v55)
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_1DC659000, v35, v54, "PhoneAffinityScorer cameraAppParse: returning .override.", v56, 2u);
            MEMORY[0x1E12A2F50](v56, -1, -1);
          }

          goto LABEL_27;
        }

        if (!v55)
        {
          goto LABEL_73;
        }

        v62 = swift_slowAlloc();
        *v62 = 0;
        v63 = "PhoneAffinityScorer cameraAppParse: returning .unsupported.";
      }

      else
      {
        v35 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v54))
        {
          goto LABEL_73;
        }

        v62 = swift_slowAlloc();
        *v62 = 0;
        v63 = "PhoneAffinityScorer otherAppParse: returning .unsupported.";
      }

      _os_log_impl(&dword_1DC659000, v35, v54, v63, v62, 2u);
      MEMORY[0x1E12A2F50](v62, -1, -1);
      goto LABEL_73;
    }

    if (v25 == 3)
    {
      SiriEnvironment.callState.getter();
      v47 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

      if ((v47 & 1) == 0)
      {
        (*(v66 + 8))(v68, v24);

        return 1;
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_27;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "PhoneAffinityScorer UsoTask_update_common_Communication on an active call";
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  if (!v25)
  {
LABEL_53:
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v22 = 2;
      v53 = swift_slowAlloc();
      *v53 = 0;
      MEMORY[0x1E12A2F50](v53, -1, -1);

      (*(v66 + 8))(v68, v24);
      return v22;
    }

    (*(v66 + 8))(v68, v24);
    return 2;
  }

  if (v25 == 1)
  {
    v35 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "PhoneAffinityScorer other settings: returning .unsupported.";
LABEL_51:
      _os_log_impl(&dword_1DC659000, v35, v48, v50, v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

LABEL_73:

    (*(v66 + 8))(v68, v24);
    return 0;
  }

  SiriEnvironment.callState.getter();
  v57 = dispatch thunk of CallStateEnvironmentProvider.callState.getter();

  v58 = v57 & 4;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 67109120;
    *(v61 + 4) = v58 >> 2;
    _os_log_impl(&dword_1DC659000, v59, v60, "PhoneAffinityScorer callIsRinging=%{BOOL}d", v61, 8u);
    MEMORY[0x1E12A2F50](v61, -1, -1);
  }

  (*(v66 + 8))(v68, v24);
  if (v58)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}