uint64_t XPCSession.__allocating_init(fromConnection:targetQueue:options:incomingMessageHandler:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  aBlock = 0;
  v12 = _swift__xpc_session_create_from_connection_4SWIFT(a1, a2, v11 | 1, &aBlock);
  v13 = aBlock;
  type metadata accessor for XPCSession();
  v14 = swift_allocObject();
  v15 = v14;
  if (v12)
  {
    v44 = v11;
    *(v14 + 16) = v12;
    if (a4)
    {
      v16 = v12;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
      v17 = v16;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
      v18 = ClientSpecifiedHandler.init(_:)(a4, a5);
      v43 = a7;
      v20 = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v20;
      v22 = swift_allocObject();
      *(v22 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
      *(v22 + 24) = v21;
      v42 = *(v15 + 16);
      v23 = swift_allocObject();
      *(v23 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      *(v23 + 24) = v22;
      v50 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      v51 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v49 = &block_descriptor_231;
      v24 = a6;
      v25 = _Block_copy(&aBlock);

      _swift_xpc_session_set_incoming_message_handler(v42, v25);
      v26 = v25;
      a6 = v24;
      _Block_release(v26);
      a7 = v43;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v41 = v12;
      swift_unknownObjectRetain_n();
      if (!a6)
      {
LABEL_5:
        if (v44)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          XPCSession.activate()();
          swift_unknownObjectRelease();

          if (v36)
          {

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_12:

            swift_unknownObjectRelease_n();
            return v15;
          }
        }

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
        goto LABEL_12;
      }
    }

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = a7;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);

    v28 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v27);
    v30 = v29;
    v31 = a6;
    v32 = *(v15 + 16);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = v30;
    v50 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v51 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v49 = &block_descriptor_216;
    v34 = _Block_copy(&aBlock);

    v35 = v32;
    a6 = v31;
    _swift_xpc_session_set_cancel_handler(v35, v34);
    _Block_release(v34);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v31, a7);
    goto LABEL_5;
  }

  if (!v13)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v38 = v37;
  v39 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v39, v38);
  swift_willThrow();
  swift_unknownObjectRelease();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
  swift_unknownObjectRelease();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v15;
}

{
  v55 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  aBlock = 0;
  v46 = v11;
  v12 = _swift__xpc_session_create_from_connection_4SWIFT(a1, a2, v11 | 1, &aBlock);
  v13 = aBlock;
  type metadata accessor for XPCSession();
  v14 = swift_allocObject();
  v15 = v14;
  if (v12)
  {
    *(v14 + 16) = v12;
    v47 = v14;
    if (a4)
    {
      v45 = a7;
      v16 = v12;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
      v17 = v16;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      v18 = ClientSpecifiedHandler.init(_:)(a4, a5);
      v20 = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v20;
      v22 = *(v15 + 16);
      v23 = swift_allocObject();
      *(v23 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
      *(v23 + 24) = v21;
      v53 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      v54 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v50 = 1107296256;
      v51 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v52 = &block_descriptor_205;
      v24 = a5;
      v25 = a6;
      v26 = _Block_copy(&aBlock);

      _swift_xpc_session_set_incoming_message_handler(v22, v26);
      v27 = v26;
      a6 = v25;
      a5 = v24;
      _Block_release(v27);

      a7 = v45;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, v24);
      if (!a6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v43 = v12;
      swift_unknownObjectRetain_n();
      if (!a6)
      {
LABEL_5:
        if (v46)
        {
          swift_unknownObjectRelease();

          _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
          _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

          swift_unknownObjectRelease_n();
          return v47;
        }

        else
        {
          v15 = v47;
          XPCSession.activate()();
          swift_unknownObjectRelease();

          if (v39)
          {

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
          }

          else
          {
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
          }

          swift_unknownObjectRelease_n();
        }

        return v15;
      }
    }

    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);

    v29 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v28);
    v30 = a7;
    v32 = v31;
    v33 = a5;
    v34 = a6;
    v35 = *(v47 + 16);
    v36 = swift_allocObject();
    *(v36 + 16) = v29;
    *(v36 + 24) = v32;
    v53 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v54 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v52 = &block_descriptor_194;
    v37 = _Block_copy(&aBlock);

    v38 = v35;
    a6 = v34;
    a5 = v33;
    _swift_xpc_session_set_cancel_handler(v38, v37);
    _Block_release(v37);
    a7 = v30;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, v30);
    goto LABEL_5;
  }

  if (!v13)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v41 = v40;
  v42 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v42, v41);
  swift_willThrow();
  swift_unknownObjectRelease();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
  swift_unknownObjectRelease();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v15;
}

uint64_t _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id _swift__xpc_session_create_from_connection_4SWIFT(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = a2;
  v7 = _xpc_session_create_from_connection_4SWIFT();

  return v7;
}

uint64_t ClientSpecifiedHandler.init(_:)(uint64_t a1, uint64_t a2)
{

  return a1;
}

void _swift_xpc_session_set_incoming_message_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_incoming_message_handler(v3, v4);
}

void _swift_xpc_session_set_incoming_message_handler_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_incoming_message_handler(v3, v4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Any)(v10, v6);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _swift_xpc_session_set_cancel_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_cancel_handler(v3, v4);
}

void _swift_xpc_session_set_cancel_handler_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_cancel_handler(v3, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XPCSession.activate()()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!_swift_xpc_session_activate(*(v0 + 16), v4))
  {
    if (!v4[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001FLL, 0x8000000197937FB0, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
    }

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v2 = v1;
    v3 = swift_unknownObjectRetain_n();
    XPCRichError.init(_:)(v3, v2);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

BOOL _swift_xpc_session_activate(void *a1, xpc_rich_error_t *a2)
{
  v3 = a1;
  v4 = xpc_session_activate(v3, a2);

  return v4;
}

uint64_t static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, xpc_object_t *a5@<X8>)
{
  v6 = v5;
  empty = xpc_array_create_empty();
  v11 = one-time initialization token for xpcCodable;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = __swift_project_value_buffer(v12, static CodingUserInfoKey.xpcCodable);
  v28 = &type metadata for XPCArray;
  *&v26 = empty;
  outlined init with take of Any(&v26, v30);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v13, isUniquelyReferenced_nonNull_native);
  v15 = v31;
  type metadata accessor for TopLevelGraphEncodingNode();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v28 = &type metadata for _TopLevelEncoder;
  v29 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v17 = swift_allocObject();
  *&v26 = v17;
  v18 = MEMORY[0x1E69E7CC0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a3;

  dispatch thunk of Encodable.encode(to:)();
  if (v6)
  {

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v26);

    SerializedEncodingGraph.init(of:)(v20, &protocol witness table for TopLevelGraphEncodingNode, &v26);
    v21 = v27;
    v22 = v28;
    *a5 = xpc_dictionary_create_empty();
    v23 = xpc_int64_create(1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(0xD000000000000014, 0x8000000197938DB0, v23, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain_n();
    specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEC00000079646F42, v21, a5);
    swift_unknownObjectRelease();
    v24 = xpc_BOOL_create(a2 & 1);
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v24, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain_n();
    specialized String.withCString<A>(_:)(0xD000000000000011, 0x8000000197938E50, a5, v22);
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    specialized String.withCString<A>(_:)(0xD00000000000001FLL, 0x8000000197938EA0, a5, empty);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1978FC00C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t one-time initialization function for xpcCodable()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v4, static CodingUserInfoKey.xpcCodable);
  v5 = __swift_project_value_buffer(v4, static CodingUserInfoKey.xpcCodable);
  CodingUserInfoKey.init(rawValue:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v43 = v9;
    v44 = v5;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v42 = *(v6 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
        outlined init with take of Any((*(v10 + 56) + 32 * v24), v45);
      }

      else
      {
        (*v37)(v43, v26, v44);
        outlined init with copy of Any(*(v10 + 56) + 32 * v24, v45);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v42 * v20), v43, v44);
      result = outlined init with take of Any(v45, (*(v12 + 56) + 32 * v20));
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs6UInt32VGMd, &_ss18_DictionaryStorageCySOs6UInt32VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x19A8E95F0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMd, &_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x19A8E95E0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t XPCSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(v6, 0, a2, &v11);

  if (!v4)
  {
    if (_swift_xpc_session_send_message(*(v3 + 16), v11))
    {
      lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
      swift_allocError();
      v9 = v8;
      v10 = swift_unknownObjectRetain();
      XPCRichError.init(_:)(v10, v9);
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = MEMORY[0x19A8E95F0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = a1;
  v3 = MEMORY[0x19A8E95E0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

uint64_t _TopLevelEncoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for _KeyedEncodingContainer(0, a6, a7, a4);
  _TopLevelEncoder._encodingContainer<A>(_:)(v11, a2, a3, a4, a5, v11, &protocol witness table for _KeyedEncodingContainer<A>);
  swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>, v11);
  return KeyedEncodingContainer.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder()
{
  result = lazy protocol witness table cache variable for type _TopLevelEncoder and conformance _TopLevelEncoder;
  if (!lazy protocol witness table cache variable for type _TopLevelEncoder and conformance _TopLevelEncoder)
  {
    result = swift_getWitnessTable("eDVWXQ", &type metadata for _TopLevelEncoder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TopLevelEncoder and conformance _TopLevelEncoder);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return outlined init with take of Any(a1, v22);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

uint64_t type metadata instantiation function for _KeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v24 = a4;
  v25 = a5;
  v23 = a3;
  v26 = a8;
  v14 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a6, a9, a3);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v23 - v17;
  v20 = type metadata accessor for _KeyedEncodingContainer(0, a7, a10, v19);
  v21 = *(a6 - 8);
  (*(v21 + 16))(v18, a1, a6);
  (*(v21 + 56))(v18, 0, 1, a6);
  _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(v20, v18, 0, a2, v23, v24, v25, a6, v20, a9, &protocol witness table for _KeyedEncodingContainer<A>);
  (*(v15 + 8))(v18, v14);
  swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>, v20);
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t _KeyedEncodingContainer._ContainerCodingKey.encodingGraphKey.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v6, v9, v2);
  v12 = dispatch thunk of CodingKey.stringValue.getter();
  if ((v13 & 0x1000000000000000) != 0)
  {
    v14 = static String._copying(_:)(v12, v13);
  }

  else
  {
    v14 = v12;
  }

  (*(v3 + 8))(v6, v2);
  return v14;
}

uint64_t XPC_ERROR_KEY_DESCRIPTION.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _TopLevelEncoder._encodingContainer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a7 + 40);
  swift_unknownObjectRetain();

  result = v14(a3, a4, a5, v12, v13, a6, a7);
  if (!*(a2 + 16))
  {
    result = (*(a7 + 24))(a6, a7);
    if (*(a2 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = result;
      swift_getAssociatedTypeWitness();
      result = swift_getAssociatedConformanceWitness();
      *(a2 + 16) = v16;
      *(a2 + 24) = result;
    }
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, &_ss9CodingKey_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13EncodingGraphO9Container_pMd, &_s3XPC13EncodingGraphO9Container_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined init with copy of CodingKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a8, a10, a4);
  v17 = _KeyedEncodingContainer._ContainerCodingKey.encodingGraphKey.getter(v16);
  v33 = v18;
  v34 = v17;
  v19 = _KeyedEncodingContainer._existingNode(forKey:)(v17, v18, a4, a5, a6, a7);
  v31 = v20;
  v38 = v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>._ContainerCodingKey, v16);
  v21 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(v16 - 8) + 16))(v21, a2, v16);
  v22 = CodingInfo.coding(forKey:forType:)(&v35, a3, a4, a5);
  v24 = v23;
  v26 = v25;
  outlined destroy of CodingKey?(&v35);
  v27 = *(a11 + 40);
  swift_unknownObjectRetain();
  v27(v22, v24, v26, v19, v31, a9, a11);
  v28 = (*(a11 + 24))(a9, a11);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v28;
  v36 = AssociatedConformanceWitness;
  v37 = 0;
  LOBYTE(v38) = 17;
  _KeyedEncodingContainer._encode(_:forKey:)(&v35, v34, v33);
  swift_unknownObjectRelease();

  return outlined consume of EncodingGraph.Value(v35, v36, v37, v38);
}

void *CodingInfo.coding(forKey:forType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  outlined init with copy of CodingKey?(a1, &v8);
  if (v9)
  {
    outlined init with take of Encodable(&v8, v10);
    outlined init with copy of Decoder(v10, &v8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3[2] + 1, 1, a3);
    }

    v6 = a3[2];
    v5 = a3[3];
    if (v6 >= v5 >> 1)
    {
      a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, a3);
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    a3[2] = v6 + 1;
    outlined init with take of Encodable(&v8, &a3[5 * v6 + 4]);
  }

  else
  {

    outlined destroy of CodingKey?(&v8);
  }

  return a3;
}

