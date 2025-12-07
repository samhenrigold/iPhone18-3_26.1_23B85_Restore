uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  v8 = *(a2 + v7[12]);
  v9 = v7[16];
  v10 = v7[20];
  v13 = (a3 + *a3);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, v8, a2 + v9, a2 + v10);
}

uint64_t MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a2;
  v14 = a1;
  outlined copy of Data._Representation(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v33 = v16;
    v21 = v14;
    v22 = v13;
    v23 = a3;
    v24 = v9;
    v25 = a6;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

    *(v17 + 4) = v26;
    a6 = v25;
    v9 = v24;
    a3 = v23;
    v13 = v22;
    v14 = v21;
    _os_log_impl(&dword_26524C000, v15, v33, "MLSDaemon delete called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  type metadata accessor for MLS.GroupDeletionError();
  v27 = swift_allocObject();
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = v9;
  v28 = swift_allocObject();
  v28[2] = v9;
  v28[3] = a3;
  v28[4] = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
  *(v29 + 24) = v28;
  v30 = v9;
  outlined copy of Data._Representation(v14, v13);
  v31 = v30;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError, MEMORY[0x277D4CF10], MEMORY[0x277D4CF08]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionProcessedContext<Data> and conformance MLS.GroupDeletionProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupDeletionProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D198]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupDeletionContext<Data> and conformance MLS.GroupDeletionContext<A>, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CFA0]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.SigningContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon delete decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupDeletionContextVy_10Foundation4DataVGMR);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[19] = v1;
  v2 = *v1 + 88;
  v0[20] = *v2;
  v0[21] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[22] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 160);

  *(v0 + 184) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:), 0, 0);
}

{
  v71 = v0;
  if (*(v0[23] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v2 & 1) != 0))
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[12];
    log = v0[11];
    v63 = v0[14];
    v6 = v0[4];
    v59 = v0[18];
    v60 = v0[3];
    v7 = (*(v0[23] + 56) + 48 * v1);
    v0[24] = *v7;
    v0[25] = v7[1];
    v0[26] = v7[2];
    v0[27] = v7[3];
    v0[28] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v4 + 16))(v59, v6, v3);
    (*(v5 + 16))(v63, v60, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    if (v10)
    {
      v64 = v9;
      v17 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v70[0] = v66;
      *v17 = 136315394;
      loga = v8;
      v18 = MLS.SigningContext.identifier.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v70);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v70);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_26524C000, loga, v64, "MLSDaemon delete calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v66, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v68 = (*MEMORY[0x277D4D0F0] + MEMORY[0x277D4D0F0]);
    v54 = swift_task_alloc();
    v0[29] = v54;
    *v54 = v0;
    v54[1] = closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
    v55 = v0[6];
    v56 = v0[7];
    v57 = v0[4];
    v58 = v0[2];

    return (v68)(v58, v55, v56, v57);
  }

  else
  {
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[11];
    v32 = v0[4];
    v33 = v0[3];

    (*(v27 + 16))(v26, v32, v28);
    (*(v30 + 16))(v29, v33, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[16];
    v38 = v0[17];
    v39 = v0[15];
    v40 = v0[12];
    v41 = v0[13];
    v42 = v0[11];
    if (v36)
    {
      v67 = v34;
      v43 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70[0] = v69;
      *v43 = 136315394;
      v44 = MLS.SigningContext.identifier.getter();
      v65 = v35;
      v46 = v45;
      (*(v37 + 8))(v38, v39);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v70);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v40 + 8))(v41, v42);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v70);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, v67, v65, "MLSDaemon delete has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v69, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v37 + 8))(v38, v39);
    }

    (*(v0[9] + 104))(v0[10], *MEMORY[0x277D4D2B0], v0[8]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDeletionContext<Data>) -> (@out MLS.GroupDeletionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20GroupDeletionContextVy_10Foundation4DataVGtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a2;
  v14 = a1;
  outlined copy of Data._Representation(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v33 = v16;
    v21 = v14;
    v22 = v13;
    v23 = a3;
    v24 = v9;
    v25 = a6;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

    *(v17 + 4) = v26;
    a6 = v25;
    v9 = v24;
    a3 = v23;
    v13 = v22;
    v14 = v21;
    _os_log_impl(&dword_26524C000, v15, v33, "MLSDaemon group called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  type metadata accessor for MLS.GroupFetchError();
  v27 = swift_allocObject();
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = v9;
  v28 = swift_allocObject();
  v28[2] = v9;
  v28[3] = a3;
  v28[4] = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
  *(v29 + 24) = v28;
  v30 = v9;
  outlined copy of Data._Representation(v14, v13);
  v31 = v30;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMR);
  type metadata accessor for MLS.Group();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupFetchError and conformance MLS.GroupFetchError, MEMORY[0x277D4CD18], MEMORY[0x277D4CD10]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0], MEMORY[0x277D4D1E8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  Context = type metadata accessor for MLS.GroupFetchContext();
  v52 = *(Context - 8);
  v7 = MEMORY[0x28223BE20](Context, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupFetchContext and conformance MLS.GroupFetchContext, MEMORY[0x277D4CDB8], MEMORY[0x277D4CDC0]);
    v24 = Context;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.GroupFetchContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, Context);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = Context;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon group decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  Context = type metadata accessor for MLS.GroupFetchContext();
  v6[15] = Context;
  v6[16] = *(Context - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[19] = v1;
  v2 = *v1 + 88;
  v0[20] = *v2;
  v0[21] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[22] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:), v4, v3);
}

{
  v1 = *(v0 + 160);

  *(v0 + 184) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:), 0, 0);
}

{
  v71 = v0;
  if (*(v0[23] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v2 & 1) != 0))
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[12];
    log = v0[11];
    v63 = v0[14];
    v6 = v0[4];
    v59 = v0[18];
    v60 = v0[3];
    v7 = (*(v0[23] + 56) + 48 * v1);
    v0[24] = *v7;
    v0[25] = v7[1];
    v0[26] = v7[2];
    v0[27] = v7[3];
    v0[28] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v4 + 16))(v59, v6, v3);
    (*(v5 + 16))(v63, v60, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    if (v10)
    {
      v64 = v9;
      v17 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v70[0] = v66;
      *v17 = 136315394;
      loga = v8;
      v18 = MLS.GroupFetchContext.identifier.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v70);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v70);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_26524C000, loga, v64, "MLSDaemon group calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v66, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v68 = (*MEMORY[0x277D4D0E0] + MEMORY[0x277D4D0E0]);
    v54 = swift_task_alloc();
    v0[29] = v54;
    *v54 = v0;
    v54[1] = closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
    v55 = v0[6];
    v56 = v0[7];
    v57 = v0[4];
    v58 = v0[2];

    return (v68)(v58, v55, v56, v57);
  }

  else
  {
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[11];
    v32 = v0[4];
    v33 = v0[3];

    (*(v27 + 16))(v26, v32, v28);
    (*(v30 + 16))(v29, v33, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[16];
    v38 = v0[17];
    v39 = v0[15];
    v40 = v0[12];
    v41 = v0[13];
    v42 = v0[11];
    if (v36)
    {
      v67 = v34;
      v43 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70[0] = v69;
      *v43 = 136315394;
      v44 = MLS.GroupFetchContext.identifier.getter();
      v65 = v35;
      v46 = v45;
      (*(v37 + 8))(v38, v39);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v70);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v40 + 8))(v41, v42);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v70);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, v67, v65, "MLSDaemon group has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v69, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v37 + 8))(v38, v39);
    }

    (*(v0[9] + 104))(v0[10], *MEMORY[0x277D4D2B0], v0[8]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 224);
  swift_unknownObjectRelease(*(v8 + 192), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17();
}

{
  v9 = *(v8 + 224);
  swift_unknownObjectRelease(*(v8 + 192), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupFetchContext) -> (@out MLS.Group, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17GroupFetchContextVtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

void @objc MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v28 = a1;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v13;
  a9(v17, v19, v20, v22, v23, v25, a8, v26);

  outlined consume of Data._Representation(v23, v25);

  outlined consume of Data._Representation(v17, v19);
}

uint64_t MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v28 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    v18 = Data.description.getter();
    v20 = a5;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v16 + 4) = v21;
    a5 = v20;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon updateGroupDetails called { uniqueClientIdentifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2667577B0](v17, -1, -1);
    MEMORY[0x2667577B0](v16, -1, -1);
  }

  type metadata accessor for MLS.GroupUpdateError();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = v28;
  v22[7] = a5;
  v22[8] = a6;
  v23 = swift_allocObject();
  v23[2] = v28;
  v23[3] = a5;
  v23[4] = a6;
  v24 = swift_allocObject();
  *(v24 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
  *(v24 + 24) = v23;
  v25 = v28;

  outlined copy of Data._Representation(a1, a2);
  v26 = v25;

  outlined copy of Data._Representation(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError, MEMORY[0x277D4CD90], MEMORY[0x277D4CD88]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a4;
  v54 = a7;
  v55 = a3;
  v49 = a6;
  v50 = a5;
  v51 = a8;
  v8 = type metadata accessor for MLS.GroupDetails();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v46 - v18;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v20 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v20)
  {
    v57 = v19;
    v22 = v53;
    v23 = v54;
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails, MEMORY[0x277D4CC68], MEMORY[0x277D4CC70]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v47 = v11;
    v48 = v8;

    v24 = v22;
    v25 = *(v22 + 16);
    v26 = v16;
    v46 = v12;
    v25(v16, v57, v12);

    v28 = v55;
    v27 = v56;
    outlined copy of Data._Representation(v55, v56);
    v29 = v23;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v28, v27);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = v50;
      *v32 = 136315650;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v29, &v58);
      *(v32 + 12) = 2080;
      v33 = Data.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v58);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2080;
      v24 = v22;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v36 = v46;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v24 + 8))(v26, v36);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v58);

      *(v32 + 24) = v40;
      _os_log_impl(&dword_26524C000, v30, v31, "MLSDaemon updateGroupDetails decoded { group: %s, groupDetails: %s, uniqueClientIdentifier: %s }", v32, 0x20u);
      v41 = v50;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v41, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    else
    {

      v42 = *(v22 + 8);
      v36 = v46;
      v42(v26, v46);
    }

    v43 = v51;
    v44 = v52;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMR) + 48);
    (*(v24 + 32))(v43, v57, v36);
    return (*(v44 + 32))(v43 + v45, v47, v48);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[14] = v1;
  v2 = *v1 + 88;
  v0[15] = *v2;
  v0[16] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[17] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:), v4, v3);
}

{
  v1 = *(v0 + 120);

  *(v0 + 144) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:), 0, 0);
}

