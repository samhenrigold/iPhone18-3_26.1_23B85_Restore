uint64_t SSMetricsMutableEvent.dictionaryRepresentation.getter()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  [v0 appendPropertiesToBody:v1];
  v2 = v1;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  return 0;
}

uint64_t SSMetricsMutableEvent.setPropertiesForMetricsBase(with:completionHandler:)(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v6);
      v8 = v7;

      if (v8)
      {
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (one-time initialization token for deviceFamily != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  [v2 setProperty:v10 forBodyKey:v11];

  if (one-time initialization token for deviceModel != -1)
  {
    swift_once();
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  [v2 setProperty:v12 forBodyKey:v13];

  if (one-time initialization token for deviceType != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.deviceType > 2u)
  {
    if (static DeviceCapabilities.deviceType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (static DeviceCapabilities.deviceType - 1 >= 2)
  {
    goto LABEL_16;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  [v2 setProperty:v14 forBodyKey:v15];

LABEL_16:
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 systemVersion];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = String._bridgeToObjectiveC()();
  [v2 setProperty:v17 forBodyKey:v18];

  return a2();
}

uint64_t SSMetricsMutableEvent.setPropertiesForMetricsClientConfiguration(with:completionHandler:)(void *a1, uint64_t (*a2)(void))
{
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  v9 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    __swift_project_boxed_opaque_existential_0Tm(&v19, *(&v20 + 1));
    v10 = *(*(&v18 + 1) - 8);
    v11 = __chkstk_darwin();
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = String._bridgeToObjectiveC()();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a2();
}

uint64_t SSMetricsMutableEvent.setPropertiesForDeviceStorageCapacity(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v7 = *(v25 - 8);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = partial apply for closure #1 in SSMetricsMutableEvent.setPropertiesForDeviceStorageCapacity(with:completionHandler:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_151;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

void closure #1 in SSMetricsMutableEvent.setPropertiesForDeviceStorageCapacity(with:completionHandler:)(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v31 = a2;
  v7 = specialized static DeviceCapabilities.diskUsage.getter();
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_SSTt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in SSMetricsMutableEvent.setPropertiesForDeviceStorageCapacity(with:completionHandler:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_SStMd, &_s9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_SStMR);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = SSMetricsConfiguration.fieldsRequiringReducedResolution.getter()) == 0)
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = v32;
  v10 = v32 + 8;
  v11 = 1 << *(v32 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v32[8];
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_13:
    v13 = (v15 - 1) & v15;
    if (v7[2])
    {
      v17 = __clz(__rbit64(v15)) | (v8 << 6);
      v18 = (v9[7] + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(v7[7] + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin();
        v28[2] = v34;

        if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = String._bridgeToObjectiveC()();

        [v31 setProperty:v25 forBodyKey:v26];

        v9 = v32;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v30(v27);
      return;
    }

    v15 = v10[v16];
    ++v8;
    if (v15)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t SSMetricsMutableEvent.setStandardProperties(with:functions:completionHandler:)(void *a1, void *a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v8 = a2[2];
  if (!v8)
  {
    return a3(a1);
  }

  v9 = a2;
  v11 = a2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v9[3] >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v9);
    v20 = v9;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;
  v19 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = closure #1 in SSMetricsMutableEvent.setStandardProperties(with:functions:completionHandler:)specialized partial apply;
  *(v14 + 24) = v13;
  v18[0] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v18[1] = v14;
  v15 = a1;

  v16 = v5;
  v11(&v19, v18);
}

uint64_t _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TR(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v7);
}

uint64_t implicit closure #12 in implicit closure #11 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = String._bridgeToObjectiveC()();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void closure #1 in SSMetricsBaseEvent.setStandardProperties(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_76;
  v6 = _Block_copy(aBlock);

  v7.receiver = a1;
  v7.super_class = SSMetricsBaseEvent;
  objc_msgSendSuper2(&v7, "setStandardPropertiesWith:completionHandler:", a2, v6);
  _Block_release(v6);
}

void ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = partial apply for closure #1 in ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:);
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t closure #1 in ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_160;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void closure #1 in closure #1 in ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(void *a1)
{
  if (one-time initialization token for shared == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
    if (!v3)
    {
      return;
    }
  }

  v1 = [a1 performanceMetrics];
  if (v1)
  {
    v2 = v1;
    specialized MetricsEvent.LoadUrl.init(performanceMetrics:)(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    outlined destroy of MetricsEvent.LoadUrl(&v4);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t SSMetricsLoadURLEvent.sessionDuration.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v7, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }
}

uint64_t NSUserDefaults.forceLoadUrlSampling.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 23;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(&v1, &_sypSgMd_0, &_sypSgMR_0);
  }

  return 0;
}

uint64_t NSUserDefaults.forceComponentRenderSampling.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 28;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(&v1, &_sypSgMd_0, &_sypSgMR_0);
  }

  return 0;
}

uint64_t NSUserDefaults.metricsTimingWindowStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    v2 = type metadata accessor for Date();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    outlined destroy of TaskPriority?(&v6, &_sypSgMd_0, &_sypSgMR_0);
    v5 = type metadata accessor for Date();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t NSUserDefaults.metricsTimingWindowStartTime.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v3 = v9 - v2;
  outlined init with copy of TaskPriority?(a1, v9 - v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
    (*(v5 + 32))(boxed_opaque_existential_1, v3, v4);
  }

  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x80000001004C7CF0;
  v7 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String, v7);
  return outlined destroy of TaskPriority?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t Music_SSMetricsComponentRenderEvent.samplingPercentageUsers.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v7, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }
}

id Music_SSMetricsComponentRenderEvent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t NSUserDefaults.forcePageRenderSampling.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 23;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(&v1, &_sypSgMd_0, &_sypSgMR_0);
  }

  return 0;
}

uint64_t NSUserDefaults.pageRenderSessionTimingWindowStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    v2 = type metadata accessor for Date();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    outlined destroy of TaskPriority?(&v6, &_sypSgMd_0, &_sypSgMR_0);
    v5 = type metadata accessor for Date();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t NSUserDefaults.pageRenderSessionTimingWindowStartTime.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v3 = v9 - v2;
  outlined init with copy of TaskPriority?(a1, v9 - v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
    (*(v5 + 32))(boxed_opaque_existential_1, v3, v4);
  }

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001004C7CC0;
  v7 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String, v7);
  return outlined destroy of TaskPriority?(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void @objc SSMetricsLoadURLEvent.setStandardProperties(with:completionHandler:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v14 = a1;
  v13 = a3;
  a7(a3, v14, v14, a3, a6, v12);
}

id DeviceCapabilitiesObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id Music_SSMetricsPageRenderEvent.__allocating_init(bodyDictionary:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithBodyDictionary:isa];

  return v4;
}

id Music_SSMetricsPageRenderEvent.init(bodyDictionary:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithBodyDictionary:", isa);

  return v4;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL specialized static MetricsPageProperties.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
  __chkstk_darwin();
  v12 = &v31 - v11;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v31 = v7;
  v32 = type metadata accessor for MetricsPageProperties(0);
  v13 = *(v32 + 24);
  v14 = *(v10 + 48);
  outlined init with copy of TaskPriority?(a1 + v13, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(a2 + v13, &v12[v14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_14;
    }

LABEL_11:
    outlined destroy of TaskPriority?(v12, &_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  outlined init with copy of TaskPriority?(v12, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_11;
  }

  v17 = &v12[v14];
  v18 = v31;
  (*(v5 + 32))(v31, v17, v4);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v9, v4);
  outlined destroy of TaskPriority?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v21 = v32;
  v22 = *(v32 + 28);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v23, v24);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = *(v21 + 32);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    return v30 && (*v27 == *v29 && v28 == v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v30;
}

void specialized Music_SSMetricsPageRenderEvent.setSamplingProperties(with:_:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = NSUserDefaults.forcePageRenderSampling.getter();

  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v15 = String._bridgeToObjectiveC()();
  [a2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  *&aBlock = 0x646E655265676170;
  *(&aBlock + 1) = 0xEA00000000007265;
  v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v17 = String._bridgeToObjectiveC()();
  [a2 setProperty:v16 forBodyKey:v17];
  swift_unknownObjectRelease();

  if (!a1)
  {
    aBlock = 0u;
    v40 = 0u;
LABEL_14:
    outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_15;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [a1 valueForConfigurationKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
  if (swift_dynamicCast())
  {
    v20 = *(v36 + 16);
    if (v20)
    {
      v21 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000021, 0x80000001004C7C50);
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v34 = 0;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      outlined init with copy of Any(*(v36 + 56) + 32 * v21, &aBlock);
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v23 = swift_dynamicCast();
      v20 = v36;
      if (!v23)
      {
        v20 = 0;
      }
    }

    v34 = v20;
    if (v13)
    {
LABEL_13:
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v24.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
      goto LABEL_21;
    }

LABEL_18:
    if (v20)
    {
      v24.super.super.isa = v20;
    }

    else
    {
      v24.super.super.isa = 0;
    }

LABEL_21:
    v26 = v24.super.super.isa;
    v27 = String._bridgeToObjectiveC()();
    [a2 setProperty:v26 forBodyKey:v27];

    if (*(v36 + 16) && (v28 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000019, 0x80000001004C7C80), (v29 & 1) != 0))
    {
      outlined init with copy of Any(*(v36 + 56) + 32 * v28, &aBlock);

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v30 = v36;
LABEL_27:
        v31 = v30;
        v32 = String._bridgeToObjectiveC()();
        [a2 setProperty:v31 forBodyKey:v32];

        v41 = a5;
        v42 = a6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v40 = thunk for @escaping @callee_guaranteed () -> ();
        *(&v40 + 1) = &block_descriptor_167;
        v33 = _Block_copy(&aBlock);

        v35.receiver = a3;
        v35.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
        objc_msgSendSuper2(&v35, "setStandardPropertiesWith:completionHandler:", a4, v33);
        _Block_release(v33);

        return;
      }
    }

    else
    {
    }

    v30 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v41 = a5;
  v42 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v40 + 1) = &block_descriptor_164_0;
  v25 = _Block_copy(&aBlock);

  v38.receiver = a3;
  v38.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
  objc_msgSendSuper2(&v38, "setStandardPropertiesWith:completionHandler:", a4, v25);
  _Block_release(v25);
}

unint64_t specialized MetricsContentType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000E3B0C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MetricsContentType and conformance MetricsContentType()
{
  result = lazy protocol witness table cache variable for type MetricsContentType and conformance MetricsContentType;
  if (!lazy protocol witness table cache variable for type MetricsContentType and conformance MetricsContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsContentType and conformance MetricsContentType);
  }

  return result;
}

uint64_t sub_1000E3BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E3CA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MetricsPageProperties(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : String]?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void specialized SSMetricsMutableEvent.setPropertiesForActiveUser(with:completionHandler:)(void (*a1)(uint64_t, uint64_t))
{
  v3 = [objc_opt_self() defaultIdentityStore];
  v4 = [objc_opt_self() activeAccount];
  v21[0] = 0;
  v5 = [v3 DSIDForUserIdentity:v4 outError:v21];

  if (v5)
  {
    v6 = v21[0];
    [v1 setAccountIdentifier:v5];
    v7 = [v5 longLongValue] != 0;
  }

  else
  {
    v8 = v21[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    [v1 setAccountIdentifier:0];
    v7 = 1;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithBool:v7];
  v10 = String._bridgeToObjectiveC()();
  [v1 setProperty:v9 forBodyKey:v10];

  v11 = [objc_opt_self() sharedController];
  v12 = [v11 musicSubscriptionStatus];

  if (v12)
  {
    v13 = [v12 statusType];
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_13;
      }

      [v12 reasonType];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        do
        {
          v21[0] = 0;
          v21[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(24);
          a1 = 0xD000000000000013;
          v14._object = 0x80000001004C7BF0;
          v14._countAndFlagsBits = 0xD000000000000013;
          String.append(_:)(v14);
          [v12 statusType];
          v15._countAndFlagsBits = 0xD00000000000001DLL;
          v15._object = 0x80000001004C7C10;
          String.append(_:)(v15);
          v16._countAndFlagsBits = 32;
          v16._object = 0xE100000000000000;
          String.append(_:)(v16);
          [v12 statusType];
          type metadata accessor for ICMusicSubscriptionStatusType(0);
          _print_unlocked<A, B>(_:_:)();
          v13 = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_13:
          ;
        }

        while (v13 != 3);
      }
    }

    else
    {
    }
  }

  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  [v1 setProperty:v17 forBodyKey:v18];

  a1(v19, v20);
}

uint64_t specialized SSMetricsMutableEvent.setPropertiesForApplication(with:completionHandler:)(uint64_t (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = [swift_getObjCClassFromMetadata() Topic];
  [v2 setTopic:v4];

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v7)
  {
LABEL_8:
    v11 = 1;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v8 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000012, 0x80000001004C7BA0);
  if ((v9 & 1) == 0)
  {

    goto LABEL_10;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = String._bridgeToObjectiveC()();

  v11 = 0;
LABEL_12:
  [v2 setApplicationIdentifier:v10];

  if (v11)
  {
    goto LABEL_18;
  }

  if (!*(v7 + 16) || (v12 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001ALL, 0x80000001004C7B80), (v13 & 1) == 0))
  {

    goto LABEL_18;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v12, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = String._bridgeToObjectiveC()();

LABEL_19:
  v15 = String._bridgeToObjectiveC()();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a1();
}

void specialized SSMetricsMutableEvent.setPropertiesForDebuggingNetworkActivity(with:completionHandler:)(void (*a1)(void))
{
  v3 = [objc_opt_self() currentConnectionTypeHeader];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  [v1 setConnection:v3];

  v4 = objc_allocWithZone(ICStoreRequestContext);
  v8[4] = CFRange.init(_:);
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v8[3] = &block_descriptor_145;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithBlock:v5];
  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = [v6 userAgent];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v1 setUserAgent:v7];

    a1();
  }
}

