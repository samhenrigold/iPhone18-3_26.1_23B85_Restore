uint64_t closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMd, &_sScS8IteratorVy14NearbySessions0B13AdvertisementC_GMR);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

uint64_t closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  NearbyInvitationServiceBluetoothController.lostInvitations()(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Any?(v0[7], &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    AsyncStream.makeAsyncIterator()();
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
    v7 = v0[4];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v7);
  }
}

{

  return _swift_task_switch(closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ((*(**(v0 + 24) + 208))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 40))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:);
    v6 = *(v0 + 32);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v6);
  }

  else
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v26 = a4;
  v28 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource scanNearbyEndpoints", v15, 2u);
  }

  v16 = v26;
  a3(0);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v27;
  (*(v7 + 32))(&v20[v18], &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v21 = v28;
  *&v20[v19] = v28;
  v22 = &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v22 = a3;
  *(v22 + 1) = v16;

  v23 = v21;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:), v20);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 16))(v1, v0[3], v0[5]);
  type metadata accessor for NearbyInvitationScanner(0);
  v4 = swift_allocObject();

  v5 = specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(v1, v2, v3, v4);

  *(v3 + 72) = v5;

  (*(*v5 + 232))(v6);

  v7 = v0[1];

  return v7();
}

void NearbyInvitationsProviderDataSource.stopScanningNearbyInvitations(provider:response:)()
{
  v1 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "NearbyInvitationsProviderDataSource scanNearbyInvitations", v5, 2u);
  }

  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  v7 = [v6 btScanAbstraction];

  if (v7)
  {
    v8 = (*(*v1 + 392))(v14);
    v10 = v9;

    *v10 = &_swiftEmptyDictionarySingleton;
    v8(v14, 0);
  }

  v11 = *(v1[5] + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan);
  if (v11)
  {
    v12 = *(*v11 + 336);

    v12(v13);
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v34 - v8;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationsProviderDataSource requestConnection with %@", v14, 0xCu);
    outlined destroy of Any?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMR);
  swift_allocObject();
  v17 = PassthroughSubject.init()();
  v18 = NearbyAdvertisement.identifier.getter();
  v20 = v19;
  v21 = *(*a2 + 344);

  v22 = v21(v38);
  v24 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v24;
  *v24 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v18, v20, isUniquelyReferenced_nonNull_native);

  *v24 = v37;
  v22(v38, 0);
  v26 = a2[7];
  v27 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
  (*((swift_isaMask & *v26) + 0x110))(v27);

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a2;
  v29[5] = v11;
  v30 = v35;
  v31 = v36;
  v29[6] = v17;
  v29[7] = v30;
  v29[8] = v31;
  v32 = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:), v29);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMd, &_s7Combine22AsyncThrowingPublisherVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMR);
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMR);
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)()
{
  v23 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v2, static Log.host);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    v0[7] = v6;
    type metadata accessor for NearbyInvitationsProviderDataSource(0);

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: awating requestConnection with %@", v8, 0x16u);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v0[4] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<Data, Error> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGMR, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher.values.getter();
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v16 + 8))(v15, v17);
  v18 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncThrowingPublisher<PassthroughSubject<Data, Error>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVyAA18PassthroughSubjectCy10Foundation4DataVs5Error_pG_GMR, &protocol conformance descriptor for AsyncThrowingPublisher<A>.Iterator);
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:);
  v20 = v0[16];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v20, v18);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:);
  }

  else
  {
    v2 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  else
  {
    v22 = v0[2];
    v2 = v0[9];

    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[8];
      v6 = v0[9];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v8 = 136315394;
      v0[6] = v7;
      type metadata accessor for NearbyInvitationsProviderDataSource(0);

      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v6;
      *v9 = v6;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: received requestConnection with %@", v8, 0x16u);
      outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    v15 = v0[17];
    v21 = v0[18];
    v16 = v0[16];
    v17 = v0[11];
    NearbyAdvertisement.identifier.getter();
    objc_allocWithZone(type metadata accessor for InvitationBlob());
    outlined copy of Data._Representation(v22, v1);
    v18 = InvitationBlob.init(invitationID:dataBlob:)();
    v17(v18, 0);

    outlined consume of Data?(v22, v1);
    (*(v15 + 8))(v21, v16);
  }

  v19 = v0[1];

  return v19();
}

{
  *(v0 + 40) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:), 0, 0);
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "NearbyInvitationsProviderDataSource connection request was denied %@", v3, 0xCu);
    outlined destroy of Any?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v6 = v0[21];
  v7 = v0[11];

  swift_errorRetain();
  v7(0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[0] = a7;
  v9 = v7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v26 = *(v17 - 8);
  v27 = v17;
  __chkstk_darwin(v17);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v9 + 32);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v9;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = v25[0];
  v21 = _Block_copy(aBlock);
  v22 = a1;

  v23 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v16, v14);
  (*(v26 + 8))(v19, v27);
}

void closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v70 = a5;
  v71 = a4;
  v68 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v10 = type metadata accessor for NWEndpoint();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWBrowser.Result();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v61 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v61 - v23;
  v69 = a1;
  NearbyAdvertisement.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of Any?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.client);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75 = a2;
      v76 = v45;
      *v44 = 136315138;
      type metadata accessor for NearbyInvitationsProviderDataSource(0);

      v46 = String.init<A>(reflecting:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v76);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s: Received no scannerID in connection request", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
    }

    return;
  }

  v25 = (*(v19 + 32))(v24, v17, v18);
  v26 = (*(*a2 + 352))(v25);
  if (!*(v26 + 16) || (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v28 & 1) == 0))
  {

    (*(v19 + 8))(v24, v18);
    goto LABEL_11;
  }

  (*(v73 + 16))(v72, *(v26 + 56) + *(v73 + 72) * v27, v74);

  v29 = a2[9];
  if (v29)
  {
    v30 = one-time initialization token for host;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.host);
    (*(v19 + 16))(v22, v24, v18);
    v32 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v65))
    {
      v33 = swift_slowAlloc();
      v63 = v33;
      v64 = swift_slowAlloc();
      v76 = v64;
      *v33 = 136315138;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v62 = v32;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v19 + 8);
      v66 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v36(v22, v18);
      v37 = v36;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v35, &v76);

      v40 = v62;
      v39 = v63;
      *(v63 + 1) = v38;
      _os_log_impl(&_mh_execute_header, v40, v65, "NearbyInvitationsProviderDataSource connecting to endpoint to %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
    }

    else
    {

      v53 = *(v19 + 8);
      v66 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53(v22, v18);
      v37 = v53;
    }

    v54 = v72;
    NWBrowser.Result.endpoint.getter();
    (*(*v29 + 240))(v12);
    (*(v67 + 8))(v12, v10);
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v9, 1, 1, v55);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v58 = v68;
    v57 = v69;
    v56[4] = v29;
    v56[5] = v58;
    v56[6] = v57;

    v59 = v58;
    v60 = v57;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:), v56);

    v71(0);

    (*(v73 + 8))(v54, v74);
    v37(v24, v18);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Log.host);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "NearbyInvitationsProviderDataSource requestEndpointConnection cannot find nearbyInvitationsBrowser", v52, 2u);
    }

    (*(v73 + 8))(v72, v74);
    (*(v19 + 8))(v24, v18);
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMR);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  (*(**(v0 + 40) + 200))();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[NWConnection]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.values.getter();
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
  v9 = *(v0 + 112);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v9, v7);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
  }

  else
  {
    v2 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 16);
  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = v3;
  v4 = *(v3 + 152);
  if (v4)
  {
    if (v4 >> 62)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      v5 = a1;
      if (!a1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }

    v6 = 0;
    v28 = *(**(v3 + 40) + 248);
    v27 = *(v3 + 152) & 0xC000000000000001;
    v26 = v4;
    do
    {
      if (v27)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v9 = *(v3 + 48);
      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Log.client);
      v11 = v9;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = v5;
        v15 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v15 = 136315394;
        v16 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        *(v3 + 32) = v8;
        type metadata accessor for NWConnection();

        v19 = String.init<A>(reflecting:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v29);

        *(v15 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationsProviderDataSource Sending pre-lmi data %s to %s", v15, 0x16u);
        swift_arrayDestroy();

        v5 = v14;
        v4 = v26;
      }

      ++v6;
      v7 = NearbyInvitationJoinRequestMetadata.pseudonym.getter();
      v28(v7);
    }

    while (v5 != v6);
LABEL_18:

    v24 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v25 = swift_task_alloc();
    *(v3 + 136) = v25;
    *v25 = v3;
    v25[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:);
    a2 = *(v3 + 112);
    a1 = v3 + 16;
    a3 = v24;

    return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
  }

  (*(*(v3 + 120) + 8))(*(v3 + 128), *(v3 + 112), a3);

  v22 = *(v3 + 8);

  return v22();
}

uint64_t NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 32);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_90;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  outlined copy of Data._Representation(a2, a3);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

void closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "NearbyInvitationsProviderDataSource approveConnectionRequest", v14, 2u);
  }

  v15 = [objc_allocWithZone(CPFeatureFlags) init];
  v16 = [v15 wranglerHomePodBoopEnabled];

  if (v16)
  {
    v17 = *(a1 + 80);
    if (v17)
    {
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v17;
      v19[5] = a2;
      v19[6] = a3;
      v19[7] = a4;

      v20 = a2;
      outlined copy of Data._Representation(a3, a4);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:), v19);
    }

    else
    {
      v27 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v27, v24, "NearbyInvitationsProviderDataSource nearbyInvitationsListener is nil", v25, 2u);
      }

      v26 = v27;
    }
  }

  else
  {
    NearbyAdvertisement.handle.getter();
    if (v21)
    {
      v22 = *(a1 + 56);
      v23 = NearbyAdvertisement.identifier.getter();
      (*((swift_isaMask & *v22) + 0xF8))(v23);
    }
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay7Network12NWConnectionCG_GGMR);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  (*(**(v0 + 32) + 184))();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[NWConnection]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.values.getter();
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  v9 = *(v0 + 112);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v9, v7);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  }

  else
  {
    v2 = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  *(v0 + 152) = *(v0 + 16);
  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:), 0, 0);
}

{
  *(v0 + 24) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[19];
  if (v4)
  {
    if (v4 >> 62)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      v5 = a1;
      if (!a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }

    v6 = 0;
    v17 = v3[19] & 0xC000000000000001;
    v7 = v4;
    do
    {
      if (v17)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v10 = v3[6];
      v9 = v3[7];
      ++v6;
      v11 = NearbyAdvertisement.identifier.getter();
      NearbyInvitationAdvertiser.approveConnectionRequest(id:localInvitation:connection:)(v11, v12, v10, v9, v8);

      v4 = v7;
    }

    while (v5 != v6);
LABEL_14:

    v15 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[NWConnection]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay7Network12NWConnectionCG_G_GMR, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v16 = swift_task_alloc();
    v3[17] = v16;
    *v16 = v3;
    v16[1] = closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:);
    a2 = v3[14];
    a1 = v3 + 2;
    a3 = v15;

    return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
  }

  (*(v3[15] + 8))(v3[16], v3[14], a3);

  v13 = v3[1];

  return v13();
}

uint64_t NearbyInvitationsProviderDataSource.denyConnectionRequest(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.denyConnectionRequest(_:);
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_96;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.denyConnectionRequest(_:)(uint64_t a1, uint64_t a2)
{
  result = NearbyAdvertisement.handle.getter();
  if (v4)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "NearbyInvitationsProviderDataSource denyConnectionRequest", v8, 2u);
    }

    v9 = *(a2 + 56);
    v10 = NearbyAdvertisement.identifier.getter();
    (*((swift_isaMask & *v9) + 0xF0))(v10);
  }

  return result;
}

id *NearbyInvitationsProviderDataSource.deinit()
{
  outlined destroy of weak PeerConnectionDelegate?((v0 + 2));

  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService35NearbyInvitationsProviderDataSource__dataReceived;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NearbyInvitationsProviderDataSource.__deallocating_deinit()
{
  NearbyInvitationsProviderDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)()
{
  _StringGuts.grow(_:)(22);

  swift_getErrorValue();
  v1._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v1);

  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = dispatch thunk of ABCReporter.signature(subType:context:process:)();
  v0[8] = v4;

  if (v4)
  {
    v13 = (&async function pointer to dispatch thunk of ABCReporter.report(with:duration:) + async function pointer to dispatch thunk of ABCReporter.report(with:duration:));
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:);
    v6.n128_u64[0] = 0;

    return v13(v4, v6);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.abcReporter);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to generate signature for session unsuspend failure", v11, 2u);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t NearbyInvitationsProviderDataSource.connectionChanged(added:endpoint:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  __chkstk_darwin(v6 - 8);
  v40 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.host);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v3;
    v22 = v16;
    v23 = a2;
    v24 = v21;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v18;
    *v25 = v18;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "NearbyInvitationsProviderDataSource is adding connection from delegate %@)", v24, 0xCu);
    outlined destroy of Any?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    a2 = v23;
    v16 = v22;
    v3 = v38;
  }

  NearbyAdvertisement.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Any?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v12 + 32))(v16, v10, v11);
  v28 = v39;
  (*(v12 + 16))(v39, v16, v11);
  v29 = type metadata accessor for NWBrowser.Result();
  v30 = *(v29 - 8);
  v31 = v40;
  (*(v30 + 16))(v40, a2, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  v32 = (*(*v3 + 368))(v41);
  specialized Dictionary.subscript.setter(v31, v28);
  v33 = v32(v41, 0);
  if ((*(*v3 + 208))(v33))
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    (*(v35 + 32))(v18, ObjectType, v35);
    swift_unknownObjectRelease();
  }

  return (*(v12 + 8))(v16, v11);
}

uint64_t NearbyInvitationsProviderDataSource.connectionChanged(removed:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  __chkstk_darwin(v4 - 8);
  v39 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = &v36 - v14;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = v16;
    v42[0] = v21;
    *v20 = 136315138;
    type metadata accessor for NearbyAdvertisement();
    v37 = v10;
    v22 = v16;
    v23 = String.init<A>(reflecting:)();
    v25 = v16;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v42);
    v10 = v37;

    *(v20 + 4) = v26;
    v16 = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "NearbyInvitationsProviderDataSource is removing connection from delegate %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);

    v13 = v38;
  }

  NearbyAdvertisement.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Any?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v28 = v40;
  (*(v10 + 32))(v40, v8, v9);
  (*(v10 + 16))(v13, v28, v9);
  v29 = type metadata accessor for NWBrowser.Result();
  v30 = v39;
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v31 = (*(*v2 + 368))(v42);
  specialized Dictionary.subscript.setter(v30, v13);
  v32 = v31(v42, 0);
  if ((*(*v2 + 208))(v32))
  {
    v34 = v33;
    ObjectType = swift_getObjectType();
    (*(v34 + 40))(v16, ObjectType, v34);
    swift_unknownObjectRelease();
  }

  return (*(v10 + 8))(v40, v9);
}

uint64_t specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t *a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  v28 = a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(*a2 + 168);

  v10 = v8(v9);
  v11 = (v10 + 48);
  v12 = *(v10 + 16) + 1;
  while (1)
  {
    if (!--v12)
    {

      type metadata accessor for NearbyRangingFilter();
      swift_allocObject();
      outlined init with copy of BluetoothScanner.Device(a1, v27);
      v15 = specialized NearbyRangingFilter.init(scannerDevice:config:)(a1, a4 & 1, a5);
      outlined destroy of BluetoothScanner.Device(a1);
      v17 = v28;
      v18 = *v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        v18 = result;
        *v17 = result;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      if (v21 < v20 >> 1)
      {
        v13 = v7;
        v14 = v6;
        goto LABEL_17;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      v18 = result;
      v13 = v7;
      v14 = v6;
      goto LABEL_20;
    }

    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (v7 == v13 && v6 == v14)
    {
      break;
    }

    v11 += 3;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_14;
    }
  }

  v13 = v7;
LABEL_14:

  (*(*v15 + 200))(a1);
  v17 = v28;
  v18 = *v28;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v18;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    v18 = result;
    *v17 = result;
  }

  v21 = v18[2];
  v23 = v18[3];
  v22 = v21 + 1;
  if (v21 >= v23 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v21 + 1, 1, v18);
    v18 = result;
