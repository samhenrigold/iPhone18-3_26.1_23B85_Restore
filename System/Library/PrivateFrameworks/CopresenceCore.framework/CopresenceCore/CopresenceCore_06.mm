uint64_t closure #1 in PluginRpcStream.start(stream:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PluginRpcError(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 16))(v9, a1, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6977C10])
    {
      (*(v7 + 96))(v9, v6);
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v5, v13, v10);
      (*(v11 + 56))(v5, 0, 3, v10);
      swift_storeEnumTagMultiPayload();
      PluginRpcStream.terminate(error:)(v5);

      outlined destroy of PluginRpcError(v5, type metadata accessor for PluginRpcError);
      return (*(v11 + 8))(v13, v10);
    }

    else
    {

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

void PluginRpcStream.sendPath()()
{
  v1 = v0;
  v34 = type metadata accessor for NWConnection.SendCompletion();
  isa = v34[-1].isa;
  MEMORY[0x1EEE9AC00](v34);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for PluginProtocolHeader(0);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, log);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v33 = v6;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136315138;
    v13 = PluginRpcStream.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v35);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v8, v9, "RPC %s sending path", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  else
  {
  }

  if ((*(*v1 + 184))())
  {
    v17 = *(v1 + 2);
    v18 = *(v1 + 3);

    v19 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v17, v18);
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AEE07B40;
    type metadata accessor for NWProtocolFramer.Message();
    v23 = v33;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + direct field offset for PluginRpcStream.traceId, v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v24 = v32;
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    v25 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
    v35[3] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    outlined init with copy of PluginRpcError(v23, boxed_opaque_existential_1, type metadata accessor for PluginProtocolHeader);

    dispatch thunk of NWProtocolFramer.Message.subscript.setter();

    outlined destroy of PluginRpcError(v23, type metadata accessor for PluginProtocolHeader);
    *(v22 + 32) = v25;
    type metadata accessor for NWConnection.ContentContext();
    swift_allocObject();
    outlined copy of Data._Representation(v19, v21);
    NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
    *v4 = partial apply for closure #1 in PluginRpcStream.sendPath();
    v4[1] = v1;
    v27 = v34;
    (*(isa + 13))(v4, *MEMORY[0x1E6977BF8], v34);

    NWConnection.send(content:contentContext:isComplete:completion:)();

    outlined consume of Data._Representation(v19, v21);

    outlined consume of Data._Representation(v19, v21);
    (*(isa + 1))(v4, v27);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1AEB26000, v34, v28, "PluginRpcStream.sendPath: Stream not yet started", v29, 2u);
      MEMORY[0x1B27120C0](v29, -1, -1);
    }

    v30 = v34;
  }
}

void closure #1 in PluginRpcStream.sendPath()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for NWError();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v6, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v11 = outlined destroy of NSObject?(v6, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    (*(**(a2 + direct field offset for PluginRpcStream.inputSubscriber) + 208))(v11);
    PluginRpcStream.receiveNextResponse()();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
    v12 = swift_allocError();
    (*(v8 + 16))(v13, v10, v7);
    v14[0] = 13;
    v15 = v12;
    v16 = 0xD000000000000013;
    v17 = 0x80000001AEE30ED0;
    PluginRpcStream.terminate(status:)(v14);

    (*(v8 + 8))(v10, v7);
  }
}

void PluginRpcStream.sendNextRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v55 = *v1;
  v4 = v55;
  v5 = type metadata accessor for NWConnection.SendCompletion();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = (v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PluginProtocolHeader(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v51 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v48 - v12;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, log);
  (*(v11 + 16))(v13, a1, v10);

  v54 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v50 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v49 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v48[1] = a1;
    v22 = v21;
    v56[0] = v21;
    *v20 = 136315395;
    v23 = PluginRpcStream.description.getter();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v56);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2081;
    v27 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v29 = v28;
    (*(v11 + 8))(v13, v10);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v56);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1AEB26000, v16, v17, "RPC %s sending request message %{private}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v22, -1, -1);
    v31 = v20;
    v5 = v49;
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  else
  {

    v32 = (*(v11 + 8))(v13, v10);
  }

  if ((*(*v2 + 184))(v32))
  {
    v33 = Message.serializedData(partial:)();
    v38 = v37;
    v39 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1AEE07B40;
    type metadata accessor for NWProtocolFramer.Message();
    v41 = v50;
    v42 = v51;
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    v43 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
    v56[3] = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    outlined init with copy of PluginRpcError(v42, boxed_opaque_existential_1, type metadata accessor for PluginProtocolHeader);

    dispatch thunk of NWProtocolFramer.Message.subscript.setter();

    outlined destroy of PluginRpcError(v42, type metadata accessor for PluginProtocolHeader);
    *(v40 + 32) = v43;
    type metadata accessor for NWConnection.ContentContext();
    swift_allocObject();
    v45 = v39;
    outlined copy of Data._Representation(v39, v38);
    NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
    v47 = v52;
    v46 = v53;
    *v52 = partial apply for closure #1 in PluginRpcStream.sendNextRequest(_:);
    v47[1] = v2;
    (*(v46 + 104))(v47, *MEMORY[0x1E6977BF8], v5);

    NWConnection.send(content:contentContext:isComplete:completion:)();

    outlined consume of Data._Representation(v45, v38);

    outlined consume of Data._Representation(v45, v38);
    (*(v46 + 8))(v47, v5);
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1AEB26000, v34, v35, "PluginRpcStream.sendNextRequest: Stream not yet started", v36, 2u);
      MEMORY[0x1B27120C0](v36, -1, -1);
    }
  }
}

uint64_t closure #1 in PluginRpcStream.sendNextRequest(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for NWError();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v6, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v11 = outlined destroy of NSObject?(v6, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    return (*(**(a2 + direct field offset for PluginRpcStream.inputSubscriber) + 208))(v11);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
    v13 = swift_allocError();
    (*(v8 + 16))(v14, v10, v7);
    v15[0] = 13;
    v16 = v13;
    v17 = 0xD00000000000001ELL;
    v18 = 0x80000001AEE30EB0;
    PluginRpcStream.terminate(status:)(v15);

    return (*(v8 + 8))(v10, v7);
  }
}

void PluginRpcStream.receiveNextResponse()()
{
  v1 = *v0;
  if ((*(*v0 + 184))())
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = *(v1 + 80);
    *(v3 + 24) = *(v1 + 88);
    *(v3 + 40) = *(v1 + 104);
    *(v3 + 48) = v2;

    NWConnection.receiveMessage(completion:)();
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, log);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v5, "PluginRpcStream.receiveNextResponse: Stream not yet started", v6, 2u);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }
  }
}

uint64_t closure #1 in PluginRpcStream.receiveNextResponse()(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v89 = a3;
  v90 = a5;
  v85 = a1;
  v86 = a2;
  v11 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77[1] = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v81 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Optional();
  v79 = *(v80 - 8);
  v15 = MEMORY[0x1EEE9AC00](v80);
  v82 = v77 - v16;
  v84 = a8;
  v83 = *(a8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77[0] = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v77 - v21;
  v23 = type metadata accessor for PluginProtocolHeader(0);
  v88 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = v77 - v27;
  v28 = type metadata accessor for PluginRpcError(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v77 - v32;
  v34 = type metadata accessor for NWError();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v90, v33, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      (*(v35 + 32))(v37, v33, v34);
      (*(v35 + 16))(v30, v37, v34);
      (*(v35 + 56))(v30, 0, 3, v34);
      swift_storeEnumTagMultiPayload();
      PluginRpcStream.terminate(error:)(v30);

      outlined destroy of PluginRpcError(v30, type metadata accessor for PluginRpcError);
      return (*(v35 + 8))(v37, v34);
    }

    outlined destroy of NSObject?(v33, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    if (!v89)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    v39 = dispatch thunk of NWConnection.ContentContext.protocolMetadata(definition:)();
    if (!v39)
    {
      goto LABEL_15;
    }

    v40 = v39;
    type metadata accessor for NWProtocolFramer.Message();
    if (!swift_dynamicCastClass())
    {

LABEL_15:
      LOBYTE(v91[0]) = 13;
      *(v91 + 8) = xmmword_1AEE09D80;
      *(&v91[1] + 1) = 0x80000001AEE30E10;
      PluginRpcStream.terminate(status:)(v91);
    }

    dispatch thunk of NWProtocolFramer.Message.subscript.getter();
    if (!*(&v91[1] + 1))
    {

      outlined destroy of NSObject?(v91, &_sypSgMd, &_sypSgMR);
      (*(v88 + 56))(v22, 1, 1, v23);
      goto LABEL_14;
    }

    v41 = swift_dynamicCast();
    v42 = v88;
    (*(v88 + 56))(v22, v41 ^ 1u, 1, v23);
    if ((*(v42 + 48))(v22, 1, v23) == 1)
    {

LABEL_14:
      outlined destroy of NSObject?(v22, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
      goto LABEL_15;
    }

    v43 = v87;
    outlined init with take of PluginRpcError(v22, v87, type metadata accessor for PluginProtocolHeader);
    outlined init with copy of PluginRpcError(v43, v26, type metadata accessor for PluginProtocolHeader);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = *v26;
        v46 = v86;
        if (v86 >> 60 == 15)
        {
          v47 = 0;
          v48 = 0;
        }

        else
        {
          v52 = v85;
          outlined copy of Data._Representation(v85, v86);
          static String.Encoding.utf8.getter();
          v47 = String.init(data:encoding:)();
          v48 = v53;
          outlined consume of Data?(v52, v46);
        }

        LOBYTE(v91[0]) = v45;
        *(&v91[0] + 1) = 0;
        *&v91[1] = v47;
        *(&v91[1] + 1) = v48;
        v54 = 0;

        PluginRpcStream.terminate(status:)(v91);

        v49 = v43;
      }

      else
      {
        v92 = 0;
        memset(v91, 0, sizeof(v91));
        outlined copy of Data?(v85, v86);
        v50 = v84;
        default argument 3 of Message.init(serializedData:extensions:partial:options:)(v84, a10);
        v51 = v82;
        Message.init(serializedData:extensions:partial:options:)();
        v55 = v83;
        (*(v83 + 56))(v51, 0, 1, v50);
        v56 = v78;
        (*(v55 + 32))(v78, v51, v50);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v90 = v40;
        v57 = type metadata accessor for Logger();
        __swift_project_value_buffer(v57, log);
        v58 = v77[0];
        (*(v55 + 16))(v77[0], v56, v50);

        v59 = Logger.logObject.getter();
        v60 = v50;
        v61 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v59, v61))
        {
          v62 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v91[0] = v89;
          *v62 = 136315395;
          LODWORD(v88) = v61;
          v63 = PluginRpcStream.description.getter();
          v64 = v58;
          v65 = v55;
          v67 = v66;

          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v67, v91);

          *(v62 + 4) = v68;
          *(v62 + 12) = 2081;
          v69 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
          v71 = v70;
          v72 = *(v65 + 8);
          v86 = v59;
          v72(v64, v60);
          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v91);

          *(v62 + 14) = v73;
          v74 = v86;
          _os_log_impl(&dword_1AEB26000, v86, v88, "RPC %s received response message %{private}s", v62, 0x16u);
          v75 = v89;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v75, -1, -1);
          v76 = v62;
          v56 = v78;
          MEMORY[0x1B27120C0](v76, -1, -1);
        }

        else
        {

          v72 = *(v55 + 8);
          v72(v58, v50);
        }

        PassthroughSubject.send(_:)();

        PluginRpcStream.receiveNextResponse()();

        v72(v56, v60);
        v49 = v87;
      }
    }

    else
    {
      LOBYTE(v91[0]) = 13;
      *(v91 + 8) = xmmword_1AEE09D70;
      *(&v91[1] + 1) = 0x80000001AEE30E60;
      PluginRpcStream.terminate(status:)(v91);

      outlined destroy of PluginRpcError(v43, type metadata accessor for PluginProtocolHeader);
      v49 = v26;
    }

    return outlined destroy of PluginRpcError(v49, type metadata accessor for PluginProtocolHeader);
  }

  return result;
}

uint64_t PluginRpcStream.terminate(status:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PluginRpcError(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  if (*a1)
  {
    v11 = *(a1 + 3);
    *v7 = *a1;
    v25 = *(a1 + 8);
    *(v7 + 8) = v25;
    *(v7 + 3) = v11;
    swift_storeEnumTagMultiPayload();
    v12 = v25;

    PluginRpcStream.terminate(error:)(v7);
    return outlined destroy of PluginRpcError(v7, type metadata accessor for PluginRpcError);
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, log);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;

      v19 = PluginRpcStream.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v26);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1AEB26000, v15, v16, "RPC %s terminating successfully", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    else
    {
    }

    (*(v5 + 56))(v10, 1, 1, v4);
    PassthroughSubject.send(completion:)();
    v23 = outlined destroy of NSObject?(v10, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v24 = (*(*v2 + 160))(v23);
    if (v24)
    {
      AnyCancellable.cancel()();
    }

    result = (*(*v2 + 184))(v24);
    if (result)
    {
      NWConnection.cancel()();
    }
  }

  return result;
}

