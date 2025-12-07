void specialized static SKALocalStatusServer.replyToWakeEvent(event:)(void *a1)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]) && xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (xpc_dictionary_create_reply(a1))
    {
      xpc_dictionary_send_reply();

      swift_unknownObjectRelease();
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, log);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v10 = v5;
        *v4 = 136315138;
        v6 = String.init(cString:)();
        v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_220099000, oslog, v3, "Failed to reply to Rapport wake event: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x223D77FF0](v5, -1, -1);
        MEMORY[0x223D77FF0](v4, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo15SKPresentDeviceC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    v5 = lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject();
    result = MEMORY[0x223D76DF0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D77050](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void specialized SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setDispatchQueue_];
  [v4 setControlFlags_];
  if (*(v1 + OBJC_IVAR___SKALocalStatusServer_recentPendingStatus) == 1)
  {
    [v4 setControlFlags_];
  }

  [v4 setBleScreenOffScanRate_];
  [v4 setBleScreenOffRescanInterval_];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v5, 0);
    v7 = specialized Sequence._copySequenceContents(initializing:)(&aBlock, v6 + 4, v5, a1);
    v8 = aBlock;

    sub_2200A4D24(v8);
    if (v7 != v5)
    {
      __break(1u);
      return;
    }

    v2 = v1;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setDeviceFilter_];

  v33 = partial apply for closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
  v34 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v32 = &block_descriptor_104;
  v10 = _Block_copy(&aBlock);

  [v4 setDeviceFoundHandler_];
  _Block_release(v10);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, log);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136315138;
    v16 = Set.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_220099000, v12, v13, "Deliver Statuses START {idsIdentifier: %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D77FF0](v15, -1, -1);
    MEMORY[0x223D77FF0](v14, -1, -1);
  }

  v19 = (v2 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  v20 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  v21 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask + 8);
  v22 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask + 16);
  v23 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask + 24);
  *v19 = v4;
  v19[1] = a1;
  v19[2] = 0;
  v19[3] = 0;

  v24 = v4;
  outlined consume of SKALocalStatusServer.BrowseTask?(v20, v21, v22, v23);
  if (*(a1 + 16))
  {
    v33 = partial apply for closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
    v34 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v32 = &block_descriptor_107;
    v25 = _Block_copy(&aBlock);

    [v24 activateWithCompletion_];

    _Block_release(v25);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_220099000, v26, v27, "CompanionLink activate delivery SKIP - no IDS identifiers", v28, 2u);
      MEMORY[0x223D77FF0](v28, -1, -1);
    }
  }
}

void specialized SKALocalStatusServer.service(_:devicesChanged:)(uint64_t a1)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = v5;

    v7 = MEMORY[0x223D76C00](a1, MEMORY[0x277D84F70] + 8);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_220099000, oslog, v3, "IDS devices changes: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D77FF0](v6, -1, -1);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  else
  {
  }
}