uint64_t protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _KeyedEncodingContainer<A>@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = _KeyedEncodingContainer.init(codingInfo:container:)(a2, a3, a4, a5);
  *a1 = result;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _KeyedEncodingContainer.init(codingInfo:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  type metadata accessor for _KeyedGraphEncodingNode();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    __break(1u);
LABEL_4:
    type metadata accessor for _KeyedGraphEncodingNode();
    v5 = swift_allocObject();
    *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v5 + 24) = &outlined read-only object #0 of _KeyedEncodingContainer.init(codingInfo:container:);
  }

  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t type metadata completion function for _KeyedEncodingContainer._ContainerCodingKey(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t _KeyedEncodingContainer._existingNode(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = _KeyedGraphEncodingNode._valueIndex(forKey:)(a1, a2);
  if (v8)
  {
    return 0;
  }

  v10 = v7;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(a6 + 24);
  if (v10 >= *(v11 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 32 * v10 + 56) != 17)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return swift_unknownObjectRetain();
}

uint64_t _KeyedGraphEncodingNode._valueIndex(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = swift_beginAccess();
  v12 = *(v3 + 24);
  v13 = *(v12 + 16);
  if (v11 >= v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 >= v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v12 + 32 * v9;
  if (*(v14 + 56) != 14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(v14 + 40);
  if (v15)
  {
    if (a2)
    {
      v16 = *(v14 + 32) == a1 && v15 == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v11;
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else if (!a2)
  {
    return v11;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with take of Encodable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined destroy of CodingKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _KeyedEncodingContainer._encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9[0] = *a1;
  v9[1] = v5;
  v9[2] = v6;
  v10 = v7;

  outlined copy of EncodingGraph.Value(v9[0], v5, v6, v7);
  return _KeyedGraphEncodingNode.subscript.setter(v9, a2, a3);
}

uint64_t outlined copy of EncodingGraph.Value(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 0xEu)
  {
    if (a4 == 15 || a4 == 17)
    {
      return swift_unknownObjectRetain();
    }
  }

  else if (a4 == 1 || a4 == 14)
  {
  }

  return v4;
}

uint64_t _KeyedGraphEncodingNode.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (v4 == 255)
  {
    goto LABEL_18;
  }

  v5 = v3;
  v8 = *result;
  v9 = *(result + 8);
  v10 = *(result + 16);
  v11 = _KeyedGraphEncodingNode._valueIndex(forKey:)(a2, a3);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(*(v3 + 24) + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v30;
    swift_endAccess();
    swift_beginAccess();
    v15 = *(v3 + 24);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 24) = v15;
    if ((v16 & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      *(v5 + 24) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[32 * v18];
    *(v19 + 4) = a2;
    *(v19 + 5) = a3;
    *(v19 + 6) = 0;
    v19[56] = 14;
    *(v5 + 24) = v15;
    outlined copy of EncodingGraph.Value(v8, v9, v10, v4);
    *(v5 + 24) = v15;
    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    if (v21 >= v20 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
    }

    *(v15 + 2) = v21 + 1;
    v22 = &v15[32 * v21];
    *(v22 + 4) = v8;
    *(v22 + 5) = v9;
    *(v22 + 6) = v10;
    v22[56] = v4;
    *(v5 + 24) = v15;
    swift_endAccess();
    return outlined consume of EncodingGraph.Value?(v8, v9, v10, v4);
  }

  v23 = v11;

  swift_beginAccess();
  v24 = *(v5 + 24);
  outlined copy of EncodingGraph.Value(v8, v9, v10, v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v24;
  if (result)
  {
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
    v24 = result;
    *(v5 + 24) = result;
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_12:
      if (v23 < *(v24 + 16))
      {
        v25 = v24 + 32 * v23;
        v26 = *(v25 + 32);
        v27 = *(v25 + 40);
        v28 = *(v25 + 48);
        *(v25 + 32) = v8;
        *(v25 + 40) = v9;
        *(v25 + 48) = v10;
        v29 = *(v25 + 56);
        *(v25 + 56) = v4;
        *(v5 + 24) = v24;
        swift_endAccess();
        outlined consume of EncodingGraph.Value(v26, v27, v28, v29);
        return outlined consume of EncodingGraph.Value?(v8, v9, v10, v4);
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type EncodingGraph.Key and conformance EncodingGraph.Key()
{
  result = lazy protocol witness table cache variable for type EncodingGraph.Key and conformance EncodingGraph.Key;
  if (!lazy protocol witness table cache variable for type EncodingGraph.Key and conformance EncodingGraph.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EncodingGraph.Key, &type metadata for EncodingGraph.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EncodingGraph.Key and conformance EncodingGraph.Key);
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *EncodingGraph.Container.traverse<A>(initialResult:onContainerEnter:onValueEnter:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, void (*a4)(void *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v50 = a5;
  v42 = a2;
  v43 = a3;
  v40 = a8;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO9Container_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_197937940;
  *(inited + 32) = v8;
  *(inited + 40) = a7;
  v39 = v13;
  v17 = *(v13 + 16);
  v41 = a6;
  v17(v15, a1, a6);
  v18 = *(inited + 16);
  swift_unknownObjectRetain();
  result = inited;
  do
  {
    while (v18)
    {
      v20 = 0;
      v44 = result + 4;
      v21 = MEMORY[0x1E69E7CC0];
      v45 = v18;
      v46 = result;
      do
      {
        if (v20 >= result[2])
        {
          __break(1u);
          return result;
        }

        v49 = v20;
        v22 = &v44[2 * v20];
        v24 = *v22;
        v23 = v22[1];
        v25 = swift_unknownObjectRetain();
        v42(v25, v23, v15);
        ObjectType = swift_getObjectType();
        v27 = *(v23 + 8);
        v48 = v24;
        v28 = v27(ObjectType, v23);
        v29 = *(v28 + 16);
        v47 = v28;
        if (v29)
        {
          v30 = (v28 + 56);
          do
          {
            v31 = *(v30 - 3);
            v32 = *(v30 - 2);
            v33 = *(v30 - 1);
            v34 = *v30;
            v51[0] = v31;
            v51[1] = v32;
            v51[2] = v33;
            v52 = v34;
            outlined copy of EncodingGraph.Value(v31, v32, v33, v34);
            a4(v51, v15);
            if (v34 == 17)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
              }

              v36 = v21[2];
              v35 = v21[3];
              if (v36 >= v35 >> 1)
              {
                v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v21);
              }

              v21[2] = v36 + 1;
              v37 = &v21[2 * v36];
              v37[4] = v31;
              v37[5] = v32;
            }

            else
            {
              outlined consume of EncodingGraph.Value(v31, v32, v33, v34);
            }

            v30 += 32;
            --v29;
          }

          while (v29);
        }

        v20 = v49 + 1;
        swift_unknownObjectRelease();

        result = v46;
      }

      while (v20 != v45);

      result = v21;
      v18 = v21[2];
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    result = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  while (v18);
LABEL_18:

  return (*(v39 + 32))(v40, v15, v41);
}

uint64_t one-time initialization function for allTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E69E9E58];
  *(inited + 32) = MEMORY[0x1E69E9ED0];
  *(inited + 40) = v1;
  v2 = MEMORY[0x1E69E9F18];
  *(inited + 48) = MEMORY[0x1E69E9EB0];
  *(inited + 56) = v2;
  v3 = MEMORY[0x1E69E9E78];
  *(inited + 64) = MEMORY[0x1E69E9E88];
  *(inited + 72) = v3;
  v4 = MEMORY[0x1E69E9F10];
  *(inited + 80) = MEMORY[0x1E69E9E70];
  *(inited + 88) = v4;
  v5 = MEMORY[0x1E69E9EA0];
  *(inited + 96) = MEMORY[0x1E69E9F20];
  *(inited + 104) = v5;
  v6 = MEMORY[0x1E69E9EC0];
  *(inited + 112) = MEMORY[0x1E69E9F08];
  *(inited + 120) = v6;
  v7 = MEMORY[0x1E69E9E80];
  *(inited + 128) = MEMORY[0x1E69E9E50];
  *(inited + 136) = v7;
  v8 = MEMORY[0x1E69E9E90];
  *(inited + 144) = MEMORY[0x1E69E9E98];
  *(inited + 152) = v8;
  v9 = MEMORY[0x1E69E9EB8];
  v10 = MEMORY[0x1E69E9EC8];
  *(inited + 16) = xmmword_1979365E0;
  *(inited + 160) = v9;
  *(inited + 168) = v10;
  *(inited + 176) = MEMORY[0x1E69E9EE8];
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs13OpaquePointerV_Tt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  static Set<>.allTypes = v11;
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs13OpaquePointerV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      MEMORY[0x19A8E9610](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOSiGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        MEMORY[0x19A8E9610](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x19A8E9610](0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v38 = *(v22 + 16);
      v25 = *(v22 + 24);
      v39 = v21;
      v26 = *(&v21 + 1);
      if ((v37 & 1) == 0)
      {

        outlined copy of EncodingGraph.Value(v23, v24, v38, v25);
      }

      Hasher.init(_seed:)();
      if (v26)
      {
        MEMORY[0x19A8E9610](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x19A8E9610](0);
      }

      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v39;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v38;
      *(v16 + 24) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x19A8E9610](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x19A8E9610](0);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t SerializedEncodingGraph.init(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v19 = 0;
  DWORD2(v19) = 0;
  *&v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = a1;
  v14 = a2;
  EncodingGraph.Container.traverse<A>(initialResult:onContainerEnter:onValueEnter:)(&v19, partial apply for closure #1 in SerializedEncodingGraph.init(of:), v12, closure #2 in SerializedEncodingGraph.init(of:), 0, &unk_1F0C09A70, a2, &v25);

  init(firstPass:) in SecondPass #1 in SerializedEncodingGraph.init(of:)(v26, &v25);
  v11[2] = a1;
  v11[3] = a2;
  EncodingGraph.Container.traverse<A>(initialResult:onContainerEnter:onValueEnter:)(&v25, partial apply for closure #3 in SerializedEncodingGraph.init(of:), v11, closure #4 in SerializedEncodingGraph.init(of:), 0, &unk_1F0C099E8, a2, v15);
  swift_unknownObjectRelease();
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  outlined destroy of SecondPass #1 in SerializedEncodingGraph.init(of:)(&v19);
  v29 = v17;
  v30 = v18;
  v27 = v15[2];
  v28 = v16;
  v25 = v15[0];
  v26 = v15[1];
  v7 = *(&v17 + 1);
  v6 = v18;
  v8 = *(&v16 + 1);
  v9 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = outlined destroy of SecondPass #1 in SerializedEncodingGraph.init(of:)(&v25);
  *a3 = v9;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v8;
  return result;
}

uint64_t XPCData.init(underlyingData:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x19A8E9F90]() != MEMORY[0x1E69E9E70])
  {
    result = swift_unknownObjectRelease();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  swift_getObjectType();
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(a1);
    if (result)
    {
      v7 = result;
      result = swift_unknownObjectRelease();
      *a2 = bytes_ptr;
      a2[1] = length;
      a2[2] = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of EncodingGraph.Value(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 0xEu)
  {
    if (a4 == 15 || a4 == 17)
    {
      return swift_unknownObjectRelease();
    }
  }

  else if (a4 == 1 || a4 == 14)
  {
  }

  return v4;
}

Swift::Bool __swiftcall OS_xpc_object.isCodable()()
{
  if (one-time initialization token for allTypes != -1)
  {
    swift_once();
  }

  v0 = static Set<>.allTypes;
  v1 = MEMORY[0x19A8E9F90]();

  return specialized Set.contains(_:)(v1, v0);
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x19A8E9610](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t protocol witness for EncodingGraph.Container.values.getter in conformance TopLevelGraphEncodingNode()
{
  if (!*(v0 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t encode #1 (value:buffer:nodeMap:) in SerializedEncodingGraph.init(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  switch(*(a1 + 24))
  {
    case 1:
      v9 = 3;
      goto LABEL_19;
    case 2:
      v12 = 4;
      goto LABEL_17;
    case 3:
      v11 = 5;
      goto LABEL_31;
    case 4:
      v11 = 6;
      goto LABEL_31;
    case 5:
      v21 = 7;
      goto LABEL_29;
    case 6:
      v10 = 8;
      goto LABEL_26;
    case 7:
      v12 = 9;
      goto LABEL_17;
    case 8:
      v11 = 10;
      goto LABEL_31;
    case 9:
      v11 = 11;
      goto LABEL_31;
    case 0xA:
      v21 = 12;
LABEL_29:
      specialized XPCBufferWriter.write<A>(_:)(v21);
      return specialized XPCBufferWriter.write<A>(_:)(v3);
    case 0xB:
      v10 = 13;
LABEL_26:
      specialized XPCBufferWriter.write<A>(_:)(v10);
      return specialized XPCBufferWriter.write<A>(_:)(v3);
    case 0xC:
      v12 = 14;
LABEL_17:
      specialized XPCBufferWriter.write<A>(_:)(v12);
      v16 = v3;
      return specialized XPCBufferWriter.write<A>(_:)(v16);
    case 0xD:
      v11 = 15;
LABEL_31:
      specialized XPCBufferWriter.write<A>(_:)(v11);
      return specialized XPCBufferWriter.write<A>(_:)(v3);
    case 0xE:
      if (v4)
      {
        v9 = 17;
LABEL_19:
        specialized XPCBufferWriter.write<A>(_:)(v9);
        v22[0] = v3;
        v22[1] = v4;

        specialized String.withUTF8<A>(_:)(v22, a2);
      }

      else
      {
        v7 = 16;
        return specialized XPCBufferWriter.write<A>(_:)(v7);
      }

    case 0xF:
      specialized XPCBufferWriter.write<A>(_:)(18);
      v13 = *(a2 + 56);
      swift_unknownObjectRetain();
      count = xpc_array_get_count(v13);
      v15 = swift_unknownObjectRetain();
      if (MEMORY[0x19A8E9F90](v15) == MEMORY[0x1E69E9E68])
      {
        xpc_array_set_connection(v13, 0xFFFFFFFFFFFFFFFFLL, v5);
      }

      else
      {
        xpc_array_set_value(v13, 0xFFFFFFFFFFFFFFFFLL, v5);
      }

      outlined consume of EncodingGraph.Value(v3, v4, v5, 0xFu);
      outlined consume of EncodingGraph.Value(v3, v4, v5, 0xFu);
      if (HIDWORD(count))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        JUMPOUT(0x1978FF8C4);
      }

      v16 = count;
      break;
    case 0x10:
      specialized XPCBufferWriter.write<A>(_:)(19);
      return specialized XPCBufferWriter.write<A>(_:)((v3 + 10));
    case 0x11:
      if (!*(a3 + 16))
      {
        goto LABEL_40;
      }

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
      if ((v19 & 1) == 0)
      {
        goto LABEL_41;
      }

      v20 = *(*(a3 + 56) + 4 * v18);
      specialized XPCBufferWriter.write<A>(_:)(20);
      v16 = v20;
      break;
    case 0x12:
      v7 = 0;
      return specialized XPCBufferWriter.write<A>(_:)(v7);
    default:
      if (v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      return specialized XPCBufferWriter.write<A>(_:)(v7);
  }

  return specialized XPCBufferWriter.write<A>(_:)(v16);
}

uint64_t specialized String.withUTF8<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if ((v5 & 0x1000000000000000) != 0)
  {
    v11 = static String._copying(_:)(v4, v5);
    v13 = v12;

    v4 = v11;
    *a1 = v11;
    a1[1] = v13;
    v5 = v13;
    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
      if (v17 < 0)
      {
        __break(1u);
      }

      v7 = v16;
      v8 = v17;
    }

    specialized XPCBufferWriter.write<A>(_:)(v8);
    v9 = *(a2 + 32);
    if (v9 && v7)
    {
      memmove((v9 + *(a2 + 16)), v7, v8);
    }

    v10 = v8;
    goto LABEL_13;
  }

  v18[0] = v4;
  v18[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  specialized XPCBufferWriter.write<A>(_:)(HIBYTE(v5) & 0xF);
  v14 = *(a2 + 32);
  if (v14)
  {
    memcpy((v14 + *(a2 + 16)), v18, HIBYTE(v5) & 0xF);
  }

  v10 = HIBYTE(v5) & 0xF;
LABEL_13:
  XPCBufferWriter.advance(by:)(v10);
  return specialized XPCBufferWriter.write<A>(_:)(0);
}

uint64_t specialized XPCBufferWriter.write<A>(_:)(uint64_t result)
{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + v2 + 1) = BYTE1(result);
  if (__OFADD__(v2, 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v3 + v2 + 2) = BYTE2(result);
  if (__OFADD__(v2, 3))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + v2 + 3) = BYTE3(result);
  if (__OFADD__(v2, 4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + v2 + 4) = BYTE4(result);
  if (__OFADD__(v2, 5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v3 + v2 + 5) = BYTE5(result);
  if (__OFADD__(v2, 6))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v3 + v2 + 6) = BYTE6(result);
  if (__OFADD__(v2, 7))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v3 + v2 + 7) = HIBYTE(result);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v5 - v4;
  v7 = v4 + 8;
  if (v6 < 8)
  {
    v7 = v1[3];
  }

  if (v5 < v7)
  {
    goto LABEL_20;
  }

  v1[2] = v7;
  v1[4] = v3;
  v8 = __OFADD__(v2, 8);
  v9 = v2 + 8;
  if (!v8)
  {
    v1[6] = v9;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + v2 + 1) = BYTE1(result);
  if (__OFADD__(v2, 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + v2 + 2) = BYTE2(result);
  if (__OFADD__(v2, 3))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + v2 + 3) = BYTE3(result);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v5 - v4;
  v7 = v4 + 4;
  if (v6 < 4)
  {
    v7 = v1[3];
  }

  if (v5 < v7)
  {
    goto LABEL_12;
  }

  v1[2] = v7;
  v1[4] = v3;
  v8 = __OFADD__(v2, 4);
  v9 = v2 + 4;
  if (!v8)
  {
    v1[6] = v9;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  v4 = v1[2];
  v5 = v1[3];
  if (v5 == v4)
  {
    v6 = v1[3];
  }

  else
  {
    v6 = v4 + 1;
  }

  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v1[2] = v6;
    v1[4] = v3;
    v7 = __OFADD__(v2, 1);
    v8 = v2 + 1;
    if (!v7)
    {
      v1[6] = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = v1[6];
  v3 = v1[4];
  *(v3 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v3 + v2 + 1) = BYTE1(result);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v5 - v4;
  v7 = v4 + 2;
  if (v6 < 2)
  {
    v7 = v1[3];
  }

  if (v5 < v7)
  {
    goto LABEL_8;
  }

  v1[2] = v7;
  v1[4] = v3;
  v8 = __OFADD__(v2, 2);
  v9 = v2 + 2;
  if (!v8)
  {
    v1[6] = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

xpc_rich_error_t _swift_xpc_session_send_message(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_session_send_message(v3, v4);

  return v5;
}

uint64_t init(firstPass:) in SecondPass #1 in SerializedEncodingGraph.init(of:)@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  alloc = dispatch_data_create_alloc();
  v6 = xpc_data_create_with_dispatch_data(alloc);
  empty = xpc_array_create_empty();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  XPCData.init(underlyingData:)(v6, v12);
  v8 = v13;
  if (!v13)
  {
    __break(1u);
  }

  v10 = v12[0];
  v9 = v12[1];

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = empty;
  a3[8] = v10;
  a3[9] = v9;
  a3[10] = v8;
  a3[11] = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_3XPC13EncodingGraphO5ValueO(uint64_t a1)
{
  if ((*(a1 + 24) & 0x1Fu) <= 0x11)
  {
    return *(a1 + 24) & 0x1F;
  }

  else
  {
    return (*a1 + 18);
  }
}

uint64_t closure #2 in SerializedEncodingGraph.init(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v10[0] = *a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = v6;
  result = serializedLength #1 (of:) in SerializedEncodingGraph.init(of:)(v10);
  if (__OFADD__(*a2, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  *a2 += result;
  if (v6 != 17)
  {
    return result;
  }

  v8 = *(a2 + 8);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[0] = *(a2 + 16);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v3, isUniquelyReferenced_nonNull_native);
  result = outlined consume of EncodingGraph.Value(v3, v4, v5, 0x11u);
  *(a2 + 16) = v10[0];
  if (v8 == -1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(a2 + 8) = v8 + 1;
  return result;
}

uint64_t serializedLength #1 (of:) in SerializedEncodingGraph.init(of:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 0;
  switch(*(a1 + 24))
  {
    case 1:

      if ((v1 & 0x1000000000000000) != 0)
      {
        v6 = static String._copying(_:)(v2, v1);
        v8 = v7;
        outlined consume of EncodingGraph.Value(v2, v1, v3, 1u);
        v2 = v6;
        v1 = v8;
        if ((v8 & 0x2000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_19:

        v2 = HIBYTE(v1) & 0xF;
        goto LABEL_20;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_8:
      if ((v2 & 0x1000000000000000) == 0)
      {
        goto LABEL_34;
      }

      for (v2 &= 0xFFFFFFFFFFFFuLL; ; v2 = v13)
      {

LABEL_20:
        if (!__OFADD__(v2, 8))
        {
          v4 = v2 + 9;
          if (!__OFADD__(v2 + 8, 1))
          {
            break;
          }

          __break(1u);
        }

        __break(1u);
LABEL_25:
        v9 = static String._copying(_:)(v2, v1);
        v11 = v10;
        outlined consume of EncodingGraph.Value(v2, v1, v3, 0xEu);
        v2 = v9;
        v1 = v11;
        if ((v11 & 0x2000000000000000) != 0)
        {
LABEL_26:

          v5 = HIBYTE(v1) & 0xF;
        }

        else
        {
LABEL_14:
          if ((v2 & 0x1000000000000000) != 0)
          {
            v5 = v2 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            _StringObject.sharedUTF8.getter();
            v5 = v14;
          }
        }

        if (__OFADD__(v5, 8))
        {
          goto LABEL_32;
        }

        v4 = v5 + 9;
        if (!__OFADD__(v5 + 8, 1))
        {
          break;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        _StringObject.sharedUTF8.getter();
      }

LABEL_29:
      result = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      return result;
    case 2:
    case 7:
    case 0xC:
    case 0xF:
    case 0x11:
      v4 = 4;
      goto LABEL_29;
    case 3:
    case 4:
    case 8:
    case 9:
    case 0xD:
      v4 = 8;
      goto LABEL_29;
    case 5:
    case 0xA:
    case 0x10:
      v4 = 1;
      goto LABEL_29;
    case 6:
    case 0xB:
      v4 = 2;
      goto LABEL_29;
    case 0xE:
      if (!v1)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if ((v1 & 0x2000000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    default:
      goto LABEL_29;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 4 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 4 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in SerializedEncodingGraph.init(of:)(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    return specialized XPCBufferWriter.write<A>(_:)(21);
  }

  return result;
}

uint64_t closure #4 in SerializedEncodingGraph.init(of:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return encode #1 (value:buffer:nodeMap:) in SerializedEncodingGraph.init(of:)(&v5, a2, *(a2 + 88));
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t closure #1 in XPCDictionary.forEach(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in closure #1 in XPCDictionary.forEach(_:);
  *(v7 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_71;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t sub_197900430()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t XPCSession.send<A>(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy3XPC18XPCReceivedMessageVAC12XPCRichErrorVGMd, &_ss6ResultOy3XPC18XPCReceivedMessageVAC12XPCRichErrorVGMR);
  v11 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v10);
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;

  XPCSession._send<A>(_:replyHandler:)(a1, partial apply for implicit closure #2 in implicit closure #1 in XPCSession.send<A>(_:replyHandler:), v14, a4, a5);
}

uint64_t XPCSession._send<A>(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(v10, 0, a4, v17);

  if (!v6)
  {
    v12 = v17[0];
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v14 = *(v5 + 16);
    v15 = swift_allocObject();
    v15[2] = partial apply for closure #1 in XPCSession._send<A>(_:replyHandler:);
    v15[3] = v13;
    v17[4] = closure #1 in XPCSession._send(message:replyHandler:)partial apply;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ();
    v17[3] = &block_descriptor_306;
    v16 = _Block_copy(v17);

    _swift_xpc_session_send_message_with_reply_async(v14, v12, v16);
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized XPCSession.__allocating_init(machService:targetQueue:options:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v10 = String.utf8CString.getter();

  aBlock[0] = 0;
  v11 = _swift_xpc_session_create_mach_service((v10 + 32), a3, (v9 | 1), aBlock);
  v12 = aBlock[0];
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v13 = swift_allocObject();
  v14 = v13;
  if (v11)
  {
    *(v13 + 16) = v11;
    if (a5)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a5;
      *(v15 + 24) = a6;
      v30 = a3;
      v16 = v11;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v17 = v16;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v18 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v15);
      v20 = v19;
      v21 = *(v14 + 16);
      v22 = swift_allocObject();
      *(v22 + 2) = v18;
      *(v22 + 3) = v20;
      aBlock[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_344;
      v23 = _Block_copy(aBlock);

      _swift_xpc_session_set_cancel_handler(v21, v23);
      _Block_release(v23);
      a3 = v30;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v27 = v11;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    XPCSession.activate()();
    if (v28)
    {

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);

LABEL_11:

      swift_unknownObjectRelease_n();
      return v14;
    }

LABEL_10:

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
    goto LABEL_11;
  }

  if (!v12)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v25 = v24;
  v26 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v26, v25);
  swift_willThrow();
  swift_unknownObjectRelease();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v14;
}

xpc_session_t _swift_xpc_session_create_mach_service(const char *a1, void *a2, xpc_session_create_flags_t a3, xpc_rich_error_t *a4)
{
  v7 = a2;
  mach_service = xpc_session_create_mach_service(a1, v7, a3, a4);

  return mach_service;
}

xpc_session_t _swift_xpc_session_create_mach_service_0(const char *a1, void *a2, xpc_session_create_flags_t a3, xpc_rich_error_t *a4)
{
  v7 = a2;
  mach_service = xpc_session_create_mach_service(a1, v7, a3, a4);

  return mach_service;
}

uint64_t XPCSession.setIncomingMessageHandler(_:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  v5 = ClientSpecifiedHandler.init(_:)(a1, a2);
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:);
  *(v9 + 24) = v8;
  v10 = *(v2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  *(v11 + 24) = v9;
  v14[4] = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v14[3] = &block_descriptor_78;
  v12 = _Block_copy(v14);

  _swift_xpc_session_set_incoming_message_handler(v10, v12);
  _Block_release(v12);
}

{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v5 = ClientSpecifiedHandler.init(_:)(a1, a2);
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
  *(v10 + 24) = v8;
  v13[4] = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v13[3] = &block_descriptor_51;
  v11 = _Block_copy(v13);

  _swift_xpc_session_set_incoming_message_handler(v9, v11);
  _Block_release(v11);
}

uint64_t sub_197900DBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t XPCSession.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v5);
  v8 = v7;
  v9 = *(v2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v13[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v13[3] = &block_descriptor_89;
  v11 = _Block_copy(v13);

  _swift_xpc_session_set_cancel_handler(v9, v11);
  _Block_release(v11);
}

uint64_t dispatch thunk of XPCSession.setIncomingMessageHandler(_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 112))();
}

void thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t closure #1 in XPCListener.init(service:targetQueue:options:incomingSessionHandler:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  type metadata accessor for XPCListener.IncomingSessionRequest();
  v6 = swift_allocObject();
  *(v6 + 24) = 2;
  type metadata accessor for XPCSession();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v6 + 16) = v7;
  v10 = v6;
  v8 = a1;
  ClientSpecifiedHandler.callEventHandler(_:)(&v10, a2, a3);
}

uint64_t ClientSpecifiedHandler.callEventHandler(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{

  a2(a1);
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X4>, uint64_t (*a5)(char *, uint64_t, uint64_t)@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, _BYTE *a7@<X8>, uint64_t a8@<X1>)
{
  v25 = a6;
  v26 = a7;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  a1(v16);

  v17 = a4(v15, a2, a3);
  v19 = v18;
  v20 = a5(v15, a2, a3);
  v22 = v21;

  v25(v17, v19);

  XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(&v27, v20, v22);

  result = (*(v13 + 8))(v15, a2);
  *v26 = v27;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest.accept<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>, uint64_t a5@<X1>)
{
  return XPCListener.IncomingSessionRequest.accept<A>(_:)(a1, a2, a3, implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:), implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:), XPCSession.setIncomingMessageHandler(_:), a4, a5);
}

{
  return XPCListener.IncomingSessionRequest.accept<A>(_:)(a1, a2, a3, implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:), implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:), XPCSession.setIncomingMessageHandler(_:), a4, a5);
}

uint64_t dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)()
{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 240))();
}

{
  return (*(*v0 + 248))();
}

uint64_t (*implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(__int128 *a1)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

uint64_t (*implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:);
}

uint64_t XPCListener.IncomingSessionRequest._accept(cancellationHandler:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = *(v3 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCDictionary) -> (@out XPCDictionary?))?(a2, a3);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCDictionary) -> (@out XPCDictionary?))?(a2, a3);

    v9 = ClientSpecifiedHandler.init(_:)(_s3XPC12XPCRichErrorVIegn_ACytIegnr_TRTA_0, v8);
    v11 = v10;
    v12 = *(v7 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v11;
    v17[4] = partial apply for closure #1 in XPCSession.setCancellationHandler(_:);
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v17[3] = &block_descriptor_102;
    v14 = _Block_copy(v17);

    _swift_xpc_session_set_cancel_handler(v12, v14);
    _Block_release(v14);

    outlined consume of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCDictionary) -> (@out XPCDictionary?))?(a2, a3);
  }

  LOBYTE(v17[0]) = 0;
  XPCListener.IncomingSessionRequest.decision.setter(v17);
  v15 = *(v3 + 24);
  if (v15 == 2)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000002ALL, 0x8000000197938BE0, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/Listener.swift", 86, 2, 68);
  }

  *a1 = v15 & 1;
}

uint64_t sub_197901860()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_BYTE *XPCListener.IncomingSessionRequest.decision.setter(_BYTE *result)
{
  if (*(v1 + 24) != 2)
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x19A8E8E70](0xD000000000000035, 0x8000000197938D70);
    if (*(v1 + 24) == 2)
    {
      __break(1u);
    }

    _print_unlocked<A, B>(_:_:)();

    __XPC_API_MISUSE__(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/Listener.swift", 86, 2, 74);
  }

  *(v1 + 24) = *result;
  return result;
}

uint64_t XPCListener.IncomingSessionRequest.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t SingleValueGraphEncodingNode.setValue(to:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (*(v6 + 2) == 1)
  {
    swift_beginAccess();
    outlined copy of EncodingGraph.Value(v2, v3, v4, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 1, v6);
  *(v1 + 16) = v6;
LABEL_3:
  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[32 * v9];
  *(v10 + 4) = v2;
  *(v10 + 5) = v3;
  *(v10 + 6) = v4;
  v10[56] = v5;
  *(v1 + 16) = v6;
  return swift_endAccess();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 4);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 13);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 7);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 8);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 9);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 12);
}

uint64_t _TopLevelEncoder.singleValueContainer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for _SingleValueEncodingContainer;
  a5[4] = lazy protocol witness table accessor for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer();
  v10 = swift_allocObject();
  *a5 = v10;
  if (*(a1 + 16))
  {
    type metadata accessor for SingleValueGraphEncodingNode();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  type metadata accessor for SingleValueGraphEncodingNode();
  v12 = swift_allocObject();
  *(v12 + 16) = &outlined read-only object #0 of _TopLevelEncoder.singleValueContainer();
  *(a1 + 16) = v12;
  *(a1 + 24) = &protocol witness table for SingleValueGraphEncodingNode;

LABEL_5:
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v11;

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer;
  if (!lazy protocol witness table cache variable for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SingleValueEncodingContainer, &type metadata for _SingleValueEncodingContainer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SingleValueEncodingContainer and conformance _SingleValueEncodingContainer);
  }

  return result;
}

uint64_t _TopLevelEncoder.unkeyedContainer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for _UnkeyedEncodingContainer;
  a5[4] = lazy protocol witness table accessor for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer();
  v10 = swift_allocObject();
  *a5 = v10;
  if (*(a1 + 16))
  {
    type metadata accessor for UnkeyedGraphEncodingNode();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  type metadata accessor for UnkeyedGraphEncodingNode();
  v12 = swift_allocObject();
  *(v12 + 16) = &outlined read-only object #0 of _TopLevelEncoder.unkeyedContainer();
  *(a1 + 16) = v12;
  *(a1 + 24) = &protocol witness table for UnkeyedGraphEncodingNode;

LABEL_5:
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v11;

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _UnkeyedEncodingContainer, &type metadata for _UnkeyedEncodingContainer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UnkeyedEncodingContainer and conformance _UnkeyedEncodingContainer);
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = a4;
  return SingleValueGraphEncodingNode.setValue(to:)(v5);
}