uint64_t PluginRpcStream.terminate(error:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for PluginRpcError(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, log);
  outlined init with copy of PluginRpcError(a1, v21, type metadata accessor for PluginRpcError);

  v23 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v48))
  {
    v42 = v16;
    v44 = v23;
    v47 = a1;
    v24 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v24 = 136315394;

    v25 = PluginRpcStream.description.getter();
    v26 = v12;
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v50);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    outlined init with copy of PluginRpcError(v21, v11, type metadata accessor for PluginRpcError);
    (*(v13 + 56))(v11, 0, 1, v26);
    v30 = v49;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v11, v49, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    v45 = v13;
    v31 = (*(v13 + 48))(v30, 1, v26);
    v46 = v26;
    if (v31 == 1)
    {
      v32 = 0xE300000000000000;
      v33 = 7104878;
    }

    else
    {
      outlined init with take of PluginRpcError(v30, v19, type metadata accessor for PluginRpcError);
      outlined init with copy of PluginRpcError(v19, v42, type metadata accessor for PluginRpcError);
      v33 = String.init<A>(reflecting:)();
      v32 = v34;
      outlined destroy of PluginRpcError(v19, type metadata accessor for PluginRpcError);
    }

    outlined destroy of NSObject?(v11, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    outlined destroy of PluginRpcError(v21, type metadata accessor for PluginRpcError);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v50);

    *(v24 + 14) = v35;
    v36 = v44;
    _os_log_impl(&dword_1AEB26000, v44, v48, "RPC %s terminating with failure: %s", v24, 0x16u);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);

    v12 = v46;
    a1 = v47;
    v13 = v45;
  }

  else
  {

    outlined destroy of PluginRpcError(v21, type metadata accessor for PluginRpcError);
  }

  outlined init with copy of PluginRpcError(a1, v6, type metadata accessor for PluginRpcError);
  (*(v13 + 56))(v6, 0, 1, v12);
  PassthroughSubject.send(completion:)();
  v38 = outlined destroy of NSObject?(v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v39 = (*(*v2 + 160))(v38);
  if (v39)
  {
    AnyCancellable.cancel()();
  }

  result = (*(*v2 + 184))(v39);
  if (result)
  {
    NWConnection.cancel()();
  }

  return result;
}

uint64_t PluginRpcStream.InputSubscriber.rpcStream.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*PluginRpcStream.InputSubscriber.rpcStream.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return PluginRpcStream.InputSubscriber.rpcStream.modify;
}

void PluginRpcStream.InputSubscriber.rpcStream.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void PluginRpcStream.InputSubscriber.receive(subscription:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  closure #1 in PluginRpcStream.InputSubscriber.receive(subscription:)(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t closure #1 in PluginRpcStream.InputSubscriber.receive(subscription:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of UserNotificationCenter(a2, v4);
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v4, a1 + 24, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  return swift_endAccess();
}

uint64_t PluginRpcStream.InputSubscriber.receive(_:)(uint64_t a1)
{
  v3 = (*(*v1 + 160))();
  if (v3)
  {
    PluginRpcStream.sendNextRequest(_:)(a1);
  }

  return MEMORY[0x1EEDB5BB8](v3);
}

uint64_t PluginRpcStream.InputSubscriber.receive(completion:)()
{
  v1 = type metadata accessor for NWConnection.SendCompletion();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(*v0 + 160))(v3);
  if (v6)
  {
    v7 = (*(*v6 + 184))(v6);

    if (v7)
    {
      type metadata accessor for NWConnection.ContentContext();
      static NWConnection.ContentContext.finalMessage.getter();
      *v5 = destructiveProjectEnumData for ActivitySession.Errors;
      v5[1] = 0;
      (*(v2 + 104))(v5, *MEMORY[0x1E6977BF8], v1);
      NWConnection.send(content:contentContext:isComplete:completion:)();

      v6 = (*(v2 + 8))(v5, v1);
    }
  }

  return (*(*v0 + 216))(v6);
}

Swift::Void __swiftcall PluginRpcStream.InputSubscriber.requestNextMessage()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + 24, &v2, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  if (v3)
  {
    outlined init with take of ContiguousBytes(&v2, v4);
    os_unfair_lock_unlock(*(v1 + 16));
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    outlined destroy of NSObject?(&v2, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
    os_unfair_lock_unlock(*(v1 + 16));
  }
}

Swift::Void __swiftcall PluginRpcStream.InputSubscriber.resetSubscription()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in PluginRpcStream.InputSubscriber.resetSubscription()(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t closure #1 in PluginRpcStream.InputSubscriber.resetSubscription()(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v3, a1 + 24, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  return swift_endAccess();
}

uint64_t PluginRpcStream.InputSubscriber.deinit()
{

  outlined destroy of NSObject?(v0 + 24, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  swift_weakDestroy();
  return v0;
}

uint64_t PluginRpcStream.InputSubscriber.__deallocating_deinit()
{
  PluginRpcStream.InputSubscriber.deinit();

  return swift_deallocClassInstance();
}

uint64_t PluginRpcStream.InputSubscriber.init()()
{
  type metadata accessor for Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  swift_weakInit();
  return v0;
}

uint64_t PluginRpcStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v12 = *(*v3 + 80);
  v13 = v7;
  v8 = type metadata accessor for PluginRpcStream.OutputSubscription(0, &v12);
  swift_allocObject();

  v10 = specialized PluginRpcStream.OutputSubscription.init<A>(stream:subscriber:)(v9, a1, a2, a3);
  *(&v13 + 1) = v8;
  WitnessTable = swift_getWitnessTable();
  *&v12 = v10;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v12);
}

uint64_t PluginRpcStream.OutputSubscription.cancel()()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v2, v0 + 24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_endAccess();
}

uint64_t PluginRpcStream.OutputSubscription.__deallocating_deinit()
{

  outlined destroy of NSObject?(v0 + 24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t PluginRpcStream.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + direct field offset for PluginRpcStream.traceId, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = *(v0 + 16);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = *(v0 + 24);
    v12[0] = *(v0 + 16);
    v12[1] = v9;

    MEMORY[0x1B2710020](10272, 0xE200000000000000);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v10);

    MEMORY[0x1B2710020](41, 0xE100000000000000);
    v8 = v12[0];
    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

uint64_t *specialized PluginRpcStream.init(definition:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = direct field offset for PluginRpcStream.output;
  v9 = *v3;
  v10 = *(*v3 + 88);
  type metadata accessor for PluginRpcError(255);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError, &protocol conformance descriptor for PluginRpcError);
  type metadata accessor for PassthroughSubject();
  *(v3 + v8) = PassthroughSubject.__allocating_init()();
  v11 = direct field offset for PluginRpcStream.inputSubscriber;
  v18[0] = *(v5 + 80);
  v18[1] = v10;
  v19 = *(v9 + 96);
  type metadata accessor for PluginRpcStream.InputSubscriber(0, v18);
  v12 = swift_allocObject();
  PluginRpcStream.InputSubscriber.init()();
  *(v4 + v11) = v12;
  *(v4 + direct field offset for PluginRpcStream.cancellable) = 0;
  *(v4 + direct field offset for PluginRpcStream.stream) = 0;
  v4[2] = v6;
  v4[3] = v7;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v4 + direct field offset for PluginRpcStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*v12 + 168);

  v13(v14);

  v18[0] = a2;
  type metadata accessor for AnyPublisher();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  outlined destroy of NSObject?(a3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return v4;
}

uint64_t *specialized PluginRpcStream.__allocating_init(definition:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  v9[0] = *(v3 + 80);
  v9[1] = v7;
  type metadata accessor for PluginRpcStream(0, v9);
  swift_allocObject();
  return specialized PluginRpcStream.init(definition:input:traceId:)(a1, a2, a3);
}

uint64_t specialized PluginRpcStream.OutputSubscription.init<A>(stream:subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v30 = a2;
  v7 = *v4;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 56) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v34 = v4 + 24;
  *(v4 + 16) = v9;
  v12 = *(v9 + direct field offset for PluginRpcStream.output);
  v31 = v9;
  v32 = v12;
  v35[0] = v12;
  v13 = *(v8 + 16);
  v28 = v10;
  v29 = v13;
  (v13)(v11);
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v33 = v4;
  v27 = v7[10];
  *(v15 + 2) = v27;
  v26 = v7[11];
  *(v15 + 3) = v26;
  *(v15 + 4) = a3;
  v16 = v7[12];
  *(v15 + 5) = v16;
  v17 = v7[13];
  *(v15 + 6) = v17;
  *(v15 + 7) = a4;
  v18 = *(v8 + 32);
  v18(&v15[v14], v11, a3);
  v29(v11, v30, a3);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = v27;
  *(v19 + 3) = v20;
  *(v19 + 4) = a3;
  *(v19 + 5) = v16;
  v21 = v25;
  *(v19 + 6) = v17;
  *(v19 + 7) = v21;
  v18(&v19[v14], v11, a3);
  type metadata accessor for PluginRpcError(255);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError, &protocol conformance descriptor for PluginRpcError);
  type metadata accessor for PassthroughSubject();

  swift_getWitnessTable();
  v22 = Publisher.sink(receiveCompletion:receiveValue:)();

  v35[3] = type metadata accessor for AnyCancellable();
  v35[4] = MEMORY[0x1E695BF08];

  v35[0] = v22;
  v23 = v34;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v35, v23, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
  return v33;
}

void type metadata completion function for PluginRpcStream(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t outlined init with take of PluginRpcError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PluginRpcError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PluginRpcError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
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

Swift::Void __swiftcall SharableObjectIdentifier.update(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = a1;
  MEMORY[0x1B2710120](&v1, &v2);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t SharableObjectIdentifier.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = StringProtocol.data(using:allowLossyConversion:)();
  v11 = v10;
  result = (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v9, v11);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v9, v11, v4);
    outlined consume of Data?(v9, v11);
    return outlined consume of Data?(v9, v11);
  }

  return result;
}

{
  v6 = type metadata accessor for SHA256();
  v7 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);

  return MEMORY[0x1EEDBFC88](a1, v6, a2, v7, a3);
}

Swift::Void __swiftcall SharableObjectIdentifier.update(_:)(Swift::Double a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = a1;
  MEMORY[0x1B2710120](&v1, &v2);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
}

Swift::Void __swiftcall SharableObjectIdentifier.update(_:)(Swift::Float a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = a1;
  MEMORY[0x1B2710120](&v1, &v2);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t static SharableObjectIdentifier.identifier<A>(ofType:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharableObjectIdentifier(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v20[2] = a2;
  v20[3] = a3;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.data(using:allowLossyConversion:)();
  v18 = v17;
  result = (*(v10 + 8))(v12, v9);
  if (v18 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v16, v18);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v16, v18, v15);
    outlined consume of Data?(v16, v18);
    outlined consume of Data?(v16, v18);
    SharableObjectIdentifier.finalize<A>()(a4, a5);
    return outlined destroy of SharableObjectIdentifier(v15);
  }

  return result;
}

uint64_t SharableObjectIdentifier.finalize<A>()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  SHA256.finalize()();
  (*(v5 + 16))(v8, v10, v4);
  (*(a2 + 8))(v8, a1, a2);
  return (*(v5 + 8))(v10, v4);
}