void outlined consume of SKALocalStatusServer.BrowseTask?(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SKALocalStatusServer(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SKALocalStatusServer.BrowseTask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for SKALocalStatusServer.BrowseTask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for SKALocalStatusServer.FailedDelivery(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for SKALocalStatusServer.FailedDelivery.ID(uint64_t a1)
{
  type metadata accessor for LSKKey<Data>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for LSKKey<Data>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LSKKey<Data>)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    v1 = type metadata accessor for LSKKey();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LSKKey<Data>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t closure #1 in SKALocalStatusServer.objcShutdown()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKALocalStatusServer.objcShutdown()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMd, &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](a2, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of SKALocalStatusServer.FailedDelivery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

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

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v9, a1, v7, v8, v1 + v5, v10);
}

double outlined copy of SKALocalStatusServer.BrowseTask?(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = a4;
    v6 = a1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void partial apply for closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(a1, a2, a3);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of SKALocalStatusServer.FailedDelivery(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(a1, v4, v5, v7, v6);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #5 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>()
{
  result = lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>;
  if (!lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>);
  }

  return result;
}

uint64_t objectdestroy_138Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #3 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #2 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #2 in SKALocalStatusServer.init(idsDeviceProvider:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t SKACALogger.SKACAEvent.description.getter(uint64_t a1)
{
  result = 0xD000000000000022;
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        return 0xD000000000000029;
      case 3:
        return 0xD000000000000032;
      case 4:
        return 0xD000000000000030;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
    return 0xD000000000000026;
  }

  if (a1 != 1)
  {
LABEL_11:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKACALogger.SKACAEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKACALogger.SKACAEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKACALogger.SKACALogKey@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKACALogger.SKACALogKey.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SKACALogger.SKACALogToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SKACALogger.SKACALogToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKACALogger.SKACALogToken(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static SKACALogger.start(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SKACALogger.SKACALogToken(0);
  v7 = objc_allocWithZone(v6);
  static Date.now.getter();
  *&v7[OBJC_IVAR___SKACALogToken_event] = a1;
  v8 = &v7[OBJC_IVAR___SKACALogToken_client];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t static SKACALogger.logSuccess(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(a1 + OBJC_IVAR___SKACALogToken_event);
  v6 = *(a1 + OBJC_IVAR___SKACALogToken_client);
  v7 = *(a1 + OBJC_IVAR___SKACALogToken_client + 8);
  v8 = OBJC_IVAR___SKACALogToken_startTime;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, a1 + v8, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v5, v6, v7, v4);
  return outlined destroy of UUID?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.logFailure(with:for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a2 + OBJC_IVAR___SKACALogToken_event);
  v8 = *(a2 + OBJC_IVAR___SKACALogToken_client);
  v9 = *(a2 + OBJC_IVAR___SKACALogToken_client + 8);
  v10 = OBJC_IVAR___SKACALogToken_startTime;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a2 + v10, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(a1, v7, v8, v9, v6);
  return outlined destroy of UUID?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.logSuccess(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(a1, a2, a3, v8);
  return outlined destroy of UUID?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.logFailure(with:event:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(a1, a2, a3, a4, v10);
  return outlined destroy of UUID?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKACALogger.log(_:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = MEMORY[0x277D83808];
  v8[5] = MEMORY[0x277D837D8];
  v8[0] = a2;
  v8[1] = a3;

  specialized Dictionary.subscript.setter(v8, 0);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);
  v6 = v5;

  specialized static SKACALogger.logMetadata(_:for:)(v6, a1);
}

id SKACALogger.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SKACALogger.init()()
{
  swift_defaultActor_initialize();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKACALogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t SKACALogger.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  outlined init with copy of (String, Sendable)(a1 + 32, &v38, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
  v7 = v38;
  v40 = v38;
  outlined init with take of Any(v39, v37);
  v8 = *a3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v19;
  if (v15)
  {
LABEL_9:
    v17 = swift_allocError();
    swift_willThrow();

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v37);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + 8 * v9) = v7;
  outlined init with take of Any(v37, (v20[7] + 32 * v9));
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v13)
  {
    v20[2] = v22;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v23 = a1 + 72;
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      outlined init with copy of (String, Sendable)(v23, &v38, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
      v25 = v38;
      v40 = v38;
      outlined init with take of Any(v39, v37);
      v26 = *a3;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v13 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v13)
      {
        goto LABEL_23;
      }

      v32 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v32)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v25;
      outlined init with take of Any(v37, (v34[7] + 32 * v27));
      v35 = v34[2];
      v13 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v24;
      v34[2] = v36;
      v23 += 40;
      if (v4 == v24)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  MEMORY[0x223D76B90](0xD00000000000001BLL, 0x80000002201ACBB0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x223D76B90](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized SKACALogger.SKACAEvent.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t specialized SKACALogger.SKACALogKey.init(rawValue:)(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t specialized static SKACALogger._logSuccess(_:for:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *&a2;
  v25 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMd, &_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 4;
  v17 = inited + 32;
  *(inited + 16) = xmmword_2201A7280;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UUID?(v17, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
  v28 = v18;
  if (a3)
  {
    v27 = MEMORY[0x277D837D0];
    v26[0] = v24;
    *&v26[1] = a3;

    specialized Dictionary.subscript.setter(v26, 0);
  }

  outlined init with copy of (String, Sendable)(a4, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of UUID?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v20 = v19;
    v21 = *(v10 + 8);
    v21(v13, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = MEMORY[0x277D839F8];
    v26[0] = v20 - v22;
    specialized Dictionary.subscript.setter(v26, 1);
    v21(v15, v9);
  }

  specialized static SKACALogger.logMetadata(_:for:)(v28, v25);
}

void specialized static SKACALogger._logFailure(with:event:for:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v37 = *&a3;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v35 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v36 = &v35 - v13;
  v14 = _convertErrorToNSError(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMd, &_ss23_ContiguousArrayStorageCy18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2201A7700;
  *(inited + 32) = 2;
  v16 = [v14 code];
  v17 = MEMORY[0x277D83B88];
  *(inited + 40) = v16;
  *(inited + 64) = v17;
  *(inited + 72) = 3;
  v18 = [v14 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = MEMORY[0x277D837D0];
  *(inited + 80) = v19;
  *(inited + 88) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = 4;
  *(inited + 144) = MEMORY[0x277D839B0];
  *(inited + 120) = 0;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMd, &_s18StatusKitAgentCore11SKACALoggerC11SKACALogKeyO_yptMR);
  swift_arrayDestroy();
  v43 = v23;
  if (a4)
  {
    v42 = v22;
    v40 = v37;
    v41 = a4;

    specialized Dictionary.subscript.setter(&v40, 0);
  }

  v24 = COERCE_DOUBLE(specialized static SKACALogger.getUnderlyingError(_:)(v14));
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v42 = MEMORY[0x277D83B88];
    v40 = v24;
    specialized Dictionary.subscript.setter(&v40, 5);
    v42 = v22;
    v40 = v27;
    v41 = v28;
    specialized Dictionary.subscript.setter(&v40, 6);
  }

  outlined init with copy of (String, Sendable)(v38, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of UUID?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v29 = v36;
    (*(v10 + 32))(v36, v8, v9);
    v30 = v35;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    v33 = *(v10 + 8);
    v33(v30, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v42 = MEMORY[0x277D839F8];
    v40 = v32 - v34;
    specialized Dictionary.subscript.setter(&v40, 1);
    v33(v29, v9);
  }

  specialized static SKACALogger.logMetadata(_:for:)(v43, v39);
}

void specialized static SKACALogger.log(_:with:)(NSObject *a1, void *a2)
{
  v15[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v15);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_220099000, oslog, v5, "Could not serialize custom metadata to dictionary: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D77FF0](v7, -1, -1);
    MEMORY[0x223D77FF0](v6, -1, -1);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent()
{
  result = lazy protocol witness table cache variable for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent;
  if (!lazy protocol witness table cache variable for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKACALogger.SKACAEvent and conformance SKACALogger.SKACAEvent);
  }

  return result;
}

uint64_t type metadata completion function for SKACALogger.SKACALogToken(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t SKALogEvent.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x617373654D534449;
      }

      if (a1 == 3)
      {
        return 0xD000000000000011;
      }

      return 0xD000000000000012;
    }

    if (!a1)
    {
      return 0xD000000000000010;
    }

    if (a1 == 1)
    {
      return 0x4364657461657243;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x6269726373627553;
      case 8:
        return 0xD000000000000012;
      case 9:
        return 0x7263736275736E55;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x656873696C627550;
  }

  else
  {
    return 0x6465766965636552;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKALogEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SKALogEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized SKALogEvent.init(rawValue:)(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SKALogEvent and conformance SKALogEvent()
{
  result = lazy protocol witness table cache variable for type SKALogEvent and conformance SKALogEvent;
  if (!lazy protocol witness table cache variable for type SKALogEvent and conformance SKALogEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKALogEvent and conformance SKALogEvent);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x546C656E6E616843;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x4449746E65696C43;
    }

    else
    {
      v5 = 0x546C656E6E616843;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6F6774754F6D754ELL;
    v6 = 0xEB00000000676E69;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D6F636E496D754ELL;
    }

    else
    {
      v5 = 0x6369706F54;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000676E69;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0x6F6774754F6D754ELL;
  v8 = 0xEB00000000676E69;
  v9 = 0x6D6F636E496D754ELL;
  v10 = 0xEB00000000676E69;
  if (a2 != 3)
  {
    v9 = 0x6369706F54;
    v10 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x4449746E65696C43;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for SKAPowerLogger(0)) init];
  static SKAPowerLogger.shared = result;
  return result;
}

id static SKAPowerLogger.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SKAPowerLogger.shared;

  return v1;
}

uint64_t SKAPowerLogger.SKAPowerLogEventType.description.getter(uint64_t a1)
{
  if (!a1)
  {
    v1 = 0x696F6774756FLL;
    return v1 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  if (a1 == 1)
  {
    v1 = 0x696D6F636E69;
    return v1 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t SKAPowerLogger.SKAPowerLogEventType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance SKAPowerLogger.SKAPowerLogEventType@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SKAPowerLogger.SKAPowerLogEventType(uint64_t a1)
{
  if (!*v1)
  {
    v2 = 0x696F6774756FLL;
    return v2 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  if (*v1 == 1)
  {
    v2 = 0x696D6F636E69;
    return v2 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x546C656E6E616843;
  v5 = 0x6F6774754F6D754ELL;
  v6 = 0xEB00000000676E69;
  v7 = 0x6D6F636E496D754ELL;
  v8 = 0xEB00000000676E69;
  if (v2 != 3)
  {
    v7 = 0x6369706F54;
    v8 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x4449746E65696C43;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  v1 = *v0;
  v2 = 0x546C656E6E616843;
  v3 = 0x6F6774754F6D754ELL;
  v4 = 0x6D6F636E496D754ELL;
  if (v1 != 3)
  {
    v4 = 0x6369706F54;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449746E65696C43;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKAPowerLogger.SKAPowerLogEventMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();
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
  return (*(v4 + 8))(v6, v3);
}

double protocol witness for Decodable.init(from:) in conformance SKAPowerLogger.SKAPowerLogEventMetadata@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized SKAPowerLogger.SKAPowerLogEventMetadata.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

id SKAPowerLogger.().init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v19 - v5);
  v7 = type metadata accessor for SKAPowerLogger.State(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x223D76B00](0x694B737574617453, 0xEE00746E65674174);
  v12 = MEMORY[0x223D76B00](0xD000000000000010, 0x80000002201ACCE0);
  v13 = PPSCreateTelemetryIdentifier();

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static ContinuousClock.now.getter();
  *v10 = v13;
  v10[1] = v14;
  *(v10 + *(v8 + 36)) = xmmword_2201A8140;
  *v6 = 0;
  v15 = *(v3 + 36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5_CellVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  bzero(v6 + v15, *(*(v16 - 8) + 64));
  outlined init with copy of SKAPowerLogger.State(v10, v6 + v15);
  memcpy(&v0[OBJC_IVAR___SKAPowerLogger_state], v6, v4);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  outlined destroy of SKAPowerLogger.State(v10);
  return v17;
}

void SKAPowerLogger.log(_:type:on:)(unint64_t a1, uint64_t a2, id a3)
{
  v7 = [a3 channelType];
  if (!v7)
  {
    v8 = [a3 statusType];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = [a3 presenceIdentifier];
    if (v8)
    {
LABEL_4:
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E75;
LABEL_8:

  v13 = [a3 channelType];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
    v14 = 0xE700000000000000;
  }

  v15 = (v3 + OBJC_IVAR___SKAPowerLogger_state);
  os_unfair_lock_lock(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v15 + *(v16 + 28)), v10, v14, v13, a1, a2);

  os_unfair_lock_unlock(v15);
}

void SKAPowerLogger.log(_:type:on:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v23 = a3;
    v24 = __CocoaSet.count.getter();
    a3 = v23;
    v5 = v24;
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 >= 1)
  {
    v26 = a3 & 0xC000000000000001;
    v6 = (v3 + OBJC_IVAR___SKAPowerLogger_state);
    v7 = a3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
    v9 = v7;
    v10 = 0;
    v25 = *(v8 + 28);
    v11 = v7;
    v12 = v5;
    while (1)
    {
      if (v26)
      {
        v13 = MEMORY[0x223D77050](v10, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = [v13 channelType];
      if (v15)
      {
        if (v15 != 1)
        {
          v20 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          goto LABEL_15;
        }

        v16 = [v14 presenceIdentifier];
        if (!v16)
        {
LABEL_13:
          v18 = 0;
          v20 = 0;
          goto LABEL_15;
        }
      }

      else
      {
        v16 = [v14 statusType];
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

LABEL_15:
      v21 = [v14 channelType];
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v18 = 0x6E776F6E6B6E75;
        v22 = 0xE700000000000000;
      }

      os_unfair_lock_lock(v6);
      _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v6 + v25), v18, v22, v21, a1, a2);
      ++v10;

      os_unfair_lock_unlock(v6);

      v9 = v11;
      if (v12 == v10)
      {
        return;
      }
    }
  }

  __break(1u);
  os_unfair_lock_unlock(v4);
  __break(1u);
}

void SKAPowerLogger.log(_:type:channelType:identifier:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = (v5 + OBJC_IVAR___SKAPowerLogger_state);
  os_unfair_lock_lock(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v11 + *(v12 + 28)), a4, a5, a3, a1, a2);

  os_unfair_lock_unlock(v11);
}

uint64_t _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v104[4] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for ContinuousClock.Instant();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x28223BE20](v13);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 == 1)
  {
    v15 = MEMORY[0x223D76B00](a2, a3);
    v16 = [v15 clientIDFromPresenceIdentifier];

    if (v16)
    {
      a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a3 = v17;
    }

    else
    {
      a3 = 0xE700000000000000;
      a2 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
  }

  v18 = a1[1];
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);

    if (a5 > 9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G16LogEventMetadataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (a5 > 9)
    {
      goto LABEL_20;
    }
  }

  if (((1 << a5) & 0x138) != 0)
  {
LABEL_21:
    v22 = 3;
    goto LABEL_22;
  }

  if (((1 << a5) & 0x280) != 0)
  {
    v22 = 1;
    goto LABEL_22;
  }

  if (a5 == 6)
  {
    v23 = 4;
    if (a4)
    {
      v23 = 5;
    }

    if (a4 == 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = v23;
    }

    goto LABEL_22;
  }

LABEL_20:
  if (a5 < 2)
  {
    goto LABEL_21;
  }

  if (a5 != 2)
  {
    goto LABEL_68;
  }

  v22 = 0;
LABEL_22:
  v91 = a5;
  v24 = SKALogEvent.description.getter(a5);
  v26 = v21[2];
  v92 = a1;
  v93 = a3;
  v97 = v6;
  if (v26)
  {
    v89 = a6;
    v27 = a2;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
    v30 = v29;

    if (v30)
    {
      v31 = (v21[7] + 48 * v28);
      v33 = *v31;
      v32 = v31[1];
      a5 = v31[2];
      v34 = v31[3];
      v35 = v31[4];
      *&v90 = v31[5];
      a2 = v27;
    }

    else
    {
      *&v90 = v22;
      v33 = a4;
      v35 = 0;
      v34 = 0;
      a5 = v93;
      a2 = v27;
      v32 = v27;
    }

    a6 = v89;
  }

  else
  {
    *&v90 = v22;
    a5 = a3;
    v33 = a4;

    v35 = 0;
    v34 = 0;
    v32 = a2;
  }

  if (a6 == 1)
  {
    v36 = __OFADD__(v35++, 1);
    if (!v36)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  if (a6)
  {
    for (*&v99 = a6; ; *&v99 = a5)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
LABEL_68:
      ;
    }
  }

  v36 = __OFADD__(v34++, 1);
  if (v36)
  {
    goto LABEL_65;
  }

LABEL_34:
  v37 = a2;
  v38 = SKALogEvent.description.getter(v91);
  v40 = v39;
  *&v99 = v33;
  *(&v99 + 1) = v32;
  v100 = a5;
  v101 = v34;
  v102 = v35;
  v103 = v90;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, v38, v40, isUniquelyReferenced_nonNull_native);

  v42 = v104[0];
  v43 = v92;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v43[1];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v37, v93, v44);

  v45 = v104[0];
  v43[1] = v104[0];
  v46 = *(type metadata accessor for SKAPowerLogger.State(0) + 24);
  v47 = v94;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  (*(v95 + 8))(v47, v96);
  result = static Duration.< infix(_:_:)();
  if (result)
  {
    v49 = v97;
    if (*v43)
    {
      v88 = *v43;
      v89 = v46;
      v50 = v45 + 64;
      v51 = 1 << v45[32];
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v45 + 8);
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      *&v56 = 136315138;
      v90 = v56;
      v91 = v54;
      v93 = v45;
      if (v53)
      {
        goto LABEL_42;
      }

LABEL_43:
      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v57 >= v54)
        {

          v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

          v84 = v92;
          v92[1] = v83;
          v85 = v94;
          static ContinuousClock.now.getter();
          return (*(v95 + 40))(v84 + v89, v85, v96);
        }

        v53 = *&v50[8 * v57];
        ++v55;
        if (v53)
        {
          while (1)
          {
            v58 = __clz(__rbit64(v53));
            v53 &= v53 - 1;
            v59 = *(*(v45 + 7) + ((v57 << 9) | (8 * v58)));
            type metadata accessor for JSONEncoder();
            swift_allocObject();

            JSONEncoder.init()();
            v104[0] = v59;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS18StatusKitAgentCore14SKAPowerLoggerC0E16LogEventMetadataVGMd, &_sSDySS18StatusKitAgentCore14SKAPowerLoggerC0E16LogEventMetadataVGMR);
            lazy protocol witness table accessor for type [String : SKAPowerLogger.SKAPowerLogEventMetadata] and conformance <> [A : B]();
            v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            if (v49)
            {

              v49 = 0;
            }

            else
            {
              v62 = v60;
              v63 = v61;
              v97 = 0;

              v64 = objc_opt_self();
              isa = Data._bridgeToObjectiveC()().super.isa;
              v104[0] = 0;
              v66 = [v64 JSONObjectWithData:isa options:0 error:{v104, v88}];

              if (v66)
              {
                v67 = v104[0];
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
                if (swift_dynamicCast())
                {

                  specialized _dictionaryUpCast<A, B, C, D>(_:)(v98);

                  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

                  PPSSendTelemetry();

                  outlined consume of Data._Representation(v62, v63);
                  v55 = v57;
                  v49 = v97;
                  v45 = v93;
                  v54 = v91;
                  if (!v53)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_42;
                }

                outlined consume of Data._Representation(v62, v63);
                v49 = v97;
              }

              else
              {
                v69 = v104[0];
                v70 = _convertNSErrorToError(_:)();

                swift_willThrow();
                outlined consume of Data._Representation(v62, v63);

                v49 = 0;
              }

              v54 = v91;
            }

            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v71 = type metadata accessor for Logger();
            __swift_project_value_buffer(v71, logger);

            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v104[0] = v75;
              *v74 = v90;
              v98 = v59;
              v76 = String.init<A>(describing:)();
              v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v104);
              v97 = v72;
              v79 = v50;
              v80 = v49;
              v81 = v78;

              *(v74 + 4) = v81;
              v49 = v80;
              v50 = v79;
              v72 = v97;
              _os_log_impl(&dword_220099000, v97, v73, "Could not encode powerlog metadata to dictionary: %s", v74, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v75);
              MEMORY[0x223D77FF0](v75, -1, -1);
              v82 = v74;
              v54 = v91;
              MEMORY[0x223D77FF0](v82, -1, -1);
            }

            else
            {
            }

            v55 = v57;
            v45 = v93;
            if (!v53)
            {
              goto LABEL_43;
            }

LABEL_42:
            v57 = v55;
          }
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
    }

    v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_18StatusKitAgentCore14SKAPowerLoggerC0G11LogMetadata33_9FCD8C5B33CE418606FD932C9F8D29EFLLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    v43[1] = v86;
    v87 = v94;
    static ContinuousClock.now.getter();
    return (*(v95 + 40))(v43 + v46, v87, v96);
  }

  return result;
}

id SKAPowerLogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType()
{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventType and conformance SKAPowerLogger.SKAPowerLogEventType);
  }

  return result;
}

void type metadata completion function for SKAPowerLogger(uint64_t a1)
{
  type metadata accessor for Mutex<SKAPowerLogger.State>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Mutex<SKAPowerLogger.State>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Mutex<SKAPowerLogger.State>)
  {
    type metadata accessor for SKAPowerLogger.State(255);
    v1 = type metadata accessor for Mutex();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Mutex<SKAPowerLogger.State>);
    }
  }
}

void type metadata completion function for SKAPowerLogger.State(uint64_t a1)
{
  type metadata accessor for OpaquePointer?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : SKAPowerLogger.SKAPowerLogMetadata]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContinuousClock.Instant();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for OpaquePointer?()
{
  if (!lazy cache variable for type metadata for OpaquePointer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OpaquePointer?);
    }
  }
}

unint64_t type metadata accessor for SKADatabaseChannel()
{
  result = lazy cache variable for type metadata for SKADatabaseChannel;
  if (!lazy cache variable for type metadata for SKADatabaseChannel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKADatabaseChannel);
  }

  return result;
}

uint64_t outlined init with copy of SKAPowerLogger.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAPowerLogger.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKAPowerLogger.State(uint64_t a1)
{
  v2 = type metadata accessor for SKAPowerLogger.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata()
{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata and conformance SKAPowerLogger.SKAPowerLogEventMetadata);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys);
  }

  return result;
}

unint64_t specialized SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized SKAPowerLogger.SKAPowerLogEventMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy18StatusKitAgentCore14SKAPowerLoggerC0H16LogEventMetadataV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys and conformance SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  v23 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = v19;
  v16 = v20;
  *a2 = v9;
  a2[1] = v16;
  a2[2] = v12;
  a2[3] = v15;
  a2[4] = v18;
  a2[5] = v13;
  return result;
}

uint64_t getEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SKAPowerLogger.SKAPowerLogEventMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of UUID?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of UUID?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of UUID?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

char *one-time initialization function for all()
{
  v9 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v1 = v9;
  v3 = *(v9 + 16);
  v2 = *(v9 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1);
    v1 = v9;
    v2 = *(v9 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  v6 = v1 + 16 * v3;
  *(v6 + 32) = 0xD000000000000020;
  *(v6 + 40) = 0x80000002201ACDE0;
  v7 = v3 + 2;
  if (v4 <= v5)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1);
    v1 = v9;
  }

  *(v1 + 16) = v7;
  v8 = v1 + 16 * v5;
  *(v8 + 32) = 0xD000000000000023;
  *(v8 + 40) = 0x80000002201ACE10;
  static SKAAccountProvider.SKAAuthService.all = v1;
  return result;
}