uint64_t objectdestroy_4Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 40));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in XPCSession._setIncomingMessageHandler(_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9E80])
  {
    swift_unknownObjectRetain();
    v5 = xpc_dictionary_expects_reply();
    v6 = a1;
    a2(&v7, &v6);
    if (v7)
    {
      if (v5)
      {
        if (xpc_dictionary_expects_reply())
        {
          xpc_dictionary_send_reply_4SWIFT();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in XPCSession._setIncomingMessageHandler(_:)@<X0>(void **a1@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  swift_unknownObjectRetain_n();
  v6 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v5);
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = MEMORY[0x19A8E9F90](v6) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 17) = v7;
  v15[0] = v5;
  v15[1] = v8;
  a2(&v16, v15);
  if (v17)
  {
    outlined init with take of Encodable(&v16, v18);
    v9 = v19;
    v10 = v20;
    v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
    *&v16 = v5;
    *(&v16 + 1) = v8;
    XPCReceivedMessage.reply<A>(_:)(v11, v9, v10);

    swift_unknownObjectRelease();
    *a3 = 0;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    outlined destroy of Encodable?(&v16);
    if (xpc_dictionary_expects_reply() && (*(v8 + 17) & 1) != 0 && (*(v8 + 16) & 1) != 0)
    {
      v18[0] = xpc_dictionary_create_empty();
      MEMORY[0x1EEE9AC00](v18[0], v13);
      v14[2] = 0xD000000000000074;
      v14[3] = 0x8000000197938120;
      v14[4] = v18;
      specialized String.withCString<A>(_:)(partial apply for closure #1 in XPCDictionary.subscript.setter, v14, 0x656C6261646F435FLL, 0xED0000726F727245);
      swift_unknownObjectRetain();
      if (xpc_dictionary_expects_reply())
      {
        xpc_dictionary_send_reply_4SWIFT();
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    result = swift_unknownObjectRelease();
    *a3 = 0;
  }

  return result;
}

void *specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      value = xpc_dictionary_get_value(xdict, key);
      return value;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      value = xpc_dictionary_get_value(xdict, ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      return value;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pSgMd, "x ");
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return result;
}

__int128 *SerializedEncodingGraph.decode()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  *&v177 = *v0;
  *(&v177 + 1) = v2;
  if (v2 < 0)
  {
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    JUMPOUT(0x197903968);
  }

  *&v179 = v2;
  *(&v179 + 1) = v1;
  v180 = v2;
  v178 = v3;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_3XPC16DecodedContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for DecodedContainer();
  v6 = swift_allocObject();
  *(v6 + 2) = 0;
  xarray = v3;
  swift_unknownObjectRetain();

  if (!v2)
  {
    v9 = v6;
    goto LABEL_203;
  }

  v8 = v6;
  v6 = 0;
  v169 = 0;
  v170 = v8;
  v172 = v8;
  while (2)
  {
    if (v2 - v6 < 1)
    {
LABEL_201:
      v154 = 0x8000000197938940;
      lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
      swift_allocError();
      v156 = 0xD000000000000023;
    }

    else
    {
      v12 = v2 - (v6 + 1);
      if (v2 < v6 + 1)
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        v163 = v7;

        _StringGuts.grow(_:)(42);

        *&v173 = 0xD000000000000028;
        *(&v173 + 1) = 0x80000001979389F0;
        LOBYTE(v181) = v163;
        goto LABEL_225;
      }

      v13 = *(&v179 + 1);
      v7 = *(*(&v179 + 1) + *(&v180 + 1));
      *(&v178 + 1) = v6 + 1;
      v14 = *(&v180 + 1) + 1;
      if (__OFADD__(*(&v180 + 1), 1))
      {
        goto LABEL_223;
      }

      ++*(&v180 + 1);
      switch(specialized SerializedEncodingGraph.Tag.init(rawValue:)(v7))
      {
        case 1u:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v69 = *(v4 + 2);
          v68 = *(v4 + 3);
          if (v69 >= v68 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v69 + 1;
          v67 = &v4[32 * v69];
          *(v67 + 6) = 0;
          *(v67 + 4) = 1;
          goto LABEL_73;
        case 2u:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v66 = *(v4 + 2);
          v65 = *(v4 + 3);
          if (v66 >= v65 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v66 + 1;
          v67 = &v4[32 * v66];
          *(v67 + 6) = 0;
          *(v67 + 4) = 0;
LABEL_73:
          *(v67 + 5) = 0;
          v67[56] = 0;
          goto LABEL_7;
        case 3u:
          v111 = v5;
          v6 = &v177;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if (v113)
          {
            goto LABEL_207;
          }

          v114 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            goto LABEL_231;
          }

          v115 = v179;
          if (v179 - *(&v178 + 1) < v114)
          {
            goto LABEL_207;
          }

          v116 = *(&v180 + 1);
          if (__OFADD__(*(&v180 + 1), v112))
          {
            goto LABEL_240;
          }

          if (*(*(&v179 + 1) + *(&v180 + 1) + v112))
          {
            goto LABEL_207;
          }

          if (v114 < 0)
          {
            goto LABEL_242;
          }

          v117 = *(&v178 + 1) + v114;
          if (*(&v178 + 1) + v114 < *(&v178 + 1))
          {
            goto LABEL_243;
          }

          if (!*(&v179 + 1))
          {
            goto LABEL_248;
          }

          v118 = MEMORY[0x19A8E8E40](*(&v179 + 1) + *(&v178 + 1));
          if (!v119)
          {
LABEL_207:
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v159 = 0xD000000000000026;
            v159[1] = 0x8000000197938A80;
            swift_willThrow();

            goto LABEL_217;
          }

          v120 = v118;
          v121 = v119;
          if (v114)
          {
            if (v115 < v117)
            {
              goto LABEL_245;
            }

            *(&v178 + 1) = v117;
          }

          if (__OFADD__(v116, v114))
          {
            goto LABEL_244;
          }

          *(&v180 + 1) = v116 + v114;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v5 = v111;
          v123 = *(v4 + 2);
          v122 = *(v4 + 3);
          if (v123 >= v122 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v123 + 1;
          v124 = &v4[32 * v123];
          *(v124 + 4) = v120;
          *(v124 + 5) = v121;
          *(v124 + 6) = 0;
          v124[56] = 1;
          goto LABEL_7;
        case 4u:
          if (v12 < 4)
          {
            goto LABEL_206;
          }

          if (__OFADD__(v14, 1) || __OFADD__(v14, 2) || __OFADD__(v14, 3))
          {
            goto LABEL_230;
          }

          if (v2 < v6 + 5)
          {
            goto LABEL_232;
          }

          v103 = v5;
          v104 = *(v13 + v14 + 2);
          v105 = *(v13 + v14 + 1);
          v106 = *(v13 + v14);
          v107 = *(v13 + v14 + 3);
          *(&v178 + 1) = v6 + 5;
          if (__OFADD__(v14, 4))
          {
            goto LABEL_233;
          }

          *(&v180 + 1) = v14 + 4;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v109 = *(v4 + 2);
          v108 = *(v4 + 3);
          if (v109 >= v108 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v109 + 1;
          v110 = &v4[32 * v109];
          *(v110 + 5) = 0;
          *(v110 + 6) = 0;
          *(v110 + 4) = v106 | (v105 << 8) | (v104 << 16) | (v107 << 24);
          v110[56] = 2;
          v5 = v103;
          goto LABEL_7;
        case 5u:
          if (v12 < 8)
          {
            goto LABEL_209;
          }

          if (__OFADD__(v14, 1) || __OFADD__(v14, 2) || __OFADD__(v14, 3) || __OFADD__(v14, 4) || __OFADD__(v14, 5) || __OFADD__(v14, 6) || __OFADD__(v14, 7))
          {
            goto LABEL_228;
          }

          v70 = v6 + 9;
          if (v2 < v6 + 9)
          {
            goto LABEL_235;
          }

          v166 = *(v13 + v14 + 6);
          v168 = v5;
          v71 = *(v13 + v14 + 5);
          v72 = *(v13 + v14 + 4);
          v73 = *(v13 + v14 + 3);
          v74 = *(v13 + v14 + 2);
          v75 = *(v13 + v14 + 1);
          v76 = *(v13 + v14);
          v77 = *(v13 + v14 + 7);
          *(&v178 + 1) = v70;
          if (__OFADD__(v14, 8))
          {
            goto LABEL_237;
          }

          *(&v180 + 1) = v14 + 8;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v79 = *(v4 + 2);
          v78 = *(v4 + 3);
          v80 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v4);
            v80 = v79 + 1;
            v4 = v7;
          }

          *(v4 + 2) = v80;
          v81 = &v4[32 * v79];
          *(v81 + 5) = 0;
          *(v81 + 6) = 0;
          *(v81 + 4) = v76 | (v75 << 8) | (v74 << 16) | (v73 << 24) | (v72 << 32) | (v71 << 40) | (v166 << 48) | (v77 << 56);
          v82 = 3;
          goto LABEL_104;
        case 6u:
          if (v12 < 8)
          {
            goto LABEL_211;
          }

          if (__OFADD__(v14, 1) || __OFADD__(v14, 2) || __OFADD__(v14, 3) || __OFADD__(v14, 4) || __OFADD__(v14, 5) || __OFADD__(v14, 6) || __OFADD__(v14, 7))
          {
            __break(1u);
LABEL_228:
            __break(1u);
            goto LABEL_229;
          }

          v83 = v6 + 9;
          if (v2 < v6 + 9)
          {
            goto LABEL_234;
          }

          v167 = *(v13 + v14 + 6);
          v168 = v5;
          v84 = *(v13 + v14 + 5);
          v85 = *(v13 + v14 + 4);
          v86 = *(v13 + v14 + 3);
          v87 = *(v13 + v14 + 2);
          v88 = *(v13 + v14 + 1);
          v89 = *(v13 + v14);
          v90 = *(v13 + v14 + 7);
          *(&v178 + 1) = v83;
          if (__OFADD__(v14, 8))
          {
            goto LABEL_236;
          }

          *(&v180 + 1) = v14 + 8;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v92 = *(v4 + 2);
          v91 = *(v4 + 3);
          v93 = v92 + 1;
          if (v92 >= v91 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v4);
            v93 = v92 + 1;
            v4 = v7;
          }

          *(v4 + 2) = v93;
          v81 = &v4[32 * v92];
          *(v81 + 5) = 0;
          *(v81 + 6) = 0;
          *(v81 + 4) = v89 | (v88 << 8) | (v87 << 16) | (v86 << 24) | (v85 << 32) | (v84 << 40) | (v167 << 48) | (v90 << 56);
          v82 = 4;
LABEL_104:
          v81[56] = v82;
          v5 = v168;
          goto LABEL_7;
        case 7u:
          v6 = &v177;
          v61 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5();
          if ((v61 & 0x100) != 0)
          {
            goto LABEL_208;
          }

          v62 = v61;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v64 = *(v4 + 2);
          v63 = *(v4 + 3);
          if (v64 >= v63 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v64 + 1;
          v10 = &v4[32 * v64];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v62;
          v11 = 5;
          goto LABEL_6;
        case 8u:
          v6 = &v177;
          v98 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt16V_Tt0g5();
          if ((v98 & 0x10000) != 0)
          {
            goto LABEL_210;
          }

          v99 = v98;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v101 = *(v4 + 2);
          v100 = *(v4 + 3);
          if (v101 >= v100 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v101 + 1;
          v10 = &v4[32 * v101];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v99;
          v11 = 6;
          goto LABEL_6;
        case 9u:
          v6 = &v177;
          v37 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v37 & 0x100000000) != 0)
          {
            goto LABEL_206;
          }

          v38 = v37;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v40 = *(v4 + 2);
          v39 = *(v4 + 3);
          if (v40 >= v39 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v40 + 1;
          v41 = &v4[32 * v40];
          *(v41 + 5) = 0;
          *(v41 + 6) = 0;
          *(v41 + 4) = v38;
          v41[56] = 7;
          goto LABEL_7;
        case 0xAu:
          v6 = &v177;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if (v33)
          {
            goto LABEL_209;
          }

          v34 = v32;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v36 = *(v4 + 2);
          v35 = *(v4 + 3);
          if (v36 >= v35 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v36 + 1;
          v10 = &v4[32 * v36];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v34;
          v11 = 8;
          goto LABEL_6;
        case 0xBu:
          v6 = &v177;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if (v126)
          {
LABEL_211:
            v154 = 0x8000000197938B10;
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            v156 = 0xD000000000000024;
            break;
          }

          v127 = v125;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v129 = *(v4 + 2);
          v128 = *(v4 + 3);
          if (v129 >= v128 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v129 + 1;
          v10 = &v4[32 * v129];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v127;
          v11 = 9;
LABEL_6:
          v10[56] = v11;
LABEL_7:
          v6 = *(&v178 + 1);
          v2 = v179;
          if (*(&v178 + 1) != v179)
          {
            continue;
          }

          v9 = v172;
          v6 = v170;
LABEL_203:
          *(v9 + 2) = v4;

          if (v5[2])
          {
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v157 = 0xD000000000000020;
            v157[1] = 0x8000000197938B70;
            swift_willThrow();

LABEL_216:

LABEL_217:
            v173 = v177;
            v174 = v178;
            v175 = v179;
            v176 = v180;
            outlined destroy of BufferReader(&v173);
          }

          else
          {

            v173 = v177;
            v174 = v178;
            v175 = v179;
            v176 = v180;
            outlined destroy of BufferReader(&v173);
          }

          return v6;
        case 0xCu:
          v6 = &v177;
          v94 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5();
          if ((v94 & 0x100) != 0)
          {
            goto LABEL_208;
          }

          v95 = v94;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v97 = *(v4 + 2);
          v96 = *(v4 + 3);
          if (v97 >= v96 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v97 + 1;
          v10 = &v4[32 * v97];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v95;
          v11 = 10;
          goto LABEL_6;
        case 0xDu:
          v6 = &v177;
          v28 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt16V_Tt0g5();
          if ((v28 & 0x10000) == 0)
          {
            v29 = v28;
            LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
            if ((v7 & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
              v4 = v7;
            }

            v31 = *(v4 + 2);
            v30 = *(v4 + 3);
            if (v31 >= v30 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v4);
              v4 = v7;
            }

            *(v4 + 2) = v31 + 1;
            v10 = &v4[32 * v31];
            *(v10 + 5) = 0;
            *(v10 + 6) = 0;
            *(v10 + 4) = v29;
            v11 = 11;
            goto LABEL_6;
          }

LABEL_210:
          v158 = "Cannot read a valid UInt16 from buffer";
          goto LABEL_214;
        case 0xEu:
          v6 = &v177;
          v135 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v135 & 0x100000000) != 0)
          {
            goto LABEL_206;
          }

          v136 = v135;
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v138 = *(v4 + 2);
          v137 = *(v4 + 3);
          if (v138 >= v137 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v138 + 1;
          v10 = &v4[32 * v138];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = v136;
          v11 = 12;
          goto LABEL_6;
        case 0xFu:
          v6 = &v177;
          _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
          if ((v131 & 1) == 0)
          {
            v132 = v130;
            LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
            if ((v7 & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
              v4 = v7;
            }

            v134 = *(v4 + 2);
            v133 = *(v4 + 3);
            if (v134 >= v133 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v4);
              v4 = v7;
            }

            *(v4 + 2) = v134 + 1;
            v10 = &v4[32 * v134];
            *(v10 + 5) = 0;
            *(v10 + 6) = 0;
            *(v10 + 4) = v132;
            v11 = 13;
            goto LABEL_6;
          }

LABEL_209:
          v158 = "Cannot read a valid UInt64 from buffer";
          goto LABEL_214;
        case 0x10u:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v140 = *(v4 + 2);
          v139 = *(v4 + 3);
          if (v140 >= v139 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v140 + 1;
          v10 = &v4[32 * v140];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = 0;
          v11 = 14;
          goto LABEL_6;
        case 0x11u:
          v6 = &v177;
          BufferReader.read(_:)();
          if (v56)
          {
            v57 = v55;
            v58 = v56;
            LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
            if ((v7 & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
              v4 = v7;
            }

            v60 = *(v4 + 2);
            v59 = *(v4 + 3);
            if (v60 >= v59 >> 1)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v4);
              v4 = v7;
            }

            *(v4 + 2) = v60 + 1;
            v10 = &v4[32 * v60];
            *(v10 + 4) = v57;
            *(v10 + 5) = v58;
            *(v10 + 6) = 0;
            v11 = 14;
            goto LABEL_6;
          }

          v158 = "Cannot read a valid string from buffer";
          goto LABEL_214;
        case 0x12u:
          v6 = &v177;
          v17 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v17 & 0x100000000) != 0)
          {
            goto LABEL_206;
          }

          v18 = v17;
          v19 = xpc_array_get_value(xarray, v17);
          if (!v19)
          {

            _StringGuts.grow(_:)(37);

            *&v173 = 0xD000000000000023;
            *(&v173 + 1) = 0x8000000197938A20;
            v181 = v18;
            goto LABEL_225;
          }

          v20 = v19;
          v21 = swift_unknownObjectRetain();
          if (MEMORY[0x19A8E9F90](v21) != MEMORY[0x1E69E9E70])
          {

            swift_unknownObjectRelease();
            *&v173 = 0;
            *(&v173 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(44);
            MEMORY[0x19A8E8E70](0xD00000000000002ALL, 0x8000000197938A50);
            v181 = v20;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
            _print_unlocked<A, B>(_:_:)();
            v6 = 0xE000000000000000;
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v162 = v173;
            swift_willThrow();

            swift_unknownObjectRelease();
            goto LABEL_216;
          }

          bytes_ptr = xpc_data_get_bytes_ptr(v20);
          length = xpc_data_get_length(v20);
          swift_getObjectType();
          if (!OS_xpc_object.isCodable()())
          {
            goto LABEL_241;
          }

          v24 = xpc_copy(v20);
          if (!v24)
          {
            goto LABEL_247;
          }

          v25 = v24;
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
          }

          v27 = *(v4 + 2);
          v26 = *(v4 + 3);
          if (v27 >= v26 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v4);
          }

          LOBYTE(v7) = swift_unknownObjectRelease();
          *(v4 + 2) = v27 + 1;
          v10 = &v4[32 * v27];
          *(v10 + 4) = bytes_ptr;
          *(v10 + 5) = length;
          *(v10 + 6) = v25;
          v11 = 15;
          goto LABEL_6;
        case 0x13u:
          v6 = &v177;
          LOWORD(v7) = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5();
          if ((v7 & 0x100) == 0)
          {
            switch(v7)
            {
              case 0xAu:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                v102 = 0;
                if (v7)
                {
                  goto LABEL_189;
                }

                break;
              case 0xBu:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                v102 = 1;
                if (v7)
                {
                  v102 = 1;
                  goto LABEL_189;
                }

                break;
              case 0xCu:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                v102 = 2;
                if (v7)
                {
                  v102 = 2;
LABEL_189:
                  v148 = *(v4 + 2);
                  v147 = *(v4 + 3);
                  if (v148 >= v147 >> 1)
                  {
                    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v148 + 1, 1, v4);
                    v4 = v7;
                  }

                  *(v4 + 2) = v148 + 1;
                  v10 = &v4[32 * v148];
                  *(v10 + 5) = 0;
                  *(v10 + 6) = 0;
                  *(v10 + 4) = v102;
                  v11 = 16;
                  goto LABEL_6;
                }

                break;
              default:
                goto LABEL_224;
            }

            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
            goto LABEL_189;
          }

LABEL_208:
          v154 = 0x80000001979389C0;
          lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
          swift_allocError();
          v156 = 0xD000000000000025;
          goto LABEL_215;
        case 0x14u:
          v6 = &v177;
          v42 = _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5();
          if ((v42 & 0x100000000) == 0)
          {
            v43 = v42;
            if (!v5[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v42), (v44 & 1) == 0))
            {
              v45 = swift_allocObject();
              *(v45 + 16) = 0;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v173 = v5;
              v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
              v49 = v5[2];
              v50 = (v48 & 1) == 0;
              v51 = __OFADD__(v49, v50);
              v52 = v49 + v50;
              if (v51)
              {
                goto LABEL_238;
              }

              v53 = v48;
              if (v5[3] >= v52)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v149 = v47;
                  specialized _NativeDictionary.copy()();
                  v47 = v149;
                  v5 = v173;
                  if (v53)
                  {
                    goto LABEL_185;
                  }

                  goto LABEL_194;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
                v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
                if ((v53 & 1) != (v54 & 1))
                {
                  goto LABEL_249;
                }
              }

              v5 = v173;
              if (v53)
              {
LABEL_185:
                *(v5[7] + 8 * v47) = v45;

LABEL_196:
                LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
                if ((v7 & 1) == 0)
                {
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
                  v4 = v7;
                }

                v153 = *(v4 + 2);
                v152 = *(v4 + 3);
                if (v153 >= v152 >> 1)
                {
                  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v4);
                  v4 = v7;
                }

                *(v4 + 2) = v153 + 1;
                v10 = &v4[32 * v153];
                *(v10 + 4) = v45;
                *(v10 + 5) = &protocol witness table for DecodedContainer;
                *(v10 + 6) = 0;
                v11 = 17;
                goto LABEL_6;
              }

LABEL_194:
              v5[(v47 >> 6) + 8] |= 1 << v47;
              *(v5[6] + 4 * v47) = v43;
              *(v5[7] + 8 * v47) = v45;
              v150 = v5[2];
              v51 = __OFADD__(v150, 1);
              v151 = v150 + 1;
              if (v51)
              {
                goto LABEL_246;
              }

              v5[2] = v151;
              goto LABEL_196;
            }

            _StringGuts.grow(_:)(31);

            *&v173 = 0xD00000000000001DLL;
            *(&v173 + 1) = 0x80000001979389A0;
            LODWORD(v181) = v43;
LABEL_225:
            v164 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x19A8E8E70](v164);

            v6 = *(&v173 + 1);
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v165 = v173;
            swift_willThrow();
            goto LABEL_226;
          }

LABEL_206:
          v158 = "Cannot read a valid UInt32 from buffer";
LABEL_214:
          v154 = (v158 - 32) | 0x8000000000000000;
          lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
          swift_allocError();
          v156 = 0xD000000000000026;
          break;
        case 0x15u:
          *(v172 + 2) = v4;

          if (!v5[2] || (v6 = v5, v141 = specialized __RawDictionaryStorage.find<A>(_:)(v169), (v142 & 1) == 0))
          {
            lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
            swift_allocError();
            *v160 = 0xD000000000000022;
            v160[1] = 0x8000000197938B40;
            swift_willThrow();
LABEL_226:

            goto LABEL_216;
          }

          v143 = *(v5[7] + 8 * v141);
          v144 = specialized __RawDictionaryStorage.find<A>(_:)(v169);
          v146 = v145;

          if (v146)
          {
            *&v173 = v5;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              specialized _NativeDictionary.copy()();
              v5 = v173;
            }

            specialized _NativeDictionary._delete(at:)(v144, v5);
          }

          if (v169 == -1)
          {
            goto LABEL_239;
          }

          ++v169;
          v172 = v143;
          v4 = MEMORY[0x1E69E7CC0];
          goto LABEL_7;
        case 0x16u:
          goto LABEL_201;
        default:
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          if ((v7 & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            v4 = v7;
          }

          v16 = *(v4 + 2);
          v15 = *(v4 + 3);
          if (v16 >= v15 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
            v4 = v7;
          }

          *(v4 + 2) = v16 + 1;
          v10 = &v4[32 * v16];
          *(v10 + 5) = 0;
          *(v10 + 6) = 0;
          *(v10 + 4) = 0;
          v11 = 18;
          goto LABEL_6;
      }
    }

    break;
  }