uint64_t static SharableObjectIdentifier.identifier<A, B>(ofType:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SharableObjectIdentifier(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharableObjectIdentifierEncoder();
  v15 = swift_allocObject();
  *(v15 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  SharableObjectIdentifierEncoder.encode<A>(_:)(a2, a3, a5, v14);

  if (!v6)
  {
    SharableObjectIdentifier.finalize<A>()(a4, a6);
    return outlined destroy of SharableObjectIdentifier(v14);
  }

  return result;
}

uint64_t closure #1 in SharableObjectIdentifier.update<A>(_:)()
{
  MEMORY[0x1B2710120]();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t UUID.init(digest:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_A15BtMd, &_ss5UInt8V_A15BtMR);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  UUID.init(uuid:)();
  v2 = type metadata accessor for SHA256Digest();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

_OWORD *closure #1 in UUID.init(digest:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (result)
  {
    if (a2 - result >= 16)
    {
      *a3 = *result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SecureHashTruncatable<>.init(digest:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v7 = type metadata accessor for SHA256Digest();
  return (*(*(v7 - 8) + 8))(a1, v7);
}

uint64_t specialized closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == a4)
  {
    v6 = a6 - a5;
    if (!a5)
    {
      v6 = 0;
    }

    if (v6 >= a3)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return v7;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int@<X0>(uint64_t a1@<X0>, void *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt@<X0>(uint64_t a1@<X0>, void *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8@<X0>(uint64_t a1@<X0>, _BYTE *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt8@<X0>(uint64_t a1@<X0>, _BYTE *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8@<X0>(uint64_t a1@<X0>, _BYTE *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = vdupq_n_s64(1uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v5 = type metadata accessor for SHA256Digest();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a3 = v7;
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16@<X0>(uint64_t a1@<X0>, _WORD *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt16@<X0>(uint64_t a1@<X0>, _WORD *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16@<X0>(uint64_t a1@<X0>, _WORD *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = vdupq_n_s64(2uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v5 = type metadata accessor for SHA256Digest();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a3 = v7;
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32@<X0>(uint64_t a1@<X0>, _DWORD *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt32@<X0>(uint64_t a1@<X0>, _DWORD *x8_0@<X8>)
{

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32(a1, x8_0);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32@<X0>(uint64_t a1@<X0>, _DWORD *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = vdupq_n_s64(4uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v5 = type metadata accessor for SHA256Digest();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a3 = v7;
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[3] = v7;
  v8 = vdupq_n_s64(8uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v5 = type metadata accessor for SHA256Digest();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a3 = v7[0];
  return result;
}

uint64_t String.init(digest:)(uint64_t a1)
{
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF9CryptoKit12SHA256DigestV_SSs5NeverOTg5031_sSS14CopresenceCoreE6digestSS9d5Kit12fG21V_tcfcSSs5UInt8VXEfU_Tf1cn_n(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v3 = type metadata accessor for SHA256Digest();
  (*(*(v3 - 8) + 8))(a1, v3);

  return v2;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF9CryptoKit12SHA256DigestV_SSs5NeverOTg5031_sSS14CopresenceCoreE6digestSS9d5Kit12fG21V_tcfcSSs5UInt8VXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter();
  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_1AEE07B20;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x1E69E7508];
        *(v13 + 64) = MEMORY[0x1E69E7558];
        *(v13 + 32) = v12;
        result = String.init(format:_:)();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_1AEE07B20;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x1E69E7508];
        *(v22 + 64) = MEMORY[0x1E69E7558];
        *(v22 + 32) = v21;
        result = String.init(format:_:)();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF9CryptoKit12SHA256DigestV_SSs5NeverOTg5031_sSS14CopresenceCoreE6digestSS9d5Kit12fG21V_tcfcSSs5UInt8VXEfU_Tf1cn_n(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;
  v7 = type metadata accessor for SHA256Digest();
  (*(*(v7 - 8) + 8))(a1, v7);

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for Insecure.MD5();
  lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t type metadata accessor for SharableObjectIdentifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharableObjectIdentifier;
  if (!type metadata singleton initialization cache for SharableObjectIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B270E950]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B270E950]();
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 16);
  v10 = *(v8 + 40);
  v12[1] = *(v8 + 48);
  v13 = a1;
  v14 = a2;
  return _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in closure #1 in SecureHashTruncatable<>.init(digest:), v12, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for SharableObjectIdentifier(uint64_t a1)
{
  result = type metadata accessor for SHA256();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GroupActivityDescription.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GroupActivityDescription.actionDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GroupActivityDescription.ongoingDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GroupActivityDescription.completedDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t GroupActivityDescription.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int GroupActivityDescription.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void __swiftcall GroupActivityDescription.init(id:actionDescription:ongoingDescription:completedDescription:)(CopresenceCore::GroupActivityDescription *__return_ptr retstr, Swift::String id, Swift::String actionDescription, Swift::String ongoingDescription, Swift::String completedDescription)
{
  retstr->id = id;
  retstr->actionDescription = actionDescription;
  retstr->ongoingDescription = ongoingDescription;
  retstr->completedDescription = completedDescription;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivityDescription()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityDescription(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityDescription(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void one-time initialization function for generic()
{
  v0 = *MEMORY[0x1E69D8F30];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545F4552414853;
  v5._object = 0xEE00524548544547;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0x80000001AEE311E0;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x545F444552414853;
  v15._object = 0xEF5245485445474FLL;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.generic = v19;
  *(&static GroupActivityDescription.generic + 1) = v21;
  xmmword_1EB5F5F00 = v8;
  xmmword_1EB5F5F10 = v13;
  xmmword_1EB5F5F20 = v18;
}

void GroupActivityDescription.init(id:actionDescription:ongoingDescription:completedDescription:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *a8 = v16;
  a8[1] = v18;
  a8[2] = a2;
  a8[3] = a3;
  a8[4] = a4;
  a8[5] = a5;
  a8[6] = a6;
  a8[7] = a7;
}

uint64_t static GroupActivityDescription.generic.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F5F00;
  v7[0] = static GroupActivityDescription.generic;
  v7[1] = xmmword_1EB5F5F00;
  v2 = xmmword_1EB5F5F10;
  v3 = xmmword_1EB5F5F20;
  v7[2] = xmmword_1EB5F5F10;
  v7[3] = xmmword_1EB5F5F20;
  *a1 = static GroupActivityDescription.generic;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for collaboration()
{
  v0 = *MEMORY[0x1E69D8F18];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0x80000001AEE31180;
  v5._countAndFlagsBits = 0xD000000000000014;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x80000001AEE311A0;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x80000001AEE311C0;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.collaboration = v19;
  *(&static GroupActivityDescription.collaboration + 1) = v21;
  xmmword_1EB5F5F48 = v8;
  xmmword_1EB5F5F58 = v13;
  xmmword_1EB5F5F68 = v18;
}

uint64_t static GroupActivityDescription.collaboration.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for collaboration != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F5F48;
  v7[0] = static GroupActivityDescription.collaboration;
  v7[1] = xmmword_1EB5F5F48;
  v2 = xmmword_1EB5F5F58;
  v3 = xmmword_1EB5F5F68;
  v7[2] = xmmword_1EB5F5F58;
  v7[3] = xmmword_1EB5F5F68;
  *a1 = static GroupActivityDescription.collaboration;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for listenTogether()
{
  v0 = *MEMORY[0x1E69D8F40];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x545F4E455453494CLL;
  v5._object = 0xEF5245485445474FLL;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x80000001AEE31140;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE31160;
  v15._countAndFlagsBits = 0xD000000000000011;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.listenTogether = v19;
  *(&static GroupActivityDescription.listenTogether + 1) = v21;
  xmmword_1EB5F7C08 = v8;
  xmmword_1EB5F7C18 = v13;
  xmmword_1EB5F7C28 = v18;
}

uint64_t static GroupActivityDescription.listenTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for listenTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7C08;
  v7[0] = static GroupActivityDescription.listenTogether;
  v7[1] = xmmword_1EB5F7C08;
  v2 = xmmword_1EB5F7C18;
  v3 = xmmword_1EB5F7C28;
  v7[2] = xmmword_1EB5F7C18;
  v7[3] = xmmword_1EB5F7C28;
  *a1 = static GroupActivityDescription.listenTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for watchTogether()
{
  v0 = *MEMORY[0x1E69D8F70];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545F4843544157;
  v5._object = 0xEE00524548544547;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE31100;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE31120;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.watchTogether = v19;
  *(&static GroupActivityDescription.watchTogether + 1) = v21;
  xmmword_1EB5F7C48 = v8;
  xmmword_1EB5F7C58 = v13;
  xmmword_1EB5F7C68 = v18;
}

uint64_t static GroupActivityDescription.watchTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for watchTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7C48;
  v7[0] = static GroupActivityDescription.watchTogether;
  v7[1] = xmmword_1EB5F7C48;
  v2 = xmmword_1EB5F7C58;
  v3 = xmmword_1EB5F7C68;
  v7[2] = xmmword_1EB5F7C58;
  v7[3] = xmmword_1EB5F7C68;
  *a1 = static GroupActivityDescription.watchTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for playTogether()
{
  v0 = *MEMORY[0x1E69D8F48];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x474F545F59414C50;
  v5._object = 0xED00005245485445;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0x80000001AEE310E0;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x545F444559414C50;
  v15._object = 0xEF5245485445474FLL;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.playTogether = v19;
  *(&static GroupActivityDescription.playTogether + 1) = v21;
  xmmword_1EB5F7C88 = v8;
  xmmword_1EB5F7C98 = v13;
  xmmword_1EB5F7CA8 = v18;
}

uint64_t static GroupActivityDescription.playTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for playTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7C88;
  v7[0] = static GroupActivityDescription.playTogether;
  v7[1] = xmmword_1EB5F7C88;
  v2 = xmmword_1EB5F7C98;
  v3 = xmmword_1EB5F7CA8;
  v7[2] = xmmword_1EB5F7C98;
  v7[3] = xmmword_1EB5F7CA8;
  *a1 = static GroupActivityDescription.playTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for workoutTogether()
{
  v0 = *MEMORY[0x1E69D8F78];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0x80000001AEE31080;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x80000001AEE310A0;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000012;
  v15._object = 0x80000001AEE310C0;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.workoutTogether = v19;
  *(&static GroupActivityDescription.workoutTogether + 1) = v21;
  xmmword_1EB5F7CC8 = v8;
  xmmword_1EB5F7CD8 = v13;
  xmmword_1EB5F7CE8 = v18;
}

uint64_t static GroupActivityDescription.workoutTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for workoutTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7CC8;
  v7[0] = static GroupActivityDescription.workoutTogether;
  v7[1] = xmmword_1EB5F7CC8;
  v2 = xmmword_1EB5F7CD8;
  v3 = xmmword_1EB5F7CE8;
  v7[2] = xmmword_1EB5F7CD8;
  v7[3] = xmmword_1EB5F7CE8;
  *a1 = static GroupActivityDescription.workoutTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for shopTogether()
{
  v0 = *MEMORY[0x1E69D8F68];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x474F545F504F4853;
  v5._object = 0xED00005245485445;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE31040;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE31060;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.shopTogether = v19;
  *(&static GroupActivityDescription.shopTogether + 1) = v21;
  xmmword_1EB5F7D08 = v8;
  xmmword_1EB5F7D18 = v13;
  xmmword_1EB5F7D28 = v18;
}

uint64_t static GroupActivityDescription.shopTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for shopTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7D08;
  v7[0] = static GroupActivityDescription.shopTogether;
  v7[1] = xmmword_1EB5F7D08;
  v2 = xmmword_1EB5F7D18;
  v3 = xmmword_1EB5F7D28;
  v7[2] = xmmword_1EB5F7D18;
  v7[3] = xmmword_1EB5F7D28;
  *a1 = static GroupActivityDescription.shopTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for readTogether()
{
  v0 = *MEMORY[0x1E69D8F58];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x474F545F44414552;
  v5._object = 0xED00005245485445;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0x80000001AEE31000;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x80000001AEE31020;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.readTogether = v19;
  *(&static GroupActivityDescription.readTogether + 1) = v21;
  xmmword_1EB5F7D48 = v8;
  xmmword_1EB5F7D58 = v13;
  xmmword_1EB5F7D68 = v18;
}

uint64_t static GroupActivityDescription.readTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for readTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7D48;
  v7[0] = static GroupActivityDescription.readTogether;
  v7[1] = xmmword_1EB5F7D48;
  v2 = xmmword_1EB5F7D58;
  v3 = xmmword_1EB5F7D68;
  v7[2] = xmmword_1EB5F7D58;
  v7[3] = xmmword_1EB5F7D68;
  *a1 = static GroupActivityDescription.readTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for exploreTogether()
{
  v0 = *MEMORY[0x1E69D8F28];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0x80000001AEE30FA0;
  v5._countAndFlagsBits = 0xD000000000000010;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x80000001AEE30FC0;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x80000001AEE30FE0;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.exploreTogether = v19;
  *(&static GroupActivityDescription.exploreTogether + 1) = v21;
  xmmword_1EB5F7D88 = v8;
  xmmword_1EB5F7D98 = v13;
  xmmword_1EB5F7DA8 = v18;
}

uint64_t static GroupActivityDescription.exploreTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for exploreTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7D88;
  v7[0] = static GroupActivityDescription.exploreTogether;
  v7[1] = xmmword_1EB5F7D88;
  v2 = xmmword_1EB5F7D98;
  v3 = xmmword_1EB5F7DA8;
  v7[2] = xmmword_1EB5F7D98;
  v7[3] = xmmword_1EB5F7DA8;
  *a1 = static GroupActivityDescription.exploreTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for learnTogether()
{
  v0 = *MEMORY[0x1E69D8F38];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545F4E5241454CLL;
  v5._object = 0xEE00524548544547;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE30F60;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE30F80;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.learnTogether = v19;
  *(&static GroupActivityDescription.learnTogether + 1) = v21;
  xmmword_1EB5F7DC8 = v8;
  xmmword_1EB5F7DD8 = v13;
  xmmword_1EB5F7DE8 = v18;
}

uint64_t static GroupActivityDescription.learnTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for learnTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7DC8;
  v7[0] = static GroupActivityDescription.learnTogether;
  v7[1] = xmmword_1EB5F7DC8;
  v2 = xmmword_1EB5F7DD8;
  v3 = xmmword_1EB5F7DE8;
  v7[2] = xmmword_1EB5F7DD8;
  v7[3] = xmmword_1EB5F7DE8;
  *a1 = static GroupActivityDescription.learnTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for createTogether()
{
  v0 = *MEMORY[0x1E69D8F20];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x545F455441455243;
  v5._object = 0xEF5245485445474FLL;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE30F20;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE30F40;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.createTogether = v19;
  *(&static GroupActivityDescription.createTogether + 1) = v21;
  xmmword_1EB5F7E08 = v8;
  xmmword_1EB5F7E18 = v13;
  xmmword_1EB5F7E28 = v18;
}

uint64_t static GroupActivityDescription.createTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for createTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7E08;
  v7[0] = static GroupActivityDescription.createTogether;
  v7[1] = xmmword_1EB5F7E08;
  v2 = xmmword_1EB5F7E18;
  v3 = xmmword_1EB5F7E28;
  v7[2] = xmmword_1EB5F7E18;
  v7[3] = xmmword_1EB5F7E28;
  *a1 = static GroupActivityDescription.createTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for screenSharing()
{
  v0 = *MEMORY[0x1E69D8F60];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0xEC00000045524148;
  v5._countAndFlagsBits = 0x535F4E4545524353;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 &selRef:ObjCClassFromMetadata sendMessageWithDictionary:? error:? + 3];
  v23._object = 0xE000000000000000;
  v10._object = 0xEE00474E49524148;
  v10._countAndFlagsBits = 0x535F4E4545524353;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0xED00004445524148;
  v15._countAndFlagsBits = 0x535F4E4545524353;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.screenSharing = v19;
  *(&static GroupActivityDescription.screenSharing + 1) = v21;
  xmmword_1EB5F7E48 = v8;
  xmmword_1EB5F7E58 = v13;
  xmmword_1EB5F7E68 = v18;
}

uint64_t static GroupActivityDescription.screenSharing.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for screenSharing != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7E48;
  v7[0] = static GroupActivityDescription.screenSharing;
  v7[1] = xmmword_1EB5F7E48;
  v2 = xmmword_1EB5F7E58;
  v3 = xmmword_1EB5F7E68;
  v7[2] = xmmword_1EB5F7E58;
  v7[3] = xmmword_1EB5F7E68;
  *a1 = static GroupActivityDescription.screenSharing;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for podcastTogether()
{
  v0 = *MEMORY[0x1E69D8F50];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0xEE004E4F49544341;
  v5._countAndFlagsBits = 0x5F54534143444F50;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0xEF474E494F474E4FLL;
  v10._countAndFlagsBits = 0x5F54534143444F50;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE30F00;
  v15._countAndFlagsBits = 0xD000000000000011;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.podcastTogether = v19;
  *(&static GroupActivityDescription.podcastTogether + 1) = v21;
  xmmword_1EB5F7E88 = v8;
  xmmword_1EB5F7E98 = v13;
  xmmword_1EB5F7EA8 = v18;
}

uint64_t static GroupActivityDescription.podcastTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for podcastTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7E88;
  v7[0] = static GroupActivityDescription.podcastTogether;
  v7[1] = xmmword_1EB5F7E88;
  v2 = xmmword_1EB5F7E98;
  v3 = xmmword_1EB5F7EA8;
  v7[2] = xmmword_1EB5F7E98;
  v7[3] = xmmword_1EB5F7EA8;
  *a1 = static GroupActivityDescription.podcastTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

uint64_t one-time initialization function for allCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore24GroupActivityDescriptionVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore24GroupActivityDescriptionVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEE0A190;
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB5F5F00;
  v39[0] = static GroupActivityDescription.generic;
  v39[1] = xmmword_1EB5F5F00;
  v2 = xmmword_1EB5F5F10;
  v3 = xmmword_1EB5F5F20;
  v39[2] = xmmword_1EB5F5F10;
  v39[3] = xmmword_1EB5F5F20;
  *(v0 + 32) = static GroupActivityDescription.generic;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  outlined init with copy of GroupActivityDescription(v39, v50);
  if (one-time initialization token for watchTogether != -1)
  {
    swift_once();
  }

  v4 = xmmword_1EB5F7C48;
  v40[0] = static GroupActivityDescription.watchTogether;
  v40[1] = xmmword_1EB5F7C48;
  v5 = xmmword_1EB5F7C58;
  v6 = xmmword_1EB5F7C68;
  v40[2] = xmmword_1EB5F7C58;
  v40[3] = xmmword_1EB5F7C68;
  *(v0 + 96) = static GroupActivityDescription.watchTogether;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  outlined init with copy of GroupActivityDescription(v40, v50);
  if (one-time initialization token for listenTogether != -1)
  {
    swift_once();
  }

  v7 = xmmword_1EB5F7C08;
  v41[0] = static GroupActivityDescription.listenTogether;
  v41[1] = xmmword_1EB5F7C08;
  v8 = xmmword_1EB5F7C18;
  v9 = xmmword_1EB5F7C28;
  v41[2] = xmmword_1EB5F7C18;
  v41[3] = xmmword_1EB5F7C28;
  *(v0 + 160) = static GroupActivityDescription.listenTogether;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  outlined init with copy of GroupActivityDescription(v41, v50);
  if (one-time initialization token for playTogether != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EB5F7C88;
  v42[0] = static GroupActivityDescription.playTogether;
  v42[1] = xmmword_1EB5F7C88;
  v11 = xmmword_1EB5F7C98;
  v12 = xmmword_1EB5F7CA8;
  v42[2] = xmmword_1EB5F7C98;
  v42[3] = xmmword_1EB5F7CA8;
  *(v0 + 224) = static GroupActivityDescription.playTogether;
  *(v0 + 240) = v10;
  *(v0 + 256) = v11;
  *(v0 + 272) = v12;
  outlined init with copy of GroupActivityDescription(v42, v50);
  if (one-time initialization token for workoutTogether != -1)
  {
    swift_once();
  }

  v13 = xmmword_1EB5F7CC8;
  v43[0] = static GroupActivityDescription.workoutTogether;
  v43[1] = xmmword_1EB5F7CC8;
  v14 = xmmword_1EB5F7CD8;
  v15 = xmmword_1EB5F7CE8;
  v43[2] = xmmword_1EB5F7CD8;
  v43[3] = xmmword_1EB5F7CE8;
  *(v0 + 288) = static GroupActivityDescription.workoutTogether;
  *(v0 + 304) = v13;
  *(v0 + 320) = v14;
  *(v0 + 336) = v15;
  outlined init with copy of GroupActivityDescription(v43, v50);
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v16 = xmmword_1EB5F7E48;
  v44[0] = static GroupActivityDescription.screenSharing;
  v44[1] = xmmword_1EB5F7E48;
  v17 = xmmword_1EB5F7E58;
  v18 = xmmword_1EB5F7E68;
  v44[2] = xmmword_1EB5F7E58;
  v44[3] = xmmword_1EB5F7E68;
  *(v0 + 352) = static GroupActivityDescription.screenSharing;
  *(v0 + 368) = v16;
  *(v0 + 384) = v17;
  *(v0 + 400) = v18;
  outlined init with copy of GroupActivityDescription(v44, v50);
  if (one-time initialization token for shopTogether != -1)
  {
    swift_once();
  }

  v19 = xmmword_1EB5F7D08;
  v45[0] = static GroupActivityDescription.shopTogether;
  v45[1] = xmmword_1EB5F7D08;
  v20 = xmmword_1EB5F7D18;
  v21 = xmmword_1EB5F7D28;
  v45[2] = xmmword_1EB5F7D18;
  v45[3] = xmmword_1EB5F7D28;
  *(v0 + 416) = static GroupActivityDescription.shopTogether;
  *(v0 + 432) = v19;
  *(v0 + 448) = v20;
  *(v0 + 464) = v21;
  outlined init with copy of GroupActivityDescription(v45, v50);
  if (one-time initialization token for readTogether != -1)
  {
    swift_once();
  }

  v22 = xmmword_1EB5F7D48;
  v46[0] = static GroupActivityDescription.readTogether;
  v46[1] = xmmword_1EB5F7D48;
  v23 = xmmword_1EB5F7D58;
  v24 = xmmword_1EB5F7D68;
  v46[2] = xmmword_1EB5F7D58;
  v46[3] = xmmword_1EB5F7D68;
  *(v0 + 480) = static GroupActivityDescription.readTogether;
  *(v0 + 496) = v22;
  *(v0 + 512) = v23;
  *(v0 + 528) = v24;
  outlined init with copy of GroupActivityDescription(v46, v50);
  if (one-time initialization token for exploreTogether != -1)
  {
    swift_once();
  }

  v25 = xmmword_1EB5F7D88;
  v47[0] = static GroupActivityDescription.exploreTogether;
  v47[1] = xmmword_1EB5F7D88;
  v26 = xmmword_1EB5F7D98;
  v27 = xmmword_1EB5F7DA8;
  v47[2] = xmmword_1EB5F7D98;
  v47[3] = xmmword_1EB5F7DA8;
  *(v0 + 544) = static GroupActivityDescription.exploreTogether;
  *(v0 + 560) = v25;
  *(v0 + 576) = v26;
  *(v0 + 592) = v27;
  outlined init with copy of GroupActivityDescription(v47, v50);
  if (one-time initialization token for learnTogether != -1)
  {
    swift_once();
  }

  v28 = xmmword_1EB5F7DC8;
  v48[0] = static GroupActivityDescription.learnTogether;
  v48[1] = xmmword_1EB5F7DC8;
  v29 = xmmword_1EB5F7DD8;
  v30 = xmmword_1EB5F7DE8;
  v48[2] = xmmword_1EB5F7DD8;
  v48[3] = xmmword_1EB5F7DE8;
  *(v0 + 608) = static GroupActivityDescription.learnTogether;
  *(v0 + 624) = v28;
  *(v0 + 640) = v29;
  *(v0 + 656) = v30;
  outlined init with copy of GroupActivityDescription(v48, v50);
  if (one-time initialization token for createTogether != -1)
  {
    swift_once();
  }

  v31 = xmmword_1EB5F7E08;
  v49[0] = static GroupActivityDescription.createTogether;
  v49[1] = xmmword_1EB5F7E08;
  v32 = xmmword_1EB5F7E18;
  v33 = xmmword_1EB5F7E28;
  v49[2] = xmmword_1EB5F7E18;
  v49[3] = xmmword_1EB5F7E28;
  *(v0 + 672) = static GroupActivityDescription.createTogether;
  *(v0 + 688) = v31;
  *(v0 + 704) = v32;
  *(v0 + 720) = v33;
  outlined init with copy of GroupActivityDescription(v49, v50);
  if (one-time initialization token for podcastTogether != -1)
  {
    swift_once();
  }

  v34 = xmmword_1EB5F7E88;
  v50[0] = static GroupActivityDescription.podcastTogether;
  v50[1] = xmmword_1EB5F7E88;
  v35 = xmmword_1EB5F7E98;
  v36 = xmmword_1EB5F7EA8;
  v50[2] = xmmword_1EB5F7E98;
  v50[3] = xmmword_1EB5F7EA8;
  *(v0 + 736) = static GroupActivityDescription.podcastTogether;
  *(v0 + 752) = v34;
  *(v0 + 768) = v35;
  *(v0 + 784) = v36;
  static GroupActivityDescription.allCases = v0;
  return outlined init with copy of GroupActivityDescription(v50, &v38);
}

uint64_t static GroupActivityDescription.allCases.getter()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static GroupActivityDescription.allCases.setter(void *a1)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupActivityDescription.allCases = a1;
}

uint64_t (*static GroupActivityDescription.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance GroupActivityDescription@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static GroupActivityDescription.allCases;
}

void __swiftcall GroupActivityDescription.init(id:)(CopresenceCore::GroupActivityDescription_optional *__return_ptr retstr, Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *(static GroupActivityDescription.allCases + 2);
  if (v5)
  {
    v6 = (static GroupActivityDescription.allCases + 32);
    while (1)
    {
      v7 = v6[3];
      v9 = *v6;
      v8 = v6[1];
      v16 = v6[2];
      v17 = v7;
      v14 = v9;
      v15 = v8;
      v10 = v9._countAndFlagsBits == countAndFlagsBits && v9._object == object;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v6 += 4;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    outlined init with copy of GroupActivityDescription(&v14, &v13);

    v11 = v15;
    retstr->value.id = v14;
    retstr->value.actionDescription = v11;
    v12 = v17;
    retstr->value.ongoingDescription = v16;
    retstr->value.completedDescription = v12;
  }

  else
  {
LABEL_11:

    retstr->value.ongoingDescription = 0u;
    retstr->value.completedDescription = 0u;
    retstr->value.id = 0u;
    retstr->value.actionDescription = 0u;
  }
}

double GroupActivityDescription.init(id:)@<D0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityDescription.init(id:)(&v8, v4);

  actionDescription = v8.value.actionDescription;
  *a2 = v8.value.id;
  a2[1] = actionDescription;
  result = *&v8.value.ongoingDescription._countAndFlagsBits;
  completedDescription = v8.value.completedDescription;
  a2[2] = v8.value.ongoingDescription;
  a2[3] = completedDescription;
  return result;
}

uint64_t TUConversationActivityContextIdentifier.isMedia.getter(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v10 != v11)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_13:

      return v7 & 1;
    }

LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  v7 = 1;
  return v7 & 1;
}

id GroupActivityDescription.tuActivityContext.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = objc_allocWithZone(MEMORY[0x1E69D8B30]);
  v10 = MEMORY[0x1B270FF70](v1, v2);
  v11 = MEMORY[0x1B270FF70](v3, v4);
  v12 = MEMORY[0x1B270FF70](v5, v6);
  v13 = MEMORY[0x1B270FF70](v8, v7);
  v14 = [v9 initWithContextIdentifier:v10 actionDescription:v11 ongoingDescription:v12 completedDescription:v13];

  return v14;
}

id CPGroupActivityDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPGroupActivityDescription.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPGroupActivityDescription();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CPGroupActivityDescription.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CPGroupActivityDescription();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static GroupActivityDescription.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id specialized static CPGroupActivityDescription.activityContext(with:)(uint64_t a1)
{
  v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityDescription.init(id:)(&v16, v1);
  object = v16.value.id._object;
  if (v16.value.id._object)
  {
    countAndFlagsBits = v16.value.id._countAndFlagsBits;
    v4 = v16.value.actionDescription._countAndFlagsBits;
    v5 = v16.value.actionDescription._object;
    v6 = v16.value.ongoingDescription._countAndFlagsBits;
    v7 = v16.value.ongoingDescription._object;
    v8 = v16.value.completedDescription._countAndFlagsBits;
    v9 = v16.value.completedDescription._object;
    v10 = objc_allocWithZone(MEMORY[0x1E69D8B30]);
    v11 = MEMORY[0x1B270FF70](countAndFlagsBits, object);
    v12 = MEMORY[0x1B270FF70](v4, v5);
    v13 = MEMORY[0x1B270FF70](v6, v7);
    v14 = MEMORY[0x1B270FF70](v8, v9);
    object = [v10 initWithContextIdentifier:v11 actionDescription:v12 ongoingDescription:v13 completedDescription:v14];

    outlined destroy of GroupActivityDescription?(&v16);
  }

  return object;
}

unint64_t lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription()
{
  result = lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription;
  if (!lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GroupActivityDescription] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GroupActivityDescription] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GroupActivityDescription] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14CopresenceCore24GroupActivityDescriptionVGMd, &_sSay14CopresenceCore24GroupActivityDescriptionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GroupActivityDescription] and conformance [A]);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupActivityDescription(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for GroupActivityDescription(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t outlined destroy of GroupActivityDescription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SimulatedDataCryptor.encryptionKeyID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SimulatedDataCryptor.encryptionKeyID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for SimulatedDataCryptor.encryptionKeyID : SimulatedDataCryptor(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x68))(v6);
}

uint64_t SimulatedDataCryptor.decryptionKeyIDSet.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SimulatedDataCryptor.encryptData(_:seqNum:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    outlined copy of Data._Representation(result, a2);
    return v2;
  }

  return result;
}

id SimulatedDataCryptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SimulatedDataCryptor.init()(uint64_t a1)
{
  UUID.init()();
  v2 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  type metadata accessor for UUID();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *&v1[v2] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SimulatedDataCryptor(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for SimulatedDataCryptor(uint64_t a1)
{
  result = type metadata singleton initialization cache for SimulatedDataCryptor;
  if (!type metadata singleton initialization cache for SimulatedDataCryptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SimulatedDataCryptor.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static SimulatedDataCryptor.supportsSecureCoding = a1;
  return result;
}

id SimulatedDataCryptor.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  UUID.init()();
  v4 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  type metadata accessor for UUID();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *&v3[v4] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id SimulatedDataCryptor.init(coder:)(void *a1)
{
  UUID.init()();
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  type metadata accessor for UUID();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *&v1[v3] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SimulatedDataCryptor(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id SimulatedDataCryptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedDataCryptor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for SimulatedDataCryptor(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t String.localized.getter(uint64_t a1, void *a2)
{
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v11._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t PluginEndpoint.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PluginEndpoint(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[2];
    v12 = v8[4];
    v13 = v8[5];
    if (v12 >> 60 == 15)
    {
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      strcpy(v31, "RelaySession(");
      HIWORD(v31[1]) = -4864;
      MEMORY[0x1B2710020](v10, v9);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v30[0] = v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v14);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v30[0] = v13;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v15);

      MEMORY[0x1B2710020](41, 0xE100000000000000);
    }

    else
    {
      v18 = v8[3];
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      outlined copy of Data._Representation(v18, v12);
      _StringGuts.grow(_:)(28);

      strcpy(v31, "RelaySession(");
      HIWORD(v31[1]) = -4864;
      MEMORY[0x1B2710020](v10, v9);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v30[0] = v11;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v19);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v21 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

      if (v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v30[0] = v22;
        v30[1] = v24;
        v25 = String.init<A>(reflecting:)();
        v27 = v26;
      }

      else
      {
        v27 = 0xE300000000000000;
        v25 = 7104878;
      }

      MEMORY[0x1B2710020](v25, v27);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v30[0] = v13;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v28);

      MEMORY[0x1B2710020](41, 0xE100000000000000);
      outlined consume of Data?(v18, v12);
      outlined consume of Data?(v18, v12);
    }

    return v31[0];
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    strcpy(v31, "Direct(");
    v31[1] = 0xE700000000000000;
    v16 = NWEndpoint.debugDescription.getter();
    MEMORY[0x1B2710020](v16);

    MEMORY[0x1B2710020](41, 0xE100000000000000);
    v17 = v31[0];
    (*(v3 + 8))(v5, v2);
  }

  return v17;
}

uint64_t type metadata accessor for PluginEndpoint(uint64_t a1)
{
  result = type metadata singleton initialization cache for PluginEndpoint;
  if (!type metadata singleton initialization cache for PluginEndpoint)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PluginEndpoint(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall PluginEndpoint.updateVirtualParticipant(_:localParticipantID:)(Swift::UInt64 _, Swift::UInt64 localParticipantID)
{
  v3 = v2;
  v6 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PluginEndpoint(v3, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of PluginEndpoint(v3);
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = *(v8 + 2);
    v12 = *(v8 + 24);
    v13 = *(v8 + 5);
    if (v11 != _ || v13 != localParticipantID)
    {
      v23 = *(v8 + 24);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, log);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v22 = v9;
        v19 = v18;
        *v18 = 134218752;
        *(v18 + 4) = v11;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v13;
        *(v18 + 22) = 2048;
        *(v18 + 24) = _;
        *(v18 + 32) = 2048;
        *(v18 + 34) = v13;
        _os_log_impl(&dword_1AEB26000, v16, v17, "Updating virtualParticipant, old: [virtualParticipant: %llu, localParticipantID: %llu], new: [virtualParticipant: %llu, localParticipantID: %llu]", v18, 0x2Au);
        v20 = v19;
        v9 = v22;
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      v12 = v23;
    }

    *v3 = v9;
    *(v3 + 8) = v10;
    *(v3 + 16) = _;
    *(v3 + 24) = v12;
    *(v3 + 40) = localParticipantID;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of PluginEndpoint(v8);
  }
}

uint64_t outlined destroy of PluginEndpoint(uint64_t a1)
{
  v2 = type metadata accessor for PluginEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for PluginEndpoint(uint64_t a1)
{
  type metadata accessor for (endpoint: NWEndpoint)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (endpoint: NWEndpoint)()
{
  if (!lazy cache variable for type metadata for (endpoint: NWEndpoint))
  {
    v0 = type metadata accessor for NWEndpoint();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (endpoint: NWEndpoint));
    }
  }
}

void type metadata accessor for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64))
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, "|");
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64));
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FastSyncActivitySession.leave()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = v0;
    specialized ActivitySession.invalidationBlock(execute:)(v7, v7);
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in FastSyncActivitySession.leave()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2F8))(&v16);
  result = v16;
  if (v16 >> 62 != 2)
  {
LABEL_13:
    outlined consume of ActivitySession.State(v16);
    lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }

  if (v16 != 0x8000000000000000 && v16 != 0x8000000000000008)
  {
    if (v16 == 0x8000000000000010)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Leaving activity session with identifier %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    v14 = v9;
    v2 = MEMORY[0x1E69E7D40];
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v16 = 0x8000000000000010;
  return (*((*v2 & *v6) + 0x300))(&v16);
}

id FastSyncActivitySession.rbsAssertion(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() targetWithPid_];
  v2 = MEMORY[0x1B270FF70](0xD00000000000001DLL, 0x80000001AEE31310);
  v3 = MEMORY[0x1B270FF70](0x636E795374736146, 0xE800000000000000);
  v4 = [objc_opt_self() attributeWithDomain:v2 name:v3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B40;
  *(v5 + 32) = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v7 = v4;
  v8 = MEMORY[0x1B270FF70](0xD000000000000024, 0x80000001AEE2F060);
  type metadata accessor for RBSAttribute();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithExplanation:v8 target:v1 attributes:isa];

  return v10;
}

uint64_t FastSyncActivitySession.participant(with:includeLocalParticipant:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR___CPActivitySession_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x328))(v16);
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if ((*((*v17 & *v5) + 0x3D8))())
    {
      v24 = v23;
      ObjectType = swift_getObjectType();
      (*(v24 + 64))(a1, v20, v22, a2 & 1, a3, a4, ObjectType, v24);
      swift_unknownObjectRelease();
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.default);
    v36 = v5;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v36;
      *v32 = v5;
      v37 = v36;
      v34 = "[Translation] Invalid sessionManager on session: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.default);
  v28 = v5;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v5;
    v33 = v28;
    v34 = "[Translation] Failed to find bundleIdentifier from activity on session: %@";
LABEL_12:
    _os_log_impl(&dword_1AEB26000, v29, v30, v34, v31, 0xCu);
    outlined destroy of NSObject?(v32);
    MEMORY[0x1B27120C0](v32, -1, -1);
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

LABEL_13:

  return a3(0);
}

char *FastSyncActivitySession.__allocating_init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, void *a9)
{
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v34 = a5;
  v35 = a2;
  v36 = a4;
  v37 = a1;
  v32 = a9;
  v12 = type metadata accessor for Date();
  v33 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_allocWithZone(v31);
  (*(v17 + 16))(v19, a2, v16);
  (*(v13 + 16))(v15, a5, v12);
  outlined init with copy of UserNotificationCenter(a9, v41);
  ObjectType = swift_getObjectType();
  v21 = v42;
  v22 = v43;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v30 = v21;
  v27 = v37;
  v28 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(v37, v19, a3, v15, v38, v39, v40, v25, v31, ObjectType, v30, v36, v22);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  (*(v13 + 8))(v34, v33);
  (*(v17 + 8))(v35, v16);
  return v28;
}

char *FastSyncActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, void *a9)
{
  v36 = a1;
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v33 = a5;
  v34 = a2;
  v35 = a4;
  v31 = a9;
  v12 = type metadata accessor for Date();
  v32 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a2, v16);
  (*(v13 + 16))(v15, a5, v12);
  outlined init with copy of UserNotificationCenter(a9, v41);
  ObjectType = swift_getObjectType();
  v21 = v42;
  v22 = v43;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v30 = ObjectType;
  v27 = v36;
  v28 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(v36, v19, a3, v15, v38, v39, v40, v25, v37, v30, v21, v35, v22);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  (*(v13 + 8))(v33, v32);
  (*(v17 + 8))(v34, v16);
  return v28;
}

id FastSyncActivitySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FastSyncActivitySession(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized FastSyncActivitySession.assertionWillInvalidate(_:)()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.host);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "[Assertion] DomainAssertionObserver assertionWillInvalidate for app.", v2, 2u);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }
}