{
  v48 = v0;
  if (*(v0[18] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[2]), (v2 & 1) != 0))
  {
    v4 = v0[10];
    v3 = v0[11];
    v45 = v0[13];
    v5 = v0[2];
    v6 = (*(v0[18] + 56) + 48 * v1);
    v0[19] = *v6;
    v0[20] = v6[1];
    v0[21] = v6[2];
    v0[22] = v6[3];
    v0[23] = v6[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v3 + 16))(v45, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    if (v9)
    {
      v14 = v0[5];
      v13 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v47);
      *(v15 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v11 + 8))(v10, v12);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v47);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_26524C000, v7, v8, "MLSDaemon updateGroupDetails calling SwiftMLS { group: %s, uniqueClientIdentifier: %s }", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v16, -1, -1);
      MEMORY[0x2667577B0](v15, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v46 = (*MEMORY[0x277D4D0F8] + MEMORY[0x277D4D0F8]);
    v41 = swift_task_alloc();
    v0[24] = v41;
    *v41 = v0;
    v41[1] = closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
    v42 = v0[5];
    v43 = v0[6];
    v44 = v0[3];

    return v46(v44, v42, v43);
  }

  else
  {
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[10];
    v24 = v0[2];

    (*(v22 + 16))(v21, v24, v23);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[11];
    v28 = v0[12];
    v30 = v0[10];
    if (v27)
    {
      v32 = v0[5];
      v31 = v0[6];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, v47);
      *(v33 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v29 + 8))(v28, v30);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v47);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_26524C000, v25, v26, "MLSDaemon updateGroupDetails has no clientXPCProxy { group: %s, uniqueClientIdentifier: %s }", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v34, -1, -1);
      MEMORY[0x2667577B0](v33, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    (*(v0[8] + 104))(v0[9], *MEMORY[0x277D4D2B0], v0[7]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v39 = v0[1];

    return v39(0);
  }
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 184);
  swift_unknownObjectRelease(*(v8 + 152), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17(1);
}

{
  v9 = *(v8 + 184);
  swift_unknownObjectRelease(*(v8 + 152), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDetails) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12GroupDetailsVtMR) + 48);
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error);

  return v9(a2, a2 + v6);
}

uint64_t MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a2;
  v14 = a1;
  outlined copy of Data._Representation(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v33 = v16;
    v21 = v14;
    v22 = v13;
    v23 = a3;
    v24 = v9;
    v25 = a6;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

    *(v17 + 4) = v26;
    a6 = v25;
    v9 = v24;
    a3 = v23;
    v13 = v22;
    v14 = v21;
    _os_log_impl(&dword_26524C000, v15, v33, "MLSDaemon members called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  type metadata accessor for MLS.GroupMembersError();
  v27 = swift_allocObject();
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = v9;
  v28 = swift_allocObject();
  v28[2] = v9;
  v28[3] = a3;
  v28[4] = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
  *(v29 + 24) = v28;
  v30 = v9;
  outlined copy of Data._Representation(v14, v13);
  v31 = v30;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupMembersError and conformance MLS.GroupMembersError, MEMORY[0x277D4CDD0], MEMORY[0x277D4CDC8]);
  lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>();
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = type metadata accessor for MLS.GroupMembersContext();
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupMembersContext and conformance MLS.GroupMembersContext, MEMORY[0x277D4CF50], MEMORY[0x277D4CF58]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.GroupMembersContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon members decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for MLS.GroupMembersContext();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[18] = v1;
  v2 = *v1 + 88;
  v0[19] = *v2;
  v0[20] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[21] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:), v4, v3);
}

{
  v1 = *(v0 + 152);

  *(v0 + 176) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:), 0, 0);
}

{
  v70 = v0;
  if (*(v0[22] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[2]), (v2 & 1) != 0))
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[11];
    log = v0[10];
    v62 = v0[13];
    v6 = v0[3];
    v58 = v0[17];
    v59 = v0[2];
    v7 = (*(v0[22] + 56) + 48 * v1);
    v0[23] = *v7;
    v0[24] = v7[1];
    v0[25] = v7[2];
    v0[26] = v7[3];
    v0[27] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v4 + 16))(v58, v6, v3);
    (*(v5 + 16))(v62, v59, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    if (v10)
    {
      v63 = v9;
      v17 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v69[0] = v65;
      *v17 = 136315394;
      loga = v8;
      v18 = MLS.GroupMembersContext.identifier.getter();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v69);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v15 + 8))(v14, v16);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v69);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_26524C000, loga, v63, "MLSDaemon members calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v65, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v67 = (*MEMORY[0x277D4D080] + MEMORY[0x277D4D080]);
    v54 = swift_task_alloc();
    v0[28] = v54;
    *v54 = v0;
    v54[1] = closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
    v56 = v0[5];
    v55 = v0[6];
    v57 = v0[3];

    return (v67)(v56, v55, v57);
  }

  else
  {
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[14];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[10];
    v32 = v0[3];
    v33 = v0[2];

    (*(v27 + 16))(v26, v32, v28);
    (*(v30 + 16))(v29, v33, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[15];
    v38 = v0[16];
    v39 = v0[14];
    v40 = v0[11];
    v41 = v0[12];
    v42 = v0[10];
    if (v36)
    {
      v66 = v34;
      v43 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69[0] = v68;
      *v43 = 136315394;
      v44 = MLS.GroupMembersContext.identifier.getter();
      v64 = v35;
      v46 = v45;
      (*(v37 + 8))(v38, v39);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v69);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v40 + 8))(v41, v42);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v69);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26524C000, v66, v64, "MLSDaemon members has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v68, -1, -1);
      MEMORY[0x2667577B0](v43, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v41, v42);
      (*(v37 + 8))(v38, v39);
    }

    (*(v0[8] + 104))(v0[9], *MEMORY[0x277D4D2B0], v0[7]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 216);
  swift_unknownObjectRelease(*(v8 + 184), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);
  v18 = *(v8 + 240);

  return v17(v18);
}

{
  v9 = *(v8 + 216);
  swift_unknownObjectRelease(*(v8 + 184), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC19GroupMembersContextVtMR) + 48);
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error);

  return v9(a2, a2 + v6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon add called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.GroupOperationError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a7;
  v25[7] = a8;
  v25[8] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a5;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError, MEMORY[0x277D4CF68], MEMORY[0x277D4CF60]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1A8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupOperationContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon add calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D0D0] + MEMORY[0x277D4D0D0]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon add has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
  v8 = *(a2 + *(v7 + 48));
  v9 = *(v7 + 64);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, v8, a2 + v9);
}

uint64_t MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon kick called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.GroupOperationError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a7;
  v25[7] = a8;
  v25[8] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a5;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError, MEMORY[0x277D4CF68], MEMORY[0x277D4CF60]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1A8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject *a7@<X6>, const char *a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a8;
  v62 = a7;
  v70 = a2;
  v64 = a5;
  v65 = a6;
  v68 = a3;
  v69 = a4;
  v63 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v67 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for MLS.UniqueClientIdentifier();
  v66 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v58 - v23;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v25 = v71;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v25)
  {
    v58 = v13;
    v59 = v21;
    v70 = v17;
    v71 = v24;
    v28 = v66;
    v27 = v67;
    v60 = v9;
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v29 = v72;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationContext<Data> and conformance MLS.GroupOperationContext<A>, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CFD8]);
    v30 = v60;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v32 = v70;
    v31 = v71;
    v69 = 0;
    v68 = v29;

    v33 = v27;
    v34 = v58;
    (*(v27 + 16))(v58, v16, v30);
    v35 = v28;
    v36 = *(v28 + 16);
    v37 = v59;
    v36(v59, v31, v32);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v37;
      v41 = v33;
      v42 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v72 = v65;
      *v42 = 136315394;
      LODWORD(v64) = v39;
      v43 = MLS.SigningContext.identifier.getter();
      v62 = v38;
      v44 = v43;
      v46 = v45;
      (*(v41 + 8))(v34, v60);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v72);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v35 + 8))(v40, v32);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v72);

      *(v42 + 14) = v51;
      v52 = v62;
      _os_log_impl(&dword_26524C000, v62, v64, v61, v42, 0x16u);
      v53 = v65;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v53, -1, -1);
      v30 = v60;
      MEMORY[0x2667577B0](v42, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v32);
      (*(v33 + 8))(v34, v30);
      v41 = v33;
    }

    v54 = v63;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC21GroupOperationContextVy_10Foundation4DataVGtMR);
    v56 = *(v55 + 48);
    v57 = *(v55 + 64);
    (*(v35 + 32))(v54, v71, v32);
    *(v54 + v56) = v68;
    return (*(v41 + 32))(v54 + v57, v16, v30);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupOperationContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon kick calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D0D8] + MEMORY[0x277D4D0D8]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon kick has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

void @objc MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(void *a1, int a2, void *a3, void *a4, void *a5, void *a6, void *aBlock, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v15 = _Block_copy(aBlock);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v33 = a1;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = swift_allocObject();
  *(v32 + 16) = v15;
  a10(v20, v22, v23, v25, v26, v28, v29, v31, a9, v32);

  outlined consume of Data._Representation(v29, v31);

  outlined consume of Data._Representation(v23, v25);
  outlined consume of Data._Representation(v20, v22);
}

uint64_t MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a2;
  v14 = a1;
  outlined copy of Data._Representation(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v33 = v16;
    v21 = v14;
    v22 = v13;
    v23 = a3;
    v24 = v9;
    v25 = a6;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

    *(v17 + 4) = v26;
    a6 = v25;
    v9 = v24;
    a3 = v23;
    v13 = v22;
    v14 = v21;
    _os_log_impl(&dword_26524C000, v15, v33, "MLSDaemon leave called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  type metadata accessor for MLS.GroupOperationError();
  v27 = swift_allocObject();
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = v9;
  v28 = swift_allocObject();
  v28[2] = v9;
  v28[3] = a3;
  v28[4] = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
  *(v29 + 24) = v28;
  v30 = v9;
  outlined copy of Data._Representation(v14, v13);
  v31 = v30;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupOperationError and conformance MLS.GroupOperationError, MEMORY[0x277D4CF68], MEMORY[0x277D4CF60]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationProcessedContext<Data> and conformance MLS.GroupOperationProcessedContext<A>, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1A8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupOperationContext<Data> and conformance MLS.GroupOperationContext<A>, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CFD8]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.SigningContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon leave decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v9 = type metadata accessor for Metric();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[27] = v1;
  v2 = *v1 + 88;
  v0[28] = *v2;
  v0[29] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[30] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 224);

  *(v0 + 248) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:), 0, 0);
}