LABEL_215:
  *v155 = v156;
  v155[1] = v154;
  swift_willThrow();

  goto LABEL_216;
}

uint64_t XPCSession.sendSync(message:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v13[0] = 0;
  v5 = _swift_xpc_session_send_message_with_reply_sync(*(v2 + 16), v4, v13);
  if (v5)
  {
    v6 = v5;
    v7 = swift_unknownObjectRetain();
    v8 = MEMORY[0x19A8E9F90](v7);
    swift_unknownObjectRelease();
    if (v8 != MEMORY[0x1E69E9E80])
    {
      __break(1u);
    }

    *a2 = v6;
  }

  else
  {
    if (!v13[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)(0xD000000000000018, 0x8000000197937FD0, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
    }

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v10 = v9;
    v11 = swift_unknownObjectRetain_n();
    XPCRichError.init(_:)(v11, v10);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id _swift_xpc_session_send_message_with_reply_sync(void *a1, void *a2, xpc_rich_error_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = xpc_session_send_message_with_reply_sync(v5, v6, a3);

  return v7;
}

uint64_t XPCSession.sendSync<A>(_:)@<X0>(uint64_t a2@<X1>, void *x8_0@<X8>)
{
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(v7, 1, a2, &v10);

  if (!v4)
  {
    v9 = v10;
    XPCSession.sendSync(message:)(&v9, &v10);
    XPCReceivedMessage.init(dictionary:)(&v10, x8_0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _KeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v27 = a6;
  v25 = a4;
  *&v26 = a5;
  v28 = a1;
  v29 = a10;
  v14 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a7, a9, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - v17;
  v19 = *(a7 - 8);
  (*(v19 + 16))(&v24 - v17, a2, a7);
  (*(v19 + 56))(v18, 0, 1, a7);
  _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(&type metadata for _TopLevelEncoder, v18, a8, a3, v25, v26, v27, a7, &type metadata for _TopLevelEncoder, a9, &protocol witness table for _TopLevelEncoder);
  (*(v15 + 8))(v18, v14);
  v20 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v26 = v31;
  v27 = v30;
  *(&v31 + 1) = &type metadata for _TopLevelEncoder;
  v32 = v20;
  v21 = swift_allocObject();
  *&v30 = v21;
  v22 = v26;
  *(v21 + 16) = v27;
  *(v21 + 32) = v22;
  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_197903EE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _TopLevelEncoder@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  type metadata accessor for TopLevelGraphEncodingNode();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    __break(1u);
LABEL_4:
    v11 = a5;
    type metadata accessor for TopLevelGraphEncodingNode();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v11;
  }

  *a6 = result;
  a6[1] = a1;
  a6[2] = a2;
  a6[3] = a3;
  return result;
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)(a1, a2);
    v19 = v18;

    a2 = v19;
  }

  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = 0;
  v22 = 1;
  _KeyedEncodingContainer._encode(_:forKey:)(&v20, a3, a4, a5, a6, a7, a8, a9);
  return outlined consume of EncodingGraph.Value(v20, *(&v20 + 1), v21, v22);
}

uint64_t _KeyedEncodingContainer._encode(_:forKey:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 2);
  v9 = *(a1 + 24);
  v17 = *a1;
  v18 = v8;
  v19 = v9;
  v10 = dispatch thunk of CodingKey.stringValue.getter();
  v12 = v10;
  v13 = v11;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v12 = static String._copying(_:)(v10, v11);
    v16 = v15;

    v13 = v16;
  }

  _KeyedEncodingContainer._encode(_:forKey:)(&v17, v12, v13);
}

