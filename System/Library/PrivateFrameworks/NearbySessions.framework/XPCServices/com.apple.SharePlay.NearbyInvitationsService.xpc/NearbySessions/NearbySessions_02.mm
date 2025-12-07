uint64_t closure #1 in NearbyInvitationsInviteAdvertiser.init(invitation:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 192))(result);
  }

  return result;
}

uint64_t closure #1 in NearbyInvitationsInviteAdvertiser.assertPublic(rotations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UUID.init()();
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(*a1 + 160))(v15);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v12;
  *v12 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v9, v6);
  *v12 = v16;

  return v10(v15, 0);
}

uint64_t closure #1 in NearbyInvitationsInviteAdvertiser.addressChanged()(uint64_t a1)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    (*(*a1 + 144))();
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = Dictionary.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Notified about address rotation, assertions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v11 = (*(*a1 + 144))();
  v12 = specialized Dictionary.compactMapValues<A>(_:)(v11);

  return (*(*a1 + 152))(v12);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Su5valuetMd, &_s10Foundation4UUIDV3key_Su5valuetMR);
  v2 = __chkstk_darwin(v51);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - v5;
  __chkstk_darwin(v4);
  v50 = &v44 - v7;
  v47 = &_swiftEmptyDictionarySingleton;
  v53 = &_swiftEmptyDictionarySingleton;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v52 = a1;

  v14 = 0;
  v48 = a1 + 64;
  v49 = v6;
  while (1)
  {
    v15 = v14;
    if (!v11)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v14 = v15;
LABEL_10:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v14 << 6);
      v18 = v52;
      v19 = *(v52 + 48);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      v22 = v21;
      v23 = *(v21 + 72);
      v24 = v19 + v23 * v17;
      v25 = v50;
      (*(v21 + 16))(v50, v24, v20);
      v26 = *(*(v18 + 56) + 8 * v17);
      v27 = v51;
      *(v25 + *(v51 + 48)) = v26;
      v28 = v49;
      outlined init with take of (key: UUID, value: UInt)(v25, v49);
      v29 = *(v28 + *(v27 + 48));
      if (v29 >= 2)
      {
        break;
      }

      result = outlined destroy of Any?(v28, &_s10Foundation4UUIDV3key_Su5valuetMd, &_s10Foundation4UUIDV3key_Su5valuetMR);
      v15 = v14;
      v8 = v48;
      if (!v11)
      {
LABEL_7:
        while (1)
        {
          v14 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            return v47;
          }

          v11 = *(v8 + 8 * v14);
          ++v15;
          if (v11)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v44 = v23;
    v45 = v22;
    outlined init with take of (key: UUID, value: UInt)(v28, v46);
    v30 = v47[2];
    if (v47[3] <= v30)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30 + 1, 1);
    }

    v31 = v53;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v32 = (v31 + 8);
    v47 = v31;
    v33 = -1 << *(v31 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~v31[(v34 >> 6) + 8]) == 0)
    {
      break;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~v31[(v34 >> 6) + 8])) | v34 & 0x7FFFFFFFFFFFFFC0;
    v38 = v44;
    v37 = v45;
LABEL_25:
    *&v32[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
    v43 = v47;
    result = (*(v37 + 32))(v47[6] + v36 * v38, v46, v20);
    *(v43[7] + 8 * v36) = v29 - 1;
    ++v43[2];
    v8 = v48;
  }

  v39 = 0;
  v40 = (63 - v33) >> 6;
  v38 = v44;
  v37 = v45;
  while (++v35 != v40 || (v39 & 1) == 0)
  {
    v41 = v35 == v40;
    if (v35 == v40)
    {
      v35 = 0;
    }

    v39 |= v41;
    v42 = *&v32[8 * v35];
    if (v42 != -1)
    {
      v36 = __clz(__rbit64(~v42)) + (v35 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t NearbyInvitationsInviteAdvertiser.__ivar_destroyer()
{
}

uint64_t NearbyInvitationsInviteAdvertiser.deinit()
{
  NearbyInvitationsAdvertiser.deinit();

  return v0;
}

uint64_t NearbyInvitationsInviteAdvertiser.__deallocating_deinit()
{
  NearbyInvitationsAdvertiser.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path setter for NearbyInvitationsInviteScanner.lostInvitations : NearbyInvitationsInviteScanner(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Any)(a1, &v8 - v5, &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  return (*(**a2 + 448))(v6);
}

uint64_t NearbyInvitationsScanner.deviceFoundContinuation.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of (String, Any)(v4 + v8, a4, a2, a3);
}

uint64_t NearbyInvitationsScanner.deviceFoundContinuation.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t NearbyInvitationsInviteScanner.advertisements.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t NearbyInvitationsInviteScanner.init(ignoringDistance:)(char a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements) = &_swiftEmptyDictionarySingleton;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, 1, 1, v6);
  NearbyInvitationsScanner.init(ignoringDistance:)(a1);
  v8 = *(v1 + 48);

  [v8 setUseCase:131092];
  [*(v1 + 48) addDiscoveryType:21];

  return v1;
}

uint64_t NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v26 = a2;
  v27 = a1;
  v24 = *v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D13AdvertisementC__GMR);
  v29 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v21 - v13;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v15 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v10 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v9);
  AsyncStream.init(_:bufferingPolicy:_:)();
  type metadata accessor for NearbyAdvertisement();
  v16 = *(v29 + 104);
  v29 += 104;
  v17 = v22;
  v16(v5, v15, v22);
  v18 = v24;
  v35 = v3;
  v36 = v24;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  (*(*v3 + 448))(v8);
  v16(v5, v15, v17);
  v30 = v3;
  v31 = v14;
  v32 = v26;
  v33 = v27;
  v34 = v18;
  AsyncStream.init(_:bufferingPolicy:_:)();
  return (*(v23 + 8))(v14, v25);
}

uint64_t closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a4;
  v53 = a6;
  v51 = a5;
  v49 = a3;
  v54 = a2;
  v44 = a1;
  v58 = type metadata accessor for UUID();
  v56 = *(v58 - 8);
  v50 = *(v56 + 64);
  __chkstk_darwin(v58);
  v57 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v9 = *(v8 - 8);
  v48 = v9[8];
  __chkstk_darwin(v8);
  v55 = &v41 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v47);
  v46 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v45 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  __chkstk_darwin(v17 - 8);
  v19 = &v41 - v18;
  v20 = v9[2];
  v21 = a1;
  v22 = v8;
  v20(&v41 - v18, v21, v8);
  v23 = v9;
  v24 = v9[7];
  v43 = v8;
  v24(v19, 0, 1, v8);
  v25 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v26 = v54;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v19, v26 + v25, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  swift_endAccess();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = v11;
  v42 = v11;
  v29 = *(v11 + 16);
  v30 = v46;
  v31 = v47;
  v29(v46, v49, v47);
  v20(v55, v44, v22);
  v32 = v56;
  (*(v56 + 16))(v57, v51, v58);
  v33 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v23;
  v36 = (*(v23 + 80) + v34 + 8) & ~*(v23 + 80);
  v37 = (v48 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v54;
  (*(v42 + 32))(&v39[v33], v30, v31);
  *&v39[v34] = v52;
  (v35[4])(&v39[v36], v55, v43);
  (*(v56 + 32))(&v39[v37], v57, v58);
  *&v39[v38] = v53;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v45, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:), v39);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v17;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMR);
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo8CBDeviceC_GMd, &_sScS8IteratorVySo8CBDeviceC_GMR);
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = swift_task_alloc();
  v15 = (*(*a4 + 328) + **(*a4 + 328));
  v13 = swift_task_alloc();
  v8[23] = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:);

  return v15();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:), 0, 0);
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:);
  v2 = *(v0 + 160);

  return AsyncStream.Iterator.next(isolation:)(v0 + 48, 0, 0, v2);
}

{

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:), 0, 0);
}

{
  v64 = v0;
  v2 = v0 + 48;
  v1 = *(v0 + 48);
  if (v1)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, log);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v1;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "!!! Found device %@", v7, 0xCu);
      outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v10 = *(v0 + 80);

    v11 = [v4 nearbyInfoV2DecryptedFlags] & 1;
    if (specialized Sequence<>.contains(_:)(v11, v10))
    {
      v12 = [v4 stableIdentifier];
      if (v12)
      {
        v14 = *(v0 + 144);
        v13 = *(v0 + 152);
        v15 = *(v0 + 136);
        v16 = *(v0 + 96);
        v17 = v12;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        type metadata accessor for NearbyAdvertisement();
        (*(v14 + 16))(v13, v16, v15);
        v20 = v4;
        v21 = NearbyAdvertisement.init(id:device:)(v13, v20);
        if (v21)
        {
          v22 = v21;
          v61 = v20;
          v23 = *(**(v0 + 64) + 480);
          v24 = v21;
          v25 = v23(v0 + 16);
          specialized Dictionary.subscript.setter(v22, v62, v19);
          v25(v0 + 16, 0);
          v26 = v24;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v63 = v31;
            *v29 = 136315394;
            v32 = _typeName(_:qualified:)();
            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v63);

            *(v29 + 4) = v34;
            *(v29 + 12) = 2112;
            *(v29 + 14) = v26;
            *v30 = v22;
            v35 = v26;
            _os_log_impl(&_mh_execute_header, v27, v28, "%s: !!! Yielded invite %@", v29, 0x16u);
            outlined destroy of Any?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

            __swift_destroy_boxed_opaque_existential_0Tm(v31);
          }

          v36 = *(v0 + 120);
          v37 = *(v0 + 128);
          v38 = *(v0 + 112);
          *(v0 + 56) = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
          v2 = v0 + 48;
          AsyncStream.Continuation.yield(_:)();

          (*(v36 + 8))(v37, v38);
          goto LABEL_26;
        }

        v50 = v20;
        v41 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        v2 = v0 + 48;
        if (os_log_type_enabled(v41, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138412290;
          *(v57 + 4) = v50;
          *v58 = v1;
          v4 = v50;
          _os_log_impl(&_mh_execute_header, v41, v56, "Unable to create NearbyAdvertisement from device: %@", v57, 0xCu);
          outlined destroy of Any?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          goto LABEL_17;
        }
      }

      else
      {
        v50 = v4;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          *(v53 + 4) = v50;
          *v54 = v1;
          v55 = v50;
          _os_log_impl(&_mh_execute_header, v51, v52, "Device contains invitation, but no stableIdentifier. device: %@", v53, 0xCu);
          outlined destroy of Any?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
        AsyncStream.Continuation.finish()();
      }

      goto LABEL_26;
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v41, v42))
    {
LABEL_18:

LABEL_26:
      v59 = swift_task_alloc();
      *(v0 + 192) = v59;
      *v59 = v0;
      v59[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:);
      v60 = *(v0 + 160);

      return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v60);
    }

    v43 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v43 = 136315394;
    v44 = Array.description.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v63);

    *(v43 + 4) = v46;
    v2 = v0 + 48;
    *(v43 + 12) = 2080;
    *(v0 + 200) = v11;
    v47 = String.init<A>(reflecting:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v63);

    *(v43 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v41, v42, "Ignoring device. Activity types don't match. Looking for activities: %s but got %s", v43, 0x16u);
    swift_arrayDestroy();

LABEL_17:

    goto LABEL_18;
  }

  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

  v39 = *(v0 + 8);

  return v39();
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 4;
    v6 = NearbyInvitationActivityType.rawValue.getter();
  }

  while (v6 != NearbyInvitationActivityType.rawValue.getter());
  return v4 != 0;
}

uint64_t NearbyAdvertisement.init(id:device:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = [a2 stableIdentifier];
  if (v12)
  {
    v39 = a1;
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = [a2 nearbyInfoV2InvitationCounter];
    v37 = [a2 nearbyInfoV2DecryptedFlags];
    v36 = [a2 nearbyInfoV2InvitationRouteType];
    v18 = [a2 deviceFlags];
    v38 = v2;
    if ((v18 & 0x80) != 0)
    {
      type metadata accessor for NearbyAdvertisement();
      v24 = static NearbyAdvertisement.meContactID.getter();
      v34 = v25;
      v35 = v24;
    }

    else
    {
      v19 = [a2 contactID];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v22;
        v35 = v21;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }
    }

    v26 = *(v6 + 16);
    v26(v11, v39, v5);
    v26(v9, v11, v5);
    v41[0] = v14;
    v41[1] = v16;
    v27._countAndFlagsBits = 45;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v40 = v17;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29 = [a2 accountID];
    if (v29)
    {
      v30 = v29;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    LOBYTE(v41[0]) = v36;
    _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v41, v41 + 1);
    v23 = dispatch thunk of NearbyAdvertisement.__allocating_init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();

    v31 = *(v6 + 8);
    v31(v39, v5);
    v31(v11, v5);
  }

  else
  {
    (*(v6 + 8))(a1, v5);

    return 0;
  }

  return v23;
}