LABEL_20:
    *v17 = v18;
  }

LABEL_17:
  v18[2] = v22;
  v24 = &v18[3 * v21];
  v24[4] = v13;
  v24[5] = v14;
  v24[6] = v15;
  return result;
}

uint64_t partial apply for closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(uint64_t a1)
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
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.requestApproval(with:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.generateNearbyInvitation(provider:response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbyInvitation(_:provider:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for NearbyAdvertisement();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = NearbyAdvertisement.identifier.getter();
      v14 = v13;
      if (NearbyAdvertisement.identifier.getter() == v12 && v15 == v14)
      {

LABEL_5:
        ++v4;
        v6 = v22 + 8;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v18;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_106:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v102 = *(v9 + 2);
      if (v102 >= 2)
      {
        while (*v6)
        {
          v103 = v9;
          v9 = (v102 - 1);
          v104 = *&v103[16 * v102];
          v105 = *&v103[16 * v102 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v104), (*v6 + 8 * *&v103[16 * v102 + 16]), (*v6 + 8 * v105), v8);
          if (v5)
          {
            goto LABEL_116;
          }

          if (v105 < v104)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
          }

          if (v102 - 2 >= *(v103 + 2))
          {
            goto LABEL_132;
          }

          v106 = &v103[16 * v102];
          *v106 = v104;
          *(v106 + 1) = v105;
          specialized Array.remove(at:)(v102 - 1);
          v9 = v103;
          v102 = *(v103 + 2);
          if (v102 <= 1)
          {
            goto LABEL_116;
          }
        }

        goto LABEL_142;
      }

LABEL_116:

      return;
    }

LABEL_138:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_108;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (2)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_33;
    }

    v112 = v9;
    v11 = *v6;
    v12 = *(*v6 + 8 * v10);
    v13 = *(*v6 + 8 * v8);
    v14 = v12;
    v15 = NearbyAdvertisement.identifier.getter();
    v17 = v16;
    if (NearbyAdvertisement.identifier.getter() == v15 && v18 == v17)
    {
      v117 = 0;
    }

    else
    {
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v8 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_25;
    }

    v108 = v10;
    v20 = (v11 + 8 * v10 + 16);
    while (1)
    {
      v22 = v8;
      v23 = *(v20 - 1);
      v24 = *v20;
      v25 = v23;
      v26 = NearbyAdvertisement.identifier.getter();
      v28 = v27;
      if (NearbyAdvertisement.identifier.getter() == v26 && v29 == v28)
      {

        if (v117)
        {
          v6 = a3;
          v9 = v112;
          v8 = v22;
          v10 = v108;
          goto LABEL_26;
        }

        goto LABEL_14;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v117 ^ v21))
      {
        break;
      }

LABEL_14:
      v8 = (v22 + 1);
      ++v20;
      if (v7 == v22 + 1)
      {
        v8 = v7;
        goto LABEL_24;
      }
    }

    v8 = v22;
LABEL_24:
    v10 = v108;
LABEL_25:
    v6 = a3;
    v9 = v112;
    if (v117)
    {
LABEL_26:
      if (v8 < v10)
      {
        goto LABEL_135;
      }

      if (v10 < v8)
      {
        v31 = 8 * v8 - 8;
        v32 = 8 * v10;
        v33 = v8;
        v34 = v10;
        do
        {
          if (v34 != --v33)
          {
            v35 = *v6;
            if (!*v6)
            {
              goto LABEL_141;
            }

            v36 = *(v35 + v32);
            *(v35 + v32) = *(v35 + v31);
            *(v35 + v31) = v36;
          }

          ++v34;
          v31 -= 8;
          v32 += 8;
        }

        while (v34 < v33);
      }
    }

LABEL_33:
    v37 = v6[1];
    if (v8 >= v37)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_134;
    }

    if (v8 - v10 >= a4)
    {
LABEL_55:
      if (v8 < v10)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v56 = *(v9 + 2);
      v55 = *(v9 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v9);
      }

      *(v9 + 2) = v57;
      v58 = &v9[16 * v56];
      *(v58 + 4) = v10;
      *(v58 + 5) = v8;
      v59 = *a1;
      if (!*a1)
      {
        goto LABEL_143;
      }

      if (!v56)
      {
LABEL_3:
        v7 = v6[1];
        if (v8 >= v7)
        {
          goto LABEL_106;
        }

        continue;
      }

      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v9 + 4);
          v62 = *(v9 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_75:
          if (v64)
          {
            goto LABEL_122;
          }

          v77 = &v9[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_125;
          }

          v83 = &v9[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_129;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v87 = &v9[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_89:
        if (v82)
        {
          goto LABEL_124;
        }

        v90 = &v9[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_127;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_96:
        v98 = v60 - 1;
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v6)
        {
          goto LABEL_140;
        }

        v99 = *&v9[16 * v98 + 32];
        v100 = *&v9[16 * v60 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v99), (*v6 + 8 * *&v9[16 * v60 + 32]), (*v6 + 8 * v100), v59);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v100 < v99)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v98 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v101 = &v9[16 * v98];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        specialized Array.remove(at:)(v60);
        v57 = *(v9 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v9[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_120;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_121;
      }

      v72 = &v9[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_123;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_126;
      }

      if (v76 >= v68)
      {
        v94 = &v9[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  v38 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  if (v38 >= v37)
  {
    v38 = v6[1];
  }

  if (v38 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v38)
  {
    goto LABEL_55;
  }

  v113 = v9;
  v107 = v5;
  v109 = v10;
  v39 = *v6;
  v40 = v39 + 8 * v8 - 8;
  v41 = v10 - v8;
  v115 = v38;
LABEL_44:
  v116 = v40;
  v118 = v8;
  v42 = *(v39 + 8 * v8);
  v43 = v41;
  while (1)
  {
    v44 = *v40;
    v45 = v42;
    v46 = v44;
    v47 = NearbyAdvertisement.identifier.getter();
    v49 = v48;
    if (NearbyAdvertisement.identifier.getter() == v47 && v50 == v49)
    {

LABEL_43:
      v8 = v118 + 1;
      v40 = v116 + 8;
      --v41;
      if ((v118 + 1) == v115)
      {
        v8 = v115;
        v5 = v107;
        v10 = v109;
        v6 = a3;
        v9 = v113;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v39)
    {
      break;
    }

    v53 = *v40;
    v42 = *(v40 + 8);
    *v40 = v42;
    *(v40 + 8) = v53;
    v40 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, void **a2, id *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v15 = v5;
      goto LABEL_48;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v17 = *v14;
      v18 = *v12;
      v19 = v17;
      v20 = NearbyAdvertisement.identifier.getter();
      v22 = v21;
      v24 = NearbyAdvertisement.identifier.getter() == v20 && v23 == v22;
      if (v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      v16 = v12;
      v24 = v5 == v12++;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 8;
      if (v14 >= v44)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v16 = v14;
    v24 = v5 == v14++;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v16;
    goto LABEL_13;
  }

  v14 = a4;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v26 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v26;
  }

  v15 = a2;
  v44 = &v14[v11];
  if (v9 >= 8 && a2 > v5)
  {
    v43 = v14;
LABEL_31:
    __dst = v15;
    v27 = v15 - 1;
    v28 = v4;
    v29 = v44;
    v42 = v15 - 1;
    do
    {
      v30 = *(v29 - 1);
      v29 -= 8;
      v31 = *v27;
      v32 = v30;
      v33 = v31;
      v34 = NearbyAdvertisement.identifier.getter();
      v36 = v35;
      if (NearbyAdvertisement.identifier.getter() == v34 && v37 == v36)
      {

        v4 = v28 - 1;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v28 - 1;
        if (v39)
        {
          if (v28 != __dst)
          {
            *v4 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v15 = v42, v42 <= v5))
          {
            v15 = v42;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      v27 = v42;
      if (v44 != v28)
      {
        *v4 = *v29;
      }

      v44 = v29;
      v28 = v4;
    }

    while (v29 > v43);
    v44 = v29;
    v14 = v43;
    v15 = __dst;
  }

LABEL_48:
  if (v15 != v14 || v15 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v14, 8 * ((v44 - v14) / 8));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14NearbySessions0H13AdvertisementC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
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
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [NearbyAdvertisement] and conformance [A], &_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14NearbySessions0A13AdvertisementCGMd, &_sSay14NearbySessions0A13AdvertisementCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NearbyAdvertisement();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
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
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

uint64_t specialized closure #1 in closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = (*(*result + 168))(result);
    (*(*v3 + 176))(v4);
  }

  return result;
}

uint64_t specialized NearbyInvitationsProviderDataSource.receivedMessage(content:message:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions21InvitationRequestDataVSgMd, &_s14NearbySessions21InvitationRequestDataVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for InvitationRequestData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  outlined copy of Data?(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);
  if (os_log_type_enabled(v13, v14))
  {
    v28 = v3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v29 = v10;
    v27 = a1;
    if (a2 >> 60 == 15)
    {
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      v31 = a1;
      v32 = a2;
      outlined copy of Data._Representation(a1, a2);
      v18 = String.init<A>(reflecting:)();
      v17 = v19;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource is getting data from delegate %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    v3 = v28;
    v10 = v29;
  }

  else
  {
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  result = JSONDecoder.init()();
  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, &type metadata accessor for InvitationRequestData, &protocol conformance descriptor for InvitationRequestData);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v30, v8, v9);
    type metadata accessor for InvitationJoinResponse();
    InvitationRequestData.id.getter();
    v22 = static InvitationJoinResponse.approved(sessionIdentifier:memberHandles:userInfo:)();

    if ((*(*v3 + 208))(v23))
    {
      v25 = v24;
      ObjectType = swift_getObjectType();
      (*(v25 + 56))(v22, ObjectType, v25);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return (*(v10 + 8))(v30, v9);
  }

  return result;
}

void specialized NearbyInvitationsProviderDataSource.scannerError(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NWError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NWError and conformance NWError, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v7(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "NearbyInvitationsProviderDataSource received error from browser connection %@", v10, 0xCu);
    outlined destroy of Any?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t specialized NearbyInvitationsProviderDataSource.receivedApprovalMessage(content:message:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions21InvitationRequestDataVSgMd, &_s14NearbySessions21InvitationRequestDataVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = type metadata accessor for InvitationRequestData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "NearbyInvitationsProviderDataSource received approval message", v15, 2u);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  result = JSONDecoder.init()();
  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, &type metadata accessor for InvitationRequestData, &protocol conformance descriptor for InvitationRequestData);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(v9 + 56))(v7, 0, 1, v8);
    v17 = (*(v9 + 32))(v11, v7, v8);
    if (!(*(*v3 + 208))(v17))
    {

      return (*(v9 + 8))(v11, v8);
    }

    v19 = v18;
    v26[0] = InvitationRequestData.id.getter();
    v21 = v20;
    result = InvitationRequestData.invitationData.getter();
    if (v22 >> 60 != 15)
    {
      v23 = result;
      v24 = v22;
      ObjectType = swift_getObjectType();
      (*(v19 + 48))(v26[0], v21, v23, v24, ObjectType, v19);

      outlined consume of Data?(v23, v24);
      swift_unknownObjectRelease();

      return (*(v9 + 8))(v11, v8);
    }
  }

  __break(1u);
  return result;
}

char *specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(void *a1, uint64_t a2, char *a3)
{
  v36 = a1;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = v28 - v7;
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v28[1] = "nearby-group-host-limit";
  v28[2] = v13;
  static DispatchQoS.unspecified.getter();
  *&v38 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *(a3 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 4) = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  *&v38 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v15 = v30;
  Published.init(initialValue:)();
  (*(v31 + 32))(&a3[v14], v15, v32);
  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v38 = xmmword_1000C8990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v17 = v33;
  Published.init(initialValue:)();
  (*(v34 + 32))(&a3[v16], v17, v35);
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_connectionRequests;
  *&a3[v18] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7Network12NWConnectionCSgTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.client);
  v20 = v36;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "NearbyInvitationsAdvertiser init %@", v23, 0xCu);
    outlined destroy of Any?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  *(a3 + 3) = v20;
  v26 = &a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate];
  swift_beginAccess();
  *(v26 + 1) = &protocol witness table for NearbyInvitationsProviderDataSource;
  swift_unknownObjectWeakAssign();
  return a3;
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.advertiseNearbySessionEndpoint(params:response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbyInvitation(_:response:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.stopAdvertisingNearbySessionEndpoint(response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.markInvitationUsed(_:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.assertAdvertisementPublic(_:rotations:response:)(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.releaseAdvertisementPublicAssertion(_:assertionIdentifier:response:)(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.releaseInvitation(_:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_38Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.scanNearbyEndpoints(params:scannerID:response:)(a1, v7, v8, v10, v1 + v6, v9);
}

uint64_t objectdestroy_74Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t specialized BluetoothScanner.init(discoveryEngine:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v25[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v8 + 32))(a2 + v11, v10, v7);
  *(a2 + 16) = a1;
  *(a2 + 24) = &protocol witness table for CBDiscovery;
  [a1 setBleScanRate:20];
  v12 = swift_allocObject();
  *(v12 + 24) = &protocol witness table for CBDiscovery;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssertionManager();
  v13 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();

  v13[4] = Lock.init()();
  v13[5] = 0;
  v13[2] = partial apply for closure #1 in BluetoothScanner.init(discoveryEngine:);
  v13[3] = v12;

  *(a2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion) = v13;
  v14 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v14 + 96);
  swift_unknownObjectRetain();

  v17(partial apply for closure #2 in BluetoothScanner.init(discoveryEngine:), v16, ObjectType, v14);
  swift_unknownObjectRelease();

  v18 = *(a2 + 24);
  v19 = swift_getObjectType();
  v20 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v21 = *(v18 + 72);

  v21(partial apply for closure #3 in BluetoothScanner.init(discoveryEngine:), v20, v19, v18);
  swift_unknownObjectRelease();

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #4 in BluetoothScanner.init(discoveryEngine:), v23);

  return a2;
}

char *specialized FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0L6DeviceVyAD0I13RangingFilterC_GGGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  *(v4 + 2) = &_swiftEmptySetSingleton;
  *(v4 + 3) = &_swiftEmptySetSingleton;
  v12 = *(*v4 + 112);
  v18 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GGMR);
  CurrentSubject.init(wrappedValue:)();
  v13 = (*(v9 + 32))(&v4[v12], v11, v8);
  v18 = (*(*a1 + 128))(v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2 & 1;
  *(v15 + 40) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

char *specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = v29 - v6;
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v29[0] = "InvitationsAdvertiser";
  v29[1] = v12;
  static DispatchQoS.unspecified.getter();
  v37[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *(a4 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 6) = 0;
  v13 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v37[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v14 = v31;
  Published.init(initialValue:)();
  (*(v32 + 32))(&a4[v13], v14, v33);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.client);
  v16 = v34;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37[0] = v20;
    *v19 = 136315138;
    v21 = [v16 debugDescription];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v37);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "NearbyInvitationScanner init with parameters %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  *(a4 + 3) = v16;
  swift_beginAccess();
  *(a4 + 5) = &protocol witness table for NearbyInvitationsProviderDataSource;
  swift_unknownObjectWeakAssign();
  v26 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 32))(&a4[v26], v36, v27);
  return a4;
}

void specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveConnection:)(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  UUID.init()();
  v3 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  objc_allocWithZone(type metadata accessor for NearbyAdvertisement());

  outlined copy of Data?(v4, v5);
  v6 = NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Marking all generated pseudonyms as used due to incoming connection request", v10, 2u);
  }

  v11 = (*((swift_isaMask & *v15[6]) + 0xD0))();
  if (((*v15)[26])(v11))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(v6, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v74 = a6;
  v75 = a7;
  v76 = a4;
  v77 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v64 - v23;
  UUID.init(uuidString:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v78 = v14;
    outlined destroy of Any?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
    v27 = a2;
    v28 = a3;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.host);

    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v78;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v80);
      *(v34 + 12) = 2080;
      v79 = v25;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v35 = String.init<A>(reflecting:)();
      v37 = v8;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v80);

      *(v34 + 14) = v38;
      v8 = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Dropping joinRequest from: %s, reason: %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    static TaskPriority.background.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v33, 0, 1, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v8;
    v40[5] = v25;
    swift_errorRetain();

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:), v40);

    return outlined destroy of Any?(v33, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    v73 = v8;
    (*(v19 + 32))(v24, v17, v18);
    v72 = a2;
    v42 = String._bridgeToObjectiveC()();
    v43 = IDSCopyAddressDestinationForDestination();

    v44 = IDSCopyRawAddressForDestination();
    if (v44)
    {
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (String.count.getter() < 1)
      {
        (*(v19 + 8))(v24, v18);
      }

      v48 = type metadata accessor for NearbyProtoJoinRequest.Content(0);
      v49 = *(a1 + v48[8]);
      if (v49 == 2 || (v49 & 1) != 0)
      {

        v65 = v72;
        v70 = a3;
      }

      else
      {
        v65 = 0;
        v70 = 0;
      }

      v78 = v14;
      (*(v19 + 16))(v22, v24, v18);
      v50 = (a1 + v48[6]);
      v51 = v50[1];
      v71 = v47;
      v66 = v45;
      if (v51)
      {
        v64 = *v50;
        v69 = v51;
      }

      else
      {
        v64 = 0;
        v69 = 0xE000000000000000;
      }

      v52 = (a1 + v48[7]);
      v53 = *v52;
      v54 = v52[1];
      if (v54 >> 60 == 15)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v52;
      }

      v56 = 0xC000000000000000;
      if (v54 >> 60 != 15)
      {
        v56 = v54;
      }

      v67 = v56;
      v68 = v55;
      v57 = *((swift_isaMask & *v73[6]) + 0xE0);

      outlined copy of Data?(v53, v54);
      v57(v76, v77);
      objc_allocWithZone(type metadata accessor for IncomingInvitationJoinRequest());
      outlined copy of Data._Representation(v74, v75);
      v58 = IncomingInvitationJoinRequest.init(invitationID:remotePseudonym:destinationToken:remotePublicKey:displayName:userInfo:hostInfo:)();
      if (((*v73)[26])(v58, v59, v60))
      {
        v62 = v61;
        ObjectType = swift_getObjectType();
        (*(v62 + 24))(v58, ObjectType, v62);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return (*(v19 + 8))(v24, v18);
  }
}