uint64_t outlined consume of EncodingGraph.Value?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return outlined consume of EncodingGraph.Value(result, a2, a3, a4);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs6UInt32VGMd, &_ss18_DictionaryStorageCySOs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t partial apply for closure #1 in SerializedEncodingGraph.init(of:)(uint64_t result, uint64_t a2, void *a3)
{
  if (*(v3 + 16) != result)
  {
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }

  return result;
}

unint64_t XPCBufferWriter.advance(by:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    v2 = v1[3];
    if (!result || (v4 = v1[3], v2 - v3 >= result))
    {
      v4 = v3 + result;
      if (v2 < (v3 + result))
      {
        goto LABEL_9;
      }
    }

    v1[2] = v4;
    v5 = v1[6];
    v6 = __OFADD__(v5, result);
    v7 = v5 + result;
    if (!v6)
    {
      v1[6] = v7;
      return result;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, void **a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v8 = MEMORY[0x19A8E9F90](a3);
      v9 = MEMORY[0x1E69E9E68];
      v10 = *a4;
      v11 = (v7 + 32);
      goto LABEL_6;
    }

LABEL_10:
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  *key = a1;
  v14 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = MEMORY[0x19A8E9F90](a3);
  v9 = MEMORY[0x1E69E9E68];
  v10 = *a4;
  v11 = key;
LABEL_6:
  if (v8 == v9)
  {
    xpc_dictionary_set_connection(v10, v11, a3);
  }

  else
  {
    xpc_dictionary_set_value(v10, v11, a3);
  }

  return swift_unknownObjectRelease();
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a2, uint64_t a3, void **a4, xpc_object_t value)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    *key = a2;
    v10 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = *a4;
    v7 = key;
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  v6 = *a4;
  v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  xpc_dictionary_set_value(v6, v7, value);
  return swift_unknownObjectRelease();
}

uint64_t TopLevelGraphEncodingNode.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _KeyedGraphEncodingNode.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2Sm_xts0C5ErrorOYKF(a1, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24), v10);
  if (v3)
  {
    v12 = result;
    swift_allocError();
    (*(v7 + 32))(v13, v10, v6);
    return v12;
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2Sm_xts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v32 = a7;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v31 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - v20;
  v22 = a1;
  v23 = a5;
  v25 = v32;
  v24 = v33;
  v30 = a6;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v22, a4, v23, a6, v32, &v29 - v20, &v38);
  if (v24)
  {
    (*(v15 + 32))(v41, v21, v14);
  }

  else
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    v34[3] = type metadata accessor for _KeyedDecodingContainer(0, v30, v25, v26);
    v34[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v27 = swift_allocObject();
    v34[0] = v27;
    v27[2] = a2;
    v27[3] = a3;
    v27[4] = a4;
    v27[5] = v23;

    a6 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(v34, v31);
    outlined consume of EncodingGraph.Value(v35, *(&v35 + 1), v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return a6;
}

uint64_t _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A855175LL6forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v29[6] = a2;
  v13 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a3 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = *(a3 + 56) + 32 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *a7 = *v18;
      *(a7 + 8) = v20;
      *(a7 + 16) = v21;
      v22 = *(v18 + 24);
      *(a7 + 24) = v22;
      return outlined copy of EncodingGraph.Value(v19, v20, v21, v22);
    }
  }

  else
  {
  }

  v29[3] = a4;
  v29[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v26 = type metadata accessor for _KeyedDecodingContainer(0, a4, a5, v25);
  _DecodingContainer.codingPath.getter(v26, &protocol witness table for _KeyedDecodingContainer<A>);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd, &_ss9CodingKey_p_s13DecodingErrorO7ContextVtMR);
  outlined init with copy of Decoder(v29, a6);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v27 = *MEMORY[0x1E69E6AF0];
  v28 = type metadata accessor for DecodingError();
  (*(*(v28 - 8) + 104))(a6, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return swift_willThrowTypedImpl();
}

uint64_t objectdestroyTm()
{

  outlined consume of EncodingGraph.Value(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 40));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroyTm_1(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A855175LL6forKeyAA13EncodingGraphO5ValueOAA01_boD0V01_d6CodingN0Oyx_G_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v31 = a6;
  v12 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a4, a5, a2);
  v13 = _KeyedEncodingContainer._ContainerCodingKey.encodingGraphKey.getter(v12);
  if (*(a3 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = *(a3 + 56) + 32 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *a7 = *v18;
      *(a7 + 8) = v20;
      *(a7 + 16) = v21;
      v22 = *(v18 + 24);
      *(a7 + 24) = v22;
      return outlined copy of EncodingGraph.Value(v19, v20, v21, v22);
    }
  }

  else
  {
  }

  v30[3] = v12;
  v30[4] = swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>._ContainerCodingKey, v12);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a1, v12);
  v26 = type metadata accessor for _KeyedDecodingContainer(0, a4, a5, v25);
  _DecodingContainer.codingPath.getter(v26, &protocol witness table for _KeyedDecodingContainer<A>);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd, &_ss9CodingKey_p_s13DecodingErrorO7ContextVtMR);
  v27 = v31;
  outlined init with copy of Decoder(v30, v31);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v28 = *MEMORY[0x1E69E6AF0];
  v29 = type metadata accessor for DecodingError();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return swift_willThrowTypedImpl();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in XPCListener.IncomingSessionRequest.accept<A>(_:)(__int128 *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return (*(v2 + 24))(&v4);
}