id SKAAccountProvider.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[15] = 0;
  v1[14] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SKAAccountProvider.init()()
{
  swift_defaultActor_initialize();
  v0[15] = 0;
  v0[14] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKAAccountProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SKAAccountProvider.getPrimaryiCloudAccount()()
{
  v1 = [*(v0 + 112) aida_accountForPrimaryiCloudAccount];
  if (v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_220099000, v4, v5, "Found primary iCloud account: %@", v6, 0xCu);
      outlined destroy of UUID?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v7, -1, -1);
      MEMORY[0x223D77FF0](v6, -1, -1);
    }
  }

  else
  {
    v9 = type metadata accessor for SKAError();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___SKAError_code] = 703;
    v11 = &v10[OBJC_IVAR___SKAError_customDescription];
    *v11 = 0;
    *(v11 + 1) = 0;
    *&v10[OBJC_IVAR___SKAError_underlyingError] = 0;
    *&v10[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v15.receiver = v10;
    v15.super_class = v9;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, 255, type metadata accessor for SKAError, &protocol conformance descriptor for SKAError);
    swift_allocError();
    *v13 = v12;
    swift_willThrow();
  }

  return v1;
}

uint64_t SKAAccountProvider.getToken(for:error:)(char a1)
{
  v2 = SKAAccountProvider.getPrimaryiCloudAccount()();
  if (a1)
  {
    v3 = 0xD000000000000023;
  }

  else
  {
    v3 = 0xD000000000000020;
  }

  if (a1)
  {
    v4 = "redchannels.auth";
  }

  else
  {
    v4 = "d to be renewed with result: ";
  }

  v5 = MEMORY[0x223D76B00](v3, v4 | 0x8000000000000000);

  v6 = [v2 aida:v5 tokenWithExpiryCheckForService:?];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[1] = v9;
      v28 = v14;
      *v13 = 134218242;
      v27[0] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      *(v13 + 4) = Optional<A>.hashValue.getter();

      *(v13 + 12) = 2080;
      if (a1)
      {
        v15 = 0xD00000000000002ELL;
      }

      else
      {
        v15 = 0xD000000000000029;
      }

      if (a1)
      {
        v16 = "redchannels.auth (status)";
      }

      else
      {
        v16 = "redexperiences.auth";
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16 | 0x8000000000000000, &v28);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_220099000, v11, v12, "Retrieved token (hash: %ld) for service: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D77FF0](v14, -1, -1);
      MEMORY[0x223D77FF0](v13, -1, -1);

      return v7;
    }

    else
    {

      return v7;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      if (a1)
      {
        v24 = 0xD00000000000002ELL;
      }

      else
      {
        v24 = 0xD000000000000029;
      }

      if (a1)
      {
        v25 = "redchannels.auth (status)";
      }

      else
      {
        v25 = "redexperiences.auth";
      }

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25 | 0x8000000000000000, v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_220099000, v20, v21, "No token was returned for service: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223D77FF0](v23, -1, -1);
      MEMORY[0x223D77FF0](v22, -1, -1);
    }

    return 0;
  }
}

id @objc SKAAccountProvider.statusJwtTokenForPrimaryAccountWithError(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  v5 = SKAAccountProvider.getToken(for:error:)(a4);
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x223D76B00](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](SKAAccountProvider.refreshCredentialForPrimaryAccount(), v0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v0[4] = v2;
  if (v2)
  {
    v3 = one-time initialization token for logger;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_220099000, v5, v6, "Awaiting previous credential renewal task", v7, 2u);
      MEMORY[0x223D77FF0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[5] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v8 = v0;
    v10 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  else
  {
    v11 = v0[3];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v14 = lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAAccountProvider and conformance SKAAccountProvider, v13, type metadata accessor for SKAAccountProvider, "A6\tb");
    v15 = swift_allocObject();
    v15[2] = v1;
    v15[3] = v14;
    v15[4] = v1;
    swift_retain_n();
    v2 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount(), v15);
    v0[7] = v2;
    *(v1 + 120) = v2;

    v8 = swift_task_alloc();
    v0[8] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v8 = v0;
    v10 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  v8[1] = v10;
  v16 = MEMORY[0x277D84950];
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v9, v2, v17, v9, v16);
}

{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  else
  {
    v4 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);

    v4 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 16);

  *(v1 + 120) = 0;

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*(v0 + 16) + 120) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMd, &_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMR);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount(), a4, 0);
}

uint64_t closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v1 = SKAAccountProvider.getPrimaryiCloudAccount()();
  v0[29] = v1;
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v3, logger);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_220099000, v5, v6, "Renewing credentials for account: %@", v7, 0xCu);
    outlined destroy of UUID?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v8, -1, -1);
    MEMORY[0x223D77FF0](v7, -1, -1);
  }

  v18 = v4;
  v10 = v0[25];

  v17 = *(v10 + 112);
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[26];
  specialized _arrayForceCast<A, B>(_:)(static SKAAccountProvider.SKAAuthService.all);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[31] = isa;

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  swift_continuation_init();
  v0[17] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  type metadata accessor for ACAccountCredentialRenewResult(0);
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v12, v13);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ACAccountCredentialRenewResult, @unowned NSError?) -> () with result type ACAccountCredentialRenewResult;
  v0[13] = &block_descriptor_2;
  [v17 aida:v18 renewCredentialsForAccount:isa services:? completion:?];
  (*(v11 + 8))(boxed_opaque_existential_0, v13);

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  else
  {
    v4 = closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v28 = v0;
  receiver = v0[11].receiver;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    v6 = 0xE600000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    if (receiver == 1)
    {
      v8 = 0x64657463656A6572;
      v7 = 0xE800000000000000;
    }

    if (receiver == 2)
    {
      v8 = 0x64656C696166;
    }

    else
    {
      v6 = v7;
    }

    if (receiver)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x646577656E6572;
    }

    if (receiver)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_220099000, v2, v3, "Credential renewal returned with result: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D77FF0](v5, -1, -1);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  if (receiver)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v26 = 0xD00000000000002DLL;
    v27 = 0x80000002201ACDB0;
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    if (receiver == 1)
    {
      v13 = 0x64657463656A6572;
      v12 = 0xE800000000000000;
    }

    if (receiver == 2)
    {
      v14 = 0x64656C696166;
    }

    else
    {
      v14 = v13;
    }

    if (receiver == 2)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = v12;
    }

    super_class = v0[14].super_class;
    MEMORY[0x223D76B90](v14, v15);

    v17 = v26;
    v18 = v27;
    v19 = type metadata accessor for SKAError();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR___SKAError_code] = 702;
    v21 = &v20[OBJC_IVAR___SKAError_customDescription];
    *v21 = v17;
    v21[1] = v18;
    *&v20[OBJC_IVAR___SKAError_underlyingError] = 0;
    *&v20[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[10].receiver = v20;
    v0[10].super_class = v19;
    v22 = objc_msgSendSuper2(v0 + 10, sel_init);
    lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, 255, type metadata accessor for SKAError, &protocol conformance descriptor for SKAError);
    swift_allocError();
    *v23 = v22;
    swift_willThrow();

    v24 = v0->super_class;
  }

  else
  {

    v24 = v0->super_class;
  }

  return v24();
}

uint64_t closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(uint64_t a1)
{
  super_class = v1[16].super_class;
  v3 = v1[15].super_class;
  v4 = v1[14].super_class;
  swift_willThrow();

  v5 = type metadata accessor for SKAError();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___SKAError_code] = 701;
  v7 = &v6[OBJC_IVAR___SKAError_customDescription];
  *v7 = 0;
  *(v7 + 1) = 0;
  v1[11].super_class = super_class;
  v8 = super_class;
  type metadata accessor for NSError();
  v9 = swift_dynamicCast();
  receiver = v1[12].receiver;
  if (!v9)
  {
    receiver = 0;
  }

  *&v6[OBJC_IVAR___SKAError_underlyingError] = receiver;
  *&v6[OBJC_IVAR___SKAError_userInfo] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1[9].receiver = v6;
  v1[9].super_class = v5;
  v11 = objc_msgSendSuper2(v1 + 9, sel_init);
  lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(&lazy protocol witness table cache variable for type SKAError and conformance SKAError, 255, type metadata accessor for SKAError, &protocol conformance descriptor for SKAError);
  swift_allocError();
  *v12 = v11;
  swift_willThrow();

  v13 = v1->super_class;

  return v13();
}

uint64_t partial apply for closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(a1, v4, v5, v6);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ACAccountCredentialRenewResult, @unowned NSError?) -> () with result type ACAccountCredentialRenewResult(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMd, &_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMd, &_sScCySo30ACAccountCredentialRenewResultVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();

  return SKAAccountProvider.refreshCredentialForPrimaryAccount()();
}

uint64_t @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t SKAAccountProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SKAAccountProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return v5();
}

uint64_t lazy protocol witness table accessor for type SKAAccountProvider and conformance SKAAccountProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount()(v2, v3);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SKAPresentDevicesManager.verifyPayloadTimeout.getter()
{
  v1 = v0 + OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout;
  swift_beginAccess();
  return *v1;
}

void SKAPresentDevicesManager.verifyPayloadTimeout.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SKAPresentDevicesManager.SKAPayloadVerificationContext.signedPayload.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t SKAPresentDevicesManager.SKAPayloadVerificationContext.tokenURI.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SKAPresentDevicesManager.SKAPayloadVerificationContext.assertionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0) + 32);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for SKAPresentDevicesManager.SKAPayloadVerificationContext;
  if (!type metadata singleton initialization cache for SKAPresentDevicesManager.SKAPayloadVerificationContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SKAPresentDevicesManager.__allocating_init(channelManager:databaseManager:messagingProvider:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___SKAPresentDevicesManager_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *&v9[v10] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001DLL, 0x80000002201ACEE0, 0, 0);
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout] = xmmword_2201A85A0;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_channelManager] = a1;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_databaseManager] = a2;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_messagingProvider] = a3;
  *&v9[OBJC_IVAR___SKAPresentDevicesManager_delegate] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SKAPresentDevicesManager.init(channelManager:databaseManager:messagingProvider:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR___SKAPresentDevicesManager_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *&v4[v10] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001DLL, 0x80000002201ACEE0, 0, 0);
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout] = xmmword_2201A85A0;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_channelManager] = a1;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_databaseManager] = a2;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_messagingProvider] = a3;
  *&v4[OBJC_IVAR___SKAPresentDevicesManager_delegate] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t SKAPresentDevicesManager._activePresentDevices(for:)(void *a1)
{
  v22 = 0;
  SKAAsyncQueue.precondition(_:)(&v22);
  v3 = *(v1 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
  v4 = [v3 newBackgroundContext];
  v5 = [v3 presentDevicesForChannel:a1 databaseContext:v4];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo15SKPresentDeviceC_SayAEGTt0g5Tf4g_n(v6);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v12 = 134218498;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *(v7 + 16);
    }

    *(v12 + 4) = v15;

    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    *(v12 + 22) = 2080;
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    v16 = v9;
    v17 = Set.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_220099000, v10, v11, "Found %ld present devices for channel: %@ (%s)", v12, 0x20u);
    outlined destroy of UUID?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D77FF0](v14, -1, -1);
    MEMORY[0x223D77FF0](v12, -1, -1);
  }

  else
  {
  }

  return v7;
}

uint64_t SKAPresentDevicesManager.activePresentDevices(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;
  v9 = a1;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &async function pointer to partial apply for closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:), v7);
}

uint64_t closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:), 0, 0);
}

uint64_t closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)()
{
  v1 = *(v0 + 32);
  SKAPresentDevicesManager._activePresentDevices(for:)(*(v0 + 24));
  v1();

  v2 = *(v0 + 8);

  return v2();
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void SKAPresentDevicesManager._clearPresentDevices(for:)(void *a1)
{
  v2 = v1;
  v29 = 0;
  SKAAsyncQueue.precondition(_:)(&v29);
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v28);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_220099000, v10, v11, "Clearing present devices for channel: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D77FF0](v13, -1, -1);
      MEMORY[0x223D77FF0](v12, -1, -1);
    }

    else
    {
    }

    v21 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
    oslog = [v21 newBackgroundContext];
    LODWORD(v21) = [v21 clearPresentDevicesForChannel:a1 databaseContext:?];
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    if (v21)
    {
      if (v24)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "Found present devices to clear in DB";
LABEL_16:
        _os_log_impl(&dword_220099000, v22, v23, v26, v25, 2u);
        MEMORY[0x223D77FF0](v25, -1, -1);
      }
    }

    else if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "No present devices to clear in DB";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = a1;
  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v16;
    *v19 = v16;
    v20 = v16;
    _os_log_impl(&dword_220099000, oslog, v17, "Channel identifier of channel %@ was nil", v18, 0xCu);
    outlined destroy of UUID?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v19, -1, -1);
    MEMORY[0x223D77FF0](v18, -1, -1);
  }

LABEL_18:
}

Swift::Void __swiftcall SKAPresentDevicesManager.clearPresentDevices(for:)(SKADatabaseChannel *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  SKAAsyncQueue.enqueue(_:_:)("clearPresentDevices(for:)", 25, 2, &async function pointer to partial apply for closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:), v3);
}

uint64_t closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:), 0, 0);
}

uint64_t closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)()
{
  SKAPresentDevicesManager._clearPresentDevices(for:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void SKAPresentDevicesManager.addPresentDevice(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
  v12 = [v5 newBackgroundContext];
  if ([v5 createOrUpdatePresentDevice:a1 channel:a2 databaseContext:?])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Successfully created or updated present device in DB";
LABEL_10:
      _os_log_impl(&dword_220099000, v7, v8, v10, v9, 2u);
      MEMORY[0x223D77FF0](v9, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Could not create or update present device in DB";
      goto LABEL_10;
    }
  }
}

void SKAPresentDevicesManager.removePresentDevice(_:for:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
  v15 = [v5 newBackgroundContext];
  if ([v5 deletePresentDevice:a1 channel:a2 databaseContext:?])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = a2;
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v7;
      v12[1] = v8;
      v13 = v7;
      v14 = v8;
      _os_log_impl(&dword_220099000, v9, v10, "Present device deleted in DB for channel: %@ (%@)", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v12, -1, -1);
      MEMORY[0x223D77FF0](v11, -1, -1);
    }
  }
}