uint64_t specialized SSMetricsMutableEvent.setStandardProperties(with:functions:completionHandler:)(void *a1, void *a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[4];
    _Block_copy(a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > a2[3] >> 1)
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, a2);
      v19 = a2;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
    v12[6] = v8;
    v18 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for specialized closure #1 in SSMetricsMutableEvent.setStandardProperties(with:functions:completionHandler:);
    *(v13 + 24) = v12;
    v17[0] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v17[1] = v13;
    v14 = a1;

    v15 = a3;
    v10(&v18, v17);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4);
  }
}

uint64_t specialized SSMetricsMutableEvent.setStandardProperties(with:completionHandler:)(void *a1, void *a2, void (**a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySo22SSMetricsConfigurationCSg_yyctcGMd, &_ss23_ContiguousArrayStorageCyySo22SSMetricsConfigurationCSg_yyctcGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2F60;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for implicit closure #2 in implicit closure #1 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v8 + 24) = v7;
  *(v6 + 32) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for implicit closure #4 in implicit closure #3 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v10 + 24) = v9;
  *(v6 + 48) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA_89;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for implicit closure #6 in implicit closure #5 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v12 + 24) = v11;
  *(v6 + 64) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA_89;
  *(v6 + 72) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for implicit closure #8 in implicit closure #7 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v14 + 24) = v13;
  *(v6 + 80) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA_89;
  *(v6 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for implicit closure #10 in implicit closure #9 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v16 + 24) = v15;
  *(v6 + 96) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA_89;
  *(v6 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #12 in implicit closure #11 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v18 + 24) = v17;
  *(v6 + 112) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA_89;
  *(v6 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for implicit closure #14 in implicit closure #13 in SSMetricsMutableEvent.setStandardProperties(with:completionHandler:);
  *(v20 + 24) = v19;
  *(v6 + 128) = _sSo22SSMetricsConfigurationCSgIeg_Ieggg_ACxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA_89;
  *(v6 + 136) = v20;
  specialized SSMetricsMutableEvent.setStandardProperties(with:functions:completionHandler:)(a1, v6, a2, a3);
}

uint64_t specialized SSMetricsBaseEvent.setPropertiesForUserInterfaceState(with:completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 windowHeight];
  v7 = String._bridgeToObjectiveC()();
  [v3 setProperty:v6 forBodyKey:v7];

  v8 = [v3 windowWidth];
  v9 = String._bridgeToObjectiveC()();
  [v3 setProperty:v8 forBodyKey:v9];

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:), v10);
}

void specialized SSMetricsLoadURLEvent.setSamplingProperties(with:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  Url = NSUserDefaults.forceLoadUrlSampling.getter();

  [a2 setXPSamplingForced:Url & 1];
  if (!a1)
  {
    aBlock = 0u;
    v27 = 0u;
LABEL_20:
    outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_21;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 valueForConfigurationKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v27 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
  if (swift_dynamicCast())
  {
    if (*(v23 + 16))
    {
      v16 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000017, 0x80000001004C7A90);
      if (v17)
      {
        outlined init with copy of Any(*(v23 + 56) + 32 * v16, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSamplingPercentageUsers:*&v23];
        }
      }
    }

    if (*(v23 + 16))
    {
      v18 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0x446E6F6973736573, 0xEF6E6F6974617275);
      if (v19)
      {
        outlined init with copy of Any(*(v23 + 56) + 32 * v18, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSessionDuration:*&v23];
        }
      }
    }

    if (*(v23 + 16) && (v20 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000021, 0x80000001004C7AB0), (v21 & 1) != 0))
    {
      outlined init with copy of Any(*(v23 + 56) + 32 * v20, &aBlock);

      if (swift_dynamicCast())
      {
        [a2 setXPSamplingPercentageCachedResponses:*&v23];
      }
    }

    else
    {
    }
  }

LABEL_21:
  if ([a2 xpSamplingForced])
  {
    [a2 setXPSamplingPercentageUsers:1.0];
    [a2 setXPSamplingPercentageCachedResponses:1.0];
  }

  v28 = a5;
  v29 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v27 + 1) = &block_descriptor_63;
  v22 = _Block_copy(&aBlock);

  v25.receiver = a3;
  v25.super_class = SSMetricsLoadURLEvent;
  objc_msgSendSuper2(&v25, "setStandardPropertiesWith:completionHandler:", a4, v22);
  _Block_release(v22);
}

void specialized Music_SSMetricsComponentRenderEvent.setSamplingProperties(with:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = NSUserDefaults.forceComponentRenderSampling.getter();

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v15 = String._bridgeToObjectiveC()();
  [a2 setProperty:isa forBodyKey:v15];

  if (!a1)
  {
    aBlock = 0u;
    v35 = 0u;
LABEL_10:
    outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_25;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [a1 valueForConfigurationKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  aBlock = v31;
  v35 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v13)
  {
    *(&v35 + 1) = &type metadata for Double;
    *&aBlock = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (*(v31 + 16))
  {
    v18 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD000000000000026, 0x80000001004C79E0);
    if (v19)
    {
      outlined init with copy of Any(*(v31 + 56) + 32 * v18, &aBlock);
LABEL_14:
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v20 = swift_dynamicCast();
      v21 = v31;
      if (!v20)
      {
        v21 = 0;
      }

      goto LABEL_18;
    }
  }

  aBlock = 0u;
  v35 = 0u;
  outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
  v21 = 0;
LABEL_18:
  v22 = v21;
  v23 = String._bridgeToObjectiveC()();
  [a2 setProperty:v22 forBodyKey:v23];

  if (*(v31 + 16) && (v24 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001ELL, 0x80000001004C7A10), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(v31 + 56) + 32 * v24, &aBlock);

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v26 = swift_dynamicCast();
    v27 = v31;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = v27;
  v29 = String._bridgeToObjectiveC()();
  [a2 setProperty:v28 forBodyKey:v29];

LABEL_25:
  v36 = a5;
  v37 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v35 + 1) = &block_descriptor_56_0;
  v30 = _Block_copy(&aBlock);

  v33.receiver = a3;
  v33.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  objc_msgSendSuper2(&v33, "setStandardPropertiesWith:completionHandler:", a4, v30);
  _Block_release(v30);
}

uint64_t sub_1000E57AC()
{

  return swift_deallocObject();
}

uint64_t sub_1000E583C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_130Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_69Tm()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
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

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  type metadata accessor for UIAction(0, &_sSo6UIViewCML_1, UIView_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  type metadata accessor for SyncedLyricsLineView(0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E5A90()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in MetricsContentType.init(modelObject:)()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) cloudStatus];
  if (result == 5 || result == 3)
  {
    *v1 = 18;
  }

  return result;
}

void static MusicCoreAnalytics.sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin();
  v49 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v39[-v8];
  v48 = v10;
  __chkstk_darwin();
  v12 = &v39[-v11];
  if (one-time initialization token for metrics != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.metrics);
  v14 = *(v6 + 16);
  v14(v12, a1, a2);
  v46 = v14;
  v47 = a1;
  v14(v9, a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v45 = v15;
  v17 = (a3 + 8);
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v44 = v18;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v18 = 136315395;
    v43 = *(a3 + 8);
    v41 = v17 & 0xFFFFFFFFFFFFLL | 0x60A1000000000000;
    v19 = v43(a2, a3);
    v21 = v20;
    v40 = v16;
    v22 = *(v6 + 8);
    v22(v12, a2);
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, aBlock);

    v24 = v44;
    *(v44 + 1) = v23;
    *(v24 + 6) = 2081;
    (*(a3 + 16))(a2, a3);
    v22(v9, a2);
    type metadata accessor for NSObject();
    v25 = Dictionary.description.getter();
    v27 = v26;

    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v27, aBlock);

    v29 = v44;
    *(v44 + 14) = v28;
    v30 = v45;
    _os_log_impl(&_mh_execute_header, v45, v40, "Send analytics event: %s, payload: %{private}s", v29, 0x16u);
    swift_arrayDestroy();

    v31 = v43;
  }

  else
  {
    v32 = *(v6 + 8);
    v32(v9, a2);

    v32(v12, a2);
    v31 = *v17;
  }

  v33 = v47;
  v31(a2, a3);
  v34 = v49;
  v46(v49, v33, a2);
  v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = a3;
  (*(v6 + 32))(v36 + v35, v34, a2);
  v37 = String._bridgeToObjectiveC()();

  aBlock[4] = partial apply for closure #1 in static MusicCoreAnalytics.sendEvent<A>(_:);
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_13;
  v38 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v38);
}

void static MusicCoreAnalytics.sendEvent(eventName:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t one-time initialization function for metrics()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.metrics);
  __swift_project_value_buffer(v0, static Logger.metrics);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E6288()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

void *MetricsEvent.PageRender.performanceMetrics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MetricsEvent.PageRender.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MetricsEvent.PageRender.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t outlined init with copy of MetricsPageProperties(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.PageRender.__allocating_init(pageProperties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetricsEvent.PageRender.init(pageProperties:)(a1);
  return v2;
}

uint64_t *MetricsEvent.PageRender.init(pageProperties:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 32) = 1;
  v1[5] = 0;
  *(v1 + 48) = 1;
  v1[7] = 0;
  *(v1 + 64) = 1;
  v1[9] = 0;
  *(v1 + 80) = 1;
  v1[11] = 0;
  *(v1 + 96) = 1;
  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[15] = 0;
  *(v1 + 128) = 1;
  (*(*(*(v3 + 80) - 8) + 56))(v1 + *(v3 + 152), 1, 1);
  *(v1 + *(*v1 + 168)) = 0;
  outlined init with take of MetricsPageProperties(a1, v1 + *(*v1 + 160));
  return v1;
}

uint64_t outlined init with take of MetricsPageProperties(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = a1;
  v8 = a1;

  result = *(v3 + 16);
  if (result)
  {
    [result responseEndTime];
    v11 = v10;
    result = swift_beginAccess();
    if ((*(v3 + 32) & 1) == 0)
    {
      swift_beginAccess();
      *(v3 + 72) = v11;
      *(v3 + 80) = 0;
      return MetricsEvent.PageRender.recordIfNecessary(pageContext:)(a2, a3);
    }
  }

  return result;
}

uint64_t MetricsEvent.PageRender.recordIfNecessary(pageContext:)(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + 168);
  if ((*(v2 + v3) & 1) == 0)
  {
    v5 = result;
    *(v2 + v3) = 1;
    type metadata accessor for OS_dispatch_queue();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = a2;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in MetricsEvent.PageRender.recordIfNecessary(pageContext:), v6);
  }

  return result;
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAppear()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 104) = v7;
    *(v1 + 112) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 120) = v7;
    *(v1 + 128) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAsUserInteractive()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 40) = v7;
    *(v1 + 48) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markResourceRequestStartTime()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 56) = v7;
    *(v1 + 64) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markOnScreenResourcesAppearEndTime(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *(v2 + 24) = v10;
    *(v2 + 32) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    if (v11)
    {
      [v11 responseEndTime];
      swift_beginAccess();
      *(v2 + 72) = v10;
      *(v2 + 80) = 0;
      MetricsEvent.PageRender.recordIfNecessary(pageContext:)(countAndFlagsBits, object);
    }
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 80) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 96) == 1)
    {
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v9 = v8;
      (*(v5 + 8))(v7, v4);
      *(v1 + 88) = v9;
      *(v1 + 96) = 0;
    }
  }

  MetricsEvent.PageRender.recordIfNecessary(pageContext:)(countAndFlagsBits, object);
}

void closure #1 in MetricsEvent.PageRender.recordIfNecessary(pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for shared != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(a1, a2, a3);
}

id *MetricsEvent.PageRender.deinit()
{
  v1 = *(*v0 + 19);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of MetricsPageProperties(v0 + *(*v0 + 20));
  return v0;
}