uint64_t closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = *(v6 + 16);
  v16(&v22 - v14, a1, v5);
  (*(v6 + 56))(v15, 0, 1, v5);
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v15, a2 + v17, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  swift_endAccess();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v16(v9, v23, v5);
  v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  (*(v6 + 32))(&v20[v19], v9, v5);
  *&v20[(v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations(), v20);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMR);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo8CBDeviceC_GMd, &_sScS8IteratorVySo8CBDeviceC_GMR);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations(), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  (*(**(v0 + 72) + 392))();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations();
  v5 = *(v0 + 144);

  return AsyncStream.Iterator.next(isolation:)(v0 + 48, 0, 0, v5);
}

{

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations(), 0, 0);
}

{
  v59 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = [*(v0 + 48) stableIdentifier];
    if (v2)
    {
      v3 = *(v0 + 72);
      v4 = v2;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = (*(*v3 + 480))(v0 + 16);
      v10 = v9;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      if (v12)
      {
        v13 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 56) = *v10;
        *v10 = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }

        v15 = *(v0 + 56);

        v16 = *(*(v15 + 56) + 8 * v13);
        specialized _NativeDictionary._delete(at:)(v13, v15);
        *v10 = v15;

        v8(v0 + 16, 0);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, log);
        v18 = v16;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v58 = v56;
          *v21 = 136315394;
          v23 = _typeName(_:qualified:)();
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v58);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2112;
          *(v21 + 14) = v18;
          *v22 = v18;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "%s lost advertisement %@ because of BT device being lost.", v21, 0x16u);
          outlined destroy of Any?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          __swift_destroy_boxed_opaque_existential_0Tm(v56);
        }

        v28 = *(v0 + 104);
        v27 = *(v0 + 112);
        v29 = *(v0 + 96);
        *(v0 + 64) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
        AsyncStream.Continuation.yield(_:)();

        (*(v28 + 8))(v27, v29);
        v30 = swift_task_alloc();
        *(v0 + 168) = v30;
        *v30 = v0;
        v30[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations();
        v31 = *(v0 + 144);

        return AsyncStream.Iterator.next(isolation:)(v0 + 48, 0, 0, v31);
      }

      v8(v0 + 16, 0);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, log);
      v33 = v1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      v48 = os_log_type_enabled(v34, v35);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      v39 = *(v0 + 144);
      if (v48)
      {
        v57 = *(v0 + 160);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58 = v54;
        *v40 = 136315394;
        v49 = _typeName(_:qualified:)();
        v55 = v39;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v58);

        *(v40 + 4) = v51;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v33;
        *v41 = v1;
        v45 = v33;
        v46 = "%s Lost device %@ didn't have an advertisement.";
        goto LABEL_22;
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, log);
      v33 = v1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      v36 = os_log_type_enabled(v34, v35);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      v39 = *(v0 + 144);
      if (v36)
      {
        v57 = *(v0 + 160);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58 = v54;
        *v40 = 136315394;
        v42 = _typeName(_:qualified:)();
        v55 = v39;
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v58);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v33;
        *v41 = v1;
        v45 = v33;
        v46 = "%s Don't have a stableIdentifier for device: %@, can't tell if it had an advertisement.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v34, v35, v46, v40, 0x16u);
        outlined destroy of Any?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v54);

        (*(v38 + 8))(v57, v55);
        goto LABEL_24;
      }
    }

    (*(v38 + 8))(v37, v39);
    goto LABEL_24;
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
LABEL_24:

  v52 = *(v0 + 8);

  return v52();
}

Swift::Void __swiftcall NearbyInvitationsInviteScanner.stopScan()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v0 + v8, v7, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    outlined destroy of Any?(v7, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    outlined destroy of Any?(v7, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
    AsyncStream.Continuation.finish()();
    (*(v2 + 8))(v4, v1);
  }

  NearbyInvitationsScanner.stopScan()();
}

uint64_t closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations(), v13);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo8CBDeviceC_GMd, &_sScS8IteratorVySo8CBDeviceC_GMR);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations(), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(**(v0 + 32) + 384))();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations();
  v5 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v5);
}

{

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations(), 0, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    NearbyInvitationsInviteScanner.handleChanged(device:)(*(v0 + 16));
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, log);

    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2112;
      *(v6 + 14) = v3;
      *v7 = v1;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: found filtered invitation device: %@", v6, 0x16u);
      outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 48);
    *(v0 + 24) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations();
    v16 = *(v0 + 96);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v16);
  }

  else
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v17 = *(v0 + 8);

    return v17();
  }
}

void NearbyInvitationsInviteScanner.handleChanged(device:)(void *a1)
{
  v2 = v1;
  v63 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMR);
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v67 = &v61 - v11;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, log);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Device changed: %@", v16, 0xCu);
    outlined destroy of Any?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v2 + v19, v8, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
    v20 = v13;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Not able to tell anyone about lost device: %@", v23, 0xCu);
      outlined destroy of Any?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v67, v8, v9);
    v26 = [v13 stableIdentifier];
    if (v26)
    {
      v62 = v10;
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = (*(*v2 + 480))(v68);
      v32 = specialized Dictionary._Variant.removeValue(forKey:)(v28, v30);

      v31(v68, 0);
      if (v32)
      {
        v33 = v13;
        v34 = v32;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();

        v61 = v35;
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v68[0] = v39;
          *v37 = 136315650;
          v40 = _typeName(_:qualified:)();
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v68);

          *(v37 + 4) = v42;
          *(v37 + 12) = 2112;
          *(v37 + 14) = v33;
          *(v37 + 22) = 2112;
          *(v37 + 24) = v34;
          *v38 = v33;
          v38[1] = v32;
          v43 = v33;
          v44 = v34;
          v45 = v61;
          _os_log_impl(&_mh_execute_header, v61, v36, "%s: Lost device: %@ with advertisement: %@", v37, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();

          __swift_destroy_boxed_opaque_existential_0Tm(v39);
        }

        else
        {
        }

        v58 = v62;
        v68[0] = v34;
        v59 = v64;
        v60 = v67;
        AsyncStream.Continuation.yield(_:)();
        (*(v65 + 8))(v59, v66);
        (*(v58 + 8))(v60, v9);
      }

      else
      {
        v52 = v13;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "No stored advertisement found for %@", v55, 0xCu);
          outlined destroy of Any?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        }

        (*(v62 + 8))(v67, v9);
      }
    }

    else
    {
      v46 = v13;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "Couldn't find a stableIdentifier for device: %@", v49, 0xCu);
        outlined destroy of Any?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      (*(v10 + 8))(v67, v9);
    }
  }
}

uint64_t NearbyInvitationsInviteScanner.__ivar_destroyer()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations, &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  return outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
}

id *NearbyInvitationsInviteScanner.deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations, &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  return v0;
}

uint64_t NearbyInvitationsInviteScanner.__deallocating_deinit()
{
  NearbyInvitationsInviteScanner.deinit();

  return swift_deallocClassInstance();
}

uint64_t NISessionDelegate.NIDevice.description.getter(uint64_t a1, void *a2, __int16 a3, id a4)
{
  if (a4)
  {
    v7 = [a4 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x74655320746F4ELL;
  }

  _StringGuts.grow(_:)(29);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x204E49202CLL;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  if (a3)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a3)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 0x20554F202CLL;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  if ((a3 & 0x100) != 0)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 0x27205453202CLL;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v8;
  v21._object = v10;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 39;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 542327881;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NISessionDelegate.NIDevice()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return NISessionDelegate.NIDevice.description.getter(*v0, *(v0 + 8), v1 | *(v0 + 16), *(v0 + 24));
}

uint64_t protocol witness for Identifiable.id.getter in conformance NISessionDelegate.NIDevice@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t NISessionDelegate.sessionDidStartRunning(_:)(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "NISession %s Running", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 360))(result);
  }

  return result;
}

uint64_t NISessionDelegate.session(_:didFailWithError:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = a1;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v12 = v6;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "NISession %s Failed: %@", v9, 0x16u);
    outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  *(v3 + v17) = &_swiftEmptyDictionarySingleton;
}

uint64_t NISessionDelegate.session(_:didInvalidateWith:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = a1;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v10 = v4;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "NISession %s Invalidated: %@", v7, 0x16u);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 368))(result);
  }

  return result;
}

uint64_t NISessionDelegate.session(_:suspensionReasonEnded:isNoLongerSuspended:)(void *a1, uint64_t a2, char a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315650;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "NISession %s Suspension Ended: %ld, isActive: %{BOOL}d", v10, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 368))(Strong);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 376))(result);
  }

  return result;
}

id NISessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NISessionDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NearbyInvitationsInviteAdvertiser.__allocating_init(invitation:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *NearbyInvitationsAcceptInviteAdvertiser.init(to:)(void *a1)
{
  v2 = v1;
  NearbyInvitationsAdvertiser.init()();
  v4 = one-time initialization token for log;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, log);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;

    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Advertising AcceptInvite", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  [*(v2 + 16) setUseCase:131092];
  [*(v2 + 16) setNearbyActionType:56];
  [*(v2 + 16) setNearbyActionFlags:640];
  [*(v2 + 16) setAdvertiseRate:60];
  v13 = *(v2 + 16);

  v14 = [a1 nearbyInfoV2AuthTagData];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v16, v18);
  }

  else
  {
    v19.super.isa = 0;
  }

  [v13 setNearbyActionTargetData:v19.super.isa];

  return v2;
}

