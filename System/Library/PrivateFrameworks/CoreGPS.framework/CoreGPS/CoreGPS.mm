uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t CoreGPSDevice.sendRequest(request:)(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 88))();
  if (result)
  {
    dispatch thunk of GPSXPCClient.send(_:)();
  }

  return result;
}

uint64_t GPSXPCClient.send(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v33 - v11;
  v13 = *(v3 + 16);
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in GPSXPCClient.send(_:);
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  v15 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6GPSXPC14GPSXPCProtocol_pMd, &_s6GPSXPC14GPSXPCProtocol_pMR);
  if (swift_dynamicCast())
  {
    v16 = v33[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v16 onData_];

    v18 = vxpclog.unsafeMutableAddressor();
    outlined init with copy of Logger?(v18, v12);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      return outlined destroy of Logger?(v12, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
    }

    else
    {
      outlined copy of Data._Representation(a1, a2);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      outlined consume of Data._Representation(a1, a2);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136446210;
        v30 = Data.description.getter();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_22D06E000, v26, v27, "client,sent %{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2318C7D60](v29, -1, -1);
        MEMORY[0x2318C7D60](v28, -1, -1);
      }

      swift_unknownObjectRelease();

      return (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v20 = xpclog.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v20, v6);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v13;
      *v24 = v13;
      v25 = v13;
      _os_log_impl(&dword_22D06E000, v21, v22, "remoteObjectProxyWithErrorHandler failed%{public}@", v23, 0xCu);
      outlined destroy of Logger?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v24, -1, -1);
      MEMORY[0x2318C7D60](v23, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
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

uint64_t sub_22D06FAFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D06FB34()
{
  MEMORY[0x2318C7D90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t key path getter for CoreGPSDevice._client : CoreGPSDevice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CoreGPSDevice._client : CoreGPSDevice(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t CoreGPSDevice._client.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t CoreGPSDevice.__allocating_init(queue:callbackIndication:callbackInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  CoreGPSDevice.init(queue:callbackIndication:callbackInterrupt:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CoreGPSDevice.init(queue:callbackIndication:callbackInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  *(v6 + 16) = 0;
  if (!isAvailable()())
  {
    v16 = gpslog.unsafeMutableAddressor();
    (*(v10 + 16))(v15, v16, v9);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = a4;
      v20 = a5;
      v21 = v19;
      *v19 = 0;
      _os_log_impl(&dword_22D06E000, v17, v18, "isAvailable() returned false. Please check this function before using CoreGPS. But inited anyway!!!", v19, 2u);
      v22 = v21;
      a5 = v20;
      a4 = v30;
      MEMORY[0x2318C7D60](v22, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
  }

  v23 = gpslog.unsafeMutableAddressor();
  (*(v10 + 16))(v13, v23, v9);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22D06E000, v24, v25, "CoreGPSDevice,init", v26, 2u);
    MEMORY[0x2318C7D60](v26, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  type metadata accessor for GPSXPCClient();
  swift_allocObject();
  v27 = GPSXPCClient.init(queue:onData:onInterrupt:)(v31, v32, v33, a4, a5);
  swift_beginAccess();
  *(v6 + 16) = v27;

  return v6;
}

uint64_t CoreGPSDevice.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t one-time initialization function for gpslog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, gpslog);
  __swift_project_value_buffer(v0, gpslog);
  return Logger.init(subsystem:category:)();
}

uint64_t gpslog.unsafeMutableAddressor()
{
  if (one-time initialization token for gpslog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, gpslog);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Bool __swiftcall isAvailable()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x2318C7960](0xD000000000000011, 0x800000022D074F80);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v25 = 0u;
    v26 = 0u;
    outlined destroy of Any?(&v25);
    v25 = 0u;
    v26 = 0u;
LABEL_24:
    outlined destroy of Any?(&v25);
    goto LABEL_25;
  }

  v3 = v2;
  v4 = MEMORY[0x2318C7960](0xD000000000000015, 0x800000022D074FA0);
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v23;
      if (one-time initialization token for gpslog != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, gpslog);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67240192;
        *(v10 + 4) = v23;
        _os_log_impl(&dword_22D06E000, v8, v9, "CoreGPS,forceAvailable,%{BOOL,public}d", v10, 8u);
        MEMORY[0x2318C7D60](v10, -1, -1);
      }

      return v6;
    }
  }

  else
  {
    outlined destroy of Any?(&v25);
  }

  v11 = v3;
  v12 = MEMORY[0x2318C7960](0x636167654C657355, 0xEF63705862694C79);
  v13 = [v11 objectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    if (one-time initialization token for gpslog != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, gpslog);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240192;
      *(v17 + 4) = v23;
      _os_log_impl(&dword_22D06E000, v15, v16, "CoreGPS,useLegacyLibXpc,%{BOOL,public}d", v17, 8u);
      MEMORY[0x2318C7D60](v17, -1, -1);
    }

    return v23 ^ 1;
  }