uint64_t outlined destroy of MetricsPageProperties(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.PageRender.__deallocating_deinit()
{
  MetricsEvent.PageRender.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for MetricsEvent.PageRender(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MetricsPageProperties(319);
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E74EC()
{

  return swift_deallocObject();
}

__n128 static ApplicationCapabilities.shared.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.Controller.shared;
}

__n128 ApplicationCapabilities.Controller.capabilities.getter@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t ApplicationCapabilities.Service.description.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636973756DLL;
    v7 = 0xD000000000000013;
    v8 = 0x6C6169636F73;
    if (a1 != 3)
    {
      v8 = 0x6F69646172;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646956636973756DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x6C62616E45696C6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73656E757469;
    v4 = 0x74634170756F7267;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ApplicationCapabilities.Service()
{
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.description.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ApplicationCapabilities.Service(uint64_t a1)
{
  ApplicationCapabilities.Service.description.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ApplicationCapabilities.Service(uint64_t a1)
{
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.description.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ApplicationCapabilities.Service@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ApplicationCapabilities.Service.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ApplicationCapabilities.Service@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationCapabilities.Service.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ApplicationCapabilities.Service()
{
  v0 = ApplicationCapabilities.Service.description.getter();
  v2 = v1;
  if (v0 == ApplicationCapabilities.Service.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Void __swiftcall ApplicationCapabilities.setServiceEnabled(_:service:)(Swift::Bool _, MusicCore::ApplicationCapabilities::Service service)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
    return;
  }

  if (service > MusicCore_ApplicationCapabilities_Service_itunes)
  {
    if (service <= MusicCore_ApplicationCapabilities_Service_accountModification)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else if (service > MusicCore_ApplicationCapabilities_Service_subscriptionRelated)
  {
    if (service == MusicCore_ApplicationCapabilities_Service_social)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service != MusicCore_ApplicationCapabilities_Service_radio)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else
  {
    if (service == MusicCore_ApplicationCapabilities_Service_music)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service == MusicCore_ApplicationCapabilities_Service_musicVideos)
    {
      v5 = v3;
LABEL_14:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();

      [v5 setBoolValue:1 forSetting:v4];

      v3 = v5;
    }
  }
}

uint64_t ApplicationCapabilities.ratingWarning.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t ApplicationCapabilities.RatingWarning.description.getter()
{
  strcpy(v12, "RatingWarning(");
  HIBYTE(v12[1]) = -18;
  *&v14 = 0x6C6F687365726874;
  *(&v14 + 1) = 0xEA00000000003D64;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x6C6F687365726874;
  v3._object = 0xEA00000000003D64;
  String.append(_:)(v3);

  v13._countAndFlagsBits = 0x3D656C746974;
  v13._object = 0xE600000000000000;
  v14 = *(v0 + 8);
  v11 = *(v0 + 8);
  outlined init with copy of TaskPriority?(&v14, &v10, &_sSSSgMd, &_sSSSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  String.append(_:)(v13);

  v11._countAndFlagsBits = 0x3D6567617373656DLL;
  v11._object = 0xE800000000000000;
  v13 = *(v0 + 24);
  v10 = *(v0 + 24);
  outlined init with copy of TaskPriority?(&v13, &v9, &_sSSSgMd, &_sSSSgMR);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  String.append(_:)(v11);

  return v12[0];
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ApplicationCapabilities.RatingWarning(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static ApplicationCapabilities.RatingWarning.__derived_struct_equals(_:_:)(v5, v7) & 1;
}

void *ApplicationCapabilities.subscriptionStatus.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ApplicationCapabilities.SubscriptionState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564696365646E75;
  v2 = 0x6269726373627573;
  if (a1 != 2)
  {
    v2 = 0x6275536563696F76;
  }

  if (a1)
  {
    v1 = 0x63697373616C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ApplicationCapabilities.SubscriptionState()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ApplicationCapabilities.SubscriptionState(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ApplicationCapabilities.SubscriptionState(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ApplicationCapabilities.SubscriptionState@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ApplicationCapabilities.SubscriptionState.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ApplicationCapabilities.SubscriptionState(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = 0xEA00000000007265;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6275536563696F76;
    v4 = 0xEF72656269726373;
  }

  if (*v1)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ApplicationCapabilities.Tabs.Configuration(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return specialized == infix<A>(_:_:)(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ApplicationCapabilities.Tabs.description.getter(uint64_t a1, char a2, uint64_t a3)
{
  v12._countAndFlagsBits = Array.description.getter();
  v12._object = v3;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v12);

  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13TabIdentifierOSgMd, &_s9MusicCore13TabIdentifierOSgMR);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000010;
  v7._object = 0x80000001004C7DE0;
  String.append(_:)(v7);

  _StringGuts.grow(_:)(21);

  v8._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x80000001004C7E00;
  String.append(_:)(v10);

  return 0x2873626154;
}

uint64_t static ApplicationCapabilities.Tabs.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore13TabIdentifierO_Tt1g5(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == 7)
  {
    if (a5 != 7)
    {
      return 0;
    }
  }

  else if (a5 == 7 || (specialized == infix<A>(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLV_Tt1g5(a3, a6);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "orites";
      switch(*v3)
      {
        case 1:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v6 = 0xD000000000000023;
          v7 = "LibraryView.Playlists";
          break;
        case 3:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Artists";
          break;
        case 4:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Albums";
          break;
        case 5:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Songs";
          break;
        case 6:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.MadeForYou";
          break;
        case 7:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.MusicVideos";
          break;
        case 8:
          v6 = 0xD000000000000028;
          v7 = "LibraryView.Genres";
          break;
        case 9:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Compilations";
          break;
        case 0xA:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Composers";
          break;
        case 0xB:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Shows";
          break;
        case 0xC:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*v4)
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore13TabIdentifierO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = 0x686372616573;
      if (v7 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x6573776F7262;
      if (v7 == 3)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v12 = 0x6F69646172;
        v13 = 0xE500000000000000;
      }

      if (*(v3 - 1) <= 4u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E5F6E657473696CLL;
      if (v7 == 1)
      {
        v14 = 0x756F795F726F66;
      }

      v15 = 0xE700000000000000;
      if (v7 != 1)
      {
        v15 = 0xEA0000000000776FLL;
      }

      if (!*(v3 - 1))
      {
        v14 = 0x636973756D5F796DLL;
        v15 = 0xE800000000000000;
      }

      if (*(v3 - 1) <= 2u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (*(v3 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (*(v4 - 1) <= 2u)
      {
        if (*(v4 - 1))
        {
          if (v8 == 1)
          {
            v5 = 0xE700000000000000;
            if (v16 != 0x756F795F726F66)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v5 = 0xEA0000000000776FLL;
            if (v16 != 0x6E5F6E657473696CLL)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          if (v16 != 0x636973756D5F796DLL)
          {
            goto LABEL_46;
          }
        }
      }

      else if (*(v4 - 1) > 4u)
      {
        if (v8 != 5)
        {
          v5 = 0xE500000000000000;
          v18 = 1701079414;
LABEL_45:
          if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
          {
            goto LABEL_46;
          }

          goto LABEL_6;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x686372616573)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 != 3)
        {
          v5 = 0xE500000000000000;
          v18 = 1768186226;
          goto LABEL_45;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x6573776F7262)
        {
          goto LABEL_46;
        }
      }

LABEL_6:
      if (v17 == v5)
      {

        if (v6 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_46:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v9))
      {
        return result;
      }

LABEL_8:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo16NSSortDescriptorC_Tt1g5Tm(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = type metadata accessor for UIAction(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8MusicKit8PlaylistV0bC8InternalE7VariantO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v11, v18, v8);
    lazy protocol witness table accessor for type Playlist.Entry and conformance Playlist.Entry(v31, v32, v33);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v11, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ApplicationCapabilities.Tabs(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore13TabIdentifierO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || (specialized == infix<A>(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLV_Tt1g5(v3, v5);
}

uint64_t ApplicationCapabilities.tabs.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t ApplicationCapabilities.stateDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2F70;
  *(inited + 32) = 0x64656E6769537369;
  *(inited + 40) = 0xEA00000000006E49;
  *(inited + 48) = *v0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001004C85F0;
  *(inited + 96) = *(v0 + 1);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001004C41A0;
  *(inited + 144) = *(v0 + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x80000001004C8610;
  closure #1 in ApplicationCapabilities.stateDictionary.getter(v0, (inited + 192));
  *(inited + 224) = 0x536465776F6C6C61;
  *(inited + 232) = 0xEF73656369767265;
  lazy protocol witness table accessor for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service();
  *(inited + 240) = Set.description.getter();
  *(inited + 248) = v2;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000001004C8630;
  *(inited + 288) = Set.description.getter();
  *(inited + 296) = v3;
  *(inited + 312) = &type metadata for String;
  strcpy((inited + 320), "ratingWarning");
  *(inited + 334) = -4864;
  *(inited + 336) = ApplicationCapabilities.RatingWarning.description.getter();
  *(inited + 344) = v4;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x80000001004C8650;
  v31 = *(v0 + 88);
  v30 = v31;
  outlined init with copy of TaskPriority?(&v31, v29, &_sSo25ICMusicSubscriptionStatusCSgMd, &_sSo25ICMusicSubscriptionStatusCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ICMusicSubscriptionStatusCSgMd, &_sSo25ICMusicSubscriptionStatusCSgMR);
  *(inited + 384) = String.init<A>(describing:)();
  *(inited + 392) = v5;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000001004C8670;
  v6 = *(v0 + 96);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 0xEA00000000007265;
      v7 = 0x6269726373627573;
    }

    else
    {
      v8 = 0xEF72656269726373;
      v7 = 0x6275536563696F76;
    }
  }

  else if (*(v0 + 96))
  {
    v8 = 0xE700000000000000;
    v7 = 0x63697373616C63;
  }

  else
  {
    v7 = 0x6564696365646E75;
    v8 = 0xE900000000000064;
  }

  *(inited + 432) = v7;
  *(inited + 440) = v8;
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 1935827316;
  *(inited + 472) = 0xE400000000000000;
  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v30;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == 5;
      v16 = 0xE900000000000073;
      if (v14 == 5)
      {
        v17 = 0x736F65646976;
      }

      else
      {
        v17 = 0x7473696C79616C70;
      }

      if (v15)
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == 3)
      {
        v18 = 0x6F69646172;
      }

      else
      {
        v18 = 0x686372616573;
      }

      if (v13 == 3)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v13 <= 4)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0xE900000000000077;
      if (v13 == 1)
      {
        v21 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v21 = 0x6573776F7262;
      }

      if (v13 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (!v13)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v13 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      if (v13 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      v30 = v11;
      v25 = v11[2];
      v24 = v11[3];
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v11 = v30;
      }

      v11[2] = v25 + 1;
      v26 = &v11[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      --v10;
    }

    while (v10);
  }

  *(inited + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 480) = v11;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd_0, &_sSS_yptMR_0);
  swift_arrayDestroy();
  return v27;
}

void closure #1 in ApplicationCapabilities.stateDictionary.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6564696C67;
      goto LABEL_11;
    }

LABEL_8:
    v5 = a2;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    a2 = v5;
    v4 = 0x3C6E776F6E6B6E75;
    v3 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
LABEL_11:
  a2[3] = &type metadata for String;
  *a2 = v4;
  a2[1] = v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ApplicationCapabilities(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return specialized static ApplicationCapabilities.__derived_struct_equals(_:_:)(v13, v14);
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for ApplicationCapabilities.Controller(0);
  swift_allocObject();
  result = ApplicationCapabilities.Controller.().init()();
  static ApplicationCapabilities.Controller.shared = result;
  return result;
}

{
  type metadata accessor for BackgroundFetchManager();
  result = swift_initStaticObject();
  static BackgroundFetchManager.shared = result;
  return result;
}

{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = CloudLibrary.StatusObserver.().init()();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

{
  type metadata accessor for ExplicitRestrictionsController(0);
  swift_allocObject();
  result = ExplicitRestrictionsController.().init()();
  static ExplicitRestrictionsController.shared = result;
  return result;
}

{
  type metadata accessor for CAPackage.PackageDataCache();
  swift_allocObject();
  result = CAPackage.PackageDataCache.init()();
  static CAPackage.PackageDataCache.shared = result;
  return result;
}

uint64_t static ApplicationCapabilities.Controller.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ApplicationCapabilities.Controller.().init()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) = 0;
  v2 = v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v3) = UnfairLock.init()();
  v4 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);
  *(v0 + v4) = *&v41[0];
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings) = _swiftEmptyArrayStorage;
  result = UIApp;
  if (UIApp)
  {
    *(v0 + 16) = [UIApp launchedToTest];
    type metadata accessor for MusicTabsDictionaryProvider();
    swift_allocObject();
    v6 = MusicTabsDictionaryProvider.init(musicTabsBagKey:lastKnownMusicTabsDictionaryDefaultsAccessor:)(0x626154636973756DLL, 0xE900000000000073, closure #1 in ApplicationCapabilities.Controller.().init(), 0);
    *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider) = v6;

    UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);
    v7 = *(v0 + 16);

    specialized ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(*&v41[0], v6, v7, v41);
    v8 = (v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
    v9 = v44;
    v10 = v45;
    v8[4] = v44;
    v8[5] = v10;
    v11 = v46;
    v12 = v47;
    v8[6] = v46;
    v8[7] = v12;
    v13 = v41[0];
    v14 = v41[1];
    *v8 = v41[0];
    v8[1] = v14;
    v15 = v42;
    v16 = v43;
    v8[2] = v42;
    v8[3] = v16;
    v39 = v11;
    v40 = v12;
    v37 = v9;
    v38 = v10;
    v35 = v15;
    v36 = v16;
    v33 = v13;
    v34 = v14;
    swift_beginAccess();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    aBlock = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    outlined init with copy of ApplicationCapabilities(&v33, &v24);
    Published.init(initialValue:)();
    swift_endAccess();
    v17 = swift_allocObject();
    swift_weakInit();

    MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(partial apply for closure #2 in ApplicationCapabilities.Controller.().init(), v17);

    UnfairLock.locked<A>(_:)(closure #1 in ApplicationCapabilities.Controller.updateState()partial apply);
    ApplicationCapabilities.Controller.beginObserving()();
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = String._bridgeToObjectiveC()();
    v20 = swift_allocObject();
    swift_weakInit();

    *&v27 = partial apply for closure #3 in ApplicationCapabilities.Controller.().init();
    *(&v27 + 1) = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = thunk for @escaping @callee_guaranteed (@unowned _MSVLogStateHints, @guaranteed @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> (@unowned UnsafeMutableRawPointer?)) -> (@unowned UnsafeMutableRawPointer?);
    *(&v26 + 1) = &block_descriptor_14;
    v21 = _Block_copy(&aBlock);

    v22 = MSVLogAddStateHandler();

    _Block_release(v21);

    v23 = v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
    *v23 = v22;
    *(v23 + 8) = 0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ApplicationCapabilities.Controller.().init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = NSUserDefaults.lastKnownStoreBagMusicTabsDictionary.getter();

  return v1;
}

uint64_t NSUserDefaults.lastKnownStoreBagMusicTabsDictionary.getter()
{
  LOBYTE(v1) = 1;
  lazy protocol witness table accessor for type NSUserDefaults.Key and conformance NSUserDefaults.Key();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDys11AnyHashableVypGGGMd, &_sSDySSSaySDys11AnyHashableVypGGGMR);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(&v2, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }
}

uint64_t closure #2 in ApplicationCapabilities.Controller.().init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(closure #1 in ApplicationCapabilities.Controller.updateState()partial apply);
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.beginObserving()()
{
  v1 = v0;
  type metadata accessor for Whitetail.Binding();
  v2 = ICUserIdentityStoreDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5.length = [v3 defaultIdentityStore];
  v5.location = v4;
  v62 = &type metadata for NotificationTrigger;
  v63 = &protocol witness table for NotificationTrigger;
  v61 = CFRange.init(_:)(v5);
  v6 = swift_allocObject();
  v55 = v1;
  swift_weakInit();
  v60 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, partial apply for closure #1 in ApplicationCapabilities.Controller.beginObserving(), v6);
  v7 = [objc_opt_self() sharedController];
  v8 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v9.location = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v9.length = v7;
  v10 = CFRange.init(_:)(v9);
  v62 = &type metadata for NotificationTrigger;
  v63 = &protocol witness table for NotificationTrigger;
  v61 = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v8;
  v58 = v7;
  v59 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, partial apply for closure #2 in ApplicationCapabilities.Controller.beginObserving(), v11);
  v56 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2F00;
  v14 = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v15.location = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v15.length = v56;
  v16 = CFRange.init(_:)(v15);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v16;
  v17 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
  v18 = CFRange.init(_:)(MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  v19 = RadioAvailabilityControllerRadioAvailableDidChangeNotification;
  v20 = CFRange.init(_:)(RadioAvailabilityControllerRadioAvailableDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v20;
  v21 = MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification;
  v22 = CFRange.init(_:)(MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification);
  *(inited + 176) = &type metadata for NotificationTrigger;
  *(inited + 184) = &protocol witness table for NotificationTrigger;
  *(inited + 152) = v22;
  v23 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  v24 = CFRange.init(_:)(MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification);
  *(inited + 216) = &type metadata for NotificationTrigger;
  *(inited + 224) = &protocol witness table for NotificationTrigger;
  *(inited + 192) = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v26 = v14;
  v57 = v56;
  v27 = v17;
  v28 = v19;
  v29 = v21;
  v30 = v23;

  v31 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, partial apply for closure #2 in ApplicationCapabilities.Controller.beginObserving(), v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1004F2F80;
  *(v32 + 32) = v60;
  *(v32 + 40) = v59;
  *(v32 + 48) = v31;
  v33 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings;
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v32);
  swift_endAccess();
  lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
  v35 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0xD000000000000014, 0x80000001004C8690, v34, &type metadata for NSUserDefaults.MobileiPod);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v62 = &type metadata for UserDefaultsKeyValueTrigger;
  v63 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v42 = swift_allocObject();
  v61.location = v42;
  v42[2] = v35;
  v42[3] = v37;
  v42[4] = v39;
  v42[5] = v41;
  v43 = swift_allocObject();
  swift_weakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, partial apply for closure #2 in ApplicationCapabilities.Controller.beginObserving(), v43);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v55 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v44 = [objc_allocWithZone(type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver()) init];
  v45 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver;
  v46 = *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver);
  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = v44;

  if (*(v55 + v45))
  {
    swift_weakAssign();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v47 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for BagProvider.Observer();
  v48 = swift_allocObject();
  swift_weakInit();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  swift_weakAssign();
  v49 = *(v48 + 24);
  v50 = *(v48 + 32);
  *(v48 + 24) = partial apply for closure #5 in ApplicationCapabilities.Controller.beginObserving();
  *(v48 + 32) = v47;
  swift_retain_n();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v49, v50);
  v61.location = 0;
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.createObserver(handler:));
  if (v61.location)
  {
    v51 = v61.location;
    closure #5 in ApplicationCapabilities.Controller.beginObserving()(v51, v47);
  }

  else
  {
    BagProvider.fetchBag(forceReload:)(0);
  }

  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = v48;

  v52 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();

  v53 = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, partial apply for closure #6 in ApplicationCapabilities.Controller.beginObserving(), v52);

  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = v53;
}

uint64_t closure #3 in ApplicationCapabilities.Controller.().init()(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v17;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    v6 = ApplicationCapabilities.stateDictionary.getter();
    outlined destroy of ApplicationCapabilities(v18);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);
    v8 = v7;

    v9 = a2(v8);

    return v9;
  }

  return result;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?) -> (@unowned UnsafeMutableRawPointer?)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

__n128 key path getter for ApplicationCapabilities.Controller.capabilities : ApplicationCapabilities.Controller@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
  *a2 = v4;
  a2[1] = v5;
  result = v7;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t key path setter for ApplicationCapabilities.Controller.capabilities : ApplicationCapabilities.Controller(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v12[12] = a1[4];
  v12[13] = v7;
  v8 = a1[7];
  v12[14] = a1[6];
  v12[15] = v8;
  v9 = a1[1];
  v12[8] = *a1;
  v12[9] = v9;
  v10 = a1[3];
  v12[10] = a1[2];
  v12[11] = v10;

  outlined init with copy of ApplicationCapabilities(v13, v12);
  return static Published.subscript.setter();
}

uint64_t ApplicationCapabilities.Controller.$capabilities.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd, &_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ApplicationCapabilities.Controller.$capabilities : ApplicationCapabilities.Controller(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd, &_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ApplicationCapabilities.Controller.$capabilities : ApplicationCapabilities.Controller(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd, &_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v6[-v2];
  v9 = 0;
  v7 = v0;
  v8 = &v9;
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate());
  if (v9 == 1)
  {
    static TaskPriority.userInitiated.getter();
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v1;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate(), v5);

    outlined destroy of TaskPriority?(v3, &_sScPSgMd_0, &_sScPSgMR_0);
  }
}

uint64_t closure #2 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded());
  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v4 = v43 - v3;
  v5 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (one-time initialization token for capabilities != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.capabilities);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Needs Network Reachability Update", v9, 2u);
    }

    *(a1 + v5) = 0;
    v10 = [objc_opt_self() sharedCloudController];
    if (v10)
    {
      v11 = v10;
      if ([v10 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = [v11 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v48[4] = v53;
    v48[5] = v54;
    v48[6] = v55;
    v48[7] = v56;
    v48[0] = v49;
    v48[1] = v50;
    v48[2] = v51;
    v48[3] = v52;
    outlined destroy of ApplicationCapabilities(v48);
    v13 = BYTE1(v48[0]);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    if (v12 == v13)
    {
      if (v16)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Network Reachability status does not differ from currently known capabilities.", v42, 2u);
      }
    }

    else
    {
      v57 = v4;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v43[1] = v1;
        v19 = v18;
        *&v49 = v18;
        *v17 = 136315138;
        if (v12)
        {
          v20 = 0x1000000000000012;
        }

        else
        {
          v20 = 0x1000000000000016;
        }

        v21 = v12;
        if (v12)
        {
          v12 = "Not Reachable 🔌👎";
        }

        else
        {
          v12 = "hangeNotification";
        }

        v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v12 | 0x8000000000000000, &v49);
        LOBYTE(v12) = v21;

        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Updating Network Reachability to: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
      }

      v23 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v45[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v45[5] = v24;
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v45[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v45[7] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v45[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v45[1] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v45[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v45[3] = v27;
      *(&v46[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v46[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v46[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v46[7] = v25;
      *(v46 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v46[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v46[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v46[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v46[0]) = v45[0];
      BYTE1(v46[0]) = v12;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v51 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v52 = v28;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v49 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v50 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v55 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v56 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v53 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v54 = v31;
      v47[0] = v49;
      v47[1] = v29;
      v47[2] = v51;
      v47[3] = v28;
      v47[4] = v53;
      v47[5] = v31;
      v47[6] = v55;
      v47[7] = v30;
      v32 = v46[0];
      v33 = v46[1];
      v34 = v46[3];
      v23[2] = v46[2];
      v23[3] = v34;
      *v23 = v32;
      v23[1] = v33;
      v35 = v46[4];
      v36 = v46[5];
      v37 = v46[7];
      v23[6] = v46[6];
      v23[7] = v37;
      v23[4] = v35;
      v23[5] = v36;
      outlined init with copy of ApplicationCapabilities(v45, v44);
      outlined init with copy of ApplicationCapabilities(&v49, v44);
      outlined init with copy of ApplicationCapabilities(v46, v44);
      outlined destroy of ApplicationCapabilities(v47);
      ApplicationCapabilities.Controller.safeCapabilities.didset(&v49);
      outlined destroy of ApplicationCapabilities(&v49);
      outlined destroy of ApplicationCapabilities(v46);
      v38 = type metadata accessor for TaskPriority();
      v39 = v57;
      (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
      type metadata accessor for MainActor();

      v40 = static MainActor.shared.getter();
      v41 = swift_allocObject();
      v41[2] = v40;
      v41[3] = &protocol witness table for MainActor;
      v41[4] = a1;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v39, &async function pointer to partial apply for closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded(), v41);
    }
  }
}

uint64_t closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded(), v6, v5);
}

uint64_t closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()()
{

  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for hasNetworkConnectivityDidChange != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for hasNetworkConnectivityDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange;
}

uint64_t ApplicationCapabilities.Controller.safeCapabilities.didset(unsigned __int8 *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v5 = &v32 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v42 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v43 = v6;
  v7 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v44 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v45 = v7;
  v8 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v38 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v39 = v8;
  v9 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v40 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v37 = &_swiftEmptySetSingleton;
  v41 = v9;
  outlined init with copy of ApplicationCapabilities(&v38, &v35);
  if (one-time initialization token for mobileiPod != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.mobileiPod)
  {
    v10 = lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
    v11 = lazy protocol witness table accessor for type String and conformance String();
    NSUserDefaults.subscript.getter(&v35);
    if (!v36)
    {
      outlined destroy of TaskPriority?(&v35, &_sypSgMd_0, &_sypSgMR_0);
      goto LABEL_15;
    }

    if (swift_dynamicCast() & 1) != 0 && (v34)
    {
      if (v44 > 1u)
      {
        if (v44 == 2)
        {

LABEL_14:
          v36 = &type metadata for Bool;
          LOBYTE(v35) = 0;
          NSUserDefaults.subscript.setter(&v35, v12, &type metadata for NSUserDefaults.MobileiPod, v10, v11);
          goto LABEL_15;
        }

        v33 = v5;
      }

      else
      {
        v33 = v5;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v33;
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (specialized static ApplicationCapabilities.__derived_struct_equals(_:_:)(&v38, a1))
  {
    goto LABEL_78;
  }

  if ((v38 ^ *a1))
  {
    if (one-time initialization token for activeAccountDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.activeAccountDidChange);
  }

  v14 = v40;
  v15 = specialized Set.contains(_:)(5u, v40) & 1;
  v16 = *(a1 + 4);
  if (v15 != (specialized Set.contains(_:)(5u, v16) & 1))
  {
    if (one-time initialization token for allowsiTunesContentDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange);
  }

  v17 = specialized Set.contains(_:)(0, v14) & 1;
  if (v17 != (specialized Set.contains(_:)(0, v16) & 1))
  {
    if (one-time initialization token for allowsMusicServiceDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange);
  }

  v18 = specialized Set.contains(_:)(3u, v14) & 1;
  if (v18 != (specialized Set.contains(_:)(3u, v16) & 1))
  {
    if (one-time initialization token for allowsSocialContentDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange);
  }

  v19 = specialized Set.contains(_:)(9u, v14) & 1;
  if (v19 != (specialized Set.contains(_:)(9u, v16) & 1))
  {
    if (one-time initialization token for allowsSharePlayTogetherDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange);
  }

  v20 = specialized Set.contains(_:)(4u, v14) & 1;
  if (v20 != (specialized Set.contains(_:)(4u, v16) & 1))
  {
    if (one-time initialization token for allowsRadioContentDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange);
  }

  v21 = specialized Set.contains(_:)(2u, v14) & 1;
  if (v21 != (specialized Set.contains(_:)(2u, v16) & 1))
  {
    if (one-time initialization token for allowsSubscriptionContentDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange);
  }

  v22 = specialized Set.contains(_:)(0xAu, v14) & 1;
  if (v22 != (specialized Set.contains(_:)(0xAu, v16) & 1))
  {
    if (one-time initialization token for mliEnabledDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.mliEnabledDidChange);
  }

  if ((BYTE1(v38) ^ a1[1]))
  {
    if (one-time initialization token for hasNetworkConnectivityDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange);
  }

  if ((BYTE2(v38) ^ a1[2]))
  {
    if (one-time initialization token for isCloudLibraryEnabledDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange);
  }

  if (v41 != *(a1 + 6))
  {
    if (one-time initialization token for ratingWarningThresholdDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange);
  }

  if ((specialized == infix<A>(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for userSubscriptionStateDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange);
  }

  v23 = v45;
  v24 = *(&v45 + 1);
  v25 = a1[112];
  v26 = *(a1 + 15);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore13TabIdentifierO_Tt1g5(*(&v44 + 1), *(a1 + 13)) & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v23 == 7)
  {
    if (v25 != 7)
    {
      goto LABEL_71;
    }
  }

  else if (v25 == 7 || (specialized == infix<A>(_:_:)() & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLV_Tt1g5(v24, v26) & 1) == 0)
  {
LABEL_71:
    if (one-time initialization token for supportedTabsDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.supportedTabsDidChange);
  }

  if (*(&v38 + 1) != *(a1 + 1))
  {
    if (one-time initialization token for subscriptionCapabilitiesDidChange != -1)
    {
      swift_once();
    }

    specialized Set._Variant.insert(_:)(&v35, static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange);
  }

LABEL_78:
  if (specialized static ApplicationCapabilities.__derived_struct_equals(_:_:)(&v38, a1))
  {
  }

  else
  {
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = v37;
    type metadata accessor for MainActor();
    outlined init with copy of ApplicationCapabilities(&v38, &v35);

    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    *(v30 + 32) = v2;
    *(v30 + 104) = v42;
    *(v30 + 120) = v43;
    *(v30 + 136) = v44;
    *(v30 + 152) = v45;
    *(v30 + 40) = v38;
    *(v30 + 56) = v39;
    *(v30 + 72) = v40;
    *(v30 + 88) = v41;
    *(v30 + 168) = v28;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset, v30);
  }

  return outlined destroy of ApplicationCapabilities(&v38);
}

uint64_t *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for activeAccountDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.activeAccountDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for allowsiTunesContentDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for allowsMusicServiceDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for allowsSocialContentDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for allowsSharePlayTogetherDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for allowsRadioContentDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for allowsSubscriptionContentDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.mliEnabledDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for mliEnabledDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.mliEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for isCloudLibraryEnabledDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for ratingWarningThresholdDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for userSubscriptionStateDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedTabsDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.supportedTabsDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for subscriptionCapabilitiesDidChange != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange;
}

uint64_t closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  type metadata accessor for MainActor();
  v6[37] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset, v8, v7);
}

void closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset()
{
  v35 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 112) = v2[6];
  *(v0 + 128) = v6;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;

  outlined init with copy of ApplicationCapabilities(v2, v0 + 144);
  static Published.subscript.setter();
  v9 = v1 + 56;
  v10 = -1;
  v11 = -1 << *(v1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v32 = v1;
  while (v12)
  {
LABEL_10:
    v18 = one-time initialization token for capabilities;
    v19 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.capabilities);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v24 = 136446210;
      *(v0 + 16) = v21;
      type metadata accessor for NSNotificationName(0);
      v25 = v21;
      v26 = String.init<A>(describing:)();
      v28 = v13;
      v29 = v9;
      v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, &v34);

      *(v24 + 4) = v30;
      v9 = v29;
      v13 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Notifying changes for '%{public}s'", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);

      v1 = v32;
    }

    v12 &= v12 - 1;
    v15 = *(v0 + 272);
    v16 = [objc_opt_self() defaultCenter];
    [v16 postNotificationName:v21 object:v15];
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

uint64_t closure #1 in ApplicationCapabilities.Controller.updateState()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  v3 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
  v4 = *(a1 + 16);
  v5 = v2;

  specialized ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(v2, v3, v4, v17);
  v6 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v7 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v21 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v22 = v7;
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v23 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v24 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v18[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v18[1] = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v19 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v20 = v10;
  v25[6] = v23;
  v25[7] = v8;
  v25[4] = v21;
  v25[5] = v7;
  v25[2] = v19;
  v25[3] = v10;
  v25[0] = v18[0];
  v25[1] = v9;
  v11 = v17[1];
  *v6 = v17[0];
  v6[1] = v11;
  v12 = v17[7];
  v6[6] = v17[6];
  v6[7] = v12;
  v13 = v17[5];
  v6[4] = v17[4];
  v6[5] = v13;
  v14 = v17[3];
  v6[2] = v17[2];
  v6[3] = v14;
  outlined init with copy of ApplicationCapabilities(v18, v16);
  outlined init with copy of ApplicationCapabilities(v17, v16);
  outlined destroy of ApplicationCapabilities(v25);
  ApplicationCapabilities.Controller.safeCapabilities.didset(v18);
  outlined destroy of ApplicationCapabilities(v18);
  return outlined destroy of ApplicationCapabilities(v17);
}

uint64_t closure #1 in ApplicationCapabilities.Controller.beginObserving()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = [objc_opt_self() defaultIdentityStore];
    v3 = ICUserIdentityStore.accountDSID.getter();
    v5 = v4;

    v6 = [objc_opt_self() standardUserDefaults];
    if (v5)
    {
      v3 = 0;
      v7 = 0;
      v11[1] = 0;
      v11[2] = 0;
    }

    else
    {
      v7 = &type metadata for UInt64;
    }

    v11[0] = v3;
    v11[3] = v7;
    v10 = 2;
    v8 = lazy protocol witness table accessor for type NSUserDefaults.Key and conformance NSUserDefaults.Key();
    v9 = lazy protocol witness table accessor for type String and conformance String();
    NSUserDefaults.subscript.setter(v11, &v10, &unk_1005B0BC0, v8, v9);

    UnfairLock.locked<A>(_:)(closure #1 in ApplicationCapabilities.Controller.updateState()partial apply);
  }

  return result;
}

id ICUserIdentityStore.accountDSID.getter()
{
  v1 = [objc_opt_self() activeAccount];
  v7 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v7];

  v3 = v7;
  if (v2)
  {
    v7 = 0;
    v8 = 1;
    v4 = v3;
    static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();

    return v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

uint64_t closure #2 in ApplicationCapabilities.Controller.beginObserving()(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(a2);
  }

  return result;
}

void closure #5 in ApplicationCapabilities.Controller.beginObserving()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();

    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #5 in ApplicationCapabilities.Controller.beginObserving());

    UnfairLock.locked<A>(_:)(closure #1 in ApplicationCapabilities.Controller.updateState()partial apply);
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [a1 dictionaryForBagKey:v4];

    if (v5 && (v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v5, specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v6), v8 = v7, , v8))
    {
      *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDys11AnyHashableVypGGGMd, &_sSDySSSaySDys11AnyHashableVypGGGMR);
      *&v12 = v8;
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v11 = 1;
    v9 = lazy protocol witness table accessor for type NSUserDefaults.Key and conformance NSUserDefaults.Key();
    v10 = lazy protocol witness table accessor for type String and conformance String();
    NSUserDefaults.subscript.setter(&v12, &v11, &unk_1005B0BC0, v9, v10);
  }
}

uint64_t closure #6 in ApplicationCapabilities.Controller.beginObserving()(char a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v18 = v10, v19 = v11, v20 = v12, v21 = v13, v14 = v6, v15 = v7, v16 = v8, v17 = v9, result = outlined destroy of ApplicationCapabilities(&v14), BYTE8(v15) == (a1 & 1)))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = static Published.subscript.modify();
      *(v5 + 24) = (a1 & 1) == 0;
      v4(&v14, 0);
    }
  }

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.updated()(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(ApplicationCapabilities.Controller.updated(), 0, 0);
}

uint64_t ApplicationCapabilities.Controller.updated()()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = ApplicationCapabilities.Controller.updated();
  v2 = *(v0 + 280);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0x2864657461647075, 0xE900000000000029, partial apply for closure #1 in ApplicationCapabilities.Controller.updated(), v2, &type metadata for ApplicationCapabilities);
}

{

  return _swift_task_switch(ApplicationCapabilities.Controller.updated(), 0, 0);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  v1[6] = v7;
  v1[7] = v6;
  v1[4] = v9;
  v1[5] = v8;
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t closure #1 in ApplicationCapabilities.Controller.updated()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMd, &_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v24 - v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v4 + 16);
  v11(v8, a1, v3);
  v11(v6, v8, v3);
  v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  (*(v4 + 32))(v13 + v12, v8, v3);
  v14 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v15 = v25;
  if (v25)
  {
    closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(v25, v10);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v16 = swift_allocObject();
    v24[1] = v14;
    v17 = v16;
    swift_weakInit();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    swift_weakAssign();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = partial apply for closure #1 in closure #1 in ApplicationCapabilities.Controller.updated();
    v19[3] = v13;
    v19[4] = v18;
    v19[5] = v17;
    v24[0] = 0;
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    *(v17 + 24) = partial apply for closure #1 in BagProvider.getBag(completion:);
    *(v17 + 32) = v19;

    v22 = v21;
    v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v20, v22);

    __chkstk_darwin();
    v24[-2] = v9;
    v24[-1] = v17;
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.getBag(completion:));
    BagProvider.fetchBag(forceReload:)(0);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
    v5 = *(result + 16);
    a1;

    specialized ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(a1, v4, v5, v6);
    __chkstk_darwin();

    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in ApplicationCapabilities.Controller.updated());

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMd, &_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = a2;

  v7 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v22 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v23 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v25 = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v19[1] = v10;
  v11 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v20 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v21 = v11;
  v26[6] = v24;
  v26[7] = v9;
  v26[4] = v22;
  v26[5] = v8;
  v26[2] = v20;
  v26[3] = v11;
  v26[0] = v19[0];
  v26[1] = v10;
  v12 = a3[1];
  *v7 = *a3;
  v7[1] = v12;
  v13 = a3[7];
  v7[6] = a3[6];
  v7[7] = v13;
  v14 = a3[5];
  v7[4] = a3[4];
  v7[5] = v14;
  v15 = a3[3];
  v7[2] = a3[2];
  v7[3] = v15;
  v16 = a2;
  outlined init with copy of ApplicationCapabilities(v19, v18);
  outlined init with copy of ApplicationCapabilities(a3, v18);
  outlined destroy of ApplicationCapabilities(v26);
  ApplicationCapabilities.Controller.safeCapabilities.didset(v19);
  return outlined destroy of ApplicationCapabilities(v19);
}

uint64_t ApplicationCapabilities.Controller.deinit()
{
  v1 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller__capabilities;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd, &_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v8[3] = v6;
  outlined destroy of ApplicationCapabilities(v8);

  return v0;
}

uint64_t ApplicationCapabilities.Controller.__deallocating_deinit()
{
  ApplicationCapabilities.Controller.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ApplicationCapabilities.Controller@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)(MusicCore::TabIdentifier a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 33);
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6F69646172;
      }

      else
      {
        if (v5 == 5)
        {
          v10 = 0x686372616573;
        }

        else
        {
          v10 = 0x736F65646976;
        }

        v11 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = v5 - 1;
      v7 = v5 == 0;
      if (*(v3 - 1))
      {
        v8 = 0x6573776F7262;
      }

      else
      {
        v8 = 0x7972617262696CLL;
      }

      if (v7)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v6 >= 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6F4E6E657473696CLL;
      }

      if (v6 >= 2)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE900000000000077;
      }
    }

    v22 = *v3;
    v12 = 0x736F65646976;
    if (v4 != 5)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xE900000000000073;
    if (v4 == 5)
    {
      v13 = 0xE600000000000000;
    }

    v14 = 0x686372616573;
    if (v4 == 3)
    {
      v14 = 0x6F69646172;
    }

    v15 = 0xE500000000000000;
    if (v4 != 3)
    {
      v15 = 0xE600000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x6573776F7262;
    }

    if (v4 == 1)
    {
      v17 = 0xE900000000000077;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    if (!v4)
    {
      v16 = 0x7972617262696CLL;
      v17 = 0xE700000000000000;
    }

    v18 = v4 <= 2 ? v16 : v12;
    v19 = v4 <= 2 ? v17 : v13;
    if (v10 == v18 && v11 == v19)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      return v22;
    }

    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