{
  v79 = v0;
  if (*(v0[31] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[26];
    v4 = v0[23];
    v74 = v0[22];
    v5 = v0[20];
    v63 = v0[21];
    v6 = v0[19];
    v65 = v0[16];
    v66 = v0[25];
    v67 = v0[15];
    log = v0[18];
    v62 = v0[8];
    v64 = v0[7];
    v7 = (*(v0[31] + 56) + 48 * v1);
    v0[32] = *v7;
    v0[33] = v7[1];
    v0[34] = v7[2];
    v0[35] = v7[3];
    v0[36] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v62, v74);
    (*(v5 + 104))(v63, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupOperationContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v63, v6);
    v9(v0 + 2, 0);
    v8(v66, v62, v74);
    (*(v65 + 16))(log, v64, v67);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    if (v12)
    {
      v71 = v11;
      v19 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v68 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v78);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v68, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v78);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v71, "MLSDaemon leave calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v75, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[37] = v23;
    v77 = (*MEMORY[0x277D4D0E8] + MEMORY[0x277D4D0E8]);
    v57 = swift_task_alloc();
    v0[38] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
    v58 = v0[26];
    v59 = v0[10];
    v60 = v0[11];
    v61 = v0[6];

    return v77(v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[22];
    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[15];
    v35 = v0[8];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[22];
    v43 = v0[16];
    v44 = v0[17];
    v45 = v0[15];
    if (v39)
    {
      v73 = v37;
      v46 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v78[0] = v76;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v72 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v78);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v78);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v73, v72, "MLSDaemon leave has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4D2B0], v0[12]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 288);
  v10 = *(v8 + 296);
  v11 = *(v8 + 208);
  v12 = *(v8 + 176);
  swift_unknownObjectRelease(*(v8 + 256), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

{
  v9 = *(v8 + 288);
  v10 = *(v8 + 296);
  v11 = *(v8 + 208);
  v12 = *(v8 + 176);
  swift_unknownObjectRelease(*(v8 + 256), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC21GroupOperationContextVy_10Foundation4DataVGtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = a2;
  v14 = a1;
  outlined copy of Data._Representation(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v14, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = Data.description.getter();
    v33 = v16;
    v21 = v14;
    v22 = v13;
    v23 = a3;
    v24 = v9;
    v25 = a6;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

    *(v17 + 4) = v26;
    a6 = v25;
    v9 = v24;
    a3 = v23;
    v13 = v22;
    v14 = v21;
    _os_log_impl(&dword_26524C000, v15, v33, "MLSDaemon downgrade called { uniqueClientIdentifier: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2667577B0](v18, -1, -1);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  type metadata accessor for MLS.DowngradeError();
  v27 = swift_allocObject();
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = v9;
  v28 = swift_allocObject();
  v28[2] = v9;
  v28[3] = a3;
  v28[4] = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
  *(v29 + 24) = v28;
  v30 = v9;
  outlined copy of Data._Representation(v14, v13);
  v31 = v30;
  outlined copy of Data._Representation(a5, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.DowngradeError and conformance MLS.DowngradeError, MEMORY[0x277D4CCE0], MEMORY[0x277D4CCD8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeProcessedContext<Data> and conformance MLS.DowngradeProcessedContext<A>, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25DowngradeProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D058]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.DowngradeContext<Data> and conformance MLS.DowngradeContext<A>, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CD70]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.SigningContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon downgrade decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v9 = type metadata accessor for Metric();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO16DowngradeContextVy_10Foundation4DataVGMR);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[27] = v1;
  v2 = *v1 + 88;
  v0[28] = *v2;
  v0[29] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[30] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 224);

  *(v0 + 248) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:), 0, 0);
}

{
  v79 = v0;
  if (*(v0[31] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[26];
    v4 = v0[23];
    v74 = v0[22];
    v5 = v0[20];
    v63 = v0[21];
    v6 = v0[19];
    v65 = v0[16];
    v66 = v0[25];
    v67 = v0[15];
    log = v0[18];
    v62 = v0[8];
    v64 = v0[7];
    v7 = (*(v0[31] + 56) + 48 * v1);
    v0[32] = *v7;
    v0[33] = v7[1];
    v0[34] = v7[2];
    v0[35] = v7[3];
    v0[36] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v62, v74);
    (*(v5 + 104))(v63, *MEMORY[0x277D4D278], v6);
    v9 = MLS.DowngradeContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v63, v6);
    v9(v0 + 2, 0);
    v8(v66, v62, v74);
    (*(v65 + 16))(log, v64, v67);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    if (v12)
    {
      v71 = v11;
      v19 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v68 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v78);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v68, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v78);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v71, "MLSDaemon downgrade calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v75, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[37] = v23;
    v77 = (*MEMORY[0x277D4D100] + MEMORY[0x277D4D100]);
    v57 = swift_task_alloc();
    v0[38] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
    v58 = v0[26];
    v59 = v0[10];
    v60 = v0[11];
    v61 = v0[6];

    return v77(v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[22];
    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[15];
    v35 = v0[8];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[24];
    v42 = v0[22];
    v43 = v0[16];
    v44 = v0[17];
    v45 = v0[15];
    if (v39)
    {
      v73 = v37;
      v46 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v78[0] = v76;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v72 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v78);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v78);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v73, v72, "MLSDaemon downgrade has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4D2B0], v0[12]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.DowngradeContext<Data>) -> (@out MLS.DowngradeProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC16DowngradeContextVy_10Foundation4DataVGtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon applicationEncrypt called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.EncryptionError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a7;
  v25[5] = a8;
  v25[6] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a7, a8);
  outlined copy of Data._Representation(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError, MEMORY[0x277D4CD08], MEMORY[0x277D4CD00]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionProcessedContext<Data> and conformance MLS.EncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26EncryptionProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D130]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.EncryptionContext<MLS.AllMember, Data> and conformance MLS.EncryptionContext<A, B>, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CDA0]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.SigningContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon applicationEncrypt decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Metric();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 240);

  *(v0 + 264) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:), 0, 0);
}

{
  v81 = v0;
  if (*(v0[33] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[25];
    v76 = v0[24];
    v5 = v0[22];
    v65 = v0[23];
    v6 = v0[21];
    v67 = v0[18];
    v68 = v0[27];
    v69 = v0[17];
    log = v0[20];
    v64 = v0[8];
    v66 = v0[7];
    v7 = (*(v0[33] + 56) + 48 * v1);
    v0[34] = *v7;
    v0[35] = v7[1];
    v0[36] = v7[2];
    v0[37] = v7[3];
    v0[38] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v64, v76);
    (*(v5 + 104))(v65, *MEMORY[0x277D4D278], v6);
    v9 = MLS.EncryptionContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v65, v6);
    v9(v0 + 2, 0);
    v8(v68, v64, v76);
    (*(v67 + 16))(log, v66, v69);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    if (v12)
    {
      v73 = v11;
      v19 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v70 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v80);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v70, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v80);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v73, "MLSDaemon applicationEncrypt calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[39] = v23;
    v79 = (*MEMORY[0x277D4D0C0] + MEMORY[0x277D4D0C0]);
    v57 = swift_task_alloc();
    v0[40] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
    v58 = v0[28];
    v59 = v0[12];
    v60 = v0[13];
    v61 = v0[10];
    v62 = v0[11];
    v63 = v0[6];

    return v79(v63, v61, v62, v59, v60, v58);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[8];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[17];
    if (v39)
    {
      v75 = v37;
      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80[0] = v78;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v74 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v80);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v80);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v75, v74, "MLSDaemon applicationEncrypt has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v78, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B0], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.EncryptionContext<MLS.AllMember, Data>) -> (@out MLS.EncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon applicationSign called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.SigningError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a7;
  v25[7] = a8;
  v25[8] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a5;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError, MEMORY[0x277D4CCA8], MEMORY[0x277D4CCA0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.SigningProcessedContext<Data> and conformance MLS.SigningProcessedContext<A>, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23SigningProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D030]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a7;
  v63 = a5;
  v64 = a6;
  v69 = a3;
  v70 = a4;
  v72 = a2;
  v62 = a8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
  v68 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66, v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for MLS.SigningInput();
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MLS.UniqueClientIdentifier();
  v67 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v57 - v24;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v8)
  {
    v58 = v14;
    v59 = v18;
    v57 = v22;
    v72 = v25;
    v28 = v67;
    v27 = v68;
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput, MEMORY[0x277D4CCB0], MEMORY[0x277D4CCB8]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.SigningContext<Data> and conformance MLS.SigningContext<A>, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CCF8]);
    v29 = v58;
    v30 = v66;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v69 = 0;
    v70 = v15;

    v31 = v59;
    v32 = v27;
    v33 = v61;
    (*(v27 + 16))(v61, v29, v30);
    v34 = v28;
    v35 = *(v28 + 16);
    v36 = v57;
    v35(v57, v72, v31);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      LODWORD(v63) = v38;
      v40 = v39;
      v64 = swift_slowAlloc();
      v73 = v64;
      *v40 = 136315394;
      v41 = MLS.SigningContext.identifier.getter();
      v42 = v33;
      v44 = v43;
      (*(v32 + 8))(v42, v66);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v73);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v34 + 8))(v36, v31);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v73);
      v30 = v66;

      *(v40 + 14) = v49;
      _os_log_impl(&dword_26524C000, v37, v63, "MLSDaemon applicationSign decoded { identifier: %s, uniqueClientIdentifier: %s }", v40, 0x16u);
      v50 = v64;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v50, -1, -1);
      MEMORY[0x2667577B0](v40, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v36, v31);
      (*(v32 + 8))(v33, v30);
    }

    v51 = v62;
    v52 = v34;
    v53 = v65;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMR);
    v55 = *(v54 + 48);
    v56 = *(v54 + 64);
    (*(v52 + 32))(v51, v72, v31);
    (*(v53 + 32))(v51 + v55, v71, v70);
    return (*(v32 + 32))(v51 + v56, v58, v30);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14SigningContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.SigningContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon applicationSign calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D088] + MEMORY[0x277D4D088]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon applicationSign has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.SigningInput, @in_guaranteed MLS.SigningContext<Data>) -> (@out MLS.SigningProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC12SigningInputVAC0G7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a2 + v8, a2 + v9);
}

uint64_t MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v35 = v10;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v33 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = a3;
    v24 = a7;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v37);

    *(v19 + 4) = v25;
    a7 = v24;
    a3 = v23;
    _os_log_impl(&dword_26524C000, v17, v18, "MLSDaemon applicationEncrypt groupName called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v26 = v19;
    a5 = v33;
    MEMORY[0x2667577B0](v26, -1, -1);
  }

  type metadata accessor for MLS.EncryptionError();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = a7;
  v27[5] = a8;
  v27[6] = v35;
  v28 = swift_allocObject();
  v28[2] = v35;
  v28[3] = a3;
  v28[4] = a4;
  v28[5] = a5;
  v28[6] = a6;
  v29 = swift_allocObject();
  *(v29 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:);
  *(v29 + 24) = v28;
  v30 = v35;
  outlined copy of Data._Representation(a1, a2);
  v31 = v30;
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.EncryptionError and conformance MLS.EncryptionError, MEMORY[0x277D4CD08], MEMORY[0x277D4CD00]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionProcessedContext<Data> and conformance MLS.GroupNameEncryptionProcessedContext<A>, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO35GroupNameEncryptionProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1C8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupNameEncryptionContext<MLS.AllMember, Data> and conformance MLS.GroupNameEncryptionContext<A, B>, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4D138]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.SigningContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon applicationEncrypt groupName decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Metric();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 240);

  *(v0 + 264) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:), 0, 0);
}