unint64_t type metadata accessor for RBSAttribute()
{
  result = lazy cache variable for type metadata for RBSAttribute;
  if (!lazy cache variable for type metadata for RBSAttribute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSAttribute);
  }

  return result;
}

uint64_t type metadata accessor for FastSyncActivitySession(uint64_t a1)
{
  result = type metadata singleton initialization cache for FastSyncActivitySession;
  if (!type metadata singleton initialization cache for FastSyncActivitySession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double PluginClientMetrics.ConnectionEstablishment.init(report:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized PluginClientMetrics.ConnectionEstablishment.init(report:)(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t PluginClientMetrics.ConnectionEstablishment.rtcReport.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E76D8];
  v16 = MEMORY[0x1E69E76D8];
  *&v15 = a1;
  outlined init with take of Any(&v15, v14);
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD00000000000001BLL, 0x80000001AEE2EB70, isUniquelyReferenced_nonNull_native);
  v16 = v7;
  *&v15 = a2;
  outlined init with take of Any(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD000000000000018, 0x80000001AEE2EB90, v10);
  v16 = v7;
  *&v15 = a3;
  outlined init with take of Any(&v15, v14);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD000000000000024, 0x80000001AEE2EBB0, v11);
  v16 = v7;
  *&v15 = a4;
  outlined init with take of Any(&v15, v14);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD00000000000001FLL, 0x80000001AEE2EBE0, v12);
  return v8;
}