BOOL closure #1 in implicit closure #1 in ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(_BOOL8 a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v5 = &v9[-v4];
  if (one-time initialization token for mobileiPod != -1)
  {
    swift_once();
  }

  if (!static NSUserDefaults.mobileiPod)
  {
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v10);
  if (!v11)
  {
    outlined destroy of TaskPriority?(&v10, &_sypSgMd_0, &_sypSgMR_0);
LABEL_10:
    a1 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v9[15] != 1)
  {
    goto LABEL_10;
  }

  if (a1)
  {
    a1 = [a1 statusType] == 1;
  }

LABEL_11:
  v6 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v5);

  v7 = type metadata accessor for URL();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  outlined destroy of TaskPriority?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v6 == 1 && [a2 hasLoadedSubscriptionAvailability])
  {
    return [a2 isSubscriptionAvailable] & a1;
  }

  return a1;
}

uint64_t closure #2 in implicit closure #3 in ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    LODWORD(v3) = [v3 effectiveBoolValueForSetting:v4];

    v5 = v3 != 2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (one-time initialization token for allowsSocialContent != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [a2 dictionaryForBagKey:v6];

  if (v7)
  {

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICUserIdentityStore, ICUserIdentityStore_ptr);
    v8 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v8)
    {

      if (v5)
      {
        return 1;
      }
    }
  }