{
  v81 = v0;
  if (*(v0[33] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[25];
    v76 = v0[24];
    v5 = v0[22];
    v65 = v0[23];
    v6 = v0[21];
    v67 = v0[18];
    v68 = v0[27];
    v69 = v0[17];
    log = v0[20];
    v64 = v0[8];
    v66 = v0[7];
    v7 = (*(v0[33] + 56) + 48 * v1);
    v0[34] = *v7;
    v0[35] = v7[1];
    v0[36] = v7[2];
    v0[37] = v7[3];
    v0[38] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v64, v76);
    (*(v5 + 104))(v65, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupNameEncryptionContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v65, v6);
    v9(v0 + 2, 0);
    v8(v68, v64, v76);
    (*(v67 + 16))(log, v66, v69);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    if (v12)
    {
      v73 = v11;
      v19 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v70 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v80);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v70, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v80);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v73, "MLSDaemon applicationEncrypt groupName calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[39] = v23;
    v79 = (*MEMORY[0x277D4D0C8] + MEMORY[0x277D4D0C8]);
    v57 = swift_task_alloc();
    v0[40] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
    v58 = v0[28];
    v59 = v0[12];
    v60 = v0[13];
    v61 = v0[10];
    v62 = v0[11];
    v63 = v0[6];

    return v79(v63, v61, v62, v59, v60, v58);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[8];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[17];
    if (v39)
    {
      v75 = v37;
      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80[0] = v78;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v74 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v80);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v80);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v75, v74, "MLSDaemon applicationEncrypt groupName has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v78, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B0], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupNameEncryptionContext<MLS.AllMember, Data>) -> (@out MLS.GroupNameEncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon processIncoming groupName called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a7;
  v25[5] = a8;
  v25[6] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a7, a8);
  outlined copy of Data._Representation(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8], MEMORY[0x277D4CFB0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameProcessedContext<Data> and conformance MLS.IncomingGroupNameProcessedContext<A>, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33IncomingGroupNameProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1C0]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)@<X0>(uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a6;
  v54 = a3;
  v55 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v52 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v53 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v48 - v19;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v21 = v57;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v57 = v9;
    v23 = v53;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingGroupNameContext<Data> and conformance MLS.IncomingGroupNameContext<A>, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D040]);
    v24 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v25 = v52;
    v26 = *(v52 + 16);
    v55 = v12;
    v26(v57, v12, v24);
    v27 = v20;
    (*(v23 + 16))(v17, v20, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v30 = 136315394;
      LODWORD(v50) = v29;
      v31 = v57;
      v32 = MLS.SigningContext.identifier.getter();
      v49 = v28;
      v33 = v27;
      v34 = v32;
      v36 = v35;
      (*(v52 + 8))(v31, v56);
      v37 = v34;
      v27 = v33;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v58);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v23 + 8))(v17, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v58);
      v24 = v56;

      *(v30 + 14) = v42;
      v43 = v49;
      _os_log_impl(&dword_26524C000, v49, v50, "MLSDaemon processIncoming groupName decoded { identifier: %s, uniqueClientIdentifier: %s }", v30, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v44, -1, -1);
      v45 = v30;
      v25 = v52;
      MEMORY[0x2667577B0](v45, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v17, v13);
      (*(v25 + 8))(v57, v24);
    }

    v46 = v51;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMR) + 48);
    (*(v23 + 32))(v46, v27, v13);
    return (*(v25 + 32))(v46 + v47, v55, v24);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Metric();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO24IncomingGroupNameContextVy_10Foundation4DataVGMR);
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 240);

  *(v0 + 264) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:), 0, 0);
}

{
  v81 = v0;
  if (*(v0[33] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[25];
    v76 = v0[24];
    v5 = v0[22];
    v65 = v0[23];
    v6 = v0[21];
    v67 = v0[18];
    v68 = v0[27];
    v69 = v0[17];
    log = v0[20];
    v64 = v0[8];
    v66 = v0[7];
    v7 = (*(v0[33] + 56) + 48 * v1);
    v0[34] = *v7;
    v0[35] = v7[1];
    v0[36] = v7[2];
    v0[37] = v7[3];
    v0[38] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v64, v76);
    (*(v5 + 104))(v65, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingGroupNameContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v65, v6);
    v9(v0 + 2, 0);
    v8(v68, v64, v76);
    (*(v67 + 16))(log, v66, v69);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    if (v12)
    {
      v73 = v11;
      v19 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v70 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v80);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v70, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v80);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v73, "MLSDaemon processIncoming groupName calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[39] = v23;
    v79 = (*MEMORY[0x277D4D0B0] + MEMORY[0x277D4D0B0]);
    v57 = swift_task_alloc();
    v0[40] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
    v58 = v0[28];
    v59 = v0[12];
    v60 = v0[13];
    v61 = v0[10];
    v62 = v0[11];
    v63 = v0[6];

    return v79(v63, v61, v62, v59, v60, v58);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[8];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[17];
    if (v39)
    {
      v75 = v37;
      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80[0] = v78;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v74 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v80);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v80);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v75, v74, "MLSDaemon processIncoming groupName has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v78, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B0], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 304);
  v10 = *(v8 + 312);
  v11 = *(v8 + 224);
  v12 = *(v8 + 192);
  swift_unknownObjectRelease(*(v8 + 272), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

{
  v9 = *(v8 + 304);
  v10 = *(v8 + 312);
  v11 = *(v8 + 224);
  v12 = *(v8 + 192);
  swift_unknownObjectRelease(*(v8 + 272), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingGroupNameContext<Data>) -> (@out MLS.IncomingGroupNameProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingGroupNameContextVy_10Foundation4DataVGtMR) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a2 + v7);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v34 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a8;
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136315138;
    v20 = Data.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon processIncoming called { uniqueClientIdentifier: %s }", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    a8 = v32;
    MEMORY[0x2667577B0](v19, -1, -1);
    MEMORY[0x2667577B0](v18, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v24 = a4;
  v23[6] = a7;
  v23[7] = a8;
  v31 = a2;
  v25 = a8;
  v23[8] = v34;
  v23[9] = a5;
  v23[10] = a6;
  v26 = swift_allocObject();
  v26[2] = v34;
  v26[3] = a5;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:);
  *(v27 + 24) = v26;
  v28 = v34;

  outlined copy of Data._Representation(a1, v31);
  v29 = v28;

  outlined copy of Data._Representation(a3, v24);
  outlined copy of Data._Representation(a7, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8], MEMORY[0x277D4CFB0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1B8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v69 = a2;
  v57 = a8;
  v58 = a7;
  v62 = a5;
  v63 = a6;
  v66 = a3;
  v67 = a4;
  v60 = a9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v61 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65, v10);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for MLS.UniqueClientIdentifier();
  v68 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v57 - v26;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v28 = v70;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v28)
  {
    v69 = v24;
    v70 = v27;
    v30 = v65;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR, MEMORY[0x277D4CD20]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v31 = v16;

    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageContext<Data> and conformance MLS.IncomingMessageContext<A>, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CFE8]);
    v32 = v15;
    v33 = v30;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v63 = v19;
    v67 = v31;

    v34 = v59;
    (*(v61 + 16))(v59, v32, v30);
    (*(v68 + 16))(v69, v70, v20);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v62 = a10;

    v37 = os_log_type_enabled(v35, v36);
    v66 = v32;
    if (v37)
    {
      v38 = v35;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71 = v40;
      *v39 = 136315650;
      LODWORD(v58) = v36;
      v41 = MLS.SigningContext.identifier.getter();
      v43 = v42;
      (*(v61 + 8))(v34, v30);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v71);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v62, &v71);
      *(v39 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v45 = v69;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v68 + 8))(v45, v20);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v71);
      v33 = v30;

      *(v39 + 24) = v49;
      _os_log_impl(&dword_26524C000, v38, v58, "MLSDaemon processIncoming decoded { identifier: %s, group: %s, uniqueClientIdentifier: %s }", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v40, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);

      v50 = v60;
      v51 = v61;
    }

    else
    {

      (*(v68 + 8))(v69, v20);
      v51 = v61;
      (*(v61 + 8))(v34, v33);
      v50 = v60;
    }

    v53 = v63;
    v52 = v64;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
    v55 = *(v54 + 48);
    v56 = *(v54 + 64);
    (*(v68 + 32))(v50, v70, v20);
    (*(v52 + 32))(v50 + v55, v53, v67);
    return (*(v51 + 32))(v50 + v56, v66, v33);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingMessageContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon processIncoming calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D0A8] + MEMORY[0x277D4D0A8]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon processIncoming has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingMessageContext<Data>) -> (@out MLS.IncomingMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a2 + v8, a2 + v9);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  outlined copy of Data._Representation(a1, a2);
  v29 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v18 = Data.description.getter();
    v20 = a3;
    v21 = a5;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

    *(v16 + 4) = v22;
    a5 = v21;
    a3 = v20;
    _os_log_impl(&dword_26524C000, v14, v15, "MLSDaemon processIncoming called { uniqueClientIdentifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2667577B0](v17, -1, -1);
    MEMORY[0x2667577B0](v16, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a5;
  v23[7] = a6;
  v23[8] = v29;
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a1, a2);
  v27 = v26;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a5, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8], MEMORY[0x277D4CFB0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageProcessedContext<Data> and conformance MLS.IncomingMessageProcessedContext<A>, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1B8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v62 = a8;
  v63 = a5;
  v64 = a6;
  v70 = a3;
  v71 = a4;
  v73 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v69 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66, v9);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v72 = &v58 - v17;
  v18 = type metadata accessor for MLS.UniqueClientIdentifier();
  v67 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v58 - v24;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v8)
  {
    v59 = v14;
    v60 = v18;
    v58 = v22;
    v73 = v25;
    v28 = v67;
    v27 = v68;
    v29 = v69;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR, MEMORY[0x277D4CD20]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessageContext<Data> and conformance MLS.IncomingMessageContext<A>, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CFE8]);
    v30 = v59;
    v31 = v66;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v70 = 0;
    v71 = v15;

    v32 = v29;
    v33 = v27;
    v34 = v60;
    (*(v29 + 16))(v33, v30, v31);
    v35 = v28;
    v36 = *(v28 + 16);
    v37 = v58;
    v36(v58, v73, v34);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      LODWORD(v63) = v39;
      v41 = v40;
      v64 = swift_slowAlloc();
      v74 = v64;
      *v41 = 136315394;
      v42 = MLS.SigningContext.identifier.getter();
      v43 = v33;
      v45 = v44;
      (*(v32 + 8))(v43, v66);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v74);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v35 + 8))(v37, v34);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v74);
      v31 = v66;

      *(v41 + 14) = v50;
      _os_log_impl(&dword_26524C000, v38, v63, "MLSDaemon processIncoming decoded { identifier: %s, uniqueClientIdentifier: %s }", v41, 0x16u);
      v51 = v64;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v51, -1, -1);
      MEMORY[0x2667577B0](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v34);
      (*(v32 + 8))(v33, v31);
    }

    v52 = v62;
    v53 = v35;
    v54 = v65;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC15IncomingMessageVy_AC9AllMemberOGAC0gH7ContextVy_10Foundation4DataVGtMR);
    v56 = *(v55 + 48);
    v57 = *(v55 + 64);
    (*(v53 + 32))(v52, v73, v34);
    (*(v54 + 32))(v52 + v56, v72, v71);
    return (*(v32 + 32))(v52 + v57, v59, v31);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for Metric();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[26] = v1;
  v2 = *v1 + 88;
  v0[27] = *v2;
  v0[28] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 216);

  *(v0 + 240) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:), 0, 0);
}