Swift::Void __swiftcall SKAPresentDevicesManager.setParticipantPayloads(_:for:)(Swift::OpaquePointer _, SKADatabaseChannel *a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v2;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  *(v6 + 56) = _;
  *(v6 + 64) = 0;
  *(v6 + 72) = ObjectType;
  v7 = a2;
  v8 = v2;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &async function pointer to partial apply for closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v6);
}

uint64_t SKAPresentDevicesManager.setParticipantPayloads(_:for:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v4;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = 1;
  *(v10 + 56) = a1;
  *(v10 + 64) = 0;
  *(v10 + 72) = ObjectType;
  v11 = a2;
  v12 = v4;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v10);
}

uint64_t SKAPresentDevicesManager.handleParticipantPayloads(_:for:with:resetState:)(uint64_t a1, void *a2, int a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v4;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = a4;
  *(v10 + 56) = a1;
  *(v10 + 64) = a3;
  *(v10 + 72) = ObjectType;
  v11 = a2;
  v12 = v4;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v10);
}

uint64_t closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 336) = a7;
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 340) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 88) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMd, &_sScS12ContinuationV15BufferingPolicyOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMR);
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  *(v8 + 120) = v11;
  v12 = *(v11 - 8);
  *(v8 + 128) = v12;
  *(v8 + 136) = *(v12 + 64);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMd, &_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMR);
  *(v8 + 160) = v13;
  *(v8 + 168) = *(v13 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMd, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMR);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v14 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
  *(v8 + 208) = v14;
  *(v8 + 216) = *(v14 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v89 = v0;
  v1 = [*(v0 + 16) identifier];
  if (!v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 16);
    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, logger);
    v54 = v52;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 16);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v57;
      *v59 = v57;
      v60 = v57;
      _os_log_impl(&dword_220099000, v55, v56, "Channel identifier of channel %@ was nil", v58, 0xCu);
      outlined destroy of UUID?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v59, -1, -1);
      MEMORY[0x223D77FF0](v58, -1, -1);
    }

    v61 = *(v0 + 24);
    v62 = *(v0 + 32);
    v63 = *(v0 + 16);

    v64 = *(v61 + OBJC_IVAR___SKAPresentDevicesManager_delegate);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v64 didUpdatePresentDevices:isa forChannel:v63];

    if (!v62)
    {
      goto LABEL_37;
    }

LABEL_36:
    (*(v0 + 32))();
LABEL_37:

    v66 = *(v0 + 8);

    return v66();
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 272) = v5;
  if (one-time initialization token for logger != -1)
  {
LABEL_42:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 280) = __swift_project_value_buffer(v6, logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v88[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, v88);
    _os_log_impl(&dword_220099000, v7, v8, "Updating present devices for channel: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D77FF0](v10, -1, -1);
    MEMORY[0x223D77FF0](v9, -1, -1);
  }

  if (*(v0 + 340) == 1)
  {
    SKAPresentDevicesManager._clearPresentDevices(for:)(*(v0 + 16));
  }

  v11 = *(v0 + 48);
  v85 = SKAPresentDevicesManager._activePresentDevices(for:)(*(v0 + 16));
  *(v0 + 288) = v85;
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_44:
    v68 = *(v0 + 24);
    v67 = *(v0 + 32);
    v69 = *(v0 + 16);

    v70 = *(v68 + OBJC_IVAR___SKAPresentDevicesManager_delegate);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    v71 = Set._bridgeToObjectiveC()().super.isa;

    [v70 didUpdatePresentDevices:v71 forChannel:v69];

    if (!v67)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_44;
  }

LABEL_9:
  v13 = 0;
  v3 = 0;
  v82 = v11 & 0xFFFFFFFFFFFFFF8;
  v84 = v11 & 0xC000000000000001;
  v78 = *(v0 + 216);
  v80 = *(v0 + 48) + 32;
  v14 = (v78 + 48);
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (v84)
    {
      v15 = MEMORY[0x223D77050](v13, *(v0 + 48));
    }

    else
    {
      if (v13 >= *(v82 + 16))
      {
        goto LABEL_41;
      }

      v15 = *(v80 + 8 * v13);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v18 = v12;
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v21 = *(v0 + 16);
    v22 = *(v0 + 24);
    v88[0] = v15;
    closure #1 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(v88, v21, v85, v22, v19);

    v23 = *v14;
    *(v0 + 296) = *v14;
    if (v23(v19, 1, v20) == 1)
    {
      outlined destroy of UUID?(*(v0 + 200), &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMd, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMR);
      v12 = v18;
    }

    else
    {
      v25 = *(v0 + 256);
      v24 = *(v0 + 264);
      outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(*(v0 + 200), v24);
      outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v24, v25);
      v12 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v27 = v5[2];
      v26 = v5[3];
      if (v27 >= v26 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v5);
      }

      v28 = *(v0 + 256);
      v5[2] = v27 + 1;
      outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v28, v5 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v27);
    }

    *(v0 + 304) = v5;
    ++v13;
  }

  while (v17 != v12);
  v29 = v5[2];
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v31 = *(v0 + 248);
    v88[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v30 = v88[0];
    v32 = v5 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v86 = *(v78 + 72);
    do
    {
      v33 = *(v0 + 248);
      outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v32, v33);
      v35 = *(v31 + 32);
      v34 = *(v31 + 40);

      outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v33);
      v88[0] = v30;
      v37 = v30[2];
      v36 = v30[3];
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v30 = v88[0];
      }

      v30[2] = v37 + 1;
      v38 = &v30[2 * v37];
      v38[4] = v35;
      v38[5] = v34;
      v32 += v86;
      --v29;
    }

    while (v29);
  }

  *(v0 + 312) = v30;
  v77 = *(v0 + 184);
  v79 = *(v0 + 168);
  v81 = *(v0 + 160);
  v83 = *(v0 + 176);
  v39 = *(v0 + 152);
  v40 = *(v0 + 128);
  v74 = *(v0 + 144);
  v75 = *(v0 + 136);
  v41 = *(v0 + 112);
  v73 = *(v0 + 120);
  v42 = *(v0 + 96);
  v43 = *(v0 + 104);
  v87 = *(v0 + 88);
  v76 = *(v0 + 24);
  (*(v43 + 104))(v41, *MEMORY[0x277D85778], v42);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v43 + 8))(v41, v42);
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v87, 1, 1, v44);
  (*(v40 + 16))(v74, v39, v73);
  v45 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v5;
  *(v46 + 5) = v76;
  (*(v40 + 32))(&v46[v45], v74, v73);
  *&v46[(v75 + v45 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;

  v47 = v76;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v87, &async function pointer to partial apply for closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v46);

  (*(v79 + 16))(v83, v77, v81);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<SKAPresentDevicesManager.SKAPayloadVerificationContext> and conformance AsyncStream<A>, &_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMd, &_sScSy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVGMR, MEMORY[0x277D857C0]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 320) = MEMORY[0x277D84F90];
  v48 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<SKAPresentDevicesManager.SKAPayloadVerificationContext>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR, MEMORY[0x277D857B0]);
  v49 = swift_task_alloc();
  *(v0 + 328) = v49;
  *v49 = v0;
  v49[1] = closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  v50 = *(v0 + 192);
  v51 = *(v0 + 64);

  return MEMORY[0x282200308](v50, v51, v48);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[9];
    v3 = v2[10];
    v5 = v2[8];

    (*(v4 + 8))(v3, v5);

    v6 = destructiveProjectEnumData for SKAAsyncQueue.Condition;
  }

  else
  {
    v6 = closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = (*(v0 + 296))(v1, 1, *(v0 + 208));
  v3 = *(v0 + 320);
  if (v2 != 1)
  {
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);
    outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v1, v11);
    outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v11, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, *(v0 + 320));
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = *(v0 + 232);
    v18 = *(v0 + 216);
    outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(*(v0 + 240));
    v14[2] = v16 + 1;
    outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    *(v0 + 320) = v14;
    v19 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<SKAPresentDevicesManager.SKAPayloadVerificationContext>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS8IteratorVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR, MEMORY[0x277D857B0]);
    v20 = swift_task_alloc();
    *(v0 + 328) = v20;
    *v20 = v0;
    v20[1] = closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
    v21 = *(v0 + 192);
    v22 = *(v0 + 64);
    v23 = v19;

    return MEMORY[0x282200308](v21, v22, v23);
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  outlined destroy of UUID?(v1, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMd, &_s18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextVSgMR);
  v87 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (!v4)
  {

    v86 = MEMORY[0x277D84F90];
    v24 = *(v0 + 336);
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_33:
    if (v86 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      v48 = v21;
      if (!v21)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v48 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_49;
      }
    }

    if (v48 >= 1)
    {
      v49 = 0;
      v85 = *(v0 + 16);
      v50 = v86 & 0xC000000000000001;
      do
      {
        if (v50)
        {
          v52 = MEMORY[0x223D77050](v49, v86);
        }

        else
        {
          v52 = *(v86 + 8 * v49 + 32);
        }

        v53 = *(v0 + 16);
        v54 = v52;
        v55 = v53;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = *(v0 + 16);
          v59 = swift_slowAlloc();
          v60 = v50;
          v61 = swift_slowAlloc();
          *v59 = 138412546;
          *(v59 + 4) = v54;
          *(v59 + 12) = 2112;
          *(v59 + 14) = v58;
          *v61 = v54;
          v61[1] = v85;
          v62 = v54;
          v63 = v58;
          _os_log_impl(&dword_220099000, v56, v57, "Adding device %@ to channel %@", v59, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          v64 = v61;
          v50 = v60;
          MEMORY[0x223D77FF0](v64, -1, -1);
          MEMORY[0x223D77FF0](v59, -1, -1);
        }

        ++v49;
        v51 = *(v0 + 16);

        SKAPresentDevicesManager.addPresentDevice(_:for:)(v54, v51);
      }

      while (v48 != v49);
      goto LABEL_49;
    }

LABEL_56:
    __break(1u);
    return MEMORY[0x282200308](v21, v22, v23);
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 320) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  v86 = MEMORY[0x277D84F90];
  do
  {
    v8 = *(v0 + 224);
    outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v6, v8);
    v9 = specialized SKAPresentDevicesManager.createPresentDevice(with:on:)(v8);
    v10 = outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v8);
    if (v9)
    {
      MEMORY[0x223D76BD0](v10);
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v86 = v87;
    }

    v6 += v7;
    --v4;
  }

  while (v4);

  v24 = *(v0 + 336);
  if (!v24)
  {
    goto LABEL_33;
  }

LABEL_17:
  if (v24 != 1)
  {
    v65 = *(v0 + 16);

    v66 = v65;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 16);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v69;
      *v71 = v69;
      v72 = v69;
      _os_log_impl(&dword_220099000, v67, v68, "Unknown update type on channel %@", v70, 0xCu);
      outlined destroy of UUID?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v71, -1, -1);
      MEMORY[0x223D77FF0](v70, -1, -1);
    }

    goto LABEL_50;
  }

  if (v86 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    v25 = v21;
    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v25 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_20:
      if (v25 >= 1)
      {
        v26 = 0;
        v83 = *(v0 + 16);
        v84 = *(*(v0 + 24) + OBJC_IVAR___SKAPresentDevicesManager_databaseManager);
        do
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x223D77050](v26, v86);
          }

          else
          {
            v27 = *(v86 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = *(v0 + 16);
          v30 = v28;
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = *(v0 + 16);
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v34 = 138412546;
            *(v34 + 4) = v30;
            *(v34 + 12) = 2112;
            *(v34 + 14) = v33;
            *v35 = v30;
            v35[1] = v83;
            v36 = v33;
            v37 = v30;
            _os_log_impl(&dword_220099000, v31, v32, "Removing device %@ from channel %@", v34, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x223D77FF0](v35, -1, -1);
            MEMORY[0x223D77FF0](v34, -1, -1);
          }

          v38 = *(v0 + 16);

          v39 = [v84 newBackgroundContext];
          if ([v84 deletePresentDevice:v30 channel:v38 databaseContext:v39])
          {
            v40 = *(v0 + 16);
            v41 = v30;
            v30 = Logger.logObject.getter();
            v42 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v30, v42))
            {
              v43 = *(v0 + 16);
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              *v44 = 138412546;
              *(v44 + 4) = v43;
              *(v44 + 12) = 2112;
              *(v44 + 14) = v41;
              *v45 = v83;
              v45[1] = v41;
              v46 = v43;
              v47 = v41;
              _os_log_impl(&dword_220099000, v30, v42, "Present device deleted in DB for channel: %@ (%@)", v44, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v45, -1, -1);
              MEMORY[0x223D77FF0](v44, -1, -1);
            }
          }

          ++v26;
        }

        while (v25 != v26);
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_56;
    }
  }

LABEL_49:

