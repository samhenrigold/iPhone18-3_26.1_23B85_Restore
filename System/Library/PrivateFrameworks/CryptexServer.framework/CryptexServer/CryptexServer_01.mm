void Server.handle(serverEvent:)(uint64_t a1)
{
  v3 = MEMORY[0x22AA76FB0]();
  if (v3 == XPC_TYPE_CONNECTION.getter())
  {
    (*(*v1 + 208))(a1);
  }

  else
  {
    v4 = MEMORY[0x22AA76FB0](a1);
    if (v4 != XPC_TYPE_ERROR.getter())
    {
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v12 = v7;
        *v6 = 136446210;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v8 = String.init<A>(describing:)();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_226120000, oslog, v5, "XPC server got unexpected event: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x22AA76E00](v7, -1, -1);
        MEMORY[0x22AA76E00](v6, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }

    (*(*v1 + 200))(a1);
  }

  swift_unknownObjectRelease();
}

uint64_t Server.createEndpoint()()
{
  *(v1 + 16) = v0;
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Server.createEndpoint(), v3, v2);
}

{
  xpc_endpoint_create(*(*(v0 + 16) + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener));
  objc_allocWithZone(type metadata accessor for SendableXPCObj());
  v1 = SendableXPCObj.init(_:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::Void __swiftcall Server.startXPCServer()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = partial apply for closure #1 in Server.startXPCServer();
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v4[3] = &block_descriptor_18;
  v3 = _Block_copy(v4);

  xpc_connection_set_event_handler(v1, v3);
  _Block_release(v3);
  xpc_connection_set_target_queue(v1, *(v0 + OBJC_IVAR____TtC13CryptexServer6Server_queue));
  xpc_connection_activate(v1);
}

uint64_t closure #1 in Server.startXPCServer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    objc_allocWithZone(type metadata accessor for SendableXPCObj());
    swift_unknownObjectRetain();
    v4 = SendableXPCObj.init(_:)();
    v7[2] = MEMORY[0x28223BE20](v4);
    (*(*isEscapingClosureAtFileLocation + 128))();
    if (swift_task_isCurrentExecutor())
    {
      v5 = swift_allocObject();
      *(v5 + 16) = partial apply for closure #1 in closure #1 in Server.startXPCServer();
      *(v5 + 24) = v7;
      v6 = swift_allocObject();
      *(v6 + 16) = _sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTR13CryptexServer0D0C_ytTg5TA;
      *(v6 + 24) = v5;

      v8[0] = isEscapingClosureAtFileLocation;
      _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTR13CryptexServer0D0C_ytTG5TA(v8);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x22AA76680](0xD00000000000003FLL, 0x8000000226145F80);
    v7[6] = isEscapingClosureAtFileLocation;
    type metadata accessor for Server(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x22AA76680](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Server.start()()
{
  v1[2] = v0;
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v3;
  v1[4] = v2;

  return MEMORY[0x2822009F8](Server.start(), v3, v2);
}

{
  v3 = (*(**(*(v0 + 16) + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) + 128) + **(**(*(v0 + 16) + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) + 128));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = Server.start();

  return v3();
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);

    return MEMORY[0x2822009F8](Server.start(), v6, v7);
  }
}

{
  (*(**(v0 + 16) + 232))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Server.deinit()
{
  v1 = OBJC_IVAR____TtC13CryptexServer6Server_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator));
  return v0;
}

uint64_t Server.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13CryptexServer6Server_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t partial apply for closure #1 in Server.handle(request:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of InventoryManager.start();

  return closure #1 in Server.handle(request:)(a1, v5, v4);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in Server.handle(request:)(void *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of InventoryManager.start();

  return closure #1 in Server.handle(request:)(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata completion function for Server(uint64_t a1)
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

uint64_t dispatch thunk of Server.handle(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of InventoryManager.start();

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of InventoryManager.start();

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of InventoryManager.start();

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of InventoryManager.start();

  return v8(a1, a2);
}

uint64_t dispatch thunk of Server.handle(anyRequest:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of InventoryManager.start();

  return v8(a1, a2);
}

uint64_t dispatch thunk of Server.handle(message:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of InventoryManager.start();

  return v6(a1);
}