LABEL_11:
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 0;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  lazy protocol witness table accessor for type NSUserDefaults.Key and conformance NSUserDefaults.Key();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v11);

  if (!v12)
  {
    outlined destroy of TaskPriority?(&v11, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t ICURLBag.ismliEnabled.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v3)
  {
    goto LABEL_15;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v11);
  outlined destroy of AnyHashable(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    outlined destroy of TaskPriority?(&v11, &_sypSgMd_0, &_sypSgMR_0);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v8 & 1) == 0))
  {

    outlined destroy of AnyHashable(v10);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v11);
  outlined destroy of AnyHashable(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    outlined destroy of TaskPriority?(&v11, &_sypSgMd_0, &_sypSgMR_0);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}

uint64_t ICURLBag.stringsFromServer.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v3)
  {
    goto LABEL_14;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&v10), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v10);
LABEL_14:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v11);
  outlined destroy of AnyHashable(&v10);

  if (!*(&v12 + 1))
  {
LABEL_15:
    outlined destroy of TaskPriority?(&v11, &_sypSgMd_0, &_sypSgMR_0);
LABEL_16:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&v10), (v8 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v10);
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v11);
  outlined destroy of AnyHashable(&v10);

  if (!*(&v12 + 1))
  {
LABEL_17:
    outlined destroy of TaskPriority?(&v11, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }

  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t one-time initialization function for allowsSocialContent()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ICURLBag.StoreBagKeys.allowsSocialContent = result;
  *algn_1006025D8 = v1;
  return result;
}