LABEL_50:
  v73 = *(v0 + 24);
  v74 = *(v0 + 32);
  v75 = *(v0 + 16);
  SKAPresentDevicesManager._activePresentDevices(for:)(v75);
  v76 = *(v73 + OBJC_IVAR___SKAPresentDevicesManager_delegate);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v76 didUpdatePresentDevices:isa forChannel:v75];

  if (v74)
  {
    (*(v0 + 32))();
  }

  v78 = *(v0 + 184);
  v79 = *(v0 + 160);
  v80 = *(v0 + 168);
  (*(*(v0 + 128) + 8))(*(v0 + 152), *(v0 + 120));
  (*(v80 + 8))(v78, v79);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t closure #1 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *a1;
  v14 = [*(a4 + OBJC_IVAR___SKAPresentDevicesManager_channelManager) serverTime];
  if (v14)
  {
    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  static SKAPresentDevicesManager.validatePayload(_:on:withPreviousDevices:currentServerTime:)(v13, a2, a3, v12, a5);
  return outlined destroy of UUID?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t static SKAPresentDevicesManager.validatePayload(_:on:withPreviousDevices:currentServerTime:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v262[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v242 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v257 = &v242 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v258 = &v242 - v19;
  MEMORY[0x28223BE20](v18);
  v259 = &v242 - v20;
  v21 = [a1 serverUpdateTimestampSeconds];
  v22 = [a1 encryptedParticipantPayload];
  if (!v22)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, logger);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_220099000, v53, v54, "Payload data empty", v55, 2u);
      MEMORY[0x223D77FF0](v55, -1, -1);
    }

    goto LABEL_20;
  }

  v255 = v15;
  v23 = v22;
  v261 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [a2 presencePeerKey];
  if (!v26)
  {
LABEL_15:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, logger);
    v53 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_220099000, v53, v57, "Failed to instantiate peer key for decryption", v58, 2u);
      MEMORY[0x223D77FF0](v58, -1, -1);
    }

    outlined consume of Data._Representation(v261, v25);
LABEL_20:

LABEL_21:
    v59 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
    v60 = *(*(v59 - 8) + 56);
    v61 = v59;
    v62 = a5;
LABEL_22:

    return v60(v62, 1, 1, v61);
  }

  v251 = v14;
  v260 = v25;
  v256 = a5;
  v27 = v26;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = objc_allocWithZone(SKAPresenceEncryptionKey);
  outlined copy of Data._Representation(v28, v30);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v33 = [v31 initWithKeyMaterial_];

  outlined consume of Data._Representation(v28, v30);
  if (!v33)
  {
    outlined consume of Data._Representation(v28, v30);
    a5 = v256;
    v25 = v260;
    goto LABEL_15;
  }

  v252 = v28;
  v253 = v30;
  v34 = v260;
  v35 = Data._bridgeToObjectiveC()().super.isa;
  v254 = v33;
  v36 = [v33 decryptPayload_];

  if (!v36)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, logger);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v256;
    v69 = v253;
    v70 = v254;
    if (v67)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_220099000, v65, v66, "Payload data failed to decrypt", v71, 2u);
      MEMORY[0x223D77FF0](v71, -1, -1);
    }

    outlined consume of Data._Representation(v252, v69);
    v73 = v260;
    v72 = v261;
    goto LABEL_35;
  }

  v247 = a3;
  v248 = v5;
  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = objc_allocWithZone(SignedParticipantPayload);
  outlined copy of Data._Representation(v37, v39);
  v41 = Data._bridgeToObjectiveC()().super.isa;
  v250 = v37;
  outlined consume of Data._Representation(v37, v39);
  v42 = [v40 initWithData_];

  if (!v42)
  {
    v68 = v256;
    v70 = v254;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, logger);
    v65 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    v76 = os_log_type_enabled(v65, v75);
    v77 = v253;
    if (v76)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_220099000, v65, v75, "Could not construct signed payload", v78, 2u);
      MEMORY[0x223D77FF0](v78, -1, -1);
    }

    outlined consume of Data._Representation(v252, v77);
    outlined consume of Data._Representation(v261, v260);
    v72 = v250;
    v73 = v39;
LABEL_35:
    outlined consume of Data._Representation(v72, v73);

    v79 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
    v60 = *(*(v79 - 8) + 56);
    v61 = v79;
    v62 = v68;
    goto LABEL_22;
  }

  v249 = v39;
  v43 = [v42 signature];
  a5 = v256;
  if (!v43)
  {
    v80 = v42;
    v81 = v249;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, logger);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v253;
    v87 = v254;
    v88 = v252;
    if (v85)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_220099000, v83, v84, "Payload data missing signature", v89, 2u);
      MEMORY[0x223D77FF0](v89, -1, -1);
    }

    outlined consume of Data._Representation(v88, v86);
    outlined consume of Data._Representation(v261, v260);
    v90 = v250;
    v91 = v81;
    goto LABEL_46;
  }

  v44 = v43;
  v245 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v246 = v45;

  v46 = [v42 payload];
  if (!v46)
  {
    v80 = v42;
    v92 = v249;
    v87 = v254;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, logger);
    v83 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    v95 = os_log_type_enabled(v83, v94);
    v97 = v252;
    v96 = v253;
    if (v95)
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_220099000, v83, v94, "Could not retrieve decrypted payload from signed payload", v98, 2u);
      MEMORY[0x223D77FF0](v98, -1, -1);
    }

    outlined consume of Data._Representation(v97, v96);
    outlined consume of Data._Representation(v261, v260);
    outlined consume of Data._Representation(v250, v92);
    v90 = v245;
    v91 = v246;
LABEL_46:
    outlined consume of Data._Representation(v90, v91);

    goto LABEL_21;
  }

  v244 = v46;
  v47 = [v46 channelIdentifier];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v99 = [a2 identifier];
  if (!v99)
  {
    v103 = v42;
    v104 = v249;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    __swift_project_value_buffer(v105, logger);
    v106 = a2;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    v109 = os_log_type_enabled(v107, v108);
    v110 = v254;
    v111 = v256;
    if (v109)
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v112 = 138412290;
      *(v112 + 4) = v106;
      *v113 = v106;
      v114 = v106;
      _os_log_impl(&dword_220099000, v107, v108, "Channel identifier of channel %@ was nil", v112, 0xCu);
      outlined destroy of UUID?(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v115 = v113;
      v34 = v260;
      MEMORY[0x223D77FF0](v115, -1, -1);
      MEMORY[0x223D77FF0](v112, -1, -1);
    }

    outlined consume of Data._Representation(v252, v253);
    outlined consume of Data._Representation(v261, v34);
    outlined consume of Data._Representation(v250, v104);
    outlined consume of Data._Representation(v245, v246);

    goto LABEL_94;
  }

  v100 = v99;
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v243 = v102;

  if (!v51)
  {
    goto LABEL_61;
  }

  if (v101 != v49 || v51 != v243)
  {
    v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v116)
    {
      goto LABEL_59;
    }

LABEL_61:
    v103 = v42;
    v123 = v249;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    __swift_project_value_buffer(v124, logger);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v253;
    v129 = v254;
    v130 = v252;
    v111 = v256;
    if (v127)
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_220099000, v125, v126, "Payload channel ID does not match the channel it was published on", v131, 2u);
      MEMORY[0x223D77FF0](v131, -1, -1);
    }

    outlined consume of Data._Representation(v130, v128);
    outlined consume of Data._Representation(v261, v260);
    outlined consume of Data._Representation(v250, v123);
    outlined consume of Data._Representation(v245, v246);

    goto LABEL_94;
  }

LABEL_59:
  v117 = &selRef_executeRequest_error_;
  v118 = [v244 presenceIdentifier];
  if (v118)
  {
    v119 = v118;
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    v117 = &selRef_executeRequest_error_;
  }

  else
  {
    v120 = 0;
    v122 = 0;
  }

  v132 = [a2 v117[371]];
  if (!v132)
  {
    v137 = v42;
    v138 = v249;

    v139 = v256;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    __swift_project_value_buffer(v140, logger);
    v141 = a2;
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();

    v144 = os_log_type_enabled(v142, v143);
    v145 = v254;
    if (v144)
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v146 = 138412290;
      *(v146 + 4) = v141;
      *v147 = v141;
      v148 = v141;
      _os_log_impl(&dword_220099000, v142, v143, "Presence identifier of channel %@ was nil", v146, 0xCu);
      outlined destroy of UUID?(v147, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v149 = v147;
      v34 = v260;
      MEMORY[0x223D77FF0](v149, -1, -1);
      MEMORY[0x223D77FF0](v146, -1, -1);
    }

    outlined consume of Data._Representation(v252, v253);
    outlined consume of Data._Representation(v261, v34);
    outlined consume of Data._Representation(v250, v138);
    outlined consume of Data._Representation(v245, v246);

    v150 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
    v60 = *(*(v150 - 8) + 56);
    v61 = v150;
    v62 = v139;
    goto LABEL_22;
  }

  v133 = v132;
  v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v136 = v135;

  v111 = v256;
  if (!v122)
  {
    goto LABEL_84;
  }

  if (v134 == v120 && v122 == v136)
  {

    goto LABEL_78;
  }

  v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v151 & 1) == 0)
  {
LABEL_84:
    v103 = v42;
    v172 = v249;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v173 = type metadata accessor for Logger();
    __swift_project_value_buffer(v173, logger);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    v176 = os_log_type_enabled(v174, v175);
    v178 = v252;
    v177 = v253;
    if (!v176)
    {
      goto LABEL_93;
    }

    v179 = swift_slowAlloc();
    *v179 = 0;
    v180 = "Payload presence ID does not match the identifier of the channel it was published on";
    goto LABEL_92;
  }

LABEL_78:
  v152 = v244;
  v153 = [v244 tokenUri];
  if (!v153)
  {
    v103 = v42;
    v172 = v249;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v181 = type metadata accessor for Logger();
    __swift_project_value_buffer(v181, logger);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    v182 = os_log_type_enabled(v174, v175);
    v178 = v252;
    v177 = v253;
    if (!v182)
    {
      goto LABEL_93;
    }

    v179 = swift_slowAlloc();
    *v179 = 0;
    v180 = "Missing token URI";
LABEL_92:
    _os_log_impl(&dword_220099000, v174, v175, v180, v179, 2u);
    MEMORY[0x223D77FF0](v179, -1, -1);
LABEL_93:
    outlined consume of Data._Representation(v178, v177);
    outlined consume of Data._Representation(v261, v260);
    outlined consume of Data._Representation(v250, v172);
    outlined consume of Data._Representation(v245, v246);

LABEL_94:
    v183 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
    v60 = *(*(v183 - 8) + 56);
    v61 = v183;
    v62 = v111;
    goto LABEL_22;
  }

  v242 = v136;
  v154 = v153;
  v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v156;

  [v152 timestamp];
  v158 = v259;
  Date.init(timeIntervalSince1970:)();
  outlined init with copy of Date?(a4, v13);
  v159 = v255;
  v160 = v251;
  if ((*(v255 + 48))(v13, 1, v251) == 1)
  {
    v161 = v42;
    v162 = v249;

    outlined destroy of UUID?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v163 = v252;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v164 = type metadata accessor for Logger();
    __swift_project_value_buffer(v164, logger);
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.error.getter();
    v167 = os_log_type_enabled(v165, v166);
    v168 = v253;
    v169 = v259;
    v170 = v256;
    if (v167)
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_220099000, v165, v166, "Server time was nil", v171, 2u);
      MEMORY[0x223D77FF0](v171, -1, -1);
      outlined consume of Data._Representation(v261, v260);

      outlined consume of Data._Representation(v245, v246);
      outlined consume of Data._Representation(v250, v162);
      outlined consume of Data._Representation(v163, v168);
    }

    else
    {
      outlined consume of Data._Representation(v163, v253);
      outlined consume of Data._Representation(v250, v162);
      outlined consume of Data._Representation(v261, v260);

      outlined consume of Data._Representation(v245, v246);
    }

    (*(v255 + 8))(v169, v251);
    v197 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
    v198 = *(*(v197 - 8) + 56);
    v199 = v170;
    return v198(v199, 1, 1, v197);
  }

  v184 = *(v159 + 32);
  v184(v258, v13, v160);
  static SKAPresentDevicesManager.mostRecentAssertionTime(for:withDevices:)(v155, v157, v247, v257);
  Date.timeIntervalSince1970.getter();
  v186 = v185;
  Date.timeIntervalSince1970.getter();
  if (v186 > v187)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v188 = type metadata accessor for Logger();
    __swift_project_value_buffer(v188, logger);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    v191 = os_log_type_enabled(v189, v190);
    v192 = v256;
    v193 = v254;
    v194 = v249;
    if (!v191)
    {
      goto LABEL_116;
    }

    v195 = swift_slowAlloc();
    *v195 = 0;
    v196 = "Assertion time is older than existing presence, dropping";
LABEL_115:
    _os_log_impl(&dword_220099000, v189, v190, v196, v195, 2u);
    MEMORY[0x223D77FF0](v195, -1, -1);