uint64_t NearbyInvitationsAdvertiser.__deallocating_deinit()
{
  NearbyInvitationsAdvertiser.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.host);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationMessageType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationMessageType(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

id CBDevice.invitationContactID.getter()
{
  if (([v0 deviceFlags] & 0x80) != 0)
  {
    type metadata accessor for NearbyAdvertisement();
    return static NearbyAdvertisement.meContactID.getter();
  }

  else
  {
    result = [v0 contactID];
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(a1, v5, v4);
}

uint64_t partial apply for closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(a1, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(a1, v6, v1 + v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(a1, v6, v1 + v5);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      v16 = *v14 == a2 && *(v14 + 8) == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v15 == v5)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v19 = *(v8 + 48) + 24 * v11;
    v21 = *v19;
    v20 = *(v19 + 8);
    LOBYTE(v19) = *(v19 + 16);
    *a1 = v21;
    *(a1 + 8) = v20;
    *(a1 + 16) = v19;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v5, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NearbyGroupMember();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NearbyGroupMember();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v10 = *v5;
  Hasher.init(_seed:)();
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

  v11 = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v15 = ~v13;
  v28 = v10;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == a2 && v17[1] == a3;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v18)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_7:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  v21 = v19 == a4 && v18 == a5;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:

  v22 = (*(v28 + 48) + 32 * v14);
  v23 = v22[1];
  v25 = v22[2];
  v24 = v22[3];
  *a1 = *v22;
  a1[1] = v23;
  a1[2] = v25;
  a1[3] = v24;

  return 0;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      Hasher.init(_seed:)();
      v34 = v20;
      String.hash(into:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v23 = v21;
        String.hash(into:)();
      }

      else
      {
        v23 = v21;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v34;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v9 = result;
  v10 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_18;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 24 * a4;
      result = *v18;
      v19 = *(v18 + 16);
      v20 = *v18 == v9 && *(v18 + 8) == a2;
      if (v20 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v19 == v10)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v9;
  *(v22 + 8) = a2;
  *(v22 + 16) = v10;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_21:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NearbyGroupMember();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_28;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v6;
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

  result = Hasher._finalize()();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      result = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v20)
        {
          if (a4)
          {
            v23 = v21 == a3 && v20 == a4;
            if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
LABEL_27:
              result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_27;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_28:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      Hasher.init(_seed:)();

      v33 = v19;
      String.hash(into:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v23 = v21;
        String.hash(into:)();
      }

      else
      {
        v23 = v21;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      v3 = v32;
      *v14 = v33;
      v14[1] = v20;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationsAdvertiser.start()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsAdvertiser.start()(a1, v1);
}

uint64_t partial apply for closure #1 in NearbyInvitationsAdvertiser.stop()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsAdvertiser.stop()(a1, v1);
}

uint64_t specialized NearbyInvitationRangedHost.init(with:)(void *a1)
{
  v2 = [a1 stableIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 nearbyInfoV2InvitationCounter];
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, log);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device: %@ doesn't have a stableIdentifier, can't create rangedHost object.", v9, 0xCu);
      outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

const char *CBScanRateToString(int a1)
{
  if (a1 > 34)
  {
    if (a1 > 49)
    {
      if (a1 == 50)
      {
        return "High";
      }

      if (a1 == 60)
      {
        return "Max";
      }
    }

    else
    {
      if (a1 == 35)
      {
        return "MediumLow";
      }

      if (a1 == 40)
      {
        return "Medium";
      }
    }
  }

  else if (a1 > 19)
  {
    if (a1 == 20)
    {
      return "Background";
    }

    if (a1 == 30)
    {
      return "Low";
    }
  }

  else
  {
    if (!a1)
    {
      return "Default";
    }

    if (a1 == 10)
    {
      return "Periodic";
    }
  }

  return "?";
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

unint64_t lazy protocol witness table accessor for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationsInviteAdvertiser.releasePublicAssertion(identifier:)()
{
  v1 = *(v0 + 24);
  v2 = (*(**(v0 + 16) + 160))(v4);
  specialized Dictionary.removeValue(forKey:)(v1);
  return v2(v4, 0);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost;
  if (!lazy protocol witness table cache variable for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationError and conformance NearbyInvitationError()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationError and conformance NearbyInvitationError;
  if (!lazy protocol witness table cache variable for type NearbyInvitationError and conformance NearbyInvitationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationError and conformance NearbyInvitationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType);
  }

  return result;
}

uint64_t type metadata completion function for NearbyInvitationServiceBluetoothController(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for AsyncSerialQueue();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for NearbyInvitationsAdvertiser(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for AsyncSerialQueue();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyInvitationRangedHost(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for NearbyInvitationRangedHost(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for NearbyInvitationsScanner(uint64_t a1)
{
  type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<CBDevice>?, &_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<CBDevice>.Continuation?, &_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for NearbyInvitationsInviteScanner(uint64_t a1)
{
  type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<NearbyAdvertisement>?, &_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<NearbyAdvertisement>.Continuation?, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<CBDevice>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
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

uint64_t getEnumTagSinglePayload for NISessionDelegate.NIDevice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for NISessionDelegate.NIDevice(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

void specialized NISessionDelegate.session(_:suspendedWith:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v9 = v5;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "NISession %s Suspended: %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }
}

uint64_t specialized NISessionDelegate.nearbyDeviceID(_:)(void *a1)
{
  v1 = [a1 deviceIdentifer];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Nearby Device: (nil)", v7, 2u);
    }

    return 0;
  }

  return v3;
}

uint64_t specialized NISessionDelegate.session(_:didDiscover:)(void *a1)
{
  v2 = v1;
  result = specialized NISessionDelegate.nearbyDeviceID(_:)(a1);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = v4;
  v7 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
    if (v10)
    {
      v11 = *(v8 + 56) + 32 * v9;
      v13 = *v11;
      v12 = *(v11 + 8);
      WORD2(v42) = *(v11 + 16);
      v14 = *(v11 + 17);
      v15 = *(v11 + 24);
      v16 = v15;

      v17 = v14 == 0;
      v18 = v15;
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = 256;
      }

      LOWORD(v42) = v19;
      goto LABEL_10;
    }
  }

  v42 = 0;
  v18 = 0;
  v13 = v5;
  v12 = v6;
LABEL_10:
  v41 = v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);
  v21 = v18;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v45 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v40 = v6;
    v24 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47[0] = v39;
    *v24 = 136315138;
    v43 = v42 | WORD2(v42);

    v25 = v21;
    v44 = v23;
    v26 = NISessionDelegate.NIDevice.description.getter(v41, v12, v43, v18);
    v38 = v18;
    v27 = v5;
    v28 = v26;
    v30 = v29;

    v31 = v28;
    v5 = v27;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v47);
    v33 = v41;
    v34 = v38;

    *(v24 + 4) = v32;
    v35 = v43;
    _os_log_impl(&_mh_execute_header, v22, v44, "Device Discovered: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);

    v6 = v40;
  }

  else
  {

    v35 = v42 | WORD2(v42);
    v34 = v18;
    v33 = v41;
  }

  swift_beginAccess();

  v36 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v12, v35, v34, v5, v6, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v46;
  swift_endAccess();
}

uint64_t specialized NISessionDelegate.session(_:object:didUpdateRegion:previousRegion:)(void *a1, void *a2)
{
  v3 = v2;
  result = specialized NISessionDelegate.nearbyDeviceID(_:)(a1);
  if (!v6)
  {
    return result;
  }

  v7 = result;
  v8 = v6;
  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v69 = v9;
  v10 = *&v3[v9];
  if (!*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  if ((v12 & 1) == 0)
  {

LABEL_6:

    v17 = 0;
    v16 = 0;
    v15 = 0;
    v71 = v7;
    v72 = v8;
    goto LABEL_7;
  }

  v13 = *(v10 + 56) + 32 * v11;
  v14 = *(v13 + 8);
  v71 = *v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 17);
  v17 = *(v13 + 24);
  v18 = v17;
  v72 = v14;

LABEL_7:
  v70 = v7;
  v68 = v3;
  if (a2)
  {
    v19 = [a2 name];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v20 == 0x72656E6E69 && v22 == 0xE500000000000000;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v24 = v8;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, log);
      v26 = v3;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v74[0] = swift_slowAlloc();
        *v29 = 136315394;
        swift_getObjectType();
        v30 = _typeName(_:qualified:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v74);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v33 = v72;

        v34 = v71;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v74);

        *(v29 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Found inner device: %s", v29, 0x16u);
        swift_arrayDestroy();

        v8 = v24;
      }

      else
      {

        v8 = v24;
        v34 = v71;
        v33 = v72;
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v37 = *(*Strong + 400);

        v37(v34, v33);
      }

      v16 = 1;
      v15 = 1;
    }

    else if (v20 == 0x726574756FLL && v22 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = 0;
      v16 = 1;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Log.default);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v67 = v8;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v74[0] = v63;
        *v62 = 136446210;
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v74);

        *(v62 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unexpected Region: %{public}s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);

        v8 = v67;
      }

      else
      {
      }
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Log.default);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v66 = v8;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v74[0] = v42;
    *v41 = 136315138;
    if (v16)
    {
      v43 = 256;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v15;
    v65 = v43 | v15;
    v45 = v72;

    v46 = v17;
    v47 = v71;
    v48 = NISessionDelegate.NIDevice.description.getter(v71, v72, v44, v17);
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v74);

    *(v41 + 4) = v51;
    v52 = v17;
    v53 = v40;
    v54 = v65;
    _os_log_impl(&_mh_execute_header, v39, v53, "Region updated: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);

    v8 = v66;
  }

  else
  {

    if (v16)
    {
      v55 = 256;
    }

    else
    {
      v55 = 0;
    }

    v54 = v55 | v15;
    v52 = v17;
    v46 = v17;
    v47 = v71;
    v45 = v72;
  }

  swift_beginAccess();

  v56 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *&v68[v69];
  *&v68[v69] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v45, v54, v52, v70, v8, isUniquelyReferenced_nonNull_native);

  *&v68[v69] = v73;
  swift_endAccess();
  v58 = swift_weakLoadStrong();
  if (v58)
  {
    (*(*v58 + 352))(v58);
  }

  else
  {
  }
}

void specialized NISessionDelegate.session(_:didUpdateAlgorithmState:for:)(void *a1, void *a2)
{
  v4 = specialized NISessionDelegate.nearbyDeviceID(_:)(a2);
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v7 = v5;
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16))
  {

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    if (v11)
    {
      v12 = *(v9 + 56) + 32 * v10;
      v6 = *v12;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 17);
      v16 = *(v12 + 24);

      if (v15)
      {
        v17 = 256;
      }

      else
      {
        v17 = 0;
      }

      v7 = v13;
      goto LABEL_10;
    }
  }

  v17 = 0;
  v14 = 0;
  v16 = 0;
LABEL_10:
  v18 = a1;

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    v18 = v18;

    v24 = NISessionDelegate.NIDevice.description.getter(v6, v7, v17 | v14, a1);
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v28);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Algorithm state updated: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }
}

uint64_t outlined assign with take of AsyncStream<CBDevice>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v5);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(a1, v11, v12, v13, v1 + v4, v14, v1 + v7, v1 + v10);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with take of (key: UUID, value: UInt)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Su5valuetMd, &_s10Foundation4UUIDV3key_Su5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v3 = *(v1 + 16);

  return closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices()(a1, v3);
}

void __swiftcall Pseudonym.Configuration.init(featureID:minimumExpirationInSeconds:refreshSkewInSeconds:reuseIdentifier:)(com_apple_SharePlay_NearbyInvitationsService::Pseudonym::Configuration *__return_ptr retstr, Swift::String featureID, Swift::Double minimumExpirationInSeconds, Swift::Double refreshSkewInSeconds, Swift::String_optional reuseIdentifier)
{
  retstr->featureID = featureID;
  retstr->minimumExpirationInSeconds = minimumExpirationInSeconds;
  retstr->refreshSkewInSeconds = refreshSkewInSeconds;
  retstr->reuseIdentifier = reuseIdentifier;
}

uint64_t static Pseudonym.reusable(for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return _swift_task_switch(static Pseudonym.reusable(for:reuseIdentifier:), 0, 0);
}

uint64_t static Pseudonym.reusable(for:reuseIdentifier:)()
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(*(v0 + 128), 1, (v0 + 64));
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  *(v0 + 152) = v6;
  *(v0 + 112) = *(v0 + 96);
  outlined destroy of Any?(v0 + 112, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = static Pseudonym.reusable(for:reuseIdentifier:);
  v8 = *(v0 + 128);

  return specialized static Pseudonym.reusable(for:configuration:)(v8, v0 + 16);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Pseudonym.reusable(for:reuseIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 168) = v1;

  if (v1)
  {

    return _swift_task_switch(static Pseudonym.reusable(for:reuseIdentifier:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

Swift::Int Pseudonym.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t Pseudonym.Configuration.featureID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Pseudonym.Configuration.featureID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Pseudonym.Configuration.reuseIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Pseudonym.Configuration.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Pseudonym.Configuration.description.getter()
{
  _StringGuts.grow(_:)(51);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x72756769666E6F43;
  v2._object = 0xED00006E6F697461;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x657275746165663ALL;
  v3._object = 0xEB000000003D4449;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x3D70786520;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0x3D77656B7320;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  v6._object = 0x80000001000CE6D0;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  object = v0[2]._object;
  if (object)
  {
    countAndFlagsBits = v0[2]._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0x3E454E4F4E3CLL;
  }

  if (object)
  {
    v9 = v0[2]._object;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

id Pseudonym.pseudonym.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void Pseudonym.pseudonym.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t Pseudonym.handle.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) URI];
  v2 = [v1 prefixedURI];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void Pseudonym.expirationDate.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) properties];
  v2 = [v1 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t Pseudonym.refreshTask.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t Pseudonym.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 88);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
}

uint64_t one-time initialization function for provider()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = type metadata accessor for UserDefaultsPseudonymStorage();
  v2 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  v3 = Lock.init()();
  v2[3] = v0;
  v2[4] = &_swiftEmptySetSingleton;
  v2[2] = v3;
  v7 = v1;
  v8 = &protocol witness table for UserDefaultsPseudonymStorage;
  *&v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProviderCyAA0H0CGMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProviderCyAA0H0CGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0x4014000000000000;
  *(v4 + 24) = [objc_allocWithZone(NSRecursiveLock) init];
  *(v4 + 72) = &_swiftEmptyDictionarySingleton;
  result = outlined init with take of PseudonymProtocol(&v6, v4 + 32);
  static Pseudonym.provider = v4;
  return result;
}

uint64_t PseudonymProvider.__allocating_init(storage:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PseudonymProvider.init(storage:)(a1);
  return v2;
}

uint64_t static Pseudonym.markUsed(handle:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_project_boxed_opaque_existential_1(a3, v10);

  return specialized static Pseudonym.markUsed(handle:for:reuseIdentifier:)(a1, a2, v12, a4, a5, v5, v10, v11);
}