unint64_t PluginClientMetrics.ConnectionEstablishment.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v0);

  _StringGuts.grow(_:)(28);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  _StringGuts.grow(_:)(30);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  _StringGuts.grow(_:)(25);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  _StringGuts.grow(_:)(36);

  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE31360);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001ALL, 0x80000001AEE31380);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001CLL, 0x80000001AEE313A0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000017, 0x80000001AEE313C0);

  return 0xD000000000000019;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys()
{
  v1 = 0xD000000000000013;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PluginClientMetrics.ConnectionEstablishment.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginClientMetrics.ConnectionEstablishment.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t PluginClientMetrics.ConnectionEstablishment.init(from:)(void *a1)
{
  result = specialized PluginClientMetrics.ConnectionEstablishment.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PluginClientMetrics.ConnectionEstablishment@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PluginClientMetrics.ConnectionEstablishment.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

__n128 PluginClientMetrics.ConnectionDataTransfer.init(report:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized PluginClientMetrics.ConnectionDataTransfer.init(report:)(a2, v5);
  v3 = v6[0];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v6 + 9);
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t PluginClientMetrics.ConnectionDataTransfer.rtcReport.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E76D8];
  v25 = MEMORY[0x1E69E76D8];
  *&v24 = v2;
  outlined init with take of Any(&v24, v23);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x617275642D707271, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
  v6 = v1[1];
  v25 = v3;
  *&v24 = v6;
  outlined init with take of Any(&v24, v23);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000013, 0x80000001AEE2EAB0, v7);
  v8 = v1[2];
  v25 = v3;
  *&v24 = v8;
  outlined init with take of Any(&v24, v23);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000013, 0x80000001AEE2EAD0, v9);
  v10 = v1[4];
  v25 = v3;
  *&v24 = v10;
  outlined init with take of Any(&v24, v23);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000012, 0x80000001AEE2EA90, v11);
  v12 = v1[3];
  v25 = v3;
  *&v24 = v12;
  outlined init with take of Any(&v24, v23);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000012, 0x80000001AEE2EA70, v13);
  v14 = v1[5];
  v25 = v3;
  *&v24 = v14;
  outlined init with take of Any(&v24, v23);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000015, 0x80000001AEE2EAF0, v15);
  v16 = v1[6];
  v25 = v3;
  *&v24 = v16;
  outlined init with take of Any(&v24, v23);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000015, 0x80000001AEE2EB10, v17);
  v18 = v1[7];
  v25 = v3;
  *&v24 = v18;
  outlined init with take of Any(&v24, v23);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000010, 0x80000001AEE2EB30, v19);
  v20 = v1[8];
  v25 = v3;
  *&v24 = v20;
  outlined init with take of Any(&v24, v23);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000010, 0x80000001AEE2EB50, v21);
  return v4;
}

unint64_t PluginClientMetrics.ConnectionDataTransfer.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v0);

  _StringGuts.grow(_:)(24);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  _StringGuts.grow(_:)(20);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  _StringGuts.grow(_:)(31);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  _StringGuts.grow(_:)(27);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v4);

  _StringGuts.grow(_:)(29);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v5);

  _StringGuts.grow(_:)(24);

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v6);

  _StringGuts.grow(_:)(23);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v7);

  _StringGuts.grow(_:)(24);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v8);

  _StringGuts.grow(_:)(50);

  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE31360);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE31400);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001DLL, 0x80000001AEE31440);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE31460);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE31420);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE31480);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE314A0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE314C0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE314E0);

  return 0xD000000000000018;
}

unint64_t PluginClientMetrics.ConnectionDataTransfer.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000011;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PluginClientMetrics.ConnectionDataTransfer.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginClientMetrics.ConnectionDataTransfer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

__n128 PluginClientMetrics.ConnectionDataTransfer.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PluginClientMetrics.ConnectionDataTransfer.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance PluginClientMetrics.ConnectionDataTransfer@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PluginClientMetrics.ConnectionDataTransfer.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PluginClientMetrics.ConnectionDataTransfer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static PluginClientMetrics.ConnectionDataTransfer.== infix(_:_:)(v7, v9);
}

uint64_t PluginClientReporter.reportReadyCallback.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PluginClientReporter.receivedConnectionEstablishmentReportCount.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t PluginClientReporter.receivedDataTransferReportCount.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *PluginClientReporter.__allocating_init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  result[5] = MEMORY[0x1E69E7CC8];
  result[6] = v7;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *PluginClientReporter.init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v3[5] = MEMORY[0x1E69E7CC8];
  v3[6] = v4;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void PluginClientReporter.includeConnectionEstablishmentReport(_:withTag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v72 = a2;
  v73 = a3;
  v6 = type metadata accessor for NWConnection.EstablishmentReport();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v68 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4[2];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_4:
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, log);
    (v16)(v10, a1, v6);
    v20 = v73;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75[0] = v24;
      *v23 = 136315394;
      v25 = NWConnection.EstablishmentReport.debugDescription.getter();
      v27 = v26;
      (*(v7 + 8))(v10, v6);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v75);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v20, v75);
      _os_log_impl(&dword_1AEB26000, v21, v22, "[Reporter] Dropping connection-establishment-report, could not parse report=%s tag=%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return;
  }

  v16 = *(v7 + 16);
  (v16)(v12, a1, v6);
  specialized PluginClientMetrics.ConnectionEstablishment.init(report:)(v12, v76);
  if (v77)
  {
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v29 = v76[1];
  v70 = v76[0];
  v71 = v76[2];
  v69 = v76[3];
  v30 = (*(*v4 + 128))(v75);
  v32 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v32;
  v34 = v74;
  *v32 = 0x8000000000000000;
  v36 = v72;
  v35 = v73;
  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v73);
  v39 = v34[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = v37;
  if (v34[3] >= v41)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v35);
    if ((v42 & 1) != (v44 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v38 = v43;
  }

  isUniquelyReferenced_nonNull_native = v71;
  *v32 = v74;

  v45 = *v32;
  if ((v42 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v38, v36, v35, 0, *v32);
  }

  v46 = v45[7];
  v47 = *(v46 + 8 * v38);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    goto LABEL_24;
  }

  *(v46 + 8 * v38) = v49;
  v30(v75, 0);
  if (one-time initialization token for log != -1)
  {
LABEL_25:
    swift_once();
  }

  v50 = v29;
  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, log);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75[0] = v68;
    *v54 = 136315650;
    v55 = v69;
    v56 = PluginClientMetrics.ConnectionEstablishment.debugDescription.getter();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v75);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    (*(*v4 + 112))(v59);
    v60 = Dictionary.description.getter();
    v62 = v61;

    v63 = v60;
    isUniquelyReferenced_nonNull_native = v71;
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v75);
    v36 = v72;

    *(v54 + 14) = v64;
    *(v54 + 22) = 2080;
    *(v54 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v75);
    _os_log_impl(&dword_1AEB26000, v52, v53, "[Reporter] Received connection-establishment-report=%s counts=%s tag=%s", v54, 0x20u);
    v65 = v68;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v65, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

  else
  {

    v55 = v69;
  }

  v66 = v4[3];
  v67 = PluginClientMetrics.ConnectionEstablishment.rtcReport.getter(v70, v50, isUniquelyReferenced_nonNull_native, v55);
  v66(v36, v35, v67);
}