uint64_t specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveConnection:)(uint64_t *a1)
{
  v133 = type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0);
  v2 = __chkstk_darwin(v133);
  v132 = (&v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v130 = (&v126 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v131 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v129 = &v126 - v9;
  __chkstk_darwin(v8);
  v11 = &v126 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v128 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v136 = &v126 - v16;
  v17 = __chkstk_darwin(v15);
  v127 = &v126 - v18;
  v19 = __chkstk_darwin(v17);
  v134 = &v126 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v126 - v22;
  __chkstk_darwin(v21);
  v25 = &v126 - v24;
  v26 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v137 = (&v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __chkstk_darwin(v28);
  v139 = (&v126 - v31);
  v32 = __chkstk_darwin(v30);
  v144 = &v126 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v126 - v35;
  v37 = __chkstk_darwin(v34);
  v140 = &v126 - v38;
  __chkstk_darwin(v37);
  v40 = &v126 - v39;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Log.host);
  outlined init with copy of NearbyProtoJoinResponse.Content(a1, v40, type metadata accessor for NearbyProtoConnectionResponse.Content);
  v141 = v42;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v135 = v27;
  if (v45)
  {
    v142 = a1;
    v138 = v11;
    v46 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v145 = v126;
    *v46 = 136315138;
    outlined init with copy of NearbyProtoJoinResponse.Content(v40, v25, type metadata accessor for NearbyProtoConnectionResponse.Content);
    (*(v27 + 56))(v25, 0, 1, v26);
    outlined init with copy of (String, Any)(v25, v23, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    if ((*(v27 + 48))(v23, 1, v26) == 1)
    {
      v47 = 7104878;
      v48 = 0xE300000000000000;
    }

    else
    {
      v49 = v26;
      v50 = v140;
      outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v23, v140, type metadata accessor for NearbyProtoConnectionResponse.Content);
      outlined init with copy of NearbyProtoJoinResponse.Content(v50, v36, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v47 = String.init<A>(reflecting:)();
      v48 = v51;
      v52 = v50;
      v26 = v49;
      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v52, type metadata accessor for NearbyProtoConnectionResponse.Content);
    }

    outlined destroy of Any?(v25, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v40, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v145);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "NearbyInvitationsProviderDataSource got didReceiveConnection response: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v126);

    v11 = v138;
    a1 = v142;
  }

  else
  {

    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v40, type metadata accessor for NearbyProtoConnectionResponse.Content);
  }

  v54 = *(v26 + 24);
  outlined init with copy of (String, Any)(a1 + v54, v11, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
  v55 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  v56 = *(*(v55 - 8) + 48);
  result = v56(v11, 1, v55);
  v58 = v144;
  if (result != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v68 = v139;
      outlined init with copy of NearbyProtoJoinResponse.Content(a1, v139, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = a1;
        v72 = v11;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v145 = v74;
        *v73 = 136315138;
        v75 = v68;
        v76 = v136;
        outlined init with copy of NearbyProtoJoinResponse.Content(v75, v136, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v77 = v135;
        (*(v135 + 56))(v76, 0, 1, v26);
        v78 = v76;
        v79 = v128;
        outlined init with copy of (String, Any)(v78, v128, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
        if ((*(v77 + 48))(v79, 1, v26) == 1)
        {
          v80 = 7104878;
          v81 = 0xE300000000000000;
        }

        else
        {
          v96 = v140;
          outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v79, v140, type metadata accessor for NearbyProtoConnectionResponse.Content);
          outlined init with copy of NearbyProtoJoinResponse.Content(v96, v36, type metadata accessor for NearbyProtoConnectionResponse.Content);
          v80 = String.init<A>(reflecting:)();
          v81 = v97;
          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v96, type metadata accessor for NearbyProtoConnectionResponse.Content);
        }

        outlined destroy of Any?(v136, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v139, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v145);

        *(v73 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v69, v70, "NearbyInvitationsProviderDataSource: Connection response got denied %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);

        v11 = v72;
        a1 = v71;
      }

      else
      {

        v82 = outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v68, type metadata accessor for NearbyProtoConnectionResponse.Content);
      }

      v99 = *a1;
      v100 = a1[1];
      v101 = (*(*v143 + 328))(v82);
      v102 = v137;
      if (*(v101 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v99, v100), (v103 & 1) != 0))
      {

        lazy protocol witness table accessor for type NearbyInvitationsProviderDataSource.Errors and conformance NearbyInvitationsProviderDataSource.Errors();
        v104 = swift_allocError();
        *v105 = 1;
        v145 = v104;
        PassthroughSubject.send(completion:)();

        v106 = (*(*v143 + 344))(&v145);
        specialized Dictionary._Variant.removeValue(forKey:)(v99, v100);

        v106(&v145, 0);
      }

      else
      {

        outlined init with copy of NearbyProtoJoinResponse.Content(a1, v102, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v145 = v110;
          *v109 = 136315138;
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NearbyProtoConnectionResponse.Content and conformance NearbyProtoConnectionResponse.Content, type metadata accessor for NearbyProtoConnectionResponse.Content, &protocol conformance descriptor for NearbyProtoConnectionResponse.Content);
          v111 = Message.debugDescription.getter();
          v113 = v112;
          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v102, type metadata accessor for NearbyProtoConnectionResponse.Content);
          v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v145);

          *(v109 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v107, v108, "NearbyInvitationsProviderDataSource Could not find a request in flight for %s", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v110);
        }

        else
        {

          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v102, type metadata accessor for NearbyProtoConnectionResponse.Content);
        }
      }

      return outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v11, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    }

    outlined init with copy of NearbyProtoJoinResponse.Content(a1, v58, type metadata accessor for NearbyProtoConnectionResponse.Content);
    v59 = v58;
    v60 = Logger.logObject.getter();
    LODWORD(v141) = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v60, v141);
    v142 = a1;
    if (v61)
    {
      v138 = v11;
      v62 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v145 = v137;
      v139 = v62;
      *v62 = 136315138;
      v63 = v134;
      outlined init with copy of NearbyProtoJoinResponse.Content(v59, v134, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v64 = v135;
      (*(v135 + 56))(v63, 0, 1, v26);
      v65 = v127;
      outlined init with copy of (String, Any)(v63, v127, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
      if ((*(v64 + 48))(v65, 1, v26) == 1)
      {
        v66 = 7104878;
        v67 = 0xE300000000000000;
      }

      else
      {
        v83 = v140;
        outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v65, v140, type metadata accessor for NearbyProtoConnectionResponse.Content);
        outlined init with copy of NearbyProtoJoinResponse.Content(v83, v36, type metadata accessor for NearbyProtoConnectionResponse.Content);
        v66 = String.init<A>(reflecting:)();
        v67 = v84;
        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v83, type metadata accessor for NearbyProtoConnectionResponse.Content);
      }

      outlined destroy of Any?(v134, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentVSgMR);
      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v144, type metadata accessor for NearbyProtoConnectionResponse.Content);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v145);

      v86 = v139;
      *(v139 + 1) = v85;
      _os_log_impl(&_mh_execute_header, v60, v141, "NearbyInvitationsProviderDataSource: Connection approved with: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v137);

      v11 = v138;
      a1 = v142;
    }

    else
    {

      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v59, type metadata accessor for NearbyProtoConnectionResponse.Content);
    }

    v88 = *a1;
    v87 = a1[1];
    v89 = (*(*v143 + 344))(&v145);
    v144 = v87;
    v90 = specialized Dictionary._Variant.removeValue(forKey:)(v88, v87);
    v91 = v89(&v145, 0);
    if (!v90)
    {
LABEL_37:
      if (!(*(*v143 + 208))(v91))
      {
        return outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v11, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      }

      v118 = v117;
      v119 = v131;
      outlined init with copy of (String, Any)(v142 + v54, v131, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
      if (v56(v119, 1, v55) == 1)
      {
        outlined destroy of Any?(v119, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
        v120 = v132;
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v120 = v132;
        if (EnumCaseMultiPayload == 1)
        {
          v122 = v11;
          outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v119, v132, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
LABEL_44:
          ObjectType = swift_getObjectType();
          v124 = *v120;
          v125 = v120[1];
          outlined copy of Data._Representation(*v120, v125);
          outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v120, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
          (*(v118 + 48))(v88, v144, v124, v125, ObjectType, v118);
          swift_unknownObjectRelease();
          outlined consume of Data._Representation(v124, v125);
          v11 = v122;
          return outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v11, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
        }

        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v119, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
      }

      v122 = v11;
      *v120 = xmmword_1000CAAE0;
      UnknownStorage.init()();
      goto LABEL_44;
    }

    v92 = v129;
    outlined init with copy of (String, Any)(v142 + v54, v129, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    if (v56(v92, 1, v55) == 1)
    {
      outlined destroy of Any?(v92, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
      v93 = v130;
    }

    else
    {
      v94 = swift_getEnumCaseMultiPayload();
      v93 = v130;
      if (v94 == 1)
      {
        v95 = v88;
        outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v92, v130, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
LABEL_36:
        v116 = *v93;
        v115 = v93[1];
        outlined copy of Data._Representation(*v93, v115);
        outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v93, type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent);
        v145 = v116;
        v146 = v115;
        PassthroughSubject.send(_:)();

        v91 = outlined consume of Data._Representation(v145, v146);
        v88 = v95;
        goto LABEL_37;
      }

      outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v92, type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation);
    }

    v95 = v88;
    *v93 = xmmword_1000CAAE0;
    UnknownStorage.init()();
    goto LABEL_36;
  }

  return result;
}

uint64_t specialized static InvitationJoinResponse.from(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  outlined init with copy of (String, Any)(a1 + *(v8 + 20), v4, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
  v9 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    outlined destroy of Any?(v4, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
LABEL_12:
    type metadata accessor for InvitationJoinResponse();
    return static InvitationJoinResponse.denied.getter();
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v4, type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation);
    goto LABEL_12;
  }

  outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(v4, v7, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  v10 = &v7[*(v5 + 28)];
  v11 = *v10;
  v12 = v10[1];
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v10;
  }

  if (v12 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = v10[1];
  }

  type metadata accessor for InvitationJoinResponse();
  outlined copy of Data?(v11, v12);
  v15 = static InvitationJoinResponse.approved(sessionIdentifier:memberHandles:userInfo:)();
  outlined consume of Data._Representation(v13, v14);
  outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v7, type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent);
  return v15;
}

void specialized NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v63 - v12;
  __chkstk_darwin(v11);
  v71 = &v63 - v13;
  v14 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  __chkstk_darwin(v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Log.host);
  outlined init with copy of NearbyProtoJoinResponse.Content(a1, v16, type metadata accessor for NearbyProtoJoinResponse.Content);
  v69 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v70 = v2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v65 = v7;
    v24 = v8;
    v25 = v23;
    v73[0] = v23;
    *v22 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NearbyProtoJoinResponse.Content and conformance NearbyProtoJoinResponse.Content, type metadata accessor for NearbyProtoJoinResponse.Content, &protocol conformance descriptor for NearbyProtoJoinResponse.Content);
    v26 = Message.debugDescription.getter();
    v28 = v27;
    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v16, type metadata accessor for NearbyProtoJoinResponse.Content);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v73);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "NearbyInvitationsProviderDataSource didReceiveJoinResponse: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v8 = v24;
    v7 = v65;

    v2 = v70;
  }

  else
  {

    outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(v16, type metadata accessor for NearbyProtoJoinResponse.Content);
  }

  v30 = v71;
  v31 = specialized static InvitationJoinResponse.from(content:)(a1);
  UUID.init(uuidString:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v32 = outlined destroy of Any?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v8 + 32))(v30, v6, v7);
    v33 = v67;
    v65 = *(v8 + 16);
    v65(v67, v30, v7);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v66 = v8;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = v33;
      v64 = swift_slowAlloc();
      v73[0] = v64;
      *v37 = 136315138;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = v31;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v67 = *(v8 + 8);
      (v67)(v38, v7);
      v43 = v40;
      v31 = v39;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, v73);
      v30 = v71;

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Looking up waitingJoinRequest with identifier: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);

      v2 = v70;
    }

    else
    {

      v67 = *(v8 + 8);
      (v67)(v33, v7);
    }

    v45 = v68;
    v46 = (*(*v2 + 320))(v73);
    v47 = specialized Dictionary.removeValue(forKey:)(v30);
    v68 = v48;
    v46(v73, 0);
    if (v47)
    {
      v65(v45, v30, v7);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v73[0] = v69;
        *v51 = 136315138;
        v52 = v51;
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        (v67)(v45, v7);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v73);

        *(v52 + 1) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "Calling callback that was waiting for a joinResponse, identifier: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);

        v30 = v71;

        v57 = v67;
      }

      else
      {

        v57 = v67;
        (v67)(v45, v7);
      }

      v72 = 0;
      v73[0] = v31;
      v58 = v31;
      v59 = v68;
      v47(v73, &v72);
      _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v47, v59);
      v57(v30, v7);
    }

    else
    {
      v32 = (v67)(v30, v7);
    }

    v2 = v70;
  }

  if ((*(*v2 + 208))(v32))
  {
    v61 = v60;
    ObjectType = swift_getObjectType();
    (*(v61 + 56))(v31, ObjectType, v61);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for NearbyInvitationsProviderDataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbyInvitationsProviderDataSource;
  if (!type metadata singleton initialization cache for NearbyInvitationsProviderDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NearbyInvitationsProviderDataSource(uint64_t a1)
{
  type metadata accessor for Published<Data?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Data?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Data?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Data?>);
    }
  }
}