uint64_t static Pseudonym.reusable(for:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Pseudonym.reusable(for:configuration:);

  return specialized static Pseudonym.reusable(for:configuration:)(a1, a2);
}

uint64_t Pseudonym.__allocating_init(service:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = Pseudonym.__allocating_init(service:configuration:);

  return specialized Pseudonym.__allocating_init(service:configuration:)(a1, a2);
}

uint64_t Pseudonym.__allocating_init(service:configuration:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

NSObject *static Pseudonym.existing(for:reuseIdentifier:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(a1, 1, v12);
  if (!v3)
  {
    v8 = v12[2];
    v7 = v12[3];
    v10 = v12[0];
    v9 = v12[1];
    v14 = v13;
    outlined destroy of Any?(&v14, &_sSSSgMd, &_sSSSgMR);
    *&v15 = v10;
    *(&v15 + 1) = v9;
    v16 = v8;
    v17 = v7;
    v18 = a2;
    v19 = a3;

    v6 = specialized static Pseudonym.existing(for:configuration:)(v6, &v15);
  }

  return v6;
}

uint64_t Pseudonym.__allocating_init(service:)(uint64_t a1)
{
  *(v1 + 104) = a1;
  return _swift_task_switch(Pseudonym.__allocating_init(service:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = Pseudonym.__allocating_init(service:);
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = Pseudonym.__allocating_init(service:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t Pseudonym.__allocating_init(service:)()
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(v0[13], 0, v0 + 2);
  outlined init with copy of PseudonymProtocol(v0[13], (v0 + 8));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = Pseudonym.__allocating_init(service:);

  return specialized Pseudonym.__allocating_init(service:configuration:)((v0 + 8), (v0 + 2));
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 104));
  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 104));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t Pseudonym.__allocating_init(service:pseudonym:)(void *a1, uint64_t a2, unint64_t a3)
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(a1, 0, v9);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    outlined init with copy of PseudonymProtocol(a1, v8);
    a3 = specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(v8, a2, a3, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return a3;
}

uint64_t Pseudonym.__allocating_init(service:pseudonym:configuration:)(void *a1, void *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  Pseudonym.init(service:pseudonym:configuration:)(a1, a2, a3);
  return v6;
}

uint64_t Pseudonym.init(service:pseudonym:configuration:)(void *a1, void *a2, __int128 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-v9];
  *(v3 + 24) = 0;
  v11 = (v3 + 24);
  *(v3 + 120) = 0;
  outlined init with copy of PseudonymProtocol(a1, v3 + 32);
  v12 = *a3;
  v13 = a3[1];
  v25 = a3[2];
  v14 = v25;
  v26 = v12;
  *(v3 + 72) = v12;
  *(v3 + 88) = v13;
  *(v3 + 104) = v14;
  *(v3 + 16) = a2;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v17 = *(v3 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  v19 = a3[1];
  *(v18 + 40) = *a3;
  *(v18 + 56) = v19;
  *(v18 + 72) = a3[2];
  *(v18 + 88) = v16;
  outlined init with copy of String(&v26, v24);
  outlined init with copy of (String, Any)(&v25, v24, &_sSSSgMd, &_sSSSgMR);
  v20 = a2;
  v21 = v17;
  v22 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in Pseudonym.init(service:pseudonym:configuration:), v18);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  outlined destroy of Any?(v10, &_sScPSgMd, &_sScPSgMR);
  swift_beginAccess();
  *v11 = v22;

  return v4;
}

uint64_t closure #1 in Pseudonym.init(service:pseudonym:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Pseudonym.init(service:pseudonym:configuration:), 0, 0);
}

uint64_t closure #1 in Pseudonym.init(service:pseudonym:configuration:)()
{
  static Task<>.checkCancellation()();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = [*(v0 + 40) properties];
  v6 = [v5 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  v8 = static Duration.seconds(_:)();
  v10 = v9;
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = closure #1 in Pseudonym.init(service:pseudonym:configuration:);

  return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = closure #1 in Pseudonym.init(service:pseudonym:configuration:);
  }

  else
  {
    v3 = closure #1 in Pseudonym.init(service:pseudonym:configuration:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[16];
  static Task<>.checkCancellation()();
  if (v1 || (swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[17] = Strong) == 0))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = closure #1 in Pseudonym.init(service:pseudonym:configuration:);

    return Pseudonym.refreshPseudonym()();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in Pseudonym.init(service:pseudonym:configuration:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Pseudonym.refreshPseudonym()()
{
  *(v1 + 88) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 96) = swift_task_alloc();

  return _swift_task_switch(Pseudonym.refreshPseudonym(), 0, 0);
}

{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[11];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_beginAccess();
    v7 = *(v4 + 16);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to refresh pseudonym %@", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v9 = v0[11];
  v10 = v9[7];
  v11 = v9[8];
  __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
  swift_beginAccess();
  v12 = v9[2];
  v0[13] = v12;
  v13 = v9[11];
  v0[14] = v13;
  v14 = *(v11 + 32);
  v15 = v12;
  v19 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = Pseudonym.refreshPseudonym();
  v17.n128_u64[0] = v13;

  return v19(v15, v10, v11, v17);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v19 = v3;
  v4 = v2[2];
  v2[2] = v0[17];

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v8 = v2[9];
  v7 = v2[10];
  v9 = v2[12];
  v11 = v2[13];
  v10 = v2[14];
  v12 = v2[2];
  swift_beginAccess();
  v13 = v2[3];
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = v12;
  v14[6] = v8;
  v14[7] = v7;
  v14[8] = v1;
  v14[9] = v9;
  v14[10] = v11;
  v14[11] = v10;
  v14[12] = v6;

  v15 = v12;
  v16 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in Pseudonym.refreshPseudonym(), v14);
  outlined destroy of Any?(v19, &_sScPSgMd, &_sScPSgMR);
  v2[3] = v16;

  v17 = v0[1];

  return v17();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Pseudonym.refreshPseudonym()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = Pseudonym.refreshPseudonym();
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = Pseudonym.refreshPseudonym();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of (String, Any)(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of Any?(v10, &_sScPSgMd, &_sScPSgMR);
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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t Pseudonym.description.getter()
{
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D49525520;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  swift_beginAccess();
  v3 = [*(v0 + 16) URI];
  v4 = [v3 prefixedURI];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 60;
}

Swift::Void __swiftcall Pseudonym.markUsed()()
{
  *(v0 + 120) = 1;
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + 104);
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.group);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v1, &v29);
      *(v7 + 12) = 2080;
      v30 = 60;
      v31 = 0xE100000000000000;
      v8._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0x3D49525520;
      v9._object = 0xE500000000000000;
      String.append(_:)(v9);
      swift_beginAccess();
      v10 = [*(v0 + 16) URI];
      v11 = [v10 prefixedURI];

      v12 = v3;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v3 = v12;
      v16._object = v15;
      String.append(_:)(v16);

      v17._countAndFlagsBits = 62;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v29);

      *(v7 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Marked reusable pseudonym with identifier: %s as used: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v19 = static Pseudonym.provider;
    swift_beginAccess();
    v20 = [*(v2 + 16) URI];
    v21 = [v20 prefixedURI];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = *(v2 + 56);
    v26 = *(v2 + 64);
    __swift_project_boxed_opaque_existential_1((v2 + 32), v25);
    v27 = (*(v26 + 8))(v25, v26);
    if (v28)
    {
      (*(*v19 + 176))(v22, v24, v27, v28, v3, v1);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in Pseudonym.refreshPseudonym()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Pseudonym.refreshPseudonym(), 0, 0);
}

uint64_t closure #1 in Pseudonym.refreshPseudonym()()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v2 = v0;
    v2[1] = closure #1 in Pseudonym.refreshPseudonym();

    return Task.value.getter(v3, v1, &type metadata for () + 8, v3, &protocol self-conformance witness table for Error);
  }

  else
  {
    static Task<>.checkCancellation()();
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = [*(v0 + 48) properties];
    v9 = [v8 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v10 = *(v7 + 8);
    v10(v5, v6);
    v10(v4, v6);
    v11 = static Duration.seconds(_:)();
    v13 = v12;
    static Clock<>.continuous.getter();
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = closure #1 in Pseudonym.refreshPseudonym();

    return specialized Clock.sleep(for:tolerance:)(v11, v13, 0, 0, 1);
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = closure #1 in Pseudonym.refreshPseudonym();
  }

  else
  {
    v2 = closure #1 in Pseudonym.refreshPseudonym();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = closure #1 in Pseudonym.refreshPseudonym();
  }

  else
  {
    v3 = closure #1 in Pseudonym.refreshPseudonym();
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in Pseudonym.refreshPseudonym(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Pseudonym.refreshPseudonym()(uint64_t a1)
{
  v2 = *(v1 + 136);
  static Task<>.checkCancellation()();
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  if (v2)
  {

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    v9 = [*(v1 + 48) properties];
    v10 = [v9 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v11 = *(v8 + 8);
    v11(v4, v7);
    v11(v3, v7);
    v12 = static Duration.seconds(_:)();
    v14 = v13;
    static Clock<>.continuous.getter();
    v15 = swift_task_alloc();
    *(v1 + 144) = v15;
    *v15 = v1;
    v15[1] = closure #1 in Pseudonym.refreshPseudonym();

    return specialized Clock.sleep(for:tolerance:)(v12, v14, 0, 0, 1);
  }
}

{
  v2 = v1[19];
  static Task<>.checkCancellation()();
  if (v2 || (swift_beginAccess(), Strong = swift_weakLoadStrong(), (v1[20] = Strong) == 0))
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v6 = swift_task_alloc();
    v1[21] = v6;
    *v6 = v1;
    v6[1] = closure #1 in Pseudonym.refreshPseudonym();

    return Pseudonym.refreshPseudonym()();
  }
}

{
  static Task<>.checkCancellation()();
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = [*(v1 + 48) properties];
  v7 = [v6 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  v9 = static Duration.seconds(_:)();
  v11 = v10;
  static Clock<>.continuous.getter();
  v12 = swift_task_alloc();
  *(v1 + 144) = v12;
  *v12 = v1;
  v12[1] = closure #1 in Pseudonym.refreshPseudonym();

  return specialized Clock.sleep(for:tolerance:)(v9, v11, 0, 0, 1);
}

uint64_t *Pseudonym.deinit()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_beginAccess();
  v5 = [v0[2] URI];
  v6 = [v5 prefixedURI];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = v0[2];
  swift_beginAccess();
  v11 = v0[3];
  v12 = *(v0 + 120);
  v13 = v0[13];
  v14 = v0[14];
  outlined init with copy of PseudonymProtocol((v0 + 4), v19);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  *(v15 + 48) = v14;
  *(v15 + 56) = v12;
  *(v15 + 64) = v10;
  *(v15 + 72) = v7;
  *(v15 + 80) = v9;
  outlined init with take of PseudonymProtocol(v19, v15 + 88);
  *(v15 + 128) = v18;

  v16 = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in Pseudonym.deinit, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);

  return v0;
}

uint64_t closure #1 in Pseudonym.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 64) = v13;
  *(v8 + 48) = v12;
  *(v8 + 128) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for Date();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(closure #1 in Pseudonym.deinit, 0, 0);
}

uint64_t closure #1 in Pseudonym.deinit()
{
  v63 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    Task.cancel()();
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = closure #1 in Pseudonym.deinit;
    v4 = &type metadata for () + 8;
    v5 = v1;
    v6 = v2;
    v7 = &protocol self-conformance witness table for Error;

    return Task.value.getter(v3, v5, v4, v6, v7);
  }

  v8 = *(v0 + 32);
  if (v8 && (*(v0 + 128) & 1) == 0)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 40);
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Log.group);

    v47 = v45;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 40);
      v51 = *(v0 + 24);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v52 = 136315394;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v8, &v62);
      *(v52 + 12) = 2112;
      *(v52 + 14) = v50;
      *v53 = v50;
      v55 = v50;
      _os_log_impl(&_mh_execute_header, v48, v49, "Not revoking unused reusable pseudonym with reuse identifier %s: %@", v52, 0x16u);
      outlined destroy of Any?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 64);
    v57 = static Pseudonym.provider;
    v58 = v56[3];
    v59 = v56[4];
    __swift_project_boxed_opaque_existential_1(v56, v58);
    v3 = (*(v59 + 8))(v58, v59);
    if (!v5)
    {
      __break(1u);
      return Task.value.getter(v3, v5, v4, v6, v7);
    }

    (*(*v57 + 192))(*(v0 + 48), *(v0 + 56), v3, v5, *(v0 + 24), v8);
  }

  else
  {
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 72);
    v12 = [*(v0 + 40) properties];
    v13 = [v12 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.timeIntervalSinceNow.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    if (v15 > 0.0)
    {
      if (one-time initialization token for group != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 40);
      v17 = type metadata accessor for Logger();
      *(v0 + 104) = __swift_project_value_buffer(v17, static Log.group);
      v18 = v16;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 40);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v21;
        *v23 = v21;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v19, v20, "Revoking pseudonym: %@", v22, 0xCu);
        outlined destroy of Any?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v25 = *(v0 + 64);

      v26 = v25[3];
      v27 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v61 = (*(v27 + 40) + **(v27 + 40));
      v28 = swift_task_alloc();
      *(v0 + 112) = v28;
      *v28 = v0;
      v28[1] = closure #1 in Pseudonym.deinit;
      v29 = *(v0 + 40);

      return v61(v29, v26, v27);
    }

    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 40);
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.group);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 40);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v36;
      *v38 = v36;
      v39 = v36;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not revoking expired pseudonym: %@", v37, 0xCu);
      outlined destroy of Any?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v41 = *(v0 + 56);
    v40 = *(v0 + 64);
    v42 = *(v0 + 48);
    v44 = *(v0 + 24);
    v43 = *(v0 + 32);

    specialized $defer #1 () in closure #1 in Pseudonym.deinit(v44, v43, v42, v41, v40);
  }

  v60 = *(v0 + 8);

  return v60();
}