LABEL_25:
  if (one-time initialization token for gpslog != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, gpslog);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    v6 = 1;
    *(v21 + 4) = 1;
    _os_log_impl(&dword_22D06E000, v19, v20, "CoreGPS,isAvailable,default,%{BOOL,public}d", v21, 8u);
    MEMORY[0x2318C7D60](v21, -1, -1);
  }

  else
  {

    return 1;
  }

  return v6;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

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

uint64_t GPSXPCClient._callbackData.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t GPSXPCClient._callbackInterrupt.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GPSXPCClient.__allocating_init(queue:onData:onInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  GPSXPCClient.init(queue:onData:onInterrupt:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t GPSXPCClient.init(queue:onData:onInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v53 - v16;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for ALServiceDelegate();
  v53[1] = a3;

  v53[3] = a5;

  v18 = static ALServiceDelegate.serviceName()();
  v20 = v19;
  v21 = xpclog.unsafeMutableAddressor();
  v22 = *(v13 + 16);
  v55 = v21;
  v56 = v13 + 16;
  v54 = v22;
  (v22)(v17);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  v25 = os_log_type_enabled(v23, v24);
  v53[2] = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v53[0] = a1;
    v27 = v12;
    v28 = v13;
    v29 = v26;
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136446210;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);
    _os_log_impl(&dword_22D06E000, v23, v24, "Try connecting xpc service %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x2318C7D60](v30, -1, -1);
    MEMORY[0x2318C7D60](v29, -1, -1);

    v31 = v28;
    v12 = v27;
    a1 = v53[0];
  }

  else
  {

    v31 = v13;
  }

  v32 = *(v31 + 8);
  v32(v17, v12);
  v33 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v34 = MEMORY[0x2318C7960](v18, v20);

  v35 = [v33 initWithMachServiceName:v34 options:0];

  *(v6 + 16) = v35;
  [v35 setExportedObject_];
  v36 = *(v6 + 16);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 interfaceWithProtocol_];
  [v38 setExportedInterface_];

  v40 = *(v6 + 16);
  v41 = [v37 interfaceWithProtocol_];
  [v40 setRemoteObjectInterface_];

  v42 = *(v6 + 16);
  v62 = partial apply for implicit closure #3 in implicit closure #2 in GPSXPCClient.init(queue:onData:onInterrupt:);
  v63 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = thunk for @escaping @callee_guaranteed () -> ();
  v61 = &block_descriptor;
  v43 = _Block_copy(&aBlock);
  v44 = v42;

  [v44 setInterruptionHandler_];
  _Block_release(v43);

  v45 = *(v6 + 16);
  v62 = partial apply for implicit closure #5 in implicit closure #4 in GPSXPCClient.init(queue:onData:onInterrupt:);
  v63 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = thunk for @escaping @callee_guaranteed () -> ();
  v61 = &block_descriptor_3;
  v46 = _Block_copy(&aBlock);

  v47 = v45;

  [v47 setInvalidationHandler_];
  _Block_release(v46);

  [*(v6 + 16) _setQueue_];
  v48 = v57;
  [*(v6 + 16) activate];
  v54(v48, v55, v12);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67240192;
    *(v51 + 4) = [*(v6 + 16) processIdentifier];

    _os_log_impl(&dword_22D06E000, v49, v50, "Connected to xpc service pid: %{public}d", v51, 8u);
    MEMORY[0x2318C7D60](v51, -1, -1);
  }

  else
  {
  }

  v32(v48, v12);
  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t GPSXPCClient.onData(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = vxpclog.unsafeMutableAddressor();
  outlined init with copy of Logger?(v9, v8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    outlined destroy of Logger?(v8, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    outlined consume of Data._Representation(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = v13;
      v15 = v14;
      v23 = swift_slowAlloc();
      v25 = v23;
      *v15 = 136315138;
      v16 = Data.description.getter();
      v18 = v3;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v25);

      *(v15 + 4) = v19;
      v3 = v18;
      _os_log_impl(&dword_22D06E000, v12, v24, "client,receive %s", v15, 0xCu);
      v20 = v23;
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2318C7D60](v20, -1, -1);
      MEMORY[0x2318C7D60](v15, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  return (*(v3 + 24))(a1, a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t GPSXPCClient.interruptionHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = xpclog.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = *(v1 + 16);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&dword_22D06E000, v7, v8, "client,interruptionHandler %{public}@", v9, 0xCu);
    outlined destroy of Logger?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v10, -1, -1);
    MEMORY[0x2318C7D60](v9, -1, -1);
  }

  v13 = (*(v3 + 8))(v5, v2);
  return (*(v1 + 40))(v13);
}