uint64_t outlined init with copy of NearbyProtoJoinResponse.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyProtoJoinResponse.Content.OneOf_Operation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of NearbyProtoJoinResponse.Content.ApprovalContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.serviceController(_:didReceiveJoin:fromID:toID:publicKey:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.approveConnectionRequest(_:localInvitation:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestEndpointConnection(with:pseudonym:response:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(uint64_t a1)
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
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.requestConnection(with:localInvitation:response:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #1 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v6, a2);
}

uint64_t specialized closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v54 = a3 & 1;
  v55 = a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v44 = result;
  if (result)
  {
    if (one-time initialization token for host != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Log.host);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v53 = v10;
        *v9 = 136315138;
        v11 = (*(*a2 + 104))();
        v12 = *(v11 + 16);
        if (v12)
        {
          v38 = v10;
          v39 = v9;
          v40 = a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
          v41 = v8;
          v42 = v7;
          v43 = a2;
          v52 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
          v13 = v52;
          v14 = v12 - 1;
          for (i = 32; ; i += 104)
          {
            v16 = *(v11 + i + 16);
            v46 = *(v11 + i);
            v47 = v16;
            v17 = *(v11 + i + 32);
            v18 = *(v11 + i + 48);
            v19 = *(v11 + i + 64);
            v51 = *(v11 + i + 80);
            v49 = v18;
            v50 = v19;
            v48 = v17;
            outlined init with copy of (String, Any)(&v46, &v45, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
            v52 = v13;
            v21 = v13[2];
            v20 = v13[3];
            if (v21 >= v20 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
              v13 = v52;
            }

            v13[2] = v21 + 1;
            v22 = &v13[11 * v21];
            v23 = v47;
            *(v22 + 2) = v46;
            *(v22 + 3) = v23;
            v24 = v48;
            v25 = v49;
            v26 = v50;
            *(v22 + 112) = v51;
            *(v22 + 5) = v25;
            *(v22 + 6) = v26;
            *(v22 + 4) = v24;
            if (!v14)
            {
              break;
            }

            --v14;
          }

          a2 = v43;
          v7 = v42;
          LOBYTE(v8) = v41;
          v9 = v39;
          v10 = v38;
        }

        else
        {

          v13 = _swiftEmptyArrayStorage;
        }

        *&v46 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
        v27 = String.init<A>(reflecting:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v53);

        *(v9 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v7, v8, "Learned about updated BT devices: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }

      else
      {
      }

      *&v46 = _swiftEmptyArrayStorage;
      v30 = (*(*a2 + 104))();
      __chkstk_darwin(v30);
      v37[2] = v44;
      v37[3] = &v46;
      v37[4] = &v54;
      specialized Sequence.forEach(_:)(partial apply for specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:), v37, v30);

      a2 = v46;
      v31 = *(v46 + 16);
      if (!v31)
      {
        break;
      }

      v45 = _swiftEmptyArrayStorage;

      specialized ContiguousArray.reserveCapacity(_:)();
      v32 = 0;
      v33 = (a2 + 48);
      while (v32 < *(a2 + 16))
      {
        ++v32;
        type metadata accessor for NearbyRangingFilter();
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter, type metadata accessor for NearbyRangingFilter, &protocol conformance descriptor for NearbyRangingFilter);

        dispatch thunk of ObservableObject.objectWillChange.getter();
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ObservableObjectPublisher();

        Publisher<>.sink(receiveValue:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v33 += 3;
        if (v31 == v32)
        {
          v34 = v45;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v34 = _swiftEmptyArrayStorage;
LABEL_20:
    v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7Combine14AnyCancellableC_SayAFGTt0g5Tf4g_n(v34);

    v36 = v44;
    (*(*v44 + 152))(v35);
    (*(*v36 + 176))(a2);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v10 = *(a1 + 96);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return specialized closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(v9, v2, v3, *v4, *(v4 + 8));
}

uint64_t partial apply for closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in NearbyInvitationsProviderDataSource.scanNearbyInvitations(scannerID:response:)(a1, v4, v5, v6);
}

void *AssertionManager.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  v4[4] = Lock.init()();
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

uint64_t AssertionManager.updateCallback.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void AssertionManager.assertionCount.setter(uint64_t a1)
{
  Lock.lock()();
  v3 = *(v1 + 40);
  if (v3 == a1)
  {
    Lock.unlock()();
  }

  else
  {
    *(v1 + 40) = a1;
    Lock.unlock()();
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = a1 <= 0;
    }

    if (!v4 || (v3 >= 1 ? (v5 = a1 == 0) : (v5 = 0), v5))
    {
      (*(v1 + 16))(a1);
    }
  }

  Lock.assertNotOwned()();
}

void *AssertionManager.init(callback:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lock();
  swift_allocObject();
  v2[4] = Lock.init()();
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t AssertionManager.subscribe()()
{
  type metadata accessor for AssertionManager.Assertion();
  swift_allocObject();

  v1 = specialized AssertionManager.Assertion.init(manager:)(v0);

  return v1;
}

uint64_t AssertionManager.Assertion.__allocating_init(manager:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v2;
}

uint64_t AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  v1 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v1;
}

uint64_t AssertionManager.Assertion.deinit()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return v0;
  }

  v2 = Strong;
  result = Lock.withLock<A>(_:)();
  v4 = v6 - 1;
  if (!__OFSUB__(v6, 1))
  {
    Lock.lock()();
    v5 = *(v2 + 40);
    if (v5 == v4)
    {
      Lock.unlock()();
    }

    else
    {
      *(v2 + 40) = v4;
      Lock.unlock()();
      if (!v5 && v4 >= 1 || v5 >= 1 && v6 == 1)
      {
        (*(v2 + 16))(v4);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.Assertion.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return swift_deallocClassInstance();
  }

  v1 = Strong;
  result = Lock.withLock<A>(_:)();
  v3 = v5 - 1;
  if (!__OFSUB__(v5, 1))
  {
    Lock.lock()();
    v4 = *(v1 + 40);
    if (v4 == v3)
    {
      Lock.unlock()();
    }

    else
    {
      *(v1 + 40) = v3;
      Lock.unlock()();
      if (!v4 && v3 >= 1 || v4 >= 1 && v5 == 1)
      {
        (*(v1 + 16))(v3);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.deinit()
{

  return v0;
}

uint64_t AssertionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  result = Lock.withLock<A>(_:)();
  v4 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    Lock.lock()();
    v5 = *(a1 + 40);
    if (v5 == v4)
    {
      Lock.unlock()();
    }

    else
    {
      *(a1 + 40) = v4;
      Lock.unlock()();
      if (!v5 && v4 > 0 || v5 >= 1 && v6 == -1)
      {
        (*(a1 + 16))(v4);
      }
    }

    Lock.assertNotOwned()();
    return v1;
  }

  return result;
}

uint64_t NearbySession.isRunning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  (*(v2 + 16))(&v6[-v3], v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__isRunning, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[15];
}

uint64_t NearbySession.isRunning.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  (*(v4 + 16))(&v8[-v5], v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__isRunning, v3);
  v8[15] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t (*NearbySession.isRunning.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = CurrentSubject.wrappedValue.modify();
  return NearbySession.isRunning.modify;
}

uint64_t NearbySession.rangedDevice.getter()
{
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  (*(v2 + 16))(&v6[-v3], v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__rangedDevice, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[15];
}

uint64_t NearbySession.rangedDevice.setter(char a1)
{
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  (*(v4 + 16))(&v8[-v5], v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__rangedDevice, v3);
  v8[15] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t (*NearbySession.rangedDevice.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = CurrentSubject.wrappedValue.modify();
  return NearbySession.rangedDevice.modify;
}

uint64_t NearbySession.$isRunning.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v3 + *a3, v5);
  v9 = CurrentSubject.projectedValue.getter();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t NearbySession.stableIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_stableIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t NearbySession.stableIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_stableIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *NearbySession.init(stableIdentifier:rangingConfig:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v47 = a4;
  v46 = a3;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySbGMd, "^t");
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45[-v13];
  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__isRunning;
  LOBYTE(v49) = 0;
  CurrentSubject.init(wrappedValue:)();
  (*(v12 + 32))(&v4[v15], v14, v11);
  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession__rangedDevice;
  LOBYTE(v49) = 3;
  CurrentSubject.init(wrappedValue:)();
  (*(v8 + 32))(&v4[v16], v10, v7);
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session;
  *&v4[v17] = [objc_allocWithZone(NISession) init];
  v18 = &v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_stableIdentifier];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config];
  *v19 = v46 & 1;
  *(v19 + 1) = v47;
  v20 = type metadata accessor for NearbySession(0);
  v48.receiver = v4;
  v48.super_class = v20;
  v21 = objc_msgSendSuper2(&v48, "init");
  v22 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session;
  v23 = *&v21[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session];
  v24 = v21;
  [v23 setDelegate:v24];
  v25 = *&v21[v22];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v26 = v25;
  v27 = static OS_dispatch_queue.main.getter();
  [v26 setDelegateQueue:v27];

  v28 = *&v21[v22];
  v29 = *&v24[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8];
  v30 = objc_allocWithZone(NIRegionPredicate);
  v31 = v28;
  v32 = String._bridgeToObjectiveC()();
  v33 = [v30 initWithName:v32 devicePresencePreset:v29];

  v34 = objc_allocWithZone(NIRegionPredicate);
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 initWithName:v35 devicePresencePreset:5];

  v37 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v49 = 0;
  v38 = v33;
  v39 = v36;
  v40 = [v37 initWithInnerBoundary:v38 outerBoundary:v39 error:&v49];
  if (v40)
  {
    v41 = v40;
    v42 = v49;

    [v41 setAllowedDevices:4];
    [v41 setMonitoringOption:1];

    [v31 runWithConfiguration:v41];
    return v24;
  }

  else
  {
    v44 = v49;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *NearbyRangingFilter.Config.niDevicePresenceConfig.getter(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(NIRegionPredicate);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithName:v4 devicePresencePreset:a2];

  v6 = objc_allocWithZone(NIRegionPredicate);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithName:v7 devicePresencePreset:5];

  v9 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v17 = 0;
  v10 = v5;
  v11 = v8;
  v12 = [v9 initWithInnerBoundary:v10 outerBoundary:v11 error:&v17];
  if (v12)
  {
    v13 = v12;
    v14 = v17;

    [v13 setAllowedDevices:4];
    [v13 setMonitoringOption:1];

    return v13;
  }

  else
  {
    v16 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NearbySession(uint64_t a1)
{
  result = type metadata singleton initialization cache for NearbySession;
  if (!type metadata singleton initialization cache for NearbySession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void NearbySession.handle(device:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *((swift_isaMask & *v1) + 0x78);
      v5 = v3;
      if (v4())
      {
LABEL_6:
        v20 = [*(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session) devicePresenceNotifier];
        [v20 notifyBluetoothSample:v5];

        return;
      }

      v6 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);
      v7 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8);
      v8 = objc_allocWithZone(NIRegionPredicate);
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 initWithName:v9 devicePresencePreset:v7];

      v11 = objc_allocWithZone(NIRegionPredicate);
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 initWithName:v12 devicePresencePreset:5];

      v14 = objc_allocWithZone(NIDevicePresenceConfiguration);
      v32 = 0;
      v15 = v10;
      v16 = v13;
      v17 = [v14 initWithInnerBoundary:v15 outerBoundary:v16 error:&v32];
      if (v17)
      {
        v18 = v17;
        v19 = v32;

        [v18 setAllowedDevices:4];
        [v18 setMonitoringOption:1];

        [v6 runWithConfiguration:v18];
        goto LABEL_6;
      }

      v31 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.host);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create NIBluetoothSample, can't update ranging to the device.", v29, 2u);
      }

      v30 = *((swift_isaMask & *v2) + 0xA0);

      v30(3);
    }
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.host);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device lost invitation", v24, 2u);
    }

    (*((swift_isaMask & *v2) + 0xA0))(3);
    v25 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);

    [v25 invalidate];
  }
}

Swift::Void __swiftcall NearbySession.invalidate()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session];
    v12 = v6;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v8 = v7;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "NISession %s Invalidate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  [*&v2[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session] invalidate];
}

id NearbySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall NearbySession.sessionDidStartRunning(_:)(NISession a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "NISession %s Running", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  (*((swift_isaMask & *v2) + 0x80))(1);
}

uint64_t NearbySession.session(_:didFailWithError:)(void *a1, uint64_t a2, const char *a3, ...)
{
  v5 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = a1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v14 = v8;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0x16u);
    outlined destroy of NSObject?(v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  (*((swift_isaMask & *v5) + 0x80))(0);
  return (*((swift_isaMask & *v5) + 0xA0))(3);
}

uint64_t NearbySession.session(_:suspendedWith:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v8, v9, "NISession %s Suspended: %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  (*((swift_isaMask & *v3) + 0x80))(0);
  return (*((swift_isaMask & *v3) + 0xA0))(3);
}

void NearbySession.session(_:suspensionReasonEnded:isNoLongerSuspended:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315650;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    *(v12 + 22) = 1024;
    *(v12 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "NISession %s Suspension Ended: %ld, isActive: %{BOOL}d", v12, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  if (a3)
  {
    v18 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);
    v19 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config + 8);
    v20 = objc_allocWithZone(NIRegionPredicate);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 initWithName:v21 devicePresencePreset:v19];

    v23 = objc_allocWithZone(NIRegionPredicate);
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 initWithName:v24 devicePresencePreset:5];

    v26 = objc_allocWithZone(NIDevicePresenceConfiguration);
    v33 = 0;
    v27 = v22;
    v28 = v25;
    v29 = [v26 initWithInnerBoundary:v27 outerBoundary:v28 error:&v33];
    if (v29)
    {
      v30 = v29;
      v31 = v33;

      [v30 setAllowedDevices:4];
      [v30 setMonitoringOption:1];

      [v18 runWithConfiguration:v30];
    }

    else
    {
      v32 = v33;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

Swift::Void __swiftcall NearbySession.session(_:didDiscover:)(NISession _, NINearbyObject didDiscover)
{
  v5 = [(objc_class *)didDiscover.super.isa deviceIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = (*((swift_isaMask & *v2) + 0xB8))();
  if (v9)
  {
    if (v7 == v10 && v9 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.host);
    v15 = _.super.isa;
    v16 = didDiscover.super.isa;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v18 = 136315394;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
      v21 = v15;
      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v16;
      *v19 = v16;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, oslog, v17, "NISession %s discovered device: %@", v18, 0x16u);
      outlined destroy of NSObject?(v19);

      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
    }
  }

  else
  {
  }
}

void specialized NearbySession.session(_:object:didUpdateRegion:previousRegion:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 deviceIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == (*((swift_isaMask & *v3) + 0xB8))() && v10 == v11)
    {

      if (a2)
      {
LABEL_8:
        v14 = [a2 name];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == 0x72656E6E69 && v17 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          (*((swift_isaMask & *v3) + 0xA0))(1);
          goto LABEL_23;
        }

        if (v15 == 0x726574756FLL && v17 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          (*((swift_isaMask & *v3) + 0xA0))(2);
LABEL_23:
          if (*(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_config) == 1)
          {
            v31 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession_session);

            [v31 invalidate];
          }

          return;
        }

        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Log.host);

        v28 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v28, v33))
        {

          goto LABEL_22;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38 = v35;
        *v34 = 136446210;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v38);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v28, v33, "Unexpected Region: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);

LABEL_21:

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        return;
      }

      if (a2)
      {
        goto LABEL_8;
      }
    }

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.host);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_22;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unexpected Region: none", v30, 2u);
    goto LABEL_21;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = a1;
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NINearbyObject, NINearbyObject_ptr);
    v23 = v19;
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v38);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, oslog, v20, "Found object but doesn't have a deviceIdentifier. Object: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
  }
}

void specialized NearbySession.session(_:didUpdateAlgorithmState:for:)(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Algorithm state updated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
  }
}

unint64_t lazy protocol witness table accessor for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location()
{
  result = lazy protocol witness table cache variable for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location;
  if (!lazy protocol witness table cache variable for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbySession.RangedDevice.Location and conformance NearbySession.RangedDevice.Location);
  }

  return result;
}

void type metadata completion function for NearbySession(uint64_t a1)
{
  type metadata accessor for CurrentSubject<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CurrentSubject<NearbySession.RangedDevice?>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for CurrentSubject<Bool>()
{
  if (!lazy cache variable for type metadata for CurrentSubject<Bool>)
  {
    v0 = type metadata accessor for CurrentSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CurrentSubject<Bool>);
    }
  }
}