{

  if (v0)
  {

    v1 = closure #1 in Pseudonym.deinit;
  }

  else
  {
    v1 = closure #1 in Pseudonym.deinit;
  }

  return _swift_task_switch(v1, 0, 0);
}

{
  v57 = v0;
  v1 = *(v0 + 32);
  if (v1 && (*(v0 + 128) & 1) == 0)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 40);
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.group);

    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 40);
      v44 = *(v0 + 24);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v45 = 136315394;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v1, &v56);
      *(v45 + 12) = 2112;
      *(v45 + 14) = v43;
      *v46 = v43;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v41, v42, "Not revoking unused reusable pseudonym with reuse identifier %s: %@", v45, 0x16u);
      outlined destroy of Any?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 64);
    v50 = static Pseudonym.provider;
    v51 = v49[3];
    v52 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v51);
    result = (*(v52 + 8))(v51, v52);
    if (!v53)
    {
      __break(1u);
      return result;
    }

    (*(*v50 + 192))(*(v0 + 48), *(v0 + 56), result, v53, *(v0 + 24), v1);
  }

  else
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = [*(v0 + 40) properties];
    v6 = [v5 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.timeIntervalSinceNow.getter();
    v8 = v7;
    (*(v3 + 8))(v2, v4);
    if (v8 > 0.0)
    {
      if (one-time initialization token for group != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 40);
      v10 = type metadata accessor for Logger();
      *(v0 + 104) = __swift_project_value_buffer(v10, static Log.group);
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 40);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v14;
        *v16 = v14;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v12, v13, "Revoking pseudonym: %@", v15, 0xCu);
        outlined destroy of Any?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v18 = *(v0 + 64);

      v19 = v18[3];
      v20 = v18[4];
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v55 = (*(v20 + 40) + **(v20 + 40));
      v21 = swift_task_alloc();
      *(v0 + 112) = v21;
      *v21 = v0;
      v21[1] = closure #1 in Pseudonym.deinit;
      v22 = *(v0 + 40);

      return v55(v22, v19, v20);
    }

    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 40);
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.group);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 40);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "Not revoking expired pseudonym: %@", v30, 0xCu);
      outlined destroy of Any?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v34 = *(v0 + 56);
    v33 = *(v0 + 64);
    v35 = *(v0 + 48);
    v37 = *(v0 + 24);
    v36 = *(v0 + 32);

    specialized $defer #1 () in closure #1 in Pseudonym.deinit(v37, v36, v35, v34, v33);
  }

  v54 = *(v0 + 8);

  return v54();
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = closure #1 in Pseudonym.deinit;
  }

  else
  {
    v2 = closure #1 in Pseudonym.deinit;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully revoked used pseudonym %@", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  specialized $defer #1 () in closure #1 in Pseudonym.deinit(*(v0 + 24), *(v0 + 32), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    *(v5 + 4) = v4;
    *v6 = v4;
    *(v5 + 12) = 2112;
    v7 = v4;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    v6[1] = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to revoke used pseudonym %@, reason: %@", v5, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  else
  {
  }

  specialized $defer #1 () in closure #1 in Pseudonym.deinit(*(v0 + 24), *(v0 + 32), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t Pseudonym.__deallocating_deinit()
{
  Pseudonym.deinit();

  return swift_deallocClassInstance();
}

void protocol witness for PseudonymProtocol.expirationDate.getter in conformance Pseudonym()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) properties];
  v3 = [v2 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t protocol witness for PseudonymProtocol.configuration.getter in conformance Pseudonym@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 112);
  *a1 = *(*v1 + 72);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 88);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

unint64_t protocol witness for static PseudonymProtocol.create(service:pseudonym:configuration:) in conformance Pseudonym@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, unint64_t *a5@<X8>)
{
  outlined init with copy of PseudonymProtocol(a1, v12);
  v14 = *a4;
  v13 = a4[2];

  outlined init with copy of String(&v14, v11);
  outlined init with copy of (String, Any)(&v13, v11, &_sSSSgMd, &_sSSSgMR);
  result = specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(v12, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t static Pseudonym.create(service:pseudonym:configuration:)(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  outlined init with copy of PseudonymProtocol(a1, v9);
  v11 = *a4;
  v10 = a4[2];

  outlined init with copy of String(&v11, v8);
  outlined init with copy of (String, Any)(&v10, v8, &_sSSSgMd, &_sSSSgMR);
  return specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(v9, a2, a3, a4);
}

uint64_t protocol witness for PseudonymServiceManager.serviceIdentifier.getter in conformance IDSService()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for PseudonymServiceManager.accounts.getter in conformance IDSService()
{
  v1 = [*v0 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for PseudonymServiceManager.pseudonym(forPseudonymURI:) in conformance IDSService(uint64_t a1)
{
  v2 = [*v1 pseudonymForPseudonymURI:a1];

  return v2;
}

uint64_t protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService(uint64_t a1, double a2)
{
  *(v3 + 160) = a2;
  *(v3 + 152) = a1;
  *(v3 + 168) = *v2;
  return _swift_task_switch(protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService, 0, 0);
}

uint64_t protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService()
{
  v1 = *(v0 + 21);
  v2 = v0[20];
  v3 = *(v0 + 19);
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService;
  v4 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo12IDSPseudonymCs5Error_pGMd, &_sSccySo12IDSPseudonymCs5Error_pGMR);
  *(v0 + 10) = _NSConcreteStackBlock;
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym;
  *(v0 + 13) = &block_descriptor_62;
  *(v0 + 14) = v4;
  [v1 renewPseudonym:v3 forUpdatedDuration:v0 + 10 completion:v2];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 144);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService, 0, 0);
}

uint64_t protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v1 revokePseudonym:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);
    v3 = 0;
  }

  else
  {
    v3 = *(*v0 + 160);
    v2 = *(v1 + 8);
  }

  return v2(v3);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return _swift_task_switch(protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService, 0, 0);
}

uint64_t protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo12IDSPseudonymCs5Error_pGMd, &_sSccySo12IDSPseudonymCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v1 provisionPseudonymForURI:v3 withProperties:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void *UserDefaultsPseudonymStorage.__allocating_init(userDefaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  v3 = Lock.init()();
  v2[3] = a1;
  v2[4] = &_swiftEmptySetSingleton;
  v2[2] = v3;
  return v2;
}