uint64_t closure #1 in static ICURLBag.tabConfigurations(for:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = *a1;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v7 & 1) == 0))
  {
    result = outlined destroy of AnyHashable(v28);
LABEL_10:
    *a3 = 512;
    return result;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v6, v29);
  outlined destroy of AnyHashable(v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v32._countAndFlagsBits = 25705;
  v32._object = 0xE200000000000000;
  result = specialized BagTabIdentifier.init(rawValue:)(v32);
  v31 = result;
  if (result == 7)
  {
    goto LABEL_10;
  }

  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(v5 + 56) + 32 * v9, v29);
    outlined destroy of AnyHashable(v28);
    result = swift_dynamicCast();
    if (result)
    {
      v30 = 18;
LABEL_65:
      if (v30)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_68;
    }
  }

  else
  {
    result = outlined destroy of AnyHashable(v28);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 33);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v16 = 0x756F795F726F66;
        }

        else
        {
          v16 = 0x6E5F6E657473696CLL;
        }

        if (v13 == 1)
        {
          v17 = 0xE700000000000000;
        }

        else
        {
          v17 = 0xEA0000000000776FLL;
        }

        if (*(v12 - 1))
        {
          v14 = v16;
        }

        else
        {
          v14 = 0x636973756D5F796DLL;
        }

        if (*(v12 - 1))
        {
          v15 = v17;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }

      else if (*(v12 - 1) > 4u)
      {
        if (v13 == 5)
        {
          v15 = 0xE600000000000000;
          v14 = 0x686372616573;
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x6F65646976;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0x6573776F7262;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v13 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }
      }

      v30 = *v12;
      v18 = 0x686372616573;
      if (v31 == 5)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v18 = 0x6F65646976;
        v19 = 0xE500000000000000;
      }

      v20 = 0x6573776F7262;
      if (v31 == 3)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v20 = 0x6F69646172;
        v21 = 0xE500000000000000;
      }

      if (v31 <= 4u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v31 == 1)
      {
        v22 = 0x756F795F726F66;
      }

      else
      {
        v22 = 0x6E5F6E657473696CLL;
      }

      if (v31 == 1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xEA0000000000776FLL;
      }

      if (!v31)
      {
        v22 = 0x636973756D5F796DLL;
        v23 = 0xE800000000000000;
      }

      v24 = v31 <= 2u ? v22 : v18;
      v25 = v31 <= 2u ? v23 : v19;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_65;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

LABEL_63:
  v27 = 0;
LABEL_68:
  *a3 = v27 | v31;
  return result;
}

id ApplicationCapabilities.Controller.ProfileObserver.__deallocating_deinit()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver:v0];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
    return objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void @objc ApplicationCapabilities.Controller.ProfileObserver.profileConnectionDidReceiveEffectiveSettingsChangedNotification(_:userInfo:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    UnfairLock.locked<A>(_:)(a5);
  }
}

id one-time initialization function for SharedRadioAvailabilityController()
{
  result = [objc_allocWithZone(RadioAvailabilityController) init];
  SharedRadioAvailabilityController = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.Key()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSUserDefaults.Key(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSUserDefaults.Key@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NSUserDefaults.Key.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NSUserDefaults.Key(unint64_t *a1@<X8>)
{
  v2 = "gMusicTabsDictionary";
  v3 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000014;
    v2 = "countUniqueIdentifier";
  }

  v4 = 0xD000000000000024;
  if (*v1)
  {
    v5 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = "sharePlayTogether";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t one-time initialization function for capabilities()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.capabilities);
  __swift_project_value_buffer(v0, static Logger.capabilities);
  return Logger.init(subsystem:category:)();
}

NSString one-time initialization function for allowsiTunesContentDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange = result;
  return result;
}

NSString one-time initialization function for allowsMusicServiceDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange = result;
  return result;
}

NSString one-time initialization function for allowsSocialContentDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange = result;
  return result;
}

NSString one-time initialization function for allowsRadioContentDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange = result;
  return result;
}

NSString one-time initialization function for allowsSubscriptionContentDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange = result;
  return result;
}

NSString one-time initialization function for mliEnabledDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.mliEnabledDidChange = result;
  return result;
}

NSString one-time initialization function for allowsSharePlayTogetherDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange = result;
  return result;
}

NSString one-time initialization function for supportedTabsDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.supportedTabsDidChange = result;
  return result;
}

NSString one-time initialization function for userSubscriptionStateDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange = result;
  return result;
}

NSString one-time initialization function for activeAccountDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.activeAccountDidChange = result;
  return result;
}

NSString one-time initialization function for hasNetworkConnectivityDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange = result;
  return result;
}

NSString one-time initialization function for ratingWarningThresholdDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange = result;
  return result;
}

NSString one-time initialization function for isCloudLibraryEnabledDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange = result;
  return result;
}

NSString one-time initialization function for subscriptionCapabilitiesDidChange()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange = result;
  return result;
}

id static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t specialized static ApplicationCapabilities.RatingWarning.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL specialized static ApplicationCapabilities.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  if ((_sSh2eeoiySbShyxG_ABtFZ9MusicCore23ApplicationCapabilitiesV7ServiceO_Tt1g5(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9MusicCore23ApplicationCapabilitiesV7ServiceO_Tt1g5(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v7 != v10)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = a2;
      v5 = a1;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (!v12)
    {
      return 0;
    }

    if (v8 != v11 || v9 != v12)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = a2;
      v5 = a1;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = *(v5 + 11);
  v16 = *(v6 + 11);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionStatus, ICMusicSubscriptionStatus_ptr);
    v17 = v16;
    v18 = v15;
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((specialized == infix<A>(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[112];
  v21 = *(a1 + 15);
  v22 = a2[112];
  v23 = *(a2 + 15);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore13TabIdentifierO_Tt1g5(*(a1 + 13), *(a2 + 13)) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || (specialized == infix<A>(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLV_Tt1g5(v21, v23) & 1) != 0;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v34 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  v31 = *(result + 16);
LABEL_3:
  v33 = v4;
  while (v3 < v2)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_63;
    }

    v6 = (v34 + 2 * v3);
    v7 = v6[1];
    ++v3;
    v8 = *v6;
    if (v8 == 2)
    {
      v21 = *(a2 + 32);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v32 = v6[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(v21 + 48) + v24);
          if (v26 <= 4)
          {
            if (v26 == 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(*(v21 + 48) + v24) > 7u && v26 == 8 && 0x80000001004C4B80 == 0x80000001004C4BC0)
          {
LABEL_57:

LABEL_49:

            LOBYTE(v8) = 2;
LABEL_50:
            v2 = v31;
            v4 = v33;
            v7 = v32;
LABEL_51:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1);
            }

            v29 = v4[2];
            v28 = v4[3];
            if (v29 >= v28 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
            }

            v4[2] = v29 + 1;
            v30 = v4 + 2 * v29;
            v30[32] = v8;
            v30[33] = v7;
            if (v5 == v2)
            {
              return v4;
            }

            goto LABEL_3;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_49;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
    }

    v4 = v33;
LABEL_6:
    if (v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void specialized ApplicationCapabilities.RatingWarning.init(bag:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      static Int._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v10 = v3;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

char *specialized ApplicationCapabilities.Tabs.init(configurations:)(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v1)
  {
    v2 = (isUniquelyReferenced_nonNull_native + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2;
      v2 += 2;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      v3[v7 + 32] = 0x5040302010100uLL >> (8 * v4);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v28 = v3;
  if (one-time initialization token for mobileiPod != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
    lazy protocol witness table accessor for type String and conformance String();
    NSUserDefaults.subscript.getter(&v26);
    if (!v27)
    {
      outlined destroy of TaskPriority?(&v26, &_sypSgMd_0, &_sypSgMR_0);
LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v25 ^ 1;
LABEL_17:
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1 || (v11 = *(v3 + 2)) == 0)
    {
LABEL_28:
      v14 = *(v3 + 2);
      if (!v14)
      {
        return v3;
      }

      goto LABEL_29;
    }

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v3 + 2))
      {
        goto LABEL_57;
      }

      if (v3[v12 + 32] > 2u && v3[v12 + 32] <= 4u && v3[v12 + 32] != 3)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_51;
      }

      if (v11 == ++v12)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    specialized Array.remove(at:)(v12);
    v3 = v28;
    v22 = *(v28 + 2);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    if (!v23 || v22 >= *(v3 + 3) >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v22 + 1, 1, v3);
      v28 = v3;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
    v14 = *(v3 + 2);
    if (!v14)
    {
      return v3;
    }

LABEL_29:
    v15 = (v8 & 1) == 0;
    if (v8)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x7972617262696CLL;
    }

    if (v15)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE900000000000077;
    }

    v18 = 0;
    while (v18 < *(v3 + 2))
    {
      v19 = v3[v18 + 32];
      if (v19 > 2)
      {
        goto LABEL_38;
      }

      if (v3[v18 + 32])
      {
        if (v19 != 1)
        {
          goto LABEL_38;
        }

        v21 = 0xE900000000000077;
        if (v16 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        if (v16 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v21 == v17)
      {

LABEL_40:

        return v3;
      }

LABEL_38:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0 && v14 != ++v18)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t specialized Set.isSuperset<A>(of:)(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    Hasher.init(_seed:)();
    ApplicationCapabilities.Service.description.getter();
    String.hash(into:)();

    v6 = Hasher._finalize()();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001004C4B80;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004C4BC0;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001004C4BE0;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x80000001004C4BE0;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x80000001004C4BC0;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x80000001004C4B80;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}

void specialized static ICURLBag.tabConfigurations(for:in:)(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 == 2)
    {
      v42 = &outlined read-only object #2 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter);
    }

    return;
  }

  v3 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v39 = v3;
  v40 = _swiftEmptyArrayStorage;
  v36 = a1;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    if (*(v40 + 2))
    {
      return;
    }

    goto LABEL_59;
  }

  while (1)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17._countAndFlagsBits = v14;
    v17._object = v15;
    v18 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static ICURLBag.tabConfigurations(for:in:), v17);

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v20 = 0x6269726373627573;
        v19 = 0xEA00000000007265;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_35;
        }

        v20 = 0x6275536563696F76;
        v19 = 0xEF72656269726373;
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_35;
      }

      v19 = 0xE700000000000000;
      v20 = 0x63697373616C63;
    }

    else
    {
      v20 = 0x6564696365646E75;
      v19 = 0xE900000000000064;
    }

    v21 = 0x6275536563696F76;
    if (a1 == 2)
    {
      v21 = 0x6269726373627573;
    }

    v22 = 0xEF72656269726373;
    if (a1 == 2)
    {
      v22 = 0xEA00000000007265;
    }

    v23 = 0x6564696365646E75;
    if (a1)
    {
      v23 = 0x63697373616C63;
    }

    v24 = 0xE900000000000064;
    if (a1)
    {
      v24 = 0xE700000000000000;
    }

    v25 = a1 <= 1u ? v23 : v21;
    v26 = a1 <= 1u ? v24 : v22;
    if (v20 == v25 && v19 == v26)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_38;
    }

LABEL_35:

    v3 = v39;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v42 = &outlined read-only object #2 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter);
      a1 = v36;
      v28 = v42;
    }

    else
    {
      v28 = &outlined read-only object #4 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
    }