void type metadata accessor for CurrentSubject<NearbySession.RangedDevice?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CurrentSubject<NearbySession.RangedDevice?>)
  {
    v1 = type metadata accessor for CurrentSubject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CurrentSubject<NearbySession.RangedDevice?>);
    }
  }
}

void (*specialized Sequence.forEach(_:)(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; i = (i + 104))
    {
      v7 = i[3];
      v8 = i[5];
      v31 = i[4];
      v32 = v8;
      v9 = i[1];
      v28[0] = *i;
      v28[1] = v9;
      v10 = i[3];
      v12 = *i;
      v11 = i[1];
      v29 = i[2];
      v30 = v10;
      v13 = i[5];
      v25 = v31;
      v26 = v13;
      v21 = v12;
      v22 = v11;
      v33 = *(i + 12);
      v27 = *(i + 12);
      v23 = v29;
      v24 = v7;
      outlined init with copy of BluetoothScanner.Device(v28, &v14);
      v5(&v21);
      if (v3)
      {
        break;
      }

      v18 = v25;
      v19 = v26;
      v20 = v27;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      result = outlined destroy of BluetoothScanner.Device(&v14);
      if (!--v4)
      {
        return result;
      }
    }

    v18 = v25;
    v19 = v26;
    v20 = v27;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    return outlined destroy of BluetoothScanner.Device(&v14);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *FilteredBluetoothScanner.__allocating_init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized FilteredBluetoothScanner.init(scanner:config:)(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);

  return v4;
}

__n128 FilteredBluetoothScanner.FilteredDevice.device.getter@<Q0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 48))(v7, a1, a2);
  v4 = v7[5];
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v4;
  *(a3 + 96) = v8;
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t FilteredBluetoothScanner.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t FilteredBluetoothScanner.FilteredDevice.filter.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t FilteredBluetoothScanner.FilteredDevice.shouldHandleUpdates(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t FilteredBluetoothScanner.showDeviceObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t property wrapper backing initializer of FilteredBluetoothScanner.filteredDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, a2, a3, a4);
  type metadata accessor for Array();
  return CurrentSubject.init(wrappedValue:)();
}

uint64_t FilteredBluetoothScanner.filteredDevices.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, *(*v4 + 80), *(*v4 + 88), a4);
  type metadata accessor for Array();
  v6 = type metadata accessor for CurrentSubject();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  (*(v7 + 16))(v11 - v8, v4 + *(v5 + 112), v6);
  CurrentSubject.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  return v11[1];
}

uint64_t FilteredBluetoothScanner.filteredDevices.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, *(*v4 + 80), *(*v4 + 88), a4);
  type metadata accessor for Array();
  v7 = type metadata accessor for CurrentSubject();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  (*(v8 + 16))(v12 - v9, v4 + *(v6 + 112), v7);
  v12[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v8 + 8))(v10, v7);
}

void (*FilteredBluetoothScanner.filteredDevices.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v5 = v3;
  *a1 = v3;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, *(*v1 + 80), *(*v1 + 88), v4);
  type metadata accessor for Array();
  v6 = type metadata accessor for CurrentSubject();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[6] = v9;
  (*(v8 + 16))();
  v5[7] = CurrentSubject.wrappedValue.modify();
  return BluetoothScanner.devices.modify;
}

uint64_t FilteredBluetoothScanner.$filteredDevices.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, *(*v4 + 80), *(*v4 + 88), a4);
  type metadata accessor for Array();
  v6 = type metadata accessor for CurrentSubject();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  (*(v7 + 16))(&v12 - v8, v4 + *(v5 + 112), v6);
  v10 = CurrentSubject.projectedValue.getter();
  (*(v7 + 8))(v9, v6);
  return v10;
}

char *FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized FilteredBluetoothScanner.init(scanner:config:)(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);

  return v3;
}

uint64_t closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.host);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v51;
      v52 = v15;
      *v15 = 136315138;
      v16 = (*(*a3 + 104))();
      v17 = *(v16 + 16);
      if (v17)
      {
        v46 = v14;
        v47 = v13;
        v48 = a5;
        v49 = a6;
        v50 = a4;
        v60 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
        v18 = _swiftEmptyArrayStorage;
        v19 = v17 - 1;
        for (i = 32; ; i += 104)
        {
          v21 = *(v16 + i + 16);
          v54 = *(v16 + i);
          v55 = v21;
          v22 = *(v16 + i + 32);
          v23 = *(v16 + i + 48);
          v24 = *(v16 + i + 64);
          v59 = *(v16 + i + 80);
          v57 = v23;
          v58 = v24;
          v56 = v22;
          outlined init with copy of IgnoreEquatable<IgnoreEquatable<BluetoothScannerDiscoveryEngineDevice>>(&v54, v53);
          v60 = v18;
          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
            v18 = v60;
          }

          v18[2] = v26 + 1;
          v27 = &v18[11 * v26];
          v28 = v55;
          *(v27 + 2) = v54;
          *(v27 + 3) = v28;
          v29 = v56;
          v30 = v57;
          v31 = v58;
          *(v27 + 112) = v59;
          *(v27 + 5) = v30;
          *(v27 + 6) = v31;
          *(v27 + 4) = v29;
          if (!v19)
          {
            break;
          }

          --v19;
        }

        a4 = v50;
        a6 = v49;
        a5 = v48;
        v13 = v47;
        LOBYTE(v14) = v46;
      }

      else
      {

        v18 = _swiftEmptyArrayStorage;
      }

      *&v54 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v61);

      v35 = v52;
      *(v52 + 1) = v34;
      _os_log_impl(&_mh_execute_header, v13, v14, "Learned about updated BT devices: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    type metadata accessor for FilteredBluetoothScanner.FilteredDevice(0, a5, a6, v36);
    *&v54 = Array.init()();
    v37 = (*(*a3 + 104))();
    __chkstk_darwin(v37);
    v45[2] = v11;
    v45[3] = &v54;
    v45[4] = a4;
    specialized Sequence.forEach(_:)(partial apply for closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:), v45, v37);

    v38 = v54;
    v53[0] = v54;
    v39 = type metadata accessor for Array();
    v40 = type metadata accessor for AnyCancellable();

    WitnessTable = swift_getWitnessTable();
    v43 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:), v11, v39, v40, &type metadata for Never, WitnessTable, &protocol witness table for Never, v42);
    v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7Combine14AnyCancellableC_SayAFGTt0g5Tf4g_n(v43);

    (*(*v11 + 152))(v44);
    (*(*v11 + 176))(v38);
  }

  return result;
}

uint64_t closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(_OWORD *, char *, uint64_t, uint64_t))
{
  v27 = a4;
  v28 = a3;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v23 - v9;
  v11 = *(a1 + 80);
  v35[4] = *(a1 + 64);
  v35[5] = v11;
  v36 = *(a1 + 96);
  v12 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v12;
  v13 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v13;
  v14 = *(&v35[0] + 1);
  v24 = *&v35[0];
  v15 = *(v5 + 168);

  v37 = v15(v16);
  v29 = v7;
  v30 = v6;
  v31 = v35;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, v7, v6, v17);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();

  v18 = v33;
  if (v33)
  {
    v19 = v34;
    v20 = v32;

    (*(v6 + 32))(v35, v7, v6);
    v32 = v20;
    v33 = v18;
    v34 = v19;
  }

  else
  {
    (*(v25 + 16))(v10, v27, v26);
    v27 = *(v6 + 24);
    outlined init with copy of BluetoothScanner.Device(v35, &v32);
    v21 = v27(v35, v10, v7, v6);
    v32 = v24;
    v33 = v14;
    v34 = v21;
  }

  return Array.append(_:)();
}

uint64_t closure #3 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v12 - v6;
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v8;
  swift_getAssociatedConformanceWitness();

  v10 = Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, AssociatedTypeWitness);

  *v13 = v10;
  return result;
}

char *FilteredBluetoothScanner.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 112);
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, *(v1 + 80), *(v1 + 88), v3);
  type metadata accessor for Array();
  v4 = type metadata accessor for CurrentSubject();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t FilteredBluetoothScanner.__deallocating_deinit()
{
  FilteredBluetoothScanner.deinit();

  return swift_deallocClassInstance();
}

char *specialized FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = *v3;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v30 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v28 = &v26 - v9;
  v10 = v6;
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, v7, v6, v11);
  type metadata accessor for Array();
  v12 = type metadata accessor for CurrentSubject();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  *(v3 + 2) = &_swiftEmptySetSingleton;
  v29 = v3 + 16;
  *(v3 + 3) = &_swiftEmptySetSingleton;
  v16 = *(v5 + 112);
  v17 = Array.init()();
  property wrapper backing initializer of FilteredBluetoothScanner.filteredDevices(v17, v7, v10, v18);
  v19 = (*(v13 + 32))(&v3[v16], v15, v12);
  v27 = (*(*a1 + 128))(v19);
  v33 = v27;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v28;
  v22 = AssociatedTypeWitness;
  (*(v8 + 16))(v28, v32, AssociatedTypeWitness);
  v23 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v7;
  *(v24 + 3) = v10;
  *(v24 + 4) = v20;
  *(v24 + 5) = a1;
  (*(v8 + 32))(&v24[v23], v21, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v3;
}

uint64_t type metadata completion function for FilteredBluetoothScanner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice(255, *(a1 + 80), *(a1 + 88), a4);
  type metadata accessor for Array();
  result = type metadata accessor for CurrentSubject();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for FilteredBluetoothScanner.FilteredDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FilteredBluetoothScanner.FilteredDevice(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FilteredBluetoothScanner.FilteredDevice(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in FilteredBluetoothScanner.init(scanner:config:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in FilteredBluetoothScanner.init(scanner:config:)(a1, v6, v7, v8, v3, v4);
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<[BluetoothScanner.Device], Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of IgnoreEquatable<IgnoreEquatable<BluetoothScannerDiscoveryEngineDevice>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in FilteredBluetoothScanner.init(scanner:config:)(void *a1)
{
  v2 = *(v1 + 32);
  if (*v2 == *a1 && v2[1] == a1[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_020com_apple_SharePlay_D18InvitationsService0df1_G0Vs5NeverOTg508_s44com_i1_jk1_dl11Service0E19f80HostIDSServiceC010distributeH14Initialization3for2toyAA0ehI0C_Shy0E8Sessions0eH6G52CGtKFyAA0eh1_H0VzXEfU_yAN0L0VzXEfU_AA0eh1_P0VAKXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for NearbyGroup_Member(0);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v5 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v54 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    v49 = v54;
    if (v47)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v51 = result;
    v52 = v8;
    v53 = v47 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v42 = a1 + 56;
      v43 = v10;
      v40[1] = v1;
      v41 = a1 + 64;
      v44 = v6;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_39;
        }

        v13 = v51;
        v14 = v53;
        v48 = v52;
        v15 = a1;
        specialized Set.subscript.getter(v51, v52, v53, a1);
        v17 = v16;
        v18 = v46;
        UnknownStorage.init()();
        v19 = (v5 + *(v18 + 24));
        *v19 = 0;
        v19[1] = 0;
        *v5 = NearbyGroupMember.handle.getter();
        v5[1] = v20;
        v21 = v5;
        v22 = NearbyGroupMember.tokenID.getter();
        v24 = v23;

        if (v24)
        {
          *v19 = v22;
          v19[1] = v24;
        }

        v25 = v49;
        v54 = v49;
        v27 = v49[2];
        v26 = v49[3];
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v25 = v54;
        }

        v25[2] = v27 + 1;
        v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v49 = v25;
        v29 = v25 + v28 + *(v45 + 72) * v27;
        v5 = v21;
        result = outlined init with take of NearbyGroup_Group(v21, v29, type metadata accessor for NearbyGroup_Member);
        a1 = v15;
        if (v47)
        {
          if (!v14)
          {
            goto LABEL_44;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMd, &_sSh5IndexVy14NearbySessions0B11GroupMemberC_GMR);
          v11 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v11(v50, 0);
          if (v9 == v6)
          {
LABEL_36:
            outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v51, v52, v53);
            return v49;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_45;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v30 = (1 << *(v15 + 32));
          if (v13 >= v30)
          {
            goto LABEL_40;
          }

          v31 = v13 >> 6;
          v32 = *(v42 + 8 * (v13 >> 6));
          if (((v32 >> v13) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v15 + 36) != v48)
          {
            goto LABEL_42;
          }

          v33 = v32 & (-2 << (v13 & 0x3F));
          if (v33)
          {
            v30 = (__clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v41 + 8 * v31);
            while (v35 < (v30 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v13, v48, 0);
                v30 = (__clz(__rbit64(v37)) + v34);
                goto LABEL_35;
              }
            }

            result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v13, v48, 0);
          }

LABEL_35:
          v39 = *(v15 + 36);
          v51 = v30;
          v52 = v39;
          v53 = 0;
          v6 = v44;
          if (v9 == v44)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.makeAsyncIterator()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  v1 = swift_allocObject();

  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *(v1 + 24) = _swiftEmptyArrayStorage;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = static Subscribers.Demand.none.getter();
  *v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR, &protocol conformance descriptor for _PublisherElements<A>.Iterator.Inner);
  Publisher.subscribe<A>(_:)();

  return v1;
}

void NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(char *a1, void *a2)
{
  v3 = v2;
  v153 = type metadata accessor for UUID();
  v151 = *(v153 - 1);
  v6 = __chkstk_darwin(v153);
  v145 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v142 = &v137 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v137 - v11;
  __chkstk_darwin(v10);
  v150 = &v137 - v13;
  v149 = type metadata accessor for NearbyGroup_Group(0);
  v14 = __chkstk_darwin(v149);
  v16 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v152 = &v137 - v18;
  v19 = *((swift_isaMask & *a1) + 0xC0);
  v20 = v19(v17);
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = __CocoaSet.count.getter();

    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = *(v20 + 16);

    if (v30)
    {
LABEL_3:
      __chkstk_darwin(v22);
      v144 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);
      v23 = v154;
      v24 = static Message.with(_:)();
      v154 = v23;
      v25 = v19(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000C8980;
      *(inited + 32) = a2;
      v27 = v3;
      if ((v25 & 0xC000000000000001) != 0)
      {
        if (v25 >= 0)
        {
          v25 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v28 = a2;
        v29 = __CocoaSet.count.getter();
        v25 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(v25, v29);
      }

      else
      {
        v38 = a2;
      }

      v39 = specialized _NativeSet.subtracting<A>(_:)(inited, v25);
      swift_setDeallocating();
      swift_arrayDestroy();
      v40 = v150;
      UUID.init()();
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      v42 = __swift_project_value_buffer(v41, static Log.host);
      v43 = v151;
      v44 = *(v151 + 16);
      v45 = v153;
      v141 = v151 + 16;
      v140 = v44;
      v44(v12, v40, v153);
      outlined init with copy of NearbyGroup_Group(v152, v16, type metadata accessor for NearbyGroup_Group);
      v46 = v27;

      v143 = v42;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      v49 = os_log_type_enabled(v47, v48);
      v147 = v39;
      v148 = v46;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v138 = v51;
        v139 = swift_slowAlloc();
        v156[0] = v139;
        *v50 = 138413058;
        *(v50 + 4) = v46;
        *v51 = v46;
        *(v50 + 12) = 2080;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v52 = v46;
        v53 = v48;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        v146 = *(v151 + 8);
        v146(v12, v153);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v156);

        *(v50 + 14) = v57;
        *(v50 + 22) = 2080;
        v58 = Message.debugDescription.getter();
        v60 = v59;
        outlined destroy of NearbyGroup_Group(v16, type metadata accessor for NearbyGroup_Group);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v156);
        v39 = v147;

        *(v50 + 24) = v61;
        *(v50 + 32) = 2080;
        type metadata accessor for NearbyGroupMember();
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember, &protocol conformance descriptor for NSObject);
        v62 = Set.description.getter();
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v156);

        *(v50 + 34) = v64;
        _os_log_impl(&_mh_execute_header, v47, v53, "%@ Distributing addMember event (%s) %s to %s", v50, 0x2Au);
        outlined destroy of Any?(v138, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v45 = v153;

        swift_arrayDestroy();

        if ((v39 & 0xC000000000000001) != 0)
        {
LABEL_18:
          v65 = __CocoaSet.count.getter();
          goto LABEL_21;
        }
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v16, type metadata accessor for NearbyGroup_Group);
        v146 = *(v43 + 8);
        v146(v12, v45);
        if ((v39 & 0xC000000000000001) != 0)
        {
          goto LABEL_18;
        }
      }

      v65 = *(v39 + 16);