uint64_t dispatch thunk of Server.handle(clientEvent:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of InventoryManager.processAllInventories(closure:);

  return v6(a1);
}

uint64_t dispatch thunk of Server.createEndpoint()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of Server.createEndpoint();

  return v4();
}

uint64_t dispatch thunk of Server.createEndpoint()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of Server.start()()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of InventoryManager.processAllInventories(closure:);

  return v4();
}

uint64_t partial apply for closure #1 in closure #1 in Server.startXPCServer()(uint64_t a1)
{
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = SendableXPCObj.value.getter();
  return (*(*a1 + 216))(v2);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x22AA76830](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x22AA76830](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x22AA76830](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x22AA76830](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x22AA76830](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [NSFileHandle] and conformance [A], &_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_dispatch_queue_serial(0, &lazy cache variable for type metadata for NSFileHandle, 0x277CCA9F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA767E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in Server.handle(localClient:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of InventoryManager.start();

  return closure #1 in closure #1 in Server.handle(localClient:)(v4, v5, v6, v2, v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of InventoryManager.start();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t type metadata accessor for OS_dispatch_queue_serial(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static APFSAdapter.graft(dmg:at:)()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[1] = 0;
  result = FilePath.inode()();
  if (!v1)
  {
    v6[0] = result;
    FilePath.string.getter();
    v2 = String.utf8CString.getter();

    v3 = fsctl((v2 + 32), 0x80104A63uLL, v6, 0);

    if (v3)
    {
      v4 = MEMORY[0x22AA76470](result);
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_allocError();
      *v5 = v4;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t static APFSAdapter.ungraft(_:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  FilePath.string.getter();
  v1 = String.utf8CString.getter();

  v2 = fsctl((v1 + 32), 0x80084A64uLL, v6, 0);

  if (v2)
  {
    v4 = MEMORY[0x22AA76470](result);
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_allocError();
    *v5 = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t static APFSAdapter.allDisksGrafted(under:logger:)(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v94[2] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for CryptexError();
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v81 = v70 - v7;
  MEMORY[0x28223BE20](v6);
  v88 = v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v70 - v13;
  v15 = type metadata accessor for FilePath();
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v93, 0x878uLL);
  FilePath.string.getter();
  v18 = String.utf8CString.getter();

  v19 = statfs((v18 + 32), &v93);

  if (v19 || (v89 = v17, v85 = v15, v86 = v14, v87 = v11, v94[0] = 0, v94[1] = 0, FilePath.string.getter(), v18 = String.utf8CString.getter(), , v21 = fsctl((v18 + 32), 0xC0104A66uLL, v94, 0), v20 = , v21))
  {
    MEMORY[0x22AA76470](v20);
    v22 = POSIXErrorCode.init(rawValue:)();
    *v5 = v22;
    v5[4] = BYTE4(v22) & 1;
    v23 = v91;
    v24 = v92;
    (*(v91 + 13))(v5, *MEMORY[0x277D02D98], v92);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v23 + 1))(v5, v24);
    swift_willThrow();
  }

  else
  {
    v26 = LOWORD(v94[0]);
    v27 = v91;
    if (LOWORD(v94[0]))
    {
      type metadata accessor for fsioc_graft_info_t();
      v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v28 + 16) = v26;
      bzero((v28 + 32), 40 * v26);
      v29 = 0;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      v29 = *(MEMORY[0x277D84F90] + 16) > 0x333333333333333uLL;
    }

    v31 = v89;
    v30 = v90;
    v32 = v80;
    if (v29)
    {
      __break(1u);
    }

    closure #1 in static APFSAdapter.allDisksGrafted(under:logger:)(v28 + 32, v94);
    if (!v30)
    {
      v70[0] = v28;
      v70[1] = 0;
      v34 = *(v28 + 16);
      if (v34)
      {
        v78 = (v32 + 16);
        v79 = (v32 + 56);
        v75 = *MEMORY[0x277D02D38];
        v74 = (v27 + 104);
        v76 = (v27 + 8);
        v77 = (v32 + 8);
        v35 = (v28 + 40);
        v18 = MEMORY[0x277D84F90];
        *&v33 = 138412290;
        v71 = v33;
        v36 = v88;
        v73 = (v27 + 16);
        do
        {
          v90 = v34;
          v39 = v31;
          v41 = *(v35 - 1);
          v40 = *v35;
          v42 = swift_slowAlloc();
          v43 = fsgetpath(v42, 0x400uLL, &v93.f_fsid, v40);
          v91 = v42;
          if (v43 == -1)
          {
            v80 = v18;
            MEMORY[0x22AA76470](-1);
            v52 = POSIXErrorCode.init(rawValue:)();
            *v36 = v52;
            v36[4] = BYTE4(v52) & 1;
            v53 = v92;
            (*v74)(v36, v75, v92);
            v54 = *v73;
            v55 = v81;
            (*v73)(v81, v36, v53);
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = v55;
              v59 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *v59 = v71;
              _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
              swift_allocError();
              v54(v60, v58, v92);
              v61 = _swift_stdlib_bridgeErrorToNSError();
              v62 = *v76;
              (*v76)(v58, v92);
              *(v59 + 4) = v61;
              v63 = v72;
              *v72 = v61;
              v36 = v88;
              _os_log_impl(&dword_226120000, v56, v57, "fsgetpath(graftPoint): %@", v59, 0xCu);
              outlined destroy of FilePath?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x22AA76E00](v63, -1, -1);
              v64 = v59;
              v31 = v89;
              MEMORY[0x22AA76E00](v64, -1, -1);

              v62(v36, v92);
              v18 = v80;
            }

            else
            {

              v37 = *v76;
              v38 = v92;
              (*v76)(v55, v92);
              v37(v36, v38);
              v18 = v80;
              v31 = v39;
            }

            MEMORY[0x22AA76E00](v91, -1, -1);
          }

          else
          {
            v44 = v18;
            v45 = String.init(cString:)();
            MEMORY[0x22AA76600](v45);
            v46 = swift_slowAlloc();
            if (fsgetpath(v46, 0x400uLL, &v93.f_fsid, v41) == -1)
            {
              v49 = 1;
              v50 = v84;
              v48 = v86;
            }

            else
            {
              v47 = String.init(cString:)();
              v48 = v86;
              MEMORY[0x22AA76600](v47);
              v49 = 0;
              v50 = v84;
            }

            v51 = v87;
            v65 = v85;
            (*v79)(v48, v49, 1, v85);
            v66 = *(v50 + 48);
            (*v78)(v51, v89, v65);
            outlined init with copy of FilePath?(v48, v51 + v66);
            v18 = v44;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
            }

            v67 = v91;
            v69 = *(v18 + 16);
            v68 = *(v18 + 24);
            v31 = v89;
            if (v69 >= v68 >> 1)
            {
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v18);
            }

            *(v18 + 16) = v69 + 1;
            outlined init with take of (graftPoint: FilePath, dmgPath: FilePath?)(v87, v18 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v69);
            MEMORY[0x22AA76E00](v46, -1, -1);
            outlined destroy of FilePath?(v86, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            MEMORY[0x22AA76E00](v67, -1, -1);
            (*v77)(v31, v85);
            v36 = v88;
          }

          v35 += 5;
          v34 = v90 - 1;
        }

        while (v90 != 1);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }
    }
  }

  return v18;
}

uint64_t closure #1 in static APFSAdapter.allDisksGrafted(under:logger:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[1] = a1;
  FilePath.string.getter();
  v8 = String.utf8CString.getter();

  v9 = fsctl((v8 + 32), 0xC0104A66uLL, a2, 0);

  if (v9)
  {
    MEMORY[0x22AA76470](result);
    v11 = POSIXErrorCode.init(rawValue:)();
    *v7 = v11;
    v7[4] = BYTE4(v11) & 1;
    (*(v5 + 104))(v7, *MEMORY[0x277D02D98], v4);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v7, v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for fsioc_graft_info_t()
{
  if (!lazy cache variable for type metadata for fsioc_graft_info_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for fsioc_graft_info_t);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for fsioc_graft_info_t(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for fsioc_graft_info_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for fsioc_graft_info_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t FilePath.init(_:)()
{
  return MEMORY[0x28211E6C0]();
}

{
  return MEMORY[0x2821FFA88]();
}

uint64_t FilePath.appending(_:)()
{
  return MEMORY[0x282158FF8]();
}

{
  return MEMORY[0x2821FFA68]();
}

{
  return MEMORY[0x2821FFA70]();
}