{
  v78 = v0;
  if (*(v0[30] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[25];
    v4 = v0[22];
    v73 = v0[21];
    v5 = v0[19];
    v62 = v0[20];
    v6 = v0[18];
    v64 = v0[15];
    v65 = v0[24];
    v66 = v0[14];
    log = v0[17];
    v61 = v0[9];
    v63 = v0[7];
    v7 = (*(v0[30] + 56) + 48 * v1);
    v0[31] = *v7;
    v0[32] = v7[1];
    v0[33] = v7[2];
    v0[34] = v7[3];
    v0[35] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v61, v73);
    (*(v5 + 104))(v62, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingMessageContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v62, v6);
    v9(v0 + 2, 0);
    v8(v65, v61, v73);
    (*(v64 + 16))(log, v63, v66);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[22];
    v16 = v0[17];
    v18 = v0[14];
    v17 = v0[15];
    if (v12)
    {
      v70 = v11;
      v19 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v77[0] = v74;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v67 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v77);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v67, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v77);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v70, "MLSDaemon processIncoming calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v74, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[36] = v23;
    v76 = (*MEMORY[0x277D4D0A0] + MEMORY[0x277D4D0A0]);
    v57 = swift_task_alloc();
    v0[37] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
    v58 = v0[25];
    v59 = v0[8];
    v60 = v0[6];

    return v76(v60, v59, v58);
  }

  else
  {
    v30 = v0[22];
    v29 = v0[23];
    v31 = v0[21];
    v33 = v0[15];
    v32 = v0[16];
    v34 = v0[14];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[22];
    v41 = v0[23];
    v42 = v0[21];
    v43 = v0[15];
    v44 = v0[16];
    v45 = v0[14];
    if (v39)
    {
      v72 = v37;
      v46 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v77[0] = v75;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v71 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v77);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v77);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v72, v71, "MLSDaemon processIncoming has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v75, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D4D2B0], v0[11]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 280);
  v10 = *(v8 + 288);
  v11 = *(v8 + 200);
  v12 = *(v8 + 168);
  swift_unknownObjectRelease(*(v8 + 248), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

{
  v9 = *(v8 + 280);
  v10 = *(v8 + 288);
  v11 = *(v8 + 200);
  v12 = *(v8 + 168);
  swift_unknownObjectRelease(*(v8 + 248), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon processIncomingFTD called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a7;
  v25[7] = a8;
  v25[8] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a5;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8], MEMORY[0x277D4CFB0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptProcessedContext<Data> and conformance MLS.IncomingFailureToDecryptProcessedContext<A>, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO40IncomingFailureToDecryptProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1D8]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v62 = a8;
  v63 = a5;
  v64 = a6;
  v70 = a3;
  v71 = a4;
  v73 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v69 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66, v9);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR);
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v72 = &v58 - v17;
  v18 = type metadata accessor for MLS.UniqueClientIdentifier();
  v67 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v58 - v24;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v8)
  {
    v59 = v14;
    v60 = v18;
    v58 = v22;
    v73 = v25;
    v28 = v67;
    v27 = v68;
    v29 = v69;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecrypt<MLS.AllMember> and conformance MLS.IncomingFailureToDecrypt<A>, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO24IncomingFailureToDecryptVy_AC9AllMemberOGMR, MEMORY[0x277D4D038]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingFailureToDecryptContext<Data> and conformance MLS.IncomingFailureToDecryptContext<A>, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1B0]);
    v30 = v59;
    v31 = v66;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v70 = 0;
    v71 = v15;

    v32 = v29;
    v33 = v27;
    v34 = v60;
    (*(v29 + 16))(v33, v30, v31);
    v35 = v28;
    v36 = *(v28 + 16);
    v37 = v58;
    v36(v58, v73, v34);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      LODWORD(v63) = v39;
      v41 = v40;
      v64 = swift_slowAlloc();
      v74 = v64;
      *v41 = 136315394;
      v42 = MLS.SigningContext.identifier.getter();
      v43 = v33;
      v45 = v44;
      (*(v32 + 8))(v43, v66);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v74);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v35 + 8))(v37, v34);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v74);
      v31 = v66;

      *(v41 + 14) = v50;
      _os_log_impl(&dword_26524C000, v38, v63, "MLSDaemon processIncomingFTD decoded { identifier: %s, uniqueClientIdentifier: %s }", v41, 0x16u);
      v51 = v64;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v51, -1, -1);
      MEMORY[0x2667577B0](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v34);
      (*(v32 + 8))(v33, v31);
    }

    v52 = v62;
    v53 = v35;
    v54 = v65;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMR);
    v56 = *(v55 + 48);
    v57 = *(v55 + 64);
    (*(v53 + 32))(v52, v73, v34);
    (*(v54 + 32))(v52 + v56, v72, v71);
    return (*(v32 + 32))(v52 + v57, v59, v31);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingFailureToDecryptContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingFailureToDecryptContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon processIncomingFTD calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D098] + MEMORY[0x277D4D098]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon processIncomingFTD has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingFailureToDecrypt<MLS.AllMember>, @in_guaranteed MLS.IncomingFailureToDecryptContext<Data>) -> (@out MLS.IncomingFailureToDecryptProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC24IncomingFailureToDecryptVy_AC9AllMemberOGAC0ghiJ7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a2 + v8, a2 + v9);
}

uint64_t MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon processIncoming errorMessage called { uniqueClientIdentifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2667577B0](v20, -1, -1);
    v24 = v19;
    a5 = v18;
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  type metadata accessor for MLS.IncomingMessageError();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a7;
  v25[7] = a8;
  v25[8] = v31;
  v26 = swift_allocObject();
  v26[2] = v31;
  v26[3] = a5;
  v26[4] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:);
  *(v27 + 24) = v26;
  v28 = v31;
  outlined copy of Data._Representation(a1, a2);
  v29 = v28;
  outlined copy of Data._Representation(a3, a4);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError, MEMORY[0x277D4CFB8], MEMORY[0x277D4CFB0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageProcessedContext<Data> and conformance MLS.IncomingErrorMessageProcessedContext<A>, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO36IncomingErrorMessageProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D1D0]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v62 = a8;
  v63 = a5;
  v64 = a6;
  v70 = a3;
  v71 = a4;
  v73 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
  v69 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66, v9);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR);
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v72 = &v58 - v17;
  v18 = type metadata accessor for MLS.UniqueClientIdentifier();
  v67 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v58 - v24;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v8)
  {
    v59 = v14;
    v60 = v18;
    v58 = v22;
    v73 = v25;
    v28 = v67;
    v27 = v68;
    v29 = v69;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessage<MLS.AllMember> and conformance MLS.IncomingErrorMessage<A>, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO20IncomingErrorMessageVy_AC9AllMemberOGMR, MEMORY[0x277D4CFA8]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingErrorMessageContext<Data> and conformance MLS.IncomingErrorMessageContext<A>, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D160]);
    v30 = v59;
    v31 = v66;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v70 = 0;
    v71 = v15;

    v32 = v29;
    v33 = v27;
    v34 = v60;
    (*(v29 + 16))(v33, v30, v31);
    v35 = v28;
    v36 = *(v28 + 16);
    v37 = v58;
    v36(v58, v73, v34);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      LODWORD(v63) = v39;
      v41 = v40;
      v64 = swift_slowAlloc();
      v74 = v64;
      *v41 = 136315394;
      v42 = MLS.IncomingErrorMessageContext.identifier.getter();
      v43 = v33;
      v45 = v44;
      (*(v32 + 8))(v43, v66);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v74);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v35 + 8))(v37, v34);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v74);
      v31 = v66;

      *(v41 + 14) = v50;
      _os_log_impl(&dword_26524C000, v38, v63, "MLSDaemon processIncoming errorMessage decoded { identifier: %s, uniqueClientIdentifier: %s }", v41, 0x16u);
      v51 = v64;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v51, -1, -1);
      MEMORY[0x2667577B0](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v34);
      (*(v32 + 8))(v33, v31);
    }

    v52 = v62;
    v53 = v35;
    v54 = v65;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMR);
    v56 = *(v55 + 48);
    v57 = *(v55 + 64);
    (*(v53 + 32))(v52, v73, v34);
    (*(v54 + 32))(v52 + v56, v72, v71);
    return (*(v32 + 32))(v52 + v57, v59, v31);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO27IncomingErrorMessageContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.IncomingErrorMessageContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.IncomingErrorMessageContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon processIncoming errorMessage calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D090] + MEMORY[0x277D4D090]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v61, v59, v60, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.IncomingErrorMessageContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon processIncoming errorMessage has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingErrorMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingErrorMessageContext<Data>) -> (@out MLS.IncomingErrorMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC20IncomingErrorMessageVy_AC9AllMemberOGAC0ghI7ContextVy_10Foundation4DataVGtMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a2 + v8, a2 + v9);
}

uint64_t closure #1 in MLSDaemon.getKeyPackage(for:with:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for MLSActor();
  v2[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.getKeyPackage(for:with:), v4, v3);
}

uint64_t closure #1 in MLSDaemon.getKeyPackage(for:with:)(uint64_t a1)
{
  MLS.SwiftMLSClientPicker.client.getter();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = closure #1 in MLSDaemon.getKeyPackage(for:with:);
  v5 = v1[7];

  return MEMORY[0x2821ACA28](v5, v2, v3);
}

uint64_t closure #1 in MLSDaemon.getKeyPackage(for:with:)()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = closure #1 in MLSDaemon.getKeyPackage(for:with:);
  }

  else
  {
    v5 = closure #1 in MLSDaemon.getKeyPackage(for:with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLSDaemon.loadCredential(credential:uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  type metadata accessor for MLSActor();
  v4[5] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.loadCredential(credential:uri:with:), v6, v5);
}

uint64_t closure #1 in MLSDaemon.loadCredential(credential:uri:with:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = MEMORY[0x266756630]();
  v6 = v5;
  v0[8] = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLSDaemon.loadCredential(credential:uri:with:);
  v8 = v0[3];

  return MEMORY[0x2821ACA98](v8, v4, v6, v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = closure #1 in MLSDaemon.loadCredential(credential:uri:with:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = closure #1 in MLSDaemon.loadCredential(credential:uri:with:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v6 = type metadata accessor for UUID();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[19] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v8;
  v5[21] = v7;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:), v8, v7);
}