void PluginClientReporter.includeConnectionDataTransferReport(_:withTag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v65 = a2;
  v6 = type metadata accessor for NWConnection.DataTransferReport();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4[2];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_4:
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, log);
    (v16)(v10, a1, v6);
    v20 = v66;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v72[0] = v24;
      *v23 = 136315394;
      v25 = NWConnection.DataTransferReport.debugDescription.getter();
      v27 = v26;
      (*(v7 + 8))(v10, v6);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v72);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v20, v72);
      _os_log_impl(&dword_1AEB26000, v21, v22, "[Reporter] Dropping data-transfer-report, could not parse report=%s tag=%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return;
  }

  v16 = *(v7 + 16);
  (v16)(v12, a1, v6);
  specialized PluginClientMetrics.ConnectionDataTransfer.init(report:)(v12, v69);
  if (v71)
  {
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v72[1] = v69[1];
  v72[2] = v69[2];
  v72[3] = v69[3];
  v73 = v70;
  v72[0] = v69[0];
  v29 = (*(*v4 + 152))(v68);
  v31 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v31;
  v33 = v67;
  *v31 = 0x8000000000000000;
  v34 = v65;
  v35 = v66;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
  v38 = v33[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = v36;
  if (v33[3] >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
    if ((v41 & 1) != (v43 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v37 = v42;
  }

  *v31 = v67;

  v44 = *v31;
  if ((v41 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v37, v34, v35, 0, *v31);
  }

  v45 = v44[7];
  v46 = *(v45 + 8 * v37);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
    goto LABEL_23;
  }

  *(v45 + 8 * v37) = v48;
  v29(v68, 0);
  if (one-time initialization token for log != -1)
  {
LABEL_24:
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, log);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v68[0] = v53;
    *v52 = 136315650;
    v54 = PluginClientMetrics.ConnectionDataTransfer.debugDescription.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v68);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    (*(*v4 + 136))(v57);
    v58 = Dictionary.description.getter();
    v60 = v59;

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v68);
    v34 = v65;

    *(v52 + 14) = v61;
    *(v52 + 22) = 2080;
    *(v52 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v68);
    _os_log_impl(&dword_1AEB26000, v50, v51, "[Reporter] Received data-transfer-report=%s count=%s tag=%s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v53, -1, -1);
    MEMORY[0x1B27120C0](v52, -1, -1);
  }

  v62 = v4[3];
  v63 = PluginClientMetrics.ConnectionDataTransfer.rtcReport.getter();
  v62(v34, v35, v63);
}

uint64_t PluginClientReporter.deinit()
{

  return v0;
}

uint64_t PluginClientReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized PluginClientMetrics.ConnectionEstablishment.init(report:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWConnection.EstablishmentReport();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWConnection.EstablishmentReport.Handshake();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v49 - v13;
  v15 = MEMORY[0x1B270F730](v12) * 1000.0;
  if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  NWConnection.EstablishmentReport.attemptStartedAfterInterval.getter();
  v17 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v17 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  v52 = v14;
  v54 = a2;
  v55 = v5;
  v56 = a1;
  v57 = v4;
  v18 = NWConnection.EstablishmentReport.handshakes.getter();
  v59 = *(v18 + 16);
  if (v59)
  {
    v19 = 0;
    v50 = v17;
    v51 = v15;
    v58 = v8 + 16;
    v20 = (v8 + 8);
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v7);
      type metadata accessor for NWProtocolDefinition();
      v4 = NWConnection.EstablishmentReport.Handshake.definition.getter();
      type metadata accessor for NWProtocolQUICConnection();
      static NWProtocolQUICConnection.definition.getter();
      v21 = static NWProtocolDefinition.== infix(_:_:)();

      if (v21)
      {
        break;
      }

      ++v19;
      (*v20)(v11, v7);
      if (v59 == v19)
      {
        goto LABEL_12;
      }
    }

    v43 = v52;
    (*(v8 + 32))(v52, v11, v7);
    NWConnection.EstablishmentReport.Handshake.handshakeDuration.getter();
    v45 = v44 * 1000.0;
    if (COERCE__INT64(fabs(v44 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v45 > -1.0)
    {
      if (v45 < 1.84467441e19)
      {
        NWConnection.EstablishmentReport.Handshake.handshakeRTT.getter();
        v47 = v46;
        (*(v55 + 8))(v56, v57);
        (*v20)(v43, v7);
        v48 = v47 * 1000.0;
        if (COERCE__INT64(fabs(v47 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v48 > -1.0)
          {
            if (v48 < 1.84467441e19)
            {
              v41 = 0;
              v39 = v45;
              v40 = v48;
              v42 = v54;
              v38 = v50;
              v37 = v51;
              goto LABEL_24;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_12:

  v4 = v53;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_32;
  }

LABEL_13:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, log);
  v23 = v55;
  v24 = v56;
  v25 = v57;
  (*(v55 + 16))(v4, v56, v57);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = 136315138;
    v30 = NWConnection.EstablishmentReport.debugDescription.getter();
    v31 = v4;
    v33 = v32;
    v34 = *(v23 + 8);
    v34(v31, v25);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, &v60);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1AEB26000, v26, v27, "Could not find QUIC handshake info in establishment report, report=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);

    v34(v24, v25);
  }

  else
  {

    v36 = *(v23 + 8);
    v36(v24, v25);
    v36(v4, v25);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  v42 = v54;
LABEL_24:
  *v42 = v37;
  *(v42 + 8) = v38;
  *(v42 + 16) = v39;
  *(v42 + 24) = v40;
  *(v42 + 32) = v41;
}

unint64_t lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

uint64_t specialized PluginClientMetrics.ConnectionEstablishment.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001AEE315C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AEE315E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001AEE31600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001AEE31620 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PluginClientMetrics.ConnectionEstablishment.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

void specialized PluginClientMetrics.ConnectionDataTransfer.init(report:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWConnection.DataTransferReport.PathReport();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.DataTransferReport.duration.getter();
  v9 = v8 * 1000.0;
  if (COERCE__INT64(fabs(v8 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  NWConnection.DataTransferReport.aggregatePathReport.getter();
  v22 = NWConnection.DataTransferReport.PathReport.receivedTransportByteCount.getter();
  v10 = NWConnection.DataTransferReport.PathReport.sentTransportByteCount.getter();
  v11 = NWConnection.DataTransferReport.PathReport.receivedApplicationByteCount.getter();
  v12 = NWConnection.DataTransferReport.PathReport.sentApplicationByteCount.getter();
  v13 = NWConnection.DataTransferReport.PathReport.retransmittedTransportByteCount.getter();
  NWConnection.DataTransferReport.PathReport.transportSmoothedRTT.getter();
  v15 = v14 * 1000.0;
  if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  NWConnection.DataTransferReport.PathReport.transportMinimumRTT.getter();
  v17 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v17 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  NWConnection.DataTransferReport.PathReport.transportRTTVariance.getter();
  v19 = v18;
  v20 = type metadata accessor for NWConnection.DataTransferReport();
  (*(*(v20 - 8) + 8))(a1, v20);
  (*(v5 + 8))(v7, v4);
  v21 = v19 * 1000.0;
  if (COERCE__INT64(fabs(v19 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v21 < 1.84467441e19)
  {
    v23 = 0;
    *a2 = v9;
    *(a2 + 8) = v22;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    *(a2 + 48) = v15;
    *(a2 + 56) = v17;
    *(a2 + 64) = v21;
    *(a2 + 72) = 0;
    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

uint64_t specialized PluginClientMetrics.ConnectionDataTransfer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001AEE315C0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AEE31660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001AEE31680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001AEE316A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001AEE316C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE316E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEE31700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31720 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t specialized PluginClientMetrics.ConnectionDataTransfer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v34 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = 3;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 5;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 6;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = 7;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 8;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9;
  a2[1] = v10;
  v14 = v24;
  v13 = v25;
  a2[2] = v11;
  a2[3] = v13;
  v16 = v22;
  v15 = v23;
  a2[4] = v14;
  a2[5] = v15;
  v17 = v20;
  v18 = v21;
  a2[6] = v16;
  a2[7] = v18;
  a2[8] = v17;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HostConnectionNotificationObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id ConversationManagerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ConversationManagerClient.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ConversationManagerClient.shared;

  return v1;
}

uint64_t key path setter for ConversationManagerClient.pluginClientReporter : ConversationManagerClient(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t ConversationManagerClient.customEndpointProvider.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
  specialized Collection.first.getter(v1);
  v3 = v2;
  v5 = v4;

  if (!v3)
  {
    return 0;
  }

  return v5;
}

_OWORD *specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x1B27109A0](v3, v5, v6, v7);
    outlined consume of Set<AddressableMember>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<AddressableMember>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1, type metadata accessor for ActivitySession);
  v12 = v11;
  outlined consume of Set<AddressableMember>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t ConversationManagerClient.customEndpointProvider.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ConversationManagerClient.registerEndpointProvider(_:)(a1, a2);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x148))();
    v5 = specialized Collection.first.getter(v4);
    v7 = v6;

    if (v7)
    {
      swift_unknownObjectRelease();
      v8._countAndFlagsBits = v5;
      v8._object = v7;
      ConversationManagerClient.unregisterEndpointProvider(identifier:)(v8);
    }
  }

  return result;
}

uint64_t ConversationManagerClient.registerEndpointProvider(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v12 = (*(a2 + 8))();
  v14 = v13;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.client);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v9;
    v21 = v6;
    v22 = v3;
    v23 = a1;
    v24 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, aBlock);
    _os_log_impl(&dword_1AEB26000, v16, v17, "Registering custom endpoint provider: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    a1 = v23;
    v3 = v22;
    v6 = v21;
    v9 = v32;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v19;
    v7 = v33;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v27 = swift_allocObject();
  v27[2] = v3;
  v27[3] = v12;
  v27[4] = v14;
  v27[5] = a1;
  v27[6] = a2;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.registerEndpointProvider(_:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v28 = _Block_copy(aBlock);
  v29 = v3;
  swift_unknownObjectRetain();
  v30 = v34;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v30, v9, v28);
  _Block_release(v28);
  (*(v7 + 8))(v9, v6);
  (*(v35 + 8))(v30, v36);
}

Swift::Void __swiftcall ConversationManagerClient.unregisterEndpointProvider(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, aBlock);
    _os_log_impl(&dword_1AEB26000, v13, v14, "Unregistering custom endpoint provider: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    v18 = v16;
    v6 = v22;
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = countAndFlagsBits;
  v19[4] = object;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.unregisterEndpointProvider(identifier:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_1;
  v20 = _Block_copy(aBlock);

  v21 = v2;
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v8, v20);
  _Block_release(v20);
  (*(v6 + 8))(v8, v5);
  (*(v23 + 8))(v11, v24);
}

void (*ConversationManagerClient.customEndpointProvider.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x148);
  v6 = ((*MEMORY[0x1E69E7D40] & *v1) + 328) & 0xFFFFFFFFFFFFLL | 0xD5EB000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v7 = v5();
  specialized Collection.first.getter(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v9)
  {
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *v4 = v11;
  v4[1] = v13;
  return ConversationManagerClient.customEndpointProvider.modify;
}

void ConversationManagerClient.customEndpointProvider.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      v4 = v2[1];
      v5 = swift_unknownObjectRetain();
      ConversationManagerClient.registerEndpointProvider(_:)(v5, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = (v2[3])();
      v7 = specialized Collection.first.getter(v6);
      v9 = v8;

      if (v9)
      {
        swift_unknownObjectRelease();
        v10._countAndFlagsBits = v7;
        v10._object = v9;
        ConversationManagerClient.unregisterEndpointProvider(identifier:)(v10);
      }
    }

    goto LABEL_8;
  }

  if (v3)
  {
    ConversationManagerClient.registerEndpointProvider(_:)(**a1, v2[1]);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v11 = (v2[3])();
  v12 = specialized Collection.first.getter(v11);
  v14 = v13;

  if (v14)
  {
    swift_unknownObjectRelease();
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    ConversationManagerClient.unregisterEndpointProvider(identifier:)(v15);
  }

LABEL_9:

  free(v2);
}

uint64_t ConversationManagerClient.customEndpointProviders.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationManagerClient.customEndpointProviders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ConversationManagerClient.hasInitialState.getter()
{
  v1 = direct field offset for ConversationManagerClient.hasInitialState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationManagerClient.hasInitialState.setter(char a1)
{
  v3 = direct field offset for ConversationManagerClient.hasInitialState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for ConversationManagerClient.activeSessionContainer : ConversationManagerClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationManagerClient.activeSessionContainer : ConversationManagerClient(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t ConversationManagerClient.activeSessionContainer.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ConversationManagerClient.activeSessionContainer.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*ConversationManagerClient.activeSessionContainer.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  return ConversationManagerClient.activeSessionContainer.modify;
}

void ConversationManagerClient.activeSessionContainer.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for ConversationManagerClient.$activeSessionContainer : ConversationManagerClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMd, &_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1E0))(v6);
}

uint64_t ConversationManagerClient.$activeSessionContainer.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ConversationManagerClient.$activeSessionContainer.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMd, &_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void closure #1 in ConversationManagerClient.init()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v46 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  UUID.init(uuidString:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.client);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v47);
      _os_log_impl(&dword_1AEB26000, v22, v23, a6, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1B27120C0](v25, -1, -1);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.client);
    (*(v15 + 16))(v18, v20, v14);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v29 = 136315394;
      v30 = Dictionary.description.getter();
      v43 = v28;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v47);
      v45 = a4;
      v33 = v32;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v42 = a3;
      v37 = *(v15 + 8);
      v37(v18, v14);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v47);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_1AEB26000, v27, v43, v46, v29, 0x16u);
      v39 = v44;
      swift_arrayDestroy();
      v40 = v39;
      v41 = v42;
      MEMORY[0x1B27120C0](v40, -1, -1);
      MEMORY[0x1B27120C0](v29, -1, -1);
    }

    else
    {

      v41 = a3;
      v37 = *(v15 + 8);
      v37(v18, v14);
    }

    ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(v41, v20);
    v37(v20, v14);
  }
}