uint64_t GPSXPCClient.invalidationHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = xpclog.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = *(v1 + 16);
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 1024;
    v12 = [v11 processIdentifier];

    *(v9 + 14) = v12;

    _os_log_impl(&dword_22D06E000, v7, v8, "client,invalidationHandler %@, pid %d exits", v9, 0x12u);
    outlined destroy of Logger?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v10, -1, -1);
    MEMORY[0x2318C7D60](v9, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t GPSXPCClient.proxyErrorHandler(error:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = xpclog.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22D06E000, v8, v9, "proxyErrorHandler: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2318C7D60](v11, -1, -1);
    MEMORY[0x2318C7D60](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t GPSXPCClient.deinit()
{

  return v0;
}

uint64_t GPSXPCClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined destroy of Logger?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t one-time initialization function for xpc()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GPSXPCLogger.xpc);
  __swift_project_value_buffer(v0, static GPSXPCLogger.xpc);
  return Logger.init(subsystem:category:)();
}

uint64_t static GPSXPCLogger.xpc.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpc != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static GPSXPCLogger.xpc);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for xpclog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, xpclog);
  v1 = __swift_project_value_buffer(v0, xpclog);
  if (one-time initialization token for xpc != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static GPSXPCLogger.xpc);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GPSXPCLogger.xpc.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t xpclog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, xpclog);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for vxpclog()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  __swift_allocate_value_buffer(v0, vxpclog);
  v1 = __swift_project_value_buffer(v0, vxpclog);
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t vxpclog.unsafeMutableAddressor()
{
  if (one-time initialization token for vxpclog != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);

  return __swift_project_value_buffer(v0, vxpclog);
}

uint64_t vxpclog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for vxpclog != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = __swift_project_value_buffer(v2, vxpclog);
  return outlined init with copy of Logger?(v3, a1, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
}

void NSXPCConnection.onData(_:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in NSXPCConnection.onData(_:);
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_0;
  v2 = _Block_copy(aBlock);
  v3 = v0;

  v4 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6GPSXPC14GPSXPCProtocol_pMd, &_s6GPSXPC14GPSXPCProtocol_pMR);
  if (swift_dynamicCast())
  {
    v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v9 onData_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, xpclog);
    v5.super.isa = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5.super.isa, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D06E000, v5.super.isa, v7, "Invalid proxy", v8, 2u);
      MEMORY[0x2318C7D60](v8, -1, -1);
    }
  }
}

void partial apply for implicit closure #2 in implicit closure #1 in NSXPCConnection.onData(_:)(void *a1)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, xpclog);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22D06E000, oslog, v4, "proxyErrorHandler: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2318C7D60](v6, -1, -1);
    MEMORY[0x2318C7D60](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t ALServiceDelegate._dataService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  return outlined init with copy of GPSXPCDataService(v1 + v3, a1);
}

uint64_t ALServiceDelegate._dataService.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of GPSXPCDataService(a1, v1 + v3);
  return swift_endAccess();
}

char *ALServiceDelegate.init(queue:dataService:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue] = a1;
  outlined init with copy of GPSXPCDataService(a2, &v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService]);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = a1;
  v7 = MEMORY[0x2318C7960](0x6C7070612E6D6F63, 0xEE00647370672E65);
  v8 = [v5 initWithMachServiceName_];

  *&v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener] = v8;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for ALServiceDelegate();
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener;
  v11 = *&v9[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener];
  v12 = *&v9[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue];
  v13 = v9;
  [v11 _setQueue_];
  [*&v9[v10] setDelegate_];
  [*&v9[v10] activate];
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, xpclog);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136446210;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C7070612E6D6F63, 0xEE00647370672E65, &v20);
    _os_log_impl(&dword_22D06E000, v15, v16, "serviceName %{public}s started", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2318C7D60](v18, -1, -1);
    MEMORY[0x2318C7D60](v17, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

Swift::Bool __swiftcall ALServiceDelegate.checkEntitlement(_:)(NSXPCConnection a1)
{
  v2 = MEMORY[0x2318C7960](0x6C7070612E6D6F63, 0xEE00647370672E65);
  v3 = [(objc_class *)a1.super.isa valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  outlined init with copy of Logger?(v17, &v15, &_sypSgMd, &_sypSgMR);
  if (!*(&v16 + 1))
  {
    outlined destroy of Logger?(&v15, &_sypSgMd, &_sypSgMR);
LABEL_12:
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, xpclog);
    v5 = a1.super.isa;
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = [(objc_class *)v5 processIdentifier];

      _os_log_impl(&dword_22D06E000, v6, v11, "Entitlement check failed for pid:%{public}d, connection rejected", v12, 8u);
      MEMORY[0x2318C7D60](v12, -1, -1);
      v9 = 0;
      goto LABEL_18;
    }

    v9 = 0;
LABEL_17:
    v6 = v5;
    goto LABEL_18;
  }

  if (!swift_dynamicCast() || (v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    v9 = 1;
    goto LABEL_17;
  }

  v8 = swift_slowAlloc();
  *v8 = 67240192;
  *(v8 + 4) = [(objc_class *)v5 processIdentifier];

  _os_log_impl(&dword_22D06E000, v6, v7, "Entitlement check passed for pid: %{public}d", v8, 8u);
  MEMORY[0x2318C7D60](v8, -1, -1);
  v9 = 1;
LABEL_18:

  outlined destroy of Logger?(v17, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t ALServiceDelegate.onData(_:)(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 24))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

Swift::Void __swiftcall ALServiceDelegate.onInterrupt()()
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, xpclog);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22D06E000, oslog, v1, "service,onInterrupt", v2, 2u);
    MEMORY[0x2318C7D60](v2, -1, -1);
  }
}