const char *specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = key;
LABEL_6:
      result = xpc_dictionary_get_string(xdict, v4);
      if (result)
      {
        return String.init(cString:)();
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t XPCReceivedMessage.decode<A>(as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  XPCReceivedMessage.decode<A>(as:userInfo:)(a1, v8, a2, a3, a4);
}

uint64_t XPCReceivedMessage.decode<A>(as:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *v5;

  swift_unknownObjectRetain();
  v13 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xED0000726F727245, v12);
  v15 = v14;
  swift_unknownObjectRelease();
  if (v15)
  {

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    *v16 = 0;
    return swift_willThrow();
  }

  v43 = a5;
  v44 = a4;
  v17 = _s3XPC13XPCDictionaryV_2asxSgSS_xmtcSzRzluigs5Int64V_Tt1B5(0xD000000000000014, 0x8000000197938DB0, v12);
  if ((v18 & 1) != 0 || v17 != 1)
  {

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v28 = a1;
LABEL_13:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6B08], v26);
    return swift_willThrow();
  }

  swift_unknownObjectRetain();
  v19 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEC00000079646F42, v12);
  swift_unknownObjectRelease();
  v20 = a1;
  if (!v19)
  {
LABEL_12:

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v28 = a1;
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  specialized String.withCString<A>(_:)(&v46, v12, 0xD000000000000011, 0x8000000197938E50);
  v21 = v46;
  if (!v46)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v22 = swift_unknownObjectRetain();
  XPCData.init(underlyingData:)(v22, &v46);
  if (v47)
  {
    v48 = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v23 = SerializedEncodingGraph.decode()();
    if (v6)
    {
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v23;
      v34 = v24;
      swift_unknownObjectRetain();
      specialized String.withCString<A>(_:)(&v46, v12, 0xD00000000000001FLL, 0x8000000197938EA0);
      v35 = v46;
      if (v46)
      {
        v36 = a2;
        if (one-time initialization token for xpcCodable != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for CodingUserInfoKey();
        v38 = __swift_project_value_buffer(v37, static CodingUserInfoKey.xpcCodable);
        v48 = &type metadata for XPCArray;
        *&v46 = v35;
        outlined init with take of Any(&v46, v45);
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v36;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v38, isUniquelyReferenced_nonNull_native);
        v49 = MEMORY[0x1E69E7CC0];
        v50 = v54;
        v51 = a3;
        v52 = v33;
        v53 = v34;
        swift_unknownObjectRetain();
        _TopLevelDecoder.decode<A>(_:)(a3, v44, v43);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {

        v40 = type metadata accessor for DecodingError();
        swift_allocError();
        v42 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
        *v42 = v20;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6B08], v40);
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease_n();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v32 = a1;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6B08], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

int64_t _s3XPC13XPCDictionaryV_2asxSgSS_xmtcSzRzluigs5Int64V_Tt1B5(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v6 = specialized String.withCString<A>(_:)(a1, a2, a3);
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = MEMORY[0x19A8E9F90](v6);
    if (v7 == MEMORY[0x1E69E9EB0])
    {
      value = xpc_int64_get_value(v6);
      swift_unknownObjectRelease();
      return value;
    }

    if (v7 == MEMORY[0x1E69E9F18])
    {
      v10 = xpc_uint64_get_value(v6);
      swift_unknownObjectRelease();
      return v10 & ~(v10 >> 63);
    }

    if (v7 == MEMORY[0x1E69E9E88])
    {
      v11.n128_f64[0] = xpc_double_get_value(v6);
      v12 = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5(&v13, v11);
      swift_unknownObjectRelease();
      if (v12 && (v14 & 1) == 0)
      {
        return v13;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t *specialized String.withCString<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, xpc_object_t xdict@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC8XPCArrayVSgMd, &_s3XPC8XPCArrayVSgMR);
    _StringGuts._slowWithCString<A>(_:)();
    return swift_unknownObjectRelease();
  }

  v6 = xpc_dictionary_get_array(xdict, ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  a3 = MEMORY[0x19A8E9F90](v6);
  if (a3 == MEMORY[0x1E69E9E50])
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  *key = a3;
  v11 = a4 & 0xFFFFFFFFFFFFFFLL;
  v8 = xpc_dictionary_get_array(xdict, key);
  v7 = v8;
  if (!v8 || (result = MEMORY[0x19A8E9F90](v8), result == MEMORY[0x1E69E9E50]))
  {
LABEL_9:
    *a1 = v7;
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_3XPC16DecodedContainerCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMd, &_ss18_DictionaryStorageCys6UInt32V3XPC16DecodedContainerCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SerializedEncodingGraph.Tag.init(rawValue:)(uint64_t result)
{
  if (result >= 0x16u)
  {
    return 22;
  }

  else
  {
    return result;
  }
}

uint64_t _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs5UInt8V_Tt0g5()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2 - v1;
  if (v2 - v1 < 1)
  {
    v6 = 0;
    return v6 | ((v3 < 1) << 8);
  }

  v4 = v1 + 1;
  if (v2 < v1 + 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    v6 = *(v0[5] + v5);
    v0[3] = v4;
    if (!__OFADD__(v5, 1))
    {
      v0[7] = v5 + 1;
      return v6 | ((v3 < 1) << 8);
    }
  }

  __break(1u);
  return result;
}

void BufferReader.read(_:)()
{
  _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm();
  if ((v2 & 1) == 0)
  {
    v3 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v4 = v0[3];
      if (v0[4] - v4 < v3)
      {
        return;
      }

      v5 = v0[7];
      v6 = v5 + v1;
      if (!__OFADD__(v5, v1))
      {
        v7 = v0[5];
        if (*(v7 + v6))
        {
          return;
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          if (v4 + v3 >= v4)
          {
            if (v7)
            {
              MEMORY[0x19A8E8E40](v7 + v4);
              if (v8)
              {
                BufferReader.advance(by:)(v3);
              }

              return;
            }

LABEL_16:
            __break(1u);
            return;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }
}

void _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFSu_Tt0g5Tm()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v2 - v1 > 7)
  {
    v3 = v0[7];
    if (__OFADD__(v3, 1) || __OFADD__(v3, 2) || __OFADD__(v3, 3) || __OFADD__(v3, 4) || __OFADD__(v3, 5) || __OFADD__(v3, 6) || __OFADD__(v3, 7))
    {
      __break(1u);
    }

    else if (v2 >= v1 + 8)
    {
      v0[3] = v1 + 8;
      v4 = __OFADD__(v3, 8);
      v5 = v3 + 8;
      if (!v4)
      {
        v0[7] = v5;
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

unint64_t BufferReader.advance(by:)(unint64_t result)
{
  if (!result)
  {
LABEL_6:
    v5 = v1[7];
    v6 = __OFADD__(v5, result);
    v7 = v5 + result;
    if (!v6)
    {
      v1[7] = v7;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1[3];
  v3 = v1[4];
  if (v3 - v2 >= result)
  {
    v4 = v2 + result;
    if (v3 < v4)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v1[3] = v4;
    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt32V_Tt0g5()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2 - v1;
  if (v2 - v1 <= 3)
  {
    v4 = 0;
    return v4 | ((v3 < 4) << 32);
  }

  v5 = v0[7];
  if (__OFADD__(v5, 1) || __OFADD__(v5, 2) || __OFADD__(v5, 3))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v1 + 4;
  if (v2 < v1 + 4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v0[5];
  v8 = *(v7 + v5 + 2);
  v9 = *(v7 + v5 + 1);
  v10 = *(v7 + v5);
  v11 = *(v7 + v5 + 3);
  v0[3] = v6;
  v12 = v5 + 4;
  if (!__OFADD__(v5, 4))
  {
    v4 = v10 | (v9 << 8) | (v8 << 16) | (v11 << 24);
    v0[7] = v12;
    return v4 | ((v3 < 4) << 32);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x19A8E95E0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t _TopLevelDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a2;
  v38 = a3;
  v5 = type metadata accessor for DecodingError();
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Optional();
  v36 = *(v10 - 8);
  v37 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v34 - v13;
  v39 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v21 = *v3;
  v20 = *(v3 + 8);
  v22 = *v3;
  v35 = a1;
  v23 = v42;
  _s3XPC13EncodingGraphO9ContainerPAAE18tryDecodeAsXPCData_2atqd__Sgqd__m_Says9CodingKey_pGts13DecodingErrorOYKSeRd__lF(a1, v22, ObjectType, a1, v18, v9, v14);
  if (v23)
  {
    v24 = v40;
    swift_allocError();
    return (*(v41 + 32))(v25, v9, v24);
  }

  else
  {
    v41 = v20;
    v42 = v21;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v35;
    if ((*(v39 + 48))(v14, 1, v35) == 1)
    {
      (*(v27 + 8))(v14, v28);
      v48 = v41;
      v46 = &type metadata for _TopLevelDecoder;
      v47 = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
      v31 = swift_allocObject();
      v45 = v31;
      v32 = *(v3 + 16);
      *(v31 + 16) = *v3;
      *(v31 + 32) = v32;
      *(v31 + 48) = *(v3 + 32);

      outlined init with copy of [CodingUserInfoKey : Any](&v48, v44);
      swift_unknownObjectRetain();
      return dispatch thunk of Decodable.init(from:)();
    }

    else
    {
      v33 = *(v39 + 32);
      v33(v17, v14, v30);
      return v33(v29, v17, v30);
    }
  }
}

uint64_t _s3XPC13EncodingGraphO9ContainerPAAE18tryDecodeAsXPCData_2atqd__Sgqd__m_Says9CodingKey_pGts13DecodingErrorOYKSeRd__lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X6>, void *a7@<X8>)
{
  v54 = a2;
  v52 = a1;
  v12 = type metadata accessor for Optional();
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v48 - v15;
  EncodingGraph.Container.maybeFoundationData.getter(a3, a5, &v58);
  if (!v59)
  {
    return (*(*(a4 - 8) + 56))(a7, 1, 1, a4);
  }

  v48 = a7;
  v53 = v59;
  v49 = *(&v58 + 1);
  v17 = v58;
  v50 = a6;
  v18 = swift_conformsToProtocol2();
  if (!v18 || !a4)
  {
    result = (*(a5 + 8))(a3, a5);
    if (*(result + 16) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v32 = *(result + 64);
    v33 = *(result + 72);
    v34 = *(result + 80);
    v35 = *(result + 88);
    outlined copy of EncodingGraph.Value(v32, v33, v34, v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    v36 = v50;
    *v50 = v52;
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(16);
    v55 = v58;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v58 = v32;
    *(&v58 + 1) = v33;
    v59 = v34;
    v60 = v35;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    outlined consume of EncodingGraph.Value(v32, v33, v34, v35);
    v37 = *MEMORY[0x1E69E6AF8];
    v38 = type metadata accessor for DecodingError();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v20 = v18;
  v52 = v17;
  v61 = v53;
  v21 = *(v18 + 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v13 + 15;
  v24 = v23;
  v25 = &v48 - (v22 & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  v21(&v61, a4, v20);
  v26 = *(a4 - 8);
  if ((*(v26 + 48))(v25, 1, a4) == 1)
  {
    (*(v51 + 8))(v25, v12);
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v55 = v58;
    MEMORY[0x19A8E8E70](0xD000000000000015, 0x8000000197938BA0);
    v27 = _typeName(_:qualified:)();
    MEMORY[0x19A8E8E70](v27);

    MEMORY[0x19A8E8E70](0x206D6F726620, 0xE600000000000000);
    *&v58 = v52;
    *(&v58 + 1) = v49;
    v59 = v24;
    _print_unlocked<A, B>(_:_:)();

    v28 = v50;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v29 = *MEMORY[0x1E69E6B00];
    v30 = type metadata accessor for DecodingError();
    (*(*(v30 - 8) + 104))(v28, v29, v30);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v56 = a4;
  v57 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
  v40 = *(v26 + 32);
  v40(boxed_opaque_existential_1, v25, a4);
  outlined init with take of Encodable(&v55, &v58);
  outlined init with copy of Decoder(&v58, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC29XPCCodableObjectRepresentable_pMd, &_s3XPC29XPCCodableObjectRepresentable_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v58);
    swift_unknownObjectRelease();
    v41 = *(v26 + 56);
    v41(v16, 0, 1, a4);
    v42 = v48;
    v40(v48, v16, a4);
    return (v41)(v42, 0, 1, a4);
  }

  else
  {
    (*(v26 + 56))(v16, 1, 1, a4);
    (*(v51 + 8))(v16, v12);
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&v55 = 0xD00000000000001ELL;
    *(&v55 + 1) = 0x8000000197938BC0;
    v43 = _typeName(_:qualified:)();
    MEMORY[0x19A8E8E70](v43);

    MEMORY[0x19A8E8E70](544175136, 0xE400000000000000);
    v44 = _typeName(_:qualified:)();
    MEMORY[0x19A8E8E70](v44);

    v45 = v50;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v46 = *MEMORY[0x1E69E6B00];
    v47 = type metadata accessor for DecodingError();
    (*(*(v47 - 8) + 104))(v45, v46, v47);
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v58);
  }
}

uint64_t EncodingGraph.Container.maybeFoundationData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6() + 16);

  if (v7 != 2)
  {
    goto LABEL_10;
  }

  result = (v6)(a1, a2);
  if (*(result + 16))
  {
    v9 = *(result + 32);
    v10 = *(result + 48);
    v11 = *(result + 56);
    v20 = *(result + 40);
    outlined copy of EncodingGraph.Value(v9, v20, v10, v11);

    if (v11 != 16)
    {
      v16 = v9;
      v17 = v20;
      v18 = v10;
      v19 = v11;
LABEL_9:
      result = outlined consume of EncodingGraph.Value(v16, v17, v18, v19);
      goto LABEL_10;
    }

    if (v9 != 1)
    {
LABEL_10:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }

    result = (v6)(a1, a2);
    if (*(result + 16) >= 2uLL)
    {
      v12 = *(result + 64);
      v13 = *(result + 72);
      v14 = *(result + 80);
      v15 = *(result + 88);
      outlined copy of EncodingGraph.Value(v12, v13, v14, v15);

      if (v15 == 15)
      {
        *a3 = v12;
        a3[1] = v13;
        a3[2] = v14;
        return result;
      }

      v16 = v12;
      v17 = v13;
      v18 = v14;
      v19 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for EncodingGraph.Container.values.getter in conformance DecodedContainer()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder()
{
  result = lazy protocol witness table cache variable for type _TopLevelDecoder and conformance _TopLevelDecoder;
  if (!lazy protocol witness table cache variable for type _TopLevelDecoder and conformance _TopLevelDecoder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TopLevelDecoder, &type metadata for _TopLevelDecoder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TopLevelDecoder and conformance _TopLevelDecoder);
  }

  return result;
}

void *_TopLevelDecoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _KeyedDecodingContainer(0, a2, a3, a4);
  result = _TopLevelDecoder._container<A>(_:)(v5, &protocol witness table for _KeyedDecodingContainer<A>, v7);
  if (!v4)
  {
    swift_getWitnessTable(protocol conformance descriptor for _KeyedDecodingContainer<A>, v5, v7[0], v7[1]);
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t _TopLevelDecoder._container<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = type metadata accessor for DecodingError();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v3[1];
  v13 = v3[2];
  v12 = v3[3];
  v14 = v3[4];
  v15 = *(a2 + 16);

  swift_unknownObjectRetain();
  v16 = v10;
  v17 = v25;
  result = v15(v16, v11, v13, v12, v14, v9, a1, a2);
  if (v17)
  {
    v19 = v23;
    swift_allocError();
    return (*(v22 + 32))(v20, v9, v19);
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV16decodeDictionary33_75B0D857E5E60FECD69B41037A855175LL4from2atSDyAA13EncodingGraphO3KeyOAI5ValueOGSayAMG_Says06CodingR0_pGts0C5ErrorOYKFZ(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = a1[1].n128_u64[0];
  if ((v8 & 1) == 0)
  {

    _StringGuts.grow(_:)(62);
    MEMORY[0x19A8E8E70](0xD00000000000001ELL, 0x8000000197938660);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8E8E70](v9);

    MEMORY[0x19A8E8E70](0xD00000000000001ELL, 0x8000000197938680);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v10 = *MEMORY[0x1E69E6B00];
    v7 = type metadata accessor for DecodingError();
    (*(*(v7 - 8) + 104))(a5, v10, v7);
    swift_willThrowTypedImpl();
    return v7;
  }

  if (v8 == 1)
  {
    return v7;
  }

  v53 = a5;
  v11 = (v8 - 1) >> 1;
  v12 = v8 >> 1;
  v13 = a1 + 4;
  while (v12)
  {
    if (!v11)
    {
      goto LABEL_28;
    }

    v19 = *v13;
    v20 = v13[1].n128_i64[0];
    v21 = v13[1].n128_u8[8];
    v22 = v13[2].n128_i64[0];
    v23 = v13[2].n128_i64[1];
    v24 = v13[3].n128_i64[0];
    v25 = v13[3].n128_u8[8];
    v26 = v13->n128_i64[1];
    v59 = v23;
    v60 = v22;
    if (v21 != 14)
    {
      v43 = v13[2].n128_i64[1];
      v44 = v19.n128_u64[0];
      v45 = v20;
      outlined copy of EncodingGraph.Value(v19.n128_i64[0], v26, v20, v21);
      outlined copy of EncodingGraph.Value(v22, v43, v24, v25);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v7 = *MEMORY[0x1E69E6B00];
      v46 = type metadata accessor for DecodingError();
      (*(*(v46 - 8) + 104))(v53, v7, v46);
      swift_willThrowTypedImpl();
      outlined consume of EncodingGraph.Value(v44, v26, v45, v21);
      v48 = v59;
      v47 = v22;
      v49 = v24;
      v50 = v25;
LABEL_25:
      outlined consume of EncodingGraph.Value(v47, v48, v49, v50);
      return v7;
    }

    v56 = v12;
    v57 = *v13;
    v27 = v13->n128_u64[0];
    v58 = v13[1].n128_i64[0];
    outlined copy of EncodingGraph.Value(v19.n128_i64[0], v26, v20, 0xEu);
    if (v25 == 14)
    {
      outlined copy of EncodingGraph.Value(v22, v23, v24, 0xEu);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v7 = *MEMORY[0x1E69E6B00];
      v51 = type metadata accessor for DecodingError();
      (*(*(v51 - 8) + 104))(v53, v7, v51);
      swift_willThrowTypedImpl();
      outlined consume of EncodingGraph.Value(v27, v26, v58, 0xEu);
      v47 = v22;
      v48 = v23;
      v49 = v24;
      v50 = 14;
      goto LABEL_25;
    }

    v54 = v11;
    outlined copy of EncodingGraph.Value(v22, v23, v24, v25);
    outlined copy of EncodingGraph.Value(v27, v26, v58, 0xEu);
    v55 = v24;
    outlined copy of EncodingGraph.Value(v22, v23, v24, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
    v31 = *(v7 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_29;
    }

    v34 = v29;
    if (*(v7 + 24) >= v33)
    {
      v38 = v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v58;
        if (v29)
        {
          goto LABEL_5;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v38 = v57;
        v37 = v58;
        if (v34)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_31;
      }

      v30 = v35;
      v37 = v58;
      v38 = v57;
      if (v34)
      {
LABEL_5:
        outlined consume of EncodingGraph.Value(v27, v26, v37, 0xEu);
        v14 = *(v7 + 56) + 32 * v30;
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        *v14 = v60;
        *(v14 + 8) = v59;
        *(v14 + 16) = v55;
        v18 = *(v14 + 24);
        *(v14 + 24) = v25;
        outlined consume of EncodingGraph.Value(v15, v16, v17, v18);
        outlined consume of EncodingGraph.Value(v60, v59, v55, v25);
        outlined consume of EncodingGraph.Value(v27, v26, v37, 0xEu);
        goto LABEL_6;
      }
    }

    *(v7 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    *(*(v7 + 48) + 16 * v30) = v38;
    v39 = *(v7 + 56) + 32 * v30;
    *v39 = v60;
    *(v39 + 8) = v59;
    *(v39 + 16) = v55;
    *(v39 + 24) = v25;
    outlined consume of EncodingGraph.Value(v60, v59, v55, v25);
    outlined consume of EncodingGraph.Value(v27, v26, v37, 0xEu);
    v40 = *(v7 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    *(v7 + 16) = v42;
LABEL_6:
    v12 = v56 - 1;
    v13 += 4;
    --v11;
    if (v54 == 1)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v51 = a3;
  v52 = a9;
  v53 = a1;
  v58 = a13;
  v62 = a11;
  v56 = type metadata accessor for DecodingError();
  v19 = *(v56 - 8);
  v21 = MEMORY[0x1EEE9AC00](v56, v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v45 - v25;
  v50 = a2;
  v54 = a4;
  v55 = a5;
  v27 = v57;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOAA01_boD0V01_d6CodingN0Oyx_G_ts0C5ErrorOYKF(a2, a6, a7, a8, v62, &v45 - v25, v59);
  if (v27)
  {
    return (*(v19 + 32))(v58, v26, v56);
  }

  v48 = a7;
  v57 = a6;
  v47 = v23;
  v49 = v19;
  v29 = v59[0];
  v30 = v59[1];
  v31 = v59[2];
  v32 = v60;
  v33 = _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF();
  v35 = v34;
  LODWORD(v48) = v32;
  v45 = v29;
  v46 = v30;
  v53 = v31;
  v36 = v33;
  v38 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a8, v62, v37);
  v60 = v38;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>._ContainerCodingKey, v38);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(v38 - 8) + 16))(boxed_opaque_existential_1, v50, v38);
  v40 = CodingInfo.coding(forKey:forType:)(v59, v51, v54, v55);
  v42 = v41;
  v44 = v43;
  outlined destroy of [CodingKey](v59, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
  (*(a12 + 16))(v40, v42, v44, v36, v35, v47, a10, a12);
  return outlined consume of EncodingGraph.Value(v45, v46, v53, v48);
}

uint64_t _KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v35 = a5;
  v31 = a7;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v29 = a8;
  v12 = type metadata accessor for DecodingError();
  v30 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a6, a9, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v28 - v20;
  v22 = *(a6 - 8);
  (*(v22 + 16))(&v28 - v20, a1, a6);
  (*(v22 + 56))(v21, 0, 1, a6);
  v23 = v31;
  v24 = v36;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _TopLevelDecoder, v21, v31, v32, v33, v34, v35, a6, v37, &type metadata for _TopLevelDecoder, a9, &protocol witness table for _TopLevelDecoder, v15);
  (*(v18 + 8))(v21, v17);
  if (v24)
  {
    swift_allocError();
    return (*(v30 + 32))(v25, v15, v12);
  }

  else
  {
    v39 = v37[0];
    v40 = v37[1];
    v41 = v38;
    _TopLevelDecoder.decode<A>(_:)(v23, a10, v29);
    v27 = *(&v39 + 1);
    v43 = v39;
    outlined destroy of [CodingKey](&v43, &_sSays9CodingKey_pGMd, &_sSays9CodingKey_pGMR);
    v42 = v27;
    outlined destroy of [CodingKey](&v42, &_sSDys17CodingUserInfoKeyVypGMd, &_sSDys17CodingUserInfoKeyVypGMR);
    return swift_unknownObjectRelease();
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *_s3XPC23_KeyedDecodingContainerV10codingInfo9containerACyxGAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a1;
  v54 = a2;
  v14 = type metadata accessor for DecodingError();
  v50 = *(v14 - 8);
  v51 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v49 - v20;
  ObjectType = swift_getObjectType();
  v23 = *(a5 + 8);
  v61 = a4;
  v24 = v23(ObjectType, a5);
  v25 = v24;
  v26 = v24[1].n128_u64[0];
  if (!v26 || v24[3].n128_u8[8] != 16)
  {

    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v55 = 0xD00000000000001FLL;
    v56 = 0x80000001979385F0;
    type metadata accessor for _KeyedDecodingContainer(0, a6, a7, v30);
    v31 = _typeName(_:qualified:)();
    v18 = v32;
    MEMORY[0x19A8E8E70](v31);

    goto LABEL_7;
  }

  if (v24[2].n128_u8[0])
  {
    if (v24[2].n128_u8[0] == 1)
    {

      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);
      MEMORY[0x19A8E8E70](0xD00000000000001FLL, 0x80000001979385D0);
      type metadata accessor for _KeyedDecodingContainer(0, a6, a7, v27);
      v28 = _typeName(_:qualified:)();
      v18 = v29;
      MEMORY[0x19A8E8E70](v28);

      MEMORY[0x19A8E8E70](0x20646E756F66202CLL, 0xE800000000000000);
      LOBYTE(v59) = 1;
      _print_unlocked<A, B>(_:_:)();
LABEL_7:
      v33 = v52;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

      (*(v50 + 104))(v33, *MEMORY[0x1E69E6B00], v51);
      swift_willThrowTypedImpl();
      swift_unknownObjectRelease();
      return v18;
    }

    if (v26 != 2)
    {

      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      LOBYTE(v59) = 2;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
      type metadata accessor for _KeyedDecodingContainer(0, a6, a7, v38);
      v39 = _typeName(_:qualified:)();
      MEMORY[0x19A8E8E70](v39);

      MEMORY[0x19A8E8E70](0xD000000000000016, 0x8000000197938610);
      v59 = v26;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v41;
      MEMORY[0x19A8E8E70](v40);

      MEMORY[0x19A8E8E70](0x74616D73696D2029, 0xEA00000000006863);
      goto LABEL_7;
    }

    if (v24[5].n128_u8[8] != 17)
    {
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v59 = v55;
      v60 = v56;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      LOBYTE(v55) = 2;
      v18 = MEMORY[0x1E69E7068];
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
      type metadata accessor for _KeyedDecodingContainer(0, a6, a7, v42);
      v43 = _typeName(_:qualified:)();
      MEMORY[0x19A8E8E70](v43);

      MEMORY[0x19A8E8E70](0xD00000000000002CLL, 0x8000000197938630);
      v44 = v25[4].n128_i64[0];
      v45 = v25[4].n128_i64[1];
      v46 = v25[5].n128_i64[0];
      v47 = v25[5].n128_u8[8];
      outlined copy of EncodingGraph.Value(v44, v45, v46, v47);

      v55 = v44;
      v56 = v45;
      v57 = v46;
      v58 = v47;
      _print_unlocked<A, B>(_:_:)();
      outlined consume of EncodingGraph.Value(v44, v45, v46, v47);
      goto LABEL_7;
    }

    v36 = v24[4].n128_i64[0];
    v35 = v24[4].n128_i64[1];
    swift_unknownObjectRetain();

    v37 = _s3XPC23_KeyedDecodingContainerV10codingInfo9containerACyxGAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v53, v54, a3, v36, v35, a6, a7, v18);
    if (v8)
    {
      swift_unknownObjectRelease();
      (*(v50 + 32))(v52, v18, v51);
    }

    else
    {
      v48 = v37;
      swift_unknownObjectRelease();
      return v48;
    }
  }

  else
  {
    v18 = v53;
    _s3XPC23_KeyedDecodingContainerV16decodeDictionary33_75B0D857E5E60FECD69B41037A8551754from2atSDyAA13EncodingGraphO3KeyOAI5ValueOGSayAMG_Says06CodingR0_pGts0C5ErrorOYKFZ(v24, v53, a6, a7, v21);
    if (v8)
    {
      swift_unknownObjectRelease();

      (*(v50 + 32))(v52, v21, v51);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return v18;
}

char *_s3XPC23_KeyedDecodingContainerVyxGAA01_cD0A2aEP10codingInfo9containerxAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfCTW@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>)
{
  v25 = a8;
  v26 = a6;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v27;
  result = _s3XPC23_KeyedDecodingContainerV10codingInfo9containerACyxGAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(a1, a2, a3, a4, a5, *(a7 + 16), *(a7 + 24), v18);
  if (v19)
  {
    return (*(v15 + 32))(v26, v18, v14);
  }

  v24 = v25;
  *v25 = result;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC3XPC13EncodingGraphO3KeyO_AE5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMd, &_ss18_DictionaryStorageCy3XPC13EncodingGraphO3KeyOAE5ValueOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of EncodingGraph.Value(v7, v8, v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v14 = &v40 - v13;
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v18 == 17)
  {
    v41 = *(v2 + 16);
    v40 = v12;
    v42 = a2;
    v43 = v11;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = *(v20 + 8);
    swift_unknownObjectRetain();
    v22 = v21(v19, v20);
    v24 = v23;
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v26 = CodingInfo.coding(forKey:forType:)(v44, v25, v22, v24);
    v28 = v27;
    v30 = v29;

    outlined destroy of CodingKey?(v44);
    swift_unknownObjectRetain();
    v31 = v52;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v26, v28, v30, v15, v14, &v46);
    if (v31)
    {
      outlined consume of EncodingGraph.Value(v16, v15, v41, 0x11u);
      (*(v40 + 32))(v42, v14, v43);
    }

    else
    {
      v50[0] = v46;
      v50[1] = v47;
      v50[2] = v48;
      v51 = v49;
      v39 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2Sms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
      v52 = 0;
      outlined consume of EncodingGraph.Value(v16, v15, v41, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
      return v39;
    }
  }

  else if (v18 == 1)
  {
  }

  else
  {
    v32 = a2;
    v33 = a1[3];
    v34 = a1[4];
    v43 = v11;
    v35 = a1;
    v36 = v12;
    v37 = v17;
    __swift_project_boxed_opaque_existential_1(v35, v33);
    (*(v34 + 8))(v33, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v32 = MEMORY[0x1E69E6158];
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v44[0] = v46;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v46 = v16;
    *(&v46 + 1) = v15;
    *&v47 = v37;
    BYTE8(v47) = v18;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v36 + 104))(v32, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrowTypedImpl();
  }

  return v16;
}

char *closure #1 in XPCSession.setCancellationHandler(_:)(_xpc_rich_error_s *a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9EE8])
  {
    result = xpc_rich_error_copy_description(a1);
    if (result)
    {
      v7 = result;
      v8 = String.init(cString:)();
      v10 = v9;
      can_retry = xpc_rich_error_can_retry(a1);
      free(v7);
      v12[0] = can_retry;
      v13 = v8;
      v14 = v10;
      ClientSpecifiedHandler.callEventHandler(_:)(v12, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 == 14 || v4 == 16)
  {
    _StringGuts.grow(_:)(33);
    MEMORY[0x19A8E8E70](0x7520746F6E6E6143, 0xEE0020706172776ELL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0xD000000000000011, 0x80000001979388F0);
    v6 = 0;
    lazy protocol witness table accessor for type EarlyDecodingError and conformance EarlyDecodingError();
    swift_willThrowTypedImpl();
  }

  else
  {
    if (v4 == 17)
    {
      v6 = *v0;
    }

    else
    {
      type metadata accessor for DecodedContainer();
      v6 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMd, &_ss23_ContiguousArrayStorageCy3XPC13EncodingGraphO5ValueOGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_197937550;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 2;
      *(v7 + 56) = 16;
      *(v7 + 64) = v2;
      *(v7 + 72) = v1;
      *(v7 + 80) = v3;
      *(v7 + 88) = v4;
      *(v6 + 16) = v7;
    }

    outlined copy of EncodingGraph.Value(v2, v1, v3, v4);
  }

  return v6;
}

uint64_t outlined destroy of [CodingKey](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a6;
  v38 = a1;
  v46 = a2;
  v11 = type metadata accessor for DecodingError();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = (*(a5 + 8))(ObjectType, a5);
  v18 = *(v17 + 16);
  if (!v18 || *(v17 + 56) != 16)
  {

LABEL_9:
    v28 = v37;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

    (*(v12 + 104))(v28, *MEMORY[0x1E69E6B00], v11);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v19 = v17 + 32;
  if (!*(v17 + 32))
  {

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    MEMORY[0x19A8E8E70](0xD00000000000001FLL, 0x80000001979385D0);
    MEMORY[0x19A8E8E70](0xD000000000000019, 0x8000000197936F60);
    MEMORY[0x19A8E8E70](0x20646E756F66202CLL, 0xE800000000000000);
    LOBYTE(v43) = 0;
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_9;
  }

  if (*(v17 + 32) == 1)
  {
    v20 = v17;
    result = swift_unknownObjectRelease();
    if (*(v20 + 16) >= v18)
    {
      v22 = v20;
      v23 = 0;
      v24 = 1;
      v25 = (2 * v18) | 1;
      v26 = v46;
      v27 = v38;
LABEL_7:
      *a7 = v27;
      a7[1] = v26;
      a7[2] = a3;
      a7[3] = v22;
      a7[4] = v19;
      a7[5] = v24;
      a7[6] = v25;
      a7[7] = v23;
      return result;
    }

    __break(1u);
    return result;
  }

  if (v18 != 2)
  {

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    LOBYTE(v43) = 2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
    MEMORY[0x19A8E8E70](0xD000000000000019, 0x8000000197936F60);
    MEMORY[0x19A8E8E70](0xD000000000000016, 0x8000000197938610);
    v43 = v18;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x19A8E8E70](v31);

    MEMORY[0x19A8E8E70](0x74616D73696D2029, 0xEA00000000006863);
    goto LABEL_9;
  }

  if (*(v17 + 88) != 17)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    v32 = v17;
    _StringGuts.grow(_:)(61);
    v43 = v39;
    v44 = v40;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    LOBYTE(v39) = 2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x20726F6620, 0xE500000000000000);
    MEMORY[0x19A8E8E70](0xD000000000000019, 0x8000000197936F60);
    MEMORY[0x19A8E8E70](0xD00000000000002CLL, 0x8000000197938630);
    v33 = *(v32 + 64);
    v34 = *(v32 + 72);
    v35 = *(v32 + 80);
    v36 = *(v32 + 88);
    outlined copy of EncodingGraph.Value(v33, v34, v35, v36);

    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    _print_unlocked<A, B>(_:_:)();
    outlined consume of EncodingGraph.Value(v33, v34, v35, v36);
    goto LABEL_9;
  }

  v30 = *(v17 + 64);
  v29 = *(v17 + 72);
  swift_unknownObjectRetain();

  _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v38, v46, a3, v30, v29, v15, v45);
  if (!v7)
  {
    result = swift_unknownObjectRelease();
    v19 = v45[4];
    v24 = v45[5];
    v25 = v45[6];
    v23 = v45[7];
    v27 = v45[0];
    v26 = v45[1];
    a3 = v45[2];
    v22 = v45[3];
    goto LABEL_7;
  }

  swift_unknownObjectRelease();
  return (*(v12 + 32))(v37, v15, v11);
}

double protocol witness for Decoder.unkeyedContainer() in conformance _TopLevelDecoder@<D0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DecodingError();
  v24 = *(v3 - 8);
  v25 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[4];
  a1[3] = &type metadata for _UnkeyedDecodingContainer;
  a1[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
  v15 = swift_allocObject();
  *a1 = v15;

  swift_unknownObjectRetain();
  v16 = v29;
  _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(v11, v12, v13, v14, v7, v26);
  if (v16)
  {
    v17 = *(v24 + 32);
    v18 = v7;
    v19 = v25;
    v17(v10, v18, v25);
    swift_allocError();
    v17(v20, v10, v19);
    __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v26[1];
    v15[1] = v26[0];
    v15[2] = v22;
    result = *&v27;
    v23 = v28;
    v15[3] = v27;
    v15[4] = v23;
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV06nestedD07keyedBy6forKeys0bcD0Vyqd__Gqd__m_xts0C5ErrorOYKs06CodingI0Rd__lF@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v29[0] = a8;
  v14 = type metadata accessor for DecodingError();
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a6, a9, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v29 - v22;
  v29[1] = a7;
  v25 = type metadata accessor for _KeyedDecodingContainer(0, a7, a10, v24);
  v26 = *(a6 - 8);
  (*(v26 + 16))(v23, a1, a6);
  (*(v26 + 56))(v23, 0, 1, a6);
  v27 = v37;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(v25, v23, 0, v32, v33, v34, v35, a6, &v36, v25, a9, &protocol witness table for _KeyedDecodingContainer<A>, v17);
  (*(v20 + 8))(v23, v19);
  if (v27)
  {
    return (*(v30 + 32))(a11, v17, v31);
  }

  swift_getWitnessTable(protocol conformance descriptor for _KeyedDecodingContainer<A>, v25, v29[0]);
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.nestedContainer<A>(keyedBy:forKey:) in conformance _KeyedDecodingContainer<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for DecodingError();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v19[1];
  result = _s3XPC23_KeyedDecodingContainerV06nestedD07keyedBy6forKeys0bcD0Vyqd__Gqd__m_xts0C5ErrorOYKs06CodingI0Rd__lF(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(a4 + 16), a2, a5, *(a4 + 24), a3, v15);
  if (v16)
  {
    swift_allocError();
    return (*(v12 + 32))(v18, v15, v11);
  }

  return result;
}

uint64_t _KeyedDecodingContainer.allKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy3XPC13EncodingGraphO3KeyOAE5ValueO_GMd, &_sSD4KeysVy3XPC13EncodingGraphO3KeyOAE5ValueO_GMR);
  lazy protocol witness table accessor for type [EncodingGraph.Key : EncodingGraph.Value].Keys and conformance [A : B].Keys();
  v6 = Sequence.compactMap<A>(_:)();

  return v6;
}

uint64_t SingleValueGraphEncodingNode.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t _s3XPC16_TopLevelDecoderVAA18_DecodingContainerA2aDP10codingInfo9containerxAA06CodingH0V_AA13EncodingGraphO0F0_pts0E5ErrorOYKcfCTW@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t XPCReceivedMessage.init(dictionary:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  v4 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v3);
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = MEMORY[0x19A8E9F90](v4) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 17) = v5;
  *a2 = v3;
  a2[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer;
  if (!lazy protocol witness table cache variable for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer)
  {
    result = swift_getWitnessTable("}'VW(B", &type metadata for _UnkeyedDecodingContainer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodingGraph.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EncodingGraph.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t closure #1 in _KeyedDecodingContainer.allKeys.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (!a1[1])
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  return dispatch thunk of CodingKey.init(stringValue:)();
}

BOOL protocol witness for UnkeyedDecodingContainer.isAtEnd.getter in conformance _UnkeyedDecodingContainer()
{
  v1 = v0[5];
  v2 = v0[6] >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (!v3)
  {
    return v0[7] == v4;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in XPCListener.IncomingSessionRequest.accept<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v7 = v3;
  v8 = v4;
  return (*(v2 + 32))(v6);
}

{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v7 = v3;
  v8 = v4;
  return (*(v2 + 32))(v6);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(double a1)
{
  *v2 = a1;
  v2[1] = 0;
  v2[2] = 0;
  v3 = 3;
  return SingleValueGraphEncodingNode.setValue(to:)(v2);
}

uint64_t XPCSession.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)(a1, a2);
    v6 = v5;

    a2 = v6;
  }

  v7[0] = a1;
  v7[1] = a2;
  v7[2] = 0;
  v8 = 1;
  SingleValueGraphEncodingNode.setValue(to:)(v7);
}

uint64_t outlined destroy of Encodable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCReceivedMessage.reply<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  XPCReceivedMessage.reply<A>(_:userInfo:)(a1, v6, a2, a3);
}

uint64_t XPCReceivedMessage.reply<A>(_:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(a2, 0, a3, &v5);
  if (xpc_dictionary_expects_reply())
  {
    xpc_dictionary_send_reply_4SWIFT();
  }

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for Decoder.singleValueContainer() in conformance _TopLevelDecoder@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DecodingError();
  v23 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = v1[4];
  a1[3] = &type metadata for _SingleValueDecodingContainer;
  a1[4] = lazy protocol witness table accessor for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer();
  v16 = swift_allocObject();
  *a1 = v16;

  swift_unknownObjectRetain();
  v17 = v16 + 16;
  v18 = v24;
  result = _s3XPC29_SingleValueDecodingContainerV10codingInfo9containerAcA06CodingG0V_AA13EncodingGraphO0E0_pts0D5ErrorOYKcfC(v11, v12, v14, v13, v15, v7, v17);
  if (v18)
  {
    v20 = *(v23 + 32);
    v20(v10, v7, v3);
    swift_allocError();
    v20(v21, v10, v3);
    return __swift_deallocate_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_19790A81C()
{

  outlined consume of EncodingGraph.Value(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

unint64_t lazy protocol witness table accessor for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer;
  if (!lazy protocol witness table cache variable for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SingleValueDecodingContainer, &type metadata for _SingleValueDecodingContainer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SingleValueDecodingContainer and conformance _SingleValueDecodingContainer);
  }

  return result;
}

uint64_t _s3XPC29_SingleValueDecodingContainerV10codingInfo9containerAcA06CodingG0V_AA13EncodingGraphO0E0_pts0D5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  ObjectType = swift_getObjectType();
  v14 = (*(a5 + 8))(ObjectType, a5);
  v15 = *(v14 + 16);
  if (v15 && *(v14 + 56) == 16)
  {
    if (*(v14 + 32) != 2)
    {

      v17 = 0;
      v18 = 17;
      v16 = a4;
      goto LABEL_7;
    }

    if (v15 == 2)
    {
      v16 = *(v14 + 64);
      a5 = *(v14 + 72);
      v17 = *(v14 + 80);
      v18 = *(v14 + 88);
      outlined copy of EncodingGraph.Value(v16, a5, v17, v18);
      swift_unknownObjectRelease();

LABEL_7:
      *a7 = a1;
      *(a7 + 8) = a2;
      *(a7 + 16) = a3;
      *(a7 + 24) = v16;
      *(a7 + 32) = a5;
      *(a7 + 40) = v17;
      *(a7 + 48) = v18;
      return result;
    }
  }

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

  v20 = *MEMORY[0x1E69E6B00];
  v21 = type metadata accessor for DecodingError();
  (*(*(v21 - 8) + 104))(a6, v20, v21);
  swift_willThrowTypedImpl();
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer) & 1;
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt16VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5UInt8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5UInt8VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt64VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors4Int8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5UInt8VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt32VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int64VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ums0D5ErrorOYKFAA01_bcdE0V_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt16VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt32VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm);
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA01_bcdE0V_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for _SingleValueDecodingContainer;
  v14[4] = &protocol witness table for _SingleValueDecodingContainer;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of _SingleValueDecodingContainer(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v11;
  v15[2] = *(v3 + 32);
  v16 = *(v3 + 48);
  result = a3(v10);
  if (v4)
  {
    v13 = result;
    swift_allocError();
    (*(v7 + 32))(v14, v10, v6);
    return v13;
  }

  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v14 = &v38 - v13;
  v15 = *v2;
  v16 = *(v2 + 24);
  if (v16 != 4)
  {
    v40 = v12;
    v41 = v11;
    v17 = *(v2 + 16);
    v42 = *(v2 + 8);
    v43 = a2;
    if (v16 == 17)
    {
      v39 = v17;
      v19 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v20 = *(v18 + 8);
      swift_unknownObjectRetain();
      v21 = v20(v19, v18);
      v23 = v22;
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
      v25 = CodingInfo.coding(forKey:forType:)(v44, v24, v21, v23);
      v27 = v26;
      v29 = v28;

      outlined destroy of CodingKey?(v44);
      swift_unknownObjectRetain();
      v30 = v29;
      v31 = v42;
      v32 = v52;
      _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v25, v27, v30, v42, v14, &v46);
      if (v32)
      {
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        (*(v40 + 32))(v43, v14, v41);
      }

      else
      {
        v50[0] = v46;
        v50[1] = v47;
        v50[2] = v48;
        v51 = v49;
        v36 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
        v52 = 0;
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
        return v36;
      }
    }

    else
    {
      v33 = a1[3];
      v34 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v33);
      (*(v34 + 8))(v33, v34);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v35 = v43;
      *v43 = MEMORY[0x1E69E6530];
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v44[0] = v46;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      *&v46 = v15;
      *(&v46 + 1) = v42;
      *&v47 = v17;
      BYTE8(v47) = v16;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(v40 + 104))(v35, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrowTypedImpl();
    }
  }

  return v15;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t _KeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a5 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t _s3XPC23_KeyedDecodingContainerV9decodeNil6forKeySbx_ts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v31 = a3;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  v21 = v31;
  v28 = a4;
  v29 = a6;
  v22 = a4;
  v23 = a5;
  v24 = v39;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v19, v22, a5, a6, a7, v18, &v36);
  if (v24)
  {
    (*(v15 + 32))(v30, v18, v14);
  }

  else
  {
    v33 = v36;
    v34 = v37;
    v35 = v38;
    v32[0] = v20;
    v32[1] = v21;
    v32[2] = v28;
    v32[3] = a5;
    v26 = type metadata accessor for _KeyedDecodingContainer(0, v29, a7, v25);

    v23 = specialized EncodingGraph.Value.decodeNil(for:)(v32, &v33, v26, &protocol witness table for _KeyedDecodingContainer<A>);
    outlined consume of EncodingGraph.Value(v33, *(&v33 + 1), v34, v35);
  }

  return v23 & 1;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void, void, char *))
{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13);
  if (v5)
  {
    swift_allocError();
    (*(v10 + 32))(v15, v13, v9);
  }

  return v14 & 1;
}

BOOL specialized EncodingGraph.Value.decodeNil(for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, a3);
  v18 = a2[1];
  v19 = *(a2 + 24);
  if (v19 == 17)
  {
    v31[1] = v9;
    v21 = *(a4 + 8);
    swift_unknownObjectRetain();
    v22 = v21(a3, a4);
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v22, v23, v24, v18, v13, v32);
    v26 = v32[3];
    v27 = v32[4];
    v28 = v32[5];
    v29 = v33;

    v20 = v29 == 18 && (v27 | v26 | v28) == 0;
    outlined consume of EncodingGraph.Value(v26, v27, v28, v29);
  }

  else
  {
    v20 = v19 == 18 && (*a2 | a2[2] | v18) == 0;
  }

  (*(v14 + 8))(v17, a3);
  return v20;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in XPCSession._send(message:replyHandler:)(uint64_t a1, _xpc_rich_error_s *a2, void (*a3)(_BOOL8 *))
{
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    v7 = swift_unknownObjectRetain();
    if (MEMORY[0x19A8E9F90](v7) == MEMORY[0x1E69E9EE8])
    {
      v8 = xpc_rich_error_copy_description(a2);
      if (v8)
      {
        v9 = v8;
        v10 = String.init(cString:)();
        v12 = v11;
        can_retry = xpc_rich_error_can_retry(a2);
        free(v9);
        v15 = can_retry;
        v16 = v10;
        v17 = v12;
        v18 = 1;
        a3(&v15);
        swift_unknownObjectRelease();
        return outlined consume of Result<XPCDictionary, XPCRichError>(v15, v16, v17, v18);
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000003FLL, 0x8000000197938080, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/Session.swift", 85, 2, 635);
  }

  v5 = swift_unknownObjectRetain();
  if (MEMORY[0x19A8E9F90](v5) != MEMORY[0x1E69E9E80])
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = 0;
  v17 = 0;
  v15 = a1;
  v18 = 0;
  a3(&v15);
  return outlined consume of Result<XPCDictionary, XPCRichError>(v15, v16, v17, v18);
}

void protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v19[0] = *v6;
  v19[1] = v17;
  v19[2] = *(v6 + 32);
  v20 = *(v6 + 48);
  _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2dms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    swift_allocError();
    (*(v13 + 32))(v18, v16, v12);
  }
}

{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v19[0] = *v6;
  v19[1] = v17;
  v19[2] = *(v6 + 32);
  v20 = *(v6 + 48);
  _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2fms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    swift_allocError();
    (*(v13 + 32))(v18, v16, v12);
  }
}

void protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2)
{
  protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer);
}

{
  protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for _SingleValueDecodingContainer, &protocol witness table for _SingleValueDecodingContainer, &unk_1F0C08F80, outlined init with copy of _SingleValueDecodingContainer);
}

double _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2dms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v21 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[0] = *(v5 + 24);
  *(v25 + 9) = *(v5 + 33);
  *v24 = *(v5 + 24);
  *&v24[9] = *(v5 + 33);
  v23[3] = a2;
  v23[4] = a3;
  v15 = swift_allocObject();
  v23[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v25, v22);
  a5(v5, v22);
  _s3XPC13EncodingGraphO5ValueO6decode2as3forS2dm_AA18_DecodingContainer_pts0H5ErrorOYKF(v23, v14);
  v18 = v17;
  outlined consume of EncodingGraph.Value(*v24, *&v24[8], *&v24[16], v24[24]);
  if (v6)
  {
    (*(v11 + 32))(v21, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t closure #1 in XPCSession._send<A>(_:replyHandler:)(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *a1;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v10 = *a1 & 1;
    v11 = v5;
    v12 = v4;
    v13 = 1;

    a2(&v10);
  }

  else
  {
    swift_unknownObjectRetain_n();
    v6 = specialized String.withCString<A>(_:)(0x656C6261646F435FLL, 0xEE00636E79537349, v3);
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = MEMORY[0x19A8E9F90](v6) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    type metadata accessor for XPCReceivedMessage.XPCReceivedMessageMetadata();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 17) = v7;
    v10 = v3;
    v11 = v8;
    v12 = 0;
    v13 = 0;
    swift_unknownObjectRetain();

    a2(&v10);

    swift_unknownObjectRelease();
  }

  return outlined consume of Result<XPCReceivedMessage, XPCRichError>(v10, v11, v12, v13);
}

uint64_t implicit closure #2 in implicit closure #1 in XPCSession.send(message:replyHandler:)(__int128 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v10 = *a1;
  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return ClientSpecifiedHandler.callEventHandler(_:)(&v10, a2, a3);
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2dm_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v41 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v44 = *(v2 + 16);
    v42 = v13;
    v45 = a2;
    v46 = result;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v43 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v43;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v43, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v44, 0x11u);
      return (*(v42 + 32))(v45, v15, v46);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2dms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v44, 0x11u);
      return outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
    }
  }

  else if (v19 != 3)
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v46 = result;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E63B0];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v46);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v21[0] = *v6;
  v21[1] = v17;
  v21[2] = *(v6 + 32);
  v22 = *(v6 + 48);
  result = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2Sms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    v19 = result;
    swift_allocError();
    (*(v13 + 32))(v20, v16, v12);
    return v19;
  }

  return result;
}