LABEL_44:
    v38 = v28;
  }

  else
  {
    v38 = &outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
    if (!a1)
    {
      v28 = &outlined read-only object #1 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
      goto LABEL_44;
    }
  }

  v37 = *(v16 + 16);
  if (!v37)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_56:

    goto LABEL_35;
  }

  v29 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (v29 < *(v16 + 16))
  {
    v42 = *(v16 + 32 + 8 * v29);

    closure #1 in static ICURLBag.tabConfigurations(for:in:)(&v42, v38, &v41);

    v31 = v41;
    if ((v41 & 0xFF00) != 0x200)
    {
      v32 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
      }

      v33 = v32;
      v34 = *(v32 + 2);
      v40 = v33;
      v35 = *(v33 + 3);
      if (v34 >= v35 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v34 + 1, 1, v40);
      }

      *(v40 + 2) = v34 + 1;
      v30 = &v40[2 * v34];
      v30[32] = v31;
      v30[33] = HIBYTE(v31) & 1;
      a1 = v36;
    }

    if (v37 == ++v29)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  __break(1u);
}

id specialized ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v85 + 1) = v9;
    *(&v85 + 1) = 0;
    *&v86 = 0;
    *&v87 = &_swiftEmptySetSingleton;
    *(&v87 + 1) = &_swiftEmptySetSingleton;
    *v88 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v88[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v89) = 1;
    *(&v89 + 1) = specialized ApplicationCapabilities.Tabs.init(configurations:)(_swiftEmptyArrayStorage);
    LOBYTE(v90) = v14;
    *(&v90 + 1) = v15;
    v16 = [v10 sharedController];
    v17 = [objc_opt_self() sharedConnection];
    v72 = [v6 sharedCloudController];
    v74 = v16;
    v18 = [v16 musicSubscriptionStatus];
    v19 = v18;
    if (v18)
    {
      v71 = 2 * ([v18 capabilities] & 1);
    }

    else
    {
      v71 = 0;
    }

    v20 = [objc_opt_self() defaultIdentityStore];
    ICUserIdentityStore.accountDSID.getter();
    v22 = v21;

    LOBYTE(v85) = (v22 & 1) == 0;
    if (v19)
    {
      v23 = v19;
      *&v86 = [v23 statusType];
      v24 = [v23 capabilities];

      *(&v85 + 1) = v24;
      v13 = (v24 & 1) == 0;
    }

    v25 = [objc_opt_self() sharedPrivacyInfo];
    v26 = [v25 privacyAcknowledgementRequiredForMusic];

    BYTE8(v86) = v26 ^ 1;
    v27 = v74;
    if (closure #1 in implicit closure #1 in ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(v19, v74))
    {
      specialized Set._Variant.insert(_:)(v84, 2);
    }

    if (one-time initialization token for SharedRadioAvailabilityController != -1)
    {
      swift_once();
    }

    if ([SharedRadioAvailabilityController isRadioAvailable])
    {
      specialized Set._Variant.insert(_:)(v84, 4);
    }

    if (closure #2 in implicit closure #3 in ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:)(v17, a1))
    {
      specialized Set._Variant.insert(_:)(v84, 3);
    }

    if (a1)
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = [a1 BOOLValueForBagKey:v28];

      if (v29)
      {
        specialized Set._Variant.insert(_:)(v84, 9);
      }
    }

    if (v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();

      v31 = [v17 effectiveBoolValueForSetting:v30];

      if (v31 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 6);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v17 effectiveBoolValueForSetting:v32];

      if (v33 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 0);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();

      v35 = [v17 effectiveBoolValueForSetting:v34];

      if (v35 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 1);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = String._bridgeToObjectiveC()();

      v37 = [v17 effectiveBoolValueForSetting:v36];

      if (v37 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 5);
      }

      *&v88[40] = v19;
      v38 = v19;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v17 effectiveBoolValueForSetting:v39];

      if (v40 != 2)
      {
        specialized Set._Variant.insert(_:)(v84, 8);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = String._bridgeToObjectiveC()();

      v42 = [v17 isBoolSettingLockedDownByRestrictions:v41];

      v27 = v74;
      if (v42)
      {
        specialized Set._Variant.insert(_:)(v84, 7);
      }
    }

    else
    {
      *&v88[40] = v19;
      v43 = v19;
    }

    v44 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = 2;
    LOBYTE(v44) = specialized Set.isSuperset<A>(of:)(inited, v44);
    swift_setDeallocating();
    if (v44)
    {
      LOBYTE(v89) = v71;
      if (v19)
      {
        v46 = v19;
        if ([v46 statusType] == 3)
        {
          if (one-time initialization token for capabilities != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          __swift_project_value_buffer(v47, static Logger.capabilities);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Unexpectedly found a Voice subscriber! 😡", v50, 2u);
            v27 = v74;
          }
        }
      }
    }

    else
    {
      v71 = 1;
    }

    if (a1)
    {
      v51 = v13;
    }

    else
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      v52 = ICURLBag.ismliEnabled.getter();
      if (v52 != 2 && (v52 & 1) != 0)
      {
        v53 = ICURLBag.stringsFromServer.getter();
        if (v53 != 2 && (v53 & 1) != 0)
        {
          specialized Set._Variant.insert(_:)(v84, 10);
        }
      }
    }

    v54 = v72;
    if (v72)
    {
      v55 = v72;
      if ([v55 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v56 = 0;
      }

      else
      {
        v56 = [v55 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v56 = 0;
    }

    BYTE1(v85) = v56;
    BYTE2(v85) = [v27 isCloudLibraryEnabled];
    v57 = a1;
    specialized ApplicationCapabilities.RatingWarning.init(bag:)(a1, v88);
    if (a3)
    {
      *&v84[0] = &outlined read-only object #0 of ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:);
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #1 of ApplicationCapabilities.init(bag:tabsProvider:isLaunchedToTest:));
      v58 = *&v84[0];
    }

    else
    {
      v59 = *(a2 + 16);
      __chkstk_darwin();
      os_unfair_lock_lock((v59 + 44));
      partial apply for closure #1 in MusicTabsDictionaryProvider.musicTabs(fallingBackToBag:)((v59 + 16), v84);
      os_unfair_lock_unlock((v59 + 44));
      if (*&v84[0])
      {
        specialized static ICURLBag.tabConfigurations(for:in:)(v71, *&v84[0]);
        v58 = v60;

        v54 = v72;
      }

      else
      {
        v54 = v72;
        if (v71)
        {
          if (v71 == 1)
          {
            v58 = &outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
          }

          else
          {
            *&v84[0] = &outlined read-only object #2 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
            specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter);
            v58 = *&v84[0];
          }
        }

        else
        {
          v58 = &outlined read-only object #1 of ApplicationCapabilities.SubscriptionState.preferredTabConfigurations.getter;
        }
      }
    }

    v61 = specialized _ArrayProtocol.filter(_:)(v58, &v85);

    v62 = specialized ApplicationCapabilities.Tabs.init(configurations:)(v61);
    LOBYTE(v61) = v63;
    v65 = v64;

    *(&v89 + 1) = v62;
    LOBYTE(v90) = v61;
    *(&v90 + 1) = v65;
    v80 = *&v88[16];
    v81 = *&v88[32];
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v79 = *v88;
    v82 = v89;
    v83 = v90;
    v84[6] = v89;
    v84[7] = v90;
    v84[2] = v87;
    v84[3] = *v88;
    v84[0] = v85;
    v84[1] = v86;
    v84[4] = *&v88[16];
    v84[5] = *&v88[32];
    outlined init with copy of ApplicationCapabilities(&v76, &v75);
    result = outlined destroy of ApplicationCapabilities(v84);
    v66 = v81;
    a4[4] = v80;
    a4[5] = v66;
    v67 = v83;
    a4[6] = v82;
    a4[7] = v67;
    v68 = v77;
    *a4 = v76;
    a4[1] = v68;
    v69 = v79;
    a4[2] = v78;
    a4[3] = v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized ApplicationCapabilities.Service.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApplicationCapabilities.Service.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ApplicationCapabilities.SubscriptionState.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApplicationCapabilities.SubscriptionState.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void partial apply for closure #1 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t partial apply for closure #2 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service()
{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities.Service and conformance ApplicationCapabilities.Service);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState()
{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities.SubscriptionState and conformance ApplicationCapabilities.SubscriptionState);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.RatingWarning(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.RatingWarning(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Tabs(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Tabs(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for ApplicationCapabilities.Controller(uint64_t a1)
{
  result = type metadata singleton initialization cache for ApplicationCapabilities.Controller;
  if (!type metadata singleton initialization cache for ApplicationCapabilities.Controller)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ApplicationCapabilities.Controller(uint64_t a1)
{
  type metadata accessor for Published<ApplicationCapabilities>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<ApplicationCapabilities>()
{
  if (!lazy cache variable for type metadata for Published<ApplicationCapabilities>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<ApplicationCapabilities>);
    }
  }
}

uint64_t sub_1000F23EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in ApplicationCapabilities.Controller.safeCapabilities.didset(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Key and conformance NSUserDefaults.Key()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Key and conformance NSUserDefaults.Key);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Playlist.Entry and conformance Playlist.Entry(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F2640()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000F2678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMd, &_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMd, &_sScCy9MusicCore23ApplicationCapabilitiesVs5NeverOGMR);
  v3 = *(v1 + 16);

  return closure #1 in closure #1 in ApplicationCapabilities.Controller.updated()(a1, v3);
}

uint64_t sub_1000F27C8()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in ApplicationCapabilities.Controller.updateNetworkReachabilityIfNeeded()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F2990()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000F2A5C()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in closure #5 in ApplicationCapabilities.Controller.beginObserving()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t specialized NSUserDefaults.Key.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NSUserDefaults.Key.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

uint64_t BackgroundFetchManager.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = specialized BackgroundFetchManager.dictionary.getter();
  if (*(v6 + 16) && (v7 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v9 + 56) + 32 * v10, v14);

    if (swift_dynamicCast())
    {
      URL.init(string:)();
    }
  }

  else
  {
  }

  v13 = type metadata accessor for URL();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v6);
    v7 = malloc(v6);
  }

  a1[3] = v7;
  BackgroundFetchManager.subscript.getter(a2, a3, v7);
  return BackgroundFetchManager.subscript.modify;
}

void BackgroundFetchManager.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    outlined init with copy of URL?(a1[3], v2);

    specialized BackgroundFetchManager.subscript.setter(v2, v5, v4);
    outlined destroy of TaskPriority?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {

    specialized BackgroundFetchManager.subscript.setter(v3, v5, v4);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall BackgroundFetchManager.removeAll()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

void closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin();
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:));
  }

  dispatch_group_leave(group);
}

uint64_t closure #1 in closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

uint64_t closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(uint64_t a1, uint64_t a2, void (*a3)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Error_pGMd, &_sSays5Error_pGMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:));
  a3();
}

void one-time initialization function for maximumTimeInterval()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v0 = v3;
  if (v3 && (closure #1 in variable initialization expression of static BackgroundFetchManager.Bag.maximumTimeInterval(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  static BackgroundFetchManager.Bag.maximumTimeInterval = v2;
  byte_1006028D8 = v1;
}

uint64_t closure #1 in variable initialization expression of static BackgroundFetchManager.Bag.maximumTimeInterval@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  if (!*(&v12 + 1))
  {
    result = outlined destroy of TaskPriority?(v10, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v4 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0xD00000000000001ELL, 0x80000001004C8720), (v5 & 1) == 0))
  {

    goto LABEL_16;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v4, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v6 = v11;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v8 & 1) == 0))
  {

    result = outlined destroy of AnyHashable(v10);
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v11);
  outlined destroy of AnyHashable(v10);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = result ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
  return result;
}

unint64_t specialized BackgroundFetchManager.dictionary.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v3);
    v5 = v4;

    if (v5)
    {
      return v5;
    }
  }

  else
  {
  }

  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  return v7;
}