uint64_t closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1)
{
  MLS.SwiftMLSClientPicker.client.getter();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[22] = v4;
  *v4 = v1;
  v4[1] = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v5 = v1[13];

  return MEMORY[0x2821ACA20](v5, v2, v3);
}

uint64_t closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    v5 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  MLS.SwiftMLSClientPicker.client.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  dispatch thunk of MLS.SwiftMLSClientProtocol.clientUUID.getter();
  v7 = (*(*v2 + 312) + **(*v2 + 312));
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v4 = v0[18];
  v5 = v0[15];

  return v7(v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[20];
    v7 = v2[21];
    v8 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v6 = v2[20];
    v7 = v2[21];
    v8 = closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MLSActor();
  v5[7] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](protocol witness for MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:) in conformance MLSDaemon, v7, v6);
}

uint64_t protocol witness for MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:) in conformance MLSDaemon()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = *v1;
  v7 = v5[3];
  v8 = v5[4];
  v9 = __swift_project_boxed_opaque_existential_1(v5, v7);
  ObjectType = swift_getObjectType();
  specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(v9, v4, v3, v6, v7, ObjectType, v8, v2);
  v11 = v0[1];

  return v11();
}

uint64_t protocol witness for MLSDaemonProtocol.getKeyPackage(for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.getKeyPackage(for:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.credentialSigningRequest(for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.credentialSigningRequest(for:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.publicSigningKey(for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for MLS.Persister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:) in conformance DaemonPersister;

  return MLSDaemon.publicSigningKey(for:with:)(a1, a2);
}

uint64_t protocol witness for MLSDaemonProtocol.loadCredential(credential:uri:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.loadCredential(credential:uri:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.getCredential(uri:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.getCredential(uri:with:)(a1, a2, a3);
}

uint64_t protocol witness for MLSDaemonProtocol.updateClientID(swiftMLSClientID:for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(a1, a2, a3, a4);
}

uint64_t protocol witness for MLSDaemonProtocol.signWithParticipantKey(nonce:for:with:) in conformance MLSDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for MLS.Persister.loadSwiftMLSGroupID(identifier:clientIdentifier:) in conformance DaemonPersister;

  return MLSDaemon.signWithParticipantKey(nonce:for:with:)(a1, a2, a3, a4);
}

uint64_t specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v14 = type metadata accessor for RegClientIdentifier(0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v35 - v20;
  v38[3] = a5;
  v38[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  outlined init with copy of RegClientIdentifier(a3, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = a3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v37[0] = v27;
    *v26 = 136315138;
    outlined init with copy of RegClientIdentifier(v21, v18);
    v28 = MLS.ClientIdentifier.description.getter();
    v30 = v29;
    outlined destroy of RegClientIdentifier(v18);
    outlined destroy of RegClientIdentifier(v21);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v37);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_26524C000, v23, v24, "MLSDaemon setupInternalConnection called { clientIdentifier: %s }", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2667577B0](v27, -1, -1);
    v32 = v26;
    a3 = v35;
    MEMORY[0x2667577B0](v32, -1, -1);
  }

  else
  {

    outlined destroy of RegClientIdentifier(v21);
  }

  outlined init with copy of SMAUserDefaultsProtocol(v38, v37);
  v37[5] = a2;
  v37[6] = v36;
  v33 = *(**(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer) + 112);
  swift_unknownObjectRetain();
  v33(v37, a3);
  outlined destroy of RegistrationClientProxy(v37);
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t partial apply for closure #1 in MLSDaemon.getKeyPackage(for:with:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.getKeyPackage(for:with:)(a1, v4);
}

uint64_t partial apply for closure #1 in MLSDaemon.loadCredential(credential:uri:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.loadCredential(credential:uri:with:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for MLSDaemon(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSDaemon;
  if (!type metadata singleton initialization cache for MLSDaemon)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265308F94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8E8](v8, 40, 7);
}

uint64_t partial apply for closure #1 in MLSDaemon.setupXPCNotificationPoster()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.setupXPCNotificationPoster()(a1, v4, v5, v6);
}

uint64_t sub_2653090B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8E8](v8, 32, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(a1, a2, v7, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_26530926C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_26530954C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  outlined consume of Data._Representation(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.delete(uniqueClientIdentifier:group:groupDeletionContext:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDeletionContext<Data>) -> (@out MLS.GroupDeletionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDeletionContext<Data>) -> (@out MLS.GroupDeletionProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.group(uniqueClientIdentifier:identifier:context:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupFetchContext) -> (@out MLS.Group, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupFetchContext) -> (@out MLS.Group, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_265309B28()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return closure #2 in MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDetails) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupDetails) -> (@unowned Bool, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return closure #2 in MLSDaemon.otherMembers(uniqueClientIdentifier:group:context:completion:)(a1, a2, v6, v7, v8);
}

uint64_t sub_265309E20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupMembersContext) -> (@owned Set<MLS.AllMember>, @error @owned Error)(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D220]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<MLS.AllMember> and conformance <> Set<A>);
  }

  return result;
}

uint64_t partial apply for closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.add(uniqueClientIdentifier:members:toGroup:groupOperationContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.kick(uniqueClientIdentifier:members:fromGroup:groupOperationContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.leave(uniqueClientIdentifier:group:groupOperationContext:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupOperationContext<Data>) -> (@out MLS.GroupOperationProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.downgrade(uniqueClientIdentifier:group:downgradeContext:completion:)(a1, a2, a3, v8, v9, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.DowngradeContext<Data>) -> (@out MLS.DowngradeProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.DowngradeContext<Data>) -> (@out MLS.DowngradeProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:data:withGroup:encryptionContext:completion:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.EncryptionContext<MLS.AllMember, Data>) -> (@out MLS.EncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.EncryptionContext<MLS.AllMember, Data>) -> (@out MLS.EncryptionProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.applicationSign(uniqueClientIdentifier:input:withGroup:signingContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.SigningInput, @in_guaranteed MLS.SigningContext<Data>) -> (@out MLS.SigningProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.SigningInput, @in_guaranteed MLS.SigningContext<Data>) -> (@out MLS.SigningProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_26530AA18()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupNameEncryptionContext<MLS.AllMember, Data>) -> (@out MLS.GroupNameEncryptionProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.GroupNameEncryptionContext<MLS.AllMember, Data>) -> (@out MLS.GroupNameEncryptionProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t objectdestroy_27Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_159Tm()
{
  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:groupName:forGroup:incomingGroupNameContext:completion:)(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingGroupNameContext<Data>) -> (@out MLS.IncomingGroupNameProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingGroupNameContext<Data>) -> (@out MLS.IncomingGroupNameProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_26530AE6C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:forGroup:incomingMessageContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingMessageContext<Data>) -> (@out MLS.IncomingMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingMessageContext<Data>) -> (@out MLS.IncomingMessageProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_26530B100()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:failureToDecrypt:withGroup:incomingFailureToDecryptContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingFailureToDecrypt<MLS.AllMember>, @in_guaranteed MLS.IncomingFailureToDecryptContext<Data>) -> (@out MLS.IncomingFailureToDecryptProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingFailureToDecrypt<MLS.AllMember>, @in_guaranteed MLS.IncomingFailureToDecryptContext<Data>) -> (@out MLS.IncomingFailureToDecryptProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t objectdestroy_45Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in MLSDaemon.processIncoming(uniqueClientIdentifier:errorMessage:withGroup:incomingErrorMessageContext:completion:)(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingErrorMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingErrorMessageContext<Data>) -> (@out MLS.IncomingErrorMessageProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.IncomingErrorMessage<MLS.AllMember>, @in_guaranteed MLS.IncomingErrorMessageContext<Data>) -> (@out MLS.IncomingErrorMessageProcessedContext<Data>, @error @owned Error)(a1, a2, v6);
}

uint64_t sub_26530B660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_26530B6BC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x90);

  return v2(v3);
}

uint64_t sub_26530B720@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_26530B77C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t type metadata completion function for MLSDaemon(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLSDaemon.start()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v5();
}

uint64_t dispatch thunk of MLSDaemonProtocol.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLSDaemonProtocol.getKeyPackage(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.credentialSigningRequest(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.publicSigningKey(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLSDaemonProtocol.loadCredential(credential:uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.getCredential(uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLSDaemonProtocol.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLSDaemonProtocol.signWithParticipantKey(nonce:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26530C554()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(a1, v5, v4);
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RegistrationClientXPCServer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0cD9AgentCore0eG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t RegistrationClientXPCServer.clientProxyByUUID.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t RegistrationClientXPCServer.addClientXPCProxy(clientProxy:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 104);
  swift_unknownObjectRetain();

  v8 = v7(v14);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v10 = v13;
  return v8(v14, 0);
}

uint64_t RegistrationClientXPCServer.removeClientXPCProxy(for:)(uint64_t a1)
{
  v3 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6, a1);
  v8 = (*(*v1 + 104))(v10);
  specialized Dictionary.subscript.setter(0, 0, v6);
  return v8(v10, 0);
}

uint64_t RegistrationClientXPCServer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26530CBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_26530CC44(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for KDSRegistrationClient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for KDSRegistrationClient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t QueryKeyPackageRequest.init(recipients:pushTokenForTesting:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL static QueryRecipient.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int QueryRecipient.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266756F60](a3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance QueryRecipient(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QueryRecipient()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266756F60](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance QueryRecipient(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  return MEMORY[0x266756F60](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QueryRecipient(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266756F60](v2);
  return Hasher._finalize()();
}

uint64_t QueryKeyPackageRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data?(v1, *(v0 + 16));
  return v1;
}

void QueryKeyPackageRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void *QueryKeyPackageRequest.toIDSMessage(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  KeyPackageMessage = type metadata accessor for QueryKeyPackageMessage();
  v12 = objc_allocWithZone(KeyPackageMessage);
  *&v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting] = xmmword_2653419D0;
  *&v12[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients] = v9;
  v21.receiver = v12;
  v21.super_class = KeyPackageMessage;

  v13 = objc_msgSendSuper2(&v21, sel_init);
  if (os_variant_has_internal_content())
  {
    v14 = *((*MEMORY[0x277D85000] & *v13) + 0x70);
    outlined copy of Data?(v8, v10);
    v14(v8, v10);
  }

  (*(v4 + 16))(v7, a1, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v7, v3);
  aBlock[4] = partial apply for closure #1 in QueryKeyPackageRequest.toIDSMessage(with:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  [v18 setCompletionBlock_];
  _Block_release(v17);

  return v18;
}

id QueryKeyPackageMessage.__allocating_init(recipients:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting] = xmmword_2653419D0;
  *&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t closure #1 in QueryKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LogCategory();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v89[0] = a2;
    v18 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a4)
  {
    v90 = &type metadata for QueryKeyPackageResponse;
    v91 = &protocol witness table for QueryKeyPackageResponse;
    v62 = swift_allocObject();
    v89[0] = v62;
    *(v62 + 16) = 0;
    *(v62 + 24) = 1;
    *(v62 + 32) = 0u;
    *(v62 + 48) = 0u;
    *(v62 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  v88 = 1;
  v85 = 0x737574617473;
  v86 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v89), (v21 & 1) == 0))
  {
    outlined destroy of AnyHashable(v89);
    goto LABEL_9;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v20, v87);
  outlined destroy of AnyHashable(v89);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v75 = 0;
    v22 = 1;
    goto LABEL_10;
  }

  v22 = 0;
  v75 = v85;
  v88 = 0;
LABEL_10:
  v85 = 0x746E69682D7478;
  v86 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v89), (v24 & 1) == 0))
  {
    outlined destroy of AnyHashable(v89);
    goto LABEL_15;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v23, v87);
  outlined destroy of AnyHashable(v89);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v74 = 0;
    v77 = 0;
    goto LABEL_16;
  }

  v74 = v85;
  v77 = v86;
LABEL_16:
  v85 = 0x6567617373656DLL;
  v86 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v89), (v26 & 1) == 0))
  {
    outlined destroy of AnyHashable(v89);
    goto LABEL_21;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v25, v87);
  outlined destroy of AnyHashable(v89);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v73 = 0;
    v76 = 0;
    goto LABEL_22;
  }

  v73 = v85;
  v76 = v86;