LABEL_21:
      v66 = v148;
      if (v65)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
        v67 = swift_initStackObject();
        *(v67 + 16) = xmmword_1000CAB00;
        *(v67 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v67 + 40) = v68;
        *(v67 + 48) = Int._bridgeToObjectiveC()();
        *(v67 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v67 + 64) = v69;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        *(v67 + 72) = NSNumber.init(BOOLeanLiteral:)(1);
        *(v67 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v67 + 88) = v70;
        v71 = (swift_isaMask & *a1) + 264;
        v72 = *((swift_isaMask & *a1) + 0x108);
        v72();
        v73 = String._bridgeToObjectiveC()();

        v74 = IDSCopyBestGuessIDForID();

        if (v74)
        {
          v75 = a1;
          *(v67 + 96) = v74;
          v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v67);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
          swift_arrayDestroy();
          v77 = &v66[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
          v78 = *&v66[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24];
          v79 = *&v66[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
          __swift_project_boxed_opaque_existential_1(v77, v78);
          v145 = v75;
          v80 = (v72)();
          v81 = (*(v79 + 64))(v80);

          if (v81)
          {
            v148 = v81;
            outlined init with copy of PseudonymProtocol(v77, v156);
            v82 = v157;
            v83 = v158;
            __swift_project_boxed_opaque_existential_1(v156, v157);
            v84 = v152;
            v85 = v154;
            v86 = Message.serializedData(partial:)();
            if (v85)
            {

              v146(v150, v153);
              outlined destroy of NearbyGroup_Group(v84, type metadata accessor for NearbyGroup_Group);
              __swift_destroy_boxed_opaque_existential_0Tm(v156);
            }

            else
            {
              v115 = v86;
              v116 = v87;
              v117 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v76);

              v155 = 0;
              (*(v83 + 56))(v115, v116, v148, v147, 300, v117, &v155, v82, v83);
              v154 = 0;

              outlined consume of Data._Representation(v115, v116);
              v118 = v155;
              __swift_destroy_boxed_opaque_existential_0Tm(v156);
              v119 = v142;
              v120 = v150;
              v121 = v153;
              v140(v142, v150, v153);
              v122 = Logger.logObject.getter();
              v123 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v156[0] = swift_slowAlloc();
                *v124 = 136315394;
                lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v125 = dispatch thunk of CustomStringConvertible.description.getter();
                v126 = v119;
                v128 = v127;
                v129 = v146;
                v146(v126, v121);
                v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v128, v156);

                *(v124 + 4) = v130;
                *(v124 + 12) = 2080;
                if (v118)
                {
                  v155 = v118;
                  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
                  v131 = v118;
                  v132 = String.init<A>(reflecting:)();
                  v134 = v133;
                }

                else
                {
                  v134 = 0xE300000000000000;
                  v132 = 7104878;
                }

                v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, v156);

                *(v124 + 14) = v136;
                _os_log_impl(&_mh_execute_header, v122, v123, "Distribution of addMember event (%s) sent with ID %s", v124, 0x16u);
                swift_arrayDestroy();

                v129(v150, v153);
              }

              else
              {

                v135 = v146;
                v146(v119, v121);
                v135(v120, v121);
              }

              outlined destroy of NearbyGroup_Group(v152, type metadata accessor for NearbyGroup_Group);
            }
          }

          else
          {
            v154 = v71;

            v103 = v148;
            v104 = v145;
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v156[0] = v109;
              *v107 = 138412546;
              *(v107 + 4) = v103;
              *v108 = v103;
              *(v107 + 12) = 2080;
              v110 = (v72)(v103);
              v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v156);

              *(v107 + 14) = v112;
              _os_log_impl(&_mh_execute_header, v105, v106, "%@ couldn't find account to send message from with handle: %s", v107, 0x16u);
              outlined destroy of Any?(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

              __swift_destroy_boxed_opaque_existential_0Tm(v109);
            }

            lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
            swift_allocError();
            *v113 = 1;
            swift_willThrow();
            v146(v150, v153);
            outlined destroy of NearbyGroup_Group(v152, type metadata accessor for NearbyGroup_Group);
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        v88 = v145;
        v89 = v150;
        v140(v145, v150, v45);
        v90 = v66;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = v45;
          v95 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v156[0] = v153;
          *v93 = 138412546;
          *(v93 + 4) = v90;
          *v95 = v90;
          *(v93 + 12) = 2080;
          lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v96 = v90;
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v99 = v98;
          v100 = v88;
          v101 = v146;
          v146(v100, v94);
          v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v156);

          *(v93 + 14) = v102;
          _os_log_impl(&_mh_execute_header, v91, v92, "%@ Not distributing addMember event %s since there are no destinations", v93, 0x16u);
          outlined destroy of Any?(v95, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          __swift_destroy_boxed_opaque_existential_0Tm(v153);

          v101(v150, v94);
        }

        else
        {

          v114 = v146;
          v146(v88, v45);
          v114(v89, v45);
        }

        outlined destroy of NearbyGroup_Group(v152, type metadata accessor for NearbyGroup_Group);
      }

      return;
    }
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.host);
  v32 = v3;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "%@ asked to distribute add to nobody else.", v35, 0xCu);
    outlined destroy of Any?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

void NearbyGroupHostIDSService.distributeRemove(for:removingMember:)(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v141 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v135 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v126 = &v124[-v9];
  v10 = __chkstk_darwin(v8);
  v142 = &v124[-v11];
  __chkstk_darwin(v10);
  v13 = &v124[-v12];
  v14 = type metadata accessor for NearbyGroup_Group(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v124[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v124[-v18];
  v145 = a1;
  v146 = a2;
  v133 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);
  v134 = v14;
  v20 = static Message.with(_:)();
  v136 = v2;
  v21 = *((swift_isaMask & *a1) + 0xC0);
  v138 = a1;
  v144 = v21(v20);
  specialized Set._Variant.insert(_:)(v147, a2);

  UUID.init()();
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Log.host);
  v24 = v141;
  v25 = *(v141 + 16);
  v139 = v13;
  v129 = v25;
  v130 = v141 + 16;
  v25(v142, v13, v5);
  v137 = v19;
  outlined init with copy of NearbyGroup_Group(v19, v17, type metadata accessor for NearbyGroup_Group);
  v26 = v140;
  v132 = v23;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v140 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v127 = v31;
    v128 = swift_slowAlloc();
    v147[0] = v128;
    *v30 = 138413058;
    *(v30 + 4) = v26;
    *v31 = v26;
    *(v30 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = v140;
    v33 = v142;
    v125 = v28;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v24 + 8);
    v37(v33, v5);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v147);

    *(v30 + 14) = v38;
    *(v30 + 22) = 2080;
    v39 = Message.debugDescription.getter();
    v41 = v40;
    outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Group);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v147);

    *(v30 + 24) = v42;
    *(v30 + 32) = 2080;
    swift_beginAccess();
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember, &protocol conformance descriptor for NSObject);

    v43 = Set.description.getter();
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v147);
    v26 = v140;

    *(v30 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v27, v125, "%@ Distributing removeMember event (%s) %s to %s", v30, 0x2Au);
    outlined destroy of Any?(v127, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
  }

  else
  {

    outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Group);
    v37 = *(v24 + 8);
    v37(v142, v5);
  }

  v47 = v5;
  swift_beginAccess();
  v48 = v144;
  v49 = v138;
  v50 = v135;
  if ((v144 & 0xC000000000000001) != 0)
  {

    v51 = __CocoaSet.count.getter();

    if (v51)
    {
      goto LABEL_8;
    }

LABEL_13:
    v129(v50, v139, v47);
    v71 = v26;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = v50;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      LODWORD(v134) = v73;
      v77 = v76;
      v138 = v76;
      v140 = swift_slowAlloc();
      v147[0] = v140;
      *v75 = 138412546;
      *(v75 + 4) = v71;
      *v77 = v71;
      *(v75 + 12) = 2080;
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = v48;
      v78 = v71;
      v79 = v74;
      v131 = v47;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v37(v79, v47);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v147);

      *(v75 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v72, v134, "%@ Not distributing removeMember event %s since there are no destinations", v75, 0x16u);
      outlined destroy of Any?(v138, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v140);

      v37(v139, v131);
    }

    else
    {

      v37(v50, v47);
      v37(v139, v47);
    }

    outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);

    return;
  }

  if (!*(v144 + 16))
  {
    goto LABEL_13;
  }

LABEL_8:
  v142 = v48;
  v128 = v37;
  v131 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v53;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v54;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v55;
  v56 = (swift_isaMask & *v49) + 264;
  v135 = *((swift_isaMask & *v49) + 0x108);
  v135();
  v57 = String._bridgeToObjectiveC()();

  v58 = IDSCopyBestGuessIDForID();

  if (v58)
  {
    *(inited + 96) = v58;
    v127 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    v59 = v140;
    v60 = v140 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service;
    v61 = *(v140 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32);
    __swift_project_boxed_opaque_existential_1((v140 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service), *(v140 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24));
    v62 = (v135)();
    v63 = (*(v61 + 64))(v62);

    if (v63)
    {
      v64 = v127;
      v140 = v63;
      outlined init with copy of PseudonymProtocol(v60, v147);
      v65 = v148;
      v66 = v149;
      __swift_project_boxed_opaque_existential_1(v147, v148);
      v68 = v136;
      v67 = v137;
      v69 = Message.serializedData(partial:)();
      if (v68)
      {

        (v128)(v139, v131);
        outlined destroy of NearbyGroup_Group(v67, type metadata accessor for NearbyGroup_Group);
        __swift_destroy_boxed_opaque_existential_0Tm(v147);
      }

      else
      {
        v96 = v69;
        v97 = v70;
        v98 = v142;

        v99 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v64);
        v136 = 0;
        v100 = v99;

        v143 = 0;
        v101 = *(v66 + 56);
        v123 = v66;
        v102 = v140;
        v103 = v136;
        v101(v96, v97, v140, v98, 300, v100, &v143, v65, v123);
        if (v103)
        {

          outlined consume of Data._Representation(v96, v97);

          (v128)(v139, v131);
          outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
          v104 = v143;
          __swift_destroy_boxed_opaque_existential_0Tm(v147);
        }

        else
        {

          outlined consume of Data._Representation(v96, v97);
          v138 = v143;
          __swift_destroy_boxed_opaque_existential_0Tm(v147);
          v105 = v126;
          v106 = v139;
          v107 = v131;
          v129(v126, v139, v131);
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v147[0] = swift_slowAlloc();
            *v110 = 136315394;
            lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v111 = dispatch thunk of CustomStringConvertible.description.getter();
            v112 = v105;
            v114 = v113;
            v141 += 8;
            (v128)(v112, v107);
            v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v114, v147);

            *(v110 + 4) = v115;
            *(v110 + 12) = 2080;
            v116 = v138;
            if (v138)
            {
              v143 = v138;
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
              v117 = v116;
              v118 = String.init<A>(reflecting:)();
              v120 = v119;
            }

            else
            {
              v120 = 0xE300000000000000;
              v118 = 7104878;
            }

            v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, v147);

            *(v110 + 14) = v122;
            _os_log_impl(&_mh_execute_header, v108, v109, "Distribution of removeMember event (%s) sent with ID %s", v110, 0x16u);
            swift_arrayDestroy();

            (v128)(v139, v131);
            outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
          }

          else
          {

            v121 = v128;
            (v128)(v105, v107);
            v121(v106, v107);
            outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
          }
        }
      }
    }

    else
    {
      v136 = v56;

      v84 = v59;
      v85 = v138;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v147[0] = v90;
        *v88 = 138412546;
        *(v88 + 4) = v84;
        *v89 = v84;
        *(v88 + 12) = 2080;
        v91 = v84;
        v92 = (v135)(v91);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v147);

        *(v88 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v86, v87, "%@ couldn't find account to send message from with handle: %s", v88, 0x16u);
        outlined destroy of Any?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v90);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v95 = 1;
      swift_willThrow();
      (v128)(v139, v131);
      outlined destroy of NearbyGroup_Group(v137, type metadata accessor for NearbyGroup_Group);
    }
  }

  else
  {
    __break(1u);
  }
}

void NearbyGroupHostIDSService.distributeLeave(for:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v134 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v122 = &v121 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v121 - v10;
  __chkstk_darwin(v9);
  v13 = &v121 - v12;
  v14 = type metadata accessor for NearbyGroup_Group(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v121 - v18;
  v139 = a1;
  v130 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);
  v131 = v14;
  v20 = static Message.with(_:)();
  v129 = v1;
  v21 = *((swift_isaMask & *a1) + 0xC0);
  v136 = a1;
  v22 = v21(v20);
  v137 = v13;
  UUID.init()();
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Log.host);
  v25 = *(v4 + 16);
  v127 = v4 + 16;
  v126 = v25;
  v25(v11, v137, v3);
  v135 = v19;
  outlined init with copy of NearbyGroup_Group(v19, v17, type metadata accessor for NearbyGroup_Group);
  v26 = v133;

  v128 = v24;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v132 = v4;
  v133 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    LODWORD(v124) = v28;
    v31 = v30;
    v32 = swift_slowAlloc();
    v123 = v32;
    v125 = swift_slowAlloc();
    v140[0] = v125;
    *v31 = 138413058;
    *(v31 + 4) = v26;
    *v32 = v26;
    *(v31 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v26;
    v34 = v4;
    v35 = v33;
    v36 = v27;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = *(v34 + 8);
    v40(v11, v3);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v140);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2080;
    v42 = Message.debugDescription.getter();
    v44 = v43;
    outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Group);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v140);
    v46 = v134;

    *(v31 + 24) = v45;
    *(v31 + 32) = 2080;
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember, &protocol conformance descriptor for NSObject);
    v47 = Set.description.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v140);

    *(v31 + 34) = v49;
    _os_log_impl(&_mh_execute_header, v36, v124, "%@ Distributing leave event (%s) %s to %s", v31, 0x2Au);
    outlined destroy of Any?(v123, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
  }

  else
  {

    outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Group);
    v40 = *(v4 + 8);
    v40(v11, v3);
    v46 = v134;
  }

  v50 = v136;
  if ((v22 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_8;
    }

LABEL_13:

    v126(v46, v137, v3);
    v72 = v133;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v134 = v40;
      v77 = v76;
      v136 = swift_slowAlloc();
      v140[0] = v136;
      *v75 = 138412546;
      *(v75 + 4) = v72;
      *v77 = v72;
      *(v75 + 12) = 2080;
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v78 = v72;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v82 = v46;
      v83 = v134;
      (v134)(v82, v3);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v140);

      *(v75 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v73, v74, "%@ Not distributing leave event %s since there are no destinations", v75, 0x16u);
      outlined destroy of Any?(v77, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v136);

      v83(v137, v3);
    }

    else
    {

      v40(v46, v3);
      v40(v137, v3);
    }

    outlined destroy of NearbyGroup_Group(v135, type metadata accessor for NearbyGroup_Group);
    return;
  }

  if (!*(v22 + 16))
  {
    goto LABEL_13;
  }