LABEL_116:
    outlined consume of Data._Representation(v261, v260);

    outlined consume of Data._Representation(v245, v246);
    outlined consume of Data._Representation(v250, v194);
    outlined consume of Data._Representation(v252, v253);
    v219 = *(v255 + 8);
    v220 = v251;
    v219(v257, v251);
    v219(v258, v220);
    v219(v158, v220);
    v197 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
    v198 = *(*(v197 - 8) + 56);
    v199 = v192;
    return v198(v199, 1, 1, v197);
  }

  v200 = v157;
  Date.timeIntervalSince1970.getter();
  if (vabdd_f64(v201, v21) >= 600.0)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v215 = type metadata accessor for Logger();
    __swift_project_value_buffer(v215, logger);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.default.getter();
    v216 = os_log_type_enabled(v189, v190);
    v192 = v256;
    v193 = v254;
    v194 = v249;
    if (!v216)
    {
      goto LABEL_116;
    }

    v195 = swift_slowAlloc();
    *v195 = 0;
    v196 = "Assertion time deviated too much from server received time! Asserting device clock out of sync or replay attack";
    goto LABEL_115;
  }

  Date.timeIntervalSince1970.getter();
  v203 = v202;
  Date.timeIntervalSince1970.getter();
  if (v203 - v204 >= 86400.0)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v217 = type metadata accessor for Logger();
    __swift_project_value_buffer(v217, logger);
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    v218 = os_log_type_enabled(v189, v190);
    v192 = v256;
    v193 = v254;
    v194 = v249;
    if (!v218)
    {
      goto LABEL_116;
    }

    v195 = swift_slowAlloc();
    *v195 = 0;
    v196 = "Assertion time is more than a day in the future, dropping. Our clock might be out of sync";
    goto LABEL_115;
  }

  v248 = v42;
  v205 = [v244 clientPayload];
  if (v205)
  {
    v206 = v205;
    v207 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v208;

    v210 = objc_allocWithZone(MEMORY[0x277D68108]);
    outlined copy of Data._Representation(v207, v209);
    v211 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v207, v209);
    v212 = [v210 initWithData_];

    v213 = objc_opt_self();
    v262[0] = 0;
    if (![v213 isClientPayloadValid:v212 withError:v262])
    {
      v230 = v262[0];

      v231 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v232 = type metadata accessor for Logger();
      __swift_project_value_buffer(v232, logger);
      v233 = v231;
      v234 = Logger.logObject.getter();
      v235 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v234, v235))
      {
        v236 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        *v236 = 138412290;
        v238 = v231;
        v239 = _swift_stdlib_bridgeErrorToNSError();
        *(v236 + 4) = v239;
        *v237 = v239;
        _os_log_impl(&dword_220099000, v234, v235, "Incoming payload failed validation, payload was likely too large: %@", v236, 0xCu);
        outlined destroy of UUID?(v237, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v237, -1, -1);
        MEMORY[0x223D77FF0](v236, -1, -1);
      }

      outlined consume of Data._Representation(v261, v260);

      outlined consume of Data._Representation(v245, v246);
      outlined consume of Data._Representation(v207, v209);
      outlined consume of Data._Representation(v250, v249);
      outlined consume of Data._Representation(v252, v253);
      v240 = *(v255 + 8);
      v241 = v251;
      v240(v257, v251);
      v240(v258, v241);
      v240(v259, v241);
      v197 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
      v198 = *(*(v197 - 8) + 56);
      v199 = v256;
      return v198(v199, 1, 1, v197);
    }

    v214 = v262[0];
    outlined consume of Data._Representation(v261, v260);

    outlined consume of Data._Representation(v207, v209);
  }

  else
  {

    v212 = [objc_allocWithZone(MEMORY[0x277D68108]) initWithData_];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v221 = type metadata accessor for Logger();
    __swift_project_value_buffer(v221, logger);
    v222 = Logger.logObject.getter();
    v223 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      *v224 = 0;
      _os_log_impl(&dword_220099000, v222, v223, "Incoming present device has no client-specified payload", v224, 2u);
      MEMORY[0x223D77FF0](v224, -1, -1);
    }

    outlined consume of Data._Representation(v261, v260);
  }

  outlined consume of Data._Representation(v250, v249);
  outlined consume of Data._Representation(v252, v253);
  v225 = *(v255 + 8);
  v226 = v251;
  v225(v257, v251);
  v225(v258, v226);
  v227 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
  v228 = v256;
  v184(v256 + *(v227 + 32), v259, v226);
  v229 = v246;
  *v228 = v245;
  v228[1] = v229;
  v228[2] = v244;
  v228[3] = v212;
  v228[4] = v155;
  v228[5] = v200;
  return (*(*(v227 - 8) + 56))(v228, 0, 1, v227);
}

uint64_t closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v20 = v4;
  v6 = v0[4];
  v5 = v0[5];
  v22 = v0[9];
  v7 = v0[3];
  v23 = v0[6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v21 = *(v3 + 16);
  v21(v2, v5, v4);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  v19 = *(v3 + 32);
  v19(v10 + v9, v2, v4);
  *(v10 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v21(v2, v5, v4);
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v23;
  v19(v11 + v9, v2, v20);
  v12 = v6;
  swift_bridgeObjectRetain_n();
  v13 = v12;

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  v15 = v0[11];
  v16 = v0[2];
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821B5F00](v16, v15, &async function pointer to partial apply for closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v10, &async function pointer to partial apply for closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), v11, v17);
}

void closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    outlined destroy of UUID?(*(v2 + 88), &_sScPSgMd, &_sScPSgMR);

    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMd, &_sScS12ContinuationV11YieldResultOy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV__GMR);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo6IDSURICSo28IDSPayloadVerificationResultCGs5Error_pGMd, &_sScCySDySo6IDSURICSo28IDSPayloadVerificationResultCGs5Error_pGMR);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = *(type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0) - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v48 = v0;
  v1 = v0[23];
  v46 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  v0[39] = v2;
  if (v2)
  {
    v3 = v0[38];
    v40 = v0[37];
    v4 = v0[33];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v43 = *(v4 + 72);
    do
    {
      outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v5, v0[38]);
      v6 = *(v3 + 32);
      v7 = *(v3 + 40);
      v8 = objc_allocWithZone(MEMORY[0x277D18A48]);
      v9 = MEMORY[0x223D76B00](v6, v7);
      v10 = [v8 initWithPrefixedURI_];

      if (v10)
      {
        v11 = [*(v3 + 16) data];
        if (!v11)
        {
          __break(1u);
          return MEMORY[0x282200938](v11);
        }

        v12 = v11;
        v44 = v0[38];
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = objc_allocWithZone(MEMORY[0x277D189E0]);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v18 = Data._bridgeToObjectiveC()().super.isa;
        v19 = [v16 initWithSignedPayload:isa payloadData:v18 remoteURI:v10];

        v0 = v42;
        outlined consume of Data._Representation(v13, v15);

        v20 = outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v44);
        v3 = v41;
        if (v19)
        {
          MEMORY[0x223D76BD0](v20);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v22 = v0[37];
        v21 = v0[38];
        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, logger);
        outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v21, v22);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        v26 = os_log_type_enabled(v24, v25);
        v27 = v0[37];
        if (v26)
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v47 = v29;
          *v28 = 136315138;
          v30 = *(v40 + 32);
          v31 = *(v40 + 40);

          outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v27);
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v47);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_220099000, v24, v25, "IDSURI for tokenURI %s was nil", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          v33 = v29;
          v3 = v41;
          MEMORY[0x223D77FF0](v33, -1, -1);
          v0 = v42;
          MEMORY[0x223D77FF0](v28, -1, -1);
        }

        else
        {

          outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v27);
        }

        outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v0[38]);
      }

      v5 += v43;
      --v2;
    }

    while (v2);
  }

  v34 = v0[31];
  v35 = v0[32];
  v36 = v0[30];
  v45 = *(v0[24] + OBJC_IVAR___SKAPresentDevicesManager_messagingProvider);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPayloadVerificationContext, 0x277D189E0);
  v37 = Array._bridgeToObjectiveC()().super.isa;
  v0[40] = v37;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  swift_continuation_init();
  v0[17] = v36;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo6IDSURICSo28IDSPayloadVerificationResultCGMd, &_sSDySo6IDSURICSo28IDSPayloadVerificationResultCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v34 + 32))(boxed_opaque_existential_0, v35, v36);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?, @unowned NSDictionary?) -> () with result type [IDSURI : IDSPayloadVerificationResult];
  v0[13] = &block_descriptor_3;
  [v45 verifySignedPayloads:v37 completion:?];
  (*(v34 + 8))(boxed_opaque_existential_0, v36);
  v11 = v0 + 2;

  return MEMORY[0x282200938](v11);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  else
  {
    v2 = closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v73 = v0;
  v62 = v0 + 18;
  v1 = v0[40];
  v71 = v0[18];
  if ((v71 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaDictionary.makeIterator()();

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v71 = v2 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v71 + 32);
    v4 = ~v6;
    v7 = *(v71 + 64);

    v3 = v71 + 64;
    if (-v6 < 64)
    {
      v8 = ~(-1 << -v6);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & v7;
  }

  v9 = 0;
  v10 = (v4 + 64) >> 6;
  v60 = (v0[28] + 8);
  v68 = v0[35];
  v61 = v0[33];
  v63 = v3;
  v64 = v0;
  v65 = v10;
  while ((v71 & 0x8000000000000000) != 0)
  {
    v19 = __CocoaDictionary.Iterator.next()();
    if (!v19 || (v21 = v20, v62[2] = v19, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSURI, 0x277D18A48), swift_dynamicCast(), v22 = v62[1], v62[4] = v21, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPayloadVerificationResult, 0x277D189E8), v17 = v22, swift_dynamicCast(), v18 = v62[3], v13 = v9, v14 = v5, !v17))
    {
LABEL_41:
      sub_2200A4D24(v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
      AsyncStream.Continuation.finish()();

      v59 = v0[1];

      v59();
      return;
    }

LABEL_18:
    v70 = v17;
    v23 = [v18 uri];
    v24 = [v23 prefixedURI];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [v18 error];
    v69 = v18;
    if (v28)
    {
      v29 = v28;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);

      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v66 = v14;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v72 = v36;
        *v34 = 136315394;
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v72);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2112;
        v38 = v31;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v39;
        *v35 = v39;
        _os_log_impl(&dword_220099000, v32, v33, "Signature verification for %s failed with error %@", v34, 0x16u);
        outlined destroy of UUID?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v40 = v35;
        v3 = v63;
        MEMORY[0x223D77FF0](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v0 = v64;
        MEMORY[0x223D77FF0](v36, -1, -1);
        MEMORY[0x223D77FF0](v34, -1, -1);

        v9 = v13;
        v10 = v65;
        v5 = v66;
      }

      else
      {

        v9 = v13;
        v5 = v14;
        v10 = v65;
      }
    }

    else
    {
      v67 = v14;
      if ([v18 verified])
      {
        if (v0[39])
        {
          v41 = 0;
          v42 = v0[23] + ((*(v61 + 80) + 32) & ~*(v61 + 80));
          v43 = *(v61 + 72);
          while (1)
          {
            outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v42, v0[35]);
            v44 = *(v68 + 32) == v25 && *(v68 + 40) == v27;
            if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v41;
            v45 = v0[39];
            outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v0[35]);
            v42 += v43;
            if (v41 == v45)
            {
              goto LABEL_32;
            }
          }

          v54 = v0[35];
          v53 = v0[36];
          v55 = v0[34];
          v56 = v0[29];
          v57 = v64[27];

          v58 = v54;
          v10 = v65;
          outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(v58, v53);
          outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v53, v55);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
          AsyncStream.Continuation.yield(_:)();

          v0 = v64;
          (*v60)(v56, v57);
          outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v53);
        }

        else
        {
LABEL_32:
        }

        v9 = v13;
        v5 = v67;
        v3 = v63;
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, logger);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v72 = v50;
          *v49 = 136315138;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v72);

          *(v49 + 4) = v51;
          v0 = v64;
          _os_log_impl(&dword_220099000, v47, v48, "Payload data signature for %s failed to verify", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          v52 = v50;
          v3 = v63;
          MEMORY[0x223D77FF0](v52, -1, -1);
          MEMORY[0x223D77FF0](v49, -1, -1);
        }

        else
        {
        }

        v9 = v13;
        v5 = v67;
      }
    }
  }

  v11 = v9;
  v12 = v5;
  v13 = v9;
  if (v5)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v71 + 56) + v15);
    v17 = *(*(v71 + 48) + v15);
    v18 = v16;
    if (!v17)
    {
      goto LABEL_41;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_41;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v22 = v1;
  v2 = v1[40];
  swift_willThrow();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = v1[41];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);

  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[41];
  if (v8)
  {
    v10 = v1[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    v14 = MEMORY[0x223D76C00](v10, MEMORY[0x277D837D0]);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_220099000, v6, v7, "Signature verification for URIs (%s) failed with error %@", v11, 0x16u);
    outlined destroy of UUID?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D77FF0](v13, -1, -1);
    MEMORY[0x223D77FF0](v11, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
  AsyncStream.Continuation.finish()();

  v19 = v1[1];

  return v19();
}

uint64_t closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = type metadata accessor for ContinuousClock();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:), 0, 0);
}

uint64_t closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v1 = (*(v0 + 40) + OBJC_IVAR___SKAPresentDevicesManager_verifyPayloadTimeout);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);

  return specialized Clock.sleep(for:tolerance:)(v3, v2, 0, 0, 1);
}

{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v14 = v1;
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 48);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x223D76C00](v5, MEMORY[0x277D837D0]);
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_220099000, v3, v4, "Participant payload verification for URIs (%s) timed out", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D77FF0](v7, -1, -1);
      MEMORY[0x223D77FF0](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR);
    AsyncStream.Continuation.finish()();
  }

  v11 = *(v1 + 8);

  return v11();
}