LABEL_22:
  v85 = 0x6E65697069636572;
  v86 = 0xEA00000000007374;
  AnyHashable.init<A>(_:)();
  if (!*(a4 + 16) || (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v89), (v28 & 1) == 0))
  {
    outlined destroy of AnyHashable(v89);
    goto LABEL_62;
  }

  outlined init with copy of Any(*(a4 + 56) + 32 * v27, v87);
  outlined destroy of AnyHashable(v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_62:
    v63 = 0;
LABEL_63:
    v90 = &type metadata for QueryKeyPackageResponse;
    v91 = &protocol witness table for QueryKeyPackageResponse;
    v59 = swift_allocObject();
    v89[0] = v59;
    *(v59 + 16) = v75;
    *(v59 + 24) = v22;
    v61 = v76;
    v60 = v77;
    *(v59 + 32) = v74;
    *(v59 + 40) = v60;
    *(v59 + 48) = v73;
    *(v59 + 56) = v61;
    *(v59 + 64) = v63;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }

  result = v85;
  v84 = *(v85 + 16);
  if (!v84)
  {

    v63 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  v29 = 0;
  v83 = v85 + 32;
  v82 = *MEMORY[0x277D4C900];
  v80 = (v9 + 8);
  v81 = (v9 + 104);
  v78 = (v14 + 8);
  v68 = MEMORY[0x277D84F90];
  v71 = v13;
  v79 = v85;
  while (1)
  {
    if (v29 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    v30 = *(v83 + 8 * v29);
    (*v81)(v12, v82, v8);

    secureMessagingLogger(category:)();
    (*v80)(v12, v8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26524C000, v31, v32, "QueryKeyPackageResponse - parsing recipients", v33, 2u);
      v34 = v33;
      v13 = v71;
      MEMORY[0x2667577B0](v34, -1, -1);
    }

    if (!*(v30 + 16))
    {
      goto LABEL_48;
    }

    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0x616B63615079656BLL, 0xEB00000000736567);
    if ((v36 & 1) == 0)
    {
      goto LABEL_48;
    }

    outlined init with copy of Any(*(v30 + 56) + 32 * v35, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v37 = v87[0];
    if (*(v30 + 16))
    {
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636572, 0xE900000000000074);
      if (v39)
      {
        break;
      }
    }

LABEL_48:

    (*v78)(v17, v13);
LABEL_49:
    result = v79;
LABEL_50:
    if (++v29 == v84)
    {

      v22 = v88;
      v63 = v68;
      goto LABEL_63;
    }
  }

  outlined init with copy of Any(*(v30 + 56) + 32 * v38, v89);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    (*v78)(v17, v13);

    goto LABEL_49;
  }

  v70 = v37;
  v65 = v87[0];
  v67 = v87[1];
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_26524C000, v40, v41, "QueryKeyPackageResponse - parsing recipient.", v42, 2u);
    MEMORY[0x2667577B0](v42, -1, -1);
  }

  v66 = a5;

  result = v70;
  v69 = *(v70 + 16);
  if (!v69)
  {
    v72 = MEMORY[0x277D84F90];
LABEL_56:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
    }

    v13 = v71;
    v52 = v79;
    v53 = v67;
    v55 = *(v68 + 2);
    v54 = *(v68 + 3);
    if (v55 >= v54 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v68);
    }

    (*v78)(v17, v13);
    v56 = v68;
    *(v68 + 2) = v55 + 1;
    v57 = &v56[24 * v55];
    v58 = v65;
    *(v57 + 4) = v72;
    *(v57 + 5) = v58;
    *(v57 + 6) = v53;
    a5 = v66;
    result = v52;
    goto LABEL_50;
  }

  v43 = 0;
  v44 = v70 + 40;
  v72 = MEMORY[0x277D84F90];
  while (v43 < *(result + 16))
  {

    v45 = Data.init(base64Encoded:options:)();
    v47 = v46;

    if (v47 >> 60 == 15)
    {

      (*v78)(v17, v71);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
    }

    v49 = *(v72 + 2);
    v48 = *(v72 + 3);
    if (v49 >= v48 >> 1)
    {
      v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v72);
    }

    ++v43;
    v50 = v72;
    *(v72 + 2) = v49 + 1;
    v51 = &v50[16 * v49];
    *(v51 + 4) = v45;
    *(v51 + 5) = v47;
    v44 += 16;
    result = v70;
    if (v69 == v43)
    {
      goto LABEL_56;
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

void __swiftcall QueryKeyPackageResponse.init()(SecureMessagingAgentCore::QueryKeyPackageResponse *__return_ptr retstr)
{
  retstr->status.value = 0;
  retstr->status.is_nil = 1;
  retstr->splunkHint = 0u;
  retstr->message = 0u;
  retstr->recipientKeyPackages.value._rawValue = 0;
}

uint64_t RecipientKeyPackages.init(keyPackages:uri:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t QueryKeyPackageMessage.pushTokenForTesting.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

void QueryKeyPackageMessage.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined consume of Data?(v6, v7);
}

id QueryKeyPackageMessage.init(recipients:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_pushTokenForTesting] = xmmword_2653419D0;
  *&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QueryKeyPackageMessage();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26530E174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in QueryKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return closure #1 in QueryKeyPackageRequest.toIDSMessage(with:)(a1, a2, a3, a4, v10);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double QueryKeyPackageMessage.requiredKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_2653419E0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0x6E65697069636572;
  *(v0 + 40) = 0xEA00000000007374;
  return result;
}

unint64_t QueryKeyPackageMessage.messageBody.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore22QueryKeyPackageMessage_recipients);
  v2 = *(v1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = (v1 + 48);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v30[0] = 0x53444B656D6F68;
      v30[1] = 0xE700000000000000;
      v30[2] = v7;
      v30[5] = MEMORY[0x277D83B88];
      v31[0] = 0x6E65697069636572;
      v31[1] = 0xE900000000000074;
      v31[5] = MEMORY[0x277D837D0];
      v31[2] = v5;
      v31[3] = v6;
      v8 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v30, &v27);
      v9 = v27;
      v10 = v28;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v8[6] + 16 * result);
      *v13 = v9;
      v13[1] = v10;
      result = outlined init with take of Any(v29, (v8[7] + 32 * result));
      v14 = v8[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_16;
      }

      v8[2] = v16;
      outlined init with copy of (String, Any)(v31, &v27);
      v17 = v27;
      v18 = v28;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
      if (v19)
      {
        goto LABEL_17;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v8[6] + 16 * result);
      *v20 = v17;
      v20[1] = v18;
      result = outlined init with take of Any(v29, (v8[7] + 32 * result));
      v21 = v8[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v15)
      {
        goto LABEL_18;
      }

      v8[2] = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v24 = v4[2];
      v23 = v4[3];
      if (v24 >= v23 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v4);
      }

      v3 += 3;
      v4[2] = v24 + 1;
      v4[v24 + 4] = v8;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2653419E0;
    v27 = 0x6E65697069636572;
    v28 = 0xEA00000000007374;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    *(inited + 72) = v4;
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (AnyHashable, Any)(inited + 32);
    return v26;
  }

  return result;
}

id QueryKeyPackageMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryKeyPackageMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryKeyPackageMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecipientKeyPackages.uri.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t QueryKeyPackageResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t QueryKeyPackageResponse.splunkHint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t QueryKeyPackageResponse.splunkHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t QueryKeyPackageResponse.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t QueryKeyPackageResponse.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t QueryKeyPackageResponse.recipientKeyPackages.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall QueryKeyPackageResponse.init(status:splunkHint:message:recipientKeyPackages:)(SecureMessagingAgentCore::QueryKeyPackageResponse *__return_ptr retstr, Swift::Int_optional status, Swift::String_optional splunkHint, Swift::String_optional message, Swift::OpaquePointer_optional recipientKeyPackages)
{
  retstr->status.value = status.value;
  retstr->status.is_nil = status.is_nil;
  retstr->splunkHint = splunkHint;
  retstr->message = message;
  retstr->recipientKeyPackages.value._rawValue = recipientKeyPackages.value._rawValue;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type QueryRecipient and conformance QueryRecipient()
{
  result = lazy protocol witness table cache variable for type QueryRecipient and conformance QueryRecipient;
  if (!lazy protocol witness table cache variable for type QueryRecipient and conformance QueryRecipient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryRecipient and conformance QueryRecipient);
  }

  return result;
}