LABEL_8:
  v124 = v22;
  v134 = v40;
  v125 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CAB00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v52;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v53;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(1);
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v54;
  v55 = (swift_isaMask & *v50) + 264;
  v56 = *((swift_isaMask & *v50) + 0x108);
  v56();
  v57 = String._bridgeToObjectiveC()();

  v58 = IDSCopyBestGuessIDForID();

  if (v58)
  {
    *(inited + 96) = v58;
    v123 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    v59 = v133;
    v60 = &v133[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
    v61 = *&v133[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
    __swift_project_boxed_opaque_existential_1(&v133[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service], *&v133[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24]);
    v62 = (v56)();
    v63 = (*(v61 + 64))(v62);

    if (v63)
    {
      v64 = v123;
      v136 = v63;
      outlined init with copy of PseudonymProtocol(v60, v140);
      v66 = v141;
      v65 = v142;
      __swift_project_boxed_opaque_existential_1(v140, v141);
      v67 = v135;
      v68 = v129;
      v69 = Message.serializedData(partial:)();
      v71 = v125;
      if (v68)
      {

        (v134)(v137, v71);
        outlined destroy of NearbyGroup_Group(v67, type metadata accessor for NearbyGroup_Group);
        __swift_destroy_boxed_opaque_existential_0Tm(v140);
      }

      else
      {
        v99 = v69;
        v100 = v70;
        v101 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v64);

        v138 = 0;
        (*(v65 + 56))(v99, v100, v136, v124, 300, v101, &v138, v66, v65);

        outlined consume of Data._Representation(v99, v100);
        v102 = v138;
        __swift_destroy_boxed_opaque_existential_0Tm(v140);
        v103 = v122;
        v104 = v137;
        v105 = v125;
        v126(v122, v137, v125);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v129 = 0;
          v108 = swift_slowAlloc();
          v140[0] = swift_slowAlloc();
          *v108 = 136315394;
          lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v109 = dispatch thunk of CustomStringConvertible.description.getter();
          v110 = v103;
          v112 = v111;
          (v134)(v110, v105);
          v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v112, v140);

          *(v108 + 4) = v113;
          *(v108 + 12) = 2080;
          if (v102)
          {
            v138 = v102;
            type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
            v114 = v102;
            v115 = String.init<A>(reflecting:)();
            v117 = v116;
          }

          else
          {
            v117 = 0xE300000000000000;
            v115 = 7104878;
          }

          v119 = v136;
          v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, v140);

          *(v108 + 14) = v120;
          _os_log_impl(&_mh_execute_header, v106, v107, "Distribution of leave event (%s) sent with ID %s", v108, 0x16u);
          swift_arrayDestroy();

          (v134)(v137, v125);
          outlined destroy of NearbyGroup_Group(v135, type metadata accessor for NearbyGroup_Group);
        }

        else
        {

          v118 = v134;
          (v134)(v103, v105);
          v118(v104, v105);
          outlined destroy of NearbyGroup_Group(v135, type metadata accessor for NearbyGroup_Group);
        }
      }
    }

    else
    {
      v131 = v56;
      v130 = v55;

      v85 = v59;
      v86 = v136;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.fault.getter();

      v89 = os_log_type_enabled(v87, v88);
      v90 = v125;
      if (v89)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v140[0] = v93;
        *v91 = 138412546;
        *(v91 + 4) = v85;
        *v92 = v85;
        *(v91 + 12) = 2080;
        v94 = v85;
        v95 = v131(v94);
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v140);

        *(v91 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v87, v88, "%@ couldn't find account to send message from with handle: %s", v91, 0x16u);
        outlined destroy of Any?(v92, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v93);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v98 = 1;
      swift_willThrow();
      (v134)(v137, v90);
      outlined destroy of NearbyGroup_Group(v135, type metadata accessor for NearbyGroup_Group);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NearbyGroupHostIDSService.distributeGroupInitialization(for:)(uint64_t *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xC0))();
  NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(a1, v2);
}

void NearbyGroupHostIDSService.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(IDSService);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithService:v4];

  if (v5)
  {

    v6[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
    v6[4] = &protocol witness table for IDSService;
    v6[0] = v5;
    (*(v2 + 136))(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.init(_:)(uint64_t a1)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v6 = type metadata accessor for Publishers.PrefetchStrategy();
  v16[0] = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR);
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - v11;
  v18 = a1;
  (*(v7 + 104))(v9, enum case for Publishers.PrefetchStrategy.byRequest(_:), v6);
  (*(v3 + 104))(v5, enum case for Publishers.BufferingStrategy.dropOldest<A>(_:), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v16[0]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0J19GroupHostIDSServiceC12MessageEventO_AJ0P7ContextVts5NeverOGGMR, &protocol conformance descriptor for Publishers.Buffer<A>);
  v13 = v17;
  v14 = Publisher.eraseToAnyPublisher()();

  (*(v10 + 8))(v12, v13);
  return v14;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.Iterator.baseIterator.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvents.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(NearbyGroupHostIDSService.MessageEvents.Iterator.next(), 0, 0);
}

uint64_t NearbyGroupHostIDSService.MessageEvents.Iterator.next()()
{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  *v4 = v0;
  v4[1] = NearbyGroupHostIDSService.MessageEvents.Iterator.next();
  v6 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v3, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v2, 0, 0, v5);
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator()
{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  *v4 = v0;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NearbyGroupHostIDSService.MessageEvents.Iterator;
  v6 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v5);
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, 0, 0);
}

uint64_t _s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  *v4 = v0;
  v4[1] = _s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC13MessageEventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v6 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v5);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance NearbyGroupHostIDSService.MessageEvents@<X0>(uint64_t *a1@<X8>)
{
  v3 = NearbyGroupHostIDSService.MessageEvents.makeAsyncIterator()(*v1);

  *a1 = v3;
  return result;
}

char *NearbyGroupHostIDSService.__allocating_init(idsService:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized NearbyGroupHostIDSService.init(idsService:)(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

char *NearbyGroupHostIDSService.init(idsService:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized NearbyGroupHostIDSService.init(idsService:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

id NearbyGroupHostIDSService.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NearbyGroupHostIDSService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void NearbyGroupHostIDSService.MessageEvent.Member.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NearbyGroupHostIDSService.MessageEvent.Member.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyGroupHostIDSService.MessageEvent.Member()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NearbyGroupHostIDSService.MessageEvent.Member(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroupHostIDSService.MessageEvent.Member(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.members.getter()
{
  type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.members.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.init(id:members:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.fromHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 20));

  return v1;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.fromHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.operation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 24);

  return outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(v3, a1);
}

uint64_t NearbyGroupHostIDSService.MessageEvent.MembershipMutation.operation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) + 24);

  return outlined assign with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation.Operation(a1, v3);
}

__n128 NearbyGroupHostIDSService.MessageEvent.MembershipMutation.init(id:fromHandle:operation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = a5 + *(v11 + 24);
  result = *a4;
  v15 = *(a4 + 16);
  *v13 = *a4;
  *(v13 + 16) = v15;
  *(v13 + 32) = *(a4 + 32);
  return result;
}

uint64_t NearbyGroupHostIDSService.MessageEvent.Member.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for NearbyGroup_Member(0);

  outlined destroy of NearbyGroup_Group(a1, type metadata accessor for NearbyGroup_Member);
  return v2;
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v11[-v7];
  type metadata accessor for NearbyGroup_Group.Initialization(0);
  v12 = a2;
  v13 = a3;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);
  static Message.with(_:)();
  v9 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v8, a1);
}

uint64_t closure #1 in closure #1 in NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(uint64_t *a1, void *a2, void *a3)
{
  v6 = UUID.data.getter();
  v8 = v7;
  v9 = outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v6;
  a1[1] = v8;
  v10 = (*((swift_isaMask & *a2) + 0xC0))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C8980;
  *(inited + 32) = a3;
  v12 = a3;
  v13 = specialized Set.union<A>(_:)(inited, v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D11GroupMemberCG_020com_apple_SharePlay_D18InvitationsService0df1_G0Vs5NeverOTg508_s44com_i1_jk1_dl11Service0E19f80HostIDSServiceC010distributeH14Initialization3for2toyAA0ehI0C_Shy0E8Sessions0eH6G52CGtKFyAA0eh1_H0VzXEfU_yAN0L0VzXEfU_AA0eh1_P0VAKXEfU_Tf1cn_n(v13);

  a1[2] = v14;
  return result;
}

void NearbyGroup_Member.init(member:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  UnknownStorage.init()();
  v5 = (a2 + *(v4 + 24));
  *v5 = 0;
  v5[1] = 0;
  *a2 = NearbyGroupMember.handle.getter();
  a2[1] = v6;
  v7 = NearbyGroupMember.tokenID.getter();
  v9 = v8;

  if (v9)
  {
    *v5 = v7;
    v5[1] = v9;
  }
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v11[-v7];
  type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v12 = a2;
  v13 = a3;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);
  static Message.with(_:)();
  v9 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v8, a1);
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeRemove(for:removingMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v11[-v7];
  type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v12 = a2;
  v13 = a3;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);
  static Message.with(_:)();
  v9 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v8, a1);
}

uint64_t closure #1 in closure #1 in NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = UUID.data.getter();
  v15 = v14;
  outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v13;
  *(a1 + 8) = v15;
  UnknownStorage.init()();
  v16 = (v10 + *(v6 + 24));
  *v16 = 0;
  v16[1] = 0;
  *v10 = NearbyGroupMember.handle.getter();
  v10[1] = v17;
  v18 = NearbyGroupMember.tokenID.getter();
  if (v19)
  {
    *v16 = v18;
    v16[1] = v19;
  }

  outlined init with take of NearbyGroup_Group(v10, v12, type metadata accessor for NearbyGroup_Member);
  v20 = *(a4(0) + 24);
  outlined destroy of Any?(a1 + v20, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  outlined init with take of NearbyGroup_Group(v12, a1 + v20, type metadata accessor for NearbyGroup_Member);
  return (*(v7 + 56))(a1 + v20, 0, 1, v6);
}

uint64_t closure #1 in NearbyGroupHostIDSService.distributeLeave(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v10 = a2;
  lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);
  static Message.with(_:)();
  v7 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return outlined assign with take of NearbyGroup_Group.OneOf_Event?(v6, a1);
}

void NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v54 = a3;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v18 = [a5 publicIntentAction];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 integerValue];

    if (v20 == 5)
    {
      v53 = a1;
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.host);

      v22 = a5;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v52 = a4;
        v28 = v27;
        v56 = a2;
        v57 = v27;
        *v25 = 136315394;
        v55 = v53;

        v29 = String.init<A>(reflecting:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v57);

        *(v25 + 4) = v31;
        *(v25 + 12) = 2112;
        *(v25 + 14) = v22;
        *v26 = v22;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Handling incoming data from: %s context: %@", v25, 0x16u);
        outlined destroy of Any?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        a4 = v52;
      }

      v34 = *&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24];
      v33 = *&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
      __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service], v34);
      (*(*(v33 + 8) + 8))(v34);
      if (v35)
      {
        v36 = objc_allocWithZone(IDSServiceProperties);
        v37 = String._bridgeToObjectiveC()();

        v38 = [v36 initWithServiceIdentifier:v37];

        v39 = v53;
        if (v38)
        {

          v40 = v6;
          specialized NearbyInvitationsBlastDoorConnectionHelper.defuse<A>(_:item:completion:)(v54, a4, 5, 1, v38, v40, v39, a2);
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Log.host);

  v42 = a5;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56 = a2;
    v57 = v47;
    *v45 = 136315394;
    v55 = a1;

    v48 = String.init<A>(reflecting:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v57);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2112;
    *(v45 + 14) = v42;
    *v46 = v42;
    v51 = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "Dropping incoming data from: %s context: %@", v45, 0x16u);
    outlined destroy of Any?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }
}

void NearbyGroupHostIDSService.handleIncomingData(from:data:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v52 = a3;
  v53 = a4;
  v54 = a1;
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for NearbyGroup_Group(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v46 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_10;
  }

  v20 = [a5 publicIntentAction];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 integerValue];

    if (v22 == 5)
    {
      v50 = v5;
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.host);

      v24 = a5;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v48 = v26;
        v28 = v27;
        v47 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58[0] = v49;
        *v28 = 136315394;
        *&v55 = v54;
        *(&v55 + 1) = a2;

        v29 = String.init<A>(reflecting:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v58);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2112;
        *(v28 + 14) = v24;
        v32 = v47;
        *v47 = v24;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v25, v48, "Handling incoming data from: %s context: %@", v28, 0x16u);
        outlined destroy of Any?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v49);
      }

      v58[0] = v52;
      v58[1] = v53;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      outlined copy of Data._Representation(v52, v53);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);
      Message.init<A>(serializedBytes:extensions:partial:options:)();
      v45 = v51;
      outlined init with take of NearbyGroup_Group(v12, v51, type metadata accessor for NearbyGroup_Group);
      NearbyGroupHostIDSService.handleGroupMessage(from:message:)(v54, a2, v45);
      outlined destroy of NearbyGroup_Group(v45, type metadata accessor for NearbyGroup_Group);
      return;
    }
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_14;
  }

LABEL_10:
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.host);

  v35 = a5;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v58[0] = v40;
    *v38 = 136315394;
    *&v55 = v54;
    *(&v55 + 1) = a2;

    v41 = String.init<A>(reflecting:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v58);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2112;
    *(v38 + 14) = v35;
    *v39 = v35;
    v44 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Dropping incoming data from: %s context: %@", v38, 0x16u);
    outlined destroy of Any?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }
}

void closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v36 = a5;
  v33 = a4;
  v34 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v6);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for NearbyGroup_Group(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  outlined init with copy of (String, Any)(a1, v10, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Any?(v10, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.host);
    v19 = v35;
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      if (v19)
      {
        v39 = v19;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v24 = String.init<A>(reflecting:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, aBlock);

      *(v22 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to decode protobuf: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Group(v10, v17, type metadata accessor for NearbyGroup_Group);
    v27 = v34;
    v35 = *&v34[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue];
    outlined init with copy of NearbyGroup_Group(v17, v15, type metadata accessor for NearbyGroup_Group);
    v28 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v29 = swift_allocObject();
    v30 = v33;
    v29[2] = v27;
    v29[3] = v30;
    v29[4] = v36;
    outlined init with take of NearbyGroup_Group(v15, v29 + v28, type metadata accessor for NearbyGroup_Group);
    aBlock[4] = partial apply for closure #1 in closure #1 in NearbyGroupHostIDSService.handleIncomingDataBlastDoor(from:data:context:);
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_6;
    _Block_copy(aBlock);
    v39 = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v31 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    OS_dispatch_queue.async(execute:)();

    outlined destroy of NearbyGroup_Group(v17, type metadata accessor for NearbyGroup_Group);
  }
}

void NearbyGroupHostIDSService.handleGroupMessage(from:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v72 = a1;
  v73 = a2;
  v4 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  __chkstk_darwin(v4 - 8);
  v68 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  __chkstk_darwin(v6 - 8);
  v67 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  __chkstk_darwin(v8 - 8);
  v66 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  __chkstk_darwin(v10 - 8);
  v65 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  __chkstk_darwin(v69);
  v78 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v75 = type metadata accessor for NearbyGroup_Group(0);
  v19 = *(v75 - 8);
  v20 = __chkstk_darwin(v75);
  v71 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v77 = &v65 - v23;
  v24 = __chkstk_darwin(v22);
  v70 = &v65 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v65 - v27;
  __chkstk_darwin(v26);
  v30 = &v65 - v29;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = v3;
  v35 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v34 = v35;
  (*(v32 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v31);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v34, v31);
  if (v35)
  {
    if (one-time initialization token for host == -1)
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
  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static Log.host);
  v39 = v79;
  outlined init with copy of NearbyGroup_Group(v79, v30, type metadata accessor for NearbyGroup_Group);
  v76 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v80 = v43;
    *v42 = 136315138;
    outlined init with copy of NearbyGroup_Group(v30, v18, type metadata accessor for NearbyGroup_Group);
    v44 = v75;
    (*(v19 + 56))(v18, 0, 1, v75);
    outlined init with copy of (String, Any)(v18, v16, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    if ((*(v19 + 48))(v16, 1, v44) == 1)
    {
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      outlined init with take of NearbyGroup_Group(v16, v28, type metadata accessor for NearbyGroup_Group);
      outlined init with copy of NearbyGroup_Group(v28, v70, type metadata accessor for NearbyGroup_Group);
      v46 = String.init<A>(reflecting:)();
      v45 = v48;
      outlined destroy of NearbyGroup_Group(v28, type metadata accessor for NearbyGroup_Group);
    }

    v47 = v77;
    outlined destroy of Any?(v18, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0VSgMR);
    outlined destroy of NearbyGroup_Group(v30, type metadata accessor for NearbyGroup_Group);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v80);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Message: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);

    v39 = v79;
  }

  else
  {

    outlined destroy of NearbyGroup_Group(v30, type metadata accessor for NearbyGroup_Group);
    v47 = v77;
  }

  v50 = v78;
  outlined init with copy of (String, Any)(v39, v78, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v51 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    outlined init with copy of NearbyGroup_Group(v39, v47, type metadata accessor for NearbyGroup_Group);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v80 = v55;
      *v54 = 136315138;
      lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group, &protocol conformance descriptor for NearbyGroup_Group);
      v56 = Message.debugDescription.getter();
      v58 = v57;
      outlined destroy of NearbyGroup_Group(v47, type metadata accessor for NearbyGroup_Group);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v80);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unknown message: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);

      return;
    }

    v62 = type metadata accessor for NearbyGroup_Group;
    v63 = v47;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v61 = v67;
        outlined init with take of NearbyGroup_Group(v50, v67, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        NearbyGroupHostIDSService.handleMemberRemoved(from:removedMember:)(v72, v73, v61);
        v64 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
      }

      else
      {
        v61 = v68;
        outlined init with take of NearbyGroup_Group(v50, v68, type metadata accessor for NearbyGroup_Group.MemberLeft);
        NearbyGroupHostIDSService.handleMemberLeft(from:leftMember:)(v72, v73, v61);
        v64 = type metadata accessor for NearbyGroup_Group.MemberLeft;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v61 = v66;
      outlined init with take of NearbyGroup_Group(v50, v66, type metadata accessor for NearbyGroup_Group.MemberAdded);
      NearbyGroupHostIDSService.handleMemberAdded(from:addedMember:)(v72, v73, v61);
      v64 = type metadata accessor for NearbyGroup_Group.MemberAdded;
    }

    else
    {
      v61 = v65;
      outlined init with take of NearbyGroup_Group(v50, v65, type metadata accessor for NearbyGroup_Group.Initialization);
      NearbyGroupHostIDSService.handleInitialize(from:initialization:)(v72, v73, v61);
      v64 = type metadata accessor for NearbyGroup_Group.Initialization;
    }

    v62 = v64;
    v63 = v61;
  }

  outlined destroy of NearbyGroup_Group(v63, v62);
}