void static SKAPresentDevicesManager.mostRecentAssertionTime(for:withDevices:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = objc_opt_self();
  v16 = MEMORY[0x223D76B00](a1, a2);
  isa = [v15 deviceTokenForTokenURI_];

  if (isa)
  {
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    outlined copy of Data._Representation(v18, v20);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v55 = v20;
    v56 = v18;
    outlined consume of Data._Representation(v18, v20);
  }

  else
  {
    v55 = 0xF000000000000000;
    v56 = 0;
  }

  v61 = specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(isa);
  v63 = v21;

  v59 = a4;
  v60 = v8;
  v57 = v14;
  v58 = v9;
  v53 = v11;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(&lazy protocol witness table cache variable for type SKPresentDevice and conformance NSObject, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    Set.Iterator.init(_cocoa:)();
    v22 = v66;
    v23 = v67;
    v24 = v68;
    v25 = v69;
    v26 = v70;
  }

  else
  {
    v27 = -1 << *(a3 + 32);
    v23 = a3 + 56;
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(a3 + 56);

    v25 = 0;
  }

  v54 = v24;
  v30 = (v24 + 64) >> 6;
  v62 = v22;
  while (v22 < 0)
  {
    v36 = __CocoaSet.Iterator.next()();
    if (!v36 || (v64 = v36, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118), swift_dynamicCast(), v35 = v65, v33 = v25, v34 = v26, !v65))
    {
LABEL_30:
      v22 = v62;
LABEL_31:
      sub_2200A4D24(v22);

      v44 = v57;
      v43 = v58;
      v45 = v60;
      (*(v58 + 56))(v57, 1, 1, v60);
      Date.init(timeIntervalSince1970:)();
      outlined consume of Data?(v56, v55);
      if ((*(v43 + 48))(v44, 1, v45) != 1)
      {
        outlined destroy of UUID?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      return;
    }

LABEL_22:
    v37 = [v35 deviceIdentifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (v63)
    {
      if (v38 == v61 && v63 == v40)
      {

LABEL_34:
        sub_2200A4D24(v62);

        v46 = [v35 assertionTime];

        v47 = v53;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        outlined consume of Data?(v56, v55);

        v49 = v57;
        v48 = v58;
        v50 = *(v58 + 32);
        v51 = v47;
        v52 = v60;
        v50(v57, v51, v60);
        (*(v48 + 56))(v49, 0, 1, v52);
        v50(v59, v49, v52);
        return;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v25 = v33;
    v26 = v34;
    v22 = v62;
  }

  v31 = v25;
  v32 = v26;
  v33 = v25;
  if (v26)
  {
LABEL_18:
    v34 = (v32 - 1) & v32;
    v35 = *(*(v22 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v35)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      goto LABEL_31;
    }

    v32 = *(v23 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

id SKAPresentDevicesManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SKAPresentDevicesManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SKAPresentDevicesManager.activePresentDevices(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](SKAPresentDevicesManager.activePresentDevices(for:), 0, 0);
}

uint64_t SKAPresentDevicesManager.activePresentDevices(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo15SKPresentDeviceCGMd, &_sShySo15SKPresentDeviceCGMR);
  *v2 = v0;
  v2[1] = SKAPresentDevicesManager.activePresentDevices(for:);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000002201ACFB0, partial apply for closure #1 in SKAPresentDevicesManager.activePresentDevices(for:), v1, v3);
}

{

  return MEMORY[0x2822009F8](SKAPresentDevicesManager.activePresentDevices(for:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  (*(v7 + 16))(&v16 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = partial apply for closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:);
  v12[5] = v11;
  v13 = a2;
  v14 = a3;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)partial apply, v12);
}

uint64_t closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)(v2, v3, v5, v4);
}

uint64_t partial apply for closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)(v2, v3);
}

uint64_t partial apply for closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v6 = a1;
  result = [v6 ska_hexString];
  if (result)
  {
    v8 = result;
    v9 = [result ska_sha256Hash];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v18[0] = v10;
    v18[1] = v12;
    static String.Encoding.ascii.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v13 = StringProtocol.cString(using:)();
    (*(v3 + 8))(v5, v2);

    if (v13)
    {
      v14 = v13 + 32;
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];

    v16 = [v15 UUIDString];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v17;
  }

  __break(1u);
  return result;
}

void *specialized SKAPresentDevicesManager.createPresentDevice(with:on:)(void *a1)
{
  v3 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v7 = a1[4];
  v6 = a1[5];
  v8 = MEMORY[0x223D76B00](v7, v6);
  v9 = [v5 deviceTokenForTokenURI_];

  if (v9)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = *(v1 + OBJC_IVAR___SKAPresentDevicesManager_messagingProvider);
  v14 = [v13 deviceToken];
  if (v14)
  {
    v15 = v14;
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v91 = 0;
    v17 = 0xF000000000000000;
  }

  v90 = v10;
  if (v12 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    outlined copy of Data._Representation(v10, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v10, v12);
  }

  v88 = specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(isa);
  v20 = v19;

  if (!v20)
  {
    goto LABEL_23;
  }

  v89 = v17;
  v86 = v3;
  if (v17 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v22 = v6;
    v23 = a1;
    v24 = v12;
    v25 = v7;
    v26 = v91;
    outlined copy of Data._Representation(v91, v17);
    v21 = Data._bridgeToObjectiveC()().super.isa;
    v27 = v26;
    v7 = v25;
    v12 = v24;
    a1 = v23;
    v6 = v22;
    outlined consume of Data?(v27, v17);
  }

  v28 = specialized static SKAPresentDevicesManager.deviceIdentifier(for:)(v21);
  v30 = v29;

  if (!v30)
  {

    v17 = v89;
LABEL_23:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, logger);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v90;
    if (v48)
    {
      v50 = v17;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_220099000, v46, v47, "Could not get device identifiers", v51, 2u);
      MEMORY[0x223D77FF0](v51, -1, -1);
      outlined consume of Data?(v49, v12);
      v52 = v91;
      v53 = v50;
    }

    else
    {
      outlined consume of Data?(v90, v12);
      v52 = v91;
      v53 = v17;
    }

    goto LABEL_28;
  }

  v31 = MEMORY[0x223D76B00](v7, v6);
  v32 = [v5 handleForTokenURI_];

  if (!v32)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, logger);
    v56 = v87;
    outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(a1, v87);
    v46 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v58 = os_log_type_enabled(v46, v57);
    v59 = v90;
    if (!v58)
    {
      outlined consume of Data?(v90, v12);
      outlined consume of Data?(v91, v89);

      outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v56);
      return 0;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v92 = v61;
    *v60 = 136315138;
    v62 = *(v56 + 32);
    v63 = *(v56 + 40);

    outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(v56);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v92);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_220099000, v46, v57, "Could not get handle for token: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x223D77FF0](v61, -1, -1);
    MEMORY[0x223D77FF0](v60, -1, -1);
    outlined consume of Data?(v59, v12);
    v52 = v91;
    v53 = v89;
LABEL_28:
    outlined consume of Data?(v52, v53);

    return 0;
  }

  v85 = v28;
  v82 = v32;
  v83 = [v13 isHandleAvailableToMessageFrom_];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, logger);

  v87 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v84 = v6;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92 = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v30, &v92);
    _os_log_impl(&dword_220099000, v35, v36, "Self device identifier: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223D77FF0](v39, -1, -1);
    MEMORY[0x223D77FF0](v38, -1, -1);
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v92 = v43;
    *v42 = 136315138;
    v44 = v88;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v20, &v92);
    _os_log_impl(&dword_220099000, v40, v41, "Other device identifier: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223D77FF0](v43, -1, -1);
    MEMORY[0x223D77FF0](v42, -1, -1);
  }

  else
  {

    v44 = v88;
  }

  if (v44 == v85 && v20 == v30)
  {
    v65 = 1;
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v66 = a1[3];
  v67 = objc_allocWithZone(MEMORY[0x277D68118]);
  v68 = v82;
  v69 = MEMORY[0x223D76B00](v44, v20);

  v70 = MEMORY[0x223D76B00](v7, v84);
  v71 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v80) = v65 & 1;
  v72 = [v67 initWithHandle:v68 deviceIdentifier:v69 deviceTokenURI:v70 payload:v66 assertionTime:v71 selfHandle:v83 selfDevice:v80];

  v73 = v72;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = v73;

  if (os_log_type_enabled(v74, v75))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    *(v77 + 4) = v76;
    *v78 = v76;
    v79 = v76;
    _os_log_impl(&dword_220099000, v74, v75, "Constructed SKPresentDevice from payload: %@", v77, 0xCu);
    outlined destroy of UUID?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v78, -1, -1);
    MEMORY[0x223D77FF0](v77, -1, -1);
  }

  outlined consume of Data?(v90, v12);
  outlined consume of Data?(v91, v89);

  return v76;
}

uint64_t type metadata completion function for SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for DecryptedParticipantPayload, off_27843D378);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for SKPresencePayload, 0x277D68108);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)partial apply()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)(v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyShySo15SKPresentDeviceCGs5NeverOGMd, &_sScCyShySo15SKPresentDeviceCGs5NeverOGMR);

  return closure #1 in closure #1 in SKAPresentDevicesManager.activePresentDevices(for:)(a1);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1)
{
  v2 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of SKAPresentDevicesManager.SKAPayloadVerificationContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKAPresentDevicesManager.SKAPayloadVerificationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t partial apply for closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMd, &_sScS12ContinuationVy18StatusKitAgentCore24SKAPresentDevicesManagerC29SKAPayloadVerificationContextV_GMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #2 in closure #3 in closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)(a1, v6, v7, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?, @unowned Bool) -> () with result type Bool(uint64_t a1, void *a2, char a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void *SKAPresenceClientProxy.underlyingClient.getter()
{
  v1 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SKAPresenceClientProxy.underlyingClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SKAPresenceClientProxy.__allocating_init(xpcConnection:queue:delegate:subscriptionManager:presenceManager:invitationManager:databaseManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___SKAPresenceClientProxy_underlyingClient] = 0;
  v15 = OBJC_IVAR___SKAPresenceClientProxy_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *&v14[v15] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001BLL, 0x80000002201AD270, 1, 0);
  v16 = [objc_opt_self() clientIDForConnection_];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  v21 = &v14[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  *v21 = v18;
  v21[1] = v20;
  v31.receiver = v14;
  v31.super_class = v8;
  v22 = objc_msgSendSuper2(&v31, sel_init);
  v23 = objc_allocWithZone(SKAPresenceClient);
  v24 = v22;
  v25 = [v23 initWithXPCConnection:a1 queue:a2 delegate:a3 subscriptionManager:a4 presenceManager:a5 invitationManager:a6 databaseManager:a7 daemonProtocolDelegate:v24];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v26 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v27 = *&v24[v26];
  *&v24[v26] = v25;

  return v24;
}

char *SKAPresenceClientProxy.init(xpcConnection:queue:delegate:subscriptionManager:presenceManager:invitationManager:databaseManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR___SKAPresenceClientProxy_underlyingClient] = 0;
  v15 = OBJC_IVAR___SKAPresenceClientProxy_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *&v7[v15] = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001BLL, 0x80000002201AD270, 1, 0);
  v16 = [objc_opt_self() clientIDForConnection_];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  v21 = &v8[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  *v21 = v18;
  v21[1] = v20;
  v31.receiver = v8;
  v31.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v31, sel_init);
  v23 = objc_allocWithZone(SKAPresenceClient);
  v24 = v22;
  v25 = [v23 initWithXPCConnection:a1 queue:a2 delegate:a3 subscriptionManager:a4 presenceManager:a5 invitationManager:a6 databaseManager:a7 daemonProtocolDelegate:v24];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v26 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  v27 = *&v24[v26];
  *&v24[v26] = v25;

  return v24;
}

void SKAPresenceClientProxy.().init()()
{
  *(v0 + OBJC_IVAR___SKAPresenceClientProxy_underlyingClient) = 0;
  v1 = OBJC_IVAR___SKAPresenceClientProxy_queue;
  type metadata accessor for SKAAsyncQueue(0);
  swift_allocObject();
  *(v0 + v1) = specialized SKAAsyncQueue.init(name:loggingEnabled:isolation:)(0xD00000000000001BLL, 0x80000002201AD270, 1, 0);
  v2 = Selector.description.getter();
  MEMORY[0x223D76B90](v2);

  MEMORY[0x223D76B90](0x64616574736E6920, 0xE90000000000002ELL);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *SKAPresenceClientProxy.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(30);

  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {
    v4 = [result description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x223D76B90](v5, v7);

    MEMORY[0x223D76B90](15934, 0xE200000000000000);
    return 0xD00000000000001ALL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8SKHandleCGSgs5Error_pGMd, &_sScCySaySo8SKHandleCGSgs5Error_pGMR);
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v6;
  v3[33] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:), v6, v5);
}

uint64_t SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[34] = v4;
  if (v4)
  {
    v5 = v0[30];
    v6 = v0[31];
    v7 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[35] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8SKHandleCGSgMd, &_sSaySo8SKHandleCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKHandle]?;
    v0[13] = &block_descriptor_4;
    [v13 invitedHandlesForPresenceIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
  }

  else
  {
    v5 = SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v4 = v1[34];
  swift_willThrow();

  swift_getErrorValue();
  Error.sanitizedError.getter(v1[22], v1[23]);
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  *(v0 + 48) = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:);

  return SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(v2, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invitedHandles(forPresenceIdentifier:)(Class a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v8 = a1;
LABEL_3:
    v9 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v8 = 0;
    goto LABEL_3;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = isa;
  v8 = 0;
  a1 = isa;
LABEL_6:
  v11 = *(v5 + 40);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15SKPresentDeviceCGSgs5Error_pGMd, &_sScCySaySo15SKPresentDeviceCGSgs5Error_pGMR);
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v6;
  v3[33] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:), v6, v5);
}