uint64_t sub_26530EBDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26530EC38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x70);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t getEnumTagSinglePayload for QueryRecipient(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryRecipient(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for QueryKeyPackageRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for QueryKeyPackageRequest(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for QueryKeyPackageResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryKeyPackageResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_26530EF90()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

sqlite3_stmt *ClientStateModel.insertStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("INSERT OR REPLACE INTO Client_State_Table (client_id, client_state_data) VALUES (?, ?);");
  if (!v8)
  {
LABEL_48:
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0))
  {
LABEL_3:
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
LABEL_8:
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v13);

    v14 = v31;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = v14;
    return swift_willThrow();
  }

  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v10 = SQLITE_TRANSIENT;
  v11 = String.utf8CString.getter();
  v12 = sqlite3_bind_text(v9, 1, (v11 + 32), -1, v10);

  if (v12)
  {
    *&v31 = 0x726F7272456C7173;
    *(&v31 + 1) = 0xE90000000000003ALL;
    goto LABEL_8;
  }

  v17 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_37:
      *(&v31 + 6) = 0;
      *&v31 = 0;
      v19 = ppStmt[0];
      v20 = &v31;
      LODWORD(v18) = 0;
      goto LABEL_40;
    }

    v21 = *(a4 + 16);
    v22 = *(a4 + 24);
    v23 = __DataStorage._bytes.getter();
    if (v23)
    {
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v24))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v23 += v21 - v24;
    }

    v25 = __OFSUB__(v22, v21);
    v26 = v22 - v21;
    if (v25)
    {
      goto LABEL_44;
    }

    a4 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = MEMORY[0x2667557A0]();
    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if (v23)
    {
      v18 = v28;
    }

    else
    {
      v18 = 0;
    }

    if (v18 < 0xFFFFFFFF80000000)
    {
      goto LABEL_45;
    }

    if (v18 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  else if (!v17)
  {
    *&v31 = a4;
    WORD4(v31) = a5;
    BYTE10(v31) = BYTE2(a5);
    BYTE11(v31) = BYTE3(a5);
    BYTE12(v31) = BYTE4(a5);
    BYTE13(v31) = BYTE5(a5);
    LODWORD(v18) = BYTE6(a5);
    v19 = ppStmt[0];
    v20 = &v31;
    goto LABEL_40;
  }

  if (a4 >> 32 < a4)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v23 = __DataStorage._bytes.getter();
  if (v23)
  {
    v29 = __DataStorage._offset.getter();
    if (__OFSUB__(a4, v29))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v23 += a4 - v29;
  }

  v30 = MEMORY[0x2667557A0]();
  if (v30 >= (a4 >> 32) - a4)
  {
    v18 = (a4 >> 32) - a4;
  }

  else
  {
    v18 = v30;
  }

  if (!v23)
  {
    LODWORD(v18) = 0;
    goto LABEL_39;
  }

  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v18 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_39:
  v19 = ppStmt[0];
  v20 = v23;
LABEL_40:
  if (sqlite3_bind_blob(v19, 2, v20, v18, v10))
  {
    goto LABEL_3;
  }

  return ppStmt[0];
}

sqlite3_stmt *ClientStateModel.updateStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v8 = strdup("UPDATE Client_State_Table SET\n    client_state_data = ?\nWHERE\n    client_id = ?;");
  if (!v8)
  {
LABEL_55:
    __break(1u);
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_40:
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
LABEL_41:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v22);

    v23 = v32;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }

  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_32;
    }

    v13 = *(a4 + 16);
    v14 = *(a4 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_53;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      a4 = a5 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      if (v15)
      {
        a5 = v19;
      }

      else
      {
        a5 = 0;
      }

      if (a5 >= 0xFFFFFFFF80000000)
      {
        if (a5 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v10)
  {
LABEL_21:
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_50;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a4 >> 32) - a4)
      {
        a5 = (a4 >> 32) - a4;
      }

      else
      {
        a5 = v9;
      }

      if (v15)
      {
        if (a5 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (a5 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v32 + 6) = 0;
          *&v32 = 0;
          v9 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            v11 = SQLITE_TRANSIENT;
            v12 = &v32;
            v21 = 0;
            goto LABEL_39;
          }

LABEL_50:
          v31 = v9;
          swift_once();
          v9 = v31;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a5) = 0;
      }

LABEL_35:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v29 = ppStmt[0];
        swift_once();
        v9 = v29;
      }

      v11 = SQLITE_TRANSIENT;
      v12 = v15;
      goto LABEL_38;
    }

    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(a4, v20))
    {
      v15 += a4 - v20;
      goto LABEL_25;
    }

    goto LABEL_54;
  }

  *&v32 = a4;
  WORD4(v32) = a5;
  BYTE10(v32) = BYTE2(a5);
  BYTE11(v32) = BYTE3(a5);
  BYTE12(v32) = BYTE4(a5);
  BYTE13(v32) = BYTE5(a5);
  v9 = ppStmt[0];
  LODWORD(a5) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_48:
    v30 = v9;
    swift_once();
    v9 = v30;
  }

  v11 = SQLITE_TRANSIENT;
  v12 = &v32;
LABEL_38:
  v21 = a5;
LABEL_39:
  if (sqlite3_bind_blob(v9, 1, v12, v21, v11))
  {
    goto LABEL_40;
  }

  v26 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  v27 = String.utf8CString.getter();
  v28 = sqlite3_bind_text(v26, 2, (v27 + 32), -1, v11);

  if (v28)
  {
    *&v32 = 0x726F7272456C7173;
    *(&v32 + 1) = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  return ppStmt[0];
}

sqlite3_stmt *ClientStateModel.deleteStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("DELETE FROM Client_State_Table WHERE client_id = ?;");
  if (!v4)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0))
  {
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      swift_once();
    }

    v6 = SQLITE_TRANSIENT;
    v7 = String.utf8CString.getter();
    v8 = sqlite3_bind_text(v5, 1, (v7 + 32), -1, v6);

    if (!v8)
    {
      return ppStmt[0];
    }
  }

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v9);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v10 = 0;
  *(v10 + 8) = 0x726F7272456C7173;
  *(v10 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t closure #1 in variable initialization expression of static ClientStateModel.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5 || !sqlite3_column_text(a1, 0))
  {
    goto LABEL_7;
  }

  v1 = String.init(cString:)();
  if (sqlite3_column_type(a1, 1) == 5 || (v3 = sqlite3_column_blob(a1, 1)) == 0)
  {

LABEL_7:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v4 = v3;
  v5 = sqlite3_column_bytes(a1, 1);
  specialized Data.init(bytes:count:)(v4, v5);
  return v1;
}

uint64_t (*static ClientStateModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static ClientStateModel.converter;

  return v0;
}

uint64_t static ClientStateModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static ClientStateModel.converter = a1;
  qword_281EF87B0 = a2;
}

uint64_t key path getter for static ClientStateModel.converter : ClientStateModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static ClientStateModel.converter;
  v2 = qword_281EF87B0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static ClientStateModel.converter : ClientStateModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static ClientStateModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)partial apply;
  qword_281EF87B0 = v3;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance ClientStateModel())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static ClientStateModel.converter;
  v0 = qword_281EF87B0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)partial apply;
}

uint64_t *ClientStateQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static ClientStateQuery.converter;
}

uint64_t static ClientStateQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ClientStateQuery.converter;

  return v0;
}

uint64_t static ClientStateQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ClientStateQuery.converter = a1;
  qword_280016948 = a2;
}

uint64_t (*static ClientStateQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static ClientStateQuery.converter : ClientStateQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static ClientStateQuery.converter;
  v2 = qword_280016948;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static ClientStateQuery.converter : ClientStateQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ClientStateQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error);
  qword_280016948 = v3;
}

sqlite3_stmt *ClientStateQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("SELECT * FROM Client_State_Table WHERE client_id = ? LIMIT 1;");
  if (!v4)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0))
  {
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      swift_once();
    }

    v6 = SQLITE_TRANSIENT;
    v7 = String.utf8CString.getter();
    v8 = sqlite3_bind_text(v5, 1, (v7 + 32), -1, v6);

    if (!v8)
    {
      return ppStmt[0];
    }
  }

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v9);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v10 = 0;
  *(v10 + 8) = 0x726F7272456C7173;
  *(v10 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance ClientStateQuery())@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static ClientStateQuery.converter;
  v0 = qword_280016948;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error);
}

sqlite3_stmt *specialized static ClientStateModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Client_State_Table (\n    client_id TEXT PRIMARY KEY NOT NULL,\n    client_state_data BLOB NOT NULL\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

sqlite3_stmt *specialized static ClientStateModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Client_State_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for ClientStateQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientStateQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2653107D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)(uint64_t a1)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)(a1);
}

{
  v3 = *(v1 + 16);
  v6 = a1;
  result = v3(&v5, &v6);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)(a1, a2);
}

{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned ClientStateModel?, @error @owned Error)(a1);
}

{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

sqlite3_stmt *KeyPackageModel.insertStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("INSERT OR REPLACE INTO Key_Package_Table (client_id, key_package) VALUES (?, ?);");
  if (!v10)
  {
LABEL_95:
    __break(1u);
  }

  v11 = sqlite3_prepare_v2(a1, v10, -1, ppStmt, 0);
  if (v11)
  {
LABEL_76:
    *&v45 = 0x726F7272456C7173;
    *(&v45 + 1) = 0xE90000000000003ALL;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v35);

    v36 = v45;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = v36;
    return swift_willThrow();
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    LODWORD(a2) = a3;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a2) = a3;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v11))
      {
        __break(1u);
        goto LABEL_86;
      }

      v16 += v14 - v11;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v11;
      }

      if (v16)
      {
        a2 = v19;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v12)
  {
LABEL_21:
    v20 = a2;
    v21 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_81;
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_25:
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = v11;
      }

      if (v16)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_79;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v45 + 6) = 0;
          *&v45 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a3 = SQLITE_TRANSIENT;
            v13 = &v45;
            v22 = 0;
            goto LABEL_39;
          }

LABEL_81:
          v41 = v11;
          swift_once();
          v11 = v41;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v39 = ppStmt[0];
        swift_once();
        v11 = v39;
      }

      a3 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a2) = a3;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v11))
    {
      v16 += v20 - v11;
      goto LABEL_25;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *&v45 = a2;
  WORD4(v45) = a3;
  BYTE10(v45) = BYTE2(a3);
  BYTE11(v45) = BYTE3(a3);
  BYTE12(v45) = BYTE4(a3);
  BYTE13(v45) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_79:
    v40 = v11;
    swift_once();
    v11 = v40;
  }

  a3 = SQLITE_TRANSIENT;
  v13 = &v45;
LABEL_38:
  v22 = a2;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a3);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a4 + 16);
    v26 = *(a4 + 24);
    a4 = __DataStorage._bytes.getter();
    if (a4)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_92;
      }

      a4 += v25 - v27;
    }

    v17 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      if (a4)
      {
        a2 = v29;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v23)
  {
LABEL_58:
    v30 = a4;
    v31 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_89;
    }

    a4 = __DataStorage._bytes.getter();
    if (!a4)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a4 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a2 = v31;
      }

      else
      {
        a2 = v33;
      }

      if (!a4)
      {
        LODWORD(a2) = 0;
        goto LABEL_72;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_68:
        *(&v45 + 6) = 0;
        *&v45 = 0;
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_69:
          v24 = &v45;
          v34 = 0;
          goto LABEL_75;
        }

LABEL_89:
        v44 = v11;
        swift_once();
        v11 = v44;
        goto LABEL_69;
      }

      if (a2 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a4;
          goto LABEL_74;
        }

LABEL_84:
        v42 = v11;
        swift_once();
        v11 = v42;
        goto LABEL_73;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *&v45 = a4;
  WORD4(v45) = a5;
  BYTE10(v45) = BYTE2(a5);
  BYTE11(v45) = BYTE3(a5);
  BYTE12(v45) = BYTE4(a5);
  BYTE13(v45) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_87:
    v43 = v11;
    swift_once();
    v11 = v43;
  }

  v24 = &v45;
LABEL_74:
  v34 = a2;
LABEL_75:
  if (sqlite3_bind_blob(v11, 2, v24, v34, a3))
  {
    goto LABEL_76;
  }

  return ppStmt[0];
}