void *UserDefaultsPseudonymStorage.init(userDefaults:)(uint64_t a1)
{
  type metadata accessor for Lock();
  swift_allocObject();
  v3 = Lock.init()();
  v1[3] = a1;
  v1[4] = &_swiftEmptySetSingleton;
  v1[2] = v3;
  return v1;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.push(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a3, a4);
  swift_endAccess();

  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = (*a1 + 40);
  v10 = v8 + 1;
  while (--v10)
  {
    result = *(v9 - 1);
    if (result != a3 || *v9 != a4)
    {
      v9 += 2;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *a1 = v7;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserDefaultsPseudonymStorage.pop(serviceIdentifier:reuseIdentifier:)(Swift::String serviceIdentifier, Swift::String reuseIdentifier)
{
  Lock.withLock<A>(_:)();
  v2 = 0;
  v3 = 0;
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.pop(serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  result = swift_beginAccess();
  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = (v5 + 32 + 16 * v8);
      v11 = *v9;
      v10 = v9[1];
      v12 = *(a3 + 32);
      if (!*(v12 + 16))
      {

        goto LABEL_15;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();
      v14 = -1 << *(v12 + 32);
      v15 = v13 & ~v14;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
LABEL_14:

LABEL_15:
        *a2 = v11;
        a2[1] = v10;

        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v19, v11, v10);
        swift_endAccess();
      }

      ++v8;
      v16 = ~v14;
      while (1)
      {
        v17 = (*(v12 + 48) + 16 * v15);
        v18 = *v17 == v11 && v17[1] == v10;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v8 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.register(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v16, a3, a4);
  swift_endAccess();

  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = (*a1 + 40);
  v10 = v8 + 1;
  while (--v10)
  {
    result = *(v9 - 1);
    if (result != a3 || *v9 != a4)
    {
      v9 += 2;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *a1 = v7;
  return result;
}

unint64_t closure #1 in UserDefaultsPseudonymStorage.markUsed(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a3, a4);
  swift_endAccess();

  v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a3, a4);

  v9 = *(*a1 + 16);
  if (v9 >= v7)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v7, v9);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.setPendingRevoke(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = (*a1 + 40);
  v9 = v7 + 1;
  while (--v9)
  {
    result = *(v8 - 1);
    if (result != a2 || *v8 != a3)
    {
      v8 += 2;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v6);
    v6 = result;
  }

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v13 + 1;
  v14 = v6 + 16 * v13;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *a1 = v6;
  return result;
}

unint64_t closure #1 in UserDefaultsPseudonymStorage.removePendingRevoke(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2, a3);

  v8 = *(*a1 + 16);
  if (v8 >= v6)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v6, v8);
  }

  __break(1u);
  return result;
}

void closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_OWORD *))
{
  v12 = *(a1 + 24);
  v13 = String._bridgeToObjectiveC()();
  v27 = v12;
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    outlined destroy of Any?(v30, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSaySSGGGMd, &_sSDySSSDySSSaySSGGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSaySSGGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  v15 = v31;
LABEL_9:
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    if (!*(v18 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    if (!*(v18 + 16))
    {
LABEL_16:
      *&v30[0] = _swiftEmptyArrayStorage;
      goto LABEL_17;
    }
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a6, a7);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  *&v30[0] = *(*(v18 + 56) + 8 * v19);

LABEL_17:
  a8(v30);
  v21 = *&v30[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a6, a7, isUniquelyReferenced_nonNull_native);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a4, a5, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v25 = String._bridgeToObjectiveC()();
  [v27 setObject:isa forKey:v25];
}

uint64_t UserDefaultsPseudonymStorage.deinit()
{

  return v0;
}

uint64_t UserDefaultsPseudonymStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *PseudonymProvider.init(storage:)(__int128 *a1)
{
  v1[2] = 0x4014000000000000;
  v1[3] = [objc_allocWithZone(NSRecursiveLock) init];
  v1[9] = &_swiftEmptyDictionarySingleton;
  outlined init with take of PseudonymProtocol(a1, (v1 + 4));
  return v1;
}

id PseudonymProvider.existingPseudonym(for:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a3;
  v4 = v3;
  v143 = *v3;
  v7 = type metadata accessor for Date();
  isa = v7[-1].isa;
  v141 = v7;
  v8 = __chkstk_darwin(v7);
  v139 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v143 + 80);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v8);
  v137 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v138 = &v125 - v15;
  __chkstk_darwin(v14);
  v17 = &v125 - v16;
  [*(v3 + 24) lock];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 8))(v18, v19);
  if (!v21)
  {
    goto LABEL_8;
  }

  v147[0] = *(a2 + 32);
  if (!*(&v147[0] + 1))
  {

LABEL_8:
    (*(v11 + 56))(v144, 1, 1, v10);
    return [*(v4 + 24) unlock];
  }

  v129 = a2;
  v130 = v17;
  v136 = v20;
  v142 = v21;
  v135 = v147[0];
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v133 = v10;
  v134 = a1;
  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Log.group);
  outlined init with copy of (String, Any)(v147, v146, &_sSSSgMd, &_sSSSgMR);
  v24 = v142;

  v132 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  outlined destroy of Any?(v147, &_sSSSgMd, &_sSSSgMR);

  v27 = os_log_type_enabled(v25, v26);
  v131 = v11;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v146[0] = swift_slowAlloc();
    *v28 = 136315906;
    v29 = _typeName(_:qualified:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v146);
    v24 = v142;

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v146);
    *(v28 + 22) = 2080;
    v32 = *(&v135 + 1);
    v33 = v135;
    *(v28 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, *(&v135 + 1), v146);
    *(v28 + 32) = 2080;
    v34 = v136;
    *(v28 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v24, v146);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s %s - %s %s ", v28, 0x2Au);
    swift_arrayDestroy();

    v35 = v34;
  }

  else
  {

    v32 = *(&v135 + 1);
    v35 = v136;
    v33 = v135;
  }

  PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(v134, v33, v32);
  v36 = *(v4 + 56);
  v37 = *(v4 + 64);
  __swift_project_boxed_opaque_existential_1((v4 + 32), v36);
  v38 = v145;
  v39 = (*(v37 + 16))(v35, v24, v33, v32, v36, v37);
  v145 = v38;
  if (v38)
  {
    goto LABEL_11;
  }

  v42 = v40;
  if (v40)
  {
    v128 = v39;
    outlined init with copy of (String, Any)(v147, v146, &_sSSSgMd, &_sSSSgMR);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    outlined destroy of Any?(v147, &_sSSSgMd, &_sSSSgMR);

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v126 = v43;
      v46 = v45;
      v146[0] = swift_slowAlloc();
      *v46 = 136316162;
      v47 = v143;
      v48 = _typeName(_:qualified:)();
      v50 = v44;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v146);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v146);
      *(v46 + 22) = 2080;
      v52 = v128;
      *(v46 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v42, v146);
      *(v46 + 32) = 2080;
      *(v46 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, *(&v135 + 1), v146);
      *(v46 + 42) = 2080;
      *(v46 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v24, v146);
      v53 = v126;
      _os_log_impl(&_mh_execute_header, v126, v50, "%s %s - Found reusable pseudonym candidate: %s %s %s", v46, 0x34u);
      swift_arrayDestroy();

      v54 = v130;
    }

    else
    {

      v54 = v130;
      v47 = v143;
      v52 = v128;
    }

    v65 = *(v47 + 88);
    v66 = v133;
    v67 = v145;
    (*(v65 + 48))(v134, v52, v42, v129, v133, v65);
    v145 = v67;
    if (!v67)
    {
      v75 = *(v65 + 24);
      v76 = v139;
      v126 = v65;
      v75(v66, v65);
      Date.timeIntervalSinceNow.getter();
      v78 = v77;
      (*(isa + 1))(v76, v141);
      if (v78 > 5.0)
      {
        v79 = v54;
        outlined init with copy of (String, Any)(v147, v146, &_sSSSgMd, &_sSSSgMR);

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        outlined destroy of Any?(v147, &_sSSSgMd, &_sSSSgMR);

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v146[0] = swift_slowAlloc();
          *v82 = 136316162;
          v83 = _typeName(_:qualified:)();
          v85 = v24;
          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v146);

          *(v82 + 4) = v86;
          *(v82 + 12) = 2080;
          *(v82 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v146);
          *(v82 + 22) = 2080;
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v42, v146);

          *(v82 + 24) = v87;
          *(v82 + 32) = 2080;
          *(v82 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, *(&v135 + 1), v146);
          *(v82 + 42) = 2080;
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v85, v146);
          v79 = v130;

          *(v82 + 44) = v88;
          _os_log_impl(&_mh_execute_header, v80, v81, "%s %s - Reusing pseudonym: %s %s %s", v82, 0x34u);
          swift_arrayDestroy();
          v89 = v133;
        }

        else
        {

          v89 = v133;
        }

        v121 = v131;
        v122 = v144;
        (*(v131 + 32))(v144, v79, v89);
        (*(v121 + 56))(v122, 0, 1, v89);
        return [*(v4 + 24) unlock];
      }

      v94 = *(v131 + 16);
      v95 = v138;
      v94(v138, v54, v66);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v127 = v42;
        v99 = v98;
        v143 = swift_slowAlloc();
        v146[0] = v143;
        *v99 = 136315650;
        v100 = _typeName(_:qualified:)();
        v141 = v96;
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v146);
        LODWORD(isa) = v97;
        v103 = v102;

        *(v99 + 4) = v103;
        *(v99 + 12) = 2080;
        *(v99 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v146);
        *(v99 + 22) = 2080;
        v104 = v137;
        v94(v137, v95, v66);
        v105 = *(v131 + 8);
        v105(v95, v66);
        v106 = v126;
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        v105(v104, v66);
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v146);

        *(v99 + 24) = v110;
        v111 = v141;
        _os_log_impl(&_mh_execute_header, v141, isa, "%s %s - Reusable pseudonym: %s is expired. Attempting to use next available reusable pseudonym", v99, 0x20u);
        swift_arrayDestroy();

        v42 = v127;
      }

      else
      {
        v105 = *(v131 + 8);
        v105(v95, v66);

        v106 = v126;
      }

      v123 = v130;
      (v106[7].isa)(v66, v106);
      v124 = v145;
      (*(*v4 + 160))(v134, v129);
      v145 = v124;
      if (!v124)
      {
        v105(v123, v66);

        goto LABEL_11;
      }

      v105(v123, v66);
    }

    v143 = v145;
    v127 = v42;
    v69 = *(v4 + 56);
    v68 = *(v4 + 64);
    __swift_project_boxed_opaque_existential_1((v4 + 32), v69);
    v70 = v128;
    v71 = v42;
    v73 = *(&v135 + 1);
    v72 = v136;
    v74 = v135;
    (*(v68 + 32))(v128, v71, v136, v142, v135, *(&v135 + 1), v69, v68);
    v145 = 0;
    v90 = *(v4 + 56);
    v91 = *(v4 + 64);
    __swift_project_boxed_opaque_existential_1((v4 + 32), v90);
    v92 = v127;
    v93 = v145;
    (*(v91 + 48))(v70, v127, v72, v142, v74, v73, v90, v91);
    v145 = v93;
    if (v93)
    {

LABEL_11:

      return [*(v4 + 24) unlock];
    }

    outlined init with copy of (String, Any)(v147, v146, &_sSSSgMd, &_sSSSgMR);

    swift_errorRetain();
    v112 = Logger.logObject.getter();
    v113 = v92;
    v114 = static os_log_type_t.error.getter();

    outlined destroy of Any?(v147, &_sSSSgMd, &_sSSSgMR);

    v141 = v112;
    if (os_log_type_enabled(v112, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v115 = 136315906;
      v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v113, v146);

      *(v115 + 4) = v117;
      *(v115 + 12) = 2080;
      *(v115 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, *(&v135 + 1), v146);
      *(v115 + 22) = 2080;
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v142, v146);

      *(v115 + 24) = v118;
      *(v115 + 32) = 2112;
      swift_errorRetain();
      v119 = _swift_stdlib_bridgeErrorToNSError();
      *(v115 + 34) = v119;
      *v116 = v119;
      v120 = v141;
      _os_log_impl(&_mh_execute_header, v141, v114, "Failed to use reusable pseudonym: %s %s %s: %@", v115, 0x2Au);
      outlined destroy of Any?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v131 + 56))(v144, 1, 1, v133);
  }

  else
  {
    outlined init with copy of (String, Any)(v147, v146, &_sSSSgMd, &_sSSSgMR);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    outlined destroy of Any?(v147, &_sSSSgMd, &_sSSSgMR);

    v57 = os_log_type_enabled(v55, v56);
    v58 = v133;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v59 = 136315906;
      v60 = _typeName(_:qualified:)();
      v62 = v24;
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v146);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v146);
      *(v59 + 22) = 2080;
      *(v59 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, *(&v135 + 1), v146);
      *(v59 + 32) = 2080;
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v62, v146);

      *(v59 + 34) = v64;
      v58 = v133;
      _os_log_impl(&_mh_execute_header, v55, v56, "%s %s - No reusable pseudonyms available for %s %s", v59, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v131 + 56))(v144, 1, 1, v58);
  }

  return [*(v4 + 24) unlock];
}

Swift::Void __swiftcall PseudonymProvider.register(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = a2._object;
  v8 = handle._object;
  v9 = handle._countAndFlagsBits;
  if (one-time initialization token for group != -1)
  {
    v25 = a2._countAndFlagsBits;
    swift_once();
    a2._countAndFlagsBits = v25;
  }

  v27 = a2._countAndFlagsBits;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = v7;
    v17 = object;
    v18 = countAndFlagsBits;
    v19 = v8;
    v20 = v9;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v28);

    *(v13 + 4) = v21;
    v9 = v20;
    v8 = v19;
    countAndFlagsBits = v18;
    object = v17;
    v7 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE720, v28);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v28);
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v28);
    *(v13 + 42) = 2080;
    v22 = v27;
    *(v13 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v16, v28);
    _os_log_impl(&_mh_execute_header, v11, v26, "%s %s - %s %s %s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v27;
  }

  v23 = v4[7];
  v24 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
  (*(v24 + 24))(v9, v8, v22, v7, countAndFlagsBits, object, v23, v24);
}

Swift::Void __swiftcall PseudonymProvider.markUsed(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  v21 = handle._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v19 = handle._countAndFlagsBits;
  v5 = a2._object;
  v6 = a2._countAndFlagsBits;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.group);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v10 = 136316162;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE750, v22);
    *(v10 + 22) = 2080;
    *(v10 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v22);
    *(v10 + 32) = 2080;
    *(v10 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v22);
    *(v10 + 42) = 2080;
    *(v10 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %s - %s %s %s", v10, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v4[7];
  v15 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v14);
  (*(v15 + 32))(v19, v21, v6, v5, countAndFlagsBits, object, v14, v15);
  v16 = v4[7];
  v17 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v16);
  (*(v17 + 40))(v19, v21, v6, v5, countAndFlagsBits, object, v16, v17);
}

Swift::Void __swiftcall PseudonymProvider.markRevoked(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = a2._object;
  v8 = handle._object;
  v9 = handle._countAndFlagsBits;
  if (one-time initialization token for group != -1)
  {
    v25 = a2._countAndFlagsBits;
    swift_once();
    a2._countAndFlagsBits = v25;
  }

  v27 = a2._countAndFlagsBits;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = v7;
    v17 = object;
    v18 = countAndFlagsBits;
    v19 = v8;
    v20 = v9;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v28);

    *(v13 + 4) = v21;
    v9 = v20;
    v8 = v19;
    countAndFlagsBits = v18;
    object = v17;
    v7 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001000CE780, v28);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v28);
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v28);
    *(v13 + 42) = 2080;
    v22 = v27;
    *(v13 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v16, v28);
    _os_log_impl(&_mh_execute_header, v11, v26, "%s %s - %s %s %s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v27;
  }

  v23 = v4[7];
  v24 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
  (*(v24 + 48))(v9, v8, v22, v7, countAndFlagsBits, object, v23, v24);
}

Swift::Void __swiftcall PseudonymProvider.release(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = a2._object;
  v8 = handle._object;
  v9 = handle._countAndFlagsBits;
  if (one-time initialization token for group != -1)
  {
    v25 = a2._countAndFlagsBits;
    swift_once();
    a2._countAndFlagsBits = v25;
  }

  v27 = a2._countAndFlagsBits;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = v7;
    v17 = object;
    v18 = countAndFlagsBits;
    v19 = v8;
    v20 = v9;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v28);

    *(v13 + 4) = v21;
    v9 = v20;
    v8 = v19;
    countAndFlagsBits = v18;
    object = v17;
    v7 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001000CE7B0, v28);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v28);
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v28);
    *(v13 + 42) = 2080;
    v22 = v27;
    *(v13 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v16, v28);
    _os_log_impl(&_mh_execute_header, v11, v26, "%s %s - %s %s %s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v27;
  }

  v23 = v4[7];
  v24 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
  (*(v24 + 8))(v9, v8, v22, v7, countAndFlagsBits, object, v23, v24);
}