uint64_t SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)()
{
  v1 = v0[28];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[34] = v4;
  if (v4)
  {
    v5 = v0[30];
    v6 = v0[31];
    v7 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[35] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15SKPresentDeviceCGSgMd, &_sSaySo15SKPresentDeviceCGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKPresentDevice]?;
    v0[13] = &block_descriptor_4_0;
    [v13 presentDevicesForPresenceIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
  }

  else
  {
    v5 = SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [SKHandle]?(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      type metadata accessor for OS_dispatch_queue(0, a6, a7);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  *(v0 + 48) = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:);

  return SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(v2, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.presentDevices(forPresenceIdentifier:)(Class a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v8 = a1;
LABEL_3:
    v9 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v8 = 0;
    goto LABEL_3;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = isa;
  v8 = 0;
  a1 = isa;
LABEL_6:
  v11 = *(v5 + 40);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[33] = v8;
  v5[34] = v7;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:), v8, v7);
}

uint64_t SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)()
{
  v1 = v0[29];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[35] = v4;
  if (v4)
  {
    v5 = v0[31];
    v6 = v0[32];
    v7 = v0[30];
    v9 = v0[27];
    v8 = v0[28];
    v14 = v0[25];
    v15 = v0[26];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[36] = v10;
    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    v0[13] = &block_descriptor_8;
    [v13 isHandleInvited:v14 fromSenderHandle:v15 forPresenceIdentifier:v10 completion:v0 + 10];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  }

  else
  {
    v5 = SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(uint64_t a1)
{
  v3 = v1[36];
  v2 = v1[37];
  v4 = v1[35];
  swift_willThrow();

  swift_getErrorValue();
  Error.sanitizedError.getter(v1[22], v1[23]);
  swift_willThrow();

  v5 = v1[1];

  return v5(0);
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 64) = v5;
  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  return SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(v12, v11, v4, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.isHandleInvited(_:fromSenderHandle:forPresenceIdentifier:)(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 56);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 56), a1 & 1, 0);
  }

  _Block_release(*(v6 + 56));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20SKHandleInvitabilityCSgs5Error_pGMd, &_sScCySo20SKHandleInvitabilityCSgs5Error_pGMR);
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[34] = v8;
  v5[35] = v7;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:), v8, v7);
}

uint64_t SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)()
{
  v1 = v0[30];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[36] = v4;
  if (v4)
  {
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[31];
    v9 = v0[28];
    v8 = v0[29];
    v14 = v0[26];
    v15 = v0[27];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[37] = v10;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SKHandleInvitabilityCSgMd, &_sSo20SKHandleInvitabilityCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKHandleInvitability?, @unowned NSError?) -> () with result type SKHandleInvitability?;
    v0[13] = &block_descriptor_12;
    [v13 fetchHandleInvitability:v14 fromHandle:v15 forPresenceIdentifier:v10 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  }

  else
  {
    v5 = SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(uint64_t a1)
{
  v3 = v1[37];
  v2 = v1[38];
  v4 = v1[36];
  swift_willThrow();

  swift_getErrorValue();
  Error.sanitizedError.getter(v1[22], v1[23]);
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned SKHandleInvitability?, @unowned NSError?) -> () with result type SKHandleInvitability?(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20SKHandleInvitabilityCSgs5Error_pGMd, &_sScCySo20SKHandleInvitabilityCSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo20SKHandleInvitabilityCSgs5Error_pGMd, &_sScCySo20SKHandleInvitabilityCSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 64) = v5;
  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:);
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);

  return SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(v12, v11, v4, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchHandleInvitability(_:from:forPresenceIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 56);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 56), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v7, v6);
}

uint64_t SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[13] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v6 = swift_allocObject();
  v0[14] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;
  v7 = v4;

  v8 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "invite(_:fromSenderHandle:presenceIdentifier:)";
  *(v3 + 32) = 46;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, partial apply for specialized closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:), v3, v5);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 88);
    v5 = *(v2 + 96);
    v3 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v1, v2);
}

{
  v1 = v0[17];
  swift_getErrorValue();
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v9;
  v6[30] = v8;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v9, v8);
}

uint64_t closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[31] = v4;
  if (v4)
  {
    v5 = v0[27];
    v6 = v0[28];
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    v15 = v0[23];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
    v14 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[32] = isa;
    v11 = MEMORY[0x223D76B00](v9, v8);
    v0[33] = v11;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_322;
    [v14 inviteHandles:isa fromSenderHandle:v15 presenceIdentifier:v11 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  else
  {
    v5 = closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1)
{
  v2 = v1[33];
  v4 = v1[31];
  v3 = v1[32];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = v3;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 72) = v5;
  v7 = v2;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  v10 = *(v0 + 24);

  return SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:)(v3, v10, v4, v6);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 24);
  v7 = *v1;

  v8 = *(v3 + 56);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v6, v5);
}

uint64_t SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v0[12] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v5 = swift_allocObject();
  v0[13] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v1;
  v6 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "removeInvitedHandles(_:presenceIdentifier:)";
  *(v3 + 32) = 43;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v5);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v3 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v1, v2);
}

{
  v1 = v0[16];
  swift_getErrorValue();
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v8;
  v5[29] = v7;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v8, v7);
}

uint64_t closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[30] = v4;
  if (v4)
  {
    v5 = v0[26];
    v6 = v0[27];
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[23];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
    v14 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[31] = isa;
    v11 = MEMORY[0x223D76B00](v9, v8);
    v0[32] = v11;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_313;
    [v14 removeInvitedHandles:isa presenceIdentifier:v11 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  }

  else
  {
    v5 = closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1)
{
  v2 = v1[32];
  v4 = v1[30];
  v3 = v1[31];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:), v6, v5);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = _Block_copy(*(v0 + 32));
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKHandle, 0x277D680C0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  *(v0 + 64) = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = @objc closure #1 in SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:);

  return SKAPresenceClientProxy.removeInvitedHandles(_:presenceIdentifier:)(v2, v3, v5);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *v1;

  v7 = *(v3 + 48);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3[11] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *&v2[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  v4 = *&v2[OBJC_IVAR___SKAPresenceClientProxy_clientID + 8];
  v6 = type metadata accessor for SKACALogger.SKACALogToken(0);
  v7 = objc_allocWithZone(v6);
  static Date.now.getter();
  *&v7[OBJC_IVAR___SKACALogToken_event] = 2;
  v8 = &v7[OBJC_IVAR___SKACALogToken_client];
  *v8 = v5;
  *(v8 + 1) = v4;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;

  *(v0 + 112) = objc_msgSendSuper2((v0 + 40), sel_init);
  *(v0 + 120) = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v9 = swift_allocObject();
  *(v0 + 128) = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v1;
  v10 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "retainTransientSubscriptionAssertion(forPresenceIdentifier:)";
  *(v3 + 32) = 60;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v5);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 96);
    v5 = *(v2 + 104);
    v3 = SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *&v1[OBJC_IVAR___SKACALogToken_event];
  v4 = *&v1[OBJC_IVAR___SKACALogToken_client];
  v5 = *&v1[OBJC_IVAR___SKACALogToken_client + 8];
  v6 = OBJC_IVAR___SKACALogToken_startTime;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, &v1[v6], v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v3, v4, v5, v2);
  outlined destroy of Date?(v2);

  v9 = v0[1];

  return v9();
}

{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v1, v2);
}

{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];
  v4 = *&v2[OBJC_IVAR___SKACALogToken_event];
  v5 = *&v2[OBJC_IVAR___SKACALogToken_client];
  v6 = *&v2[OBJC_IVAR___SKACALogToken_client + 8];
  v7 = OBJC_IVAR___SKACALogToken_startTime;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, &v2[v7], v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(v1, v4, v5, v6, v3);
  outlined destroy of Date?(v3);
  swift_getErrorValue();
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v7, v6);
}

uint64_t closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_309;
    [v13 retainTransientSubscriptionAssertionForPresenceIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  }

  else
  {
    v5 = closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  *(v0 + 48) = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);

  return SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:)(v2, v4);
}

uint64_t SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[11] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "releaseTransientSubscriptionAssertion(forPresenceIdentifier:)";
  *(v3 + 32) = 61;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v5);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v3 = SKAPresenceClientProxy.invite(_:fromSenderHandle:presenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v1, v2);
}

uint64_t closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v7, v6);
}

uint64_t closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_305;
    [v13 releaseTransientSubscriptionAssertionForPresenceIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  *(v0 + 48) = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);

  return SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:)(v2, v4);
}

uint64_t SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[13] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v7, v6);
}

uint64_t SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v7 = *&v1[OBJC_IVAR___SKAPresenceClientProxy_clientID];
  v6 = *&v1[OBJC_IVAR___SKAPresenceClientProxy_clientID + 8];
  v8 = type metadata accessor for SKACALogger.SKACALogToken(0);
  v9 = objc_allocWithZone(v8);
  static Date.now.getter();
  *&v9[OBJC_IVAR___SKACALogToken_event] = 0;
  v10 = &v9[OBJC_IVAR___SKACALogToken_client];
  *v10 = v7;
  *(v10 + 1) = v6;
  *(v0 + 40) = v9;
  *(v0 + 48) = v8;

  *(v0 + 128) = objc_msgSendSuper2((v0 + 40), sel_init);
  *(v0 + 136) = *&v1[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v11 = swift_allocObject();
  *(v0 + 144) = v11;
  v11[2] = v1;
  v11[3] = v5;
  v11[4] = v3;
  v11[5] = v4;
  v11[6] = v2;
  v12 = v4;
  v13 = v2;
  v14 = v1;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "assertPresence(forIdentifier:with:assertionOptions:)";
  *(v3 + 32) = 52;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v5);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v3 = SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *&v1[OBJC_IVAR___SKACALogToken_event];
  v4 = *&v1[OBJC_IVAR___SKACALogToken_client];
  v5 = *&v1[OBJC_IVAR___SKACALogToken_client + 8];
  v6 = OBJC_IVAR___SKACALogToken_startTime;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, &v1[v6], v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  specialized static SKACALogger._logSuccess(_:for:startTime:)(v3, v4, v5, v2);
  outlined destroy of Date?(v2);

  v9 = v0[1];

  return v9();
}

{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v1, v2);
}

{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[13];
  v4 = *&v2[OBJC_IVAR___SKACALogToken_event];
  v5 = *&v2[OBJC_IVAR___SKACALogToken_client];
  v6 = *&v2[OBJC_IVAR___SKACALogToken_client + 8];
  v7 = OBJC_IVAR___SKACALogToken_startTime;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, &v2[v7], v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  specialized static SKACALogger._logFailure(with:event:for:startTime:)(v1, v4, v5, v6, v3);
  outlined destroy of Date?(v3);
  swift_getErrorValue();
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v9;
  v6[30] = v8;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v9, v8);
}

uint64_t closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[31] = v4;
  if (v4)
  {
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[26];
    v8 = v0[23];
    v14 = v0[24];
    v15 = v0[25];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[32] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_301;
    [v13 assertPresenceForIdentifier:v10 withPresencePayload:v14 assertionOptions:v15 completion:v0 + 10];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  }

  else
  {
    v5 = closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[31];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:), v7, v6);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 56) = _Block_copy(*(v0 + 40));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  *(v0 + 64) = v5;
  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = @objc closure #1 in SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);

  return SKAPresenceClientProxy.assertPresence(forIdentifier:with:assertionOptions:)(v4, v6, v11, v12);
}

{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;

  v9 = *(v3 + 56);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releasePresence(forIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[11] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.releasePresence(forIdentifier:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "releasePresence(forIdentifier:)";
  *(v3 + 32) = 31;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v5);
}

uint64_t closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x2822009F8](closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:), v7, v6);
}

uint64_t closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[29] = v4;
  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v13 = v4;
    v10 = MEMORY[0x223D76B00](v9, v8);
    v0[30] = v10;
    v0[2] = v0;
    v0[3] = closure #1 in SKAPresenceClientProxy.retainTransientSubscriptionAssertion(forPresenceIdentifier:);
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_297;
    [v13 releasePresenceForIdentifier:v10 completion:v0 + 10];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:), v5, v4);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.releasePresence(forIdentifier:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  *(v0 + 48) = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in SKAPresenceClientProxy.releaseTransientSubscriptionAssertion(forPresenceIdentifier:);

  return SKAPresenceClientProxy.releasePresence(forIdentifier:)(v2, v4);
}

uint64_t SKAPresenceClientProxy.fetchPresenceCapability()()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.fetchPresenceCapability(), v4, v3);
}

{
  v1 = v0[21];
  v2 = OBJC_IVAR___SKAPresenceClientProxy_underlyingClient;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v0[27] = v4;
  if (v4)
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = SKAPresenceClientProxy.fetchPresenceCapability();
    swift_continuation_init();
    v0[17] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    v9 = v4;
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[13] = &block_descriptor_54;
    [v9 fetchPresenceCapability_];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);
    v3 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v3);
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.fetchPresenceCapability(), v2, v1);
}

{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability(), v4, v3);
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability();

  return SKAPresenceClientProxy.fetchPresenceCapability()();
}

uint64_t @objc closure #1 in SKAPresenceClientProxy.fetchPresenceCapability()(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for SKAPrimaryQueueActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type SKAPrimaryQueueActor and conformance SKAPrimaryQueueActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), v5, v4);
}

uint64_t SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[11] = *&v2[OBJC_IVAR___SKAPresenceClientProxy_queue];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = v2;

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = "rollChannel(forPresenceIdentifier:)";
  *(v3 + 32) = 35;
  *(v3 + 40) = 2;
  *(v3 + 48) = &async function pointer to partial apply for closure #1 in SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x80000002201AB3F0, closure #1 in SKAAsyncQueue.enqueueAndWait<A>(_:_:)specialized partial apply, v3, v5);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v3 = SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](SKAPresenceClientProxy.rollChannel(forPresenceIdentifier:), v1, v2);
}

{
  v1 = v0[15];
  swift_getErrorValue();
  Error.sanitizedError.getter(v0[3], v0[4]);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}