{
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v21[0] = *v6;
  v21[1] = v17;
  v21[2] = *(v6 + 32);
  v22 = *(v6 + 48);
  v18 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2bms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(v16, a3, a4, a5, a6);
  if (v7)
  {
    swift_allocError();
    (*(v13 + 32))(v19, v16, v12);
  }

  return v18 & 1;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2Sms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v23 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[0] = *(v5 + 24);
  *(v22 + 9) = *(v5 + 33);
  *v21 = *(v5 + 24);
  *&v21[9] = *(v5 + 33);
  v20[3] = a2;
  v20[4] = a3;
  v15 = swift_allocObject();
  v20[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v22, v19);
  a5(v5, v19);
  v17 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(v20, v14);
  outlined consume of EncodingGraph.Value(*v21, *&v21[8], *&v21[16], v21[24]);
  if (v6)
  {
    (*(v11 + 32))(v23, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

uint64_t type metadata instantiation function for _KeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(char a1)
{
  v2[1] = 0;
  v2[2] = 0;
  v2[0] = a1 & 1;
  v3 = 0;
  return SingleValueGraphEncodingNode.setValue(to:)(v2);
}

uint64_t outlined consume of Result<XPCReceivedMessage, XPCRichError>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t outlined consume of Result<XPCDictionary, XPCRichError>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

void *_UnkeyedEncodingContainer.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a3;
  v29 = a4;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v17 = &v26 - v16;
  v30 = a2;
  v31 = v28;
  v32 = v29;
  v33 = a5;
  v18 = v36;
  result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v34 == 2 || (v34 & 1) == 0)
  {
    v36 = v18;
    (*(v11 + 16))(v13, a1, a6);
    dispatch thunk of Sequence.makeIterator()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((v35 & 1) == 0)
    {
      v20 = v34;
      do
      {
        swift_beginAccess();
        v21 = *(a5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 16) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
          *(a5 + 16) = v21;
        }

        v24 = *(v21 + 2);
        v23 = *(v21 + 3);
        if (v24 >= v23 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
        }

        *(v21 + 2) = v24 + 1;
        v25 = &v21[32 * v24];
        *(v25 + 5) = 0;
        *(v25 + 6) = 0;
        *(v25 + 4) = v20;
        v25[56] = 10;
        *(a5 + 16) = v21;
        swift_endAccess();
        dispatch thunk of IteratorProtocol.next()();
        v20 = v34;
      }

      while (v35 != 1);
    }

    return (*(v27 + 8))(v17, AssociatedTypeWitness);
  }

  return result;
}