uint64_t PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v50 = &v46 - v10;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  result = (*(v12 + 8))(v11, v12);
  if (!v14)
  {
    return result;
  }

  v15 = result;
  v16 = v14;
  swift_beginAccess();
  v17 = v3[9];
  if (!*(v17 + 16))
  {
    goto LABEL_6;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  if ((v19 & 1) == 0)
  {

LABEL_6:
    v20 = &_swiftEmptySetSingleton;
    v53 = &_swiftEmptySetSingleton;
    goto LABEL_7;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v53 = v20;

LABEL_7:
  v21 = specialized Set.contains(_:)(a2, a3, v20);

  if ((v21 & 1) != 0 || (v49 = v8, , specialized Set._Variant.insert(_:)(v51, a2, a3), , v22 = v53, swift_beginAccess(), , isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v52 = v4[9], v4[9] = 0x8000000000000000, specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v15, v16, isUniquelyReferenced_nonNull_native), , v4[9] = v52, swift_endAccess(), v24 = v4[7], v25 = v4[8], __swift_project_boxed_opaque_existential_1(v4 + 4, v24), v26 = (*(v25 + 56))(v15, v16, a2, a3, v24, v25), v27 = v26, !*(v26 + 16)))
  {
  }

  else
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.group);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v49;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v47 = v30;
      v34 = v33;
      v48 = swift_slowAlloc();
      *&v51[0] = v48;
      *v34 = 136316162;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v51);
      v46 = v29;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v51);
      *(v34 + 22) = 2080;
      v39 = Array.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v51);

      *(v34 + 24) = v41;
      *(v34 + 32) = 2080;
      *(v34 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v51);
      *(v34 + 42) = 2080;
      *(v34 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v51);
      v42 = v46;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s %s - Revoking pending pseudonyms: %s for %s %s", v34, 0x34u);
      swift_arrayDestroy();

      v32 = v49;
    }

    else
    {
    }

    v43 = type metadata accessor for TaskPriority();
    v44 = v50;
    (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
    outlined init with copy of PseudonymProtocol(a1, v51);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v27;
    v45[5] = v4;
    v45[6] = v15;
    v45[7] = v16;
    v45[8] = a2;
    v45[9] = a3;
    outlined init with take of PseudonymProtocol(v51, (v45 + 10));
    v45[15] = v32;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v44, &async function pointer to partial apply for closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:), v45);
  }
}

uint64_t closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:), 0, 0);
}

uint64_t closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)()
{
  v40 = v0;
  v1 = *(v0[2] + 16);
  v0[10] = v1;
  if (!v1)
  {
LABEL_12:
    v29 = v0[1];

    return v29();
  }

  v2 = 0;
  while (1)
  {
    v0[11] = v2;
    v36 = v0[6];
    v37 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];
    v11 = v0[2] + 16 * v2;
    v12 = *(v11 + 32);
    v0[12] = v12;
    v13 = *(v11 + 40);
    v0[13] = v13;
    v14 = v10[7];
    v15 = v10[8];
    __swift_project_boxed_opaque_existential_1(v10 + 4, v14);
    v16 = *(v15 + 48);

    v16(v12, v13, v9, v8, v36, v37, v14, v15);
    v17 = objc_allocWithZone(IDSURI);
    v19 = v12;
    v18 = v13;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v17 initWithPrefixedURI:v20];
    v0[14] = v21;

    if (v21)
    {
      break;
    }

LABEL_8:
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.group);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v3 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v3 = 136315650;
      v4 = _typeName(_:qualified:)();
      v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v39);

      *(v3 + 4) = v6;
      *(v3 + 12) = 2080;
      *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v39);
      *(v3 + 22) = 2080;
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v39);

      *(v3 + 24) = v7;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s %s - Failed to find pending revoke pseudonym: %s", v3, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v2 = v0[11] + 1;
    if (v2 == v0[10])
    {
      goto LABEL_12;
    }
  }

  v22 = v0[8];
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = (*(v24 + 24))(v21, v23, v24);
  v0[15] = v25;
  if (!v25)
  {

    goto LABEL_8;
  }

  v31 = v0[8];
  v32 = v31[3];
  v33 = v31[4];
  v34 = v25;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v38 = (*(v33 + 40) + **(v33 + 40));
  v35 = swift_task_alloc();
  v0[16] = v35;
  *v35 = v0;
  v35[1] = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);

  return v38(v34, v32, v33);
}

{
  v52 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Log.group);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v48 = v0[14];
    v49 = v0[15];
    v4 = v0[13];
    v46 = v0[12];
    v5 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v5 = 136315906;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v51);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v51);
    *(v5 + 22) = 1024;
    *(v5 + 24) = v3;
    *(v5 + 28) = 2080;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v4, v51);

    *(v5 + 30) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s %s - Revoke returned %{BOOL}d for pending pseudonym: %s", v5, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = v0[15];
  }

  v11 = v0[11] + 1;
  if (v11 == v0[10])
  {
LABEL_7:
    v12 = v0[1];

    return v12();
  }

  v14 = v0[17];
  v43 = v0;
  while (1)
  {
    v0[11] = v11;
    v45 = v0[6];
    v47 = v0[7];
    v20 = v0[4];
    v21 = v0[5];
    v22 = v0[3];
    v23 = v0[2] + 16 * v11;
    v24 = *(v23 + 32);
    v0[12] = v24;
    v25 = *(v23 + 40);
    v0[13] = v25;
    v26 = v22[7];
    v27 = v22[8];
    __swift_project_boxed_opaque_existential_1(v22 + 4, v26);
    v28 = *(v27 + 48);

    v28(v24, v25, v20, v21, v45, v47, v26, v27);
    if (v14)
    {
    }

    v29 = objc_allocWithZone(IDSURI);
    v30 = String._bridgeToObjectiveC()();
    v31 = [v29 initWithPrefixedURI:v30];
    v0 = v43;
    v43[14] = v31;

    if (!v31)
    {
      goto LABEL_18;
    }

    v32 = v43[8];
    v33 = v32[3];
    v34 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v35 = (*(v34 + 24))(v31, v33, v34);
    v43[15] = v35;
    if (v35)
    {
      break;
    }

LABEL_18:
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, static Log.group);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v15 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v15 = 136315650;
      v16 = _typeName(_:qualified:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v51);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v51);
      *(v15 + 22) = 2080;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v51);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s %s - Failed to find pending revoke pseudonym: %s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v14 = 0;
    v11 = v43[11] + 1;
    if (v11 == v43[10])
    {
      goto LABEL_7;
    }
  }

  v38 = v43[8];
  v39 = v38[3];
  v40 = v38[4];
  v41 = v35;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v50 = (*(v40 + 40) + **(v40 + 40));
  v42 = swift_task_alloc();
  v43[16] = v42;
  *v42 = v43;
  v42[1] = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);

  return v50(v41, v39, v40);
}

{
  v51 = v0;
  v1 = v0;
  v2 = *(v0 + 120);

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.group);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v48 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v50);

    *(v7 + 4) = v10;
    v1 = v0;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v50);
    *(v7 + 22) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v6, v50);

    *(v7 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s - Failed to revoke pending pseudonym: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v1[11] + 1;
  if (v12 == v1[10])
  {
LABEL_7:
    v13 = v1[1];

    return v13();
  }

  v45 = v1;
  while (1)
  {
    v1[11] = v12;
    v20 = v1[6];
    v47 = v1[7];
    v22 = v1[4];
    v21 = v1[5];
    v23 = v1[3];
    v24 = v1[2] + 16 * v12;
    v25 = *(v24 + 32);
    v1[12] = v25;
    v26 = *(v24 + 40);
    v1[13] = v26;
    v27 = v23[7];
    v28 = v23[8];
    __swift_project_boxed_opaque_existential_1(v23 + 4, v27);
    v29 = *(v28 + 48);

    v29(v25, v26, v22, v21, v20, v47, v27, v28);
    v30 = objc_allocWithZone(IDSURI);
    v31 = v26;
    v32 = String._bridgeToObjectiveC()();
    v33 = [v30 initWithPrefixedURI:v32];
    v1 = v45;
    v45[14] = v33;

    if (v33)
    {
      break;
    }

LABEL_16:
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v46, static Log.group);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v15 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v15 = 136315650;
      v16 = _typeName(_:qualified:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v50);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v50);
      *(v15 + 22) = 2080;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v31, v50);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s %s - Failed to find pending revoke pseudonym: %s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v12 = v45[11] + 1;
    if (v12 == v45[10])
    {
      goto LABEL_7;
    }
  }

  v34 = v45[8];
  v35 = v34[3];
  v36 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v37 = (*(v36 + 24))(v33, v35, v36);
  v45[15] = v37;
  if (!v37)
  {

    goto LABEL_16;
  }

  v40 = v45[8];
  v41 = v40[3];
  v42 = v40[4];
  v43 = v37;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v49 = (*(v42 + 40) + **(v42 + 40));
  v44 = swift_task_alloc();
  v45[16] = v44;
  *v44 = v45;
  v44[1] = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);

  return v49(v43, v41, v42);
}

uint64_t closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(char a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);
  }

  else
  {
    v4 = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t PseudonymProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return v0;
}

uint64_t PseudonymProvider.__deallocating_deinit()
{
  PseudonymProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized static Pseudonym.markUsed(handle:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  __chkstk_darwin(a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v17, v18);
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v19 = static Pseudonym.provider;
  result = (*(a8 + 8))(a7, a8);
  if (v21)
  {
    (*(*v19 + 176))(a1, a2, result, v21, a4, a5);

    return (*(v14 + 8))(v16, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(void *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v8 = objc_allocWithZone(IDSURI);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithPrefixedURI:v9];

  if (v10)
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = (*(v12 + 24))(v10, v11, v12);
    if (v13)
    {
      v14 = v13;

      outlined init with copy of PseudonymProtocol(a1, v23);
      type metadata accessor for Pseudonym();
      a3 = swift_allocObject();
      Pseudonym.init(service:pseudonym:configuration:)(v23, v14, a4);

      goto LABEL_12;
    }

    v25 = *a4;
    outlined destroy of String(&v25);
    v24 = a4[2];
    outlined destroy of Any?(&v24, &_sSSSgMd, &_sSSSgMR);
  }

  else
  {
    v27 = *a4;
    outlined destroy of String(&v27);
    v26 = a4[2];
    outlined destroy of Any?(&v26, &_sSSSgMd, &_sSSSgMR);
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.group);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136315138;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v23);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Couldn't find IDSPseudonym for %s on account", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
  }

  lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return a3;
}

uint64_t specialized Pseudonym.__allocating_init(service:configuration:)(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v3 = type metadata accessor for Date();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(specialized Pseudonym.__allocating_init(service:configuration:), 0, 0);
}

uint64_t specialized Pseudonym.__allocating_init(service:configuration:)()
{
  v96 = v0;
  countAndFlagsBits = v0[15]._countAndFlagsBits;
  v2 = countAndFlagsBits[3];
  v3 = countAndFlagsBits[4];
  __swift_project_boxed_opaque_existential_1(countAndFlagsBits, v2);
  result = (*(v3 + 16))(v2, v3);
  if (!result)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v5 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v5 = v0[1]._countAndFlagsBits;
    object = v0[1]._object;
    v7 = v0[2]._countAndFlagsBits;
    v8 = v0[2]._object;
    v9 = v0[3]._countAndFlagsBits;
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(result + 32);
    object = (result + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(result + 56));
  }

  v91 = 0;
  v13 = 0;
  v14 = (v7 + 64) >> 6;
LABEL_9:
  v0[18]._countAndFlagsBits = v13;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v15 = v8;
    v16 = v9;
    if (!v9)
    {
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v14)
        {
          goto LABEL_41;
        }

        v16 = object[v8];
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_15:
    v9 = ((v16 - 1) & v16);
    v17 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_41;
    }