uint64_t specialized BackgroundFetchManager.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v25 = specialized BackgroundFetchManager.dictionary.getter();
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

    v12 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = String._bridgeToObjectiveC()();
    [v12 setObject:isa forKey:v14];

    return outlined destroy of TaskPriority?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = URL.absoluteString.getter();
    *(inited + 56) = v17;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = type metadata accessor for Date();
    __swift_allocate_boxed_opaque_existential_1((inited + 96));
    Date.init()();
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd_0, &_sSS_yptMR_0);
    swift_arrayDestroy();
    v19 = specialized BackgroundFetchManager.dictionary.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    v21 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
    v22 = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = String._bridgeToObjectiveC()();
    [v21 setObject:v22 forKey:v23];

    outlined destroy of TaskPriority?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t specialized BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a5;
  v94 = a4;
  v77 = a3;
  v76 = a2;
  v100 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v98 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v97 = *(v99 - 8);
  __chkstk_darwin();
  v96 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for URLRequest();
  v8 = *(v75 - 8);
  __chkstk_darwin();
  v81 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v89 = v69 - v10;
  v90 = type metadata accessor for Date();
  v11 = *(v90 - 8);
  __chkstk_darwin();
  v83 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = v69 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v106 = v69 - v14;
  v103 = type metadata accessor for URL();
  v15 = *(v103 - 8);
  __chkstk_darwin();
  v80 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v69 - v17;
  v105 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v104 = UnfairLock.init()();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  if (one-time initialization token for maximumTimeInterval != -1)
  {
LABEL_30:
    swift_once();
  }

  v19 = *&static BackgroundFetchManager.Bag.maximumTimeInterval;
  v20 = specialized BackgroundFetchManager.dictionary.getter();
  v21 = v20;
  v22 = 0;
  v23 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 64);
  v27 = (v24 + 63) >> 6;
  v92 = (v15 + 6);
  v88 = (v15 + 4);
  v87 = (v11 + 7);
  v85 = (v11 + 6);
  v82 = (v11 + 4);
  ++v11;
  v86 = (v15 + 1);
  v79 = (v15 + 2);
  v78 = "com.apple.mobileipod";
  v15 = &v109;
  v74 = (v8 + 8);
  v8 = v106;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v26)
        {
          while (1)
          {
            v28 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v28 >= v27)
            {

              v62 = swift_allocObject();
              v62[2] = v104;
              v62[3] = v18;
              v63 = v95;
              v62[4] = v94;
              v62[5] = v63;
              v111 = partial apply for closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:);
              v112 = v62;
              aBlock = _NSConcreteStackBlock;
              v108 = 1107296256;
              v109 = thunk for @escaping @callee_guaranteed () -> ();
              v110 = &block_descriptor_13;
              v64 = _Block_copy(&aBlock);

              v65 = v96;
              static DispatchQoS.unspecified.getter();
              v113 = _swiftEmptyArrayStorage;
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              v66 = v98;
              v67 = v102;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v68 = v105;
              OS_dispatch_group.notify(qos:flags:queue:execute:)();
              _Block_release(v64);

              (*(v101 + 8))(v66, v67);
              (*(v97 + 8))(v65, v99);
            }

            v26 = *(v23 + 8 * v28);
            ++v22;
            if (v26)
            {
              v22 = v28;
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_11:
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v30 = *(*(v21 + 56) + ((v22 << 9) | (8 * v29)));
      }

      while (!*(v30 + 16));

      v31 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(7107189, 0xE300000000000000);
      if (v32)
      {
        outlined init with copy of Any(*(v30 + 56) + 32 * v31, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v91 = v15;
    URL.init(string:)();

    v33 = v103;
    if ((*v92)(v8, 1, v103) == 1)
    {

      v34 = v8;
      v35 = &_s10Foundation3URLVSgMd;
      v36 = &_s10Foundation3URLVSgMR;
      goto LABEL_22;
    }

    (*v88)(v93, v8, v33);
    v37 = v89;
    if (!*(v30 + 16) || (v38 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(1702125924, 0xE400000000000000), (v39 & 1) == 0))
    {

      (*v86)(v93, v103);
      (*v87)(v37, 1, 1, v90);
LABEL_21:
      v34 = v37;
      v35 = &_s10Foundation4DateVSgMd;
      v36 = &_s10Foundation4DateVSgMR;
LABEL_22:
      outlined destroy of TaskPriority?(v34, v35, v36);
      goto LABEL_23;
    }

    outlined init with copy of Any(*(v30 + 56) + 32 * v38, &aBlock);

    v40 = v90;
    v41 = swift_dynamicCast();
    (*v87)(v37, v41 ^ 1u, 1, v40);
    if ((*v85)(v37, 1, v40) == 1)
    {
      (*v86)(v93, v103);
      v8 = v106;
      goto LABEL_21;
    }

    (*v82)(v84, v37, v40);
    v42 = v83;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v44 = v43;
    v45 = v42;
    v46 = *v11;
    (*v11)(v45, v40);
    if (v44 < v19)
    {
      break;
    }

    v46(v84, v40);
    (*v86)(v93, v103);
    v8 = v106;
LABEL_23:
    v15 = v91;
  }

  v73 = v46;
  (*v79)(v80, v93, v103);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v47._object = (v78 | 0x8000000000000000);
  v48._countAndFlagsBits = 1702195828;
  v48._object = 0xE400000000000000;
  v47._countAndFlagsBits = 0xD00000000000001ALL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v48, v47);
  v49 = objc_allocWithZone(ICMusicKitRequestContext);
  v111 = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v112 = 0;
  aBlock = _NSConcreteStackBlock;
  v108 = 1107296256;
  v109 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v110 = &block_descriptor_15;
  v50 = _Block_copy(&aBlock);
  v51 = [v49 initWithBlock:v50];
  _Block_release(v50);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    v72 = objc_allocWithZone(ICMusicKitURLRequest);
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v72 = [v72 initWithURLRequest:isa requestContext:v51];

    dispatch_group_enter(v105);
    v71 = [objc_opt_self() highPrioritySession];
    v54 = swift_allocObject();
    v55 = v76;
    v56 = v77;
    v54[2] = v76;
    v54[3] = v56;
    v57 = v105;
    v54[4] = v104;
    v54[5] = v18;
    v54[6] = v57;
    v111 = partial apply for closure #1 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:);
    v112 = v54;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
    v110 = &block_descriptor_7;
    v70 = _Block_copy(&aBlock);
    v69[1] = v112;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v55, v56);

    v58 = v57;

    v59 = v71;
    v60 = v72;
    v61 = v70;
    [v71 enqueueDataRequest:v72 withCompletionHandler:v70];
    _Block_release(v61);

    (*v74)(v81, v75);
    v73(v84, v90);
    (*v86)(v93, v103);
    v8 = v106;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4814()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F4864()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000F48CC()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

double partial apply for closure #1 in closure #2 in BackgroundFetchManager.updateURLCache(queue:onDidReceiveResponse:completion:)@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;

  return result;
}

uint64_t *BackgroundRefreshController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

uint64_t static BackgroundRefreshController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
}

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  v0 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2400;
  *(v1 + 56) = &type metadata for String;
  v2 = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD00000000000002FLL;
  *(v1 + 40) = 0x80000001004C87A0;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v3, "BackgroundRefreshController: REGISTER TASK: %@", 46, 2, v1);

  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = String._bridgeToObjectiveC()();
  aBlock[4] = closure #1 in BackgroundRefreshController.registerAllTasks();
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_16;
  v7 = _Block_copy(aBlock);
  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v7];
  _Block_release(v7);

  v8 = static os_log_type_t.default.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2400;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v2;
  *(v9 + 32) = 0xD000000000000041;
  *(v9 + 40) = 0x80000001004C8830;
  v10 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v10, "BackgroundRefreshController: CANCEL DEPRECATED TASK: %@", 55, 2, v9);

  v11 = [v4 sharedScheduler];
  v12 = String._bridgeToObjectiveC()();
  [v11 cancelTaskRequestWithIdentifier:v12];
}

uint64_t closure #1 in BackgroundRefreshController.registerAllTasks()(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  return BackgroundRefreshController.executeBackgroundUpdates(task:)(v1);
}

uint64_t BackgroundRefreshController.executeBackgroundUpdates(task:)(void *a1)
{
  v3 = *v1;
  v4 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x80000001004C87A0;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v6, "BackgroundRefreshController: EXECUTING REFRESH SUBTASKS: %@", 59, 2, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  v8 = a1;
  BackgroundRefreshController.executeAllEligibleSubtasks(completion:)(partial apply for closure #1 in BackgroundRefreshController.executeBackgroundUpdates(task:), v7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v72 = *v0;
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v75 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v96 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v71 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v71 - v8;
  __chkstk_darwin();
  v94 = &v71 - v9;
  __chkstk_darwin();
  v93 = &v71 - v10;
  __chkstk_darwin();
  v100 = &v71 - v11;
  __chkstk_darwin();
  v92 = &v71 - v12;
  __chkstk_darwin();
  v91 = &v71 - v13;
  __chkstk_darwin();
  v15 = &v71 - v14;
  __chkstk_darwin();
  v17 = &v71 - v16;
  if (one-time initialization token for all != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = static BackgroundTaskConfiguration.all;
    static Date.distantFuture.getter();
    v83 = v6;
    v19 = *(v6 + 16);
    v82 = v17;
    v80 = v6 + 16;
    v79 = v19;
    v19(v15, v17, v5);
    v97 = v18;
    v84 = v18[2];
    if (v84)
    {
      v90 = objc_opt_self();
      v89 = (v83 + 56);
      v20 = (v83 + 48);
      v17 = (v83 + 8);
      v21 = v97 + 49;
      v98 = (v83 + 32);
      v87 = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v22 = v84;
      v88 = (v83 + 48);
      do
      {
        v99 = v22;
        v33 = *v21;
        v34 = [v90 standardUserDefaults];
        LOBYTE(v101) = v33;
        lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
        lazy protocol witness table accessor for type String and conformance String();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v104)
        {
          v35 = v95;
          v36 = swift_dynamicCast();
          (*v89)(v35, v36 ^ 1u, 1, v5);
        }

        else
        {
          outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
          v35 = v95;
          (*v89)(v95, 1, 1, v5);
        }

        v37 = v96;
        outlined init with copy of Date?(v35, v96);
        v38 = *v20;
        if ((*v20)(v37, 1, v5) == 1)
        {
          v86 = v21;
          v39 = v93;
          Date.init()();
          v40 = v38(v37, 1, v5);
          v21 = v86;
          if (v40 != 1)
          {
            outlined destroy of TaskPriority?(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          v39 = v93;
          (*v98)(v93, v37, v5);
        }

        outlined destroy of TaskPriority?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        static Date.+ infix(_:_:)();
        v41 = *v17;
        (*v17)(v39, v5);
        v42 = v94;
        Date.init()();
        if (static Date.< infix(_:_:)())
        {
          v23 = v85;
          static Date.+ infix(_:_:)();
          v41(v42, v5);
          v24 = v100;
          v41(v100, v5);
          v25 = *v98;
          (*v98)(v24, v23, v5);
        }

        else
        {
          v41(v42, v5);
          v25 = *v98;
        }

        v26 = v99;
        v21 += 24;
        v27 = v92;
        v25(v92, v100, v5);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v28 = dispatch thunk of static Comparable.< infix(_:_:)();
        v29 = (v28 & 1) == 0;
        if (v28)
        {
          v30 = v15;
        }

        else
        {
          v30 = v27;
        }

        if (v29)
        {
          v31 = v15;
        }

        else
        {
          v31 = v27;
        }

        v41(v30, v5);
        v32 = v91;
        v25(v91, v31, v5);
        v25(v15, v32, v5);
        v22 = v26 - 1;
        v20 = v88;
      }

      while (v22);
    }

    v99 = swift_allocBox();
    v44 = v43;
    v6 = v83;
    v98 = *(v83 + 8);
    (v98)(v82, v5);
    v45 = *(v6 + 32);
    v100 = v44;
    v45(v44, v15, v5);
    if (!v84)
    {
LABEL_37:
      v51 = 0;
      goto LABEL_38;
    }

    if (v97[2])
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v46 = 0;
  v6 = 0;
  v47 = v97 + 50;
  v48 = v84 - 1;
  v17 = &unk_1005B0E48;
  v15 = &type metadata for Bool;
  while ((v46 & 1) != 0)
  {
    if (v48 == v6)
    {
      goto LABEL_36;
    }

    v46 = 1;
LABEL_25:
    ++v6;
    v47 += 24;
    if (v6 >= v97[2])
    {
      goto LABEL_44;
    }
  }

  v49 = *v47;
  v50 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v101) = v49;
  lazy protocol witness table accessor for type BackgroundTaskConfiguration.UserDefaultsKey and conformance BackgroundTaskConfiguration.UserDefaultsKey();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v104)
  {
    outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v46 = 0;
    v51 = 0;
    if (v48 == v6)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v46 = v101;
  if (v48 != v6)
  {
    goto LABEL_25;
  }

  if ((v101 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v52 = v85;
  Date.init()();
  (*(v83 + 40))(v100, v52, v5);
  v51 = 1;
LABEL_38:
  v53 = v85;
  v54 = v79;
  v79(v85, v100, v5);
  v55 = v81;
  static Date.distantFuture.getter();
  v56 = static Date.< infix(_:_:)();
  v57 = v98;
  (v98)(v55, v5);
  (v57)(v53, v5);
  if (v51 & 1) != 0 || (v56)
  {
    v58 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v59 = String._bridgeToObjectiveC()();
    v60 = [v58 initWithIdentifier:v59];

    v61 = v85;
    v54(v85, v100, v5);
    v62 = v60;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (v57)(v61, v5);
    [v62 setEarliestBeginDate:isa];

    if (one-time initialization token for taskSchedulerQueue != -1)
    {
      swift_once();
    }

    v64 = swift_allocObject();
    v65 = v99;
    *(v64 + 16) = v62;
    *(v64 + 24) = v65;
    *(v64 + 32) = v51;
    *(v64 + 40) = v72;
    v105 = partial apply for closure #3 in BackgroundRefreshController.scheduleAllTasks();
    v106 = v64;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v103 = thunk for @escaping @callee_guaranteed () -> ();
    v104 = &block_descriptor_3_0;
    v66 = _Block_copy(&aBlock);
    v67 = v62;

    v68 = v73;
    static DispatchQoS.unspecified.getter();
    v101 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v69 = v75;
    v70 = v78;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v66);

    (*(v77 + 8))(v69, v70);
    (*(v74 + 8))(v68, v76);
  }
}