uint64_t closure #5 in ConversationManagerClient.init()(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v19 = *a2;
  if (*a1)
  {
    v20 = [*a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v5 + 56);
    v21(v18, 0, 1, v4);
  }

  else
  {
    v21 = *(v5 + 56);
    v21(&v30 - v17, 1, 1, v4);
  }

  if (v19)
  {
    v22 = [v19 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v21(v16, v23, 1, v4);
  v24 = *(v7 + 48);
  outlined init with copy of UUID?(v18, v9);
  outlined init with copy of UUID?(v16, &v9[v24]);
  v25 = *(v5 + 48);
  if (v25(v9, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v9, v13);
    if (v25(&v9[v24], 1, v4) != 1)
    {
      v27 = v31;
      (*(v5 + 32))(v31, &v9[v24], v4);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v5 + 8);
      v28(v27, v4);
      outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v28(v13, v4);
      outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v26 & 1;
    }

    outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v9[v24], 1, v4) != 1)
  {
LABEL_12:
    outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 1;
  return v26 & 1;
}

Swift::Void __swiftcall ConversationManagerClient.fetchInitialStateIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + direct field offset for XPCClient.queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v8 = (v3 + 8);
  v9(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  ConversationManagerClient.notification.getter();
  v10 = DarwinNotification.state.getter();

  if (v10 != 1 || ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8))(v11) & 1) != 0)
  {
    return;
  }

  v5 = objc_opt_self();
  v8 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  v2 = [v5 processInfo];
  if (one-time initialization token for identity != -1)
  {
    goto LABEL_34;
  }

LABEL_5:
  if ((static ConversationManagerInterface.identity & 0xFE) == 4)
  {

LABEL_8:
    v13 = [v5 v8[144]];
    if (specialized EntitlementValueProviding.isEntitledToUsePublicAPI.getter())
    {

LABEL_21:
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      v21 = v1;
      v22 = specialized XPCClient.connection.getter();
      v39 = partial apply for closure #2 in ConversationManagerClient.fetchInitialStateIfNeeded();
      v40 = v20;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v38 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      *(&v38 + 1) = &block_descriptor_29;
      v23 = _Block_copy(&aBlock);

      v24 = [v22 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v23);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
      if (swift_dynamicCast())
      {
        v41 = v36[1];
        closure #1 in ConversationManagerClient.fetchInitialStateIfNeeded()(&v41, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v14 = SecTaskCreateFromSelf(0);
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0x1B270FF70](0xD00000000000001CLL, 0x80000001AEE2ED50);
      v17 = SecTaskCopyValueForEntitlement(v15, v16, 0);

      if (v17)
      {
        *(&v38 + 1) = swift_getObjectType();

        *&aBlock = v17;
      }

      else
      {
        aBlock = 0u;
        v38 = 0u;
      }
    }

    else
    {
      aBlock = 0u;
      v38 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    if (!swift_dynamicCast() || (v18 = v42, v42 == 2))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      v18 = *(v19 + 1);
    }

    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  LOBYTE(aBlock) = static ConversationManagerInterface.identity;
  v12 = NSProcessInfo.isAllowedToConnect(to:)(&aBlock);

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_23:
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.client);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&aBlock = v29;
    *v28 = 136315138;
    LOBYTE(v41) = static ConversationManagerInterface.identity;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &aBlock);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1AEB26000, v26, v27, "ConversationManagerClient not requesting initial state since the sandbox does not have access to %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  if (one-time initialization token for runtimeIssues != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, static Log.runtimeIssues);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1AEB26000, v33, v34, "Using SharePlay requires that you add the Group Activities capability to your application's target.", v35, 2u);
    MEMORY[0x1B27120C0](v35, -1, -1);
  }
}

uint64_t closure #1 in ConversationManagerClient.fetchInitialStateIfNeeded()(id *a1, void *a2)
{
  v28 = *a1;
  if (one-time initialization token for client != -1)
  {
LABEL_16:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.client);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    type metadata accessor for ConversationManagerClient(0);
    v9 = v4;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v29);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v5, v6, "ConversationManagerClient requesting initial state %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0))(1);
  v14 = (*((*v13 & *v4) + 0x148))([v28 requestConversationContainersUpdate]);
  a2 = v14;
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = (a2[6] + ((v21 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];

      swift_unknownObjectRetain();
      v26 = MEMORY[0x1B270FF70](v24, v25);
      [v28 registerIdentifierForCustomEndpoint_];
      swift_unknownObjectRelease();

      if (!v18)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_12;
    }
  }
}

uint64_t closure #2 in ConversationManagerClient.fetchInitialStateIfNeeded()(void *a1, void *a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Error requesting initial state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  CurrentValueSubject.send(_:)();

  return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x1B0))(0);
}

uint64_t specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = specialized XPCClient.connection.getter();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = a5;
  v14 = _Block_copy(aBlock);

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v17;
    a1(&v19);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ConversationManagerClient.handleServerDisconnect()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[direct field offset for XPCClient.queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (one-time initialization token for client == -1)
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
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.client);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    ConversationManagerClient.notification.getter();
    v13 = DarwinNotification.state.getter();

    v22 = v13;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Server disconnected for ConversationManagerClient notification state %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  CurrentValueSubject.send(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF80]);
  Subject<>.send()();

  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v8) + 0x1B0))(0);
  ConversationManagerClient.notification.getter();
  v18 = DarwinNotification.state.getter();

  if (v18 == 1)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Re-fetching initial state as we are told there are changed conversations", v21, 2u);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    (*((*v17 & *v8) + 0x1F0))();
  }
}

uint64_t ConversationManagerClient.__ivar_destroyer()
{
  swift_unknownObjectRelease();

  v1 = direct field offset for ConversationManagerClient._activeSessionContainer;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id ConversationManagerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationManagerClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ConversationManagerClient.__ivar_destroyer(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = direct field offset for ConversationManagerClient._activeSessionContainer;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t ConversationManagerClient.advertiseGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManagerClient.advertiseGroupActivity(_:), 0, 0);
}

uint64_t ConversationManagerClient.advertiseGroupActivity(_:)()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = ConversationManagerClient.advertiseGroupActivity(_:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001ALL, 0x80000001AEE31750, partial apply for closure #1 in ConversationManagerClient.advertiseGroupActivity(_:), v1, v3);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = ConversationManagerClient.advertiseGroupActivity(_:);
  }

  else
  {

    v2 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationManagerClient.stopAdvertisingGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManagerClient.stopAdvertisingGroupActivity(_:), 0, 0);
}

uint64_t ConversationManagerClient.stopAdvertisingGroupActivity(_:)()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000020, 0x80000001AEE31770, partial apply for closure #1 in ConversationManagerClient.stopAdvertisingGroupActivity(_:), v1, v3);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  else
  {

    v2 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v26 = a3;
  v27 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *&a2[direct field offset for XPCClient.queue];
  (*(v14 + 16))(v16, v26, v13);
  (*(v10 + 16))(v12, v27, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v10 + 32))(v19 + v18, v12, v9);
  aBlock[4] = v31;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v32;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = v28;
  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v23 = v33;
  v24 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v22, v23, v20);
  _Block_release(v20);
  (*(v37 + 8))(v23, v24);
  (*(v34 + 8))(v22, v36);
}

uint64_t closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, a4, v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v13);
  v15[2] = a2;
  v15[3] = a3;
  return specialized XPCClient.withHost(body:errorHandler:)(a5, v15, destructiveProjectEnumData for ActivitySession.Errors, 0);
}

void closure #1 in closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v19 = a6;
  v20 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v11 + 16))(v13, a3, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v13, v10);
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = v19;
  v18 = _Block_copy(aBlock);

  [v14 *v20];
  _Block_release(v18);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationManagerClient.activitySessions.getter()
{
  v1 = *&v0[direct field offset for XPCClient.queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ConversationManagerClient.activitySessions.getter;
  *(v3 + 24) = v2;
  v6[4] = _sIg_Ieg_TRTA_0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_42;
  v4 = _Block_copy(v6);
  v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {

    CurrentValueSubject.value.getter();

    return v6[0];
  }

  return result;
}

uint64_t ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v8 + 16))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v8 + 32))(v11 + v10, v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
  swift_allocObject();
  v13 = v3;

  v16[1] = Future.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubClient.TopicCategory, Never> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR, MEMORY[0x1E695C038]);
  v14 = Publisher.eraseToAnyPublisher()();

  return v14;
}

uint64_t closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v31 = a6;
  v28 = a1;
  v29 = a5;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a3[direct field offset for XPCClient.queue];
  (*(v13 + 16))(v15, a4, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v28;
  v21 = v31;
  *v19 = v29;
  v19[1] = v21;
  v22 = (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v20;
  v22[1] = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_196;
  v24 = _Block_copy(aBlock);
  v25 = a3;

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v9, v24);
  _Block_release(v24);
  (*(v36 + 8))(v9, v26);
  (*(v33 + 8))(v11, v35);
}

void closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v61 = a6;
  v62 = a5;
  v65 = a4;
  v66 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v57[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57[-v15];

  CurrentValueSubject.value.getter();

  v68 = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:), v67, v69);
  v18 = v17;

  if (v18)
  {
    v19 = [v18 activitySessions];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, MEMORY[0x1E69E81B8]);
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  v21 = specialized _copyCollectionToContiguousArray<A>(_:)(v20);

  v22 = v21 < 0 || (v21 & 0x4000000000000000) != 0;
  if (v22 == 1)
  {
    goto LABEL_37;
  }

  v23 = *(v21 + 16);
  if (v23 == 1)
  {
LABEL_38:
    if (v22)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_40;
      }
    }

    else if (*(v21 + 16))
    {
LABEL_40:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1B2710B10](0, v21);
      }

      else
      {
        if (!*(v21 + 16))
        {
          __break(1u);
          return;
        }

        v53 = *(v21 + 32);
      }

      v14 = v53;
LABEL_44:

LABEL_45:
      v54 = [v14 activity];

      if (v54)
      {
        v54 = v54;
        if ([v54 isSystemActivity])
        {

          v55 = 2;
        }

        else
        {
          v56 = [v54 isScreenSharingActivity];

          if (v56)
          {
            v55 = 3;
          }

          else
          {
            v55 = 1;
          }
        }
      }

      else
      {
        v55 = 0;
      }

      goto LABEL_51;
    }

LABEL_49:

    goto LABEL_50;
  }

  while (v23)
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.client);
    (*(v8 + 2))(v14, a2, v7);
    v36 = v65;

    v37 = v8;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v64 = v7;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69 = v60;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001AEE319A0, &v69);
      *(v41 + 12) = 2080;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v59 = v38;
      v8 = v37;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v39;
      v44 = v43;
      v63 = *(v8 + 1);
      v63(v14, v7);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v69);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2080;
      *(v41 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v36, &v69);
      v46 = v59;
      _os_log_impl(&dword_1AEB26000, v59, v58, "ConversationManagerClient.%s found multiple activities for group=%s, filtering for topic=%s", v41, 0x20u);
      v47 = v60;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);

      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v63 = *(v37 + 1);
      v63(v14, v7);
      v8 = v37;
      if (v22)
      {
LABEL_22:
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
          goto LABEL_49;
        }

        goto LABEL_23;
      }
    }

    a2 = *(v21 + 16);
    if (!a2)
    {
      goto LABEL_49;
    }

LABEL_23:
    v16 = 0;
    v7 = (v8 + 8);
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x1B2710B10](v16, v21);
      }

      else
      {
        if (v16 >= *(v21 + 16))
        {
          goto LABEL_36;
        }

        v48 = *(v21 + 8 * v16 + 32);
      }

      v14 = v48;
      v8 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v49 = [v48 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = UUID.uuidString.getter();
      v52 = v51;
      v63(v11, v64);
      if (v50 == v66 && v52 == v65)
      {

        goto LABEL_45;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_44;
      }

      ++v16;
      if (v8 == a2)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v23 = __CocoaSet.count.getter();
    if (v23 == 1)
    {
      goto LABEL_38;
    }
  }

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.client);
  (*(v8 + 2))(v16, a2, v7);
  v25 = v7;
  v26 = v65;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v69 = v30;
    *v29 = 136315650;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001AEE319A0, &v69);
    *(v29 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 1))(v16, v25);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v69);

    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    *(v29 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v26, &v69);
    _os_log_impl(&dword_1AEB26000, v27, v28, "ConversationManagerClient.%s did not find matching PubSubClient.TopicCategory for group=%s name=%s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    (*(v8 + 1))(v16, v25);
  }

LABEL_50:
  v55 = 0;
  v54 = 0;
LABEL_51:
  LOWORD(v69) = v55;
  v62(&v69);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t ConversationManagerClient.onHostProcessDisconnected.getter()
{
  v1 = *(v0 + direct field offset for ConversationManagerClient.publishers + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v23 = a3;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v5[direct field offset for XPCClient.queue];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a1;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  v21 = v5;

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v10, v20);
  _Block_release(v20);
  (*(v29 + 8))(v10, v8);
  (*(v27 + 8))(v13, v28);
}