void ALServiceDelegate.interruptionHandler(_:)(void *a1, const char *a2, ...)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&dword_22D06E000, v6, v7, a2, v8, 0xCu);
    outlined destroy of Logger?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v9, -1, -1);
    MEMORY[0x2318C7D60](v8, -1, -1);
  }

  ALServiceDelegate.disconnectHandler(_:)(a1);
}

void ALServiceDelegate.disconnectHandler(_:)(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = one-time initialization token for xpclog;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, xpclog);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&dword_22D06E000, v8, v9, "service,disconnectHandler,%{public}@", v10, 0xCu);
      outlined destroy of Logger?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v11, -1, -1);
      MEMORY[0x2318C7D60](v10, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v14 + 16))(v7, v13, v14);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, xpclog);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = 0;
      *v18 = 0;
      _os_log_impl(&dword_22D06E000, oslog, v16, "service,disconnectHandler,%{public}@", v17, 0xCu);
      outlined destroy of Logger?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v18, -1, -1);
      MEMORY[0x2318C7D60](v17, -1, -1);
    }
  }
}

id ALServiceDelegate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ALServiceDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined init with copy of GPSXPCDataService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of GPSXPCDataService(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67240450;
    *(v8 + 4) = [v5 processIdentifier];

    *(v8 + 8) = 2114;
    *(v8 + 10) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22D06E000, v6, v7, "New XPC Connection from process:%{public}d, details:(%{public}@)", v8, 0x12u);
    outlined destroy of Logger?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v9, -1, -1);
    MEMORY[0x2318C7D60](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v5);
  if (v12)
  {
    [v5 setExportedObject:v2];
    v13 = objc_opt_self();
    v14 = [v13 interfaceWithProtocol_];
    [v5 setExportedInterface:v14];

    v15 = [v13 interfaceWithProtocol_];
    [v5 setRemoteObjectInterface:v15];

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v16;
    v37 = partial apply for closure #1 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:);
    v38 = v17;
    v33 = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed () -> ();
    v36 = &block_descriptor_14;
    v18 = _Block_copy(&v33);
    v19 = v2;

    [v5 setInterruptionHandler:v18];
    _Block_release(v18);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v37 = partial apply for closure #2 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:);
    v38 = v21;
    v33 = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed () -> ();
    v36 = &block_descriptor_21;
    v22 = _Block_copy(&v33);
    v23 = v19;

    [v5 setInvalidationHandler:v22];
    _Block_release(v22);
    [v5 _setQueue:*(v23 + OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue)];
    [v5 activate];
    v24 = v5;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 67240450;
      *(v27 + 4) = [v24 processIdentifier];

      *(v27 + 8) = 2114;
      *(v27 + 10) = v24;
      *v28 = v5;
      v29 = v24;
      _os_log_impl(&dword_22D06E000, v25, v26, "Activated Connection from process:%{public}d, details:(%{public}@)", v27, 0x12u);
      outlined destroy of Logger?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v28, -1, -1);
      MEMORY[0x2318C7D60](v27, -1, -1);
    }

    else
    {

      v25 = v24;
    }

    (*((*v11 & *v23) + 0x68))(&v33);
    v30 = v36;
    v31 = v37;
    __swift_project_boxed_opaque_existential_1(&v33, v36);
    (*(v31 + 1))(v24, v30, v31);
    __swift_destroy_boxed_opaque_existential_0(&v33);
  }

  return v12 & 1;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void partial apply for closure #1 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}