LABEL_19:
    if (!v13)
    {
      v19 = v17;
      v20 = [v17 aliasStrings];
      if (!v20)
      {

        v91 = 0;
        v13 = 0;
        goto LABEL_9;
      }

      v92 = v9;
      v93 = v0;
      v86 = countAndFlagsBits;
      v9 = v20;
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v21;
      v23 = *(v21 + 16);
      if (v23)
      {
        v0 = 0;
        v87 = -v23;
        v24 = v22 + 40;
        v25 = _swiftEmptyArrayStorage;
        v89 = v14;
        v90 = v5;
        v88 = v22;
        v84 = v22 + 40;
LABEL_24:
        v85 = v25;
        v26 = (v24 + 16 * v0);
        v0 = (v0 + 1);
        while (&v0[-1]._object + 7 < *(v22 + 16))
        {
          v27 = *(v26 - 1);
          v28 = *v26;
          v93[11]._countAndFlagsBits = v27;
          v93[11]._object = v28;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = String.lowercased()();

          v93[12] = v29;
          lazy protocol witness table accessor for type String and conformance String();
          v30 = StringProtocol.contains<A>(_:)();

          if ((v30 & 1) == 0)
          {
            v31 = v85;
            v95[0] = v85;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 16) + 1, 1);
              v31 = v95[0];
            }

            v22 = v88;
            v14 = v89;
            v32 = v31;
            v34 = *(v31 + 16);
            v33 = *(v31 + 24);
            v9 = v92;
            if (v34 >= v33 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
              v22 = v88;
              v9 = v92;
              v32 = v95[0];
            }

            *(v32 + 16) = v34 + 1;
            v35 = v32 + 16 * v34;
            *(v35 + 32) = v27;
            *(v35 + 40) = v28;
            v5 = v90;
            v25 = v32;
            v24 = v84;
            if ((v0 + v87))
            {
              goto LABEL_24;
            }

            goto LABEL_37;
          }

          v0 = (v0 + 1);
          v22 = v88;
          v26 += 2;
          v14 = v89;
          v5 = v90;
          v9 = v92;
          if ((v0 + v87) == 1)
          {
            v25 = v85;
            goto LABEL_37;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        swift_once();
LABEL_45:
        v55 = type metadata accessor for Logger();
        v0[20]._countAndFlagsBits = __swift_project_value_buffer(v55, static Log.group);
        v56 = v5;
        v57 = v9;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v95[0] = v62;
          *v60 = 138412546;
          *(v60 + 4) = v56;
          *v61 = v5;
          *(v60 + 12) = 2080;
          v0[13]._object = v57;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPseudonymProperties, IDSPseudonymProperties_ptr);
          v63 = v56;
          v64 = v57;
          v65 = String.init<A>(reflecting:)();
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v95);

          *(v60 + 14) = v67;
          _os_log_impl(&_mh_execute_header, v58, v59, "Attempting to provision pseudonym with URI: %@ and properties: %s", v60, 0x16u);
          outlined destroy of Any?(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          __swift_destroy_boxed_opaque_existential_0Tm(v62);
        }

        v68 = v86[3];
        v69 = v86[4];
        __swift_project_boxed_opaque_existential_1(v0[15]._countAndFlagsBits, v68);
        v94 = (*(v69 + 48) + **(v69 + 48));
        v70 = swift_task_alloc();
        v0[20]._object = v70;
        *v70 = v0;
        v70[1] = specialized Pseudonym.__allocating_init(service:configuration:);

        return v94(v56, v57, v68, v69);
      }

      v25 = _swiftEmptyArrayStorage;
      v9 = v92;
LABEL_37:

      if (v25[2])
      {
        v13 = v25[5];
        v91 = v25[4];
      }

      else
      {

        v91 = 0;
        v13 = 0;
      }

      v0 = v93;
      countAndFlagsBits = v86;
      goto LABEL_9;
    }
  }

  v18 = __CocoaSet.Iterator.next()();
  if (v18)
  {
    v0[14]._object = v18;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    swift_dynamicCast();
    v17 = v0[14]._countAndFlagsBits;
    if (v17)
    {
      goto LABEL_19;
    }
  }

LABEL_41:
  outlined consume of Set<IDSAccount>.Iterator._Variant(v5);
  if (v13)
  {
    v36 = objc_allocWithZone(IDSURI);
    v37 = String._bridgeToObjectiveC()();
    v5 = [v36 initWithUnprefixedURI:v37];
    v0[18]._object = v5;

    if (v5)
    {
      v39 = v0[17]._countAndFlagsBits;
      v38 = v0[17]._object;
      v40 = v0;
      v41 = v0[16]._object;
      v42 = countAndFlagsBits;
      v43 = v40[16]._countAndFlagsBits;
      v44 = v40[15]._countAndFlagsBits;
      Date.init()();
      Date.addingTimeInterval(_:)();
      v45 = v41[1];
      v45(v39, v43);
      Date.timeIntervalSince1970.getter();
      v47 = v46;
      v45(v38, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1000C8E90;
      v49 = v42[3];
      v50 = v42[4];
      v86 = v42;
      __swift_project_boxed_opaque_existential_1(v44, v49);
      result = (*(v50 + 8))(v49, v50);
      if (!v51)
      {
        goto LABEL_68;
      }

      v40[19]._countAndFlagsBits = *(v40[15]._object + 1);
      *(v48 + 32) = result;
      *(v48 + 40) = v51;
      *(v48 + 48) = 0xD000000000000032;
      *(v48 + 56) = 0x80000001000CDF50;
      *(v48 + 64) = 0xD000000000000034;
      *(v48 + 72) = 0x80000001000CE980;
      *(v48 + 80) = 0xD000000000000029;
      *(v48 + 88) = 0x80000001000CE9C0;
      v52 = objc_allocWithZone(IDSPseudonymProperties);
      v53 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v52 initWithFeatureID:v53 scopeID:0 expiryEpoch:isa allowedServices:v47];
      v40[19]._object = v9;

      v0 = v40;
      if (one-time initialization token for group == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_66;
    }

    v76 = v0[15]._object;
    v0[8] = *v76;
    outlined destroy of String(&v0[8]);
    v0[9] = v76[2];
    outlined destroy of Any?(&v0[9], &_sSSSgMd, &_sSSSgMR);
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.group);

    v73 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v95[0] = v80;
      *v79 = 136315138;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v13, v95);

      *(v79 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v73, v78, "Failed to create an IDSURI from localMember: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);

LABEL_58:

      goto LABEL_59;
    }
  }

  else
  {
    v71 = v0[15]._object;
    v0[6] = *v71;
    outlined destroy of String(&v0[6]);
    v0[7] = v71[2];
    outlined destroy of Any?(&v0[7], &_sSSSgMd, &_sSSSgMR);
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Log.group);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Failed to find a localMember", v75, 2u);
      goto LABEL_58;
    }

LABEL_59:
  }

  lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors();
  swift_allocError();
  *v82 = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v0[15]._countAndFlagsBits);

  v83 = v0->_object;

  return v83();
}

{
  v39 = v0;
  v1 = *(v0 + 248);
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = one-time initialization token for provider;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 240);
    v6 = static Pseudonym.provider;
    v7 = [*(v0 + 336) URI];
    v8 = [v7 prefixedURI];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v12 = v5[3];
    v13 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v12);
    result = (*(v13 + 8))(v12, v13);
    if (!v15)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = v15;

    (*(*v6 + 168))(v9, v11, v16, v17, v3, v2);
  }

  v18 = *(v0 + 336);

  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 336);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315138;
    *(v0 + 208) = v22;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPseudonym, IDSPseudonym_ptr);
    v25 = v22;
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v38);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Provisioned pseudonym: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  v30 = *(v0 + 336);
  v29 = *(v0 + 344);
  v31 = *(v0 + 248);
  outlined init with copy of PseudonymProtocol(*(v0 + 240), v0 + 56);
  type metadata accessor for Pseudonym();
  v32 = swift_allocObject();
  Pseudonym.init(service:pseudonym:configuration:)((v0 + 56), v30, v31);
  v33 = *(v0 + 312);
  v34 = *(v0 + 296);
  if (v29)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 240));

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v36 = *(v0 + 240);

    __swift_destroy_boxed_opaque_existential_0Tm(v36);

    v37 = *(v0 + 8);

    return v37(v32);
  }
}

{
  v1 = *(v0 + 296);

  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 240));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized Pseudonym.__allocating_init(service:configuration:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {

    *(v3 + 160) = *(v4 + 32);
    outlined destroy of Any?(v3 + 160, &_sSSSgMd, &_sSSSgMR);
    v5 = specialized Pseudonym.__allocating_init(service:configuration:);
  }

  else
  {
    v5 = specialized Pseudonym.__allocating_init(service:configuration:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t specialized static Pseudonym.reusable(for:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return _swift_task_switch(specialized static Pseudonym.reusable(for:configuration:), 0, 0);
}

uint64_t specialized static Pseudonym.reusable(for:configuration:)()
{
  v28 = v0;
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  (*(*static Pseudonym.provider + 160))(*(v0 + 224), *(v0 + 232));
  v1 = *(v0 + 216);
  if (v1)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 232);
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.group);
    *(v0 + 88) = *v2;
    *(v0 + 104) = v2[2];

    outlined init with copy of String(v0 + 88, v0 + 184);
    outlined init with copy of (String, Any)(v0 + 104, v0 + 200, &_sSSSgMd, &_sSSSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    outlined destroy of String(v0 + 88);
    outlined destroy of Any?(v0 + 104, &_sSSSgMd, &_sSSSgMR);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v6 = 136315394;

      v7 = Pseudonym.description.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v27);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = Pseudonym.Configuration.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v27);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found reusable pseudonym: %s for configuration: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v14 = *(v0 + 8);

    return v14(v1);
  }

  else
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 232);
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.group);
    *(v0 + 56) = *v16;
    *(v0 + 72) = v16[2];
    outlined init with copy of String(v0 + 56, v0 + 120);
    outlined init with copy of (String, Any)(v0 + 72, v0 + 136, &_sSSSgMd, &_sSSSgMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    outlined destroy of String(v0 + 56);
    outlined destroy of Any?(v0 + 72, &_sSSSgMd, &_sSSSgMR);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136315138;
      v22 = Pseudonym.Configuration.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v27);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "No pseudonym available for reuse for configuration: %s - Creating new one", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }

    outlined init with copy of PseudonymProtocol(*(v0 + 224), v0 + 16);
    outlined init with copy of String(v0 + 56, v0 + 152);
    outlined init with copy of (String, Any)(v0 + 72, v0 + 168, &_sSSSgMd, &_sSSSgMR);
    v25 = swift_task_alloc();
    *(v0 + 240) = v25;
    *v25 = v0;
    v25[1] = specialized static Pseudonym.reusable(for:configuration:);
    v26 = *(v0 + 232);

    return specialized Pseudonym.__allocating_init(service:configuration:)(v0 + 16, v26);
  }
}

{
  return (*(v0 + 8))();
}

uint64_t specialized static Pseudonym.reusable(for:configuration:)(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 248) = v1;

  if (v1)
  {

    return _swift_task_switch(specialized static Pseudonym.reusable(for:configuration:), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

NSObject *specialized static Pseudonym.existing(for:configuration:)(uint64_t a1, __int128 *a2)
{
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  (*(*static Pseudonym.provider + 160))(v34, a1, a2);
  if (v2)
  {
    return v3;
  }

  v3 = v34[0];
  if (v34[0])
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.group);
    v7 = *a2;
    v37 = a2[2];
    v38 = v7;

    outlined init with copy of String(&v38, v34);
    outlined init with copy of (String, Any)(&v37, v34, &_sSSSgMd, &_sSSSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    outlined destroy of String(&v38);
    outlined destroy of Any?(&v37, &_sSSSgMd, &_sSSSgMR);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v10 = 136315394;

      v11 = Pseudonym.description.getter();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v34);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = Pseudonym.Configuration.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v34);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Found reusable pseudonym: %s for configuration: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    return v3;
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.group);
  outlined init with copy of PseudonymProtocol(a1, v34);
  v40 = *a2;
  v39 = a2[2];
  outlined init with copy of String(&v40, v33);
  outlined init with copy of (String, Any)(&v39, v33, &_sSSSgMd, &_sSSSgMR);
  v3 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v3, v20))
  {
    outlined destroy of String(&v40);
    outlined destroy of Any?(&v39, &_sSSSgMd, &_sSSSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    goto LABEL_17;
  }

  v21 = swift_slowAlloc();
  v33[0] = swift_slowAlloc();
  *v21 = 136315394;
  v22 = v35;
  v23 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v24 = (*(v23 + 8))(v22, v23);
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    outlined destroy of String(&v40);
    outlined destroy of Any?(&v39, &_sSSSgMd, &_sSSSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v33);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v29 = Pseudonym.Configuration.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v33);

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v3, v20, "No existing pseudonym for service %s configuration: %s", v21, 0x16u);
    swift_arrayDestroy();

LABEL_17:
    lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
    return v3;
  }

  outlined destroy of String(&v40);
  result = outlined destroy of Any?(&v39, &_sSSSgMd, &_sSSSgMR);
  __break(1u);
  return result;
}