void closure #1 in closure #1 in ConversationManagerClient.addRemoteMembers(_:toConversationWithUUID:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80, MEMORY[0x1E69E81B8]);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v3 = UUID._bridgeToObjectiveC()().super.isa;
  [v1 addRemoteMembers:isa toConversationWithUUID:v3];
}

uint64_t ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v11 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v16 = type metadata accessor for AuthorizationRequestOverrides();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
    *v18 = 0;
    v18[1] = 0;
    v19 = &v17[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
    *v19 = 0;
    v19[1] = 0;
    v20 = &v17[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
    *v20 = 0;
    v20[1] = 0;
    v21 = &v17[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
    *v21 = 0;
    v21[1] = 0;
    v17[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = 0;
    v17[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
    v38.receiver = v17;
    v38.super_class = v16;
    v15 = objc_msgSendSuper2(&v38, sel_init);
  }

  *(v14 + 16) = v15;
  v22 = a1;
  ConversationManagerClient.notification.getter();
  v23 = DarwinNotification.state.getter();

  if (v23 == 1)
  {
    v33 = *&v4[direct field offset for XPCClient.queue];
    v24 = swift_allocObject();
    v24[2] = v4;
    v24[3] = v14;
    v24[4] = a2;
    v24[5] = a3;
    aBlock[4] = partial apply for closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_60;
    v25 = _Block_copy(aBlock);
    v26 = v4;

    static DispatchQoS.unspecified.getter();
    v36 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v13, v10, v25);
    _Block_release(v25);
    (*(v35 + 8))(v10, v8);
    (*(v11 + 8))(v13, v34);
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.client);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001AEE2E8A0, aBlock);
      _os_log_impl(&dword_1AEB26000, v28, v29, "Short circuiting prepare for activation since %s is reporting no active conversations.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B27120C0](v31, -1, -1);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }

    a2(0, 0);
  }
}

uint64_t closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a2 + 16;
  v8[3] = a3;
  v8[4] = a4;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  specialized XPCClient.withHost(body:errorHandler:)(partial apply for closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:), v8, partial apply for closure #2 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:), v6);
}

void closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_190;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v7 prepareForGroupActivityWithOverrides:v11 completionHandler:v10];
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(char a1, void *a2, uint64_t (*a3)(void, void *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    if (a2)
    {
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v10 + 10) = v16;
    _os_log_impl(&dword_1AEB26000, v8, v9, "ConversationManagerClient prepareForGroupActivity success: %{BOOL}d, error: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  return a3(a1 & 1, a2);
}

uint64_t closure #2 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(void *a1, uint64_t (*a2)(void, void))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Encountered connection error with prepareForGroupActivity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  return a2(0, 0);
}

Swift::Void __swiftcall ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:)(Swift::Bool _, Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[direct field offset for XPCClient.queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = _;
  *(v13 + 32) = countAndFlagsBits;
  *(v13 + 40) = object;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void closure #1 in ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = specialized XPCClient.connection.getter();
  aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_181;
  v8 = _Block_copy(aBlock);

  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
  if (swift_dynamicCast())
  {
    v10 = MEMORY[0x1B270FF70](a3, a4);
    [v11 setActivityAuthorization:a2 & 1 forBundleIdentifier:v10];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + direct field offset for XPCClient.queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v14[-16] = a1;
    *&v14[-8] = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = a1;
    specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:), &v14[-32], partial apply for closure #2 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:), v12, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6[4] = destructiveProjectEnumData for ActivitySession.Errors;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v6[3] = &block_descriptor_178;
  v5 = _Block_copy(v6);
  [v3 createActivitySessionWith:a2 onConversationWithUUID:isa completion:v5];
  _Block_release(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void closure #2 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:)(void *a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a2;
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, oslog, v7, "Error creating activitySession with request %@, error: %s", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), 0, 0);
}

uint64_t ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 64, 0, 0, 0xD000000000000033, 0x80000001AEE317A0, partial apply for closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), v2, v5);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  }

  else
  {

    v2 = ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 64));
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  v27 = a2;
  v32 = *&a2[direct field offset for XPCClient.queue];
  (*(v12 + 16))(v14, v28, v11);
  (*(v8 + 16))(v10, v29, v7);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = v30;
  *(v18 + 24) = v30;
  (*(v12 + 32))(v18 + v16, v14, v11);
  (*(v8 + 32))(v18 + v17, v10, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_166;
  v20 = _Block_copy(aBlock);
  v21 = v27;
  v22 = v19;
  v23 = v31;
  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v23, v24, v20);
  _Block_release(v20);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v23, v36);
}

uint64_t closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-v9];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  (*(v8 + 16))(&v15[-v9], a4, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v8 + 32))(v12 + v11, v10, v7);
  v13 = a2;
  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), v15, partial apply for closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), v12, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
}

void closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 16))(v10, a4, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_175;
  v15 = _Block_copy(aBlock);

  [v11 createActivitySessionWith:a2 onConversationWithUUID:isa completion:v15];
  _Block_release(v15);
}

uint64_t closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(void *a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a2;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *v10 = v5;
    *(v9 + 12) = 2080;
    v12 = v5;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Error creating activitySession with request %@, error: %s", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v19 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(int a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v20 = *&v2[direct field offset for XPCClient.queue];
  (*(v11 + 16))(&v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v10);
  v13 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v19;
  (*(v11 + 32))(v14 + v13, &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_83_0;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v15);
  _Block_release(v15);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

uint64_t closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11[16] = a2;
  v12 = a3;
  (*(v6 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v5);
  v8 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v6 + 32))(v9 + v8, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:), v11, partial apply for closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:), v9, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
}

void closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  (*(v7 + 16))(v9, a3, v6);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 67109634;
    *(v14 + 4) = a2 & 1;
    *(v14 + 8) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);

    *(v14 + 10) = v19;
    *(v14 + 18) = 2080;
    v24 = a1;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

    *(v14 + 20) = v23;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Error setting downlink muted: (%{BOOL}d) for remote participants in conversation: %s with error: %s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t ConversationManagerClient.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v24 = a3;
  v25 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&v5[direct field offset for XPCClient.queue];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a1;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = v25;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  v22 = a1;
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v10, v20);
  _Block_release(v20);
  (*(v30 + 8))(v10, v8);
  (*(v28 + 8))(v13, v29);
}

void closure #1 in closure #1 in ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(void **a1)
{
  v1 = *a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = UUID._bridgeToObjectiveC()().super.isa;
  [v1 includeMetricsReport:isa onConversationWithUUID:v3];
}

void closure #1 in ConversationManagerClient.registerEndpointProvider(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E7D40];
  if (*((*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  v13 = *((*v10 & *a1) + 0x158);

  swift_unknownObjectRetain();
  v14 = v13(aBlock);
  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v16;
  *v16 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *v16 = v25;
  v18 = v14(aBlock, 0);
  if ((*((*v10 & *a1) + 0x1A8))(v18))
  {
    v19 = specialized XPCClient.connection.getter();
    aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.registerEndpointProvider(_:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    aBlock[3] = &block_descriptor_235;
    v20 = _Block_copy(aBlock);

    v21 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
    if (swift_dynamicCast())
    {
      v22 = v25;
      v23 = MEMORY[0x1B270FF70](a2, a3);
      [v22 registerIdentifierForCustomEndpoint_];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in ConversationManagerClient.unregisterEndpointProvider(identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  if (*((*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v8 = v7;

    if (v8)
    {
      v9 = *((*v6 & *a1) + 0x158);

      v10 = v9(aBlock);
      specialized Dictionary.subscript.setter(0, 0, a2, a3);
      v11 = v10(aBlock, 0);
      if ((*((*v6 & *a1) + 0x1A8))(v11))
      {
        v12 = specialized XPCClient.connection.getter();
        aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.unregisterEndpointProvider(identifier:);
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        aBlock[3] = &block_descriptor_232;
        v13 = _Block_copy(aBlock);

        v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
        _Block_release(v13);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
        if (swift_dynamicCast())
        {
          v15 = MEMORY[0x1B270FF70](a2, a3);
          [v16 unregisterIdentifierForCustomEndpoint_];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
  }
}

uint64_t ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchQoS();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.client);

  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v11;
    v22 = v21;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v22 = 136315394;
    v40 = v20;
    v23 = a1;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v22 + 12) = 2080;
    v48 = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    v42 = v6;
    v24 = v18;
    v25 = String.init<A>(reflecting:)();
    v27 = a2;
    v28 = v16;
    v29 = v13;
    v30 = a5;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);
    v6 = v42;

    *(v22 + 14) = v31;
    a5 = v30;
    v13 = v29;
    v16 = v28;
    a2 = v27;
    _os_log_impl(&dword_1AEB26000, v19, v40, "Fetching endpoint: %s for activity session: %s", v22, 0x16u);
    v32 = v41;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v22;
    v11 = v43;
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {

    v23 = a1;
  }

  v43 = *&v6[direct field offset for XPCClient.queue];
  v34 = swift_allocObject();
  v34[2] = v6;
  v34[3] = v23;
  v34[4] = a2;
  v34[5] = v18;
  v34[6] = v44;
  v34[7] = a5;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_95;
  v35 = _Block_copy(aBlock);

  v36 = v18;
  v37 = v6;

  static DispatchQoS.unspecified.getter();
  v48 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v13, v35);
  _Block_release(v35);
  (*(v47 + 8))(v13, v11);
  (*(v45 + 8))(v16, v46);
}

uint64_t closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = specialized XPCClient.connection.getter();
  aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_154;
  v12 = _Block_copy(aBlock);

  v13 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v15;
    closure #1 in closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(&v17, a2, a3, a4, a5, a6);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = MEMORY[0x1B270FF70](a2, a3);
  v18 = [a4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v15, v12);
  v20 = [a4 activity];
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
  aBlock[3] = &block_descriptor_157;
  v21 = _Block_copy(aBlock);

  [v16 fetchEndpointWith:v17 activitySessionUUID:isa activity:v20 completion:v21];
  _Block_release(v21);
}

void closure #2 in closure #1 in ConversationManagerClient.addRemoteMembers(_:toConversationWithUUID:)(void *a1, const char *a2, ...)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t protocol witness for ConversationManagerClientProtocol.onHostProcessDisconnected.getter in conformance ConversationManagerClient()
{
  v1 = *(*v0 + direct field offset for ConversationManagerClient.publishers + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 64, 0, 0, 0xD000000000000033, 0x80000001AEE317A0, closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)partial apply, v2, v5);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient;
  }

  else
  {

    v2 = protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.advertiseGroupActivity(_:) in conformance ConversationManagerClient(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationManagerClientProtocol.advertiseGroupActivity(_:) in conformance ConversationManagerClient, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.advertiseGroupActivity(_:) in conformance ConversationManagerClient()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001ALL, 0x80000001AEE31750, closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)partial apply, v1, v3);
}

uint64_t protocol witness for ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:) in conformance ConversationManagerClient(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:) in conformance ConversationManagerClient, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:) in conformance ConversationManagerClient()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000020, 0x80000001AEE31770, closure #1 in ConversationManagerClient.stopAdvertisingGroupActivity(_:)partial apply, v1, v3);
}

uint64_t protocol witness for ActivitySessionContainerProvider.topicCategory(groupUUID:name:) in conformance ConversationManagerClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *v3;
  (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v8 + 32))(v12 + v11, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v13 = (v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
  swift_allocObject();
  v14 = v10;

  v17[1] = Future.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubClient.TopicCategory, Never> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR, MEMORY[0x1E695C038]);
  v15 = Publisher.eraseToAnyPublisher()();

  return v15;
}

Swift::Void __swiftcall ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(Swift::OpaquePointer conversationContainersByGroupUUID)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v1[direct field offset for XPCClient.queue];
  v10 = swift_allocObject();
  v10[2]._rawValue = v1;
  v10[3]._rawValue = conversationContainersByGroupUUID._rawValue;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_101;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t closure #1 in ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(uint64_t a1, uint64_t a2)
{

  CurrentValueSubject.send(_:)();
}

void ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v37 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.client);
  (*(v10 + 16))(v12, a3, v9);

  v14 = Logger.logObject.getter();
  v15 = a2;
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v14, v16);
  v34 = a3;
  v35 = v15;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = a5;
    v38 = v32;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v15, &v38);
    *(v18 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v38);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1AEB26000, v14, v16, "Requesting endpoint for identifier=%s activitySessionUUID=%s", v18, 0x16u);
    v23 = v32;
    swift_arrayDestroy();
    a5 = v33;
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {

    v24 = (*(v10 + 8))(v12, v9);
  }

  v25 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x148))(v24);
  if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v35), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 16 * v26 + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v30 = (*(v28 + 16))(v34, a4, ObjectType, v28);
    a5();
    swift_unknownObjectRelease();
  }

  else
  {

    (a5)(0);
  }
}

uint64_t specialized EntitlementValueProviding.isEntitledToUsePublicAPI.getter()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1B270FF70](0xD000000000000021, 0x80000001AEE2ED20);
    v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

    if (v3)
    {
      swift_getObjectType();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if ((swift_dynamicCast() & 1) == 0 || (v4 = v13, v13 == 2))
  {
    v4 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1B270FF70](0xD00000000000001ELL, 0x80000001AEE2ED00);
    v8 = SecTaskCopyValueForEntitlement(v6, v7, 0);

    if (v8)
    {
      swift_getObjectType();
    }
  }

  v9 = swift_dynamicCast();
  v10 = v13;
  if (!v9)
  {
    v10 = 2;
  }

  if (v4 & 1) != 0 || v10 != 2 && (v10)
  {
    return 1;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  return *v12;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized Set.subscript.getter(a1, a2, a3, a4, type metadata accessor for AddressableMember);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, type metadata accessor for ActivitySession);
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B27109F0](a1, a2, v11);
      type metadata accessor for NSObject(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for NSObject(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v19;
    v12 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B27109F0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v17;
    v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

_OWORD *specialized Dictionary.subscript.getter(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 16 * a2);

    swift_unknownObjectRetain();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(v2, v3, v4);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v8[2] = *(v2 + 24);
  v8[3] = v6;
  return specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(a1, v8, a2, 0, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
}