void *closure #1 in _UnkeyedEncodingContainer.encode<A>(contentsOf:)@<X0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  result = swift_conformsToProtocol2();
  v11 = 0;
  if (!result || !a3)
  {
LABEL_10:
    *a5 = v11;
    return result;
  }

  if (a1)
  {
    v12 = xpc_data_create(a1, a2);
    swift_getObjectType();
    v13 = v12;
    if (!OS_xpc_object.isCodable()())
    {
      __break(1u);
      goto LABEL_12;
    }

    result = xpc_copy(v12);
    if (result)
    {
      v13 = result;
      swift_unknownObjectRelease();
      swift_beginAccess();
      v12 = *(a4 + 16);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v12;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_7:
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
        }

        v12[2] = v16 + 1;
        v17 = &v12[4 * v16];
        v17[4] = a1;
        v17[5] = a2;
        v17[6] = v13;
        *(v17 + 56) = 15;
        *(a4 + 16) = v12;
        swift_endAccess();
        result = swift_unknownObjectRelease();
        v11 = 1;
        goto LABEL_10;
      }

LABEL_12:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      *(a4 + 16) = v12;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2bms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v23 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[0] = *(v5 + 24);
  *(v22 + 9) = *(v5 + 33);
  *v21 = *(v5 + 24);
  *&v21[9] = *(v5 + 33);
  v20[3] = a2;
  v20[4] = a3;
  v15 = swift_allocObject();
  v20[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v22, v19);
  a5(v5, v19);
  v17 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2bm_AA18_DecodingContainer_pts0H5ErrorOYKF(v20, v14);
  outlined consume of EncodingGraph.Value(*v21, *&v21[8], *&v21[16], v21[24]);
  if (v6)
  {
    (*(v11 + 32))(v23, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17 & 1;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2bm_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v43 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v45 = *(v2 + 16);
    v43 = v13;
    v55 = v12;
    v46 = a2;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v44 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v44;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v44, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      (*(v43 + 32))(v46, v15, v55);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      v42 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2bms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
      LOBYTE(v17) = v42;
    }
  }

  else if (*(v2 + 24))
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v55 = v12;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E6370];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrowTypedImpl();
  }

  return v17 & 1;
}

uint64_t _UnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[3] = &type metadata for _TopLevelEncoder;
  v17[4] = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v12 = swift_allocObject();
  v17[0] = v12;
  v12[2] = _s3XPC25_UnkeyedEncodingContainerV09_encodingD0_7forTypexxm_ypXpSgtAA01_cD0RzlFAA16_TopLevelEncoderV_Tt0g5(a6, a2, a3, a4, a5);
  v12[3] = v13;
  v12[4] = v14;
  v12[5] = v15;
  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_19790D59C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t _s3XPC25_UnkeyedEncodingContainerV09_encodingD0_7forTypexxm_ypXpSgtAA01_cD0RzlFAA16_TopLevelEncoderV_Tt0g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(*(a5 + 16) + 16);
  v17[3] = &type metadata for IndexCodingKey;
  v17[4] = lazy protocol witness table accessor for type IndexCodingKey and conformance IndexCodingKey();
  v17[0] = v9;
  CodingInfo.coding(forKey:forType:)(v17, a1, a2, a3);
  outlined destroy of CodingKey?(v17);
  type metadata accessor for TopLevelGraphEncodingNode();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  swift_beginAccess();
  v11 = *(a5 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *(a5 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[32 * v14];
  *(v15 + 4) = v10;
  *(v15 + 5) = &protocol witness table for TopLevelGraphEncodingNode;
  *(v15 + 6) = 0;
  v15[56] = 17;
  *(a5 + 16) = v11;
  swift_endAccess();

  return v10;
}

unint64_t lazy protocol witness table accessor for type IndexCodingKey and conformance IndexCodingKey()
{
  result = lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey;
  if (!lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexCodingKey, &type metadata for IndexCodingKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey;
  if (!lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey)
  {
    result = swift_getWitnessTable(")7VWDL", &type metadata for IndexCodingKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey;
  if (!lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexCodingKey, &type metadata for IndexCodingKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexCodingKey and conformance IndexCodingKey);
  }

  return result;
}

void _swift_xpc_session_cancel(void *a1)
{
  v1 = a1;
  xpc_session_cancel(v1);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = a4;
  return SingleValueGraphEncodingNode.setValue(to:)(v5);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2bm_xts0C5ErrorOYKF) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3forS2um_AA18_DecodingContainer_pts0H5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors4Int8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5UInt8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *))
{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2im_xts0C5ErrorOYKFTm(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13, a4);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v10 + 32))(v16, v13, v9);
    return v15;
  }

  return result;
}

{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC23_KeyedDecodingContainerV6decode_6forKeys5Int32VAGm_xts0C5ErrorOYKFTm(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13, a4);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v10 + 32))(v16, v13, v9);
    return v15;
  }

  return result;
}

{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC23_KeyedDecodingContainerV6decode_6forKeys4Int8VAGm_xts0C5ErrorOYKFTm(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13, a4);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v10 + 32))(v16, v13, v9);
    return v15;
  }

  return result;
}

{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC23_KeyedDecodingContainerV6decode_6forKeys5Int16VAGm_xts0C5ErrorOYKFTm(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13, a4);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v10 + 32))(v16, v13, v9);
    return v15;
  }

  return result;
}