uint64_t NearbyGroupHostIDSService.handleInitialize(from:initialization:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v92 = a1;
  v93 = a2;
  v90 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  __chkstk_darwin(v90);
  v96 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  __chkstk_darwin(v86);
  v88 = &v83 - v6;
  v85 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  __chkstk_darwin(v85);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for NearbyGroup_Member(0);
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v97 = (&v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v94 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = v3;
  v19 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  outlined copy of Data._Representation(*a3, a3[1]);
  UUID.init(data:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of Any?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.host);
      v22 = v96;
      outlined init with copy of NearbyGroup_Group(a3, v96, type metadata accessor for NearbyGroup_Group.Initialization);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v98 = v26;
        *v25 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.Initialization and conformance NearbyGroup_Group.Initialization, type metadata accessor for NearbyGroup_Group.Initialization, &protocol conformance descriptor for NearbyGroup_Group.Initialization);
        v27 = Message.debugDescription.getter();
        v29 = v28;
        outlined destroy of NearbyGroup_Group(v22, type metadata accessor for NearbyGroup_Group.Initialization);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v98);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to derive UUID from Initialization message: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v22, type metadata accessor for NearbyGroup_Group.Initialization);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v45 = 0;
      return swift_willThrow();
    }

LABEL_54:
    swift_once();
    goto LABEL_4;
  }

  v84 = v13;
  v31 = *(v13 + 32);
  v90 = v12;
  v31(v94, v11, v12);
  v32 = a3[2];
  v33 = *(v32 + 16);
  if (v33)
  {
    v96 = (v97 + *(v91 + 24));
    v34 = v32 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v95 = *(v95 + 72);
    v35 = _swiftEmptyArrayStorage;
    do
    {
      v36 = v97;
      outlined init with copy of NearbyGroup_Group(v34, v97, type metadata accessor for NearbyGroup_Member);
      v38 = *v36;
      v37 = v36[1];
      v39 = *v96;
      v40 = v96[1];

      outlined destroy of NearbyGroup_Group(v36, type metadata accessor for NearbyGroup_Member);
      if (v40)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0;
      }

      if (!v40)
      {
        v40 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      }

      v43 = *(v35 + 2);
      v42 = *(v35 + 3);
      if (v43 >= v42 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v35);
      }

      *(v35 + 2) = v43 + 1;
      v44 = &v35[32 * v43];
      *(v44 + 4) = v38;
      *(v44 + 5) = v37;
      *(v44 + 6) = v41;
      *(v44 + 7) = v40;
      v34 += v95;
      --v33;
    }

    while (v33);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v48 = v92;
  v47 = v93;
  v49 = String._bridgeToObjectiveC()();
  v50 = IDSCopyAddressDestinationForDestination();

  v51 = IDSCopyRawAddressForDestination();
  if (!v51)
  {
    goto LABEL_42;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (String.count.getter() < 1)
  {

LABEL_42:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Log.host);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v98 = v65;
      *v64 = 136315138;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v98);
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to convert ID into Raw IDS Destination: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
    }

    return (*(v84 + 8))(v94, v90);
  }

  v55 = *(v35 + 2);
  if (v55)
  {
    v56 = (v35 + 56);
    do
    {
      v58 = *(v56 - 1);
      v57 = *v56;
      v59 = *(v56 - 3) == v52 && *(v56 - 2) == v54;
      if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v57)
        {
          goto LABEL_52;
        }
      }

      else if (!v57)
      {
        goto LABEL_37;
      }

      v60 = v58 == v48 && v57 == v47;
      if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_52:

        v74 = v84;
        v75 = v87;
        v76 = v94;
        v77 = v90;
        (*(v84 + 16))(v87, v94, v90);
        v78 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC44com_apple_SharePlay_NearbyInvitationsService0F19GroupHostIDSServiceC12MessageEventO6MemberV_SayAJGTt0g5Tf4g_n(v35);

        *(v75 + *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20)) = v78;
        swift_storeEnumTagMultiPayload();
        v79 = voucher_copy();
        v80 = v88;
        v81 = *(v86 + 48);
        outlined init with copy of NearbyGroup_Group(v75, v88, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
        *(v80 + v81) = v79;

        v82 = v79;
        PassthroughSubject.send(_:)();

        outlined destroy of Any?(v80, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
        outlined destroy of NearbyGroup_Group(v75, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
        return (*(v74 + 8))(v76, v77);
      }

LABEL_37:
      v56 += 4;
      --v55;
    }

    while (v55);
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Log.host);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v98 = v70;
    *v69 = 136315138;
    *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v98);
    _os_log_impl(&_mh_execute_header, v67, v68, "Failed message verification. fromID %s not present in membership list.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
  }

  v71 = v90;
  v72 = v84;
  lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
  swift_allocError();
  *v73 = 0;
  swift_willThrow();
  return (*(v72 + 8))(v94, v71);
}

uint64_t NearbyGroupHostIDSService.handleMemberAdded(from:addedMember:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v67 = a2;
  v65 = a1;
  v70 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  __chkstk_darwin(v70);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  __chkstk_darwin(v64);
  v68 = &v59 - v7;
  v62 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  __chkstk_darwin(v62);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v9 - 8);
  v60 = &v59 - v10;
  v61 = type metadata accessor for NearbyGroup_Member(0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v71 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v4;
  v23 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  outlined copy of Data._Representation(*a3, a3[1]);
  UUID.init(data:)();
  v25 = a3;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Any?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.host);
      v27 = v63;
      outlined init with copy of NearbyGroup_Group(v25, v63, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v72 = v31;
        *v30 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberAdded and conformance NearbyGroup_Group.MemberAdded, type metadata accessor for NearbyGroup_Group.MemberAdded, &protocol conformance descriptor for NearbyGroup_Group.MemberAdded);
        v32 = Message.debugDescription.getter();
        v34 = v33;
        outlined destroy of NearbyGroup_Group(v27, type metadata accessor for NearbyGroup_Group.MemberAdded);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v72);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to derive UUID from member added message: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v27, type metadata accessor for NearbyGroup_Group.MemberAdded);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v42 = 0;
      return swift_willThrow();
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v36 = v16;
  v37 = v17;
  (*(v17 + 32))(v71, v15, v36);
  v38 = v60;
  outlined init with copy of (String, Any)(a3 + *(v70 + 24), v60, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v39 = *(v59 + 48);
  v40 = v61;
  if (v39(v38, 1, v61) == 1)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    UnknownStorage.init()();
    v41 = (v12 + *(v40 + 24));
    *v41 = 0;
    v41[1] = 0;
    if (v39(v38, 1, v40) != 1)
    {
      outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Group(v38, v12, type metadata accessor for NearbyGroup_Member);
  }

  v45 = *v12;
  v44 = v12[1];
  v46 = (v12 + *(v40 + 24));
  v48 = *v46;
  v47 = v46[1];

  outlined destroy of NearbyGroup_Group(v12, type metadata accessor for NearbyGroup_Member);
  v49 = v66;
  v50 = v71;
  (*(v17 + 16))(v66, v71, v36);
  v51 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v52 = (v49 + *(v51 + 20));
  v53 = v67;
  *v52 = v65;
  v52[1] = v53;
  v54 = v49 + *(v51 + 24);
  *v54 = v45;
  *(v54 + 8) = v44;
  *(v54 + 16) = v48;
  *(v54 + 24) = v47;
  *(v54 + 32) = 0;
  swift_storeEnumTagMultiPayload();

  v55 = voucher_copy();
  v56 = v68;
  v57 = *(v64 + 48);
  outlined init with copy of NearbyGroup_Group(v49, v68, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  *(v56 + v57) = v55;

  v58 = v55;
  PassthroughSubject.send(_:)();

  outlined destroy of Any?(v56, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  outlined destroy of NearbyGroup_Group(v49, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  return (*(v37 + 8))(v50, v36);
}

uint64_t NearbyGroupHostIDSService.handleMemberRemoved(from:removedMember:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v67 = a2;
  v65 = a1;
  v70 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  __chkstk_darwin(v70);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  __chkstk_darwin(v64);
  v68 = &v59 - v7;
  v62 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  __chkstk_darwin(v62);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  __chkstk_darwin(v9 - 8);
  v60 = &v59 - v10;
  v61 = type metadata accessor for NearbyGroup_Member(0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v71 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v4;
  v23 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  outlined copy of Data._Representation(*a3, a3[1]);
  UUID.init(data:)();
  v25 = a3;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Any?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.host);
      v27 = v63;
      outlined init with copy of NearbyGroup_Group(v25, v63, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v72 = v31;
        *v30 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberRemoved and conformance NearbyGroup_Group.MemberRemoved, type metadata accessor for NearbyGroup_Group.MemberRemoved, &protocol conformance descriptor for NearbyGroup_Group.MemberRemoved);
        v32 = Message.debugDescription.getter();
        v34 = v33;
        outlined destroy of NearbyGroup_Group(v27, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v72);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to derive UUID from member added message: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v27, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v42 = 0;
      return swift_willThrow();
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v36 = v16;
  v37 = v17;
  (*(v17 + 32))(v71, v15, v36);
  v38 = v60;
  outlined init with copy of (String, Any)(a3 + *(v70 + 24), v60, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
  v39 = *(v59 + 48);
  v40 = v61;
  if (v39(v38, 1, v61) == 1)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    UnknownStorage.init()();
    v41 = (v12 + *(v40 + 24));
    *v41 = 0;
    v41[1] = 0;
    if (v39(v38, 1, v40) != 1)
    {
      outlined destroy of Any?(v38, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E12Group_MemberVSgMR);
    }
  }

  else
  {
    outlined init with take of NearbyGroup_Group(v38, v12, type metadata accessor for NearbyGroup_Member);
  }

  v45 = *v12;
  v44 = v12[1];
  v46 = (v12 + *(v40 + 24));
  v48 = *v46;
  v47 = v46[1];

  outlined destroy of NearbyGroup_Group(v12, type metadata accessor for NearbyGroup_Member);
  v49 = v66;
  v50 = v71;
  (*(v17 + 16))(v66, v71, v36);
  v51 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
  v52 = (v49 + *(v51 + 20));
  v53 = v67;
  *v52 = v65;
  v52[1] = v53;
  v54 = v49 + *(v51 + 24);
  *v54 = v45;
  *(v54 + 8) = v44;
  *(v54 + 16) = v48;
  *(v54 + 24) = v47;
  *(v54 + 32) = 1;
  swift_storeEnumTagMultiPayload();

  v55 = voucher_copy();
  v56 = v68;
  v57 = *(v64 + 48);
  outlined init with copy of NearbyGroup_Group(v49, v68, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  *(v56 + v57) = v55;

  v58 = v55;
  PassthroughSubject.send(_:)();

  outlined destroy of Any?(v56, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  outlined destroy of NearbyGroup_Group(v49, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  return (*(v37 + 8))(v50, v36);
}

uint64_t NearbyGroupHostIDSService.handleMemberLeft(from:leftMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;
  v73 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  __chkstk_darwin(v73);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  __chkstk_darwin(v69);
  v71 = &v66 - v6;
  v68 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  __chkstk_darwin(v68);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = v3;
  v19 = *(v3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  outlined copy of Data._Representation(*a3, *(a3 + 8));
  UUID.init(data:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Any?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for host == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.host);
      v22 = v74;
      outlined init with copy of NearbyGroup_Group(a3, v74, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v77 = v26;
        *v25 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group.MemberLeft and conformance NearbyGroup_Group.MemberLeft, type metadata accessor for NearbyGroup_Group.MemberLeft, &protocol conformance descriptor for NearbyGroup_Group.MemberLeft);
        v27 = Message.debugDescription.getter();
        v29 = v28;
        outlined destroy of NearbyGroup_Group(v22, type metadata accessor for NearbyGroup_Group.MemberLeft);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v77);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to derive UUID from member left message: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v22, type metadata accessor for NearbyGroup_Group.MemberLeft);
      }

      lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
      swift_allocError();
      *v46 = 0;
      return swift_willThrow();
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v31 = v11;
  v32 = v14;
  (*(v12 + 32))(v14, v10, v31);
  v33 = v75;
  v34 = v76;
  v35 = String._bridgeToObjectiveC()();
  v36 = IDSCopyAddressDestinationForDestination();

  v37 = IDSCopyRawAddressForDestination();
  if (v37)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (String.count.getter() >= 1)
    {
      v41 = v32;
      v42 = v38;
      if (*(a3 + 16) == 1)
      {

        v43 = v33;
        v44 = v33;
        v45 = v34;
      }

      else
      {
        v43 = 0;
        v44 = v33;
        v45 = 0;
      }

      v56 = *(v12 + 16);
      v57 = v70;
      v67 = v41;
      v56(v70, v41, v31);
      v58 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0);
      v59 = (v57 + *(v58 + 20));
      *v59 = v44;
      v59[1] = v34;
      v60 = v57 + *(v58 + 24);
      *v60 = v42;
      *(v60 + 8) = v40;
      *(v60 + 16) = v43;
      *(v60 + 24) = v45;
      *(v60 + 32) = 1;
      swift_storeEnumTagMultiPayload();

      v61 = voucher_copy();
      v62 = v71;
      v63 = v31;
      v64 = *(v69 + 48);
      outlined init with copy of NearbyGroup_Group(v57, v71, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      *(v62 + v64) = v61;

      v65 = v61;
      PassthroughSubject.send(_:)();

      outlined destroy of Any?(v62, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
      outlined destroy of NearbyGroup_Group(v57, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      return (*(v12 + 8))(v67, v63);
    }
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Log.host);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v33;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v34;
    v55 = v53;
    v77 = v53;
    *v52 = 136315138;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v54, &v77);
    _os_log_impl(&_mh_execute_header, v49, v50, "Failed to convert ID into Raw IDS Destination: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
  }

  return (*(v12 + 8))(v32, v31);
}